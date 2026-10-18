import fs from 'fs';

const items = JSON.parse(fs.readFileSync('scratch/batch3_raw_items.json', 'utf8'));
const wk = JSON.parse(fs.readFileSync('scratch/wk_batch3_subjects.json', 'utf8'));
const wkMap = new Map(wk.map(s => [s.id, s]));
const byKey = new Map(wk.map(s => [`${s.object}:${s.data.characters || s.data.slug}`, s]));

let matched = 0;
const unmatched = [];

for (const i of items) {
  let s = i.wanikani_id ? wkMap.get(i.wanikani_id) : null;
  if (!s) s = byKey.get(`${i.type}:${i.character || i.slug}`);
  if (s) {
    matched++;
    i.wk_primary = s.data.meanings.find(m => m.primary)?.meaning;
    i.wk_all = s.data.meanings.map(m => m.meaning);
  } else {
    unmatched.push(i);
  }
}

console.log(`Matched ${matched} of ${items.length} items with WaniKani.`);
if (unmatched.length > 0) {
  console.log('Unmatched items:', unmatched);
}

// Check if any radicals exist in Batch 3
const radicals = items.filter(i => i.type === 'radical');
console.log(`Radicals in Batch 3: ${radicals.length}`);
radicals.forEach(r => console.log(`[radical L${r.level}] ${r.character || r.slug}: "${r.current_meaning}"`));
