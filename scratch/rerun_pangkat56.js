const { createClient } = require('@supabase/supabase-js');
const fs = require('fs');
const path = require('path');

// Read env variables manually
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

const SUPABASE_URL = env.NEXT_PUBLIC_SUPABASE_URL;
const SUPABASE_SERVICE_KEY = env.SUPABASE_SERVICE_ROLE_KEY || env.NEXT_PUBLIC_SUPABASE_ANON_KEY;

const supabase = createClient(SUPABASE_URL, SUPABASE_SERVICE_KEY);

async function execSql(sql) {
  const { data, error } = await supabase.rpc('exec_sql', { query_text: sql });
  if (error) throw error;
  return data;
}

async function createExecSqlFunction() {
  // Use the service role key via direct REST call
  const response = await fetch(`${SUPABASE_URL}/rest/v1/rpc/exec_sql`, {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json',
      'apikey': SUPABASE_SERVICE_KEY,
      'Authorization': `Bearer ${SUPABASE_SERVICE_KEY}`,
    },
    body: JSON.stringify({ query_text: 'SELECT 1' }),
  });
  
  if (!response.ok) {
    // Function doesn't exist, create it
    console.log('exec_sql not found, creating...');
    const createFnSql = `
CREATE OR REPLACE FUNCTION public.exec_sql(query_text TEXT)
RETURNS VOID
LANGUAGE plpgsql
SECURITY DEFINER
AS $$
BEGIN
  EXECUTE query_text;
END;
$$;
`;
    // Use MCP or direct approach
    return false;
  }
  return true;
}

async function runFile(filePath) {
  const sqlContent = fs.readFileSync(filePath, 'utf8');
  console.log(`  Executing ${path.basename(filePath)} (${(sqlContent.length / 1024).toFixed(1)} KB)...`);
  await execSql(sqlContent);
  console.log(`  ✓ Done`);
}

async function main() {
  // First, try to call exec_sql to see if it exists
  try {
    await execSql('SELECT 1');
    console.log('exec_sql function exists.');
  } catch (err) {
    console.error('exec_sql function not found! Please re-create it first.');
    console.error('Run the following SQL in Supabase SQL editor:');
    console.log(`
CREATE OR REPLACE FUNCTION public.exec_sql(query_text TEXT)
RETURNS VOID
LANGUAGE plpgsql
SECURITY DEFINER
AS $$
BEGIN
  EXECUTE query_text;
END;
$$;
    `);
    process.exit(1);
  }

  // Files to re-run
  const sqlDir = path.join(__dirname, '..', 'sql');
  const filesToRun = [
    // Pangkat 5 parts (4 parts)
    'seed_n4_pangkat5_part1.sql',
    'seed_n4_pangkat5_part2.sql',
    'seed_n4_pangkat5_part3.sql',
    'seed_n4_pangkat5_part4.sql',
    // Pangkat 6 parts (5 parts)
    'seed_n4_pangkat6_part1.sql',
    'seed_n4_pangkat6_part2.sql',
    'seed_n4_pangkat6_part3.sql',
    'seed_n4_pangkat6_part4.sql',
    'seed_n4_pangkat6_part5.sql',
  ];

  for (const fileName of filesToRun) {
    const filePath = path.join(sqlDir, fileName);
    if (!fs.existsSync(filePath)) {
      console.log(`Skipping ${fileName} (not found)`);
      continue;
    }
    try {
      await runFile(filePath);
    } catch (err) {
      console.error(`Error in ${fileName}:`, err.message);
      console.error('Stopping.');
      process.exit(1);
    }
  }

  console.log('\n✅ Pangkat 5 and 6 re-seeding complete!');
}

main().catch(err => {
  console.error('Fatal error:', err);
  process.exit(1);
});
