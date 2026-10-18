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
  console.log('=== EXECUTING SUB-BATCH 2B MIGRATIONS (LEVELS 26-30) ===\n');

  for (let part = 6; part <= 10; part++) {
    const level = 20 + part;
    const file = `sql/migration_batch2_part${part}.sql`;
    console.log(`Executing Part ${part} (Level ${level}) from ${file}...`);
    const sql = fs.readFileSync(file, 'utf8');
    const start = Date.now();
    await runQuery(sql);
    const elapsed = ((Date.now() - start) / 1000).toFixed(2);
    console.log(`✓ Part ${part} (Level ${level}) completed in ${elapsed}s.\n`);
  }

  console.log('All 5 parts of Sub-batch 2B executed! Verifying remaining multi-meanings for Levels 26-30...');

  const verifySql = `
    SELECT i.level, count(*) as remaining_count
    FROM items i
    JOIN item_meanings m ON m.item_id = i.id
    WHERE m.primary_meaning = true AND (m.meaning LIKE '%/%' OR m.meaning LIKE '%,%')
      AND i.level >= 26 AND i.level <= 30
    GROUP BY i.level
    ORDER BY i.level;
  `;
  const result = await runQuery(verifySql);
  console.log('Verification result for Levels 26-30:', result);

  const totalRemaining = `
    SELECT count(*) as total_remaining
    FROM items i
    JOIN item_meanings m ON m.item_id = i.id
    WHERE m.primary_meaning = true AND (m.meaning LIKE '%/%' OR m.meaning LIKE '%,%')
      AND i.level >= 1 AND i.level <= 30;
  `;
  const totalRes = await runQuery(totalRemaining);
  console.log('Total remaining multi-meanings in Levels 1-30 (Should be 0):', totalRes);
}

main().catch(err => {
  console.error('Fatal error during migration:', err);
  process.exit(1);
});
