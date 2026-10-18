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

const supabase = createClient(env.NEXT_PUBLIC_SUPABASE_URL, env.NEXT_PUBLIC_SUPABASE_ANON_KEY);

async function main() {
  console.log('Fetching multi-meaning items for Batch 2 (Level 21-30)...');

  // Query item_meanings joined with items
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
      .gte('items.level', 21)
      .lte('items.level', 30)
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

  // Also fetch existing alternative meanings for these items so we don't duplicate them
  const itemIds = multiMeaningItems.map(m => m.item_id);
  
  // Format items nicely
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

  fs.writeFileSync('scratch/batch2_raw_items.json', JSON.stringify(formatted, null, 2));
  console.log('Saved to scratch/batch2_raw_items.json');
}

main();
