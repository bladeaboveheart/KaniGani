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

function pgEscape(str) {
  if (str === null || str === undefined) return 'NULL';
  return `'${str.replace(/'/g, "''")}'`;
}

async function run() {
  console.log('Fetching N5 & N4 items with updated mnemonics...');
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

  console.log(`Fetched ${dbItems.length} items. Generating SQL...`);

  let sqlLines = [
    '-- KaniGani N5 & N4 Indonesian Mnemonics Update Migration',
    '-- Generated automatically',
    'BEGIN;'
  ];

  dbItems.forEach(item => {
    const m = pgEscape(item.meaning_mnemonic);
    const r = pgEscape(item.reading_mnemonic);
    sqlLines.push(`UPDATE items SET meaning_mnemonic = ${m}, reading_mnemonic = ${r} WHERE id = '${item.id}'; -- ${item.character} (${item.type})`);
  });

  sqlLines.push('COMMIT;');

  const outputPath = path.join(__dirname, '..', 'sql', 'update_n5_n4_mnemonics.sql');
  fs.writeFileSync(outputPath, sqlLines.join('\n'));
  console.log(`Successfully generated SQL migration at: ${outputPath}`);
}

run().catch(console.error);
