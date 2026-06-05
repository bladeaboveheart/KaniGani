/**
 * Fix Database Content Quality:
 * 1. Translate English meanings to Indonesian for kanji
 * 2. Generate Indonesian mnemonics for radicals, kanji, vocabulary
 * 3. Fix null reading types for kanji
 */

const { createClient } = require('@supabase/supabase-js');
const fs = require('fs');
const path = require('path');

const envContent = fs.readFileSync(path.join(__dirname, '..', '.env.local'), 'utf8');
const env = {};
envContent.split('\n').forEach(line => {
  const parts = line.split('=');
  if (parts.length >= 2) { env[parts[0].trim()] = parts.slice(1).join('=').trim(); }
});
const supabase = createClient(env.NEXT_PUBLIC_SUPABASE_URL, env.NEXT_PUBLIC_SUPABASE_ANON_KEY);

// ============================================================
// TRANSLATION MAP: English meaning → Indonesian meaning
// Only for kanji and vocabulary items
// ============================================================
const MEANING_TRANSLATIONS = {
  // Numbers
  'One': 'Satu',
  'Two': 'Dua',
  'Three': 'Tiga',
  'Four': 'Empat',
  'Five': 'Lima',
  'Six': 'Enam',
  'Seven': 'Tujuh',
  'Eight': 'Delapan',
  'Nine': 'Sembilan',
  'Ten': 'Sepuluh',
  'Hundred': 'Seratus',
  'Thousand': 'Seribu',
  'Ten Thousand': 'Sepuluh Ribu',
  
  // Family
  'Big Brother': 'Kakak Laki-laki',
  'Elder Brother': 'Kakak Laki-laki',
  'Big Sister': 'Kakak Perempuan',
  'Elder Sister': 'Kakak Perempuan',
  'Little Sister': 'Adik Perempuan',
  'Little Brother': 'Adik Laki-laki',
  'Father': 'Ayah',
  'Mother': 'Ibu',
  'Family': 'Keluarga',
  
  // Time
  'Evening': 'Malam',
  'Morning': 'Pagi',
  'Day Of The Week': 'Hari dalam Seminggu',
  'Interval': 'Jarak',
  'Fall': 'Musim Gugur',
  'Autumn': 'Musim Gugur',
  
  // Places/Directions
  'Right': 'Kanan',
  'Right Direction': 'Arah Kanan',
  'Left': 'Kiri',
  'Left Direction': 'Arah Kiri',
  'North': 'Utara',
  'South': 'Selatan',
  'East': 'Timur',
  'West': 'Barat',
  'Exit': 'Keluar',
  'Place': 'Tempat',
  'Ground': 'Tanah',
  'Land': 'Wilayah',
  'Path': 'Jalur',
  'Street': 'Jalan',
  'Way': 'Cara',
  'Field': 'Ladang',
  'Rice Field': 'Sawah',
  'Public Chamber': 'Aula Publik',
  
  // Actions
  'Do': 'Lakukan',
  'Replace': 'Ganti',
  'Dwell': 'Tinggal',
  'Reside': 'Bermukim',
  'Start': 'Mulai',
  'Construct': 'Bangun',
  'Return Home': 'Pulang',
  'Travel': 'Bepergian',
  'Gather': 'Kumpulkan',
  'Arrive': 'Tiba',
  'Exit': 'Keluar',
  'Sing': 'Bernyanyi',
  'Consider': 'Pertimbangkan',
  'Finish': 'Selesai',
  'Reply': 'Jawab',
  'Response': 'Balasan',
  'Use': 'Gunakan',
  'Passable': 'Bisa Dilewati',
  'Meeting': 'Pertemuan',
  
  // Descriptions/Adjectives
  'Age': 'Era',
  'Period': 'Periode',
  'Generation': 'Generasi',
  'Main': 'Utama',
  'Cheap': 'Murah',
  'White': 'Putih',
  'Fire': 'Api',
  'Book': 'Buku',
  'Circle': 'Lingkaran',
  'Shop': 'Toko',
  'Store': 'Toko',
  'Industry': 'Industri',
  'Occurrence': 'Kejadian',
  'Thought': 'Pikiran',
  'Sudden': 'Tiba-tiba',
  'Evil': 'Jahat',
  'Sentence': 'Kalimat',
  'Material': 'Bahan',
  'Lots Of': 'Banyak',
  'Much': 'Banyak',
  'Character': 'Karakter',
  'Symbol': 'Simbol',
  'Painting': 'Lukisan',
  'Picture': 'Gambar',
  'Ill': 'Sakit',
  'Illness': 'Penyakit',
  'Sickness': 'Penyakit',
  'Reflection': 'Cerminan',
  'Clothing': 'Pakaian',
  'Ease': 'Santai',
  'Pleasure': 'Kesenangan',
  'Body': 'Badan',
  'Somebody': 'Seseorang',
  'Someone': 'Seseorang',
  'Oneself': 'Diri Sendiri',
  'Leg': 'Kaki',
  'Sufficient': 'Cukup',
  'Close': 'Dekat',
  'Luck': 'Keberuntungan',
  'Strength': 'Kekuatan',
  'Ability': 'Kemampuan',
  'China': 'Cina',
  'English': 'Bahasa Inggris',
  'Empty': 'Kosong',
  'Measurement': 'Pengukuran',
  'Attempt': 'Percobaan',
  'Train Station': 'Stasiun Kereta',
  'Article': 'Artikel',
  'Goods': 'Barang',
  'Products': 'Produk',
  'Question': 'Pertanyaan',
  'Food': 'Nasi/Makanan',
  'Ocean': 'Samudra/Laut',
  'Fast': 'Cepat',
  'Quick': 'Cepat',
  'Correct': 'Benar',
  'Like': 'Seperti',
  '~Like': 'Ber-tipe',
  'Private': 'Pribadi',
  'A Little': 'Sedikit',
  'By Means Of': 'Dengan',
  'Compared With': 'Dibandingkan',
  'Since': 'Sejak',
  'With': 'Dengan',
  'Atap': 'Atap',
  'Roof': 'Atap',
  
  // Misc
  'Yen': 'Yen',
  'Style': 'Gaya',
  'Way Of': 'Cara',
  'Modal': 'Ibukota',
  'Good Morning': 'Selamat Pagi',
  'Machine Counter': 'Penghitung Mesin',
  'Number Of Machines': 'Jumlah Mesin',
  'Cooked Rice': 'Nasi',
  'Times': 'Kali',
  'Typical': 'Tipikal',
  
  // Vocabulary specific
  'Guy': 'Pria',
  'Miss': 'Nona',
  'Notification': 'Pemberitahuan',
  'Flier': 'Brosur',
};

// ============================================================
// MNEMONIC GENERATOR
// ============================================================
function generateRadicalMnemonic(name, character) {
  const ch = character || name;
  const cleanName = name.replace(/^\[|\]$/g, '');
  return `Radikal ini disebut "${cleanName}". Bayangkan bentuk ${ch !== cleanName ? `karakter ${ch}` : 'goresannya'} seperti gambaran dari ${cleanName.toLowerCase()}.`;
}

function generateKanjiMnemonicMeaning(character, meaning, radicals) {
  const radicalNames = radicals && radicals.length > 0
    ? radicals.map(r => r.replace(/^\[|\]$/g, '')).join(' dan ')
    : null;
  
  if (radicalNames) {
    return `Kanji ${character} berarti "${meaning}". Bayangkan radikal ${radicalNames} bergabung membentuk makna ${meaning.toLowerCase()}.`;
  }
  return `Kanji ${character} berarti "${meaning}". Ingat bentuk karakter ini sebagai representasi dari ${meaning.toLowerCase()}.`;
}

function generateKanjiMnemonicReading(character, reading, readingType) {
  const type = readingType === 'onyomi' ? 'on-yomi' : 'kun-yomi';
  return `Untuk membaca kanji ${character}, ingat bunyi "${reading}" - ini adalah cara baca ${type}-nya.`;
}

function generateVocabMnemonic(character, meaning) {
  return `Kata "${character}" berarti "${meaning}". Kombinasi kanji-kanji ini membentuk makna yang berkaitan dengan ${meaning.toLowerCase()}.`;
}

// ============================================================
// MAIN FUNCTIONS
// ============================================================

async function fixKanjiMeanings() {
  console.log('\n=== FIXING KANJI MEANINGS ===');
  
  // Get all meanings that have English words
  const { data: meanings, error } = await supabase
    .from('item_meanings')
    .select('id, meaning, item_id, items!inner(type, character)')
    .in('items.type', ['kanji', 'vocabulary']);
  
  if (error) { console.error('Error:', error); return; }
  
  let updateCount = 0;
  let deleteCount = 0;
  
  // Find meanings to translate or delete
  for (const row of meanings) {
    const orig = row.meaning;
    const translated = MEANING_TRANSLATIONS[orig];
    
    if (translated) {
      // Check if this translated meaning already exists for this item
      const { data: existing } = await supabase
        .from('item_meanings')
        .select('id')
        .eq('item_id', row.item_id)
        .eq('meaning', translated);
      
      if (existing && existing.length > 0) {
        // Already have the translated version, delete the English one
        await supabase.from('item_meanings').delete().eq('id', row.id);
        deleteCount++;
        console.log(`  DEL ${row.items.character}: "${orig}" (already have "${translated}")`);
      } else {
        // Update the English meaning to Indonesian
        await supabase.from('item_meanings').update({ meaning: translated }).eq('id', row.id);
        updateCount++;
        console.log(`  UPD ${row.items.character}: "${orig}" → "${translated}"`);
      }
    }
  }
  
  console.log(`\nDone: ${updateCount} updated, ${deleteCount} deleted`);
}

async function fixNullReadingTypes() {
  console.log('\n=== FIXING NULL READING TYPES FOR KANJI ===');
  
  const { data, error } = await supabase
    .from('item_readings')
    .select('id, reading, items!inner(type, character)')
    .is('reading_type', null)
    .eq('items.type', 'kanji');
  
  if (error) { console.error('Error:', error); return; }
  
  console.log(`Found ${data.length} kanji readings with null reading_type`);
  
  for (const row of data) {
    // Default null kanji readings to onyomi
    await supabase.from('item_readings')
      .update({ reading_type: 'onyomi' })
      .eq('id', row.id);
    console.log(`  Fixed ${row.items.character}: ${row.reading} → onyomi`);
  }
}

async function generateRadicalMnemonics() {
  console.log('\n=== GENERATING RADICAL MNEMONICS ===');
  
  const { data: radicals, error } = await supabase
    .from('items')
    .select('id, character, meaning_mnemonic')
    .eq('type', 'radical')
    .or('meaning_mnemonic.is.null,meaning_mnemonic.eq.');
  
  if (error) { console.error('Error:', error); return; }
  
  console.log(`Found ${radicals.length} radicals without mnemonics`);
  
  // Get names from meanings
  for (const radical of radicals) {
    const { data: meanings } = await supabase
      .from('item_meanings')
      .select('meaning')
      .eq('item_id', radical.id)
      .limit(1);
    
    const name = meanings && meanings.length > 0 ? meanings[0].meaning : radical.character;
    const mnemonic = generateRadicalMnemonic(name, radical.character);
    
    await supabase.from('items')
      .update({ meaning_mnemonic: mnemonic })
      .eq('id', radical.id);
    
    console.log(`  ${radical.character || name}: "${mnemonic.substring(0, 60)}..."`);
  }
  
  console.log(`Done: ${radicals.length} radical mnemonics generated`);
}

async function generateKanjiMnemonics() {
  console.log('\n=== GENERATING KANJI MNEMONICS ===');
  
  // Get kanji without meaning_mnemonic
  const { data: kanjiList, error } = await supabase
    .from('items')
    .select(`
      id, character, meaning_mnemonic, reading_mnemonic,
      item_meanings(meaning),
      item_readings(reading, reading_type, primary_reading),
      kanji_radicals(items!kanji_radicals_radical_id_fkey(character, item_meanings(meaning)))
    `)
    .eq('type', 'kanji');
  
  if (error) { console.error('Error:', error); return; }
  
  let mnemonicCount = 0;
  let readingMnemonicCount = 0;
  
  for (const kanji of kanjiList) {
    const primaryMeaning = kanji.item_meanings && kanji.item_meanings.length > 0
      ? kanji.item_meanings[0].meaning
      : kanji.character;
    
    const radicalNames = kanji.kanji_radicals
      ? kanji.kanji_radicals.map(kr => {
          const r = kr.items;
          if (!r) return null;
          const rMeaning = r.item_meanings && r.item_meanings.length > 0 ? r.item_meanings[0].meaning : r.character;
          return rMeaning;
        }).filter(Boolean)
      : [];
    
    const updates = {};
    
    // Generate meaning mnemonic if missing
    if (!kanji.meaning_mnemonic || kanji.meaning_mnemonic.trim() === '') {
      updates.meaning_mnemonic = generateKanjiMnemonicMeaning(kanji.character, primaryMeaning, radicalNames);
      mnemonicCount++;
    }
    
    // Generate reading mnemonic if missing
    if (!kanji.reading_mnemonic || kanji.reading_mnemonic.trim() === '') {
      const primaryReading = kanji.item_readings
        ? kanji.item_readings.find(r => r.primary_reading)
        : null;
      
      if (primaryReading) {
        updates.reading_mnemonic = generateKanjiMnemonicReading(
          kanji.character,
          primaryReading.reading,
          primaryReading.reading_type
        );
        readingMnemonicCount++;
      }
    }
    
    if (Object.keys(updates).length > 0) {
      await supabase.from('items').update(updates).eq('id', kanji.id);
    }
  }
  
  console.log(`Done: ${mnemonicCount} meaning mnemonics, ${readingMnemonicCount} reading mnemonics generated`);
}

async function generateVocabMnemonics() {
  console.log('\n=== GENERATING VOCABULARY MNEMONICS ===');
  
  const { data: vocabList, error } = await supabase
    .from('items')
    .select('id, character, meaning_mnemonic, item_meanings(meaning)')
    .eq('type', 'vocabulary')
    .or('meaning_mnemonic.is.null,meaning_mnemonic.eq.');
  
  if (error) { console.error('Error:', error); return; }
  
  console.log(`Found ${vocabList.length} vocabulary without mnemonics`);
  
  let count = 0;
  for (const vocab of vocabList) {
    const primaryMeaning = vocab.item_meanings && vocab.item_meanings.length > 0
      ? vocab.item_meanings[0].meaning
      : vocab.character;
    
    const mnemonic = generateVocabMnemonic(vocab.character, primaryMeaning);
    await supabase.from('items').update({ meaning_mnemonic: mnemonic }).eq('id', vocab.id);
    count++;
  }
  
  console.log(`Done: ${count} vocab mnemonics generated`);
}

async function main() {
  console.log('Starting content quality fixes...\n');
  
  try {
    await fixNullReadingTypes();
    await fixKanjiMeanings();
    await generateRadicalMnemonics();
    await generateKanjiMnemonics();
    await generateVocabMnemonics();
    
    console.log('\n✅ All content quality fixes complete!');
  } catch (err) {
    console.error('Fatal error:', err);
    process.exit(1);
  }
}

main();
