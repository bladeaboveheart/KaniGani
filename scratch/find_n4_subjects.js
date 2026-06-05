const fs = require('fs');
const path = require('path');

const n4String = '力, 口, 工, 夕, 手, 方, 心, 不, 元, 少, 切, 止, 文, 公, 犬, 牛, 目, 立, 用, 田, 代, 世, 正, 以, 主, 仕, 可, 台, 去, 広, 写, 古, 兄, 冬, 会, 自, 同, 地, 死, 考, 安, 多, 早, 有, 色, 字, 肉, 言, 体, 作, 私, 社, 別, 近, 身, 足, 売, 住, 医, 花, 赤, 町, 走, 究, 図, 弟, 事, 者, 明, 知, 物, 的, 使, 始, 画, 味, 空, 夜, 店, 歩, 注, 京, 英, 服, 青, 姉, 妹, 思, 持, 発, 度, 界, 待, 音, 海, 重, 急, 品, 計, 送, 屋, 映, 室, 風, 建, 研, 春, 秋, 茶, 洋, 昼, 家, 通, 員, 真, 帰, 起, 料, 特, 院, 病, 紙, 旅, 夏, 借, 勉, 理, 動, 問, 強, 教, 野, 終, 悪, 族, 転, 週, 黒, 習, 堂, 鳥, 魚, 場, 開, 無, 道, 着, 運, 集, 朝, 買, 答, 飲, 饭, 飯, 貸, 意, 新, 业, 業, 楽, 試, 漢, 歌, 銀, 駅, 質, 親, 館, 題, 験, 曜';
// Clean N4 list to be unique array
const n4List = [...new Set(n4String.split(',').map(s => s.trim()).filter(Boolean))];

const subjectsPath = 'https://raw.githubusercontent.com/mlegls/wanikani-shufa/master/subjects.json';

async function run() {
  console.log('Loading subjects.json from GitHub url...');
  const res = await fetch(subjectsPath);
  const subjects = await res.json();
  
  // Build maps
  const kanjiMap = {};
  const radicalMap = {};
  const vocabMap = {};
  
  subjects.forEach(item => {
    const data = item.data;
    if (item.object === 'kanji') {
      kanjiMap[data.characters] = item;
    } else if (item.object === 'radical') {
      if (data.characters) {
        radicalMap[data.characters] = item;
      }
      radicalMap[data.slug] = item;
    } else if (item.object === 'vocabulary') {
      vocabMap[data.characters] = item;
    }
  });
  
  console.log(`Loaded ${Object.keys(kanjiMap).length} kanji maps.`);
  
  const missing = [];
  n4List.forEach(k => {
    if (!kanjiMap[k]) {
      missing.push(k);
    }
  });
  
  console.log('Missing kanjis in WaniKani database:', missing);
  console.log('N4 list length:', n4List.length);
}

run();
