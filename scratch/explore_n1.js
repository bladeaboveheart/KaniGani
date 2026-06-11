const fs = require('fs');
const path = require('path');

async function run() {
  console.log('Fetching kanji.json from davidluzgouveia/kanji-data...');
  const res = await fetch('https://raw.githubusercontent.com/davidluzgouveia/kanji-data/master/kanji.json');
  const kanjiData = await res.json();
  
  console.log('Loaded kanji data keys count:', Object.keys(kanjiData).length);
  
  // Filter for JLPT N1
  const n1Kanjis = [];
  for (const [char, info] of Object.entries(kanjiData)) {
    if (info.jlpt_new === 1 || info.jlpt_new === '1') {
      n1Kanjis.push({ char, ...info });
    }
  }
  
  console.log(`Found ${n1Kanjis.length} N1 kanjis in the dataset.`);
  console.log('First 20 N1 kanjis:', n1Kanjis.slice(0, 20).map(k => k.char).join(', '));
  
  // Write the list to a temporary file
  fs.writeFileSync(path.join(__dirname, 'n1_candidates.json'), JSON.stringify(n1Kanjis, null, 2), 'utf8');
  console.log('Wrote n1_candidates.json');
}

run().catch(console.error);
