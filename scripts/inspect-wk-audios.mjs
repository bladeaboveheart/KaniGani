import https from 'https';
import fs from 'fs';

const envContent = fs.readFileSync('.env.local', 'utf8');
const match = envContent.match(/WANIKANI_API_TOKEN=(.*)/);
const token = match ? match[1].trim().replace(/^["']|["']$/g, '') : '';

https.get('https://api.wanikani.com/v2/subjects/2467', {
  headers: {
    'Authorization': 'Bearer ' + token,
    'Wanikani-Revision': '20170710'
  }
}, res => {
  let data = '';
  res.on('data', chunk => data += chunk);
  res.on('end', () => {
    const json = JSON.parse(data);
    console.log('Vocab characters:', json.data?.characters);
    console.log('Pronunciation audios count:', json.data?.pronunciation_audios?.length);
    console.log('Audio list:');
    json.data?.pronunciation_audios?.forEach(a => {
      console.log(`- Format: ${a.content_type}, Voice Actor: ${a.metadata?.voice_actor_name} (${a.metadata?.gender}), URL: ${a.url.slice(0, 70)}...`);
    });
  });
});
