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

async function test() {
  const sql = `
    CREATE TEMP TABLE test_temp (id INT, val TEXT);
    INSERT INTO test_temp VALUES (1, 'hello'), (2, 'world');
  `;
  
  console.log('Executing test SQL via exec_sql RPC...');
  const { data, error } = await supabase.rpc('exec_sql', { query_text: sql });
  if (error) {
    console.error('RPC Error:', error);
  } else {
    console.log('Success!', data);
  }
}

test();
