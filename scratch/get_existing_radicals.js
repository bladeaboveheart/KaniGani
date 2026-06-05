const { createClient } = require('@supabase/supabase-js');
const fs = require('fs');
const path = require('path');

const envContent = fs.readFileSync(path.join(__dirname, '../.env.local'), 'utf8');
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
  const { data: radicals, error } = await supabase
    .from('items')
    .select('character, slug')
    .eq('type', 'radical');
    
  if (error) {
    console.error(error);
    return;
  }
  
  console.log('Existing Radicals count:', radicals.length);
  console.log('Existing Radicals:', JSON.stringify(radicals));
}
run();
