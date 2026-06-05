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
  const email = `testuser${Math.floor(Math.random()*100000)}@gmail.com`;
  const username = `testuser${Math.floor(Math.random()*100000)}`;
  const password = 'Password123!';

  console.log(`Registering user ${email} / ${username}...`);
  const { data, error } = await supabase.auth.signUp({
    email,
    password,
    options: {
      data: {
        username
      }
    }
  });

  if (error) {
    console.error('Registration failed:', error);
  } else {
    console.log('Registration success! User ID:', data.user.id);
    
    // Now let's query the user_progress table for this user!
    // Since RLS is enabled, we'll query via exception/RPC
    const wrapperSql = `
      DO $$
      DECLARE
        v_res TEXT;
      BEGIN
        SELECT coalesce(json_agg(t)::text, '[]')
        FROM (
          SELECT up.item_id, i.character, i.slug, up.srs_stage
          FROM public.user_progress up
          JOIN public.items i ON up.item_id = i.id
          WHERE up.user_id = '${data.user.id}'
        ) t INTO v_res;
        RAISE EXCEPTION 'JSON_RESULT:%', v_res;
      END;
      $$;
    `;
    
    const { error: rpcErr } = await supabase.rpc('exec_sql', { query_text: wrapperSql });
    if (rpcErr && rpcErr.message && rpcErr.message.includes('JSON_RESULT:')) {
      const jsonStr = rpcErr.message.split('JSON_RESULT:')[1];
      const res = JSON.parse(jsonStr);
      console.log(`New user progress rows count: ${res.length}`);
      const unlocked = res.filter(r => r.srs_stage === 1);
      console.log(`New user unlocked items count: ${unlocked.length}`);
      console.log('New user unlocked items:', unlocked.slice(0, 5));
    } else {
      console.error('RPC Error:', rpcErr);
    }
  }
}

run();
