async function test() {
  const text = "Hello, this is a test. The radical 'tsunami' means wave.";
  const url = `https://translate.googleapis.com/translate_a/single?client=gtx&sl=en&tl=id&dt=t&q=${encodeURIComponent(text)}`;
  try {
    const res = await fetch(url);
    console.log('Status:', res.status);
    if (res.status === 200) {
      const data = await res.json();
      // Google Translate returns a nested array
      const translation = data[0].map(x => x[0]).join('');
      console.log('Translation:', translation);
    }
  } catch (err) {
    console.error('Error translating:', err);
  }
}
test();
