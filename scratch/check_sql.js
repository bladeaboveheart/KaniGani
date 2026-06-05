const fs = require('fs');
const content = fs.readFileSync('sql/fix_all_english_meanings.sql', 'utf8');
const lines = content.split('\n');
lines.forEach((line, i) => {
  // Check for single quotes issues - in SQL strings with apostrophes
  if (line.includes("'") && line.match(/WHERE meaning = '/)) {
    // Check if the value has an unescaped apostrophe
    const match = line.match(/WHERE meaning = '([^']+)'/);
    if (!match) {
      console.log('Possible issue at line ' + (i+1) + ': ' + line.substring(0, 120));
    }
  }
});
console.log('Done checking');
