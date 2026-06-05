const fs = require('fs');
const path = require('path');

async function run() {
  const n3Matched = JSON.parse(fs.readFileSync(path.join(__dirname, 'n3_matched.json'), 'utf8'));
  const n3Set = new Set(n3Matched.map(k => k.char));
  
  // Load N5 and N4 kanjis to form the full set of known kanjis
  const n5Kanjis = ["一","人","入","二","十","八","七","九","大","子","上","女","下","小","山","万","川","三","土","千","分","日","中","今","月","水","木","父","友","天","火","五","円","午","六","出","生","本","外","母","白","半","北","四","左","右","行","年","気","先","名","西","毎","休","百","见","見","来","何","男","車","長","国","金","学","東","雨","前","後","食","南","時","高","書","校","間","話","電","聞","語","読"];
  const n4Kanjis = [
    '力', '口', '工', '夕', '手', '方', '心', '不', '元', '少', '切', '止', '文', '公', '犬', '牛', '目', '立', '用', '田', '代', '世', '正', '以', '主', '仕', '可', '台',
    '去', '広', '写', '古', '兄', '冬', '会', '自', '同', '地', '死', '考', '安', '多', '早', '有', '色', '字', '肉', '言', '体', '作', '私', '社', '別', '近', '身', '足',
    '売', '住', '医', '花', '赤', '町', '走', '究', '図', '弟', '事', '者', '明', '知', '物', '的', '使', '始', '画', '味', '空', '夜', '店', '歩', '注', '京', '英', '服',
    '青', '姉', '妹', '思', '持', '発', '度', '界', '待', '音', '海', '重', '急', '品', '計', '送', '屋', '映', '室', '風', '建', '研', '春', '秋', '茶', '洋', '昼', '家',
    '通', '員', '真', '帰', '起', '料', '特', '院', '病', '紙', '旅', '夏', '借', '勉', '理', '動', '問', '強', '教', '野', '終', '悪', '族', '転', '週', '黒', '習', '堂', '鳥',
    '魚', '場', '開', '無', '道', '着', '運', '集', '朝', '買', '答', '飲', '飯', '貸', '意', '新', '業', '楽', '試', '漢', '歌', '銀', '駅', '質', '親', '館', '題', '験', '曜'
  ];
  
  const allKnownKanjis = new Set([...n5Kanjis, ...n4Kanjis, ...n3Set]);
  
  console.log('Fetching subjects.json...');
  const res = await fetch('https://raw.githubusercontent.com/mlegls/wanikani-shufa/master/subjects.json');
  const subjects = await res.json();
  
  const allVocabs = [];
  const radicalMap = {};
  subjects.forEach(item => {
    if (item.object === 'vocabulary') {
      allVocabs.push(item);
    } else if (item.object === 'radical') {
      radicalMap[item.id] = item;
    }
  });
  
  const eligibleVocabs = [];
  allVocabs.forEach(v => {
    const chars = v.data.characters;
    let isEligible = true;
    let hasN3Kanji = false;
    
    for (let c of chars) {
      const code = c.charCodeAt(0);
      const isKanji = (code >= 0x4e00 && code <= 0x9faf);
      if (isKanji) {
        if (!allKnownKanjis.has(c)) {
          isEligible = false;
          break;
        }
        if (n3Set.has(c)) {
          hasN3Kanji = true;
        }
      }
    }
    
    if (isEligible && hasN3Kanji) {
      eligibleVocabs.push(v);
    }
  });
  
  console.log('Total eligible vocabularies:', eligibleVocabs.length);
  
  // Check new radicals
  const existingRadicals = [{"character":"乍","slug":"key"},{"character":"斗","slug":"ladle"},{"character":"一","slug":"tanah"},{"character":"人","slug":"orang"},{"character":"入","slug":"masuk"},{"character":"二","slug":"dua"},{"character":"十","slug":"salib"},{"character":"七","slug":"tujuh"},{"character":"九","slug":"sembilan"},{"character":"大","slug":"besar"},{"character":"子","slug":"anak"},{"character":"卜","slug":"jempol kaki"},{"character":"女","slug":"wanita"},{"character":"小","slug":"kecil"},{"character":"山","slug":"gunung"},{"character":"刀","slug":"pedang"},{"character":"川","slug":"sungai"},{"character":"土","slug":"tanah"},{"character":"千","slug":"seribu"},{"character":"日","slug":"matahari"},{"character":"中","slug":"tengah"},{"character":"今","slug":"sekarang"},{"character":"月","slug":"bulan"},{"character":"水","slug":"air"},{"character":"木","slug":"pohon"},{"character":"父","slug":"ayah"},{"character":"ナ","slug":"unicorn"},{"character":"又","slug":"bangku"},{"character":"天","slug":"surga"},{"character":"ハ","slug":"sirip"},{"character":"丆","slug":"daun"},{"character":"本","slug":"本"},{"character":"火","slug":"火"},{"character":"五","slug":"lima"},{"character":"冂","slug":"lebar"},{"character":"干","slug":"kering"},{"character":"亠","slug":"亠"},{"character":"生","slug":"hidup"},{"character":"夕","slug":"sore"},{"character":"ト","slug":"tongkat"},{"character":"母","slug":"母"},{"character":"白","slug":"putih"},{"character":"半","slug":"半"},{"character":"北","slug":"utara"},{"character":"囗","slug":"kotak"},{"character":"儿","slug":"kaki"},{"character":"工","slug":"alat"},{"character":"口","slug":"mulut"},{"character":"彳","slug":"langkah"},{"character":"气","slug":"uap"},{"character":"メ","slug":"harta"},{"character":"西","slug":"barat"},{"character":"毋","slug":"jangan"},{"character":"化","slug":"化"},{"character":"目","slug":"mata"},{"character":"田","slug":"sawah"},{"character":"力","slug":"kekuatan"},{"character":"車","slug":"mobil"},{"character":"長","slug":"panjang"},{"character":"玉","slug":"permata"},{"character":"金","slug":"emas"},{"character":"王","slug":"raja"},{"character":"冖","slug":"topi"},{"character":"雨","slug":"hujan"},{"character":"幺","slug":"benang"},{"character":"夂","slug":"musim dingin"},{"character":"食","slug":"makan"},{"character":"寸","slug":"寸"},{"character":"高","slug":"tinggi"},{"character":"聿","slug":"kuas"},{"character":"門","slug":"gerbang"},{"character":"言","slug":"bicara"},{"character":"舌","slug":"lidah"},{"character":"耳","slug":"telinga"},{"character":"士","slug":"sarjana"},{"character":"巾","slug":"towel"},{"character":"正","slug":"correct"},{"character":"手","slug":"hand"},{"character":"方","slug":"direction"},{"character":"心","slug":"heart"},{"character":"不","slug":"not"},{"character":"元","slug":"origin"},{"character":"丿","slug":"slide"},{"character":"止","slug":"stop"},{"character":"文","slug":"writing"},{"character":"ム","slug":"private"},{"character":"犬","slug":"dog"},{"character":"牛","slug":"cow"},{"character":"立","slug":"stand"},{"character":"用","slug":"task"},{"character":"ｲ","slug":"leader"},{"character":"弋","slug":"ceremony"},{"character":"世","slug":"world"},{"character":"L","slug":"lion"},{"character":"丶","slug":"drop"},{"character":"主","slug":"master"},{"character":"可","slug":"lip-ring"},{"character":"勿","slug":"wing"},{"character":"广","slug":"canopy"},{"character":"[Pengemis]","slug":"beggar"},{"character":"古","slug":"old"},{"character":"会","slug":"meet"},{"character":"自","slug":"self"},{"character":"重","slug":"heavy"},{"character":"青","slug":"blue"},{"character":"市","slug":"city"},{"character":"扌","slug":"fingers"},{"character":"寺","slug":"temple"},{"character":"癶","slug":"tent"},{"character":"开","slug":"lantern"},{"character":"[Yurt]","slug":"yurt"},{"character":"介","slug":"jammed-in"},{"character":"[Senjata]","slug":"gun"},{"character":"勹","slug":"prison"},{"character":"品","slug":"products"},{"character":"尸","slug":"flag"},{"character":"几","slug":"table"},{"character":"虫","slug":"insect"},{"character":"廴","slug":"yoga"},{"character":"石","slug":"stone"},{"character":"[Musim semi]","slug":"spring"},{"character":"[Topi]","slug":"hat"},{"character":"ホ","slug":"angel"},{"character":"羊","slug":"sheep"},{"character":"尺","slug":"shrimp"},{"character":"豕","slug":"pig"},{"character":"己","slug":"oneself"},{"character":"米","slug":"rice"},{"character":"阝","slug":"building"},{"character":"疒","slug":"sick"},{"character":"丙","slug":"dynamite"},{"character":"糸","slug":"thread"},{"character":"氏","slug":"clan"},{"character":"[Tahu]","slug":"tofu"},{"character":"昔","slug":"long-ago"},{"character":"免","slug":"excuse"},{"character":"里","slug":"village"},{"character":"孝","slug":"teacher"},{"character":"予","slug":"beforehand"},{"character":"亜","slug":"asia"},{"character":"云","slug":"cloud"},{"character":"周","slug":"circumference"},{"character":"黒","slug":"black"},{"character":"羽","slug":"feathers"},{"character":"[viking]","slug":"viking"},{"character":"鳥","slug":"bird"},{"character":"頁","slug":"geoduck"},{"character":"[Cumi]","slug":"squid"},{"character":"魚","slug":"fish"},{"character":"易","slug":"easy"},{"character":"無","slug":"nothing"},{"character":"首","slug":"neck"},{"character":"隹","slug":"turkey"},{"character":"罒","slug":"net"},{"character":"竹","slug":"bamboo"},{"character":"合","slug":"suit"},{"character":"欠","slug":"lack"},{"character":"反","slug":"anti"},{"character":"代","slug":"substitute"},{"character":"音","slug":"sound"},{"character":"[Paku]","slug":"spikes"},{"character":"[Cina]","slug":"chinese"},{"character":"艮","slug":"root"},{"character":"馬","slug":"horse"},{"character":"見","slug":"see"},{"character":"[Beruang]","slug":"bear"},{"character":"マ","slug":"mama"},{"character":"貝","slug":"shellfish"},{"character":"[Paus]","slug":"pope"}];
  const existingRadSet = new Set(existingRadicals.map(r => r.character));
  const existingRadSlugs = new Set(existingRadicals.map(r => r.slug));
  
  const neededRadicalIds = new Set();
  n3Matched.forEach(k => {
    (k.component_radicals || []).forEach(id => neededRadicalIds.add(id));
  });
  
  const newRadicals = [];
  neededRadicalIds.forEach(id => {
    const rad = radicalMap[id];
    if (!rad) return;
    const char = rad.data.characters;
    const slug = rad.data.slug;
    const exists = (char && existingRadSet.has(char)) || existingRadSlugs.has(slug);
    if (!exists) {
      newRadicals.push({
        id,
        char,
        slug,
        meaning: rad.data.meanings[0].meaning
      });
    }
  });
  
  console.log('New radicals needed:', newRadicals.length);
  console.log('List of new radicals:', newRadicals.map(r => `${r.char || r.slug} (${r.meaning})`).join(', '));
}

run().catch(console.error);
