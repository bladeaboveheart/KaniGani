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
const SUPABASE_KEY = env.SUPABASE_SERVICE_ROLE_KEY || env.NEXT_PUBLIC_SUPABASE_ANON_KEY;

const supabase = createClient(SUPABASE_URL, SUPABASE_KEY);

async function checkAndCreateHelper() {
  console.log('Ensuring exec_sql helper function exists...');
  const createSql = `
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
  
  try {
    const response = await fetch(`${SUPABASE_URL}/rest/v1/rpc/exec_sql`, {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
        'apikey': SUPABASE_KEY,
        'Authorization': `Bearer ${SUPABASE_KEY}`,
      },
      body: JSON.stringify({ query_text: createSql }),
    });
    
    if (response.ok) {
      console.log('exec_sql helper function verified/created successfully.');
      return true;
    } else {
      const errText = await response.text();
      console.error('Failed to create helper function via direct POST:', errText);
      return false;
    }
  } catch (err) {
    console.error('Error creating helper function:', err.message);
    return false;
  }
}

async function run() {
  const isHelperReady = await checkAndCreateHelper();
  if (!isHelperReady) {
    console.error('Helper function exec_sql is not ready. Aborting.');
    process.exit(1);
  }
  
  const seedPath = path.join(__dirname, '..', 'sql', 'seed_n2.sql');
  if (!fs.existsSync(seedPath)) {
    console.error('seed_n2.sql not found at ' + seedPath);
    process.exit(1);
  }
  
  console.log('Reading seed_n2.sql...');
  const sqlContent = fs.readFileSync(seedPath, 'utf8');
  console.log(`Loaded seed_n2.sql (${(sqlContent.length / (1024 * 1024)).toFixed(2)} MB).`);
  
  // Strip comments first
  const cleanSql = sqlContent.replace(/--.*$/gm, '');
  
  // Split into separate lines/statements
  const statements = cleanSql
    .split(/;\r?\n/)
    .map(s => s.trim())
    .filter(s => s.length > 0);
    
  console.log(`Parsed ${statements.length} SQL statements.`);
  
  const chunkSize = 150;
  const totalChunks = Math.ceil(statements.length / chunkSize);
  console.log(`Executing in ${totalChunks} batches of ${chunkSize} statements each...`);
  
  for (let i = 0; i < statements.length; i += chunkSize) {
    const chunk = statements.slice(i, i + chunkSize);
    const chunkSql = chunk.join(';\n') + ';';
    const batchNum = Math.floor(i / chunkSize) + 1;
    
    process.stdout.write(`Executing batch ${batchNum}/${totalChunks}... `);
    
    const { error } = await supabase.rpc('exec_sql', { query_text: chunkSql });
    if (error) {
      console.log('FAILED');
      console.error(`Error in batch ${batchNum}:`, error);
      console.error('First statement in failed batch:', chunk[0].substring(0, 150));
      process.exit(1);
    } else {
      console.log('OK');
    }
  }
  
  // Cleanup exec_sql helper
  console.log('Cleaning up public.exec_sql helper function...');
  const cleanupSql = `DROP FUNCTION IF EXISTS public.exec_sql(TEXT);`;
  await supabase.rpc('exec_sql', { query_text: cleanupSql });
  console.log('Helper function cleaned up.');
  
  console.log('Database seeding completed successfully for JLPT N2!');
}

run().catch(console.error);
