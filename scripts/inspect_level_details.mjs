import fs from 'fs';

const items = JSON.parse(fs.readFileSync('scratch/batch2_raw_items.json', 'utf8'));
const wk = JSON.parse(fs.readFileSync('scratch/wk_batch2_subjects.json', 'utf8'));
const map = new Map(wk.map(s => [s.id, s]));

function inspect(level) {
  const levelItems = items.filter(i => i.level === level);
  console.log(`\n=== LEVEL ${level} (${levelItems.length} items) ===`);
  for (const i of levelItems) {
    const w = map.get(i.wanikani_id) || wk.find(s => s.object === i.type && s.data.characters === i.character);
    const wkPrimary = w?.data.meanings.find(m => m.primary)?.meaning;
    const wkAll = w?.data.meanings.map(m => m.meaning).join(', ');
    console.log(`[${i.type}] ${i.character} | Current: "${i.current_meaning}" | WK: "${wkPrimary}" (${wkAll})`);
  }
}

const targetLevel = parseInt(process.argv[2] || '21', 10);
inspect(targetLevel);
