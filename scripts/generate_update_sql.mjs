import fs from 'fs';

const updates = JSON.parse(fs.readFileSync('scratch/final_proposed_updates.json', 'utf8'));

console.log(`Generating SQL for ${updates.length} items...`);

function escapeSql(str) {
  return str.replace(/'/g, "''");
}

let sql = `-- Migration: Naturalize translations and slugs for Level 1 to 3 items\nBEGIN;\n\n`;

for (const u of updates) {
  const itemId = u.id;
  const newSlug = escapeSql(u.newSlug);
  const newMeaning = escapeSql(u.newMeaning);
  
  sql += `-- [${u.type.toUpperCase()}] ${u.character} (Level ${u.level})\n`;
  sql += `DO $$\n`;
  sql += `DECLARE\n`;
  sql += `  v_item_id uuid := '${itemId}'::uuid;\n`;
  sql += `  v_meaning_id uuid;\n`;
  sql += `BEGIN\n`;
  sql += `  -- Update slug\n`;
  sql += `  UPDATE items SET slug = '${newSlug}' WHERE id = v_item_id;\n\n`;
  sql += `  -- Reset existing primary flags for this item\n`;
  sql += `  UPDATE item_meanings SET primary_meaning = false WHERE item_id = v_item_id;\n\n`;
  sql += `  -- Check if new primary meaning already exists\n`;
  sql += `  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('${newMeaning}')) LIMIT 1;\n`;
  sql += `  IF v_meaning_id IS NOT NULL THEN\n`;
  sql += `    UPDATE item_meanings SET meaning = '${newMeaning}', primary_meaning = true, accepted_answer = true WHERE id = v_meaning_id;\n`;
  sql += `  ELSE\n`;
  sql += `    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)\n`;
  sql += `    VALUES (v_item_id, '${newMeaning}', true, true);\n`;
  sql += `  END IF;\n\n`;

  // Insert synonyms
  if (u.synonyms && u.synonyms.length > 0) {
    for (const syn of u.synonyms) {
      const synEsc = escapeSql(syn);
      sql += `  -- Synonym: ${synEsc}\n`;
      sql += `  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('${synEsc}')) LIMIT 1;\n`;
      sql += `  IF v_meaning_id IS NOT NULL THEN\n`;
      sql += `    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;\n`;
      sql += `  ELSE\n`;
      sql += `    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer)\n`;
      sql += `    VALUES (v_item_id, '${synEsc}', false, true);\n`;
      sql += `  END IF;\n`;
    }
  }

  sql += `END $$;\n\n`;
}

sql += `COMMIT;\n`;

fs.writeFileSync('scripts/update_level_1_3_translations.sql', sql, 'utf8');
console.log('Saved to scripts/update_level_1_3_translations.sql');
