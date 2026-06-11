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
  const { data: items } = await supabase
    .from('items')
    .select('id, type, character, slug, level');
  
  const { data: meanings } = await supabase
    .from('item_meanings')
    .select('item_id, meaning, primary_meaning');

  const meaningMap = {};
  meanings.forEach(m => {
    if (m.primary_meaning) {
      if (!meaningMap[m.item_id]) meaningMap[m.item_id] = [];
      meaningMap[m.item_id].push(m.meaning);
    }
  });

  const englishItems = items.filter(item => {
    // Check if slug contains only lowercase english letters, dashes, or spaces
    return /^[a-z\s\-]+$/i.test(item.slug);
  });

  console.log(`Found ${englishItems.length} items with English slugs.`);
  englishItems.forEach(item => {
    const primaryMeanings = meaningMap[item.id] || [];
    console.log(`${item.type}|${item.character}|${item.slug}|Lvl ${item.level}|Meanings: ${primaryMeanings.join(', ')}`);
  });
}

run();
