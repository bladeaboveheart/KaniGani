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

async function fetchAllWaniKaniSubjects() {
  console.log('Fetching all subjects from WaniKani API (/v2/subjects)...');
  let nextUrl = 'https://api.wanikani.com/v2/subjects';
  const subjects = [];
  let page = 1;

  while (nextUrl) {
    process.stdout.write(`  Fetching page ${page}... `);
    const json = await fetchJson(nextUrl);
    if (!json.data) {
      throw new Error('API Error: ' + JSON.stringify(json));
    }
    subjects.push(...json.data);
    console.log(`got ${json.data.length} subjects (Total so far: ${subjects.length})`);
    nextUrl = json.pages?.next_url || null;
    page++;
  }

  return subjects;
}

async function fetchAllKaniGaniItems() {
  console.log('Fetching all items from KaniGani Supabase (items table)...');
  const items = [];
  let from = 0;
  const step = 1000;

  while (true) {
    const { data, error } = await supabase
      .from('items')
      .select('id, wanikani_id, type, character, slug')
      .range(from, from + step - 1);

    if (error) throw error;
    if (!data || data.length === 0) break;
    items.push(...data);
    if (data.length < step) break;
    from += step;
  }

  console.log(`Fetched ${items.length} items from KaniGani items table.`);
  return items;
}

async function main() {
  const startTime = Date.now();
  console.log('=== STARTING WANIKANI PREREQUISITES SYNCHRONIZATION ===\n');

  // 1. Fetch subjects from WaniKani
  const wkSubjects = await fetchAllWaniKaniSubjects();
  console.log(`\nTotal WaniKani subjects fetched: ${wkSubjects.length}`);

  // 2. Fetch all KaniGani items
  const kgItems = await fetchAllKaniGaniItems();
  const wkIdToItemMap = new Map();
  kgItems.forEach(item => {
    if (item.wanikani_id) {
      wkIdToItemMap.set(item.wanikani_id, item);
    }
  });

  // 3. Compile clean relationships
  console.log('\nCompiling relationships:');
  const cleanPrereqs = [];
  let kanjiPrereqCount = 0;
  let vocabPrereqCount = 0;
  let skippedCount = 0;

  for (const s of wkSubjects) {
    const childItem = wkIdToItemMap.get(s.id);
    if (!childItem) {
      skippedCount++;
      continue;
    }

    const componentIds = s.data?.component_subject_ids || [];
    if (s.object === 'kanji') {
      for (const parentWkId of componentIds) {
        const parentItem = wkIdToItemMap.get(parentWkId);
        if (parentItem) {
          cleanPrereqs.push({
            item_id: childItem.id,
            requires_item_id: parentItem.id,
          });
          kanjiPrereqCount++;
        }
      }
    } else if (s.object === 'vocabulary') {
      for (const parentWkId of componentIds) {
        const parentItem = wkIdToItemMap.get(parentWkId);
        if (parentItem) {
          cleanPrereqs.push({
            item_id: childItem.id,
            requires_item_id: parentItem.id,
          });
          vocabPrereqCount++;
        }
      }
    }
  }

  console.log(`  Kanji -> Component Radicals: ${kanjiPrereqCount}`);
  console.log(`  Vocabulary -> Component Kanji: ${vocabPrereqCount}`);
  console.log(`  Total Clean Pairs: ${cleanPrereqs.length}`);
  if (skippedCount > 0) {
    console.log(`  Note: ${skippedCount} WaniKani subjects not present in KaniGani.`);
  }

  // Deduplicate pairs just in case
  const pairSet = new Set();
  const dedupedPrereqs = [];
  for (const p of cleanPrereqs) {
    const key = `${p.item_id}:${p.requires_item_id}`;
    if (!pairSet.has(key)) {
      pairSet.add(key);
      dedupedPrereqs.push(p);
    }
  }
  console.log(`  Deduplicated Clean Pairs: ${dedupedPrereqs.length}`);

  // 4. Clear existing item_prerequisites and insert clean data
  console.log('\nPurging existing table public.item_prerequisites...');
  // Delete all rows in item_prerequisites
  const { error: delError } = await supabase
    .from('item_prerequisites')
    .delete()
    .neq('item_id', '00000000-0000-0000-0000-000000000000');

  if (delError) {
    throw new Error('Failed to purge item_prerequisites: ' + delError.message);
  }
  console.log('Successfully purged old prerequisites.');

  // 5. Bulk insert in batches of 1000
  console.log(`\nInserting ${dedupedPrereqs.length} clean prerequisites in batches of 1000...`);
  const batchSize = 1000;
  for (let i = 0; i < dedupedPrereqs.length; i += batchSize) {
    const batch = dedupedPrereqs.slice(i, i + batchSize);
    const { error: insError } = await supabase
      .from('item_prerequisites')
      .insert(batch);

    if (insError) {
      throw new Error(`Failed to insert batch at index ${i}: ${insError.message}`);
    }
    process.stdout.write(`  Inserted ${i + batch.length}/${dedupedPrereqs.length} rows...\r`);
  }
  console.log(`\nSuccessfully inserted all ${dedupedPrereqs.length} rows!`);

  const durationSec = ((Date.now() - startTime) / 1000).toFixed(1);
  console.log(`\n=== SYNCHRONIZATION COMPLETED IN ${durationSec}s ===`);
}

main().catch(err => {
  console.error('\nFATAL ERROR:', err);
  process.exit(1);
});
