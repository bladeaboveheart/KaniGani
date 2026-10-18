import fs from 'fs';

const items = JSON.parse(fs.readFileSync('scratch/batch3_raw_items.json', 'utf8'));
const wk = JSON.parse(fs.readFileSync('scratch/wk_batch3_subjects.json', 'utf8'));
const wkMap = new Map(wk.map(s => [s.id, s]));
const byKey = new Map(wk.map(s => [`${s.object}:${s.data.characters || s.data.slug}`, s]));

const p1 = JSON.parse(fs.readFileSync('scratch/final_proposed_updates_31_33.json', 'utf8'));
const p2 = JSON.parse(fs.readFileSync('scratch/final_proposed_updates_34_36.json', 'utf8'));
const p3 = JSON.parse(fs.readFileSync('scratch/final_proposed_updates_37_39.json', 'utf8'));
const propById = new Map([...p1, ...p2, ...p3].map(p => [p.id, p]));

console.log(`Auditing all ${items.length} items in Batch 3...`);

const candidates = [];
const strangeCandidates = [];

for (const item of items) {
  let s = item.wanikani_id ? wkMap.get(item.wanikani_id) : null;
  if (!s) s = byKey.get(`${item.type}:${item.character || item.slug}`);
  const wkPrimary = s?.data.meanings.find(m => m.primary)?.meaning || '';

  const prop = propById.get(item.item_id);

  // Determine candidate primary
  const parts = item.current_meaning
    .split(/[/,]/)
    .map(x => x.replace(/\(.*?\)/g, '').trim())
    .filter(Boolean);

  let primary = parts[0];

  // Capitalize Title Case properly
  primary = primary.replace(/\w\S*/g, (txt) => txt.charAt(0).toUpperCase() + txt.substr(1).toLowerCase());

  // Check if primary still has punctuation or is strange
  if (primary.includes('/') || primary.includes(',') || primary.length > 25 || parts.length < 2) {
    strangeCandidates.push({ item, primary, parts, wkPrimary });
  }

  candidates.push({
    item_id: item.item_id,
    meaning_id: item.meaning_id,
    character: item.character,
    level: item.level,
    type: item.type,
    current_meaning: item.current_meaning,
    primary,
    parts,
    wkPrimary,
    propOld: prop?.oldMeaning,
    synonyms: prop?.synonyms || []
  });
}

console.log(`Strange candidates count: ${strangeCandidates.length}`);
if (strangeCandidates.length > 0) {
  console.log('Strange candidates sample:', strangeCandidates.slice(0, 10));
}
