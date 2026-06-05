async function translateTexts(texts) {
  const separator = ' || ';
  const joined = texts.join(separator);
  const url = `https://translate.googleapis.com/translate_a/single?client=gtx&sl=en&tl=id&dt=t&q=${encodeURIComponent(joined)}`;
  try {
    const res = await fetch(url);
    if (res.status === 200) {
      const data = await res.json();
      const translatedJoined = data[0].map(x => x[0]).join('');
      const parts = translatedJoined.split('||').map(s => s.trim());
      console.log('Original count:', texts.length);
      console.log('Translated count:', parts.length);
      console.log('Originals:', texts);
      console.log('Translations:', parts);
    } else {
      console.error('Non-200 response:', res.status);
    }
  } catch (err) {
    console.error('Error translating batch:', err);
  }
}

const testStrings = [
  "Hello, how are you?",
  "The quick brown fox jumps over the lazy dog.",
  "This is a radical of a tree.",
  "Vocabulary represents Japanese words."
];

translateTexts(testStrings);
