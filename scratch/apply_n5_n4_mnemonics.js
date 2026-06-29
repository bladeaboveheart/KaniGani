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

const cachePath = path.join(__dirname, 'translation_cache.json');
let translationCache = {};
if (fs.existsSync(cachePath)) {
  translationCache = JSON.parse(fs.readFileSync(cachePath, 'utf8'));
  console.log(`Loaded cache with ${Object.keys(translationCache).length} entries.`);
}

let cacheDirty = false;
function saveCache() {
  if (cacheDirty) {
    fs.writeFileSync(cachePath, JSON.stringify(translationCache, null, 2));
    cacheDirty = false;
    console.log('Saved translation cache.');
  }
}

async function translateText(text) {
  if (!text || text.trim() === '') return text;
  const trimmed = text.trim();
  if (translationCache[trimmed]) return translationCache[trimmed];

  // Sleep 150ms to avoid rate limits
  await new Promise(r => setTimeout(r, 150));

  const url = `https://translate.googleapis.com/translate_a/single?client=gtx&sl=en&tl=id&dt=t&q=${encodeURIComponent(trimmed)}`;
  try {
    const res = await fetch(url);
    if (res.status === 200) {
      const data = await res.json();
      const translated = data[0].map(x => x[0]).join('').trim();
      translationCache[trimmed] = translated;
      cacheDirty = true;
      return translated;
    } else if (res.status === 429) {
      console.warn(`Rate limited. Sleeping 5s...`);
      await new Promise(r => setTimeout(r, 5000));
      return translateText(text); // Retry
    }
  } catch (err) {
    console.error(`Error translating "${trimmed}": ${err.message}`);
  }
  return trimmed;
}

const PUN_MAP = {
  'か': { eng: [/\bcar(s)?\b/gi, /\bcat(s)?\b/gi], ind: 'Kaki/Kaca' },
  'き': { eng: [/\bkey(s)?\b/gi, /\bkiss(es)?\b/gi], ind: 'Kipas/Kikir' },
  'く': { eng: [/\bcoop(s)?\b/gi, /\bcookie(s)?\b/gi], ind: 'Kuku/Kupu-kupu' },
  'け': { eng: [/\bkay(s)?\b/gi, /\bkey(s)?\b/gi], ind: 'Kera' },
  'こ': { eng: [/\bcoal(s)?\b/gi, /\bcoke(s)?\b/gi], ind: 'Kopi/Koki' },
  'さ': { eng: [/\bsaw(s)?\b/gi, /\bsake(s)?\b/gi], ind: 'Sapi/Sate' },
  'し': { eng: [/\bshe\b/gi, /\bsheep(s)?\b/gi], ind: 'Singa/Silet' },
  'す': { eng: [/\bsue\b/gi, /\bsoup(s)?\b/gi], ind: 'Susu/Sumpit' },
  'せ': { eng: [/\bsay(s)?\b/gi], ind: 'Seng' },
  'そ': { eng: [/\bsoap(s)?\b/gi, /\bsew(s)?\b/gi], ind: 'Soto/Sosis' },
  'た': { eng: [/\btoddler(s)?\b/gi, /\btaco(s)?\b/gi], ind: 'Tali/Tahu' },
  'ち': { eng: [/\bcheek(s)?\b/gi, /\bcheese\b/gi], ind: 'Cili/Ceri' },
  'つ': { eng: [/\btwo\b/gi], ind: 'Topi/Tusuk' },
  'て': { eng: [/\btaylor(s)?\b/gi, /\btailor(s)?\b/gi], ind: 'Teko/Tenda' },
  'と': { eng: [/\btoe(s)?\b/gi], ind: 'Toko/Tomat' },
  'な': { eng: [/\bnana\b/gi], ind: 'Nasi/Naga' },
  'ni': { eng: [/\bknee(s)?\b/gi], ind: 'Nila/Nikel' },
  'に': { eng: [/\bknee(s)?\b/gi], ind: 'Nila/Nikel' },
  'ぬ': { eng: [/\bnoodle(s)?\b/gi], ind: 'Nuri' },
  'ね': { eng: [/\bnet(s)?\b/gi], ind: 'Nenek' },
  'の': { eng: [/\bnose(s)?\b/gi], ind: 'Noda' },
  'ha': { eng: [/\bhard\b/gi, /\bharp(s)?\b/gi], ind: 'Hari/Harimau' },
  'は': { eng: [/\bhard\b/gi, /\bharp(s)?\b/gi], ind: 'Hari/Harimau' },
  'ひ': { eng: [/\bhe\b/gi, /\bhim\b/gi, /\bhis\b/gi], ind: 'Hidung/Hijau' },
  'ふ': { eng: [/\bfool(s)?\b/gi, /\bbooth(s)?\b/gi], ind: 'Feri/Foto' },
  'へ': { eng: [/\bhair(s)?\b/gi], ind: 'Helm' },
  'ho': { eng: [/\bhome(s)?\b/gi, /\bhoe(s)?\b/gi], ind: 'Hotel/Hormon' },
  'ほ': { eng: [/\bhome(s)?\b/gi, /\bhoe(s)?\b/gi], ind: 'Hotel/Hormon' },
  'ま': { eng: [/\bmom(s)?\b/gi, /\bmouth(s)?\b/gi], ind: 'Mawar/Madu' },
  'mi': { eng: [/\bme\b/gi, /\bmy\b/gi], ind: 'Minyak/Mimi' },
  'み': { eng: [/\bme\b/gi, /\bmy\b/gi], ind: 'Minyak/Mimi' },
  'む': { eng: [/\bmoo\b/gi], ind: 'Mulut/Muka' },
  'め': { eng: [/\bmail(s)?\b/gi], ind: 'Meja/Merak' },
  'も': { eng: [/\bmoe\b/gi, /\bmower(s)?\b/gi], ind: 'Motor/Mobil' },
  'ya': { eng: [/\byak(s)?\b/gi], ind: 'Yoyo' },
  'や': { eng: [/\byak(s)?\b/gi], ind: 'Yoyo' },
  'ゆ': { eng: [/\byou\b/gi, /\byour\b/gi], ind: 'Yuda' },
  'よ': { eng: [/\byoyo(s)?\b/gi], ind: 'Yoga' },
  'ら': { eng: [/\bram(s)?\b/gi], ind: 'Raja' },
  'り': { eng: [/\breaper(s)?\b/gi, /\bring(s)?\b/gi], ind: 'Riam/Ribu' },
  'る': { eng: [/\broot(s)?\b/gi], ind: 'Rusa' },
  'れ': { eng: [/\bray(s)?\b/gi], ind: 'Reog' },
  'ろ': { eng: [/\brow(s)?\b/gi], ind: 'Roti/Roda' },
  'わ': { eng: [/\bwasp(s)?\b/gi, /\bwater(s)?\b/gi], ind: 'Wajan' },
  
  // Compounds & Double Vowels
  'こう': { eng: [/\bkoichi\b/gi, /\bcoal(s)?\b/gi, /\bco-creator(s)?\b/gi, /\bco\b/gi], ind: 'Koko/Koki' },
  'しょう': { eng: [/\bshogun(s)?\b/gi, /\bshow(s)?\b/gi], ind: 'Sopir/Soto' },
  'じょう': { eng: [/\bjourney(s)?\b/gi, /\bjoe\b/gi, /\bjourm\b/gi], ind: 'Joni/Jenderal' },
  'せい': { eng: [/\bsaber(s)?\b/gi, /\bsay(s)?\b/gi], ind: 'Setan/Sapi' },
  'けい': { eng: [/\bkayak(s)?\b/gi, /\bk-on\b/gi], ind: 'Kakek/Keju' },
  'しん': { eng: [/\bshin\b/gi, /\bshin-chan\b/gi, /\bsinga\b/gi], ind: 'Shin-chan/Singa' },
  'かん': { eng: [/\bcan\b/gi, /\bcondom(s)?\b/gi, /\bcannes\b/gi], ind: 'Kancil/Kantor' },
  'ちょう': { eng: [/\bchou\b/gi, /\bmrs\. chou\b/gi, /\bcho\b/gi, /\bchao\b/gi], ind: 'Cokelat/Corong' },
  'とう': { eng: [/\btoe(s)?\b/gi, /\btoll(s)?\b/gi, /\btow\b/gi], ind: 'Topi/Toko' },
  'sen': { eng: [/\bcent(s)?\b/gi, /\bsend(s)?\b/gi, /\bpenny\b/gi], ind: 'Senter/Semen' },
  'せん': { eng: [/\bcent(s)?\b/gi, /\bsend(s)?\b/gi, /\bpenny\b/gi], ind: 'Senter/Semen' },
  'en': { eng: [/\byen(s)?\b/gi, /\bend(s)?\b/gi, /\benter(s)?\b/gi], ind: 'Ember/Yen' },
  'えん': { eng: [/\byen(s)?\b/gi, /\bend(s)?\b/gi, /\benter(s)?\b/gi], ind: 'Ember/Yen' },
  'じ': { eng: [/\bjesus\b/gi, /\bgee\b/gi], ind: 'Juri/Jalan' },
  'がく': { eng: [/\bgackt\b/gi], ind: 'Gajah/Gagang' },
  'sha': { eng: [/\bshaman(s)?\b/gi, /\bshack(s)?\b/gi], ind: 'Sapi/Sampo' },
  'しゃ': { eng: [/\bshaman(s)?\b/gi, /\bshack(s)?\b/gi], ind: 'Sapi/Sampo' },
  'den': { eng: [/\bdentist(s)?\b/gi, /\bden\b/gi], ind: 'Dendeng/Denda' },
  'でん': { eng: [/\bdentist(s)?\b/gi, /\bden\b/gi], ind: 'Dendeng/Denda' },
  'きゅう': { eng: [/\bcute\b/gi, /\bcucumber(s)?\b/gi], ind: 'Kura-kura' },
  'りょう': { eng: [/\browing\b/gi], ind: 'Roti' },
  'ぎょう': { eng: [/\browing\b/gi], ind: 'Gajah' },
  'みょう': { eng: [/\bmew\b/gi], ind: 'Kucing' },
  
  // Specific N5/N4 mappings
  'もく': { eng: [/\bmock(s)?\b/gi, /\bmocked\b/gi, /\bmocking\b/gi], ind: 'Mangkuk/Muka' },
  'まい': { eng: [/\bmy\b/gi], ind: 'Maimun/Mainan' },
  'いん': { eng: [/\binn(s)?\b/gi, /\binside\b/gi], ind: 'Indah/Intan' },
  'ちゅう': { eng: [/\bchew(s)?\b/gi], ind: 'Cumi/Cubit' },
  'つう': { eng: [/\btwo\b/gi], ind: 'Tusuk/Tuli' },
  'ほん': { eng: [/\bhome\b/gi, /\bphone(s)?\b/gi], ind: 'Pohon/Pondok' },
  'ふう': { eng: [/\bfoo\b/gi, /\bwho\b/gi], ind: 'Puyuh/Fosil' },
  'てい': { eng: [/\btaylor(s)?\b/gi, /\btailor(s)?\b/gi, /\btable(s)?\b/gi], ind: 'Teh/Teko' },
  'はく': { eng: [/\bhack(s)?\b/gi, /\bhacked\b/gi], ind: 'Hakim/Handuk' },
  'てk': { eng: [/\btech\b/gi], ind: 'Teko/Tekko' },
  'てき': { eng: [/\btech\b/gi], ind: 'Teko/Tekko' },
  'さく': { eng: [/\bsack(s)?\b/gi], ind: 'Saku/Saksi' },
  'たい': { eng: [/\btie(s)?\b/gi, /\bthigh(s)?\b/gi], ind: 'Tali/Tari' },
  'らく': { eng: [/\brack(s)?\b/gi], ind: 'Rak/Rakyat' },
  'こく': { eng: [/\bcoke\b/gi], ind: 'Koko/Koki' },
  'そく': { eng: [/\bsoap(s)?\b/gi], ind: 'Soto/Sosis' },
  'ふく': { eng: [/\bbook(s)?\b/gi], ind: 'Fosil/Foto' },
  'かい': { eng: [/\bcoyote\b/gi, /\bkite(s)?\b/gi], ind: 'Kail/Kain' },
  'きん': { eng: [/\bking(s)?\b/gi], ind: 'Kincir/Kendi' },
  'ぎょ': { eng: [/\bgearguy\b/gi], ind: 'Gigi/Giyono' },
  'ぶつ': { eng: [/\bboots\b/gi], ind: 'Buku/Butir' },
  'しゅう': { eng: [/\bshoe(s)?\b/gi], ind: 'Susu/Sumpit' },
  'らい': { eng: [/\brye\b/gi], ind: 'Rantai/Raja' },
  'ねn': { eng: [/\bnanny\b/gi], ind: 'Nenek/Nanas' },
  'ねん': { eng: [/\bnanny\b/gi], ind: 'Nenek/Nanas' },
  'にん': { eng: [/\bninja(s)?\b/gi], ind: 'Ninja/Nasi' },
  'あん': { eng: [/\bann\b/gi], ind: 'Angsa/Anak' },
  'ひゃく': { eng: [/\bhike\b/gi, /\bhiked\b/gi], ind: 'Hidung/Hijau' },
  'せつ': { eng: [/\bsex\b/gi], ind: 'Setan/Senter' },
  'りょく': { eng: [/\bricky\b/gi], ind: 'Roti/Roda' },
  'げん': { eng: [/\bgenie(s)?\b/gi], ind: 'Gendang/Genta' },
  'が': { eng: [/\bguy(s)?\b/gi], ind: 'Gajah/Gagang' },
  'はつ': { eng: [/\bhat(s)?\b/gi], ind: 'Hari/Harta' },
  'しょく': { eng: [/\bshock(s)?\b/gi], ind: 'Soto/Sosis' },
  'がん': { eng: [/\bgun(s)?\b/gi], ind: 'Gandum/Genta' },
  'どう': { eng: [/\bdough\b/gi], ind: 'Domba/Topi' },
  'しゅ': { eng: [/\bshoe(s)?\b/gi], ind: 'Susu/Sumpit' },
  'ぶ': { eng: [/\bboo\b/gi], ind: 'Buku/Burung' },
  'べん': { eng: [/\bben\b/gi], ind: 'Bendi/Bensin' },
  'ぎゅう': { eng: [/\bguy\b/gi], ind: 'Gajah' },
  'どく': { eng: [/\bduck(s)?\b/gi], ind: 'Dokter/Domba' },
  'り': { eng: [/\breaper(s)?\b/gi], ind: 'Riam/Ribu' },
  'めい': { eng: [/\bmay\b/gi], ind: 'Meja/Merak' },
  'じょ': { eng: [/\bjoe\b/gi], ind: 'Joni/Jenderal' },
  'sha': { eng: [/\bshack(s)?\b/gi], ind: 'Sapi/Sampo' },
  'しゃく': { eng: [/\bshack(s)?\b/gi], ind: 'Sapi/Sampo' },
  'gin': { eng: [/\bgin\b/gi], ind: 'Gasing/Gigi' },
  'ぎん': { eng: [/\bgin\b/gi], ind: 'Gasing/Gigi' },
  'きょう': { eng: [/\bkyoto\b/gi], ind: 'Kipas/Kikir' },
  'こん': { eng: [/\bcone(s)?\b/gi], ind: 'Kopi/Koki' },
  'おん': { eng: [/\bon\b/gi], ind: 'Onta/Obor' },
  'ゆう': { eng: [/\byou\b/gi], ind: 'Yuda' },
  'りき': { eng: [/\bricky\b/gi], ind: 'Roti/Roda' },
  'もん': { eng: [/\bmoat(s)?\b/gi, /\bmonster(s)?\b/gi], ind: 'Motor/Mobil' },
  'にゅう': { eng: [/\bnew\b/gi], ind: 'Nila/Nikel' },
  'とく': { eng: [/\btalk(s)?\b/gi], ind: 'Toko/Tomat' },
  'しょ': { eng: [/\bshow(s)?\b/gi], ind: 'Sopir/Soto' },
  'ちゃく': { eng: [/\bchalk\b/gi], ind: 'Ceri/Cili' },
  'hin': { eng: [/\bhint(s)?\b/gi], ind: 'Hidung/Hijau' },
  'ひん': { eng: [/\bhint(s)?\b/gi], ind: 'Hidung/Hijau' },
  'kak': { eng: [/\bcock(s)?\b/gi], ind: 'Kaki/Kaca' },
  'かく': { eng: [/\bcock(s)?\b/gi], ind: 'Kaki/Kaca' },
  'けん': { eng: [/\bken\b/gi], ind: 'Kendi/Kencir' },
  'しつ': { eng: [/\bsheet(s)?\b/gi], ind: 'Silet/Singa' },
  'さい': { eng: [/\bsigh\b/gi], ind: 'Sapi/Sate' },
  'ほう': { eng: [/\bhome\b/gi], ind: 'Hotel/Hormon' },
  'だい': { eng: [/\bdye\b/gi], ind: 'Dadu/Dahi' },
  'あく': { eng: [/\bacne\b/gi], ind: 'Aku/Aki' },
  'よう': { eng: [/\byoyo(s)?\b/gi], ind: 'Yoga' },
  'えい': { eng: [/\bacorn(s)?\b/gi], ind: 'Ember/Elang' },
  'ぶん': { eng: [/\bbun(s)?\b/gi], ind: 'Bunga/Buku' },
  'ろく': { eng: [/\brogue\b/gi], ind: 'Roti/Roda' },
  'りつ': { eng: [/\britz\b/gi], ind: 'Rusa/Raja' },
  'ぜん': { eng: [/\bzen\b/gi], ind: 'Semen/Senter' },
  'はん': { eng: [/\bhan\b/gi], ind: 'Hantu/Handuk' },
  'がい': { eng: [/\bguy\b/gi], ind: 'Gajah/Gagang' },
  'じき': { eng: [/\bjig\b/gi], ind: 'Juri/Jalan' },
  'そう': { eng: [/\bsoul\b/gi], ind: 'Soto/Sosis' },
  'eki': { eng: [/\bdeck(s)?\b/gi], ind: 'Ember/Elang' },
  'えき': { eng: [/\bdeck(s)?\b/gi], ind: 'Ember/Elang' },
  'だん': { eng: [/\bdan\b/gi], ind: 'Dandan/Dapur' },
  'うん': { eng: [/\buncle(s)?\b/gi], ind: 'Unta/Ular' },
  'ぞく': { eng: [/\bsoap(s)?\b/gi], ind: 'Soto/Sosis' },
  'りゅう': { eng: [/\bring(s)?\b/gi], ind: 'Rusa/Roda' },
  'くう': { eng: [/\bcoop\b/gi], ind: 'Kuku/Kupu-kupu' },
  'びょう': { eng: [/\bbeauty\b/gi], ind: 'Burung/Buku' },
  'ばい': { eng: [/\bbuy\b/gi], ind: 'Babi/Bayam' },
  'べつ': { eng: [/\bbed(s)?\b/gi], ind: 'Bebek/Besi' },
};

const CUSTOM_MNEMONICS = {
  '木': {
    reading: 'Untuk membaca kanji 木 (pohon), bayangkan di setiap pohon ada **Muka** (もく) raksasa yang menatap Anda!'
  },
  '百': {
    reading: 'Untuk membaca kanji 百 (ratus), bayangkan ada seratus orang yang memiliki **Hidung** (ひゃく) yang sangat panjang!'
  },
  '才': {
    reading: 'Anak berumur sepuluh tahun ini memiliki bakat menggambar **Sapi** (さい) yang sangat indah!'
  },
  '再': {
    reading: 'Anda harus memotong **Sapi** (さい) ini lagi dan lagi untuk pesta pernikahan.'
  },
  '売': {
    reading: 'Dia menjual **Babi** (ばい) di pasar tradisional.'
  },
  '買': {
    reading: 'Anda membeli **Babi** (ばい) peliharaan yang lucu.'
  },
  '倍': {
    reading: 'Jumlah **Babi** (ばい) di peternakan ini berlipat ganda dalam setahun.'
  },
  '走': {
    reading: 'Anda berlari kencang demi mengejar penjual **Soto** (そう) yang lewat!'
  },
  '早': {
    reading: 'Anda harus bangun pagi-pagi sekali untuk makan semangkuk **Soto** (sou) hangat.'
  },
  '草': {
    reading: 'Kambing-kambing ini tidak memakan rumput, melainkan memakan **Soto** (そう)!'
  },
  '送': {
    reading: 'Anda mengirim semangkuk **Soto** (そう) hangat lewat paket ekspres.'
  },
  '想': {
    reading: 'Anda terus memikirkan kenikmatan semangkuk **Soto** (そう) hangat yang kemarin Anda makan.'
  },
  '窓': {
    reading: 'Anda melemparkan mangkuk **Soto** (そう) keluar jendela karena rasanya hambar.'
  }
};

function adaptReadingMnemonic(text, reading) {
  if (!text) return '';
  
  // Strip reading tags temporarily to allow word matches
  let adapted = text.replace(/<reading>/gi, '').replace(/<\/reading>/gi, '');
  
  const r = reading ? reading.toLowerCase().trim() : '';
  const punInfo = PUN_MAP[r];
  
  if (punInfo) {
    punInfo.eng.forEach(regex => {
      adapted = adapted.replace(regex, `<reading>**${punInfo.ind}**</reading>`);
    });
  }
  
  return adapted;
}

// Generate smart fallbacks
async function generateFallbackMnemonic(item) {
  // Get meaning
  const { data: meanings } = await supabase
    .from('item_meanings')
    .select('meaning')
    .eq('item_id', item.id)
    .order('primary_meaning', { ascending: false });

  const meaningStr = meanings && meanings.length > 0 ? meanings[0].meaning : item.slug || item.character;

  if (item.type === 'radical') {
    return {
      meaning_mnemonic: `Radikal ini disebut "${meaningStr}". Perhatikan bentuk karakter "${item.character}" dan asosiasikan bentuk goresannya dengan "${meaningStr.toLowerCase()}".`,
      reading_mnemonic: 'Radikal tidak memiliki cara baca mandiri.'
    };
  }

  // Get reading
  const { data: readings } = await supabase
    .from('item_readings')
    .select('reading, reading_type, primary_reading')
    .eq('item_id', item.id);

  let primaryReading = '';
  let readingType = '';
  if (readings && readings.length > 0) {
    const pr = readings.find(r => r.primary_reading) || readings[0];
    primaryReading = pr.reading;
    readingType = pr.reading_type === 'onyomi' ? 'on-yomi' : pr.reading_type === 'kunyomi' ? 'kun-yomi' : 'cara baca';
  }

  if (item.type === 'kanji') {
    // Get components
    const { data: kr } = await supabase
      .from('kanji_radicals')
      .select('radical_id, items!kanji_radicals_radical_id_fkey(character, item_meanings(meaning))')
      .eq('kanji_id', item.id);

    const radNames = kr && kr.length > 0
      ? kr.map(x => {
          if (!x.items) return null;
          const m = x.items.item_meanings && x.items.item_meanings.length > 0 ? x.items.item_meanings[0].meaning : x.items.character;
          return m;
        }).filter(Boolean).join(' dan ')
      : null;

    const meaning_mnemonic = radNames
      ? `Kanji ${item.character} berarti "${meaningStr}". Dibentuk oleh radikal ${radNames}, bayangkan komponen-komponen ini bergabung membentuk makna ${meaningStr.toLowerCase()}.`
      : `Kanji ${item.character} berarti "${meaningStr}". Perhatikan bentuk karakter ini dan hubungkan langsung dengan makna ${meaningStr.toLowerCase()}.`;

    let reading_mnemonic = '';
    if (primaryReading) {
      const punInfo = PUN_MAP[primaryReading.toLowerCase()];
      if (punInfo) {
        reading_mnemonic = `Untuk membaca kanji ${item.character}, ingat bunyi "${primaryReading}" (${readingType}). Ingatlah kata **${punInfo.ind}** untuk membantu ingatan Anda!`;
      } else {
        reading_mnemonic = `Untuk membaca kanji ${item.character}, ingat bunyi utama cara bacanya: "${primaryReading}" (${readingType}).`;
      }
    }

    return { meaning_mnemonic, reading_mnemonic };
  }

  if (item.type === 'vocabulary') {
    const meaning_mnemonic = `Kosakata "${item.character}" memiliki arti "${meaningStr}". Kombinasi kanji dalam kata ini melambangkan konsep ${meaningStr.toLowerCase()}.`;
    let reading_mnemonic = '';
    if (primaryReading) {
      reading_mnemonic = `Cara membaca kosakata "${item.character}" adalah "${primaryReading}".`;
    }
    return { meaning_mnemonic, reading_mnemonic };
  }

  return { meaning_mnemonic: '', reading_mnemonic: '' };
}

async function run() {
  console.log('Fetching N5 & N4 items from Supabase...');
  // N5 & N4 Rank IDs
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
      .select('id, type, character, slug, rank_id')
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

  console.log(`Found ${dbItems.length} N5 & N4 items in DB.`);

  console.log('Fetching WaniKani subjects data...');
  const res = await fetch('https://raw.githubusercontent.com/mlegls/wanikani-shufa/master/subjects.json');
  const wkSubjects = await res.json();
  console.log(`Loaded ${wkSubjects.length} WaniKani subjects.`);

  // Index WK subjects
  const wkMap = {};
  wkSubjects.forEach(subject => {
    const type = subject.object;
    const char = subject.data.characters || subject.data.slug;
    if (char) {
      wkMap[`${type}:${char}`] = subject;
    }
  });

  let matched = 0;
  let unmatched = 0;
  let updatedCount = 0;

  const chunkSize = 15;
  for (let i = 0; i < dbItems.length; i += chunkSize) {
    const chunk = dbItems.slice(i, i + chunkSize);
    
    await Promise.all(chunk.map(async (item) => {
      let wkType = item.type;
      let wkItem = wkMap[`${wkType}:${item.character}`];
      
      if (!wkItem && item.type === 'radical' && item.slug) {
        wkItem = wkSubjects.find(s => s.object === 'radical' && s.data.slug.toLowerCase() === item.slug.toLowerCase());
      }

      let meaningMnem = '';
      let readingMnem = '';

      if (wkItem) {
        matched++;
        const meaningMnemEng = wkItem.data.meaning_mnemonic;
        const readingMnemEng = wkItem.data.reading_mnemonic || '';

        // Get primary reading to apply pun replacement on English first
        let primaryReading = '';
        if (wkItem.object === 'kanji' && wkItem.data.readings) {
          const pr = wkItem.data.readings.find(r => r.primary);
          if (pr) primaryReading = pr.reading;
        } else if (wkItem.object === 'vocabulary' && wkItem.data.readings) {
          const pr = wkItem.data.readings.find(r => r.primary);
          if (pr) primaryReading = pr.reading;
        }

        const adaptedReadingEng = readingMnemEng ? adaptReadingMnemonic(readingMnemEng, primaryReading) : '';

        // Translate adapted English
        const [mInd, rInd] = await Promise.all([
          translateText(meaningMnemEng),
          adaptedReadingEng ? translateText(adaptedReadingEng) : Promise.resolve('')
        ]);

        meaningMnem = mInd;
        
        if (readingMnemEng) {
          readingMnem = rInd;
        } else if (item.type === 'radical') {
          readingMnem = 'Radikal tidak memiliki cara baca mandiri.';
        }
      } else {
        unmatched++;
        const fallback = await generateFallbackMnemonic(item);
        meaningMnem = fallback.meaning_mnemonic;
        readingMnem = fallback.reading_mnemonic;
      }

      // Apply custom overrides if any
      if (CUSTOM_MNEMONICS[item.character]) {
        if (CUSTOM_MNEMONICS[item.character].meaning) {
          meaningMnem = CUSTOM_MNEMONICS[item.character].meaning;
        }
        if (CUSTOM_MNEMONICS[item.character].reading) {
          readingMnem = CUSTOM_MNEMONICS[item.character].reading;
        }
      }

      // Update in Supabase
      const { error: updateErr } = await supabase
        .from('items')
        .update({
          meaning_mnemonic: meaningMnem || null,
          reading_mnemonic: item.type !== 'radical' ? (readingMnem || null) : 'Radikal tidak memiliki cara baca mandiri.'
        })
        .eq('id', item.id);

      if (updateErr) {
        console.error(`Failed to update ${item.character}:`, updateErr.message);
      } else {
        updatedCount++;
      }
    }));

    console.log(`Processed ${Math.min(i + chunkSize, dbItems.length)} / ${dbItems.length} items (Matched: ${matched}, Unmatched: ${unmatched}, Updated: ${updatedCount})...`);
    saveCache();
  }

  console.log('\n✅ Database update completed successfully!');
  console.log(`Summary: Matched: ${matched}, Unmatched: ${unmatched}, Updated: ${updatedCount}`);
}

run().catch(console.error);
