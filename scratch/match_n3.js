const fs = require('fs');
const path = require('path');

async function run() {
  const n3Candidates = JSON.parse(fs.readFileSync(path.join(__dirname, 'n3_candidates.json'), 'utf8'));
  console.log(`Loaded ${n3Candidates.length} N3 candidates from n3_candidates.json`);
  
  console.log('Fetching subjects.json from WaniKani Shufa...');
  const res = await fetch('https://raw.githubusercontent.com/mlegls/wanikani-shufa/master/subjects.json');
  const subjects = await res.json();
  
  const kanjiMap = {};
  subjects.forEach(item => {
    if (item.object === 'kanji') {
      kanjiMap[item.data.characters] = item;
    }
  });
  
  const found = [];
  const missing = [];
  
  n3Candidates.forEach(k => {
    const wkSubject = kanjiMap[k.char];
    if (wkSubject) {
      found.push({
        char: k.char,
        wk_level: wkSubject.data.level,
        subjectId: wkSubject.id,
        meanings: wkSubject.data.meanings,
        readings: wkSubject.data.readings,
        component_radicals: wkSubject.data.component_subject_ids
      });
    } else {
      missing.push(k.char);
    }
  });
  
  console.log(`Matched ${found.length} / ${n3Candidates.length} in WaniKani.`);
  if (missing.length > 0) {
    console.log('Missing kanjis in WaniKani:', missing.join(', '));
  }
  
  // Sort found by WaniKani level
  found.sort((a, b) => a.wk_level - b.wk_level);
  
  // Let's write the matched ones to a file sorted by level
  fs.writeFileSync(path.join(__dirname, 'n3_matched.json'), JSON.stringify(found, null, 2), 'utf8');
  console.log('Wrote n3_matched.json');
}

run().catch(console.error);
