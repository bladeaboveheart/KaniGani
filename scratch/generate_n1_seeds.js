const { createClient } = require('@supabase/supabase-js');
const fs = require('fs');
const path = require('path');
const crypto = require('crypto');

// Rank IDs and their sort order for N1 (continuation from sort_order 35 of N2)
// Since we have 974 Kanji, and we want max 30 kanjis per Pangkat (like N2 which had 367 kanjis across 13 pangkat, i.e. 28-29 kanjis per pangkat),
// For N1 with 974 kanjis, we can do 33 pangkat of size ~29-30 each:
// 974 / 30 = 32.4 => let's do 33 pangkat.
// Let's generate 33 static UUIDs for N1 ranks.
const rankIds = [];
for (let i = 0; i < 33; i++) {
  // We can pre-generate or generate deterministically/randomly. Let's do random UUIDs.
  // Wait, let's keep them deterministic so rerun is idempotent, using crypto.createHash or just pre-generated.
  // We'll generate them deterministically based on "n1-pangkat-i" so they remain identical.
  const hash = crypto.createHash('sha256').update(`n1-pangkat-${i+1}`).digest('hex');
  const uuid = `${hash.slice(0, 8)}-${hash.slice(8, 12)}-4${hash.slice(13, 16)}-a${hash.slice(17, 20)}-${hash.slice(20, 32)}`;
  rankIds.push(uuid);
}

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
  
  // Fetch all items from DB to build lists of existing radicals & known kanji
  let dbItems = [];
  let from = 0;
  const pageSize = 1000;
  let hasMore = true;
  
  while (hasMore) {
    const { data, error } = await supabase
      .from('items')
      .select('character, slug, type, level')
      .range(from, from + pageSize - 1);
      
    if (error) {
      throw new Error('Failed to query database items: ' + error.message);
    }
    if (data && data.length > 0) {
      dbItems = [...dbItems, ...data];
      if (data.length < pageSize) {
        hasMore = false;
      } else {
        from += pageSize;
      }
    } else {
      hasMore = false;
    }
  }
  
  console.log(`Fetched ${dbItems.length} items from database.`);
  const existingRadSet = new Set();
  const existingRadSlugs = new Set();
  const allKnownKanjis = new Set();
  
  dbItems.forEach(item => {
    if (item.type === 'radical') {
      if (item.character) existingRadSet.add(item.character);
      if (item.slug) existingRadSlugs.add(item.slug.toLowerCase());
    } else if (item.type === 'kanji') {
      allKnownKanjis.add(item.character);
    }
  });
  
  console.log(`Existing radicals in DB: ${existingRadSet.size} characters, ${existingRadSlugs.size} slugs.`);
  console.log(`Existing kanji in DB (N5, N4, N3, N2): ${allKnownKanjis.size} characters.`);
  
  console.log('Loading N1 candidates...');
  const n1Matched = JSON.parse(fs.readFileSync(path.join(__dirname, 'n1_matched.json'), 'utf8'));
  const n1Set = new Set(n1Matched.map(k => k.char));
  console.log(`Loaded ${n1Matched.length} N1 kanjis.`);
  
  // All known kanji now includes N5, N4, N3, N2 and N1
  const allKnownKanjisWithN1 = new Set([...allKnownKanjis, ...n1Set]);
  
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
  
  // 1. Group N1 Kanji into 33 pangkat (max 30 per pangkat)
  // n1Matched is already sorted by wk_level ascending.
  const pangkatSizes = Array.from({ length: 33 }, (_, i) => {
    // 974 / 33 = 29.515
    // 17 pangkat of size 30, 16 pangkat of size 29 = 17 * 30 + 16 * 29 = 510 + 464 = 974
    return i < 17 ? 30 : 29;
  });
  let kanjiCounter = 0;
  
  const kanjisByRank = Array.from({ length: 33 }, () => []);
  const kanjiToRankIdx = {};
  
  pangkatSizes.forEach((size, rankIdx) => {
    for (let i = 0; i < size; i++) {
      if (kanjiCounter < n1Matched.length) {
        const k = n1Matched[kanjiCounter];
        kanjisByRank[rankIdx].push(k);
        kanjiToRankIdx[k.char] = rankIdx;
        kanjiCounter++;
      }
    }
  });
  
  console.log('Kanjis grouped into 33 pangkat.');
  kanjisByRank.forEach((list, idx) => {
    console.log(`Rank ${idx + 1}: ${list.length} kanjis. Level range: ${list[0].wk_level} to ${list[list.length - 1].wk_level}`);
  });
  
  // 2. Identify new radicals needed and group them to their first needed rank
  const radicalsByRank = Array.from({ length: 33 }, () => []);
  const addedRadicalIds = new Set();
  
  n1Matched.forEach(k => {
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
      const neededRanks = n1Matched
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
  const vocabsByRank = Array.from({ length: 33 }, () => []);
  let vocabCount = 0;
  
  allVocabs.forEach(v => {
    const chars = v.data.characters;
    let isEligible = true;
    let hasN1Kanji = false;
    let maxRankIdx = -1;
    const kanjiInVocab = [];
    
    for (let c of chars) {
      const code = c.charCodeAt(0);
      const isKanji = (code >= 0x4e00 && code <= 0x9faf);
      if (isKanji) {
        if (!allKnownKanjisWithN1.has(c)) {
          isEligible = false;
          break;
        }
        if (n1Set.has(c)) {
          hasN1Kanji = true;
          maxRankIdx = Math.max(maxRankIdx, kanjiToRankIdx[c]);
        }
        kanjiInVocab.push(c);
      }
    }
    
    if (isEligible && hasN1Kanji && maxRankIdx >= 0) {
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
  
  console.log(`Eligible N1 vocabularies count: ${vocabCount}`);
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
  for (let rankIdx = 0; rankIdx < 33; rankIdx++) {
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
  for (let rankIdx = 0; rankIdx < 33; rankIdx++) {
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
  
  // 5. Generate seed_n1.sql
  console.log('Generating seed_n1.sql content...');
  let sql = `-- ============================================================
-- KaniGani Seed Data: JLPT N1 Levels (Pangkat 1 s.d. 33)
-- Generated automatically with translated Indonesian content
-- ============================================================
 
-- 1. Clean up existing ranks and items for N1
`;
 
  // Delete statements for items and ranks
  sql += `DELETE FROM public.items WHERE rank_id IN (${rankIds.map(id => `'${id}'`).join(', ')});\n`;
  sql += `DELETE FROM public.ranks WHERE jlpt_level = 'N1';\n\n`;
 
  // Insert ranks (starting sort_order from 36)
  sql += `-- 2. Insert Ranks N1\n`;
  sql += `INSERT INTO public.ranks (id, name, jlpt_level, sort_order, exp_required) VALUES\n`;
  rankIds.forEach((rankId, idx) => {
    const comma = idx === 32 ? ';' : ',';
    sql += `  ('${rankId}', 'N1 - Pangkat ${idx + 1}', 'N1', ${36 + idx}, 1500)${comma}\n`;
  });
  sql += `\n`;
 
  // Process Pangkat by Pangkat
  const radicalUUIDMap = {};
  const kanjiUUIDMap = {};
  
  // Pre-generate UUIDs for all new radicals and kanjis
  for (let rankIdx = 0; rankIdx < 33; rankIdx++) {
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
 
  for (let rankIdx = 0; rankIdx < 33; rankIdx++) {
    const rankId = rankIds[rankIdx];
    const rankName = `N1 - Pangkat ${rankIdx + 1}`;
    
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
        
        sql += `INSERT INTO public.items (id, type, character, slug, level, rank_id, description) VALUES ('${r.uuid}', 'radical', '${charStr}', '${slugStr}', 1, '${rankId}', '${descStr}') ON CONFLICT (id) DO NOTHING;\n`;
        sql += `INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('${r.uuid}', '${meaningStr}', true) ON CONFLICT DO NOTHING;\n`;
      });
      sql += `\n`;
    }
 
    // B. Kanjis
    const rankKanjis = kanjisByRank[rankIdx];
    sql += `-- Kanjis for ${rankName}\n`;
    rankKanjis.forEach(k => {
      const charStr = k.char;
      const slugStr = k.char;
      const meaningStr = k.indonesianMeaning.replace(/'/g, "''");
      const meaningMnemonicStr = k.indonesianMnemonic.replace(/'/g, "''");
      const readingMnemonicStr = k.indonesianReadingMnemonic.replace(/'/g, "''");
      
      sql += `INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, reading_mnemonic) VALUES ('${k.uuid}', 'kanji', '${charStr}', '${slugStr}', 1, '${rankId}', '${meaningMnemonicStr}', '${readingMnemonicStr}') ON CONFLICT (id) DO NOTHING;\n`;
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
        
        sql += `INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('${uuid}', 'vocabulary', '${charStr}', '${slugStr}', 1, '${rankId}', '${descStr}', '${descStr}') ON CONFLICT (id) DO NOTHING;\n`;
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
          // Check if kanji is newly seeded in N1 or exists
          const kanUuid = kanjiUUIDMap[kanChar];
          if (kanUuid) {
            sql += `INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('${v.uuid}', '${kanUuid}') ON CONFLICT DO NOTHING;\n`;
            sql += `INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('${v.uuid}', '${kanUuid}') ON CONFLICT DO NOTHING;\n`;
          } else {
            // Exists in DB (N5, N4, N3, or N2 kanji)
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
 
  const outputPath = path.join(__dirname, '..', 'sql', 'seed_n1.sql');
  fs.writeFileSync(outputPath, sql, 'utf8');
  console.log(`Saved seed_n1.sql to ${outputPath}`);
}

run().catch(err => {
  console.error('Execution failed:', err);
  process.exit(1);
});
