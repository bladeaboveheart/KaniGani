const fs = require('fs');
const path = require('path');

async function run() {
  console.log('Fetching kanji.json from davidluzgouveia/kanji-data...');
  const res = await fetch('https://raw.githubusercontent.com/davidluzgouveia/kanji-data/master/kanji.json');
  const kanjiData = await res.json();
  
  console.log('Loaded kanji data keys count:', Object.keys(kanjiData).length);
  
  // Filter for JLPT N3
  const n3Kanjis = [];
  for (const [char, info] of Object.entries(kanjiData)) {
    if (info.jlpt_new === 3 || info.jlpt_new === '3') {
      n3Kanjis.push({ char, ...info });
    }
  }
  
  console.log(`Found ${n3Kanjis.length} N3 kanjis in the dataset.`);
  console.log('First 20 N3 kanjis:', n3Kanjis.slice(0, 20).map(k => k.char).join(', '));
  
  // Write the list to a temporary file
  fs.writeFileSync(path.join(__dirname, 'n3_candidates.json'), JSON.stringify(n3Kanjis, null, 2), 'utf8');
  console.log('Wrote n3_candidates.json');
}

run().catch(console.error);
