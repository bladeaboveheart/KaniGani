const fs = require('fs');

async function run() {
  const res = await fetch('https://raw.githubusercontent.com/mlegls/wanikani-shufa/master/subjects.json');
  const subjects = await res.json();
  const vocab = subjects.find(s => s.object === 'vocabulary' && s.data.context_sentences && s.data.context_sentences.length > 0);
  console.log('Sample Vocab character:', vocab.data.characters);
  console.log('Sample context sentence object:', JSON.stringify(vocab.data.context_sentences[0], null, 2));
}

run();
