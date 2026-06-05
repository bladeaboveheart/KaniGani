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

const supabase = createClient(env.NEXT_PUBLIC_SUPABASE_URL, env.NEXT_PUBLIC_SUPABASE_ANON_KEY);

async function run() {
  const files = [
    'seed_n4_pangkat1.sql',
    'seed_n4_pangkat2.sql',
    'seed_n4_pangkat3.sql',
    'seed_n4_pangkat4.sql',
    'seed_n4_pangkat5.sql',
    'seed_n4_pangkat6.sql'
  ];

  console.log('Starting seed execution...');

  for (const file of files) {
    const filePath = path.join(__dirname, '..', 'sql', file);
    console.log(`Reading ${file}...`);
    
    if (!fs.existsSync(filePath)) {
      console.error(`File not found: ${filePath}`);
      continue;
    }

    const sqlContent = fs.readFileSync(filePath, 'utf8');
    console.log(`Executing ${file} (${(sqlContent.length / 1024).toFixed(1)} KB)...`);

    const { data, error } = await supabase.rpc('exec_sql', { query_text: sqlContent });

    if (error) {
      console.error(`Error executing ${file}:`, error);
      process.exit(1);
    } else {
      console.log(`Successfully completed seeding ${file}!`);
    }
  }

  // Cleanup: Drop the helper function
  console.log('Cleaning up helper function exec_sql...');
  const cleanupSql = `DROP FUNCTION IF EXISTS public.exec_sql(TEXT);`;
  const { error: cleanupError } = await supabase.rpc('exec_sql', { query_text: cleanupSql });
  if (cleanupError) {
    console.error('Warning: Failed to drop helper function:', cleanupError);
  } else {
    console.log('Cleaned up helper function successfully.');
  }

  console.log('All seeds executed successfully!');
}

run().catch(err => {
  console.error('Unexpected error:', err);
  process.exit(1);
});
