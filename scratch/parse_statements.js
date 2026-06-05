const fs = require('fs');
const path = require('path');

const seedPath = path.join(__dirname, '..', 'sql', 'seed_n3.sql');
const sqlContent = fs.readFileSync(seedPath, 'utf8');

// Strip comments first
const cleanSql = sqlContent.replace(/--.*$/gm, '');

const statements = cleanSql
  .split(/;\r?\n/)
  .map(s => s.trim())
  .filter(s => s.length > 0);

console.log(`Total parsed statements: ${statements.length}`);

console.log('\n--- FIRST 15 STATEMENTS ---');
for (let i = 0; i < Math.min(15, statements.length); i++) {
  console.log(`[Statement ${i + 1}]:`);
  console.log(statements[i]);
  console.log('---------------------------');
}
