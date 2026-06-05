async function test() {
  try {
    const kanji = '力';
    const url = `https://kanjiapi.dev/v1/kanji/${encodeURIComponent(kanji)}`;
    console.log('Fetching:', url);
    const res = await fetch(url);
    if (!res.ok) throw new Error('Failed: ' + res.status);
    const data = await res.json();
    console.log('Result:', JSON.stringify(data, null, 2));
  } catch (err) {
    console.error('Error:', err.message);
  }
}
test();
