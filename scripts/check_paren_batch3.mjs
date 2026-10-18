import fs from 'fs';

const items = JSON.parse(fs.readFileSync('scratch/batch3_raw_items.json', 'utf8'));
const withParen = items.filter(i => i.current_meaning.includes('(') || i.current_meaning.includes(')'));
console.log('Items with parentheses in current_meaning:', withParen.length);
withParen.forEach(i => console.log(`[${i.type} L${i.level}] ${i.character}: "${i.current_meaning}"`));
