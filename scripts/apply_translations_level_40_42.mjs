import fs from 'fs';

// Read token from environment or from global mcp_config.json if running locally
let token = process.env.SUPABASE_ACCESS_TOKEN;
if (!token) {
  try {
    const mcpConfig = JSON.parse(fs.readFileSync('C:/Users/Gany/.gemini/config/mcp_config.json', 'utf8'));
    const authHeader = mcpConfig?.mcpServers?.supabase?.headers?.Authorization;
    if (authHeader?.startsWith('Bearer ')) {
      token = authHeader.replace('Bearer ', '').trim();
    }
  } catch (e) {
    // ignore
  }
}

const ref = process.env.SUPABASE_PROJECT_ID || 'stscynyhbalcudgtwkie';

if (!token) {
  console.error('SUPABASE_ACCESS_TOKEN environment variable is required');
  process.exit(1);
}

const updates = JSON.parse(fs.readFileSync('scratch/final_proposed_updates_40_42.json', 'utf8'));

console.log(`Starting execution for ${updates.length} items (Level 40-42)...`);

function escapeSql(str) {
  return str.replace(/'/g, "''");
}

function generateBlock(u) {
  const itemId = u.id;
  const newSlug = escapeSql(u.newSlug);
  const newMeaning = escapeSql(u.newMeaning);
  
  let sql = `-- [${u.type.toUpperCase()}] ${u.character} (Level ${u.level})\n`;
  sql += `DO $$\n`;
  sql += `DECLARE\n`;
  sql += `  v_item_id uuid := '${itemId}'::uuid;\n`;
  sql += `  v_meaning_id uuid;\n`;
  sql += `BEGIN\n`;
  sql += `  -- 1. Update slug\n`;
  sql += `  UPDATE items SET slug = '${newSlug}' WHERE id = v_item_id;\n`;
  sql += `  -- 2. Clear previous primary flag\n`;
  sql += `  UPDATE item_meanings SET primary_meaning = false WHERE item_id = v_item_id;\n`;
  sql += `  -- 3. Upsert primary meaning\n`;
  sql += `  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('${newMeaning}')) LIMIT 1;\n`;
  sql += `  IF v_meaning_id IS NOT NULL THEN\n`;
  sql += `    UPDATE item_meanings SET meaning = '${newMeaning}', primary_meaning = true, accepted_answer = true WHERE id = v_meaning_id;\n`;
  sql += `  ELSE\n`;
  sql += `    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_item_id, '${newMeaning}', true, true);\n`;
  sql += `  END IF;\n`;

  // 4. Upsert synonyms as distinct separate rows
  if (u.synonyms && u.synonyms.length > 0) {
    for (const syn of u.synonyms) {
      const synEsc = escapeSql(syn);
      if (synEsc.toLowerCase() === newMeaning.toLowerCase()) {
        continue;
      }
      sql += `  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('${synEsc}')) LIMIT 1;\n`;
      sql += `  IF v_meaning_id IS NOT NULL THEN\n`;
      sql += `    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;\n`;
      sql += `  ELSE\n`;
      sql += `    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_item_id, '${synEsc}', false, true);\n`;
      sql += `  END IF;\n`;
    }
  }
  
  sql += `END $$;\n`;
  return sql;
}

// Execute in chunks of 25 items
const CHUNK_SIZE = 25;
let successCount = 0;

for (let i = 0; i < updates.length; i += CHUNK_SIZE) {
  const chunk = updates.slice(i, i + CHUNK_SIZE);
  console.log(`Applying chunk ${Math.floor(i / CHUNK_SIZE) + 1}/${Math.ceil(updates.length / CHUNK_SIZE)} (items ${i + 1} to ${Math.min(i + CHUNK_SIZE, updates.length)})...`);
  
  const sql = chunk.map(generateBlock).join('\n');
  
  const res = await fetch(`https://api.supabase.com/v1/projects/${ref}/database/query`, {
    method: 'POST',
    headers: {
      'Authorization': `Bearer ${token}`,
      'Content-Type': 'application/json'
    },
    body: JSON.stringify({ query: sql })
  });

  if (!res.ok) {
    const text = await res.text();
    console.error(`Error applying chunk ${i}:`, res.status, text);
    process.exit(1);
  }
  
  successCount += chunk.length;
}

console.log(`\n🎉 Successfully applied updates to all ${successCount} items across Levels 40-42!`);
