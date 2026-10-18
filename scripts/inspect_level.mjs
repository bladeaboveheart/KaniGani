import fs from 'fs';

const items = JSON.parse(fs.readFileSync('scratch/batch2_raw_items.json', 'utf8'));

const levels = {};
items.forEach(i => {
  levels[i.level] = levels[i.level] || [];
  levels[i.level].push(i);
});

for (const [lvl, list] of Object.entries(levels)) {
  console.log(`\n=== LEVEL ${lvl} (${list.length} items) ===`);
  list.slice(0, 10).forEach(i => {
    console.log(`[${i.type}] ${i.character} (${i.slug}): "${i.current_meaning}"`);
  });
  if (list.length > 10) {
    console.log(`... and ${list.length - 10} more`);
  }
}
