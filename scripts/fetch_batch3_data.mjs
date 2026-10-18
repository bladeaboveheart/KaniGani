import fs from 'fs';
import path from 'path';
import https from 'https';
import { createClient } from '@supabase/supabase-js';

// Load .env.local
const envContent = fs.readFileSync('.env.local', 'utf8');
const env = {};
for (const line of envContent.split('\n')) {
  const match = line.match(/^\s*([\w.-]+)\s*=\s*(.*)?\s*$/);
  if (match) {
    let val = match[2] || '';
    if (val.startsWith('"') && val.endsWith('"')) val = val.slice(1, -1);
    env[match[1]] = val.trim();
  }
}

const supabase = createClient(env.NEXT_PUBLIC_SUPABASE_URL, env.NEXT_PUBLIC_SUPABASE_ANON_KEY);
const wkToken = env.WANIKANI_API_TOKEN;

function fetchJson(url) {
  return new Promise((resolve, reject) => {
    https.get(url, {
      headers: {
        'Authorization': 'Bearer ' + wkToken,
        'Wanikani-Revision': '20170710'
      }
    }, res => {
      let data = '';
      res.on('data', chunk => data += chunk);
      res.on('end', () => {
        try {
          resolve(JSON.parse(data));
        } catch (e) {
          reject(new Error('Failed to parse JSON: ' + data.slice(0, 100)));
        }
      });
    }).on('error', reject);
  });
}

async function main() {
  console.log('1. Fetching multi-meaning items for Batch 3 (Level 31-39) from Supabase...');

  let allMeanings = [];
  let from = 0;
  const CHUNK_SIZE = 1000;

  while (true) {
    const { data, error } = await supabase
      .from('item_meanings')
      .select(`
        id,
        item_id,
        meaning,
        primary_meaning,
        items!inner (
          id,
          character,
          slug,
          level,
          type,
          wanikani_id
        )
      `)
      .eq('primary_meaning', true)
      .gte('items.level', 31)
      .lte('items.level', 39)
      .range(from, from + CHUNK_SIZE - 1);

    if (error) {
      console.error('Query error:', error);
      process.exit(1);
    }

    allMeanings.push(...data);
    if (data.length < CHUNK_SIZE) break;
    from += CHUNK_SIZE;
  }

  const multiMeaningItems = allMeanings.filter(m => m.meaning && (m.meaning.includes('/') || m.meaning.includes(',')));
  console.log(`Found ${multiMeaningItems.length} items with multi-meaning out of ${allMeanings.length} total.`);

  const formatted = multiMeaningItems.map(m => ({
    item_id: m.item_id,
    meaning_id: m.id,
    character: m.items.character,
    slug: m.items.slug,
    level: m.items.level,
    type: m.items.type,
    wanikani_id: m.items.wanikani_id,
    current_meaning: m.meaning
  })).sort((a, b) => a.level - b.level || a.type.localeCompare(b.type) || (a.character || '').localeCompare(b.character || ''));

  fs.writeFileSync('scratch/batch3_raw_items.json', JSON.stringify(formatted, null, 2));
  console.log('Saved to scratch/batch3_raw_items.json');

  console.log('\n2. Fetching WaniKani subjects for levels 31-39...');
  let url = 'https://api.wanikani.com/v2/subjects?levels=31,32,33,34,35,36,37,38,39';
  const subjects = [];

  while (url) {
    console.log('Fetching:', url);
    const res = await fetchJson(url);
    subjects.push(...res.data);
    url = res.pages.next_url;
  }

  console.log(`Fetched ${subjects.length} subjects from WaniKani.`);
  fs.writeFileSync('scratch/wk_batch3_subjects.json', JSON.stringify(subjects, null, 2));
  console.log('Saved to scratch/wk_batch3_subjects.json');
}

main().catch(err => {
  console.error('Error:', err);
  process.exit(1);
});
