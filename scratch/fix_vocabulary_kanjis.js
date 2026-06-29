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

async function run() {
  console.log('Fetching all Kanji items...');
  let kanjis = [];
  let page = 0;
  const limit = 1000;
  while (true) {
    const { data, error } = await supabase
      .from('items')
      .select('id, character')
      .eq('type', 'kanji')
      .range(page * limit, (page + 1) * limit - 1);

    if (error) {
      console.error('Error fetching kanjis:', error);
      return;
    }
    if (!data || data.length === 0) break;
    kanjis = kanjis.concat(data);
    if (data.length < limit) break;
    page++;
  }
  console.log(`Found ${kanjis.length} Kanji in DB.`);

  // Map of character -> id
  const kanjiMap = {};
  kanjis.forEach(k => {
    kanjiMap[k.character] = k.id;
  });

  console.log('Fetching all Vocabulary items...');
  let vocabs = [];
  page = 0;
  while (true) {
    const { data, error } = await supabase
      .from('items')
      .select('id, character')
      .eq('type', 'vocabulary')
      .range(page * limit, (page + 1) * limit - 1);

    if (error) {
      console.error('Error fetching vocabs:', error);
      return;
    }
    if (!data || data.length === 0) break;
    vocabs = vocabs.concat(data);
    if (data.length < limit) break;
    page++;
  }
  console.log(`Found ${vocabs.length} Vocabulary in DB.`);

  console.log('Fetching current vocabulary_kanjis links...');
  let currentLinks = [];
  page = 0;
  while (true) {
    const { data, error } = await supabase
      .from('vocabulary_kanjis')
      .select('vocabulary_id, kanji_id')
      .range(page * limit, (page + 1) * limit - 1);

    if (error) {
      console.error('Error fetching current links:', error);
      return;
    }
    if (!data || data.length === 0) break;
    currentLinks = currentLinks.concat(data);
    if (data.length < limit) break;
    page++;
  }
  console.log(`Found ${currentLinks.length} current links.`);

  // Create set of existing links "vocabId:kanjiId"
  const existingLinks = new Set();
  currentLinks.forEach(link => {
    existingLinks.add(`${link.vocabulary_id}:${link.kanji_id}`);
  });

  // Analyze each vocabulary to see what kanji it contains
  const missingLinks = [];
  const invalidLinks = [];

  // Map to check which links are valid
  const validLinks = new Set();

  vocabs.forEach(vocab => {
    // Find all kanjis present in this vocabulary characters string
    const chars = Array.from(vocab.character);
    const containedKanjiIds = [];
    
    chars.forEach(char => {
      const kanjiId = kanjiMap[char];
      if (kanjiId) {
        containedKanjiIds.push(kanjiId);
        validLinks.add(`${vocab.id}:${kanjiId}`);

        const linkKey = `${vocab.id}:${kanjiId}`;
        if (!existingLinks.has(linkKey)) {
          missingLinks.push({
            vocabulary_id: vocab.id,
            kanji_id: kanjiId,
            vocabChar: vocab.character,
            kanjiChar: char
          });
        }
      }
    });
  });

  // Identify any invalid links currently in the DB (links that don't match characters in the vocabulary word)
  currentLinks.forEach(link => {
    const key = `${link.vocabulary_id}:${link.kanji_id}`;
    if (!validLinks.has(key)) {
      invalidLinks.push(link);
    }
  });

  console.log(`\nAnalysis complete.`);
  console.log(`- Missing links to insert: ${missingLinks.length}`);
  console.log(`- Invalid links to delete: ${invalidLinks.length}`);

  // Print some examples of missing links
  if (missingLinks.length > 0) {
    console.log('\nExamples of missing links:');
    missingLinks.slice(0, 15).forEach(m => {
      console.log(`  - Vocabulary "${m.vocabChar}" is missing link to Kanji "${m.kanjiChar}"`);
    });
  }

  // Perform inserts for missing links in chunks
  if (missingLinks.length > 0) {
    console.log(`\nInserting ${missingLinks.length} missing links into vocabulary_kanjis...`);
    const chunkSize = 100;
    let insertedCount = 0;
    
    for (let i = 0; i < missingLinks.length; i += chunkSize) {
      const chunk = missingLinks.slice(i, i + chunkSize).map(m => ({
        vocabulary_id: m.vocabulary_id,
        kanji_id: m.kanji_id
      }));

      const { error } = await supabase
        .from('vocabulary_kanjis')
        .insert(chunk);

      if (error) {
        console.error(`Error inserting chunk at index ${i}:`, error.message);
      } else {
        insertedCount += chunk.length;
      }
    }
    console.log(`Successfully inserted ${insertedCount} missing links into vocabulary_kanjis.`);

    console.log(`Inserting missing links into item_prerequisites...`);
    let prereqCount = 0;
    for (let i = 0; i < missingLinks.length; i += chunkSize) {
      const chunk = missingLinks.slice(i, i + chunkSize).map(m => ({
        item_id: m.vocabulary_id,
        requires_item_id: m.kanji_id
      }));

      const { error } = await supabase
        .from('item_prerequisites')
        .insert(chunk);

      if (error) {
        console.error(`Error inserting prerequisites chunk at index ${i}:`, error.message);
      } else {
        prereqCount += chunk.length;
      }
    }
    console.log(`Successfully inserted ${prereqCount} missing links into item_prerequisites.`);
  }

  // Perform deletes for invalid links
  if (invalidLinks.length > 0) {
    console.log(`\nDeleting ${invalidLinks.length} invalid links...`);
    let deletedCount = 0;
    
    for (const link of invalidLinks) {
      const { error } = await supabase
        .from('vocabulary_kanjis')
        .delete()
        .eq('vocabulary_id', link.vocabulary_id)
        .eq('kanji_id', link.kanji_id);

      if (error) {
        console.error(`Error deleting link ${link.vocabulary_id}:${link.kanji_id}:`, error.message);
      } else {
        deletedCount++;
      }
    }
    console.log(`Successfully deleted ${deletedCount} invalid links.`);
  }

  // Generate SQL migration file
  console.log('\nGenerating SQL migration file...');
  let sql = '-- Migration to fix missing and invalid vocabulary_kanjis links\n\n';
  
  if (missingLinks.length > 0) {
    sql += '-- Missing links to insert into vocabulary_kanjis and item_prerequisites\n';
    missingLinks.forEach(m => {
      sql += `INSERT INTO vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('${m.vocabulary_id}', '${m.kanji_id}') ON CONFLICT DO NOTHING; -- vocab: ${m.vocabChar}, kanji: ${m.kanjiChar}\n`;
      sql += `INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES ('${m.vocabulary_id}', '${m.kanji_id}') ON CONFLICT DO NOTHING;\n`;
    });
    sql += '\n';
  }

  if (invalidLinks.length > 0) {
    sql += '-- Invalid links to delete\n';
    invalidLinks.forEach(m => {
      sql += `DELETE FROM vocabulary_kanjis WHERE vocabulary_id = '${m.vocabulary_id}' AND kanji_id = '${m.kanji_id}';\n`;
    });
  }

  const sqlPath = path.join(__dirname, '..', 'sql', 'fix_vocabulary_kanjis.sql');
  fs.writeFileSync(sqlPath, sql, 'utf8');
  console.log(`Successfully generated SQL migration at: ${sqlPath}`);
}

run().catch(console.error);
