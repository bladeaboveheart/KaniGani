const fs = require('fs');
const path = require('path');
const crypto = require('crypto');

// Rank IDs from database
const rankIds = [
  'd4e5f6a7-b8c9-0d1e-2f3a-4b5c6d7e8f9a', // N4 - Pangkat 1
  'e5f6a7b8-c90d-1e2f-3a4b-5c6d7e8f9a0b', // N4 - Pangkat 2
  'f6a7b8c9-0d1e-2f3a-4b5c-6d7e8f9a0b1c', // N4 - Pangkat 3
  'a7b8c90d-1e2f-3a4b-5c6d-7e8f9a0b1c2d', // N4 - Pangkat 4
  'b8c90d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', // N4 - Pangkat 5
  'c90d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f'  // N4 - Pangkat 6
];

// N5 Kanjis
const n5Kanjis = ["一","人","入","二","十","八","七","九","大","子","上","女","下","小","山","万","川","三","土","千","分","日","中","今","月","水","木","父","友","天","火","五","円","午","六","出","生","本","外","母","白","半","北","四","左","右","行","年","気","先","名","西","毎","休","百","见","見","来","何","男","車","長","国","金","学","東","雨","前","後","食","南","時","高","書","校","間","話","電","聞","語","読"];
const n5Set = new Set(n5Kanjis);

// N4 Kanjis in stroke count order (from Kanjikana.com)
const n4Kanjis = [
  // Pangkat 1 (28)
  '力', '口', '工', '夕', '手', '方', '心', '不', '元', '少', '切', '止', '文', '公', '犬', '牛', '目', '立', '用', '田', '代', '世', '正', '以', '主', '仕', '可', '台',
  // Pangkat 2 (28)
  '去', '広', '写', '古', '兄', '冬', '会', '自', '同', '地', '死', '考', '安', '多', '早', '有', '色', '字', '肉', '言', '体', '作', '私', '社', '別', '近', '身', '足',
  // Pangkat 3 (28)
  '売', '住', '医', '花', '赤', '町', '走', '究', '図', '弟', '事', '者', '明', '知', '物', '的', '使', '始', '画', '味', '空', '夜', '店', '歩', '注', '京', '英', '服',
  // Pangkat 4 (28)
  '青', '姉', '妹', '思', '持', '発', '度', '界', '待', '音', '海', '重', '急', '品', '計', '送', '屋', '映', '室', '風', '建', '研', '春', '秋', '茶', '洋', '昼', '家',
  // Pangkat 5 (29)
  '通', '員', '真', '帰', '起', '料', '特', '院', '病', '紙', '旅', '夏', '借', '勉', '理', '動', '問', '強', '教', '野', '終', '悪', '族', '転', '週', '黒', '習', '堂', '鳥',
  // Pangkat 6 (29)
  '魚', '場', '開', '無', '道', '着', '運', '集', '朝', '買', '答', '飲', '飯', '貸', '意', '新', '業', '楽', '試', '漢', '歌', '銀', '駅', '質', '親', '館', '題', '験', '曜'
];
const n4Set = new Set(n4Kanjis);
const allKnownKanjis = new Set([...n5Kanjis, ...n4Kanjis]);

// Map each N4 kanji to its rank index (0 to 5)
const kanjiToRankIdx = {};
let currentIdx = 0;
n4Kanjis.forEach((k, idx) => {
  if (idx < 28) kanjiToRankIdx[k] = 0;
  else if (idx < 56) kanjiToRankIdx[k] = 1;
  else if (idx < 84) kanjiToRankIdx[k] = 2;
  else if (idx < 112) kanjiToRankIdx[k] = 3;
  else if (idx < 141) kanjiToRankIdx[k] = 4;
  else kanjiToRankIdx[k] = 5;
});

// Existing radicals in the DB
const existingRadicals = new Set(["一","人","入","二","十","七","九","大","子","卜","女","小","山","刀","川","土","千","日","中","今","月","水","木","父","ナ","又","天","ハ","丆","本","火","五","冂","干","亠","生","夕","ト","母","白","半","北","囗","儿","工","口","彳","气","メ","西","毋","化","目","田","力","車","長","玉","金","王","冖","雨","幺","夂","食","寸","高","聿","門","言","舌","耳","士"]);

// Translation helpers
async function translateTexts(texts) {
  if (texts.length === 0) return [];
  const separator = ' || ';
  const joined = texts.join(separator);
  const url = `https://translate.googleapis.com/translate_a/single?client=gtx&sl=en&tl=id&dt=t&q=${encodeURIComponent(joined)}`;
  try {
    const res = await fetch(url);
    if (res.status === 200) {
      const data = await res.json();
      const translatedJoined = data[0].map(x => x[0]).join('');
      const parts = translatedJoined.split(/\s*\|\|\s*/).map(s => s.trim());
      if (parts.length === texts.length) {
        return parts;
      }
      console.warn(`Batch translation size mismatch: expected ${texts.length}, got ${parts.length}. Falling back to individual translation...`);
    }
  } catch (err) {
    console.error('Batch translation error, falling back to individual:', err.message);
  }
  
  // Fallback to individual translation
  const results = [];
  for (const text of texts) {
    results.push(await translateIndividual(text));
    await new Promise(r => setTimeout(r, 100)); // small delay
  }
  return results;
}

async function translateIndividual(text) {
  if (!text) return '';
  const url = `https://translate.googleapis.com/translate_a/single?client=gtx&sl=en&tl=id&dt=t&q=${encodeURIComponent(text)}`;
  try {
    const res = await fetch(url);
    if (res.status === 200) {
      const data = await res.json();
      return data[0].map(x => x[0]).join('').trim();
    }
  } catch (err) {
    console.error(`Individual translation error for "${text}":`, err.message);
  }
  return text;
}

// Main execution function
async function run() {
  console.log('Fetching WaniKani subjects data...');
  const res = await fetch('https://raw.githubusercontent.com/mlegls/wanikani-shufa/master/subjects.json');
  const subjects = await res.json();
  
  console.log(`Loaded ${subjects.length} subjects.`);
  
  // Index subjects by character and ID
  const kanjiMap = {};
  const radicalMap = {};
  const subjectById = {};
  const allVocabs = [];
  
  subjects.forEach(item => {
    subjectById[item.id] = item;
    const data = item.data;
    if (item.object === 'kanji') {
      kanjiMap[data.characters] = item;
    } else if (item.object === 'radical') {
      radicalMap[item.id] = item;
    } else if (item.object === 'vocabulary') {
      allVocabs.push(item);
    }
  });
  
  // 1. Process Kanjis
  console.log('Processing N4 Kanjis...');
  const kanjiDataList = [];
  const neededRadicalIds = new Set();
  
  n4Kanjis.forEach(k => {
    const km = kanjiMap[k];
    if (!km) {
      console.warn(`Kanji ${k} not found in WaniKani!`);
      return;
    }
    
    // Add component radicals
    const compIds = km.data.component_subject_ids || [];
    compIds.forEach(id => neededRadicalIds.add(id));
    
    kanjiDataList.push({
      character: k,
      slug: km.data.slug,
      level: 2, // JLPT level code for display or items level (we set level = 2 for N4)
      meanings: km.data.meanings, // array of {meaning, primary}
      readings: km.data.readings,   // array of {reading, type, primary}
      meaning_mnemonic: km.data.meaning_mnemonic,
      reading_mnemonic: km.data.reading_mnemonic,
      radicals: compIds,
      rankIdx: kanjiToRankIdx[k]
    });
  });
  
  // 2. Process Radicals
  console.log('Processing Radicals...');
  const radicalDataList = [];
  neededRadicalIds.forEach(id => {
    const rad = radicalMap[id];
    if (!rad) return;
    
    const char = rad.data.characters;
    const slug = rad.data.slug;
    
    // Skip if already in database
    if ((char && existingRadicals.has(char)) || existingRadicals.has(slug)) {
      return;
    }
    
    radicalDataList.push({
      id: id,
      character: char,
      slug: slug,
      meanings: rad.data.meanings,
      meaning_mnemonic: rad.data.meaning_mnemonic,
      // Find the first rank index where this radical is needed
      rankIdx: Math.min(...n4Kanjis.filter(k => {
        const km = kanjiMap[k];
        return km && km.data.component_subject_ids.includes(id);
      }).map(k => kanjiToRankIdx[k]))
    });
  });
  
  console.log(`New Radicals to seed count: ${radicalDataList.length}`);
  
  // 3. Process Vocabularies
  console.log('Processing Vocabularies...');
  const vocabDataList = [];
  
  allVocabs.forEach(v => {
    const chars = v.data.characters;
    
    // Check if vocabulary contains only known kanjis (N5 or N4) and kana
    let isEligible = true;
    let hasN4Kanji = false;
    let maxRankIdx = 0;
    
    for (let c of chars) {
      const code = c.charCodeAt(0);
      const isKanji = (code >= 0x4e00 && code <= 0x9faf);
      if (isKanji) {
        if (!allKnownKanjis.has(c)) {
          isEligible = false;
          break;
        }
        if (n4Set.has(c)) {
          hasN4Kanji = true;
          maxRankIdx = Math.max(maxRankIdx, kanjiToRankIdx[c]);
        }
      }
    }
    
    if (isEligible && hasN4Kanji) {
      const prereqs = [];
      for (let c of chars) {
        const code = c.charCodeAt(0);
        if (code >= 0x4e00 && code <= 0x9faf) {
          prereqs.push(c);
        }
      }
      
      vocabDataList.push({
        character: chars,
        slug: v.data.slug,
        level: 2,
        meanings: v.data.meanings,
        readings: v.data.readings,
        meaning_mnemonic: v.data.meaning_mnemonic,
        reading_mnemonic: v.data.reading_mnemonic,
        sentences: v.data.context_sentences || [],
        prereqs: prereqs,
        rankIdx: maxRankIdx
      });
    }
  });
  
  console.log(`Compatible N4 Vocabularies count: ${vocabDataList.length}`);
  
  // 4. Batch Translation to Indonesian
  console.log('Translating texts to Indonesian. This will take a few seconds...');
  
  // Prepare queues
  const translateQueue = [];
  
  // Helper to add string to translation queue and return function to get translation
  function queue(str) {
    if (!str) return () => '';
    const cleanStr = str.replace(/<[^>]*>/g, ''); // strip HTML tags like <radical>, <kanji>
    const idx = translateQueue.length;
    translateQueue.push(cleanStr);
    return (translations) => translations[idx] || str;
  }
  
  // Radicals
  radicalDataList.forEach(rad => {
    rad.meaningGet = queue(rad.meanings[0].meaning);
    rad.mnemonicGet = queue(rad.meaning_mnemonic);
  });
  
  // Kanjis
  kanjiDataList.forEach(kan => {
    kan.meaningGet = queue(kan.meanings[0].meaning);
    kan.mnemonicGet = queue(kan.meaning_mnemonic);
    kan.readMnemonicGet = queue(kan.reading_mnemonic);
  });
  
  // Vocabs
  vocabDataList.forEach(voc => {
    voc.meaningGet = queue(voc.meanings[0].meaning);
    voc.mnemonicGet = queue(voc.meaning_mnemonic);
    voc.sentences.forEach(s => {
      s.indonesianGet = queue(s.en);
    });
  });
  
  // Run batch translation
  const batchSize = 30;
  const translations = [];
  
  for (let i = 0; i < translateQueue.length; i += batchSize) {
    const chunk = translateQueue.slice(i, i + batchSize);
    console.log(`Translating batch ${i / batchSize + 1}/${Math.ceil(translateQueue.length / batchSize)} (${chunk.length} items)...`);
    const transChunk = await translateTexts(chunk);
    translations.push(...transChunk);
    await new Promise(r => setTimeout(r, 100)); // prevent spamming
  }
  
  console.log('Translations retrieved successfully!');
  
  // Apply translations back
  radicalDataList.forEach(rad => {
    rad.indonesianMeaning = rad.meaningGet(translations);
    rad.indonesianMnemonic = rad.mnemonicGet(translations);
    // If character is null, use the translated Indonesian meaning in brackets
    if (!rad.character) {
      rad.character = `[${rad.indonesianMeaning}]`;
    }
  });
  
  kanjiDataList.forEach(kan => {
    kan.indonesianMeaning = kan.meaningGet(translations);
    kan.indonesianMnemonic = kan.mnemonicGet(translations);
    kan.indonesianReadMnemonic = kan.readMnemonicGet(translations);
  });
  
  vocabDataList.forEach(voc => {
    voc.indonesianMeaning = voc.meaningGet(translations);
    voc.indonesianMnemonic = voc.mnemonicGet(translations);
    voc.sentences.forEach(s => {
      s.indonesian = s.indonesianGet(translations);
    });
  });
  
  // 5. Generate and Write SQL Seeds by Rank
  console.log('Generating SQL files...');
  
  for (let rankIdx = 0; rankIdx < 6; rankIdx++) {
    const rankId = rankIds[rankIdx];
    const rankName = `N4 - Pangkat ${rankIdx + 1}`;
    
    const rankRadicals = radicalDataList.filter(r => r.rankIdx === rankIdx);
    const rankKanjis = kanjiDataList.filter(k => k.rankIdx === rankIdx);
    const rankVocabs = vocabDataList.filter(v => v.rankIdx === rankIdx);
    
    // Allocate IDs to everything
    rankRadicals.forEach(r => r.id = crypto.randomUUID());
    rankKanjis.forEach(k => k.id = crypto.randomUUID());
    rankVocabs.forEach(v => v.id = crypto.randomUUID());
    
    let sql = `-- ============================================================
-- KaniGani Seed Data: ${rankName}
-- Generated automatically with translated Indonesian content
-- ============================================================

-- 1. Clean up existing items in this rank
DELETE FROM public.items WHERE rank_id = '${rankId}';

-- 2. Insert Radicals
`;
    
    rankRadicals.forEach(r => {
      const escapedDesc = r.indonesianMnemonic.replace(/'/g, "''");
      sql += `INSERT INTO public.items (id, type, character, slug, level, rank_id, description) VALUES ('${r.id}', 'radical', '${r.character}', '${r.slug}', 2, '${rankId}', '${escapedDesc}') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, description = EXCLUDED.description;\n`;
      sql += `INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('${r.id}', '${r.indonesianMeaning.replace(/'/g, "''")}', true) ON CONFLICT DO NOTHING;\n`;
    });
    
    sql += `\n-- 3. Insert Kanjis\n`;
    rankKanjis.forEach(k => {
      const escapedDesc = k.indonesianMnemonic.replace(/'/g, "''");
      const escapedReadDesc = k.indonesianReadMnemonic.replace(/'/g, "''");
      sql += `INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, reading_mnemonic) VALUES ('${k.id}', 'kanji', '${k.character}', '${k.slug}', 2, '${rankId}', '${escapedDesc}', '${escapedReadDesc}') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, reading_mnemonic = EXCLUDED.reading_mnemonic;\n`;
      
      // Primary meaning in Indonesian
      sql += `INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('${k.id}', '${k.indonesianMeaning.replace(/'/g, "''")}', true) ON CONFLICT DO NOTHING;\n`;
      // Secondary meanings
      k.meanings.slice(1).forEach(m => {
        sql += `INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('${k.id}', '${m.meaning.replace(/'/g, "''")}', false) ON CONFLICT DO NOTHING;\n`;
      });
      
      // Readings
      k.readings.forEach(r => {
        const typeStr = r.type ? `'${r.type}'` : 'NULL';
        sql += `INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('${k.id}', '${r.reading}', ${typeStr}, ${r.primary}) ON CONFLICT DO NOTHING;\n`;
      });
    });
    
    sql += `\n-- 4. Insert Vocabularies\n`;
    rankVocabs.forEach(v => {
      const escapedDesc = v.indonesianMnemonic.replace(/'/g, "''");
      sql += `INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('${v.id}', 'vocabulary', '${v.character}', '${v.slug}', 2, '${rankId}', '${escapedDesc}', '${escapedDesc}') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;\n`;
      
      // Meanings
      sql += `INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('${v.id}', '${v.indonesianMeaning.replace(/'/g, "''")}', true) ON CONFLICT DO NOTHING;\n`;
      v.meanings.slice(1).forEach(m => {
        sql += `INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('${v.id}', '${m.meaning.replace(/'/g, "''")}', false) ON CONFLICT DO NOTHING;\n`;
      });
      
      // Readings
      v.readings.forEach(r => {
        const typeStr = r.type ? `'${r.type}'` : 'NULL';
        sql += `INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('${v.id}', '${r.reading}', ${typeStr}, ${r.primary}) ON CONFLICT DO NOTHING;\n`;
      });
      
      // Context sentences
      v.sentences.forEach(s => {
        sql += `INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('${v.id}', '${s.ja.replace(/'/g, "''")}', '${s.indonesian.replace(/'/g, "''")}') ON CONFLICT DO NOTHING;\n`;
      });
    });
    
    sql += `\n-- 5. Insert Kanji-to-Radical Prerequisites\n`;
    rankKanjis.forEach(k => {
      k.radicals.forEach(radId => {
        // Find radical in our rank
        const radIdx = rankRadicals.findIndex(r => r.id === radId);
        if (radIdx !== -1) {
          sql += `INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('${k.id}', '${rankRadicals[radIdx].id}') ON CONFLICT DO NOTHING;\n`;
          sql += `INSERT INTO public.kanji_radicals (kanji_id, radical_id) VALUES ('${k.id}', '${rankRadicals[radIdx].id}') ON CONFLICT DO NOTHING;\n`;
        } else {
          // Fetch from existing DB items
          const radSubject = subjectById[radId];
          if (radSubject) {
            const radSlug = radSubject.data.slug;
            sql += `INSERT INTO public.item_prerequisites (item_id, requires_item_id)\n`;
            sql += `SELECT '${k.id}', id FROM public.items WHERE type = 'radical' AND slug = '${radSlug}' LIMIT 1 ON CONFLICT DO NOTHING;\n`;
            sql += `INSERT INTO public.kanji_radicals (kanji_id, radical_id)\n`;
            sql += `SELECT '${k.id}', id FROM public.items WHERE type = 'radical' AND slug = '${radSlug}' LIMIT 1 ON CONFLICT DO NOTHING;\n`;
          }
        }
      });
    });
    
    sql += `\n-- 6. Insert Vocab-to-Kanji Prerequisites\n`;
    rankVocabs.forEach(v => {
      v.prereqs.forEach(kanChar => {
        // Find kanji in our rank
        const kanIdx = rankKanjis.findIndex(k => k.character === kanChar);
        if (kanIdx !== -1) {
          sql += `INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('${v.id}', '${rankKanjis[kanIdx].id}') ON CONFLICT DO NOTHING;\n`;
          sql += `INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('${v.id}', '${rankKanjis[kanIdx].id}') ON CONFLICT DO NOTHING;\n`;
        } else {
          // Fetch from existing DB items
          sql += `INSERT INTO public.item_prerequisites (item_id, requires_item_id)\n`;
          sql += `SELECT '${v.id}', id FROM public.items WHERE type = 'kanji' AND character = '${kanChar}' LIMIT 1 ON CONFLICT DO NOTHING;\n`;
          sql += `INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id)\n`;
          sql += `SELECT '${v.id}', id FROM public.items WHERE type = 'kanji' AND character = '${kanChar}' LIMIT 1 ON CONFLICT DO NOTHING;\n`;
        }
      });
    });
    
    sql += `\n-- 7. Initialize progress for all existing profiles\n`;
    sql += `DO $$\n`;
    sql += `DECLARE\n`;
    sql += `  r_profile RECORD;\n`;
    sql += `BEGIN\n`;
    sql += `  FOR r_profile IN SELECT id FROM public.profiles LOOP\n`;
    sql += `    PERFORM public.initialize_user_progress(r_profile.id);\n`;
    sql += `  END LOOP;\n`;
    sql += `END $$;\n`;
    
    const outPath = path.join(__dirname, `../sql/seed_n4_pangkat${rankIdx + 1}.sql`);
    fs.writeFileSync(outPath, sql, 'utf8');
    console.log(`Saved SQL file for Rank ${rankIdx + 1} to: ${outPath}`);
  }
  
  console.log('Seeding code generation completed!');
}

run().catch(err => {
  console.error('Global execution error:', err);
});
