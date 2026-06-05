async function run() {
  try {
    const url = 'https://raw.githubusercontent.com/davidluzgouveia/kanji-data/master/kanji.json';
    console.log('Fetching:', url);
    const res = await fetch(url);
    if (!res.ok) throw new Error('Fetch failed: ' + res.status);
    const data = await res.json();
    const keys = Object.keys(data);
    console.log('Total Kanjis in dataset:', keys.length);
    console.log('Sample entry (力):', JSON.stringify(data['力'], null, 2));
  } catch (err) {
    console.error('Error:', err.message);
  }
}
run();
