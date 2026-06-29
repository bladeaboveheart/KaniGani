const { createClient } = require('@supabase/supabase-js');
const fs = require('fs');
const path = require('path');

// Read env variables
const envContent = fs.readFileSync(path.join(__dirname, '..', '.env.local'), 'utf8');
const env = {};
envContent.split('\n').forEach(line => {
  const parts = line.split('=');
  if (parts.length >= 2) {
    env[parts[0].trim()] = parts.slice(1).join('=').trim();
  }
});

const supabase = createClient(env.NEXT_PUBLIC_SUPABASE_URL, env.NEXT_PUBLIC_SUPABASE_ANON_KEY);

const PUN_MAP = {
  'か': { ind: 'Kaki/Kaca' },
  'き': { ind: 'Kipas/Kikir' },
  'く': { ind: 'Kuku/Kupu-kupu' },
  'け': { ind: 'Kera' },
  'こ': { ind: 'Kopi/Koki' },
  'さ': { ind: 'Sapi/Sate' },
  'し': { ind: 'Singa/Silet' },
  'す': { ind: 'Susu/Sumpit' },
  'せ': { ind: 'Seng' },
  'そ': { ind: 'Soto/Sosis' },
  'た': { ind: 'Tali/Tahu' },
  'ち': { ind: 'Cili/Ceri' },
  'つ': { ind: 'Topi/Tusuk' },
  'て': { ind: 'Teko/Tenda' },
  'と': { ind: 'Toko/Tomat' },
  'な': { ind: 'Nasi/Naga' },
  'に': { ind: 'Nila/Nikel' },
  'ぬ': { ind: 'Nuri' },
  'ね': { ind: 'Nenek' },
  'の': { ind: 'Noda' },
  'は': { ind: 'Hari/Harimau' },
  'ひ': { ind: 'Hidung/Hijau' },
  'fu': { ind: 'Feri/Foto' },
  'ふ': { ind: 'Feri/Foto' },
  'へ': { ind: 'Helm' },
  'ほ': { ind: 'Hotel/Hormon' },
  'ま': { ind: 'Mawar/Madu' },
  'み': { ind: 'Minyak/Mimi' },
  'む': { ind: 'Mulut/Muka' },
  'め': { ind: 'Meja/Merak' },
  'も': { ind: 'Motor/Mobil' },
  'や': { ind: 'Yoyo' },
  'ゆ': { ind: 'Yuda' },
  'よ': { ind: 'Yoga' },
  'ら': { ind: 'Raja' },
  'り': { ind: 'Riam/Ribu' },
  'る': { ind: 'Rusa' },
  'れ': { ind: 'Reog' },
  'ろ': { ind: 'Roti/Roda' },
  'わ': { ind: 'Wajan' },
  
  // Compounds
  'こう': { ind: 'Koko/Koki' },
  'しょう': { ind: 'Sopir/Soto' },
  'じょう': { ind: 'Joni/Jenderal' },
  'せい': { ind: 'Setan/Sapi' },
  'けい': { ind: 'Kakek/Keju' },
  'しん': { ind: 'Shin-chan/Singa' },
  'かん': { ind: 'Kancil/Kantor' },
  'ちょう': { ind: 'Cokelat/Corong' },
  'とう': { ind: 'Topi/Toko' },
  'せん': { ind: 'Senter/Semen' },
  'えん': { ind: 'Ember/Yen' },
  'じ': { ind: 'Juri/Jalan' },
  'がく': { ind: 'Gajah/Gagang' },
  'しゃ': { ind: 'Sapi/Sampo' },
  'でn': { ind: 'Dendeng/Denda' },
  'でん': { ind: 'Dendeng/Denda' },
  'きゅう': { ind: 'Kura-kura' },
  'りょう': { ind: 'Roti' },
  'ぎょう': { ind: 'Gajah' },
  'みょう': { ind: 'Kucing' },
  
  // Specific N5/N4 mappings
  'もく': { ind: 'Muka/Mangkuk' },
  'まい': { ind: 'Maimun/Mainan' },
  'いん': { ind: 'Indah/Intan' },
  'ちゅう': { ind: 'Cumi/Cubit' },
  'つう': { ind: 'Tusuk/Tuli' },
  'ほん': { ind: 'Pohon/Pondok' },
  'ふう': { ind: 'Puyuh/Fosil' },
  'てい': { ind: 'Teh/Teko' },
  'はく': { ind: 'Hakim/Handuk' },
  'てき': { ind: 'Teko/Tekko' },
  'さく': { ind: 'Saku/Saksi' },
  'たい': { ind: 'Tali/Tari' },
  'らく': { ind: 'Rak/Rakyat' },
  'こく': { ind: 'Koko/Koki' },
  'そく': { ind: 'Soto/Sosis' },
  'ふk': { ind: 'Fosil/Foto' },
  'ふく': { ind: 'Fosil/Foto' },
  'かい': { ind: 'Kail/Kain' },
  'きん': { ind: 'Kincir/Kendi' },
  'ぎょ': { ind: 'Gigi/Giyono' },
  'ぶつ': { ind: 'Buku/Butir' },
  'しゅう': { ind: 'Susu/Sumpit' },
  'らい': { ind: 'Rantai/Raja' },
  'ねん': { ind: 'Nenek/Nanas' },
  'にん': { ind: 'Ninja/Nasi' },
  'an': { ind: 'Angsa/Anak' },
  'あん': { ind: 'Angsa/Anak' },
  'ひゃく': { ind: 'Hidung/Hijau' },
  'せつ': { ind: 'Setan/Senter' },
  'りょく': { ind: 'Roti/Roda' },
  'げん': { ind: 'Gendang/Genta' },
  'が': { ind: 'Gajah/Gagang' },
  'はつ': { ind: 'Hari/Harta' },
  'しょく': { ind: 'Soto/Sosis' },
  'がん': { ind: 'Gandum/Genta' },
  'どう': { ind: 'Domba/Topi' },
  'しゅ': { ind: 'Susu/Sumpit' },
  'ぶ': { ind: 'Buku/Burung' },
  'べん': { ind: 'Bendi/Bensin' },
  'ぎゅう': { ind: 'Gajah' },
  'どく': { ind: 'Dokter/Domba' },
  'り': { ind: 'Riam/Ribu' },
  'めい': { ind: 'Meja/Merak' },
  'じょ': { ind: 'Joni/Jenderal' },
  'しゃく': { ind: 'Sapi/Sampo' },
  'ぎん': { ind: 'Gasing/Gigi' },
  'きょう': { ind: 'Kipas/Kikir' },
  'こん': { ind: 'Kopi/Koki' },
  'おん': { ind: 'Onta/Obor' },
  'ゆう': { ind: 'Yuda' },
  'りき': { ind: 'Roti/Roda' },
  'もん': { ind: 'Motor/Mobil' },
  'にゅう': { ind: 'Nila/Nikel' },
  'とく': { ind: 'Toko/Tomat' },
  'しょ': { ind: 'Sopir/Soto' },
  'ちゃく': { ind: 'Ceri/Cili' },
  'ひん': { ind: 'Hidung/Hijau' },
  'かく': { ind: 'Kaki/Kaca' },
  'けん': { ind: 'Kendi/Kencir' },
  'しつ': { ind: 'Silet/Singa' },
  'さい': { ind: 'Sapi/Sate' },
  'ほう': { ind: 'Hotel/Hormon' },
  'だい': { ind: 'Dadu/Dahi' },
  'あく': { ind: 'Aku/Aki' },
  'よう': { ind: 'Yoga' },
  'えい': { ind: 'Ember/Elang' },
  'ぶん': { ind: 'Bunga/Buku' },
  'ろく': { ind: 'Roti/Roda' },
  'りつ': { ind: 'Rusa/Raja' },
  'ぜん': { ind: 'Semen/Senter' },
  'はん': { ind: 'Hantu/Handuk' },
  'gai': { ind: 'Gajah/Gagang' },
  'gai': { ind: 'Gajah/Gagang' },
  'がい': { ind: 'Gajah/Gagang' },
  'じき': { ind: 'Juri/Jalan' },
  'そう': { ind: 'Soto/Sosis' },
  'えき': { ind: 'Ember/Elang' },
  'だん': { ind: 'Dandan/Dapur' },
  'うん': { ind: 'Unta/Ular' },
  'ぞく': { ind: 'Soto/Sosis' },
  'りゅう': { ind: 'Rusa/Roda' },
  'くう': { ind: 'Kuku/Kupu-kupu' },
  'びょう': { ind: 'Burung/Buku' },
  'ばい': { ind: 'Babi/Bayam' },
  'べつ': { ind: 'Bebek/Besi' },
  'りょ': { ind: 'Roti/Roda' }
};

// Override specific stories to keep them high-quality
const SPECIAL_STORIES = {
  '木': 'Untuk membaca kanji 木 (pohon), bayangkan di setiap pohon ada **Muka** (もく) raksasa yang menatap Anda!',
  '百': 'Untuk membaca kanji 百 (ratus), bayangkan ada seratus orang yang memiliki **Hidung** (ひゃく) yang sangat panjang!',
  '才': 'Anak berumur sepuluh tahun ini memiliki bakat menggambar **Sapi** (さい) yang sangat indah!',
  '再': 'Anda harus memotong **Sapi** (さい) ini lagi dan lagi untuk pesta pernikahan.',
  '売': 'Dia menjual **Babi** (ばい) di pasar tradisional.',
  '買': 'Anda membeli **Babi** (ばい) peliharaan yang lucu.',
  '倍': 'Jumlah **Babi** (ばい) di peternakan ini berlipat ganda dalam setahun.',
  '走': 'Anda berlari kencang demi mengejar penjual **Soto** (そう) yang lewat!',
  '早': 'Anda harus bangun pagi-pagi sekali untuk makan semangkuk **Soto** (sou) hangat.',
  '草': 'Kambing-kambing ini tidak memakan rumput, melainkan memakan **Soto** (そう)!',
  '送': 'Anda mengirim semangkuk **Soto** (そう) hangat lewat paket ekspres.',
  '想': 'Anda terus memikirkan kenikmatan semangkuk **Soto** (そう) hangat yang kemarin Anda makan.',
  '窓': 'Anda melemparkan mangkuk **Soto** (soto) keluar jendela karena rasanya hambar.'
};

const TEMPLATES = [
  // Template 0: Karakter & Aksi
  (meaning, character, pun, reading) => `Untuk mengingat cara baca kanji **${meaning}** (${character}), bayangkan Anda sedang membawa **${pun}** untuk ditaruh di atas ${meaning.toLowerCase()}. Kejadian unik ini mengingatkan Anda pada bunyi **${reading}**!`,
  
  // Template 1: Petualangan / Visual
  (meaning, character, pun, reading) => `Bayangkan sebuah situasi lucu di mana **${meaning}** (${character}) tiba-tiba berbicara dan meminta **${pun}**! Visualisasi konyol ini akan membantu Anda mengingat bunyi cara bacanya: **${reading}**.`,
  
  // Template 2: Kejadian Ekstrem / Fantasi
  (meaning, character, pun, reading) => `Ketika Anda sedang melihat **${meaning}** (${character}), tiba-tiba muncul sesosok **${pun}** yang menghampiri Anda. Ingatlah momen mengejutkan ini untuk mengingat cara bacanya: **${reading}**.`,
  
  // Template 3: Interaksi Sosial
  (meaning, character, pun, reading) => `Bagaimana cara membaca kanji **${meaning}** (${character})? Ingat saja bahwa **${pun}** sangat menyukai ${meaning.toLowerCase()}! Hubungan erat ini akan membantu Anda mengingat bunyi **${reading}**.`,
  
  // Template 4: Fakta Konyol / Sains Fiksi
  (meaning, character, pun, reading) => `Tahukah Anda bahwa **${meaning}** (${character}) ini sebenarnya dibuat dari tumpukan **${pun}**? Asosiasi fiktif namun kuat ini akan mempermudah Anda menghafal cara bacanya: **${reading}**.`
];

async function run() {
  console.log('Fetching N5 & N4 Kanji items from Supabase...');
  const rankIds = [
    'a1b2c3d4-e5f6-7a8b-9c0d-1e2f3a4b5c6d', // N5 Pangkat 1
    'b2c3d4e5-f6a7-8b9c-0d1e-2f3a4b5c6d7e', // N5 Pangkat 2
    'c3d4e5f6-a7b8-9c0d-1e2f-3a4b5c6d7e8f', // N5 Pangkat 3
    'd4e5f6a7-b8c9-0d1e-2f3a-4b5c6d7e8f9a', // N4 Pangkat 1
    'e5f6a7b8-c90d-1e2f-3a4b-5c6d7e8f9a0b', // N4 Pangkat 2
    'f6a7b8c9-0d1e-2f3a-4b5c-6d7e8f9a0b1c', // N4 Pangkat 3
    'a7b8c90d-1e2f-3a4b-5c6d-7e8f9a0b1c2d', // N4 Pangkat 4
    'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', // N4 Pangkat 5
    'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f'  // N4 Pangkat 6
  ];

  let dbItems = [];
  let page = 0;
  const limit = 1000;
  while (true) {
    const { data, error } = await supabase
      .from('items')
      .select('id, character, type, slug')
      .eq('type', 'kanji')
      .in('rank_id', rankIds)
      .range(page * limit, (page + 1) * limit - 1);

    if (error) {
      console.error('Error fetching db items:', error);
      return;
    }
    if (!data || data.length === 0) break;
    dbItems = dbItems.concat(data);
    if (data.length < limit) break;
    page++;
  }

  console.log(`Found ${dbItems.length} Kanji items to process.`);

  let updatedCount = 0;
  const chunkSize = 20;

  for (let i = 0; i < dbItems.length; i += chunkSize) {
    const chunk = dbItems.slice(i, i + chunkSize);

    await Promise.all(chunk.map(async (item) => {
      // Get primary meaning
      const { data: meanings } = await supabase
        .from('item_meanings')
        .select('meaning')
        .eq('item_id', item.id)
        .order('primary_meaning', { ascending: false });

      const meaningStr = meanings && meanings.length > 0 ? meanings[0].meaning : item.slug || item.character;

      // Get primary reading
      const { data: readings } = await supabase
        .from('item_readings')
        .select('reading')
        .eq('item_id', item.id)
        .eq('primary_reading', true);

      const readingStr = readings && readings.length > 0 ? readings[0].reading : '';

      if (!readingStr) return; // Skip if no reading

      let readingMnem = '';
      if (SPECIAL_STORIES[item.character]) {
        readingMnem = SPECIAL_STORIES[item.character];
      } else {
        const cleanReading = readingStr.trim().toLowerCase();
        const punInfo = PUN_MAP[cleanReading];
        const punWord = punInfo ? punInfo.ind : readingStr;

        // Pick template based on character code hash
        const templateIdx = item.character.charCodeAt(0) % TEMPLATES.length;
        readingMnem = TEMPLATES[templateIdx](meaningStr, item.character, punWord, readingStr);
      }

      // Update in Supabase
      const { error: updateErr } = await supabase
        .from('items')
        .update({
          reading_mnemonic: readingMnem
        })
        .eq('id', item.id);

      if (updateErr) {
        console.error(`Failed to update ${item.character}:`, updateErr.message);
      } else {
        updatedCount++;
      }
    }));

    console.log(`Processed ${Math.min(i + chunkSize, dbItems.length)} / ${dbItems.length} items (Updated: ${updatedCount})...`);
  }

  console.log(`\n✅ Finished recreating reading mnemonics! Total updated: ${updatedCount}`);
}

run().catch(console.error);
