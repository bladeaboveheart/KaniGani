import https from 'https';
import fs from 'fs';
import path from 'path';

// 1. Load WANIKANI_API_TOKEN from .env.local
const envPath = path.resolve(process.cwd(), '.env.local');
const envContent = fs.readFileSync(envPath, 'utf8');
const env = {};
for (const line of envContent.split('\n')) {
  const match = line.match(/^\s*([\w.-]+)\s*=\s*(.*)?\s*$/);
  if (match) {
    let val = match[2] || '';
    if (val.startsWith('"') && val.endsWith('"')) val = val.slice(1, -1);
    env[match[1]] = val.trim();
  }
}

const wkToken = env.WANIKANI_API_TOKEN;
if (!wkToken) {
  console.error('WANIKANI_API_TOKEN is missing in .env.local');
  process.exit(1);
}

// 2. Load Supabase Token
let supabaseToken = process.env.SUPABASE_ACCESS_TOKEN;
if (!supabaseToken) {
  try {
    const homeDir = process.env.USERPROFILE || process.env.HOME || 'C:\\Users\\Gany';
    const mcpConfigPath = path.join(homeDir, '.gemini', 'config', 'mcp_config.json');
    if (fs.existsSync(mcpConfigPath)) {
      const mcp = JSON.parse(fs.readFileSync(mcpConfigPath, 'utf8'));
      const authHeader = mcp?.mcpServers?.supabase?.headers?.Authorization || '';
      supabaseToken = authHeader.replace(/^Bearer\s+/i, '').trim();
    }
  } catch (err) {
    console.warn('Could not read token from mcp_config.json:', err.message);
  }
}

const projectId = process.env.SUPABASE_PROJECT_ID || 'stscynyhbalcudgtwkie';

if (!supabaseToken) {
  console.error('SUPABASE_ACCESS_TOKEN could not be loaded');
  process.exit(1);
}

function fetchJson(url) {
  return new Promise((resolve, reject) => {
    https.get(url, {
      headers: {
        'Authorization': 'Bearer ' + wkToken,
        'Wanikani-Revision': '20170710'
      }
    }, res => {
      let data = '';
      res.on('data', chunk => data += chunk);
      res.on('end', () => {
        try {
          resolve(JSON.parse(data));
        } catch (e) {
          reject(new Error('Failed to parse JSON: ' + data.slice(0, 100)));
        }
      });
    }).on('error', reject);
  });
}

async function runSql(query) {
  const res = await fetch(`https://api.supabase.com/v1/projects/${projectId}/database/query`, {
    method: 'POST',
    headers: {
      'Authorization': `Bearer ${supabaseToken}`,
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

async function fetchAllWkVocabulary() {
  console.log('Fetching vocabulary & kana_vocabulary subjects from WaniKani API v2...');
  let url = 'https://api.wanikani.com/v2/subjects?types=vocabulary,kana_vocabulary';
  const subjects = [];

  while (url) {
    const res = await fetchJson(url);
    if (res.data) {
      subjects.push(...res.data);
    }
    url = res.pages?.next_url || null;
    process.stdout.write(`  Loaded ${subjects.length} subjects...\r`);
  }
  console.log(`\nSuccessfully fetched ${subjects.length} vocabulary subjects from WaniKani.`);
  return subjects;
}

function escapeSql(str) {
  return str.replace(/'/g, "''");
}

async function main() {
  console.log('=== SYNC WANIKANI PARTS OF SPEECH TO SUPABASE ===\n');

  // 1. Fetch all vocabulary subjects from WaniKani
  const subjects = await fetchAllWkVocabulary();

  // 2. Filter subjects that have parts_of_speech
  const validItems = [];
  const uniquePosSet = new Set();

  for (const s of subjects) {
    const pos = s.data?.parts_of_speech;
    if (Array.isArray(pos) && pos.length > 0) {
      validItems.push({
        wkId: s.id,
        characters: s.data.characters,
        parts_of_speech: pos
      });
      pos.forEach(p => uniquePosSet.add(p));
    }
  }

  console.log(`Found ${validItems.length} vocabulary items with parts_of_speech.`);
  console.log(`Unique parts_of_speech in WaniKani:`, Array.from(uniquePosSet).sort());

  // 3. Batch update Supabase using Postgres VALUES in chunks of 200
  const CHUNK_SIZE = 200;
  const totalChunks = Math.ceil(validItems.length / CHUNK_SIZE);
  console.log(`\nUpdating Supabase in ${totalChunks} batches (${CHUNK_SIZE} items/batch)...`);

  let totalUpdated = 0;
  for (let i = 0; i < totalChunks; i++) {
    const chunk = validItems.slice(i * CHUNK_SIZE, (i + 1) * CHUNK_SIZE);

    const valuesList = chunk.map(item => {
      const posArraySql = `ARRAY[${item.parts_of_speech.map(p => `'${escapeSql(p)}'`).join(', ')}]::text[]`;
      return `(${item.wkId}, ${posArraySql})`;
    }).join(',\n');

    const sql = `
      UPDATE items AS i
      SET parts_of_speech = v.pos
      FROM (VALUES
        ${valuesList}
      ) AS v(wk_id, pos)
      WHERE i.wanikani_id = v.wk_id;
    `;

    await runSql(sql);
    totalUpdated += chunk.length;
    process.stdout.write(`  Processed batch ${i + 1}/${totalChunks} (${totalUpdated}/${validItems.length} items)...\r`);
  }

  console.log(`\n\nVerifying database update results...`);
  const verifyRes = await runSql(`
    SELECT count(*) AS total_with_pos
    FROM items
    WHERE parts_of_speech IS NOT NULL;
  `);
  console.log('Items in database with parts_of_speech:', verifyRes[0]?.total_with_pos);

  // Sample check
  const sampleRes = await runSql(`
    SELECT character, type, parts_of_speech
    FROM items
    WHERE character IN ('落とす', '落ちる', '美しい', '静か', '猫')
    ORDER BY character;
  `);
  console.log('\nSample items in database:');
  console.table(sampleRes);

  console.log('\n=== SYNC COMPLETED SUCCESSFULLY ===');
}

main().catch(err => {
  console.error('\nSync failed:', err);
  process.exit(1);
});
