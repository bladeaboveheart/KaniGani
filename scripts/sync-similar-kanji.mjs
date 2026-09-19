import https from 'https';
import fs from 'fs';
import path from 'path';
import { createClient } from '@supabase/supabase-js';

// Load .env.local
const envPath = path.resolve(process.cwd(), '.env.local');
const envContent = fs.readFileSync(envPath, 'utf8');
const env = {};
for (const line of envContent.split('\n')) {
  const match = line.match(/^\s*([\w.-]+)\s*=\s*(.*)?\s*$/);
  if (match) {
    let val = match[2] || '';
    if (val.startsWith('"') && val.endsWith('"')) val = val.slice(1, -1);
    env[match[1]] = val.trim();
  }
}

const supabaseUrl = env.NEXT_PUBLIC_SUPABASE_URL;
const supabaseKey = env.NEXT_PUBLIC_SUPABASE_ANON_KEY;
const wkToken = env.WANIKANI_API_TOKEN;

if (!supabaseUrl || !supabaseKey || !wkToken) {
  console.error('Missing configuration in .env.local');
  process.exit(1);
}

const supabase = createClient(supabaseUrl, supabaseKey);

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

async function fetchAllWaniKaniKanji() {
  console.log('Fetching all Kanji subjects from WaniKani API...');
  let url = 'https://api.wanikani.com/v2/subjects?types=kanji';
  const subjects = [];

  while (url) {
    const res = await fetchJson(url);
    if (res.data) {
      subjects.push(...res.data);
    }
    url = res.pages?.next_url || null;
    process.stdout.write(`  Loaded ${subjects.length} subjects...\r`);
  }
  console.log(`\nSuccessfully fetched ${subjects.length} Kanji subjects from WaniKani.`);
  return subjects;
}

async function main() {
  console.log('=== SYNC VISUALLY SIMILAR KANJI FROM WANIKANI ===\n');

  // 1. Fetch all items with wanikani_id from KaniGani Supabase (paginated to exceed 1000 limit)
  console.log('Fetching KaniGani Kanji items from Supabase...');
  const items = [];
  let from = 0;
  const pageSize = 1000;
  while (true) {
    const { data, error: itemsError } = await supabase
      .from('items')
      .select('id, character, slug, wanikani_id, type')
      .eq('type', 'kanji')
      .range(from, from + pageSize - 1);

    if (itemsError) throw itemsError;
    if (!data || data.length === 0) break;
    items.push(...data);
    if (data.length < pageSize) break;
    from += pageSize;
  }
  console.log(`Found ${items.length} Kanji items in KaniGani.`);

  const wkToKaniGani = new Map();
  for (const it of items) {
    if (it.wanikani_id) {
      wkToKaniGani.set(it.wanikani_id, it.id);
    }
  }
  console.log(`Mapped ${wkToKaniGani.size} Kanji to their WaniKani ID.`);

  // 2. Fetch all Kanji subjects from WaniKani API
  const wkKanji = await fetchAllWaniKaniKanji();

  // 3. Extract visually similar kanji pairs
  const pairSet = new Set();
  const similarPairs = [];
  let subjectsWithSimilar = 0;

  for (const sub of wkKanji) {
    const similarIds = sub.data?.visually_similar_subject_ids || [];
    if (similarIds.length === 0) continue;

    const sourceId = wkToKaniGani.get(sub.id);
    if (!sourceId) continue;

    subjectsWithSimilar++;

    for (const simWkId of similarIds) {
      const targetId = wkToKaniGani.get(simWkId);
      if (!targetId || targetId === sourceId) continue;

      // Bidirectional pair 1: source -> target
      const key1 = `${sourceId}:${targetId}`;
      if (!pairSet.has(key1)) {
        pairSet.add(key1);
        similarPairs.push({ item_id: sourceId, similar_item_id: targetId });
      }

      // Bidirectional pair 2: target -> source
      const key2 = `${targetId}:${sourceId}`;
      if (!pairSet.has(key2)) {
        pairSet.add(key2);
        similarPairs.push({ item_id: targetId, similar_item_id: sourceId });
      }
    }
  }

  console.log(`\nProcessed ${subjectsWithSimilar} Kanji with similar subjects.`);
  console.log(`Total unique bidirectional similar pairs: ${similarPairs.length}`);

  // 4. Purge existing item_similar_kanji table
  console.log('\nPurging existing table public.item_similar_kanji...');
  const { error: delError } = await supabase
    .from('item_similar_kanji')
    .delete()
    .neq('item_id', '00000000-0000-0000-0000-000000000000');

  if (delError) {
    throw new Error('Failed to purge item_similar_kanji: ' + delError.message);
  }
  console.log('Successfully purged old similar kanji table.');

  // 5. Batch insert in chunks of 500
  console.log(`Inserting ${similarPairs.length} pairs in batches of 500...`);
  const batchSize = 500;
  for (let i = 0; i < similarPairs.length; i += batchSize) {
    const batch = similarPairs.slice(i, i + batchSize);
    const { error: insError } = await supabase
      .from('item_similar_kanji')
      .insert(batch);

    if (insError) {
      throw new Error(`Failed to insert batch ${i}: ` + insError.message);
    }
    process.stdout.write(`  Inserted ${Math.min(i + batchSize, similarPairs.length)} / ${similarPairs.length} pairs...\r`);
  }

  console.log('\n\n=== SYNC COMPLETED SUCCESSFULLY! ===');
  console.log(`Successfully synced ${similarPairs.length} visually similar kanji pairs into Supabase.`);
}

main().catch(err => {
  console.error('\nError during sync:', err);
  process.exit(1);
});
