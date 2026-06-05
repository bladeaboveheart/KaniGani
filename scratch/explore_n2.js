const { createClient } = require('@supabase/supabase-js');
const fs = require('fs');
const path = require('path');

const envContent = fs.readFileSync(path.join(__dirname, '..', '.env.local'), 'utf8');
const env = {};
envContent.split('\n').forEach(line => {
  const parts = line.split('=');
  if (parts.length >= 2) {
    const key = parts[0].trim();
    const val = parts.slice(1).join('=').trim();
    env[key] = val;
  }
});

const supabase = createClient(env.NEXT_PUBLIC_SUPABASE_URL, env.NEXT_PUBLIC_SUPABASE_ANON_KEY);

async function run() {
  console.log('Fetching kanji.json from davidluzgouveia/kanji-data...');
  const res = await fetch('https://raw.githubusercontent.com/davidluzgouveia/kanji-data/master/kanji.json');
  const kanjiData = await res.json();
  
  const n2Kanjis = [];
  for (const [char, info] of Object.entries(kanjiData)) {
    if (info.jlpt_new === 2 || info.jlpt_new === '2') {
      n2Kanjis.push({ char, ...info });
    }
  }
  
  console.log(`Found ${n2Kanjis.length} N2 kanjis in dataset.`);
  fs.writeFileSync(path.join(__dirname, 'n2_candidates.json'), JSON.stringify(n2Kanjis, null, 2), 'utf8');
  console.log('Wrote n2_candidates.json');
  
  console.log('Querying ranks from Supabase...');
  const { data: ranks, error } = await supabase
    .from('ranks')
    .select('*')
    .order('sort_order', { ascending: true });
    
  if (error) {
    console.error('Failed to query ranks:', error);
  } else {
    console.log(`Found ${ranks.length} ranks in database.`);
    ranks.forEach(r => {
      console.log(`- ${r.name} (${r.jlpt_level}): sort_order = ${r.sort_order}, ID = ${r.id}`);
    });
  }
}

run().catch(console.error);
