import fs from 'fs';

const items = JSON.parse(fs.readFileSync('scratch/batch3_raw_items.json', 'utf8'));

const p1 = JSON.parse(fs.readFileSync('scratch/final_proposed_updates_31_33.json', 'utf8'));
const p2 = JSON.parse(fs.readFileSync('scratch/final_proposed_updates_34_36.json', 'utf8'));
const p3 = JSON.parse(fs.readFileSync('scratch/final_proposed_updates_37_39.json', 'utf8'));

const allProposals = [...p1, ...p2, ...p3];
console.log(`Total proposals in scratch files: ${allProposals.length}`);

const propById = new Map(allProposals.map(p => [p.id, p]));

let covered = 0;
for (const item of items) {
  if (propById.has(item.item_id)) {
    covered++;
  }
}

console.log(`Covered ${covered} of ${items.length} items from scratch proposal files!`);
