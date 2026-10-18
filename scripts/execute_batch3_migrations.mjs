import fs from 'fs';

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
  console.error('SUPABASE_ACCESS_TOKEN is required');
  process.exit(1);
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
  console.log('=== EXECUTING BATCH 3 MIGRATIONS (LEVELS 31-39) ===\n');

  for (let part = 1; part <= 9; part++) {
    const level = 30 + part;
    const file = `sql/migration_batch3_part${part}.sql`;
    console.log(`Executing Part ${part} (Level ${level}) from ${file}...`);
    const sql = fs.readFileSync(file, 'utf8');
    const start = Date.now();
    await runQuery(sql);
    const elapsed = ((Date.now() - start) / 1000).toFixed(2);
    console.log(`✓ Part ${part} (Level ${level}) completed in ${elapsed}s.\n`);
  }

  console.log('All 9 parts of Batch 3 executed! Verifying remaining multi-meanings across ENTIRE database (Levels 1-60)...');

  const totalRemaining = `
    SELECT count(*) as total_remaining
    FROM items i
    JOIN item_meanings m ON m.item_id = i.id
    WHERE m.primary_meaning = true AND (m.meaning LIKE '%/%' OR m.meaning LIKE '%,%');
  `;
  const totalRes = await runQuery(totalRemaining);
  console.log('Total remaining multi-meanings in database (Should be 0):', totalRes);
}

main().catch(err => {
  console.error('Fatal error during migration:', err);
  process.exit(1);
});
