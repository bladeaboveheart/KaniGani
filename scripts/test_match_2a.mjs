import fs from 'fs';

const items = JSON.parse(fs.readFileSync('scratch/batch2_raw_items.json', 'utf8'));
const wkSubjects = JSON.parse(fs.readFileSync('scratch/wk_batch2_subjects.json', 'utf8'));

// Build lookup maps for WaniKani subjects: by id, and by (type, characters)
const wkById = new Map();
const wkByKey = new Map();

for (const s of wkSubjects) {
  wkById.set(s.id, s);
  const key = `${s.object}:${s.data.characters || s.data.slug}`;
  wkByKey.set(key, s);
}

const subbatch2A = items.filter(i => i.level >= 21 && i.level <= 25);
console.log(`Sub-batch 2A (Levels 21-25) count: ${subbatch2A.length}`);

let matchedCount = 0;
const unmatched = [];

for (const item of subbatch2A) {
  let wk = item.wanikani_id ? wkById.get(item.wanikani_id) : null;
  if (!wk) {
    const key = `${item.type}:${item.character || item.slug}`;
    wk = wkByKey.get(key);
  }
  if (wk) {
    matchedCount++;
    item.wk_primary = wk.data.meanings.find(m => m.primary)?.meaning;
    item.wk_meanings = wk.data.meanings.map(m => m.meaning);
  } else {
    unmatched.push(item);
  }
}

console.log(`Matched with WaniKani: ${matchedCount} / ${subbatch2A.length}`);
if (unmatched.length > 0) {
  console.log('Unmatched items:', unmatched);
}
