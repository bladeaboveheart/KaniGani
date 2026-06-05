const { createClient } = require('@supabase/supabase-js');
const fs = require('fs');
const path = require('path');

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
  console.log('Testing unified nested select query...');
  const { data, error } = await supabase
    .from('items')
    .select(`
      *,
      item_meanings(*),
      item_readings(*),
      item_context_sentences(*)
    `)
    .eq('type', 'vocabulary')
    .order('lesson_position', { ascending: true })
    .limit(10);
    
  if (error) {
    console.error('Query failed:', error);
  } else {
    console.log('Query succeeded! Sample item:');
    console.log(JSON.stringify(data[0], null, 2));
  }
}

run().catch(console.error);
