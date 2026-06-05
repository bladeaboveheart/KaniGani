const fs = require('fs');
const path = require('path');

const sqlDir = 'c:/Users/Gany/Documents/GitHub/KaniGani/sql';

function splitFile(filename) {
  const filePath = path.join(sqlDir, filename);
  if (!fs.existsSync(filePath)) {
    console.log(`File ${filename} does not exist.`);
    return;
  }
  const content = fs.readFileSync(filePath, 'utf8');
  const lines = content.split('\n');
  const chunkSize = 400; // 400 lines is around 50-80KB
  let partIndex = 1;
  
  for (let i = 0; i < lines.length; i += chunkSize) {
    const chunkLines = lines.slice(i, i + chunkSize);
    const chunkContent = chunkLines.join('\n');
    const partPath = filePath.replace('.sql', `_part${partIndex}.sql`);
    fs.writeFileSync(partPath, chunkContent, 'utf8');
    console.log(`Saved split part to: ${partPath}`);
    partIndex++;
  }
}

for (let r = 1; r <= 6; r++) {
  console.log(`Splitting seed_n4_pangkat${r}.sql...`);
  splitFile(`seed_n4_pangkat${r}.sql`);
}

console.log('Splitting completed!');
