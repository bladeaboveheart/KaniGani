import https from 'https';
import fs from 'fs';
import path from 'path';
import { createClient } from '@supabase/supabase-js';

// Load .env.local
const envPath = path.resolve(process.cwd(), '.env.local');
const envContent = fs.readFileSync(envPath, 'utf8');
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

const supabase = createClient(supabaseUrl, supabaseKey);

function fetchJson(url) {
  return new Promise((resolve, reject) => {
    https.get(url, {
      headers: {
        'Authorization': 'Bearer ' + wkToken,
        'Wanikani-Revision': '20170710'
      }
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

async function runAudit() {
  console.log('=== MEMULAI AUDIT DATABASE KANIGANI VS WANIKANI ===\n');

  // 1. Audit KaniGani Items table in chunks
  console.log('1. Memeriksa database internal KaniGani (Supabase)...');
  
  let allItems = [];
  let from = 0;
  const CHUNK_SIZE = 1000;
  while (true) {
    const { data, error } = await supabase
      .from('items')
      .select('id, character, slug, level, type, wanikani_id, meaning_mnemonic, reading_mnemonic')
      .range(from, from + CHUNK_SIZE - 1);
    if (error) throw error;
    if (!data || data.length === 0) break;
    allItems.push(...data);
    if (data.length < CHUNK_SIZE) break;
    from += CHUNK_SIZE;
  }

  const kaniRadicals = allItems.filter(i => i.type === 'radical');
  const kaniKanjis = allItems.filter(i => i.type === 'kanji');
  const kaniVocabs = allItems.filter(i => i.type === 'vocabulary');

  console.log(`Total item di KaniGani: ${allItems.length}`);
  console.log(`- Radikal: ${kaniRadicals.length}`);
  console.log(`- Kanji: ${kaniKanjis.length}`);
  console.log(`- Kosakata: ${kaniVocabs.length}`);

  const itemsWithoutWkId = allItems.filter(i => !i.wanikani_id);
  console.log(`- Item tanpa wanikani_id: ${itemsWithoutWkId.length}`);

  // Check mnemonics in KaniGani
  const kanjiNoMeaningMnemonic = kaniKanjis.filter(i => !i.meaning_mnemonic);
  const kanjiNoReadingMnemonic = kaniKanjis.filter(i => !i.reading_mnemonic);
  const vocabNoMeaningMnemonic = kaniVocabs.filter(i => !i.meaning_mnemonic);
  console.log(`- Kanji tanpa meaning mnemonic: ${kanjiNoMeaningMnemonic.length}`);
  console.log(`- Kanji tanpa reading mnemonic: ${kanjiNoReadingMnemonic.length}`);
  console.log(`- Kosakata tanpa meaning mnemonic: ${vocabNoMeaningMnemonic.length}`);

  // Check Readings table in KaniGani
  console.log('\n2. Memeriksa tabel item_readings KaniGani...');
  const { count: readingsCount, error: rErr } = await supabase
    .from('item_readings')
    .select('*', { count: 'exact', head: true });
  console.log(`Total baris item_readings: ${readingsCount || 0}`);

  // Sample check: kanji readings with reading_type
  const { data: sampleKanjiReadings } = await supabase
    .from('item_readings')
    .select('reading_type')
    .not('reading_type', 'is', null)
    .limit(10);
  console.log(`Contoh tipe cara baca terdaftar:`, [...new Set(sampleKanjiReadings?.map(r => r.reading_type))]);

  // Check Context Sentences table in KaniGani
  console.log('\n3. Memeriksa tabel item_context_sentences KaniGani...');
  const { count: sentencesCount } = await supabase
    .from('item_context_sentences')
    .select('*', { count: 'exact', head: true });
  console.log(`Total baris item_context_sentences: ${sentencesCount || 0}`);

  // Check Context Sentences coverage for vocabs
  const { data: vocabWithSentences } = await supabase
    .from('item_context_sentences')
    .select('item_id');
  const distinctVocabIdsWithSentences = new Set(vocabWithSentences?.map(s => s.item_id));
  const vocabsMissingSentences = kaniVocabs.filter(v => !distinctVocabIdsWithSentences.has(v.id));
  console.log(`- Kosakata yang memiliki contoh kalimat: ${distinctVocabIdsWithSentences.size}`);
  console.log(`- Kosakata yang BELUM memiliki contoh kalimat: ${vocabsMissingSentences.length}`);

  // 4. Fetch all active subjects from WaniKani API
  console.log('\n4. Mengambil ringkasan kurikulum WaniKani API...');
  let wkSubjects = [];
  let nextUrl = 'https://api.wanikani.com/v2/subjects?hidden=false';
  let pageCount = 0;
  
  while (nextUrl) {
    process.stdout.write(`\rMemuat halaman WaniKani ${++pageCount}...`);
    const res = await fetchJson(nextUrl);
    wkSubjects.push(...res.data);
    nextUrl = res.pages?.next_url;
  }
  console.log(`\nSelesai! Total subjects aktif di WaniKani: ${wkSubjects.length}`);

  const wkRadicals = wkSubjects.filter(s => s.object === 'radical');
  const wkKanjis = wkSubjects.filter(s => s.object === 'kanji');
  const wkVocabs = wkSubjects.filter(s => s.object === 'vocabulary' || s.object === 'kana_vocabulary');

  console.log(`- Radikal WaniKani: ${wkRadicals.length}`);
  console.log(`- Kanji WaniKani: ${wkKanjis.length}`);
  console.log(`- Kosakata WaniKani: ${wkVocabs.length}`);

  // Compare WaniKani IDs against KaniGani wanikani_id
  const kaniWkIdMap = new Set(allItems.map(i => i.wanikani_id).filter(Boolean));
  const missingInKani = wkSubjects.filter(s => !kaniWkIdMap.has(s.id));

  console.log(`\n=== HASIL PERBANDINGAN SINKRONISASI ===`);
  console.log(`Item WaniKani yang BELUM ada di KaniGani: ${missingInKani.length}`);
  if (missingInKani.length > 0) {
    console.log('Rincian item WaniKani yang hilang di KaniGani:');
    for (const m of missingInKani.slice(0, 20)) {
      console.log(`  [${m.object}] ID: ${m.id}, Level: ${m.data.level}, Karakter/Slug: ${m.data.characters || m.data.slug}`);
    }
    if (missingInKani.length > 20) {
      console.log(`  ...dan ${missingInKani.length - 20} item lainnya.`);
    }
  }

  // Check if any KaniGani items have no match in WaniKani
  const wkWkIdMap = new Set(wkSubjects.map(s => s.id));
  const kaniItemsNotInWk = allItems.filter(i => i.wanikani_id && !wkWkIdMap.has(i.wanikani_id));
  console.log(`Item KaniGani yang tidak ada di WaniKani aktif: ${kaniItemsNotInWk.length}`);

  // Check Context Sentences in WaniKani vs KaniGani
  let wkVocabWithSentences = 0;
  for (const v of wkVocabs) {
    if (v.data.context_sentences && v.data.context_sentences.length > 0) {
      wkVocabWithSentences++;
    }
  }
  console.log(`Kosakata WaniKani yang punya context sentences: ${wkVocabWithSentences} dari ${wkVocabs.length}`);
}

runAudit().catch(err => {
  console.error('Audit failed:', err);
  process.exit(1);
});
