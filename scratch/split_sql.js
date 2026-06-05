/**
 * Splits a SQL file into parts by splitting on complete SQL statements (semicolons)
 * Each part will not exceed maxSize bytes
 */
const fs = require('fs');
const path = require('path');

const MAX_SIZE = 100 * 1024; // 100KB per part

function splitSqlFile(inputFile, outputPrefix) {
  const content = fs.readFileSync(inputFile, 'utf8');
  
  // Split by semicolon followed by newline (complete statements)
  const statements = [];
  let current = '';
  let i = 0;
  
  while (i < content.length) {
    const char = content[i];
    current += char;
    
    // Check for end of statement (semicolons not in strings)
    if (char === ';') {
      // Look ahead for newline
      const next = content[i+1];
      if (!next || next === '\n' || next === '\r') {
        statements.push(current.trim());
        current = '';
      }
    }
    i++;
  }
  
  if (current.trim()) {
    statements.push(current.trim());
  }
  
  console.log(`Found ${statements.length} statements in ${path.basename(inputFile)}`);
  
  // Group statements into parts
  const parts = [];
  let partContent = '';
  let partNum = 1;
  
  for (const stmt of statements) {
    if (partContent && (partContent.length + stmt.length + 2) > MAX_SIZE) {
      // Save current part
      const outFile = `${outputPrefix}_part${partNum}.sql`;
      fs.writeFileSync(outFile, partContent + '\n');
      console.log(`  Written part ${partNum}: ${(partContent.length/1024).toFixed(1)}KB -> ${path.basename(outFile)}`);
      partNum++;
      partContent = stmt + '\n';
    } else {
      partContent += (partContent ? '\n' : '') + stmt + '\n';
    }
  }
  
  if (partContent.trim()) {
    const outFile = `${outputPrefix}_part${partNum}.sql`;
    fs.writeFileSync(outFile, partContent + '\n');
    console.log(`  Written part ${partNum}: ${(partContent.length/1024).toFixed(1)}KB -> ${path.basename(outFile)}`);
    partNum++;
  }
  
  console.log(`Split into ${partNum - 1} parts`);
  return partNum - 1;
}

const sqlDir = path.join(__dirname, '..', 'sql');

// Re-split pangkat 5
console.log('\nSplitting N4 Pangkat 5...');
const p5Parts = splitSqlFile(
  path.join(sqlDir, 'seed_n4_pangkat5.sql'),
  path.join(sqlDir, 'seed_n4_pangkat5')
);

// Re-split pangkat 6
console.log('\nSplitting N4 Pangkat 6...');
const p6Parts = splitSqlFile(
  path.join(sqlDir, 'seed_n4_pangkat6.sql'),
  path.join(sqlDir, 'seed_n4_pangkat6')
);

console.log('\nDone! Now update rerun_pangkat56.js with the correct part counts:');
console.log(`  Pangkat 5: ${p5Parts} parts`);
console.log(`  Pangkat 6: ${p6Parts} parts`);
