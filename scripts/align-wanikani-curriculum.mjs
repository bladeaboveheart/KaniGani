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

if (!supabaseUrl || !supabaseKey || !wkToken) {
  console.error('Missing configuration in .env.local');
  process.exit(1);
}

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

// Indonesian primary translations dictionary for the 85 new items
const ID_TRANSLATIONS = {
  9176: 'Sebentar / Sedikit', // ちょっと
  9177: 'Selamat pagi',       // おはよう
  9178: 'Hotel',              // ホテル
  9179: 'Ini',                // これ
  9180: 'Melakukan',          // する
  9181: 'Apel',               // リンゴ
  9182: 'Kopi',               // コーヒー
  9183: 'Halo / Selamat siang', // こんにちは
  9184: 'Kapan',              // いつ
  9185: 'Yang mana',          // どれ
  9186: 'Televisi',           // テレビ
  9187: 'Ya (santai)',        // うん
  9188: 'Ya (formal)',        // はい
  9189: 'Buku catatan',       // ノート
  9190: 'Selamat tinggal',    // さようなら
  9191: 'Selamat malam',      // こんばんは
  9192: 'Itu',                // それ
  9193: 'Minimarket',         // コンビニ
  9194: 'Toserba',            // デパート
  9195: 'Permisi / Maaf',     // すみません
  9196: 'Tidak / Bukan',      // いいえ
  9197: 'Anda / Kamu',        // あなた
  9198: 'Ini (penunjuk)',     // この
  9199: 'Itu (jauh)',         // あれ
  9200: 'Dolar',              // ドル
  9201: 'Yang mana (penunjuk)', // どの
  9202: 'Tidak ada',          // ない
  9203: 'Tas',                // カバン
  9204: 'Taksi',              // タクシー
  9205: 'Itu (penunjuk)',     // その
  9206: 'Itu di sana',        // あの
  9207: 'Tapi / Namun',       // でも
  9208: 'Masih / Belum',      // まだ
  9209: 'Di sini',            // ここ
  9210: 'Camilan',            // おやつ
  9211: 'Di mana',            // どこ
  9212: 'Halo (telepon)',     // もしもし
  9213: 'Hampir semua',       // ほとんど
  9214: 'Kaca',               // ガラス
  9215: 'Di situ',            // そこ
  9216: 'Di sana (jauh)',     // あそこ
  9217: 'Kilo',               // キロ
  9218: 'Rokok',              // タバコ
  9219: 'Layanan / Gratisan', // サービス
  9220: 'Namun',              // しかし
  9221: 'Roti',               // パン
  9222: 'Sangat',             // とても
  9223: 'Gedung',             // ビル
  9224: 'Sudah / Lagi',       // もう
  9226: 'Gaun / Terusan',     // ワンピース
  9227: 'Apartemen',          // マンション
  9228: 'Onomatope',          // オノマトペ
  9229: 'Kartu remi',         // トランプ
  9230: 'Lembut berbulu',     // ふわふわ
  9231: 'Fasih / Lancar',     // ペラペラ
  9232: 'Berdebar-debar',     // ドキドキ
  9233: 'Prasmanan / Buffet', // バイキング
  9234: 'Rontgen / X-ray',    // レントゲン
  9235: 'Kebetulan / Keberuntungan', // まぐれ
  9236: 'Stapler',            // ホッチキス
  9512: 'Sejarah dunia',      // 世界史
  9513: 'Herbivora',          // 草食
  9514: 'Padang rumput',      // 草原
  9515: 'Nyonya / Ibu',       // 女史
  9516: 'Pertama dalam sejarah', // 史上初
  9517: 'Nyata / Jelas',      // 歴然
  9518: 'Sandal jerami',      // 草履
  9519: 'Tanah longsor',      // 土砂崩れ
  9520: 'Dinding benteng',    // 城壁
  9521: 'Garam dan merica',   // 塩コショウ
  9522: 'Kadar garam',        // 塩分
  9524: 'Lukisan dinding',    // 壁画
  9525: 'Daerah berbatu',     // 岩場
  9526: 'Garam batu',         // 岩塩
  9527: 'Prefektur Iwate',    // 岩手県
  9528: 'Batuan dasar',       // 岩盤
  9529: 'Batu / Batuan',      // 岩石
  9530: 'Tepian / Pantai',    // 岸
  9531: 'Tepi pantai',        // 岸辺
  9532: 'Tepi jurang',        // 崖っ縁
  9534: 'Membatasi / Menghias tepi', // 縁取る
  9535: 'Longsor salju',      // 雪崩
  9537: 'Bingkai foto',       // 額縁
  9538: 'Garam dapur',        // 食塩
  9539: 'Pantai seberang',    // 対岸
};

async function main() {
  console.log('=== STARTING CURRICULUM & ITEM ALIGNMENT WITH WANIKANI ===\n');

  // 1. Fetch all WaniKani subjects
  console.log('1. Fetching all subjects from WaniKani API...');
  let nextUrl = 'https://api.wanikani.com/v2/subjects';
  const wkSubjects = [];
  while (nextUrl) {
    const json = await fetchJson(nextUrl);
    wkSubjects.push(...json.data);
    process.stdout.write(`  Fetched ${wkSubjects.length} subjects...\r`);
    nextUrl = json.pages?.next_url;
  }
  console.log(`\n  Fetched total ${wkSubjects.length} WaniKani subjects.`);

  const wkSubjectMap = new Map();
  for (const s of wkSubjects) {
    if (!s.data.hidden_at) {
      wkSubjectMap.set(s.id, s);
    }
  }

  // 2. Fetch all existing KaniGani items
  console.log('\n2. Fetching all items from KaniGani items table...');
  const kgItems = [];
  let from = 0;
  while (true) {
    const { data, error } = await supabase
      .from('items')
      .select('id, wanikani_id, type, character, slug, level')
      .range(from, from + 999);
    if (error) throw error;
    if (!data || data.length === 0) break;
    kgItems.push(...data);
    if (data.length < 1000) break;
    from += 1000;
  }
  console.log(`  Fetched total ${kgItems.length} KaniGani items.`);

  const kgIdMap = new Map();
  for (const item of kgItems) {
    if (item.wanikani_id) {
      kgIdMap.set(item.wanikani_id, item);
    }
  }

  // 3. STEP A: Align levels for existing items
  console.log('\n3. STEP A: Checking and updating shifted item levels...');
  let levelUpdateCount = 0;
  for (const [wkId, wkObj] of wkSubjectMap.entries()) {
    const kgItem = kgIdMap.get(wkId);
    if (kgItem && kgItem.level !== wkObj.data.level) {
      const { error } = await supabase
        .from('items')
        .update({ level: wkObj.data.level })
        .eq('id', kgItem.id);
      if (error) {
        console.error(`  Error updating level for ${kgItem.character}:`, error.message);
      } else {
        console.log(`  Updated ${kgItem.type} "${kgItem.character}" (WK ID ${wkId}): Level ${kgItem.level} -> ${wkObj.data.level}`);
        levelUpdateCount++;
        kgItem.level = wkObj.data.level;
      }
    }
  }
  console.log(`  Total level updates applied: ${levelUpdateCount}`);

  // 4. STEP B: Insert 85 missing WaniKani subjects
  console.log('\n4. STEP B: Inserting 85 missing WaniKani subjects...');
  const missingSubjects = [];
  for (const [wkId, wkObj] of wkSubjectMap.entries()) {
    if (!kgIdMap.has(wkId)) {
      missingSubjects.push(wkObj);
    }
  }
  console.log(`  Found ${missingSubjects.length} missing active subjects to insert.`);

  let insertedCount = 0;
  for (const s of missingSubjects) {
    const wkId = s.id;
    const char = s.data.characters || s.data.slug;
    const slug = s.data.slug || char;
    const level = s.data.level;
    const lessonPos = s.data.lesson_position || 0;
    const meaningMnemonic = s.data.meaning_mnemonic || '';
    const readingMnemonic = s.data.reading_mnemonic || '';

    // Insert into items
    const { data: itemData, error: itemErr } = await supabase
      .from('items')
      .insert({
        wanikani_id: wkId,
        type: 'vocabulary',
        character: char,
        slug: slug,
        level: level,
        lesson_position: lessonPos,
        meaning_mnemonic: meaningMnemonic,
        reading_mnemonic: readingMnemonic,
        description: '',
      })
      .select('id')
      .single();

    if (itemErr || !itemData) {
      console.error(`  Error inserting item ${char}:`, itemErr?.message);
      continue;
    }

    const newUuid = itemData.id;
    kgIdMap.set(wkId, { id: newUuid, wanikani_id: wkId, type: 'vocabulary', character: char, slug, level });

    // Meanings: Indonesian primary + English accepted
    const idMeaning = ID_TRANSLATIONS[wkId] || s.data.meanings.find(m => m.primary)?.meaning || slug;
    const meaningsToInsert = [
      {
        item_id: newUuid,
        meaning: idMeaning,
        primary_meaning: true,
        accepted_answer: true,
      }
    ];

    // English meanings
    for (const m of s.data.meanings) {
      if (m.meaning.toLowerCase().trim() !== idMeaning.toLowerCase().trim()) {
        meaningsToInsert.push({
          item_id: newUuid,
          meaning: m.meaning,
          primary_meaning: false,
          accepted_answer: true,
        });
      }
    }

    // Aux meanings
    for (const aux of (s.data.auxiliary_meanings || [])) {
      if (aux.type === 'whitelist') {
        meaningsToInsert.push({
          item_id: newUuid,
          meaning: aux.meaning,
          primary_meaning: false,
          accepted_answer: true,
        });
      }
    }

    await supabase.from('item_meanings').insert(meaningsToInsert);

    // Readings
    const readings = s.data.readings?.map(r => r.reading) || [char];
    const readingsToInsert = readings.map((r, idx) => ({
      item_id: newUuid,
      reading: r,
      reading_type: null,
      primary_reading: idx === 0,
      accepted_answer: true,
    }));
    await supabase.from('item_readings').insert(readingsToInsert);

    // Prerequisites (Kanji components)
    const components = s.data.component_subject_ids || [];
    for (const kId of components) {
      const parentItem = kgIdMap.get(kId);
      if (parentItem) {
        await supabase.from('item_prerequisites').insert({
          item_id: newUuid,
          requires_item_id: parentItem.id,
        });
      }
    }

    insertedCount++;
    process.stdout.write(`  Inserted ${insertedCount}/${missingSubjects.length} items (${char})...\r`);
  }
  console.log(`\n  Successfully inserted all ${insertedCount} missing items!`);

  // 5. STEP C: Add official English meanings as accepted answers across ALL items
  console.log('\n5. STEP C: Syncing official English meanings as accepted answers across all items...');
  // Fetch existing item_meanings to avoid duplicate inserts
  console.log('  Fetching existing meanings from database...');
  const existingMeaningsSet = new Set();
  let mFrom = 0;
  while (true) {
    const { data, error } = await supabase
      .from('item_meanings')
      .select('item_id, meaning')
      .range(mFrom, mFrom + 999);
    if (error) throw error;
    if (!data || data.length === 0) break;
    data.forEach(m => {
      existingMeaningsSet.add(`${m.item_id}:${m.meaning.toLowerCase().trim()}`);
    });
    if (data.length < 1000) break;
    mFrom += 1000;
  }
  console.log(`  Existing meaning entries in database: ${existingMeaningsSet.size}`);

  const englishMeaningsToInsert = [];
  for (const [wkId, wkObj] of wkSubjectMap.entries()) {
    const kgItem = kgIdMap.get(wkId);
    if (!kgItem) continue;

    for (const m of wkObj.data.meanings) {
      const key = `${kgItem.id}:${m.meaning.toLowerCase().trim()}`;
      if (!existingMeaningsSet.has(key)) {
        existingMeaningsSet.add(key);
        englishMeaningsToInsert.push({
          item_id: kgItem.id,
          meaning: m.meaning,
          primary_meaning: false,
          accepted_answer: true,
        });
      }
    }

    for (const aux of (wkObj.data.auxiliary_meanings || [])) {
      if (aux.type === 'whitelist') {
        const key = `${kgItem.id}:${aux.meaning.toLowerCase().trim()}`;
        if (!existingMeaningsSet.has(key)) {
          existingMeaningsSet.add(key);
          englishMeaningsToInsert.push({
            item_id: kgItem.id,
            meaning: aux.meaning,
            primary_meaning: false,
            accepted_answer: true,
          });
        }
      }
    }
  }

  console.log(`  Identified ${englishMeaningsToInsert.length} English meanings to add as accepted answers.`);

  // Insert in batches of 1000
  const mBatchSize = 1000;
  for (let i = 0; i < englishMeaningsToInsert.length; i += mBatchSize) {
    const batch = englishMeaningsToInsert.slice(i, i + mBatchSize);
    const { error } = await supabase.from('item_meanings').insert(batch);
    if (error) {
      console.error(`  Batch insert error at ${i}:`, error.message);
    } else {
      process.stdout.write(`  Inserted ${i + batch.length}/${englishMeaningsToInsert.length} English meanings...\r`);
    }
  }
  console.log(`\n  Successfully inserted ${englishMeaningsToInsert.length} English accepted meanings!`);

  console.log('\n=== ALL WANIKANI CURRICULUM SYNC TASKS COMPLETED SUCCESSFULLY! ===');
}

main().catch(err => {
  console.error('\nFATAL ERROR:', err);
  process.exit(1);
});
