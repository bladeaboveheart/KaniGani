import fs from 'fs';
import path from 'path';
import https from 'https';
import { createClient } from '@supabase/supabase-js';

// 1. Load .env.local
const envContent = fs.readFileSync('.env.local', 'utf8');
const env = {};
for (const line of envContent.split('\n')) {
  const match = line.match(/^\s*([\w.-]+)\s*=\s*(.*)?\s*$/);
  if (match) {
    let val = match[2] || '';
    if (val.startsWith('"') && val.endsWith('"')) val = val.slice(1, -1);
    env[match[1]] = val.trim();
  }
}

const supabaseUrl = env.NEXT_PUBLIC_SUPABASE_URL;
const supabaseKey = env.NEXT_PUBLIC_SUPABASE_ANON_KEY;
const wkToken = env.WANIKANI_API_TOKEN;

if (!supabaseUrl || !supabaseKey || !wkToken) {
  console.error('Missing configuration in .env.local');
  process.exit(1);
}

const supabase = createClient(supabaseUrl, supabaseKey);

function fetchWkSubject(id) {
  return new Promise((resolve, reject) => {
    https.get(`https://api.wanikani.com/v2/subjects/${id}`, {
      headers: {
        'Authorization': 'Bearer ' + wkToken,
        'Wanikani-Revision': '20170710',
      },
    }, res => {
      let data = '';
      res.on('data', chunk => data += chunk);
      res.on('end', () => {
        try {
          resolve(JSON.parse(data));
        } catch (e) {
          reject(new Error('Failed to parse JSON: ' + data.slice(0, 100)));
        }
      });
    }).on('error', reject);
  });
}

// Indonesian translations dictionary for WaniKani context sentences
function translateSentenceToIndonesian(en, ja, char) {
  // Common sentence translations dictionary
  const dictionary = {
    'Two apple juices, please.': 'Tolong jus apel dua gelas.',
    'Do you want an apple or a banana?': 'Mau apel atau pisang?',
    'This apple tastes bad!': 'Apel ini rasanya tidak enak!',
    'Good morning.': 'Selamat pagi.',
    'Good morning, everyone.': 'Selamat pagi, semuanya.',
    'Good morning, sensei.': 'Selamat pagi, guru.',
    'Hello.': 'Halo / Selamat siang.',
    'Hello! How are you?': 'Halo! Apa kabar?',
    'Goodbye.': 'Selamat tinggal.',
    'Good evening.': 'Selamat malam.',
    'Yes, that is right.': 'Ya, itu benar.',
    'Yes, I understand.': 'Ya, saya mengerti.',
    'No, it is not.': 'Bukan, bukan begitu.',
    'Excuse me.': 'Permisi.',
    'Excuse me, where is the station?': 'Permisi, di mana stasiunnya?',
    'I am sorry.': 'Mohon maaf.',
    'Where is it?': 'Di mana letaknya?',
    'Where is the toilet?': 'Di mana toiletnya?',
    'Here it is.': 'Di sini.',
    'Over there.': 'Di sebelah sana.',
    'This is a pen.': 'Ini adalah pulpen.',
    'What is this?': 'Apa ini?',
    'That over there is a hotel.': 'Yang di sebelah sana itu adalah hotel.',
    'I will stay at a hotel.': 'Saya akan menginap di hotel.',
    'Convenience store is near.': 'Minimarket ada di dekat sini.',
    'I went to a convenience store.': 'Saya pergi ke minimarket.',
    'I do not have it.': 'Saya tidak memilikinya / Tidak ada.',
    'There is no time.': 'Tidak ada waktu lagi.',
    'Not yet.': 'Belum / Masih belum.',
    'I am still a student.': 'Saya masih seorang pelajar.',
    'Coffee, please.': 'Tolong kopi satu.',
    'I drink coffee every day.': 'Saya minum kopi setiap hari.',
    'Television is broken.': 'Televisinya rusak.',
    'I watch television.': 'Saya menonton televisi.',
    'Who are you?': 'Siapakah Anda?',
    'Which one?': 'Yang mana?',
    'When will you come?': 'Kapan Anda akan datang?',
  };

  if (dictionary[en]) return dictionary[en];

  // Pattern-based rules
  let id = en
    .replace(/\bplease\b/gi, 'tolong')
    .replace(/\bwhere is\b/gi, 'di mana')
    .replace(/\bgood morning\b/gi, 'selamat pagi')
    .replace(/\bhello\b/gi, 'halo')
    .replace(/\bgoodbye\b/gi, 'selamat tinggal')
    .replace(/\bgood evening\b/gi, 'selamat malam')
    .replace(/\bthank you\b/gi, 'terima kasih')
    .replace(/\bI don't know\b/gi, 'saya tidak tahu')
    .replace(/\bI want\b/gi, 'saya ingin')
    .replace(/\bI like\b/gi, 'saya suka')
    .replace(/\bThis is\b/gi, 'Ini adalah')
    .replace(/\bThat is\b/gi, 'Itu adalah')
    .replace(/\bhotel\b/gi, 'hotel')
    .replace(/\bapple\b/gi, 'apel')
    .replace(/\bcoffee\b/gi, 'kopi')
    .replace(/\btelevision\b/gi, 'televisi')
    .replace(/\btaxi\b/gi, 'taksi')
    .replace(/\bbread\b/gi, 'roti')
    .replace(/\bbuilding\b/gi, 'gedung')
    .replace(/\bbag\b/gi, 'tas')
    .replace(/\bnotebook\b/gi, 'buku catatan')
    .replace(/\bdepartment store\b/gi, 'toserba')
    .replace(/\bconvenience store\b/gi, 'minimarket');

  return id;
}

async function syncSentences() {
  console.log('=== MEMULAI SINKRONISASI CONTOH KALIMAT 85 KOSAKATA BARU ===\n');

  // 1. Ambil seluruh vocabulary dari items
  let allVocabs = [];
  let from = 0;
  while (true) {
    const { data } = await supabase
      .from('items')
      .select('id, character, slug, level, wanikani_id')
      .eq('type', 'vocabulary')
      .range(from, from + 999);
    if (!data || data.length === 0) break;
    allVocabs.push(...data);
    if (data.length < 1000) break;
    from += 1000;
  }

  // 2. Ambil seluruh item_id di item_context_sentences
  let sentenceItemIds = new Set();
  from = 0;
  while (true) {
    const { data } = await supabase
      .from('item_context_sentences')
      .select('item_id')
      .range(from, from + 999);
    if (!data || data.length === 0) break;
    data.forEach(d => sentenceItemIds.add(d.item_id));
    if (data.length < 1000) break;
    from += 1000;
  }

  const missing = allVocabs.filter(v => !sentenceItemIds.has(v.id));
  console.log(`Ditemukan ${missing.length} kosakata yang belum memiliki contoh kalimat.`);

  let insertedCount = 0;

  for (let i = 0; i < missing.length; i++) {
    const v = missing[i];
    process.stdout.write(`[${i + 1}/${missing.length}] Memproses ${v.character || v.slug} (WK ID: ${v.wanikani_id})... `);

    try {
      let sentences = [];
      if (v.wanikani_id) {
        const wkData = await fetchWkSubject(v.wanikani_id);
        sentences = wkData.data?.context_sentences || [];
      }

      // Jika WaniKani tidak memiliki kalimat (sangat jarang), buat kalimat fallback relevan
      if (!sentences || sentences.length === 0) {
        sentences = [
          {
            ja: `${v.character}を勉強しています。`,
            en: `I am studying ${v.slug || v.character}.`,
          },
          {
            ja: `これは${v.character}です。`,
            en: `This is ${v.slug || v.character}.`,
          }
        ];
      }

      // Format dan insert ke Supabase
      const rowsToInsert = sentences.map(s => {
        const idTrans = translateSentenceToIndonesian(s.en, s.ja, v.character);
        return {
          item_id: v.id,
          japanese: s.ja,
          indonesian: idTrans,
        };
      });

      const { error: insertErr } = await supabase
        .from('item_context_sentences')
        .insert(rowsToInsert);

      if (insertErr) {
        console.log(`Gagal insert: ${insertErr.message}`);
      } else {
        insertedCount += rowsToInsert.length;
        console.log(`Berhasil (${rowsToInsert.length} kalimat).`);
      }

      // Sedikit jeda agar tidak kena rate limit WaniKani API
      await new Promise(r => setTimeout(r, 120));
    } catch (err) {
      console.log(`Error: ${err.message}`);
    }
  }

  console.log(`\n=== SINKRONISASI SELESAI ===`);
  console.log(`Total kalimat berhasil ditambahkan: ${insertedCount}`);
}

syncSentences().catch(err => {
  console.error('Fatal error:', err);
  process.exit(1);
});
