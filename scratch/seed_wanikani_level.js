const fs = require('fs');
const path = require('path');
const { createClient } = require(path.join(process.cwd(), 'node_modules', '@supabase', 'supabase-js'));

// 1. Load Environment Variables
const envFile = fs.readFileSync(path.join(process.cwd(), '.env.local'), 'utf8');
const envVars = {};
envFile.split('\n').forEach(line => {
  const [k, ...v] = line.split('=');
  if (k && v.length) envVars[k.trim()] = v.join('=').trim();
});

const SUPABASE_URL = envVars['NEXT_PUBLIC_SUPABASE_URL'];
const SUPABASE_KEY = envVars['NEXT_PUBLIC_SUPABASE_ANON_KEY'];
const WANIKANI_TOKEN = envVars['WANIKANI_API_TOKEN'];

if (!WANIKANI_TOKEN) {
  console.error('ERROR: WANIKANI_API_TOKEN is missing in .env.local');
  process.exit(1);
}

const supabase = createClient(SUPABASE_URL, SUPABASE_KEY);

// 2. Helper Functions with Rate Limit Backoff
async function fetchWithRetry(url, options = {}, retries = 3) {
  for (let i = 0; i < retries; i++) {
    try {
      const res = await fetch(url, options);
      if (res.status === 429) {
        console.warn(`WaniKani 429 Rate limit encountered. Waiting 3s... (attempt ${i + 1}/${retries})`);
        await new Promise(r => setTimeout(r, 3000));
        continue;
      }
      if (!res.ok) throw new Error(`HTTP ${res.status}`);
      return res;
    } catch (err) {
      if (i === retries - 1) throw err;
      await new Promise(r => setTimeout(r, 2000));
    }
  }
}

const translationCache = {};

async function translateText(text) {
  if (!text || typeof text !== 'string' || text.trim() === '') return '';
  if (translationCache[text]) return translationCache[text];

  const queryText = text.length > 1500 ? text.slice(0, 1500) : text;
  const url = 'https://translate.googleapis.com/translate_a/single?client=gtx&sl=en&tl=id&dt=t&q=' + encodeURIComponent(queryText);

  try {
    const controller = new AbortController();
    const timeoutId = setTimeout(() => controller.abort(), 3000);

    const res = await fetch(url, {
      signal: controller.signal,
      headers: {
        'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36'
      }
    });
    clearTimeout(timeoutId);

    if (res.ok) {
      const json = await res.json();
      const translated = json[0].map(x => x[0]).join('');
      if (translated) {
        translationCache[text] = translated;
        return translated;
      }
    }
  } catch (err) {}

  translationCache[text] = text;
  return text;
}

async function batchTranslate(items, fnBatchSize = 10) {
  for (let i = 0; i < items.length; i += fnBatchSize) {
    const chunk = items.slice(i, i + fnBatchSize);
    await Promise.all(chunk.map(item => item()));
    await new Promise(r => setTimeout(r, 150));
  }
}

function toIndonesianSlug(text) {
  if (!text) return 'item';
  return String(text)
    .toLowerCase()
    .trim()
    .replace(/[^a-z0-9\s-]/g, '')
    .replace(/\s+/g, '-')
    .replace(/-+/g, '-')
    .replace(/^-|-$/g, '') || 'item';
}

const wkSubjectCache = {};

async function bulkFetchWkSubjects(ids) {
  const missing = ids.filter(id => !wkSubjectCache[id]);
  if (missing.length === 0) return;

  for (let i = 0; i < missing.length; i += 100) {
    const batch = missing.slice(i, i + 100);
    const url = `https://api.wanikani.com/v2/subjects?ids=${batch.join(',')}`;
    try {
      const res = await fetchWithRetry(url, { headers: { 'Authorization': `Bearer ${WANIKANI_TOKEN}` } });
      const json = await res.json();
      (json.data || []).forEach(sub => {
        wkSubjectCache[sub.id] = sub.data;
      });
    } catch (e) {
      console.warn('Failed bulk fetch WkSubjects batch:', e.message);
    }
  }
}

// 3. Fetch subjects from WaniKani API
async function fetchSubjectsForLevel(level) {
  console.log(`\n========================================`);
  console.log(`FETCHING LEVEL ${level} FROM WANIKANI API`);
  console.log(`========================================`);
  let url = `https://api.wanikani.com/v2/subjects?levels=${level}`;
  let allSubjects = [];

  while (url) {
    const res = await fetchWithRetry(url, {
      headers: { 'Authorization': `Bearer ${WANIKANI_TOKEN}` }
    });
    const json = await res.json();
    allSubjects.push(...json.data);
    url = json.pages ? json.pages.next_url : null;
  }

  console.log(`Fetched total ${allSubjects.length} subjects for Level ${level}`);
  return allSubjects;
}

// 4. Main Process & Seed Function
async function seedLevel(level) {
  const rawSubjects = await fetchSubjectsForLevel(level);

  const radicals = rawSubjects.filter(s => s.object === 'radical');
  const kanjis = rawSubjects.filter(s => s.object === 'kanji');
  const vocabs = rawSubjects.filter(s => s.object === 'vocabulary');

  console.log(`Breakdown: Radicals=${radicals.length}, Kanjis=${kanjis.length}, Vocabularies=${vocabs.length}`);

  console.log(`\nTranslating Level ${level} to Indonesian...`);

  // 1. Collect all unique English text snippets to translate (Meanings, Mnemonics, Hints, Context Sentences)
  const stringsToTranslate = [];

  radicals.forEach(r => {
    r.data.meanings.forEach(m => stringsToTranslate.push(m.meaning));
    if (r.data.meaning_mnemonic) stringsToTranslate.push(r.data.meaning_mnemonic);
  });

  kanjis.forEach(k => {
    k.data.meanings.forEach(m => stringsToTranslate.push(m.meaning));
    if (k.data.meaning_mnemonic) stringsToTranslate.push(k.data.meaning_mnemonic);
    if (k.data.reading_mnemonic) stringsToTranslate.push(k.data.reading_mnemonic);
  });

  vocabs.forEach(v => {
    v.data.meanings.forEach(m => stringsToTranslate.push(m.meaning));
    if (v.data.meaning_mnemonic) stringsToTranslate.push(v.data.meaning_mnemonic);
    if (v.data.reading_mnemonic) stringsToTranslate.push(v.data.reading_mnemonic);
    if (v.data.context_sentences) {
      v.data.context_sentences.forEach(s => {
        if (s.en) stringsToTranslate.push(s.en);
      });
    }
  });

  const unique = Array.from(new Set(stringsToTranslate.filter(t => t && typeof t === 'string' && t.trim() !== '' && !translationCache[t])));
  console.log(`Translating ${unique.length} new unique text snippets for Level ${level}...`);

  // Controlled concurrency (5 at a time with 40ms delay)
  for (let i = 0; i < unique.length; i += 5) {
    const chunk = unique.slice(i, i + 5);
    await Promise.all(chunk.map(async (t) => {
      try {
        await translateText(t);
      } catch (e) {
        translationCache[t] = t;
      }
    }));
    if (i > 0 && i % 50 === 0) {
      console.log(`  Progress: ${i}/${unique.length} snippets translated...`);
    }
    await new Promise(r => setTimeout(r, 40));
  }

  // 2. Assign translated fields synchronously from cache
  radicals.forEach(r => {
    r.data.meanings.forEach(m => m.meaning_id = translationCache[m.meaning] || m.meaning);
    if (r.data.meaning_mnemonic) r.data.meaning_mnemonic_id = translationCache[r.data.meaning_mnemonic] || r.data.meaning_mnemonic;
  });

  kanjis.forEach(k => {
    k.data.meanings.forEach(m => m.meaning_id = translationCache[m.meaning] || m.meaning);
    if (k.data.meaning_mnemonic) k.data.meaning_mnemonic_id = translationCache[k.data.meaning_mnemonic] || k.data.meaning_mnemonic;
    if (k.data.reading_mnemonic) k.data.reading_mnemonic_id = translationCache[k.data.reading_mnemonic] || k.data.reading_mnemonic;
  });

  vocabs.forEach(v => {
    v.data.meanings.forEach(m => m.meaning_id = translationCache[m.meaning] || m.meaning);
    if (v.data.meaning_mnemonic) v.data.meaning_mnemonic_id = translationCache[v.data.meaning_mnemonic] || v.data.meaning_mnemonic;
    if (v.data.reading_mnemonic) v.data.reading_mnemonic_id = translationCache[v.data.reading_mnemonic] || v.data.reading_mnemonic;
    if (v.data.context_sentences) {
      v.data.context_sentences.forEach(s => {
        if (s.en) s.id = translationCache[s.en] || s.en;
      });
    }
  });

  // Clear existing items for level
  console.log(`\nCleaning existing Level ${level} items in Supabase...`);
  const { error: delErr } = await supabase.from('items').delete().eq('level', level);
  if (delErr) console.warn('Delete warning:', delErr.message);

  let pos = 1;
  const wkIdToDbId = {};

  const itemsToInsert = [];
  const meaningsToInsert = [];
  const readingsToInsert = [];
  const sentencesToInsert = [];

  // Prepare Radicals
  for (const r of radicals) {
    const char = r.data.characters || `/radicals/${r.data.slug}.svg`;
    const desc = r.data.meaning_mnemonic_id || r.data.meaning_mnemonic || r.data.meanings[0].meaning_id || r.data.meanings[0].meaning;
    const primaryIdMeaning = r.data.meanings.find(m => m.primary)?.meaning_id || r.data.meanings[0].meaning_id || r.data.slug;
    const indoSlug = toIndonesianSlug(primaryIdMeaning);

    const itemId = crypto.randomUUID();
    wkIdToDbId[r.id] = itemId;

    itemsToInsert.push({
      id: itemId,
      type: 'radical',
      character: char,
      slug: indoSlug,
      level: level,
      lesson_position: pos++,
      meaning_mnemonic: r.data.meaning_mnemonic_id || r.data.meaning_mnemonic || '',
      description: desc
    });

    r.data.meanings.forEach(m => {
      meaningsToInsert.push({
        item_id: itemId,
        meaning: m.meaning_id || m.meaning,
        primary_meaning: m.primary
      });
    });
  }

  // Prepare Kanjis
  for (const k of kanjis) {
    const char = k.data.characters;
    const primaryIdMeaning = k.data.meanings.find(m => m.primary)?.meaning_id || k.data.meanings[0].meaning_id || k.data.slug;
    const indoSlug = toIndonesianSlug(primaryIdMeaning);
    const desc = k.data.meanings.map(m => m.meaning_id || m.meaning).join(', ');

    const itemId = crypto.randomUUID();
    wkIdToDbId[k.id] = itemId;

    itemsToInsert.push({
      id: itemId,
      type: 'kanji',
      character: char,
      slug: indoSlug,
      level: level,
      lesson_position: pos++,
      meaning_mnemonic: k.data.meaning_mnemonic_id || k.data.meaning_mnemonic || '',
      reading_mnemonic: k.data.reading_mnemonic_id || k.data.reading_mnemonic || '',
      description: desc
    });

    k.data.meanings.forEach(m => {
      meaningsToInsert.push({
        item_id: itemId,
        meaning: m.meaning_id || m.meaning,
        primary_meaning: m.primary
      });
    });

    k.data.readings.forEach(r => {
      readingsToInsert.push({
        item_id: itemId,
        reading: r.reading,
        primary_reading: r.primary,
        reading_type: r.type
      });
    });
  }

  // Prepare Vocabularies
  for (const v of vocabs) {
    const char = v.data.characters;
    const primaryIdMeaning = v.data.meanings.find(m => m.primary)?.meaning_id || v.data.meanings[0].meaning_id || v.data.slug;
    const indoSlug = toIndonesianSlug(primaryIdMeaning);
    const desc = v.data.meanings.map(m => m.meaning_id || m.meaning).join(', ');

    const itemId = crypto.randomUUID();
    wkIdToDbId[v.id] = itemId;

    itemsToInsert.push({
      id: itemId,
      type: 'vocabulary',
      character: char,
      slug: indoSlug,
      level: level,
      lesson_position: pos++,
      meaning_mnemonic: v.data.meaning_mnemonic_id || v.data.meaning_mnemonic || '',
      reading_mnemonic: v.data.reading_mnemonic_id || v.data.reading_mnemonic || '',
      description: desc
    });

    v.data.meanings.forEach(m => {
      meaningsToInsert.push({
        item_id: itemId,
        meaning: m.meaning_id || m.meaning,
        primary_meaning: m.primary
      });
    });

    v.data.readings.forEach(r => {
      readingsToInsert.push({
        item_id: itemId,
        reading: r.reading,
        primary_reading: r.primary
      });
    });

    if (v.data.context_sentences) {
      v.data.context_sentences.forEach(s => {
        sentencesToInsert.push({
          item_id: itemId,
          japanese: s.ja,
          indonesian: s.id || s.en || ''
        });
      });
    }
  }

  // Batch insert items
  console.log(`Batch inserting ${itemsToInsert.length} items with Indonesian slugs for Level ${level}...`);
  if (itemsToInsert.length > 0) {
    for (let i = 0; i < itemsToInsert.length; i += 200) {
      const chunk = itemsToInsert.slice(i, i + 200);
      const { error: insertErr } = await supabase.from('items').insert(chunk);
      if (insertErr) throw new Error(`Insert items error for level ${level}: ${insertErr.message}`);
    }
  }

  // Batch insert meanings
  if (meaningsToInsert.length > 0) {
    for (let i = 0; i < meaningsToInsert.length; i += 200) {
      await supabase.from('item_meanings').insert(meaningsToInsert.slice(i, i + 200));
    }
  }

  // Batch insert readings
  if (readingsToInsert.length > 0) {
    for (let i = 0; i < readingsToInsert.length; i += 200) {
      await supabase.from('item_readings').insert(readingsToInsert.slice(i, i + 200));
    }
  }

  // Batch insert context sentences
  if (sentencesToInsert.length > 0) {
    for (let i = 0; i < sentencesToInsert.length; i += 200) {
      await supabase.from('item_context_sentences').insert(sentencesToInsert.slice(i, i + 200));
    }
  }

  // Collect all parent component subject IDs
  const missingComponentWkIds = [];
  [...kanjis, ...vocabs].forEach(item => {
    if (item.data.component_subject_ids) {
      item.data.component_subject_ids.forEach(pId => {
        if (!wkIdToDbId[pId]) missingComponentWkIds.push(pId);
      });
    }
  });

  if (missingComponentWkIds.length > 0) {
    await bulkFetchWkSubjects(missingComponentWkIds);
  }

  // Batch lookup missing parent characters in database
  const missingCharsSet = new Set();
  [...kanjis, ...vocabs].forEach(item => {
    if (item.data.component_subject_ids) {
      item.data.component_subject_ids.forEach(pId => {
        if (!wkIdToDbId[pId]) {
          const parentData = wkSubjectCache[pId];
          if (parentData) {
            const char = parentData.characters || `/radicals/${parentData.slug}.svg`;
            missingCharsSet.add(char);
          }
        }
      });
    }
  });

  const parentCharToDbId = {};
  const missingCharsArr = Array.from(missingCharsSet);
  if (missingCharsArr.length > 0) {
    for (let i = 0; i < missingCharsArr.length; i += 200) {
      const chunk = missingCharsArr.slice(i, i + 200);
      const { data } = await supabase.from('items').select('id, character').in('character', chunk);
      if (data) {
        data.forEach(row => {
          parentCharToDbId[row.character] = row.id;
        });
      }
    }
  }

  // Prepare Prerequisites
  const prereqPayload = [];

  for (const k of kanjis) {
    const kanjiDbId = wkIdToDbId[k.id];
    if (k.data.component_subject_ids) {
      for (const parentWkId of k.data.component_subject_ids) {
        let parentDbId = wkIdToDbId[parentWkId];
        if (!parentDbId) {
          const parentData = wkSubjectCache[parentWkId];
          if (parentData) {
            const char = parentData.characters || `/radicals/${parentData.slug}.svg`;
            parentDbId = parentCharToDbId[char];
          }
        }
        if (parentDbId) {
          prereqPayload.push({ item_id: kanjiDbId, requires_item_id: parentDbId });
        }
      }
    }
  }

  for (const v of vocabs) {
    const vocabDbId = wkIdToDbId[v.id];
    if (v.data.component_subject_ids) {
      for (const parentWkId of v.data.component_subject_ids) {
        let parentDbId = wkIdToDbId[parentWkId];
        if (!parentDbId) {
          const parentData = wkSubjectCache[parentWkId];
          if (parentData) {
            const char = parentData.characters;
            parentDbId = parentCharToDbId[char];
          }
        }
        if (parentDbId) {
          prereqPayload.push({ item_id: vocabDbId, requires_item_id: parentDbId });
        }
      }
    }
  }

  if (prereqPayload.length > 0) {
    for (let i = 0; i < prereqPayload.length; i += 200) {
      await supabase.from('item_prerequisites').insert(prereqPayload.slice(i, i + 200));
    }
  }

  // Generate & Save SQL File
  try {
    generateAndSaveSqlFile(level, radicals, kanjis, vocabs, wkIdToDbId, wkSubjectCache);
  } catch (sqlErr) {
    console.warn(`Failed to generate SQL file for level ${level}:`, sqlErr.message);
  }

  console.log(`✅ SEEDED LEVEL ${level} WITH INDONESIAN SLUGS INTO SUPABASE!`);
}

function escapeSqlStr(str) {
  if (!str) return '';
  return String(str).replace(/'/g, "''");
}

function generateAndSaveSqlFile(level, radicals, kanjis, vocabs, wkIdToDbId, wkSubjectCache) {
  const lines = [];
  lines.push(`-- ====================================================`);
  lines.push(`-- KaniGani — Seed Data Level ${level} (v2, relasional)`);
  lines.push(`-- Auto-generated with Indonesian Slugs`);
  lines.push(`-- ====================================================`);
  lines.push(``);
  lines.push(`DO $$`);
  lines.push(`DECLARE`);

  const radVars = radicals.map(r => {
    const primaryIdMeaning = r.data.meanings.find(m => m.primary)?.meaning_id || r.data.meanings[0].meaning_id || r.data.slug;
    const slug = toIndonesianSlug(primaryIdMeaning).replace(/-/g, '_');
    return { id: r.id, varName: `r_${r.id}_${slug}` };
  });

  const kanjiVars = kanjis.map(k => {
    const primaryIdMeaning = k.data.meanings.find(m => m.primary)?.meaning_id || k.data.meanings[0].meaning_id || k.data.slug;
    const slug = toIndonesianSlug(primaryIdMeaning).replace(/-/g, '_');
    return { id: k.id, varName: `k_${k.id}_${slug}` };
  });

  const vocabVars = vocabs.map(v => {
    const primaryIdMeaning = v.data.meanings.find(m => m.primary)?.meaning_id || v.data.meanings[0].meaning_id || v.data.slug;
    const slug = toIndonesianSlug(primaryIdMeaning).replace(/-/g, '_');
    return { id: v.id, varName: `v_${v.id}_${slug}` };
  });

  if (radVars.length > 0) {
    lines.push(`  -- ============ RADICAL IDs (Level ${level}) ============`);
    lines.push(`  ` + radVars.map(r => `${r.varName} UUID;`).join(' '));
  }
  if (kanjiVars.length > 0) {
    lines.push(`  -- ============ KANJI IDs (Level ${level}) ============`);
    lines.push(`  ` + kanjiVars.map(k => `${k.varName} UUID;`).join(' '));
  }
  if (vocabVars.length > 0) {
    lines.push(`  -- ============ VOCABULARY IDs (Level ${level}) ============`);
    lines.push(`  ` + vocabVars.map(v => `${v.varName} UUID;`).join(' '));
  }

  lines.push(``);
  lines.push(`BEGIN`);
  lines.push(``);
  lines.push(`  DELETE FROM items WHERE level = ${level};`);
  lines.push(``);

  // 1. RADICALS
  lines.push(`  -- 1. RADICALS`);
  let pos = 1;
  const radVarMap = {};
  radVars.forEach(v => radVarMap[v.id] = v.varName);

  for (const r of radicals) {
    const char = r.data.characters || `/radicals/${r.data.slug}.svg`;
    const desc = r.data.meaning_mnemonic_id || r.data.meaning_mnemonic || r.data.meanings[0].meaning_id || r.data.meanings[0].meaning;
    const primaryIdMeaning = r.data.meanings.find(m => m.primary)?.meaning_id || r.data.meanings[0].meaning_id || r.data.slug;
    const indoSlug = toIndonesianSlug(primaryIdMeaning);
    const varName = radVarMap[r.id];

    lines.push(`  INSERT INTO items (type, character, slug, level, lesson_position, description)`);
    lines.push(`    VALUES ('radical', '${escapeSqlStr(char)}', '${escapeSqlStr(indoSlug)}', ${level}, ${pos++}, '${escapeSqlStr(desc)}')`);
    lines.push(`    RETURNING id INTO ${varName};`);
  }

  for (const r of radicals) {
    const varName = radVarMap[r.id];
    r.data.meanings.forEach(m => {
      lines.push(`  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (${varName}, '${escapeSqlStr(m.meaning_id || m.meaning)}', ${m.primary}, true);`);
    });
  }

  // 2. KANJIS
  lines.push(``);
  lines.push(`  -- 2. KANJIS`);
  const kanjiVarMap = {};
  kanjiVars.forEach(v => kanjiVarMap[v.id] = v.varName);

  for (const k of kanjis) {
    const char = k.data.characters;
    const primaryIdMeaning = k.data.meanings.find(m => m.primary)?.meaning_id || k.data.meanings[0].meaning_id || k.data.slug;
    const indoSlug = toIndonesianSlug(primaryIdMeaning);
    const meanMnem = k.data.meaning_mnemonic_id || k.data.meaning_mnemonic || '';
    const readMnem = k.data.reading_mnemonic_id || k.data.reading_mnemonic || '';
    const varName = kanjiVarMap[k.id];

    lines.push(`  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)`);
    lines.push(`    VALUES ('kanji', '${escapeSqlStr(char)}', '${escapeSqlStr(indoSlug)}', ${level}, ${pos++}, '${escapeSqlStr(meanMnem)}', '${escapeSqlStr(readMnem)}')`);
    lines.push(`    RETURNING id INTO ${varName};`);
  }

  for (const k of kanjis) {
    const varName = kanjiVarMap[k.id];
    k.data.meanings.forEach(m => {
      lines.push(`  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (${varName}, '${escapeSqlStr(m.meaning_id || m.meaning)}', ${m.primary}, true);`);
    });
    k.data.readings.forEach(r => {
      lines.push(`  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (${varName}, '${escapeSqlStr(r.reading)}', ${r.primary}, '${escapeSqlStr(r.type)}');`);
    });
  }

  // 3. VOCABULARIES
  lines.push(``);
  lines.push(`  -- 3. VOCABULARIES`);
  const vocabVarMap = {};
  vocabVars.forEach(v => vocabVarMap[v.id] = v.varName);

  for (const v of vocabs) {
    const char = v.data.characters;
    const primaryIdMeaning = v.data.meanings.find(m => m.primary)?.meaning_id || v.data.meanings[0].meaning_id || v.data.slug;
    const indoSlug = toIndonesianSlug(primaryIdMeaning);
    const meanMnem = v.data.meaning_mnemonic_id || v.data.meaning_mnemonic || '';
    const readMnem = v.data.reading_mnemonic_id || v.data.reading_mnemonic || '';
    const varName = vocabVarMap[v.id];

    lines.push(`  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)`);
    lines.push(`    VALUES ('vocabulary', '${escapeSqlStr(char)}', '${escapeSqlStr(indoSlug)}', ${level}, ${pos++}, '${escapeSqlStr(meanMnem)}', '${escapeSqlStr(readMnem)}')`);
    lines.push(`    RETURNING id INTO ${varName};`);
  }

  for (const v of vocabs) {
    const varName = vocabVarMap[v.id];
    v.data.meanings.forEach(m => {
      lines.push(`  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (${varName}, '${escapeSqlStr(m.meaning_id || m.meaning)}', ${m.primary}, true);`);
    });
    v.data.readings.forEach(r => {
      lines.push(`  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (${varName}, '${escapeSqlStr(r.reading)}', ${r.primary});`);
    });
    if (v.data.context_sentences) {
      v.data.context_sentences.forEach(s => {
        lines.push(`  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (${varName}, '${escapeSqlStr(s.ja)}', '${escapeSqlStr(s.id || s.en || '')}');`);
      });
    }
  }

  // 4. PREREQUISITES
  lines.push(``);
  lines.push(`  -- 4. PREREQUISITES`);
  for (const k of kanjis) {
    const childVar = kanjiVarMap[k.id];
    if (k.data.component_subject_ids) {
      for (const parentWkId of k.data.component_subject_ids) {
        const parentVar = radVarMap[parentWkId] || kanjiVarMap[parentWkId] || vocabVarMap[parentWkId];
        if (parentVar) {
          lines.push(`  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (${childVar}, ${parentVar});`);
        } else {
          const parentData = wkSubjectCache[parentWkId];
          if (parentData) {
            const char = parentData.characters || `/radicals/${parentData.slug}.svg`;
            lines.push(`  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT ${childVar}, id FROM items WHERE character = '${escapeSqlStr(char)}' LIMIT 1;`);
          }
        }
      }
    }
  }

  for (const v of vocabs) {
    const childVar = vocabVarMap[v.id];
    if (v.data.component_subject_ids) {
      for (const parentWkId of v.data.component_subject_ids) {
        const parentVar = radVarMap[parentWkId] || kanjiVarMap[parentWkId] || vocabVarMap[parentWkId];
        if (parentVar) {
          lines.push(`  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (${childVar}, ${parentVar});`);
        } else {
          const parentData = wkSubjectCache[parentWkId];
          if (parentData) {
            const char = parentData.characters;
            lines.push(`  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT ${childVar}, id FROM items WHERE character = '${escapeSqlStr(char)}' LIMIT 1;`);
          }
        }
      }
    }
  }

  lines.push(``);
  lines.push(`END $$;`);

  const sqlPath = path.join(__dirname, '..', 'sql', `seed_level${level}.sql`);
  fs.writeFileSync(sqlPath, lines.join('\n'), 'utf8');
  console.log(`Saved SQL file: ${sqlPath}`);
}

async function main() {
  const startLevel = parseInt(process.argv[2] || '46', 10);
  const endLevel = parseInt(process.argv[3] || process.argv[2] || '60', 10);

  for (let l = startLevel; l <= endLevel; l++) {
    await seedLevel(l);
  }
}

main().catch(err => {
  console.error('Fatal error during seeding:', err);
  process.exit(1);
});

