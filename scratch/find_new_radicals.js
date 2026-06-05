const fs = require('fs');
const path = require('path');

const n4String = '力, 口, 工, 夕, 手, 方, 心, 不, 元, 少, 切, 止, 文, 公, 犬, 牛, 目, 立, 用, 田, 代, 世, 正, 以, 主, 仕, 可, 台, 去, 広, 写, 古, 兄, 冬, 会, 自, 同, 地, 死, 考, 安, 多, 早, 有, 色, 字, 肉, 言, 体, 作, 私, 社, 別, 近, 身, 足, 売, 住, 医, 花, 赤, 町, 走, 究, 図, 弟, 事, 者, 明, 知, 物, 的, 使, 始, 画, 味, 空, 夜, 店, 歩, 注, 京, 英, 服, 青, 姉, 妹, 思, 持, 発, 度, 界, 待, 音, 海, 重, 急, 品, 計, 送, 屋, 映, 室, 風, 建, 研, 春, 秋, 茶, 洋, 昼, 家, 通, 員, 真, 帰, 起, 料, 特, 院, 病, 紙, 旅, 夏, 借, 勉, 理, 動, 問, 強, 教, 野, 終, 悪, 族, 転, 週, 黒, 習, 堂, 鳥, 魚, 场, 開, 無, 道, 着, 運, 集, 朝, 買, 答, 飲, 飯, 貸, 意, 新, 業, 楽, 試, 漢, 歌, 銀, 駅, 質, 親, 館, 題, 験, 曜';
const n4List = [...new Set(n4String.split(',').map(s => s.trim()).filter(Boolean))];

const subjectsPath = 'https://raw.githubusercontent.com/mlegls/wanikani-shufa/master/subjects.json';

const existingRadicals = [{"character":"一","slug":"tanah"},{"character":"人","slug":"orang"},{"character":"入","slug":"masuk"},{"character":"二","slug":"dua"},{"character":"十","slug":"salib"},{"character":"七","slug":"tujuh"},{"character":"九","slug":"sembilan"},{"character":"大","slug":"besar"},{"character":"子","slug":"anak"},{"character":"卜","slug":"jempol kaki"},{"character":"女","slug":"wanita"},{"character":"小","slug":"kecil"},{"character":"山","slug":"gunung"},{"character":"刀","slug":"pedang"},{"character":"川","slug":"sungai"},{"character":"土","slug":"tanah"},{"character":"千","slug":"seribu"},{"character":"日","slug":"matahari"},{"character":"中","slug":"tengah"},{"character":"今","slug":"sekarang"},{"character":"月","slug":"bulan"},{"character":"水","slug":"air"},{"character":"木","slug":"pohon"},{"character":"父","slug":"ayah"},{"character":"ナ","slug":"unicorn"},{"character":"又","slug":"bangku"},{"character":"天","slug":"surga"},{"character":"ハ","slug":"sirip"},{"character":"丆","slug":"daun"},{"character":"本","slug":"本"},{"character":"火","slug":"火"},{"character":"五","slug":"lima"},{"character":"冂","slug":"lebar"},{"character":"干","slug":"kering"},{"character":"亠","slug":"亠"},{"character":"生","slug":"hidup"},{"character":"夕","slug":"sore"},{"character":"ト","slug":"tongkat"},{"character":"母","slug":"母"},{"character":"白","slug":"putih"},{"character":"半","slug":"半"},{"character":"北","slug":"utara"},{"character":"囗","slug":"kotak"},{"character":"儿","slug":"kaki"},{"character":"工","slug":"alat"},{"character":"口","slug":"mulut"},{"character":"彳","slug":"langkah"},{"character":"气","slug":"uap"},{"character":"メ","slug":"harta"},{"character":"西","slug":"barat"},{"character":"毋","slug":"jangan"},{"character":"化","slug":"化"},{"character":"目","slug":"mata"},{"character":"田","slug":"sawah"},{"character":"力","slug":"kekuatan"},{"character":"車","slug":"mobil"},{"character":"長","slug":"panjang"},{"character":"玉","slug":"permata"},{"character":"金","slug":"emas"},{"character":"王","slug":"raja"},{"character":"冖","slug":"topi"},{"character":"雨","slug":"hujan"},{"character":"幺","slug":"benang"},{"character":"夂","slug":"musim dingin"},{"character":"食","slug":"makan"},{"character":"寸","slug":"寸"},{"character":"高","slug":"tinggi"},{"character":"聿","slug":"kuas"},{"character":"門","slug":"gerbang"},{"character":"言","slug":"bicara"},{"character":"舌","slug":"lidah"},{"character":"耳","slug":"telinga"},{"character":"士","slug":"sarjana"}];

const existingRadSet = new Set(existingRadicals.map(r => r.character));
const existingRadSlugs = new Set(existingRadicals.map(r => r.slug));

async function run() {
  const res = await fetch(subjectsPath);
  const subjects = await res.json();
  
  const kanjiMap = {};
  const subjectById = {};
  
  subjects.forEach(item => {
    subjectById[item.id] = item;
    const data = item.data;
    if (item.object === 'kanji') {
      kanjiMap[data.characters] = item;
    }
  });
  
  const neededRadicals = new Set();
  
  n4List.forEach(k => {
    const km = kanjiMap[k];
    if (km) {
      const compIds = km.data.component_subject_ids || [];
      compIds.forEach(id => {
        neededRadicals.add(id);
      });
    }
  });
  
  console.log(`Total needed radicals count: ${neededRadicals.size}`);
  
  const newRadicals = [];
  neededRadicals.forEach(id => {
    const rad = subjectById[id];
    const char = rad.data.characters;
    const slug = rad.data.slug;
    
    // Check if it's already in our DB
    const exists = (char && existingRadSet.has(char)) || existingRadSlugs.has(slug);
    if (!exists) {
      newRadicals.push({
        id: id,
        character: char,
        slug: slug,
        english: rad.data.meanings[0].meaning
      });
    }
  });
  
  console.log('New radicals that need to be seeded:', newRadicals.length);
  console.log('List of new radicals:', JSON.stringify(newRadicals, null, 2));
}

run();
