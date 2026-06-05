const { createClient } = require('@supabase/supabase-js');
const fs = require('fs');
const path = require('path');
const crypto = require('crypto');

// Rank IDs and their sort order for N3
const rankIds = [
  '3a2f8b5c-6d7e-4f9a-0b1c-2d3e4f5a6b7c', // N3 - Pangkat 1 (sort_order: 10)
  '4b3c9d6e-7f8a-5b0c-1d2e-3f4a5b6c7d8e', // N3 - Pangkat 2 (sort_order: 11)
  '5c4d0e7f-8a9b-6c1d-2e3f-4a5b6c7d8e9f', // N3 - Pangkat 3 (sort_order: 12)
  '6d5e1f8a-9b0c-7d2e-3f4a-5b6c7d8e9f0a', // N3 - Pangkat 4 (sort_order: 13)
  '7e6f2a9b-0c1d-8e3f-4a5b-6c7d8e9f0a1b', // N3 - Pangkat 5 (sort_order: 14)
  '8f7a3b0c-1d2e-9f4a-5b6c-7d8e9f0a1b2c', // N3 - Pangkat 6 (sort_order: 15)
  '9a8b4c1d-2e3f-0a5b-6c7d-8e9f0a1b2c3d', // N3 - Pangkat 7 (sort_order: 16)
  '0b9c5d2e-3f4a-1b6c-7d8e-9f0a1b2c3d4e', // N3 - Pangkat 8 (sort_order: 17)
  '1c0d6e3f-4a5b-2c7d-8e9f-0a1b2c3d4e5f', // N3 - Pangkat 9 (sort_order: 18)
  '2d1e7f4a-5b6c-3d8e-9f0a-1b2c3d4e5f6a', // N3 - Pangkat 10 (sort_order: 19)
  '3e2f8a5b-6c7d-4e9f-0a1b-2b3c4d5e6f7a', // N3 - Pangkat 11 (sort_order: 20)
  '4f3a9b6c-7d8e-5f0a-1b2c-3d4e5f6a7b8c', // N3 - Pangkat 12 (sort_order: 21)
  '5a4b0c7d-8e9f-6a1b-2c3d-4e5f6a7b8c9d'  // N3 - Pangkat 13 (sort_order: 22)
];

// N5 & N4 Kanjis lists
const n5Kanjis = ["一","人","入","二","十","八","七","九","大","子","上","女","下","小","山","万","川","三","土","千","分","日","中","今","月","水","木","父","友","天","火","五","円","午","六","出","生","本","外","母","白","半","北","四","左","右","行","年","気","先","名","西","毎","休","百","见","見","来","何","男","車","長","国","金","学","東","雨","前","後","食","南","時","高","書","校","間","話","電","聞","語","読"];
const n4Kanjis = [
  '力', '口', '工', '夕', '手', '方', '心', '不', '元', '少', '切', '止', '文', '公', '犬', '牛', '目', '立', '用', '田', '代', '世', '正', '以', '主', '仕', '可', '台',
  '去', '広', '写', '古', '兄', '冬', '会', '自', '同', '地', '死', '考', '安', '多', '早', '有', '色', '字', '肉', '言', '体', '作', '私', '社', '別', '近', '身', '足',
  '売', '住', '医', '花', '赤', '町', '走', '究', '図', '弟', '事', '者', '明', '知', '物', '的', '使', '始', '画', '味', '空', '夜', '店', '歩', '注', '京', '英', '服',
  '青', '姉', '妹', '思', '持', '発', '度', '界', '待', '音', '海', '重', '急', '品', '計', '送', '屋', '映', '室', '風', '建', '研', '春', '秋', '茶', '洋', '昼', '家',
  '通', '員', '真', '帰', '起', '料', '特', '院', '病', '紙', '旅', '夏', '借', '勉', '理', '動', '問', '強', '教', '野', '終', '悪', '族', '転', '週', '黒', '習', '堂', '鳥',
  '魚', '場', '開', '無', '道', '着', '運', '集', '朝', '買', '答', '飲', '飯', '貸', '意', '新', '業', '楽', '試', '漢', '歌', '銀', '駅', '質', '親', '館', '題', '験', '曜'
];

const allKnownKanjis = new Set([...n5Kanjis, ...n4Kanjis]);

// Translation Cache
const cachePath = path.join(__dirname, 'translation_cache.json');
let translationCache = {};
if (fs.existsSync(cachePath)) {
  translationCache = JSON.parse(fs.readFileSync(cachePath, 'utf8'));
}

function saveCache() {
  fs.writeFileSync(cachePath, JSON.stringify(translationCache, null, 2), 'utf8');
}

// Translate API helpers
async function translateIndividual(text) {
  if (!text) return '';
  const cleanText = text.replace(/<[^>]*>/g, '').trim();
  if (!cleanText) return '';
  
  const cacheKey = cleanText.toLowerCase();
  if (translationCache[cacheKey]) {
    return translationCache[cacheKey];
  }
  
  const url = `https://translate.googleapis.com/translate_a/single?client=gtx&sl=en&tl=id&dt=t&q=${encodeURIComponent(cleanText)}`;
  try {
    const res = await fetch(url);
    if (res.status === 200) {
      const data = await res.json();
      const translation = data[0].map(x => x[0]).join('').trim();
      translationCache[cacheKey] = translation;
      return translation;
    } else {
      console.warn(`Translation status ${res.status} for text: ${cleanText}`);
    }
  } catch (err) {
    console.error(`Individual translation error for "${cleanText}":`, err.message);
  }
  return cleanText;
}

async function translateTexts(texts) {
  if (texts.length === 0) return [];
  
  // Resolve from cache first
  const results = [];
  const toTranslate = [];
  const toTranslateIndices = [];
  
  texts.forEach((text, idx) => {
    const cleanText = text.replace(/<[^>]*>/g, '').trim();
    if (!cleanText) {
      results[idx] = '';
      return;
    }
    const cacheKey = cleanText.toLowerCase();
    if (translationCache[cacheKey]) {
      results[idx] = translationCache[cacheKey];
    } else {
      toTranslate.push(cleanText);
      toTranslateIndices.push(idx);
    }
  });
  
  if (toTranslate.length === 0) return results;
  
  // Batch translate
  const separator = ' || ';
  const joined = toTranslate.join(separator);
  const url = `https://translate.googleapis.com/translate_a/single?client=gtx&sl=en&tl=id&dt=t&q=${encodeURIComponent(joined)}`;
  
  let success = false;
  try {
    const res = await fetch(url);
    if (res.status === 200) {
      const data = await res.json();
      const translatedJoined = data[0].map(x => x[0]).join('');
      const parts = translatedJoined.split(/\s*\|\|\s*|\|\|/).map(s => s.trim());
      
      if (parts.length === toTranslate.length) {
        parts.forEach((trans, idx) => {
          const origText = toTranslate[idx];
          translationCache[origText.toLowerCase()] = trans;
          results[toTranslateIndices[idx]] = trans;
        });
        success = true;
      } else {
        console.warn(`Batch size mismatch: sent ${toTranslate.length}, got ${parts.length}.`);
      }
    }
  } catch (err) {
    console.error('Batch translation error, falling back:', err.message);
  }
  
  if (!success) {
    // Fallback to individual
    for (let i = 0; i < toTranslate.length; i++) {
      const origText = toTranslate[i];
      const trans = await translateIndividual(origText);
      results[toTranslateIndices[i]] = trans;
      if (i % 10 === 0) {
        saveCache();
      }
      await new Promise(r => setTimeout(r, 100));
    }
    saveCache();
  }
  
  return results;
}

// DB Credentials loading
function getSupabaseClient() {
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
  return createClient(env.NEXT_PUBLIC_SUPABASE_URL, env.NEXT_PUBLIC_SUPABASE_ANON_KEY);
}

async function run() {
  console.log('Connecting to Supabase to fetch existing database items...');
  const supabase = getSupabaseClient();
  
  const { data: dbItems, error: dbErr } = await supabase
    .from('items')
    .select('character, slug, type');
    
  if (dbErr) {
    throw new Error('Failed to query database items: ' + dbErr.message);
  }
  
  console.log(`Fetched ${dbItems.length} items from database.`);
  const existingRadSet = new Set();
  const existingRadSlugs = new Set();
  const existingKanjis = new Set();
  
  dbItems.forEach(item => {
    if (item.type === 'radical') {
      if (item.character) existingRadSet.add(item.character);
      if (item.slug) existingRadSlugs.add(item.slug.toLowerCase());
    } else if (item.type === 'kanji') {
      existingKanjis.add(item.character);
    }
  });
  
  console.log(`Existing radicals: ${existingRadSet.size} characters, ${existingRadSlugs.size} slugs.`);
  console.log(`Existing kanji: ${existingKanjis.size} characters.`);
  
  console.log('Loading N3 candidates...');
  const n3Matched = JSON.parse(fs.readFileSync(path.join(__dirname, 'n3_matched.json'), 'utf8'));
  const n3Set = new Set(n3Matched.map(k => k.char));
  console.log(`Loaded ${n3Matched.length} N3 kanjis.`);
  
  // All known kanji now includes N5, N4 and N3
  const allKnownKanjisWithN3 = new Set([...allKnownKanjis, ...n3Set]);
  
  console.log('Fetching subjects.json from GitHub...');
  const res = await fetch('https://raw.githubusercontent.com/mlegls/wanikani-shufa/master/subjects.json');
  const subjects = await res.json();
  console.log(`Loaded ${subjects.length} subjects from GitHub.`);
  
  const radicalMap = {};
  const kanjiMap = {};
  const allVocabs = [];
  const subjectById = {};
  
  subjects.forEach(item => {
    subjectById[item.id] = item;
    const data = item.data;
    if (item.object === 'radical') {
      radicalMap[item.id] = item;
    } else if (item.object === 'kanji') {
      kanjiMap[data.characters] = item;
    } else if (item.object === 'vocabulary') {
      allVocabs.push(item);
    }
  });
  
  // 1. Group N3 Kanji into 13 pangkat (max 30 per pangkat)
  // n3Matched is already sorted by wk_level ascending.
  // We allocate them to pangkat 0 to 12
  const pangkatSizes = [28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 29, 29, 29];
  let kanjiCounter = 0;
  
  const kanjisByRank = Array.from({ length: 13 }, () => []);
  const kanjiToRankIdx = {};
  
  pangkatSizes.forEach((size, rankIdx) => {
    for (let i = 0; i < size; i++) {
      if (kanjiCounter < n3Matched.length) {
        const k = n3Matched[kanjiCounter];
        kanjisByRank[rankIdx].push(k);
        kanjiToRankIdx[k.char] = rankIdx;
        kanjiCounter++;
      }
    }
  });
  
  console.log('Kanjis grouped into 13 pangkat.');
  kanjisByRank.forEach((list, idx) => {
    console.log(`Rank ${idx + 1}: ${list.length} kanjis. Level range: ${list[0].wk_level} to ${list[list.length - 1].wk_level}`);
  });
  
  // 2. Identify new radicals needed and group them to their first needed rank
  const radicalsByRank = Array.from({ length: 13 }, () => []);
  const addedRadicalIds = new Set();
  
  n3Matched.forEach(k => {
    const rankIdx = kanjiToRankIdx[k.char];
    const compIds = k.component_radicals || [];
    compIds.forEach(radId => {
      if (addedRadicalIds.has(radId)) return;
      
      const rad = radicalMap[radId];
      if (!rad) return;
      
      const char = rad.data.characters;
      const slug = rad.data.slug;
      
      // Check if it already exists in the database
      const exists = (char && existingRadSet.has(char)) || existingRadSlugs.has(slug.toLowerCase());
      if (exists) return;
      
      // It's a new radical! Find the first rank where it is needed
      const neededRanks = n3Matched
        .filter(kan => {
          const wkK = kanjiMap[kan.char];
          return wkK && wkK.data.component_subject_ids.includes(radId);
        })
        .map(kan => kanjiToRankIdx[kan.char]);
      
      const firstNeededRank = Math.min(...neededRanks);
      
      radicalsByRank[firstNeededRank].push({
        id: radId,
        character: char || `[${slug}]`,
        slug: slug,
        meanings: rad.data.meanings,
        meaning_mnemonic: rad.data.meaning_mnemonic
      });
      
      addedRadicalIds.add(radId);
    });
  });
  
  const totalNewRadicals = radicalsByRank.reduce((sum, r) => sum + r.length, 0);
  console.log(`Found ${totalNewRadicals} new radicals to seed.`);
  
  // 3. Filter and assign eligible vocabularies
  const vocabsByRank = Array.from({ length: 13 }, () => []);
  let vocabCount = 0;
  
  allVocabs.forEach(v => {
    const chars = v.data.characters;
    let isEligible = true;
    let hasN3Kanji = false;
    let maxRankIdx = -1;
    const kanjiInVocab = [];
    
    for (let c of chars) {
      const code = c.charCodeAt(0);
      const isKanji = (code >= 0x4e00 && code <= 0x9faf);
      if (isKanji) {
        if (!allKnownKanjisWithN3.has(c)) {
          isEligible = false;
          break;
        }
        if (n3Set.has(c)) {
          hasN3Kanji = true;
          maxRankIdx = Math.max(maxRankIdx, kanjiToRankIdx[c]);
        }
        kanjiInVocab.push(c);
      }
    }
    
    if (isEligible && hasN3Kanji && maxRankIdx >= 0) {
      vocabsByRank[maxRankIdx].push({
        character: chars,
        slug: v.data.slug,
        meanings: v.data.meanings,
        readings: v.data.readings,
        meaning_mnemonic: v.data.meaning_mnemonic,
        reading_mnemonic: v.data.reading_mnemonic,
        sentences: v.data.context_sentences || [],
        kanjiInVocab: kanjiInVocab
      });
      vocabCount++;
    }
  });
  
  console.log(`Eligible vocabularies count: ${vocabCount}`);
  vocabsByRank.forEach((list, idx) => {
    console.log(`Rank ${idx + 1}: ${list.length} vocabularies.`);
  });
  
  // 4. Translate everything to Indonesian!
  console.log('Starting translation to Indonesian. Preparing translation queues...');
  
  const translationQueue = [];
  
  function queue(str) {
    if (!str) return () => '';
    const cleanStr = str.replace(/<[^>]*>/g, '').trim();
    if (!cleanStr) return () => '';
    
    const idx = translationQueue.length;
    translationQueue.push(cleanStr);
    return (translations) => translations[idx] || cleanStr;
  }
  
  // Queue all items
  for (let rankIdx = 0; rankIdx < 13; rankIdx++) {
    radicalsByRank[rankIdx].forEach(r => {
      r.meaningGet = queue(r.meanings[0].meaning);
      r.mnemonicGet = queue(r.meaning_mnemonic);
    });
    
    kanjisByRank[rankIdx].forEach(k => {
      k.meaningGet = queue(k.meanings[0].meaning);
      k.mnemonicGet = queue(k.meaning_mnemonic);
      k.readingMnemonicGet = queue(k.reading_mnemonic);
    });
    
    vocabsByRank[rankIdx].forEach(v => {
      v.meaningGet = queue(v.meanings[0].meaning);
      v.mnemonicGet = queue(v.meaning_mnemonic);
      v.sentences.forEach(s => {
        s.indonesianGet = queue(s.en);
      });
    });
  }
  
  console.log(`Total items in translation queue: ${translationQueue.length}`);
  
  // Translate in batches
  const batchSize = 35;
  const translations = [];
  
  for (let i = 0; i < translationQueue.length; i += batchSize) {
    const chunk = translationQueue.slice(i, i + batchSize);
    console.log(`Translating batch ${Math.floor(i / batchSize) + 1}/${Math.ceil(translationQueue.length / batchSize)} (${chunk.length} items)...`);
    const transChunk = await translateTexts(chunk);
    translations.push(...transChunk);
    
    // Periodically save cache
    if (Math.floor(i / batchSize) % 5 === 0) {
      saveCache();
    }
  }
  saveCache();
  console.log('Translation completed successfully.');
  
  // Apply translations back
  for (let rankIdx = 0; rankIdx < 13; rankIdx++) {
    radicalsByRank[rankIdx].forEach(r => {
      r.indonesianMeaning = r.meaningGet(translations);
      r.indonesianMnemonic = r.mnemonicGet(translations);
    });
    
    kanjisByRank[rankIdx].forEach(k => {
      k.indonesianMeaning = k.meaningGet(translations);
      k.indonesianMnemonic = k.mnemonicGet(translations);
      k.indonesianReadingMnemonic = k.readingMnemonicGet(translations);
    });
    
    vocabsByRank[rankIdx].forEach(v => {
      v.indonesianMeaning = v.meaningGet(translations);
      v.indonesianMnemonic = v.mnemonicGet(translations);
      v.sentences.forEach(s => {
        s.indonesian = s.indonesianGet(translations);
      });
    });
  }
  
  // 5. Generate seed_n3.sql
  console.log('Generating seed_n3.sql content...');
  let sql = `-- ============================================================
-- KaniGani Seed Data: JLPT N3 Levels (Pangkat 1 s.d. 13)
-- Generated automatically with translated Indonesian content
-- ============================================================

-- 1. Clean up existing ranks and items for N3
`;

  // Delete statements for items and ranks
  sql += `DELETE FROM public.items WHERE rank_id IN (${rankIds.map(id => `'${id}'`).join(', ')});\n`;
  sql += `DELETE FROM public.ranks WHERE jlpt_level = 'N3';\n\n`;

  // Insert ranks
  sql += `-- 2. Insert Ranks N3\n`;
  sql += `INSERT INTO public.ranks (id, name, jlpt_level, sort_order, exp_required) VALUES\n`;
  rankIds.forEach((rankId, idx) => {
    const comma = idx === 12 ? ';' : ',';
    sql += `  ('${rankId}', 'N3 - Pangkat ${idx + 1}', 'N3', ${10 + idx}, 1000)${comma}\n`;
  });
  sql += `\n`;

  // Process Pangkat by Pangkat
  const radicalUUIDMap = {};
  const kanjiUUIDMap = {};
  
  // We need to keep a map of radical character/slug to UUID so we can link them
  // Pre-generate UUIDs for all new radicals and kanjis
  for (let rankIdx = 0; rankIdx < 13; rankIdx++) {
    radicalsByRank[rankIdx].forEach(r => {
      const u = crypto.randomUUID();
      r.uuid = u;
      radicalUUIDMap[r.slug.toLowerCase()] = u;
      if (r.character) radicalUUIDMap[r.character] = u;
    });
    kanjisByRank[rankIdx].forEach(k => {
      const u = crypto.randomUUID();
      k.uuid = u;
      kanjiUUIDMap[k.char] = u;
    });
  }

  for (let rankIdx = 0; rankIdx < 13; rankIdx++) {
    const rankId = rankIds[rankIdx];
    const rankName = `N3 - Pangkat ${rankIdx + 1}`;
    
    sql += `-- ==========================================
-- ${rankName}
-- ==========================================\n\n`;

    // A. Radicals
    const rankRadicals = radicalsByRank[rankIdx];
    if (rankRadicals.length > 0) {
      sql += `-- Radicals for ${rankName}\n`;
      rankRadicals.forEach(r => {
        const charStr = r.character.replace(/'/g, "''");
        const slugStr = r.slug.replace(/'/g, "''");
        const meaningStr = r.indonesianMeaning.replace(/'/g, "''");
        const descStr = r.indonesianMnemonic.replace(/'/g, "''");
        
        sql += `INSERT INTO public.items (id, type, character, slug, level, rank_id, description) VALUES ('${r.uuid}', 'radical', '${charStr}', '${slugStr}', 3, '${rankId}', '${descStr}') ON CONFLICT (id) DO NOTHING;\n`;
        sql += `INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('${r.uuid}', '${meaningStr}', true) ON CONFLICT DO NOTHING;\n`;
      });
      sql += `\n`;
    }

    // B. Kanjis
    const rankKanjis = kanjisByRank[rankIdx];
    sql += `-- Kanjis for ${rankName}\n`;
    rankKanjis.forEach(k => {
      const charStr = k.char;
      const slugStr = k.char; // slug for kanji is character itself in db
      const meaningStr = k.indonesianMeaning.replace(/'/g, "''");
      const meaningMnemonicStr = k.indonesianMnemonic.replace(/'/g, "''");
      const readingMnemonicStr = k.indonesianReadingMnemonic.replace(/'/g, "''");
      
      sql += `INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, reading_mnemonic) VALUES ('${k.uuid}', 'kanji', '${charStr}', '${slugStr}', 3, '${rankId}', '${meaningMnemonicStr}', '${readingMnemonicStr}') ON CONFLICT (id) DO NOTHING;\n`;
      sql += `INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('${k.uuid}', '${meaningStr}', true) ON CONFLICT DO NOTHING;\n`;
      
      // Secondary meanings
      k.meanings.slice(1).forEach(m => {
        const secMeaning = m.meaning.replace(/'/g, "''");
        sql += `INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('${k.uuid}', '${secMeaning}', false) ON CONFLICT DO NOTHING;\n`;
      });
      
      // Readings
      k.readings.forEach(r => {
        const typeStr = r.type ? `'${r.type}'` : 'NULL';
        sql += `INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('${k.uuid}', '${r.reading}', ${typeStr}, ${r.primary}) ON CONFLICT DO NOTHING;\n`;
      });
    });
    sql += `\n`;

    // C. Vocabularies
    const rankVocabs = vocabsByRank[rankIdx];
    if (rankVocabs.length > 0) {
      sql += `-- Vocabularies for ${rankName}\n`;
      rankVocabs.forEach(v => {
        const uuid = crypto.randomUUID();
        v.uuid = uuid;
        
        const charStr = v.character.replace(/'/g, "''");
        const slugStr = v.slug.replace(/'/g, "''");
        const meaningStr = v.indonesianMeaning.replace(/'/g, "''");
        const descStr = v.indonesianMnemonic.replace(/'/g, "''");
        
        sql += `INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('${uuid}', 'vocabulary', '${charStr}', '${slugStr}', 3, '${rankId}', '${descStr}', '${descStr}') ON CONFLICT (id) DO NOTHING;\n`;
        sql += `INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('${uuid}', '${meaningStr}', true) ON CONFLICT DO NOTHING;\n`;
        
        // Secondary meanings
        v.meanings.slice(1).forEach(m => {
          const secMeaning = m.meaning.replace(/'/g, "''");
          sql += `INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('${uuid}', '${secMeaning}', false) ON CONFLICT DO NOTHING;\n`;
        });
        
        // Readings
        v.readings.forEach(r => {
          const typeStr = r.type ? `'${r.type}'` : 'NULL';
          sql += `INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('${uuid}', '${r.reading}', ${typeStr}, ${r.primary}) ON CONFLICT DO NOTHING;\n`;
        });
        
        // Context sentences
        v.sentences.forEach(s => {
          const jaStr = s.ja.replace(/'/g, "''");
          const idStr = s.indonesian.replace(/'/g, "''");
          sql += `INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('${uuid}', '${jaStr}', '${idStr}') ON CONFLICT DO NOTHING;\n`;
        });
      });
      sql += `\n`;
    }

    // D. Kanji-to-Radical Prerequisites
    sql += `-- Kanji-to-Radical relations for ${rankName}\n`;
    rankKanjis.forEach(k => {
      const compIds = k.component_radicals || [];
      compIds.forEach(radId => {
        const rad = radicalMap[radId];
        if (!rad) return;
        const radSlug = rad.data.slug.toLowerCase();
        const radChar = rad.data.characters;
        
        // Check if radical is newly seeded or already exists
        const newRadUuid = radicalUUIDMap[radSlug] || (radChar && radicalUUIDMap[radChar]);
        if (newRadUuid) {
          sql += `INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('${k.uuid}', '${newRadUuid}') ON CONFLICT DO NOTHING;\n`;
          sql += `INSERT INTO public.kanji_radicals (kanji_id, radical_id) VALUES ('${k.uuid}', '${newRadUuid}') ON CONFLICT DO NOTHING;\n`;
        } else {
          // Exists in DB
          sql += `INSERT INTO public.item_prerequisites (item_id, requires_item_id) SELECT '${k.uuid}', id FROM public.items WHERE type = 'radical' AND (slug = '${radSlug}' OR character = '${radSlug}') LIMIT 1 ON CONFLICT DO NOTHING;\n`;
          sql += `INSERT INTO public.kanji_radicals (kanji_id, radical_id) SELECT '${k.uuid}', id FROM public.items WHERE type = 'radical' AND (slug = '${radSlug}' OR character = '${radSlug}') LIMIT 1 ON CONFLICT DO NOTHING;\n`;
        }
      });
    });
    sql += `\n`;

    // E. Vocab-to-Kanji Prerequisites
    if (rankVocabs.length > 0) {
      sql += `-- Vocab-to-Kanji relations for ${rankName}\n`;
      rankVocabs.forEach(v => {
        v.kanjiInVocab.forEach(kanChar => {
          // Check if kanji is newly seeded in N3 or exists
          const kanUuid = kanjiUUIDMap[kanChar];
          if (kanUuid) {
            sql += `INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('${v.uuid}', '${kanUuid}') ON CONFLICT DO NOTHING;\n`;
            sql += `INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('${v.uuid}', '${kanUuid}') ON CONFLICT DO NOTHING;\n`;
          } else {
            // Exists in DB (N5 or N4 kanji)
            sql += `INSERT INTO public.item_prerequisites (item_id, requires_item_id) SELECT '${v.uuid}', id FROM public.items WHERE type = 'kanji' AND character = '${kanChar}' LIMIT 1 ON CONFLICT DO NOTHING;\n`;
            sql += `INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) SELECT '${v.uuid}', id FROM public.items WHERE type = 'kanji' AND character = '${kanChar}' LIMIT 1 ON CONFLICT DO NOTHING;\n`;
          }
        });
      });
      sql += `\n`;
    }
  }

  // F. User initialization block
  sql += `-- Re-initialize progress for all profiles\n`;
  sql += `DO $$\n`;
  sql += `DECLARE\n`;
  sql += `  r_profile RECORD;\n`;
  sql += `BEGIN\n`;
  sql += `  FOR r_profile IN SELECT id FROM public.profiles LOOP\n`;
  sql += `    PERFORM public.initialize_user_progress(r_profile.id);\n`;
  sql += `  END LOOP;\n`;
  sql += `END $$;\n`;

  const outputPath = path.join(__dirname, '..', 'sql', 'seed_n3.sql');
  fs.writeFileSync(outputPath, sql, 'utf8');
  console.log(`Saved seed_n3.sql to ${outputPath}`);
}

run().catch(err => {
  console.error('Execution failed:', err);
  process.exit(1);
});
