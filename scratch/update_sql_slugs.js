const fs = require('fs');
const path = require('path');

const mapping = {
  // Radicals
  'book': 'buku',
  'bow': 'busur',
  'child': 'anak',
  'cow': 'sapi',
  'dirt': 'tanah',
  'dog': 'anjing',
  'evening': 'sore',
  'eye': 'mata',
  'fire': 'api',
  'five': 'lima',
  'flag': 'bendera',
  'hair': 'rambut',
  'hand': 'tangan',
  'head': 'kepala',
  'heaven': 'surga',
  'king': 'raja',
  'leaf': 'daun',
  'legs': 'kaki',
  'middle': 'tengah',
  'moon': 'bulan',
  'private': 'pribadi',
  'rice paddy': 'sawah',
  'small': 'kecil',
  'stand': 'berdiri',
  'stop': 'berhenti',
  'street': 'jalan',
  'sword': 'pedang',
  'thousand': 'seribu',
  'treasure': 'harta',
  'water': 'air',
  'white': 'putih',
  'writing': 'tulisan',
  'yen': 'yen',
  'barb': 'duri',
  'umbrella': 'payung',
  'triceratops': 'triseratops',
  'pi': 'pi',
  'twenty': 'dua-puluh',
  'boil': 'rebus',
  'death': 'mati',
  'husband': 'suami',
  'top-hat': 'topi-tinggi',
  'boat': 'perahu',
  'branch': 'cabang',
  'cape': 'tanjung',
  'weapon': 'senjata',
  'hook': 'kait',
  'sickle': 'sabit',
  'ladle': 'centong',
  'key': 'kunci',

  // Vocab/Kanji
  'april': 'april',
  'ball': 'bola',
  'circle': 'lingkaran',
  'circular': 'bulat',
  'correct': 'benar',
  'eighth-day': 'hari-kedelapan',
  'exit-v': 'keluar',
  'exit': 'keluar',
  'eye-v': 'mata',
  'eyeball': 'bola-mata',
  'february': 'februari',
  'fifth-day': 'hari-kelima',
  'fifty': 'lima-puluh',
  'fire-v': 'api',
  'five-v': 'lima',
  'five-things': 'lima-buah',
  'four-v': 'empat',
  'four': 'empat',
  'genius': 'jenius',
  'girl-n': 'anak-perempuan',
  'girl': 'anak-perempuan',
  'good-morning': 'selamat-pagi',
  'hand-v': 'tangan',
  'heavens': 'surga',
  'hotel': 'hotel',
  'input': 'masukan',
  'inside': 'dalam',
  'january': 'januari',
  'moon-v': 'bulan',
  'ninth-day': 'hari-kesembilan',
  'october': 'oktober',
  'one-day': 'satu-hari',
  'second-day': 'hari-kedua',
  'seventh-day': 'hari-ketujuh',
  'small-v': 'kecil',
  'small': 'kecil',
  'sun-v': 'matahari',
  'sun': 'matahari',
  'tenth-day': 'hari-kesepuluh',
  'third-day': 'hari-ketiga',
  'thousand-v': 'seribu',
  'to-climb': 'mendaki',
  'tree-v': 'pohon',
  'underwater': 'bawah-air',
  'water-v': 'air',
  'american-person': 'orang-amerika',
  'apple': 'apel',
  'british-person': 'orang-inggris',
  'coffee': 'kopi',
  'echo': 'gema',
  'father-polite': 'ayah',
  'father': 'ayah',
  'french-person': 'orang-prancis',
  'friend': 'teman',
  'hello': 'halo',
  'now': 'sekarang',
  'people-counter': 'penghitung-orang',
  'obedient': 'penurut',
  'one-hundred-thousand': 'seratus-ribu',
  'on-the-table': 'di-atas-meja',
  'part-noun': 'bagian',
  'ten-thousand-number': 'sepuluh-ribu',
  'ten-thousand-noun': 'sepuluh-ribu',
  'this-month': 'bulan-ini',
  'this-one': 'ini',
  'today': 'hari-ini',
  'to-do': 'melakukan',
  'twenty-thousand': 'dua-puluh-ribu',
  'under-the-bed': 'di-bawah-tempat-tidur',
  'when': 'kapan',
  'woman': 'wanita',
  'life': 'hidup',
  'north': 'utara',
  'left': 'kiri',
  'right': 'kanan',
  'talent': 'bakat',
  'narwhal': 'narwhal',
  'private': 'pribadi'
};

const sqlFiles = [
  'sql/seed_level1.sql',
  'sql/seed_level2.sql',
  'sql/seed_level3.sql',
  'sql/setup_complete_new_db.sql'
];

sqlFiles.forEach(fileRelPath => {
  const filePath = path.join(__dirname, '..', fileRelPath);
  if (!fs.existsSync(filePath)) {
    console.log(`File not found: ${fileRelPath}`);
    return;
  }
  
  console.log(`Processing ${fileRelPath}...`);
  let content = fs.readFileSync(filePath, 'utf8');
  let replacedCount = 0;

  // Let's implement a safe tokenizer/parser
  let i = 0;
  let newContent = '';
  
  while (i < content.length) {
    // Look for INSERT INTO items or INSERT INTO public.items
    const match = content.slice(i).match(/^INSERT\s+INTO\s+(?:public\.)?items\b/i);
    if (match) {
      newContent += match[0];
      i += match[0].length;

      // 1. Parse columns: scan until we find '(' and then matching ')'
      while (i < content.length && content[i] !== '(') {
        newContent += content[i];
        i++;
      }
      if (i < content.length) {
        newContent += '(';
        i++;
      }
      
      let colStart = i;
      while (i < content.length && content[i] !== ')') {
        i++;
      }
      let colsStr = content.slice(colStart, i);
      newContent += colsStr + ')';
      i++; // skip ')'

      const cols = colsStr.split(',').map(c => c.trim().toLowerCase());
      const slugIdx = cols.indexOf('slug');

      // 2. Scan until we find 'VALUES' and then '('
      const valuesMatch = content.slice(i).match(/^(\s*VALUES\s*\()/i);
      if (valuesMatch) {
        newContent += valuesMatch[1];
        i += valuesMatch[1].length;

        // Parse list of values between '(' and matching ')'
        // taking care of single quotes and escaped single quotes
        let valStart = i;
        let inString = false;
        let parenDepth = 1;
        
        while (i < content.length && parenDepth > 0) {
          const char = content[i];
          if (char === "'") {
            if (inString && content[i + 1] === "'") {
              i += 2; // skip escaped quote
              continue;
            }
            inString = !inString;
          } else if (char === '(' && !inString) {
            parenDepth++;
          } else if (char === ')' && !inString) {
            parenDepth--;
          }
          i++;
        }
        
        let valsStr = content.slice(valStart, i - 1);
        
        // Split values safely
        const vals = [];
        let curVal = '';
        let strOpen = false;
        for (let j = 0; j < valsStr.length; j++) {
          const char = valsStr[j];
          if (char === "'") {
            if (strOpen && valsStr[j + 1] === "'") {
              curVal += "''";
              j++;
            } else {
              strOpen = !strOpen;
              curVal += "'";
            }
          } else if (char === ',' && !strOpen) {
            vals.push(curVal.trim());
            curVal = '';
          } else {
            curVal += char;
          }
        }
        vals.push(curVal.trim());

        if (slugIdx !== -1 && vals[slugIdx]) {
          let val = vals[slugIdx];
          if (val.startsWith("'") && val.endsWith("'")) {
            const cleanSlug = val.slice(1, -1);
            if (mapping[cleanSlug]) {
              const newSlug = mapping[cleanSlug];
              vals[slugIdx] = `'${newSlug}'`;
              replacedCount++;
            }
          }
        }

        newContent += vals.join(', ') + ')';
      }
    } else {
      newContent += content[i];
      i++;
    }
  }

  fs.writeFileSync(filePath, newContent, 'utf8');
  console.log(`Replaced ${replacedCount} slugs in ${fileRelPath}`);
});
