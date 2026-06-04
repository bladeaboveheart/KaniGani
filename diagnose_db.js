const { createClient } = require('@supabase/supabase-js');
const fs = require('fs');
const path = require('path');

// Read env variables manually since dotenv might not be installed
const envContent = fs.readFileSync(path.join(__dirname, '.env.local'), 'utf8');
const env = {};
envContent.split('\n').forEach(line => {
  const parts = line.split('=');
  if (parts.length >= 2) {
    const key = parts[0].trim();
    const val = parts.slice(1).join('=').trim();
    env[key] = val;
  }
});

const supabaseUrl = env.NEXT_PUBLIC_SUPABASE_URL;
const supabaseAnonKey = env.NEXT_PUBLIC_SUPABASE_ANON_KEY;

const supabase = createClient(supabaseUrl, supabaseAnonKey);

async function run() {
  try {
    console.log('Connecting to Supabase...');
    
    // Check items count
    const { data: items, error: itemsErr } = await supabase
      .from('items')
      .select('id, type, character, level, rank_id');
      
    if (itemsErr) {
      console.error('Error fetching items:', itemsErr);
    } else {
      console.log(`Total items in database: ${items.length}`);
      const types = {};
      items.forEach(i => {
        types[i.type] = (types[i.type] || 0) + 1;
      });
      console.log('Items by type:', types);
      
      const unassigned = items.filter(i => !i.rank_id).length;
      console.log(`Items with NULL rank_id: ${unassigned}`);
    }

    // Check ranks count
    const { data: ranks, error: ranksErr } = await supabase
      .from('ranks')
      .select('*')
      .order('sort_order', { ascending: true });
      
    if (ranksErr) {
      console.error('Error fetching ranks:', ranksErr);
    } else {
      console.log(`Total ranks in database: ${ranks.length}`);
      ranks.forEach(r => {
        console.log(`- ${r.name} (ID: ${r.id}, Level: ${r.jlpt_level}, Order: ${r.sort_order})`);
      });
    }

    // Fetch profiles
    const { data: profiles, error: profErr } = await supabase
      .from('profiles')
      .select('*');
      
    if (profErr) {
      console.error('Error fetching profiles:', profErr);
    } else {
      console.log(`Total profiles in database: ${profiles.length}`);
      for (const p of profiles) {
        console.log(`User ID: ${p.id}, Username: ${p.username}`);
        
        // Fetch rank state for this user
        const { data: rankState } = await supabase
          .from('user_rank_state')
          .select('*, ranks(*)')
          .eq('user_id', p.id)
          .maybeSingle();
          
        console.log('  Rank State:', rankState);
        
        // Fetch user progress count
        const { data: progress } = await supabase
          .from('user_progress')
          .select('item_id, srs_stage, next_review')
          .eq('user_id', p.id);
          
        console.log(`  Progress count: ${progress ? progress.length : 0}`);
        if (progress) {
          const stages = {};
          progress.forEach(pr => {
            stages[pr.srs_stage] = (stages[pr.srs_stage] || 0) + 1;
          });
          console.log('  Progress by stage:', stages);
          
          const unlocked = progress.filter(pr => pr.srs_stage === 1 && pr.next_review === null).length;
          console.log(`  Unlocked lessons (srs_stage=1, next_review=null): ${unlocked}`);
        }
      }
    }

  } catch (err) {
    console.error('Diagnostic error:', err);
  }
}

run();
