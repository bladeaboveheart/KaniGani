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

const updates = JSON.parse(fs.readFileSync('scratch/final_proposed_updates_10_12.json', 'utf8'));

console.log(`Starting execution for ${updates.length} items (Level 10-12)...`);

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

  // 4. Upsert synonyms
  if (u.synonyms && u.synonyms.length > 0) {
    for (const syn of u.synonyms) {
      const synEsc = escapeSql(syn);
      sql += `  SELECT id INTO v_meaning_id FROM item_meanings WHERE item_id = v_item_id AND LOWER(TRIM(meaning)) = LOWER(TRIM('${synEsc}')) LIMIT 1;\n`;
      sql += `  IF v_meaning_id IS NOT NULL THEN\n`;
      sql += `    UPDATE item_meanings SET accepted_answer = true WHERE id = v_meaning_id;\n`;
      sql += `  ELSE\n`;
      sql += `    INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_item_id, '${synEsc}', false, true);\n`;
      sql += `  END IF;\n`;
    }
  }

  sql += `END $$;\n\n`;
  return sql;
}

async function runQuery(query) {
  const res = await fetch(`https://api.supabase.com/v1/projects/${ref}/database/query`, {
    method: 'POST',
    headers: {
      'Authorization': `Bearer ${token}`,
      'Content-Type': 'application/json'
    },
    body: JSON.stringify({ query })
  });
  if (!res.ok) {
    const txt = await res.text();
    throw new Error(`HTTP ${res.status}: ${txt}`);
  }
  return await res.json();
}

async function main() {
  const batchSize = 25;
  const totalBatches = Math.ceil(updates.length / batchSize);

  for (let i = 0; i < totalBatches; i++) {
    const chunk = updates.slice(i * batchSize, (i + 1) * batchSize);
    console.log(`Executing batch ${i + 1}/${totalBatches} (${chunk.length} items)...`);
    
    let sql = `BEGIN;\n`;
    for (const item of chunk) {
      sql += generateBlock(item);
    }
    sql += `COMMIT;\n`;

    await runQuery(sql);
    console.log(`✓ Batch ${i + 1} executed successfully.`);
  }

  console.log(`\nAll ${updates.length} items updated! Now verifying updates against database...`);

  // Verification
  const checkIds = updates.map(u => `'${u.id}'`).join(',');
  const verifyQuery = `
    SELECT 
      i.id,
      i.character,
      i.slug,
      m.meaning AS primary_meaning
    FROM items i
    JOIN item_meanings m ON m.item_id = i.id AND m.primary_meaning = true
    WHERE i.id IN (${checkIds});
  `;
  const result = await runQuery(verifyQuery);
  console.log(`Verified ${result.length} items from database.`);

  const resultMap = new Map(result.map(r => [r.id, r]));
  let mismatchCount = 0;

  for (const u of updates) {
    const row = resultMap.get(u.id);
    if (!row) {
      console.error(`✗ Item ${u.character} (${u.id}) not found with primary meaning!`);
      mismatchCount++;
      continue;
    }
    if (row.slug !== u.newSlug || row.primary_meaning.toLowerCase() !== u.newMeaning.toLowerCase()) {
      console.error(`✗ Item ${u.character} mismatch! Expected slug "${u.newSlug}", got "${row.slug}". Expected meaning "${u.newMeaning}", got "${row.primary_meaning}".`);
      mismatchCount++;
    }
  }

  if (mismatchCount === 0) {
    console.log(`\n🎉 SUCCESS! All ${updates.length} items (Level 10-12) verified 100% matching new slugs and natural primary meanings!`);
  } else {
    console.warn(`\n⚠️ Finished with ${mismatchCount} mismatches.`);
  }
}

main().catch(err => {
  console.error('Fatal error during execution:', err);
  process.exit(1);
});
