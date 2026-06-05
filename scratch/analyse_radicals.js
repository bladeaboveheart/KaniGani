const fs = require('fs');

const n4String = '力, 口, 工, 夕, 手, 方, 心, 不, 元, 少, 切, 止, 文, 公, 犬, 牛, 目, 立, 用, 田, 代, 世, 正, 以, 主, 仕, 可, 台, 去, 広, 写, 古, 兄, 冬, 会, 自, 同, 地, 死, 考, 安, 多, 早, 有, 色, 字, 肉, 言, 体, 作, 私, 社, 別, 近, 身, 足, 売, 住, 医, 花, 赤, 町, 走, 究, 図, 弟, 事, 者, 明, 知, 物, 的, 使, 始, 画, 味, 空, 夜, 店, 歩, 注, 京, 英, 服, 青, 姉, 妹, 思, 持, 発, 度, 界, 待, 音, 海, 重, 急, 品, 計, 送, 屋, 映, 室, 風, 建, 研, 春, 秋, 茶, 洋, 昼, 家, 通, 員, 真, 帰, 起, 料, 特, 院, 病, 紙, 旅, 夏, 借, 勉, 理, 動, 問, 強, 教, 野, 終, 悪, 族, 転, 週, 黒, 習, 堂, 鳥, 魚,场, 開, 無, 道, 着, 運, 集, 朝, 買, 答, 飲, 飯, 貸, 意, 新, 業, 楽, 試, 漢, 歌, 銀, 駅, 質, 親, 館, 題, 験, 曜';
const n4List = [...new Set(n4String.split(',').map(s => s.trim()).filter(Boolean))];

const subjectsPath = 'https://raw.githubusercontent.com/mlegls/wanikani-shufa/master/subjects.json';

async function run() {
  const res = await fetch(subjectsPath);
  const subjects = await res.json();
  
  const kanjiMap = {};
  const radicalMap = {};
  const subjectById = {};
  
  subjects.forEach(item => {
    subjectById[item.id] = item;
    const data = item.data;
    if (item.object === 'kanji') {
      kanjiMap[data.characters] = item;
    } else if (item.object === 'radical') {
      radicalMap[item.id] = item;
    }
  });
  
  // Find radicals for N4 kanjis
  const neededRadicals = new Set();
  const radToKanji = {};
  
  n4List.forEach(k => {
    const km = kanjiMap[k];
    if (km) {
      const compIds = km.data.component_subject_ids || [];
      compIds.forEach(id => {
        neededRadicals.add(id);
        if (!radToKanji[id]) radToKanji[id] = [];
        radToKanji[id].push(k);
      });
    }
  });
  
  console.log(`Total needed radicals count: ${neededRadicals.size}`);
  
  const neededRadList = [...neededRadicals].map(id => {
    const rad = subjectById[id];
    return {
      id: id,
      character: rad.data.characters,
      slug: rad.data.slug,
      english: rad.data.meanings[0].meaning,
      used_in: radToKanji[id]
    };
  });
  
  // Check how many have null character
  const nullChars = neededRadList.filter(r => !r.character);
  console.log('Radicals with NULL characters:', nullChars.length);
  console.log('List of NULL character radicals:', JSON.stringify(nullChars, null, 2));
}

run();
