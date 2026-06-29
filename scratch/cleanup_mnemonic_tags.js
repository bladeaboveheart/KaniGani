const { createClient } = require('@supabase/supabase-js');
const fs = require('fs');
const path = require('path');

// Read env variables
const envContent = fs.readFileSync(path.join(__dirname, '..', '.env.local'), 'utf8');
const env = {};
envContent.split('\n').forEach(line => {
  const parts = line.split('=');
  if (parts.length >= 2) {
    env[parts[0].trim()] = parts.slice(1).join('=').trim();
  }
});

const supabase = createClient(env.NEXT_PUBLIC_SUPABASE_URL, env.NEXT_PUBLIC_SUPABASE_ANON_KEY);

function cleanTags(text) {
  if (!text) return text;
  // Replace all <...> tags
  return text.replace(/<[^>]+>/g, '').trim();
}

async function run() {
  console.log('Fetching N5 & N4 items to clean up tags...');
  const rankIds = [
    'a1b2c3d4-e5f6-7a8b-9c0d-1e2f3a4b5c6d', // N5 Pangkat 1
    'b2c3d4e5-f6a7-8b9c-0d1e-2f3a4b5c6d7e', // N5 Pangkat 2
    'c3d4e5f6-a7b8-9c0d-1e2f-3a4b5c6d7e8f', // N5 Pangkat 3
    'd4e5f6a7-b8c9-0d1e-2f3a-4b5c6d7e8f9a', // N4 Pangkat 1
    'e5f6a7b8-c90d-1e2f-3a4b-5c6d7e8f9a0b', // N4 Pangkat 2
    'f6a7b8c9-0d1e-2f3a-4b5c-6d7e8f9a0b1c', // N4 Pangkat 3
    'a7b8c90d-1e2f-3a4b-5c6d-7e8f9a0b1c2d', // N4 Pangkat 4
    'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', // N4 Pangkat 5
    'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f'  // N4 Pangkat 6
  ];

  let dbItems = [];
  let page = 0;
  const limit = 1000;
  while (true) {
    const { data, error } = await supabase
      .from('items')
      .select('id, character, type, meaning_mnemonic, reading_mnemonic')
      .in('rank_id', rankIds)
      .range(page * limit, (page + 1) * limit - 1);

    if (error) {
      console.error('Error fetching db items:', error);
      return;
    }
    if (!data || data.length === 0) break;
    dbItems = dbItems.concat(data);
    if (data.length < limit) break;
    page++;
  }

  console.log(`Fetched ${dbItems.length} items. Cleaning up tags...`);

  let updatedCount = 0;
  const chunkSize = 20;

  for (let i = 0; i < dbItems.length; i += chunkSize) {
    const chunk = dbItems.slice(i, i + chunkSize);

    await Promise.all(chunk.map(async (item) => {
      const cleanMeaning = cleanTags(item.meaning_mnemonic);
      const cleanReading = cleanTags(item.reading_mnemonic);

      if (cleanMeaning !== item.meaning_mnemonic || cleanReading !== item.reading_mnemonic) {
        const { error: updateErr } = await supabase
          .from('items')
          .update({
            meaning_mnemonic: cleanMeaning || null,
            reading_mnemonic: cleanReading || null
          })
          .eq('id', item.id);

        if (updateErr) {
          console.error(`Failed to update ${item.character}:`, updateErr.message);
        } else {
          updatedCount++;
        }
      }
    }));

    if ((i + chunkSize) % 100 === 0 || i + chunkSize >= dbItems.length) {
      console.log(`Processed ${Math.min(i + chunkSize, dbItems.length)} / ${dbItems.length} items (Updated: ${updatedCount})...`);
    }
  }

  console.log(`\n✅ Tag cleanup complete. Total items updated: ${updatedCount}`);
}

run().catch(console.error);
