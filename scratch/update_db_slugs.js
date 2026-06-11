const { createClient } = require('@supabase/supabase-js');
const fs = require('fs');
const path = require('path');

const envContent = fs.readFileSync(path.join(__dirname, '..', '.env.local'), 'utf8');
const env = {};
envContent.split('\n').forEach(line => {
  const parts = line.split('=');
  if (parts.length >= 2) {
    const key = parts[0].trim();
    const val = parts.slice(1).join('=').trim();
    env[key] = val;
  }
});

const supabase = createClient(env.NEXT_PUBLIC_SUPABASE_URL, env.NEXT_PUBLIC_SUPABASE_ANON_KEY);

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
  'narwhal': 'narwhal',
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
  'talent': 'bakat'
};

async function run() {
  console.log('Fetching database items...');
  const { data: items, error } = await supabase
    .from('items')
    .select('id, type, character, slug, level');

  if (error) {
    console.error('Error fetching items:', error);
    return;
  }

  let updateCount = 0;
  for (const item of items) {
    if (mapping[item.slug]) {
      const newSlug = mapping[item.slug];
      console.log(`Updating ${item.type} [${item.character}]: "${item.slug}" -> "${newSlug}"`);
      
      const { error: updateErr } = await supabase
        .from('items')
        .update({ slug: newSlug })
        .eq('id', item.id);

      if (updateErr) {
        console.error(`Failed to update ${item.character}:`, updateErr);
      } else {
        updateCount++;
      }
    }
  }

  console.log(`Successfully updated ${updateCount} items in database!`);
}

run();
