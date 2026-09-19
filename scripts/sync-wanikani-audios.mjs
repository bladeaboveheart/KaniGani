import fs from 'fs';
import path from 'path';
import https from 'https';
import { createClient } from '@supabase/supabase-js';

// Load .env.local
const envContent = fs.readFileSync('.env.local', 'utf8');
const env = {};
for (const line of envContent.split('\n')) {
  const match = line.match(/^\s*([\w.-]+)\s*=\s*(.*)?\s*$/);
  if (match) {
    let val = match[2] || '';
    if (val.startsWith('"') && val.endsWith('"')) val = val.slice(1, -1);
    env[match[1]] = val.trim();
  }
}

const supabaseUrl = env.NEXT_PUBLIC_SUPABASE_URL;
const supabaseKey = env.NEXT_PUBLIC_SUPABASE_ANON_KEY;
const wkToken = env.WANIKANI_API_TOKEN;

if (!supabaseUrl || !supabaseKey || !wkToken) {
  console.error('Missing configuration in .env.local');
  process.exit(1);
}

const supabase = createClient(supabaseUrl, supabaseKey);

function fetchJson(url) {
  return new Promise((resolve, reject) => {
    https.get(url, {
      headers: {
        'Authorization': 'Bearer ' + wkToken,
        'Wanikani-Revision': '20170710',
      },
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

async function syncAudios() {
  console.log('=== SINKRONISASI AUDIO SUARA KYOKO & KENICHI WANIKANI ===\n');

  // 1. Ambil seluruh vocabulary KaniGani dari Supabase
  console.log('1. Memuat daftar kosakata dari database KaniGani...');
  const kaniVocabs = [];
  let from = 0;
  while (true) {
    const { data, error } = await supabase
      .from('items')
      .select('id, character, slug, wanikani_id')
      .eq('type', 'vocabulary')
      .range(from, from + 999);

    if (error) throw error;
    if (!data || data.length === 0) break;
    kaniVocabs.push(...data);
    if (data.length < 1000) break;
    from += 1000;
  }

  console.log(`Berhasil memuat ${kaniVocabs.length} kosakata.`);
  const wkIdToKaniId = new Map();
  for (const v of kaniVocabs) {
    if (v.wanikani_id) {
      wkIdToKaniId.set(v.wanikani_id, v.id);
    }
  }

  // 2. Ambil audio dari WaniKani API secara bertahap
  console.log('\n2. Mengunduh data audio pengucapan dari WaniKani API...');
  let nextUrl = 'https://api.wanikani.com/v2/subjects?types=vocabulary,kana_vocabulary';
  let page = 0;
  let totalAudiosFound = 0;
  let audioRowsToInsert = [];

  while (nextUrl) {
    page++;
    process.stdout.write(`\rMemproses halaman WaniKani ${page}... `);
    const res = await fetchJson(nextUrl);
    nextUrl = res.pages?.next_url;

    for (const item of res.data) {
      const kaniItemId = wkIdToKaniId.get(item.id);
      if (!kaniItemId) continue;

      const audios = item.data?.pronunciation_audios || [];
      if (!audios.length) continue;

      // Filter MP3 audios for Kyoko and Kenichi
      const mp3Audios = audios.filter(a => a.content_type === 'audio/mpeg');
      const seenActors = new Set();

      for (const a of mp3Audios) {
        const actor = a.metadata?.voice_actor_name || (a.metadata?.gender === 'female' ? 'Kyoko' : 'Kenichi');
        if (seenActors.has(actor)) continue;
        seenActors.add(actor);

        audioRowsToInsert.push({
          item_id: kaniItemId,
          url: a.url,
          content_type: 'audio/mpeg',
          voice_actor_name: actor,
          gender: a.metadata?.gender || (actor === 'Kyoko' ? 'female' : 'male'),
        });
        totalAudiosFound++;
      }

      // Batch insert every 500 rows
      if (audioRowsToInsert.length >= 500) {
        const batch = audioRowsToInsert.splice(0, 500);
        const { error: insErr } = await supabase.from('item_audios').insert(batch);
        if (insErr) {
          console.error(`\nGagal insert batch: ${insErr.message}`);
        }
      }
    }
  }

  // Insert remaining rows
  if (audioRowsToInsert.length > 0) {
    const { error: insErr } = await supabase.from('item_audios').insert(audioRowsToInsert);
    if (insErr) {
      console.error(`\nGagal insert sisa batch: ${insErr.message}`);
    }
  }

  console.log(`\n\n=== SINKRONISASI SELESAI ===`);
  console.log(`Total tautan audio tersimpan ke database: ${totalAudiosFound}`);

  // Cek total baris di tabel item_audios
  const { count } = await supabase.from('item_audios').select('*', { count: 'exact', head: true });
  console.log(`Total baris tabel item_audios sekarang: ${count}`);
}

syncAudios().catch(err => {
  console.error('Fatal error during audio sync:', err);
  process.exit(1);
});
