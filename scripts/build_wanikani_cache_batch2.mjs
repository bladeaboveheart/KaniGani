import https from 'https';
import fs from 'fs';
import path from 'path';

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

const token = env.WANIKANI_API_TOKEN;

function fetchJson(url) {
  return new Promise((resolve, reject) => {
    https.get(url, {
      headers: {
        'Authorization': 'Bearer ' + token,
        'Wanikani-Revision': '20170710'
      }
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

async function main() {
  console.log('Fetching WaniKani subjects for levels 21-30...');
  let url = 'https://api.wanikani.com/v2/subjects?levels=21,22,23,24,25,26,27,28,29,30';
  const subjects = [];

  while (url) {
    console.log('Fetching:', url);
    const res = await fetchJson(url);
    subjects.push(...res.data);
    url = res.pages.next_url;
  }

  console.log(`Fetched ${subjects.length} subjects from WaniKani.`);
  fs.writeFileSync('scratch/wk_batch2_subjects.json', JSON.stringify(subjects, null, 2));
  console.log('Saved to scratch/wk_batch2_subjects.json');
}

main();
