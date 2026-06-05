const fs = require('fs');
const path = require('path');
const crypto = require('crypto');

// Target file paths
const sqlDir = 'c:/Users/Gany/Documents/GitHub/KaniGani/sql';
const seed2Path = path.join(sqlDir, 'seed_level2.sql');
const seed3Path = path.join(sqlDir, 'seed_level3.sql');
const outP2Path = path.join(sqlDir, 'seed_n5_pangkat2.sql');
const outP3Path = path.join(sqlDir, 'seed_n5_pangkat3.sql');

// Kanjis for N5 levels
const p1Kanjis = ['一', '七', '万', '三', '上', '下', '中', '九', '二', '人', '今', '入', '八', '分', '十', '千', '友', '土', '大', '天', '女', '子', '小', '山', '川', '日', '月', '木', '水', '父'];
const p2Kanjis = ['火', '五', '円', '午', '六', '出', '生', '本', '外', '母', '白', '半', '北', '四', '左', 'right/右', '行', '年', '気', '先', '名', '西', '毎', '休', '百'].map(k => k.replace('right/', ''));
const p3Kanjis = ['見', '来', '何', '男', '車', '長', '国', '金', '学', '東', '雨', '前', '後', '食', '南', '時', '高', '書', '校', '間', '話', '電', '聞', '語', '読'];

const p1Set = new Set(p1Kanjis);
const p2Set = new Set(p2Kanjis);
const p3Set = new Set(p3Kanjis);

const p1p2Set = new Set([...p1Kanjis, ...p2Kanjis]);
const allN5Set = new Set([...p1Kanjis, ...p2Kanjis, ...p3Kanjis]);

console.log('Total Kanjis N5:', allN5Set.size);

// Define dataset of the 34 missing Kanjis
// Each contains: character, meanings, onyomi, kunyomi, meaning_mnemonic, reading_mnemonic, radicals
const missingKanjisData = [
  {
    character: '行',
    meanings: ['Pergi', 'Melakukan'],
    onyomi: ['コウ', 'ギョウ'],
    kunyomi: ['い.く', 'おこな.う'],
    meaning_mnemonic: 'Kanji 行 menggambarkan persimpangan jalan tempat orang pergi melangkah.',
    reading_mnemonic: 'Onyomi umum adalah コウ (KOU) seperti dalam 旅行 (ryokou) atau kunyomi い (i) seperti dalam 行く (iku).',
    radicals: ['彳']
  },
  {
    character: '年',
    meanings: ['Tahun'],
    onyomi: ['ネン'],
    kunyomi: ['とし'],
    meaning_mnemonic: 'Kanji 年 menggambarkan panen padi yang terjadi sekali setahun.',
    reading_mnemonic: 'Onyomi adalah ネン (NEN) seperti dalam 今年 (kotoshi) atau kunyomi とし (toshi) untuk tahun.',
    radicals: ['干', '一']
  },
  {
    character: '気',
    meanings: ['Semangat', 'Energi', 'Udara'],
    onyomi: ['キ', 'ケ'],
    kunyomi: ['き'],
    meaning_mnemonic: 'Kanji 気 menggambarkan uap (气) yang naik dari nasi yang dimasak — melambangkan energi kehidupan.',
    reading_mnemonic: 'Dibaca キ (KI) seperti dalam 天期 (tenki) atau 元気 (genki).',
    radicals: ['气', 'メ']
  },
  {
    character: '先',
    meanings: ['Sebelum', 'Masa Depan', 'Ujung'],
    onyomi: ['セン'],
    kunyomi: ['さき'],
    meaning_mnemonic: 'Berjalan (儿) di atas tanah (土) terlebih dahulu — melambangkan orang yang mendahului atau sebelum.',
    reading_mnemonic: 'Onyomi adalah セン (SEN) seperti dalam 先生 (sensei) atau kunyomi さき (saki).',
    radicals: ['土', '儿']
  },
  {
    character: '名',
    meanings: ['Nama', 'Reputasi'],
    onyomi: ['メイ', 'ミョウ'],
    kunyomi: ['な'],
    meaning_mnemonic: 'Di sore hari (夕) saat gelap, orang menggunakan mulut (口) untuk memanggil nama seseorang.',
    reading_mnemonic: 'Onyomi adalah メイ (MEI) seperti dalam 名前 (namae) atau kunyomi な (na).',
    radicals: ['口', '夕']
  },
  {
    character: '西',
    meanings: ['Barat'],
    onyomi: ['セイ', 'サイ'],
    kunyomi: ['にし'],
    meaning_mnemonic: 'Burung yang menetap di sarangnya saat matahari terbenam di sebelah barat.',
    reading_mnemonic: 'Kunyomi adalah にし (nishi) untuk arah barat.',
    radicals: ['西']
  },
  {
    character: '毎',
    meanings: ['Setiap'],
    onyomi: ['マイ'],
    kunyomi: ['ごと'],
    meaning_mnemonic: 'Seorang ibu (母) mengenakan hiasan kepala, melambangkan rutinitas yang ia lakukan setiap hari.',
    reading_mnemonic: 'Onyomi adalah マイ (MAI) seperti dalam 毎日 (mainichi).',
    radicals: ['毋']
  },
  {
    character: '休',
    meanings: ['Istirahat', 'Libur'],
    onyomi: ['キュウ'],
    kunyomi: ['やす.む'],
    meaning_mnemonic: 'Sesosok orang (亻) bersandar di pohon (木) untuk beristirahat.',
    reading_mnemonic: 'Onyomi adalah キュウ (KYUU) seperti dalam 休日 (kyuujitsu) atau kunyomi やす (yasu) seperti dalam 休む (yasumu).',
    radicals: ['化', '木']
  },
  {
    character: '百',
    meanings: ['Seratus'],
    onyomi: ['ヒャク'],
    kunyomi: ['もも'],
    meaning_mnemonic: 'Menambahkan satu garis (一) di atas kanji putih (白) untuk melambangkan angka seratus.',
    reading_mnemonic: 'Onyomi adalah ヒャク (HYAKU) seperti dalam 三百 (sanbyaku).',
    radicals: ['一', '白']
  },
  {
    character: '見',
    meanings: ['Melihat', 'Menonton'],
    onyomi: ['ケン'],
    kunyomi: ['み.る', 'み.える', 'み.せる'],
    meaning_mnemonic: 'Sepasang mata besar (目) di atas kaki (儿) yang melangkah untuk melihat sekeliling.',
    reading_mnemonic: 'Kunyomi adalah み.る (miru) untuk melihat.',
    radicals: ['目', '儿']
  },
  {
    character: '来',
    meanings: ['Datang', 'Berikutnya'],
    onyomi: ['ライ'],
    kunyomi: ['く.る', 'きた.る'],
    meaning_mnemonic: 'Pohon gandum yang datang tumbuh dari tanah.',
    reading_mnemonic: 'Onyomi adalah ライ (RAI) seperti dalam 来年 (rainen) atau kunyomi く.る (kuru).',
    radicals: ['木', '二']
  },
  {
    character: '何',
    meanings: ['Apa'],
    onyomi: ['カ'],
    kunyomi: ['なに', 'なん'],
    meaning_mnemonic: 'Sesosok orang (亻) membawa beban di bahunya bertanya: Apa ini?',
    reading_mnemonic: 'Kunyomi adalah なに (nani) atau なん (nan).',
    radicals: ['化', '口']
  },
  {
    character: '男',
    meanings: ['Laki-laki', 'Pria'],
    onyomi: ['ダン', 'ナン'],
    kunyomi: ['おとco', 'おとこ'],
    meaning_mnemonic: 'Kekuatan fisik (力) yang digunakan untuk menggarap sawah (田) melambangkan seorang laki-laki.',
    reading_mnemonic: 'Kunyomi adalah おとこ (otoko) untuk pria/laki-laki.',
    radicals: ['田', '力']
  },
  {
    character: '車',
    meanings: ['Mobil', 'Kendaraan', 'Kereta'],
    onyomi: ['シャ'],
    kunyomi: ['くるま'],
    meaning_mnemonic: 'Menggambarkan bentuk kereta tradisional dengan dua roda dan poros di tengah dilihat dari atas.',
    reading_mnemonic: 'Kunyomi adalah くるま (kuruma) dan onyomi adalah シャ (SHA) seperti dalam 電車 (densha).',
    radicals: ['車']
  },
  {
    character: '長',
    meanings: ['Panjang', 'Pemimpin'],
    onyomi: ['チョウ'],
    kunyomi: ['なが.い'],
    meaning_mnemonic: 'Seorang tua berambut panjang yang dihormati sebagai pemimpin suku.',
    reading_mnemonic: 'Kunyomi adalah なが.い (nagai) untuk panjang, onyomi チョウ (CHOU) untuk pemimpin.',
    radicals: ['長']
  },
  {
    character: '国',
    meanings: ['Negara'],
    onyomi: ['コク'],
    kunyomi: ['くに'],
    meaning_mnemonic: 'Sebuah wilayah kekuasaan raja/permata (玉) yang dikelilingi benteng batas negara (囗).',
    reading_mnemonic: 'Onyomi adalah コク (KOKU) seperti dalam 外国 (gaikoku) atau kunyomi くに (kuni).',
    radicals: ['囗', '玉']
  },
  {
    character: '金',
    meanings: ['Emas', 'Uang', 'Logam'],
    onyomi: ['キン', 'コン'],
    kunyomi: ['かね', 'かな'],
    meaning_mnemonic: 'Logam berharga emas yang meleleh di bawah tanah dan disimpan dengan baik.',
    reading_mnemonic: 'Kunyomi adalah かね (kane) untuk uang, onyomi キン (KIN) untuk hari Jumat/emas.',
    radicals: ['金', '王']
  },
  {
    character: '学',
    meanings: ['Belajar', 'Ilmu'],
    onyomi: ['ガク'],
    kunyomi: ['まな.ぶ'],
    meaning_mnemonic: 'Seorang anak (子) di bawah atap sekolah yang sedang belajar.',
    reading_mnemonic: 'Onyomi adalah ガク (GAKU) seperti dalam 学生 (gakusei).',
    radicals: ['子', '冖']
  },
  {
    character: '東',
    meanings: ['Timur'],
    onyomi: ['トウ'],
    kunyomi: ['ひがし'],
    meaning_mnemonic: 'Matahari (日) yang terbit di sela-sela batang pohon (木) melambangkan arah timur.',
    reading_mnemonic: 'Kunyomi adalah ひがし (higashi) untuk arah timur.',
    radicals: ['木', '日']
  },
  {
    character: '雨',
    meanings: ['Hujan'],
    onyomi: ['ウ'],
    kunyomi: ['あめ', 'あま'],
    meaning_mnemonic: 'Awan di langit yang menurunkan tetesan air hujan ke bumi.',
    reading_mnemonic: 'Kunyomi adalah あめ (ame) untuk hujan.',
    radicals: ['雨']
  },
  {
    character: '前',
    meanings: ['Depan', 'Sebelum'],
    onyomi: ['ゼン'],
    kunyomi: ['まえ'],
    meaning_mnemonic: 'Berdiri di depan seseorang sambil memegang pisau menghadap bulan.',
    reading_mnemonic: 'Kunyomi adalah まえ (mae) untuk depan/sebelum, onyomi ゼン (ZEN).',
    radicals: ['一', '月']
  },
  {
    character: '後',
    meanings: ['Belakang', 'Setelah', 'Nanti'],
    onyomi: ['ゴ', 'コウ'],
    kunyomi: ['のち', 'うし.ro', 'あと'],
    meaning_mnemonic: 'Langkah kaki (彳) yang terikat benang (幺) membuat gerak melambat dan tertinggal di belakang.',
    reading_mnemonic: 'Onyomi adalah ゴ (GO) seperti dalam 午後 (gogo) atau kunyomi あと (ato) untuk setelah.',
    radicals: ['彳', '幺', '夂']
  },
  {
    character: '食',
    meanings: ['Makan', 'Makanan'],
    onyomi: ['ショク', 'ジキ'],
    kunyomi: ['た.べる', 'く.う'],
    meaning_mnemonic: 'Makanan yang disajikan di bawah atap untuk dikonsumsi bersama.',
    reading_mnemonic: 'Kunyomi adalah た.べる (taberu) untuk makan, onyomi ショク (SHOKU).',
    radicals: ['食']
  },
  {
    character: '南',
    meanings: ['Selatan'],
    onyomi: ['ナン', 'ナ'],
    kunyomi: ['みなみ'],
    meaning_mnemonic: 'Menggambarkan tanaman subur di wilayah selatan yang hangat.',
    reading_mnemonic: 'Kunyomi adalah みなみ (minami) untuk arah selatan.',
    radicals: ['十', '冂']
  },
  {
    character: '時',
    meanings: ['Waktu', 'Jam'],
    onyomi: ['ジ'],
    kunyomi: ['とき'],
    meaning_mnemonic: 'Matahari (日) yang bersinar di atas kuil (寺) yang digunakan biksu untuk mengukur waktu sembahyang.',
    reading_mnemonic: 'Onyomi adalah ジ (JI) seperti dalam 時間 (jikan).',
    radicals: ['日', '土', '寸']
  },
  {
    character: '高',
    meanings: ['Tinggi', 'Mahal'],
    onyomi: ['コウ'],
    kunyomi: ['たか.い'],
    meaning_mnemonic: 'Menggambarkan menara gerbang tinggi dengan atap dan jendela bertingkat.',
    reading_mnemonic: 'Kunyomi adalah たか.い (takai) untuk tinggi/mahal.',
    radicals: ['高', '口', '亠']
  },
  {
    character: '書',
    meanings: ['Menulis', 'Buku'],
    onyomi: ['ショ'],
    kunyomi: ['か.k', 'か.く'],
    meaning_mnemonic: 'Tangan yang memegang kuas (聿) untuk menulis di atas kertas di siang hari (日).',
    reading_mnemonic: 'Kunyomi adalah か.く (kaku) untuk menulis, onyomi ショ (SHO) untuk buku/dokumen.',
    radicals: ['聿', '日']
  },
  {
    character: '校',
    meanings: ['Sekolah'],
    onyomi: ['コウ'],
    kunyomi: [],
    meaning_mnemonic: 'Pohon (木) tempat berkumpulnya ayah (父) dan anak-anak membentuk lingkungan sekolah.',
    reading_mnemonic: 'Onyomi adalah コウ (KOU) seperti dalam 学校 (gakkou) atau 高校 (koukou).',
    radicals: ['木', '父', '亠']
  },
  {
    character: '間',
    meanings: ['Antara', 'Interval', 'Ruang'],
    onyomi: ['カン', 'ケン'],
    kunyomi: ['あいだ', 'ま'],
    meaning_mnemonic: 'Sinar matahari (日) yang mengintip di celah-celah pintu gerbang kayu (門).',
    reading_mnemonic: 'Kunyomi adalah あいだ (aida) untuk antara, onyomi カン (KAN) seperti dalam 時間 (jikan).',
    radicals: ['門', '日']
  },
  {
    character: '話',
    meanings: ['Berbicara', 'Cerita', 'Obrolan'],
    onyomi: ['ワ'],
    kunyomi: ['はな.す', 'はなし'],
    meaning_mnemonic: 'Menggunakan lidah (舌) untuk menyampaikan kata-kata/ucapan (言) dalam pembicaraan.',
    reading_mnemonic: 'Kunyomi adalah はな.す (hanasu) untuk berbicara, onyomi ワ (WA) seperti dalam 電話 (denwa).',
    radicals: ['言', '舌']
  },
  {
    character: '電',
    meanings: ['Listrik'],
    onyomi: ['デン'],
    kunyomi: [],
    meaning_mnemonic: 'Hujan (雨) badai yang mendatangkan kilatan petir/listrik di atas sawah (田).',
    reading_mnemonic: 'Onyomi adalah デン (DEN) seperti dalam 電車 (densha) atau 電話 (denwa).',
    radicals: ['雨', '田']
  },
  {
    character: '聞',
    meanings: ['Mendengar', 'Bertanya'],
    onyomi: ['ブン', 'モン'],
    kunyomi: ['き.く', 'き.こえる'],
    meaning_mnemonic: 'Menempelkan telinga (耳) di pintu gerbang (門) untuk mendengarkan gosip/suara luar.',
    reading_mnemonic: 'Kunyomi adalah き.く (kiku) untuk mendengar.',
    radicals: ['門', '耳']
  },
  {
    character: '語',
    meanings: ['Bahasa', 'Kata'],
    onyomi: ['ゴ'],
    kunyomi: ['かた.る'],
    meaning_mnemonic: 'Kata-kata (言) yang diucapkan oleh lima (五) mulut (口) mewakili suatu bahasa.',
    reading_mnemonic: 'Onyomi adalah ゴ (GO) seperti dalam 日本語 (nihongo).',
    radicals: ['言', '五', '口']
  },
  {
    character: '読',
    meanings: ['Membaca'],
    onyomi: ['ドク'],
    kunyomi: ['よ.む'],
    meaning_mnemonic: 'Mengucapkan kata-kata (言) saat meneliti tulisan di atas kertas untuk dibaca.',
    reading_mnemonic: 'Kunyomi adalah よ.む (yomu) untuk membaca, onyomi ドク (DOKU) seperti dalam 読書 (dokusho).',
    radicals: ['言', '士', '儿']
  }
];

// Map of missing kanjis for easy retrieval
const missingKanjisMap = {};
missingKanjisData.forEach(kd => {
  missingKanjisMap[kd.character] = kd;
});

// Curated vocabulary list for the 34 missing Kanjis
// character: vocab string, meanings, readings, sentences (japanese/indonesian), prerequisites (constituent kanjis)
const missingVocabsData = [
  {
    character: '行く',
    meanings: ['Pergi'],
    readings: ['いく'],
    sentences: [{ ja: 'デパートに行きます。', id: 'Saya pergi ke departemen store.' }],
    prereqs: ['行']
  },
  {
    character: '行う',
    meanings: ['Melakukan', 'Menyelenggarakan'],
    readings: ['おこなう'],
    sentences: [{ ja: '試験を行います。', id: 'Menyelenggarakan ujian.' }],
    prereqs: ['行']
  },
  {
    character: '年',
    meanings: ['Tahun'],
    readings: ['とし'],
    sentences: [{ ja: '新しい年が始まります。', id: 'Tahun yang baru dimulai.' }],
    prereqs: ['年']
  },
  {
    character: '今年',
    meanings: ['Tahun Ini'],
    readings: ['ことし'],
    sentences: [{ ja: '今年は2026年です。', id: 'Tahun ini adalah tahun 2026.' }],
    prereqs: ['今', '年']
  },
  {
    character: '来年',
    meanings: ['Tahun Depan'],
    readings: ['らいねん'],
    sentences: [{ ja: '来年、日本に行きます。', id: 'Tahun depan, saya akan pergi ke Jepang.' }],
    prereqs: ['来', '年']
  },
  {
    character: '一年',
    meanings: ['Satu Tahun'],
    readings: ['いちねん'],
    sentences: [{ ja: '一年は十二ヶ月です。', id: 'Satu tahun adalah dua belas bulan.' }],
    prereqs: ['一', '年']
  },
  {
    character: '気',
    meanings: ['Pikiran', 'Semangat', 'Energi'],
    readings: ['き'],
    sentences: [{ ja: '気をつけてください。', id: 'Tolong berhati-hatilah.' }],
    prereqs: ['気']
  },
  {
    character: '天気',
    meanings: ['Cuaca'],
    readings: ['てんき'],
    sentences: [{ ja: '今日の天気は良いです。', id: 'Cuaca hari ini bagus.' }],
    prereqs: ['天', '気']
  },
  {
    character: '先',
    meanings: ['Sebelumnya', 'Masa Depan'],
    readings: ['さき'],
    sentences: [{ ja: 'お先に失礼します。', id: 'Saya permisi duluan.' }],
    prereqs: ['先']
  },
  {
    character: '先生',
    meanings: ['Guru'],
    readings: ['せんせい'],
    sentences: [{ ja: '彼は日本語の先生です。', id: 'Dia adalah guru bahasa Jepang.' }],
    prereqs: ['先', '生']
  },
  {
    character: '先月',
    meanings: ['Bulan Lalu'],
    readings: ['せんげつ'],
    sentences: [{ ja: '先月、京都に行きました。', id: 'Bulan lalu, saya pergi ke Kyoto.' }],
    prereqs: ['先', '月']
  },
  {
    character: '名',
    meanings: ['Nama'],
    readings: ['な'],
    sentences: [{ ja: '名前を書いてください。', id: 'Tolong tulis nama Anda.' }],
    prereqs: ['名']
  },
  {
    character: '名前',
    meanings: ['Nama'],
    readings: ['namaえ', 'namae', 'なまえ'],
    sentences: [{ ja: 'あなたの名前は何ですか？', id: 'Siapa nama Anda?' }],
    prereqs: ['名', '前']
  },
  {
    character: '西',
    meanings: ['Barat'],
    readings: ['にし'],
    sentences: [{ ja: '太陽は西に沈みます。', id: 'Matahari terbenam di barat.' }],
    prereqs: ['西']
  },
  {
    character: '北西',
    meanings: ['Barat Laut'],
    readings: ['ほくせい'],
    sentences: [{ ja: '風が北西から吹く。', id: 'Angin bertiup dari barat laut.' }],
    prereqs: ['北', '西']
  },
  {
    character: '毎日',
    meanings: ['Setiap Hari'],
    readings: ['まいにち'],
    sentences: [{ ja: '毎日水を飲みます。', id: 'Setiap hari saya minum air.' }],
    prereqs: ['毎', '日']
  },
  {
    character: '毎月',
    meanings: ['Setiap Bulan'],
    readings: ['まいつき'],
    sentences: [{ ja: '毎月本を買います。', id: 'Setiap bulan saya membeli buku.' }],
    prereqs: ['毎', '月']
  },
  {
    character: '毎年',
    meanings: ['Setiap Tahun'],
    readings: ['まいとし', 'まいねん'],
    sentences: [{ ja: '毎年旅行をします。', id: 'Setiap tahun saya melakukan perjalanan.' }],
    prereqs: ['毎', '年']
  },
  {
    character: '休む',
    meanings: ['Beristirahat'],
    readings: ['やすむ'],
    sentences: [{ ja: '少し休みましょう。', id: 'Mari beristirahat sebentar.' }],
    prereqs: ['休']
  },
  {
    character: '休み',
    meanings: ['Libur', 'Istirahat'],
    readings: ['やすみ'],
    sentences: [{ ja: '明日は学校の休みです。', id: 'Besok adalah hari libur sekolah.' }],
    prereqs: ['休']
  },
  {
    character: '休日',
    meanings: ['Hari Libur'],
    readings: ['きゅうじつ'],
    sentences: [{ ja: '休日は家族と過ごします。', id: 'Saya menghabiskan hari libur bersama keluarga.' }],
    prereqs: ['休', '日']
  },
  {
    character: '百',
    meanings: ['Seratus'],
    readings: ['ひゃく'],
    sentences: [{ ja: 'これは百円です。', id: 'Ini seratus yen.' }],
    prereqs: ['百']
  },
  {
    character: '二百',
    meanings: ['Dua Ratus'],
    readings: ['にひゃく'],
    sentences: [{ ja: '切符は二百円です。', id: 'Tiketnya dua ratus yen.' }],
    prereqs: ['二', '百']
  },
  {
    character: '三百',
    meanings: ['Tiga Ratus'],
    readings: ['さんびゃく'],
    sentences: [{ ja: '水は三百ミリです。', id: 'Airnya tiga ratus mili.' }],
    prereqs: ['三', '百']
  },
  {
    character: '見る',
    meanings: ['Melihat', 'Menonton'],
    readings: ['みる'],
    sentences: [{ ja: 'テレビを見ます。', id: 'Saya menonton televisi.' }],
    prereqs: ['見']
  },
  {
    character: '見える',
    meanings: ['Terlihat', 'Tampak'],
    readings: ['みえる'],
    sentences: [{ ja: '山が見えます。', id: 'Gunungnya terlihat.' }],
    prereqs: ['見']
  },
  {
    character: '見せる',
    meanings: ['Memperlihatkan', 'Menunjukkan'],
    readings: ['みせる'],
    sentences: [{ ja: '写真を見せてください。', id: 'Tolong tunjukkan fotonya.' }],
    prereqs: ['見']
  },
  {
    character: '来る',
    meanings: ['Datang'],
    readings: ['くる'],
    sentences: [{ ja: '友達が家に来ます。', id: 'Teman saya datang ke rumah.' }],
    prereqs: ['来']
  },
  {
    character: '来月',
    meanings: ['Bulan Depan'],
    readings: ['らいげつ'],
    sentences: [{ ja: '来月また会いましょう。', id: 'Mari bertemu lagi bulan depan.' }],
    prereqs: ['来', '月']
  },
  {
    character: '何',
    meanings: ['Apa'],
    readings: ['なに', 'なん'],
    sentences: [{ ja: 'これは何ですか？', id: 'Apa ini?' }],
    prereqs: ['何']
  },
  {
    character: '何日',
    meanings: ['Hari Apa', 'Berapa Hari'],
    readings: ['なんにち'],
    sentences: [{ ja: '今日は何日ですか？', id: 'Hari ini tanggal berapa?' }],
    prereqs: ['何', '日']
  },
  {
    character: '何時',
    meanings: ['Jam Berapa'],
    readings: ['なんじ'],
    sentences: [{ ja: '今何時ですか？', id: 'Sekarang jam berapa?' }],
    prereqs: ['何', '時']
  },
  {
    character: '男',
    meanings: ['Laki-laki'],
    readings: ['おとこ'],
    sentences: [{ ja: '男の人が歩いています。', id: 'Seorang laki-laki sedang berjalan.' }],
    prereqs: ['男']
  },
  {
    character: '男の子',
    meanings: ['Anak Laki-laki'],
    readings: ['おとこのこ'],
    sentences: [{ ja: '男の子が遊んでいます。', id: 'Anak laki-laki itu sedang bermain.' }],
    prereqs: ['男', '子']
  },
  {
    character: '男の人',
    meanings: ['Pria', 'Laki-laki Dewasa'],
    readings: ['おotokonohito', 'おとこのひと'],
    sentences: [{ ja: 'あの男の人は誰ですか？', id: 'Siapakah pria itu?' }],
    prereqs: ['男', '人']
  },
  {
    character: '車',
    meanings: ['Mobil', 'Kendaraan'],
    readings: ['くるま'],
    sentences: [{ ja: '新しい車を買いました。', id: 'Saya membeli mobil baru.' }],
    prereqs: ['車']
  },
  {
    character: '電車',
    meanings: ['Kereta Listrik'],
    readings: ['でんしゃ'],
    sentences: [{ ja: '電車で通学します。', id: 'Saya pergi ke sekolah menggunakan kereta listrik.' }],
    prereqs: ['電', '車']
  },
  {
    character: '長い',
    meanings: ['Panjang'],
    readings: ['ながい'],
    sentences: [{ ja: '彼女の髪は長いです。', id: 'Rambutnya (perempuan) panjang.' }],
    prereqs: ['長']
  },
  {
    character: '校長',
    meanings: ['Kepala Sekolah'],
    readings: ['こうちょう'],
    sentences: [{ ja: '校長先生が話します。', id: 'Kepala sekolah sedang berbicara.' }],
    prereqs: ['校', '長']
  },
  {
    character: '国',
    meanings: ['Negara'],
    readings: ['くに'],
    sentences: [{ ja: 'ここは美しい国です。', id: 'Di sini adalah negara yang indah.' }],
    prereqs: ['国']
  },
  {
    character: '外国',
    meanings: ['Negara Asing'],
    readings: ['がいこく'],
    sentences: [{ ja: '外国に行きたいです。', id: 'Saya ingin pergi ke luar negeri.' }],
    prereqs: ['外', '国']
  },
  {
    character: '中国',
    meanings: ['Cina', 'Tiongkok'],
    readings: ['ちゅうごく'],
    sentences: [{ ja: '中国はとても広いです。', id: 'Cina sangat luas.' }],
    prereqs: ['中', '国']
  },
  {
    character: '金',
    meanings: ['Emas'],
    readings: ['きん'],
    sentences: [{ ja: '金メダルをもらいました。', id: 'Mendapatkan medali emas.' }],
    prereqs: ['金']
  },
  {
    character: 'お金',
    meanings: ['Uang'],
    readings: ['おかね'],
    sentences: [{ ja: 'お金がありません。', id: 'Saya tidak punya uang.' }],
    prereqs: ['金']
  },
  {
    character: '金曜日',
    meanings: ['Hari Jumat'],
    readings: ['きんようび'],
    sentences: [{ ja: '金曜日にテストがあります。', id: 'Ada ujian pada hari Jumat.' }],
    prereqs: ['金', '日']
  },
  {
    character: '学ぶ',
    meanings: ['Belajar'],
    readings: ['まなぶ'],
    sentences: [{ ja: '日本語を学びます。', id: 'Saya belajar bahasa Jepang.' }],
    prereqs: ['学']
  },
  {
    character: '学生',
    meanings: ['Siswa', 'Mahasiswa'],
    readings: ['がくせい'],
    sentences: [{ ja: '私は学生です。', id: 'Saya adalah seorang siswa.' }],
    prereqs: ['学', '生']
  },
  {
    character: '大学',
    meanings: ['Universitas'],
    readings: ['だいがく'],
    sentences: [{ ja: '大学で勉強します。', id: 'Saya belajar di universitas.' }],
    prereqs: ['大', '学']
  },
  {
    character: '学校',
    meanings: ['Sekolah'],
    readings: ['がっこう'],
    sentences: [{ ja: '学校へ行きます。', id: 'Saya pergi ke sekolah.' }],
    prereqs: ['学', '校']
  },
  {
    character: '東',
    meanings: ['Timur'],
    readings: ['ひがし'],
    sentences: [{ ja: '太陽は東から昇ります。', id: 'Matahari terbit dari timur.' }],
    prereqs: ['東']
  },
  {
    character: '東京',
    meanings: ['Tokyo'],
    readings: ['とうきょう'],
    sentences: [{ ja: '東京は日本の首都です。', id: 'Tokyo adalah ibu kota Jepang.' }],
    prereqs: ['東']
  },
  {
    character: '北東',
    meanings: ['Timur Laut'],
    readings: ['ほくとう'],
    sentences: [{ ja: '風が北東に向かう。', id: 'Angin mengarah ke timur laut.' }],
    prereqs: ['北', '東']
  },
  {
    character: '雨',
    meanings: ['Hujan'],
    readings: ['あめ'],
    sentences: [{ ja: '雨が降っています。', id: 'Hujan sedang turun.' }],
    prereqs: ['雨']
  },
  {
    character: '大雨',
    meanings: ['Hujan Lebat'],
    readings: ['おおあめ'],
    sentences: [{ ja: '大雨で学校が休みになった。', id: 'Sekolah diliburkan karena hujan lebat.' }],
    prereqs: ['大', '雨']
  },
  {
    character: '雨水',
    meanings: ['Air Hujan'],
    readings: ['あまみず'],
    sentences: [{ ja: '雨水をためます。', id: 'Menampung air hujan.' }],
    prereqs: ['雨', '水']
  },
  {
    character: '前',
    meanings: ['Depan', 'Sebelum'],
    readings: ['まえ'],
    sentences: [{ ja: '駅の前で待ちます。', id: 'Menunggu di depan stasiun.' }],
    prereqs: ['前']
  },
  {
    character: '午前',
    meanings: ['Pagi', 'A.M.'],
    readings: ['ごぜん'],
    sentences: [{ ja: '午前九時に会議があります。', id: 'Ada pertemuan jam 9 pagi.' }],
    prereqs: ['前']
  },
  {
    character: '後',
    meanings: ['Setelah', 'Nanti'],
    readings: ['あと', 'のち'],
    sentences: [{ ja: '食事の後で薬を飲みます。', id: 'Minum obat setelah makan.' }],
    prereqs: ['後']
  },
  {
    character: '後ろ',
    meanings: ['Belakang'],
    readings: ['うしろ'],
    sentences: [{ ja: '私の後ろに立たないで。', id: 'Jangan berdiri di belakang saya.' }],
    prereqs: ['後']
  },
  {
    character: '午後',
    meanings: ['Sore', 'P.M.'],
    readings: ['ごご'],
    sentences: [{ ja: '午後三時に帰ります。', id: 'Saya akan pulang jam 3 sore.' }],
    prereqs: ['後']
  },
  {
    character: '食べる',
    meanings: ['Makan'],
    readings: ['たべる'],
    sentences: [{ ja: '朝ご飯を食べます。', id: 'Saya makan sarapan.' }],
    prereqs: ['食']
  },
  {
    character: '食べ物',
    meanings: ['Makanan'],
    readings: ['たべもの'],
    sentences: [{ ja: '日本の食べ物は美味しい。', id: 'Makanan Jepang enak.' }],
    prereqs: ['食']
  },
  {
    character: '南',
    meanings: ['Selatan'],
    readings: ['みなみ'],
    sentences: [{ ja: '鳥は南へ飛ぶ。', id: 'Burung terbang ke selatan.' }],
    prereqs: ['南']
  },
  {
    character: '東南',
    meanings: ['Tenggara'],
    readings: ['とうなん'],
    sentences: [{ ja: '東南アジアに行きます。', id: 'Pergi ke Asia Tenggara.' }],
    prereqs: ['東', '南']
  },
  {
    character: '時',
    meanings: ['Waktu', 'Saat'],
    readings: ['とき'],
    sentences: [{ ja: '子供の時、ここに住んでいた。', id: 'Saat masih anak-anak, saya tinggal di sini.' }],
    prereqs: ['時']
  },
  {
    character: '時間',
    meanings: ['Waktu', 'Durasi'],
    readings: ['じかん'],
    sentences: [{ ja: '時間がありません。', id: 'Tidak ada waktu.' }],
    prereqs: ['時', '間']
  },
  {
    character: '時々',
    meanings: ['Kadang-kadang'],
    readings: ['ときどき'],
    sentences: [{ ja: '時々映画を見に行きます。', id: 'Kadang-kadang saya pergi menonton film.' }],
    prereqs: ['時']
  },
  {
    character: '高い',
    meanings: ['Tinggi', 'Mahal'],
    readings: ['たかい'],
    sentences: [{ ja: 'このカメラは高いです。', id: 'Kamera ini mahal.' }],
    prereqs: ['高']
  },
  {
    character: '高校',
    meanings: ['SMA'],
    readings: ['こうこう'],
    sentences: [{ ja: '彼は高校の先生です。', id: 'Dia adalah guru SMA.' }],
    prereqs: ['高', '校']
  },
  {
    character: '書k',
    meanings: ['Menulis'],
    readings: ['かく'],
    sentences: [{ ja: 'ノートに名前を書きます。', id: 'Menulis nama di buku catatan.' }],
    prereqs: ['書']
  },
  {
    character: '書く',
    meanings: ['Menulis'],
    readings: ['かく'],
    sentences: [{ ja: '日本語で日記を書きます。', id: 'Menulis buku harian dalam bahasa Jepang.' }],
    prereqs: ['書']
  },
  {
    character: '辞書',
    meanings: ['Kamus'],
    readings: ['じしょ'],
    sentences: [{ ja: '辞書を引いてください。', id: 'Tolong buka/cari di kamus.' }],
    prereqs: ['書']
  },
  {
    character: '高校生',
    meanings: ['Siswa SMA'],
    readings: ['こうこうせい'],
    sentences: [{ ja: '妹は高校生です。', id: 'Adik perempuan saya adalah siswa SMA.' }],
    prereqs: ['高', '校', '生']
  },
  {
    character: '話す',
    meanings: ['Berbicara'],
    readings: ['はなす'],
    sentences: [{ ja: '日本語で話しましょう。', id: 'Mari berbicara dalam bahasa Jepang.' }],
    prereqs: ['話']
  },
  {
    character: '話',
    meanings: ['Cerita', 'Obrolan'],
    readings: ['はなし'],
    sentences: [{ ja: '面白い話があります。', id: 'Ada cerita yang menarik.' }],
    prereqs: ['話']
  },
  {
    character: '電話',
    meanings: ['Telepon'],
    readings: ['でんわ'],
    sentences: [{ ja: '友達に電話をかけます。', id: 'Saya menelepon teman.' }],
    prereqs: ['話']
  },
  {
    character: '電気',
    meanings: ['Listrik', 'Lampu'],
    readings: ['でんき'],
    sentences: [{ ja: '電気を消してください。', id: 'Tolong matikan lampu.' }],
    prereqs: ['気']
  },
  {
    character: '聞く',
    meanings: ['Mendengar', 'Bertanya'],
    readings: ['きく'],
    sentences: [{ ja: '先生に質問を聞きます。', id: 'Bertanya/bertanya kepada guru.' }],
    prereqs: ['聞']
  },
  {
    character: '聞こえる',
    meanings: ['Terdengar'],
    readings: ['きこえる'],
    sentences: [{ ja: '鳥の声が聞こえます。', id: 'Suara burung terdengar.' }],
    prereqs: ['聞']
  },
  {
    character: '日本語',
    meanings: ['Bahasa Jepang'],
    readings: ['にほんご'],
    sentences: [{ ja: '日本語を勉強しています。', id: 'Saya sedang belajar bahasa Jepang.' }],
    prereqs: ['語']
  },
  {
    character: '外国語',
    meanings: ['Bahasa Asing'],
    readings: ['がいこくご'],
    sentences: [{ ja: '外国語を話せますか？', id: 'Apakah Anda bisa berbicara bahasa asing?' }],
    prereqs: ['外', '国', '語']
  },
  {
    character: '読む',
    meanings: ['Membaca'],
    readings: ['よむ'],
    sentences: [{ ja: '本を読みます。', id: 'Saya membaca buku.' }],
    prereqs: ['読']
  },
  {
    character: '読書',
    meanings: ['Membaca Buku'],
    readings: ['どくしょ'],
    sentences: [{ ja: '趣味は読書です。', id: 'Hobi saya adalah membaca buku.' }],
    prereqs: ['読', '書']
  }
];

// Combine all raw data and parse level 2/3 SQLs
function parseSQLFile(filePath) {
  const content = fs.readFileSync(filePath, 'utf8');
  const items = [];
  const meanings = [];
  const readings = [];
  const sentences = [];
  const prereqs = [];
  
  // Parse items
  // Format: INSERT INTO items (type, character, slug, level, lesson_position, description) VALUES ('radical', '本', 'book', 2, 1, '...') RETURNING id INTO r_hon;
  const itemRegex = /INSERT\s+INTO\s+(?:public\.)?items\s*\([^)]+\)\s*VALUES\s*\(\s*'([^']+)'\s*,\s*'([^']+)'\s*,\s*'([^']+)'\s*,\s*(\d+)\s*,\s*(\d+)\s*,\s*'([^']+)'\s*\)/gi;
  let match;
  while ((match = itemRegex.exec(content)) !== null) {
    items.push({
      type: match[1],
      character: match[2],
      slug: match[3],
      level: parseInt(match[4]),
      lesson_position: parseInt(match[5]),
      description: match[6]
    });
  }

  // Parse meanings
  // INSERT INTO item_meanings (item_id, meaning, primary_meaning) VALUES (v_vocab_1, 'Atas', true);
  // Also parse multi values
  const meaningRegex = /INSERT\s+INTO\s+(?:public\.)?item_meanings\s*\([^)]+\)\s*VALUES\s*\(\s*([a-z0-9_]+)\s*,\s*'([^']+)'\s*,\s*([a-z]+)\s*\)/gi;
  while ((match = meaningRegex.exec(content)) !== null) {
    meanings.push({
      varName: match[1],
      meaning: match[2],
      primary_meaning: match[3] === 'true'
    });
  }

  // Parse readings
  // INSERT INTO item_readings (item_id, reading, reading_type, primary_reading) VALUES (v_vocab_1, 'うえ', NULL, true);
  const readingRegex = /INSERT\s+INTO\s+(?:public\.)?item_readings\s*\([^)]+\)\s*VALUES\s*\(\s*([a-z0-9_]+)\s*,\s*'([^']+)'\s*,\s*(NULL|'[^']+')\s*,\s*([a-z]+)\s*\)/gi;
  while ((match = readingRegex.exec(content)) !== null) {
    readings.push({
      varName: match[1],
      reading: match[2],
      reading_type: match[3] === 'NULL' ? null : match[3].replace(/'/g, ''),
      primary_reading: match[4] === 'true'
    });
  }

  // Parse sentences
  // INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_vocab_1, '本は机の上にあります。', 'Buku itu ada di atas meja.');
  const sentenceRegex = /INSERT\s+INTO\s+(?:public\.)?item_context_sentences\s*\([^)]+\)\s*VALUES\s*\(\s*([a-z0-9_]+)\s*,\s*'([^']+)'\s*,\s*'([^']+)'\s*\)/gi;
  while ((match = sentenceRegex.exec(content)) !== null) {
    sentences.push({
      varName: match[1],
      japanese: match[2],
      indonesian: match[3]
    });
  }

  // Parse variable assignments to characters to map varName to character!
  // RETURNING id INTO r_hon;
  // Let's search all lines for RETURNING id INTO varName;
  const varMap = {};
  const varRegex = /VALUES\s*\(\s*'([^']+)'\s*,\s*'([^']+)'[^;]+RETURNING\s+id\s+INTO\s+([a-z0-9_]+)/gi;
  while ((match = varRegex.exec(content)) !== null) {
    varMap[match[3]] = { type: match[1], character: match[2] };
  }

  // We can also extract prerequisites!
  // INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES (v_vocab_76, k_kanji_4eca)
  // But wait, it's easier to link vocab-kanji and kanji-radical programmatically since we have all characters!

  return { items, meanings, readings, sentences, varMap };
}

console.log('Parsing Level 2 seed...');
const s2Data = parseSQLFile(seed2Path);
console.log('Parsing Level 3 seed...');
const s3Data = parseSQLFile(seed3Path);

// Merge parsed data from level 2 and 3 seeds
const allParsedItems = [...s2Data.items, ...s3Data.items];
const allParsedMeanings = [...s2Data.meanings, ...s3Data.meanings];
const allParsedReadings = [...s2Data.readings, ...s3Data.readings];
const allParsedSentences = [...s2Data.sentences, ...s3Data.sentences];
const allVarMaps = { ...s2Data.varMap, ...s3Data.varMap };

// Build maps of characters to meanings, readings, sentences
const charMeanings = {};
const charReadings = {};
const charSentences = {};
const charDescriptions = {};
const charSlugs = {};
const charLevels = {};

// Radicals or Kanji or Vocab that were in Level 2/3 seeds
allParsedItems.forEach(item => {
  charDescriptions[item.character] = item.description;
  charSlugs[item.character] = item.slug;
  charLevels[item.character] = item.level;
});

// Map varName to character for meanings, readings, sentences
allParsedMeanings.forEach(m => {
  const charInfo = allVarMaps[m.varName];
  if (charInfo) {
    const key = charInfo.character;
    if (!charMeanings[key]) charMeanings[key] = [];
    charMeanings[key].push({ meaning: m.meaning, primary: m.primary_meaning });
  }
});

allParsedReadings.forEach(r => {
  const charInfo = allVarMaps[r.varName];
  if (charInfo) {
    const key = charInfo.character;
    if (!charReadings[key]) charReadings[key] = [];
    charReadings[key].push({ reading: r.reading, type: r.reading_type, primary: r.primary_reading });
  }
});

allParsedSentences.forEach(s => {
  const charInfo = allVarMaps[s.varName];
  if (charInfo) {
    const key = charInfo.character;
    if (!charSentences[key]) charSentences[key] = [];
    charSentences[key].push({ japanese: s.japanese, indonesian: s.indonesian });
  }
});

// Now, compile Kanjis for Pangkat 2 and Pangkat 3
function getKanjiData(char) {
  // If it's in our missing kanji list, use that
  if (missingKanjisMap[char]) {
    const mk = missingKanjisMap[char];
    return {
      character: mk.character,
      slug: mk.character, // Use character itself as slug
      level: 2, // Default level
      description: mk.meaning_mnemonic,
      meaning_mnemonic: mk.meaning_mnemonic,
      reading_mnemonic: mk.reading_mnemonic,
      meanings: mk.meanings.map((m, idx) => ({ meaning: m, primary: idx === 0 })),
      readings: [
        ...mk.onyomi.map(r => ({ reading: r, type: 'onyomi', primary: true })),
        ...mk.kunyomi.map(r => ({ reading: r, type: 'kunyomi', primary: false }))
      ],
      radicals: mk.radicals
    };
  }
  // Otherwise it's in our parsed Level 2/3 seeds
  const meanings = charMeanings[char] || [{ meaning: char, primary: true }];
  const readings = charReadings[char] || [];
  return {
    character: char,
    slug: charSlugs[char] || char,
    level: charLevels[char] || 2,
    description: charDescriptions[char] || '',
    meaning_mnemonic: charDescriptions[char] || '',
    reading_mnemonic: 'Onyomi/kunyomi readings.',
    meanings: meanings,
    readings: readings,
    // We can infer its radicals!
    // For simplicity, let's map radicals of L2/3 Kanjis based on WaniKani mappings:
    // e.g. 火 -> 火, 五 -> 五, 円 -> 冂/一, 午 -> 干/十, 六 -> 亠/ハ, 出 -> 山, 生 -> 生, 本 -> 本, 外 -> 夕/ト, 母 -> 母, 白 -> 白, 半 -> 半, 北 -> 北, 四 -> 囗/儿, 左 -> 丆/工, 右 -> 丆/口
    radicals: getRadicalsForL23Kanji(char)
  };
}

function getRadicalsForL23Kanji(char) {
  const map = {
    '火': ['火'], '五': ['五'], '円': ['冂', '一'], '午': ['干', '十'], '六': ['亠', 'ハ'],
    '出': ['山'], '生': ['生'], '本': ['本'], '外': ['夕', 'ト'], '母': ['母'],
    '白': ['白'], '半': ['半'], '北': ['北'], '四': ['囗', '儿'], '左': ['丆', '工'], '右': ['丆', '口']
  };
  return map[char] || [];
}

// Compile all radicals needed
// We need to gather definitions of radicals used by our Kanjis
// Standard radicals present in N5 Pangkat 1:
// 一, 人, 入, 二, 十, 八 (or ハ), 七, 九, 大, 子, 卜, 女, 小, 山, 厂 (or 丆), 刀, 川, 土, 千, 日, 中, 今, 月, 水, 木, 父, ナ, 又, 天
// Any radical not in this list must be inserted!
const p1Radicals = new Set(['一', '人', '入', '二', '十', '八', 'ハ', '七', '九', '大', '子', '卜', '女', '小', '山', '厂', '丆', '刀', '川', '土', '千', '日', '中', '今', '月', '水', '木', '父', 'ナ', '又', '天']);

const customRadicals = {
  '彳': { slug: 'langkah', meanings: ['langkah', 'jalan'], description: 'Radikal melambangkan orang melangkah.' },
  '干': { slug: 'kering', meanings: ['kering'], description: 'Menggambarkan jemuran yang kering.' },
  '气': { slug: 'uap', meanings: ['uap', 'energi'], description: 'Uap air hangat yang membubung.' },
  '口': { slug: 'mulut', meanings: ['mulut'], description: 'Bentuk mulut yang terbuka.' },
  '夕': { slug: 'sore', meanings: ['sore', 'malam'], description: 'Bulan sabit di sore hari.' },
  '西': { slug: 'barat', meanings: ['barat'], description: 'Matahari tenggelam di barat.' },
  '毋': { slug: 'jangan', meanings: ['jangan'], description: 'Melambangkan larangan.' },
  '目': { slug: 'mata', meanings: ['mata'], description: 'Sepasang kelopak mata.' },
  '儿': { slug: 'kaki', meanings: ['kaki', 'anak'], description: 'Sepasang kaki manusia.' },
  '田': { slug: 'sawah', meanings: ['sawah', 'ladang'], description: 'Petak sawah pertanian.' },
  '力': { slug: 'kekuatan', meanings: ['kekuatan', 'tenaga'], description: 'Otot tangan yang kuat.' },
  '車': { slug: 'mobil', meanings: ['mobil', 'gerobak'], description: 'Kendaraan beroda.' },
  '長': { slug: 'panjang', meanings: ['panjang', 'pemimpin'], description: 'Rambut panjang yang anggun.' },
  '囗': { slug: 'kotak', meanings: ['kotak', 'lingkaran'], description: 'Batas wilayah persegi.' },
  '玉': { slug: 'permata', meanings: ['permata', 'raja'], description: 'Batu permata indah milik raja.' },
  '金': { slug: 'emas', meanings: ['emas', 'uang'], description: 'Logam emas berharga.' },
  '冖': { slug: 'topi', meanings: ['topi', 'atap'], description: 'Penutup kepala atau kain.' },
  '雨': { slug: 'hujan', meanings: ['hujan'], description: 'Rintik hujan dari awan.' },
  '食': { slug: 'makan', meanings: ['makan', 'makanan'], description: 'Sajian makanan di mangkuk.' },
  '冂': { slug: 'lebar', meanings: ['lebar', 'bingkai'], description: 'Gerbang atau bingkai lebar.' },
  '高': { slug: 'tinggi', meanings: ['tinggi'], description: 'Menara bangunan tinggi.' },
  '聿': { slug: 'kuas', meanings: ['kuas', 'alat tulis'], description: 'Tangan memegang kuas tulis.' },
  '門': { slug: 'gerbang', meanings: ['gerbang', 'pintu'], description: 'Dua daun pintu gerbang besar.' },
  '言': { slug: 'bicara', meanings: ['bicara', 'kata'], description: 'Mulut yang mengeluarkan gelombang suara.' },
  '耳': { slug: 'telinga', meanings: ['telinga'], description: 'Daun telinga untuk mendengar.' },
  '舌': { slug: 'lidah', meanings: ['lidah'], description: 'Lidah di dalam mulut.' },
  '五': { slug: 'lima', meanings: ['lima'], description: 'Garis menyilang membentuk angka 5.' },
  '士': { slug: 'sarjana', meanings: ['sarjana', 'prajurit'], description: 'Orang terpelajar yang berdiri tegak.' },
  '弓': { slug: 'busur', meanings: ['busur', 'panah'], description: 'Busur panah melengkung.' },
  '牛': { slug: 'sapi', meanings: ['sapi'], description: 'Kepala sapi bertanduk.' },
  '尸': { slug: 'bendera', meanings: ['bendera', 'mayat'], description: 'Tiang bendera beratap.' },
  '彡': { slug: 'rambut', meanings: ['rambut', 'bulu'], description: 'Tiga helai rambut halus.' },
  '手': { slug: 'tangan', meanings: ['tangan'], description: 'Lima jari tangan merentang.' },
  '王': { slug: 'raja', meanings: ['raja'], description: 'Raja yang memakai mahkota emas.' },
  '止': { slug: 'berhenti', meanings: ['berhenti'], description: 'Langkah kaki yang terhenti.' },
  '丁': { slug: 'paku', meanings: ['paku', 'pekerja'], description: 'Kepala paku logam.' },
  '白': { slug: 'putih', meanings: ['putih'], description: 'Sinar matahari putih.' },
  '文': { slug: 'sastra', meanings: ['sastra', 'tulisan'], description: 'Goresan kuas kaligrafi.' },
  '矢': { slug: 'anak panah', meanings: ['anak panah'], description: 'Anak panah tajam.' },
  '广': { slug: 'kanopi', meanings: ['kanopi', 'atap'], description: 'Atap gantung di tebing.' },
  '方': { slug: 'arah', meanings: ['arah'], description: 'Tanda penunjuk arah jalan.' },
  '戸': { slug: 'pintu', meanings: ['pintu tunggal'], description: 'Satu daun pintu kamar.' },
  '扌': { slug: 'jari', meanings: ['jari tangan'], description: 'Bentuk samping telapak tangan.' },
  '毛': { slug: 'bulu', meanings: ['bulu', 'rambut'], description: 'Helai bulu binatang lembut.' },
  '𠆢': { slug: 'topi orang', meanings: ['topi orang'], description: 'Topi pelindung kepala.' },
  '心': { slug: 'jantung', meanings: ['jantung', 'hati'], description: 'Organ jantung manusia.' },
  '冫': { slug: 'es', meanings: ['es'], description: 'Dua tetes air membeku.' },
  '生': { slug: 'hidup', meanings: ['hidup', 'tumbuh'], description: 'Tunas tanaman tumbuh subur.' },
  '北': { slug: 'utara', meanings: ['utara'], description: 'Dua orang duduk membelakangi arah utara.' },
  '古': { slug: 'kuno', meanings: ['kuno', 'tua'], description: 'Cerita mulut yang diturunkan sepuluh generasi.' },
  '幺': { slug: 'benang', meanings: ['benang kecil'], description: 'Gulungan benang halus.' },
  '型': { slug: 'cetakan', meanings: ['cetakan'], description: 'Alat cetak.' },
  '石': { slug: 'batu', meanings: ['batu'], description: 'Bongkahan batu di tebing.' },
  '用': { slug: 'guna', meanings: ['guna'], description: 'Keranjang anyaman bambu yang berguna.' },
  '巾': { slug: 'handuk', meanings: ['handuk'], description: 'Kain handuk jemuran.' },
  '⺌': { slug: 'duri', meanings: ['duri', 'spikes'], description: 'Tiga duri tajam tanaman.' },
  '夂': { slug: 'musim dingin', meanings: ['musim dingin', 'go'], description: 'Langkah kaki lambat bersalju.' },
  'ト': { slug: 'tongkat', meanings: ['tongkat peramal'], description: 'Tongkat retakan ramalan cangkang kura-kura.' },
  '工': { slug: 'alat', meanings: ['alat', 'kerja'], description: 'Peralatan tukang kayu.' },
  'メ': { slug: 'harta', meanings: ['harta', 'silang'], description: 'Tanda silang kotak harta karun.' }
};

// Compile all Vocabularies
// Extract WaniKani vocabularies from seed Level 2 & 3
const extractedVocabs = [];
const allExtractedVocabsSet = new Set();

function addExtractedVocab(char, val) {
  if (allExtractedVocabsSet.has(char)) return;
  allExtractedVocabsSet.add(char);
  extractedVocabs.push(val);
}

// Level 2/3 vocabulary parsed
Object.keys(charMeanings).forEach(key => {
  // If it's a vocabulary item and its character contains ONLY N5 kanjis and kana
  const isVocab = allParsedItems.some(i => i.character === key && i.type === 'vocabulary');
  if (isVocab) {
    const meanings = charMeanings[key];
    const readings = charReadings[key];
    const sents = charSentences[key] || [];
    
    // Determine constituent kanjis
    const constKanjis = [];
    for (let c of key) {
      if (allN5Set.has(c)) {
        constKanjis.push(c);
      }
    }

    addExtractedVocab(key, {
      character: key,
      slug: charSlugs[key] || key,
      level: charLevels[key] || 2,
      description: charDescriptions[key] || '',
      meaning_mnemonic: charDescriptions[key] || '',
      reading_mnemonic: 'Readings.',
      meanings: meanings,
      readings: readings,
      sentences: sents.map(s => ({ ja: s.japanese, id: s.indonesian })),
      prereqs: constKanjis
    });
  }
});

// Also add our manually defined vocabularies for the 34 missing Kanjis
missingVocabsData.forEach(mv => {
  addExtractedVocab(mv.character, {
    character: mv.character,
    slug: mv.character,
    level: 2,
    description: `Kosakata untuk kanji ${mv.prereqs.join(', ')}.`,
    meaning_mnemonic: `Gabungan arti kanji ${mv.prereqs.join(', ')}.`,
    reading_mnemonic: `Cara baca kosa kata ${mv.character}.`,
    meanings: mv.meanings.map((m, idx) => ({ meaning: m, primary: idx === 0 })),
    readings: mv.readings.map((r, idx) => ({ reading: r, type: null, primary: idx === 0 })),
    sentences: mv.sentences,
    prereqs: mv.prereqs
  });
});

console.log('Total Compiled Vocabularies:', extractedVocabs.length);

// Allocate Kanjis, Radicals, and Vocabularies into Pangkat 2 and Pangkat 3
const p2KanjiData = p2Kanjis.map(k => getKanjiData(k));
const p3KanjiData = p3Kanjis.map(k => getKanjiData(k));

// Radicals allocation:
// A radical is needed in Pangkat X if it is a prerequisite for a Kanji in Pangkat X,
// and it is NOT in Pangkat 1, and NOT already allocated in a previous level.
const allocatedRadicals = new Set();
const p2RadicalData = [];
const p3RadicalData = [];

p2KanjiData.forEach(kd => {
  kd.radicals.forEach(r => {
    if (!p1Radicals.has(r) && !allocatedRadicals.has(r)) {
      allocatedRadicals.add(r);
      const data = customRadicals[r] || { slug: r, meanings: [r], description: `Radikal ${r}.` };
      p2RadicalData.push({ character: r, slug: data.slug, meanings: data.meanings, description: data.description });
    }
  });
});

p3KanjiData.forEach(kd => {
  kd.radicals.forEach(r => {
    if (!p1Radicals.has(r) && !allocatedRadicals.has(r)) {
      allocatedRadicals.add(r);
      const data = customRadicals[r] || { slug: r, meanings: [r], description: `Radikal ${r}.` };
      p3RadicalData.push({ character: r, slug: data.slug, meanings: data.meanings, description: data.description });
    }
  });
});

// Vocabularies allocation based on compatibility rules:
// - A vocabulary is allocated to Pangkat 2 if ALL of its constituent kanjis are in (Pangkat 1 + Pangkat 2),
//   and it contains at least one Kanji from Pangkat 2 (or contains only Kana).
// - A vocabulary is allocated to Pangkat 3 if ALL of its constituent kanjis are in (Pangkat 1 + Pangkat 2 + Pangkat 3),
//   and it contains at least one Kanji from Pangkat 3.
const p2VocabData = [];
const p3VocabData = [];

extractedVocabs.forEach(vocab => {
  // Check if all Kanjis in the vocab are in Pangkat 1 + Pangkat 2
  const allInP1P2 = vocab.prereqs.every(k => p1Set.has(k) || p2Set.has(k));
  const hasP2Kanji = vocab.prereqs.some(k => p2Set.has(k));
  const hasP3Kanji = vocab.prereqs.some(k => p3Set.has(k));
  const allInAllN5 = vocab.prereqs.every(k => allN5Set.has(k));

  if (allInP1P2 && (hasP2Kanji || vocab.prereqs.length === 0)) {
    p2VocabData.push(vocab);
  } else if (allInAllN5 && hasP3Kanji) {
    p3VocabData.push(vocab);
  }
});

console.log('Pangkat 2 Kanjis:', p2KanjiData.length);
console.log('Pangkat 2 Radicals:', p2RadicalData.length);
console.log('Pangkat 2 Vocabs:', p2VocabData.length);

console.log('Pangkat 3 Kanjis:', p3KanjiData.length);
console.log('Pangkat 3 Radicals:', p3RadicalData.length);
console.log('Pangkat 3 Vocabs:', p3VocabData.length);

// Generate SQL Seeding strings using static UUIDs
function generateSQL(rankId, rankName, radicals, kanjis, vocabs) {
  // Pre-generate UUIDs for everything
  radicals.forEach(r => r.id = crypto.randomUUID());
  kanjis.forEach(k => k.id = crypto.randomUUID());
  vocabs.forEach(v => v.id = crypto.randomUUID());

  let sql = `-- ============================================================
-- KaniGani Seed Data: ${rankName}
-- Generated automatically with static UUIDs
-- ============================================================

-- 1. Clean up existing items in this rank
DELETE FROM public.items WHERE rank_id = '${rankId}';

-- 2. Insert Radicals
`;

  // Insert Radicals
  radicals.forEach((r) => {
    const escapedDesc = r.description.replace(/'/g, "''");
    sql += `INSERT INTO public.items (id, type, character, slug, level, rank_id, description) VALUES ('${r.id}', 'radical', '${r.character}', '${r.slug}', 1, '${rankId}', '${escapedDesc}') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, description = EXCLUDED.description;\n`;
    
    r.meanings.forEach(m => {
      sql += `INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('${r.id}', '${m}', true) ON CONFLICT DO NOTHING;\n`;
    });
  });

  sql += `\n-- 3. Insert Kanjis\n`;
  // Insert Kanjis
  kanjis.forEach((k) => {
    const escapedDesc = k.meaning_mnemonic.replace(/'/g, "''");
    sql += `INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, reading_mnemonic) VALUES ('${k.id}', 'kanji', '${k.character}', '${k.slug}', ${k.level}, '${rankId}', '${escapedDesc}', '${k.reading_mnemonic.replace(/'/g, "''")}') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, reading_mnemonic = EXCLUDED.reading_mnemonic;\n`;
    
    k.meanings.forEach(m => {
      sql += `INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('${k.id}', '${m.meaning}', ${m.primary}) ON CONFLICT DO NOTHING;\n`;
    });
    k.readings.forEach(r => {
      const typeStr = r.type ? `'${r.type}'` : 'NULL';
      sql += `INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('${k.id}', '${r.reading}', ${typeStr}, ${r.primary}) ON CONFLICT DO NOTHING;\n`;
    });
  });

  sql += `\n-- 4. Insert Vocabularies\n`;
  // Insert Vocabularies
  vocabs.forEach((v) => {
    const escapedDesc = v.meaning_mnemonic.replace(/'/g, "''");
    sql += `INSERT INTO public.items (id, type, character, slug, level, rank_id, meaning_mnemonic, description) VALUES ('${v.id}', 'vocabulary', '${v.character}', '${v.slug}', ${v.level}, '${rankId}', '${escapedDesc}', '${v.description.replace(/'/g, "''")}') ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, character = EXCLUDED.character, slug = EXCLUDED.slug, level = EXCLUDED.level, rank_id = EXCLUDED.rank_id, meaning_mnemonic = EXCLUDED.meaning_mnemonic, description = EXCLUDED.description;\n`;

    v.meanings.forEach(m => {
      sql += `INSERT INTO public.item_meanings (item_id, meaning, primary_meaning) VALUES ('${v.id}', '${m.meaning}', ${m.primary}) ON CONFLICT DO NOTHING;\n`;
    });
    v.readings.forEach(r => {
      const typeStr = r.type ? `'${r.type}'` : 'NULL';
      sql += `INSERT INTO public.item_readings (item_id, reading, reading_type, primary_reading) VALUES ('${v.id}', '${r.reading}', ${typeStr}, ${r.primary}) ON CONFLICT DO NOTHING;\n`;
    });
    v.sentences.forEach(s => {
      sql += `INSERT INTO public.item_context_sentences (item_id, japanese, indonesian) VALUES ('${v.id}', '${s.ja.replace(/'/g, "''")}', '${s.id.replace(/'/g, "''")}') ON CONFLICT DO NOTHING;\n`;
    });
  });

  sql += `\n-- 5. Insert Kanji-to-Radical Prerequisites\n`;
  // Kanji-to-Radical prerequisites
  kanjis.forEach((k) => {
    k.radicals.forEach(rad => {
      // Find radical in this level
      const radIdx = radicals.findIndex(r => r.character === rad);
      if (radIdx !== -1) {
        sql += `INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('${k.id}', '${radicals[radIdx].id}') ON CONFLICT DO NOTHING;\n`;
      } else {
        // Fetch from public.items (either Level 1 or already seeded)
        sql += `INSERT INTO public.item_prerequisites (item_id, requires_item_id) SELECT '${k.id}', id FROM public.items WHERE type = 'radical' AND character = '${rad}' LIMIT 1 ON CONFLICT DO NOTHING;\n`;
      }
    });
  });

  sql += `\n-- 6. Insert Vocab-to-Kanji Prerequisites\n`;
  // Vocab-to-Kanji prerequisites
  vocabs.forEach((v) => {
    v.prereqs.forEach(kan => {
      // Find kanji in this level
      const kanIdx = kanjis.findIndex(k => k.character === kan);
      if (kanIdx !== -1) {
        sql += `INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) VALUES ('${v.id}', '${kanjis[kanIdx].id}') ON CONFLICT DO NOTHING;\n`;
        sql += `INSERT INTO public.item_prerequisites (item_id, requires_item_id) VALUES ('${v.id}', '${kanjis[kanIdx].id}') ON CONFLICT DO NOTHING;\n`;
      } else {
        // Fetch from public.items
        sql += `INSERT INTO public.vocabulary_kanjis (vocabulary_id, kanji_id) SELECT '${v.id}', id FROM public.items WHERE type = 'kanji' AND character = '${kan}' LIMIT 1 ON CONFLICT DO NOTHING;\n`;
        sql += `INSERT INTO public.item_prerequisites (item_id, requires_item_id) SELECT '${v.id}', id FROM public.items WHERE type = 'kanji' AND character = '${kan}' LIMIT 1 ON CONFLICT DO NOTHING;\n`;
      }
    });
  });

  sql += `\n-- 7. Initialize progress for all existing profiles\n`;
  sql += `DO $$\n`;
  sql += `DECLARE\n`;
  sql += `  r_profile RECORD;\n`;
  sql += `BEGIN\n`;
  sql += `  FOR r_profile IN SELECT id FROM public.profiles LOOP\n`;
  sql += `    PERFORM public.initialize_user_progress(r_profile.id);\n`;
  sql += `  END LOOP;\n`;
  sql += `END $$;\n`;

  return sql;
}

// Generate Pangkat 2 SQL
const p2Sql = generateSQL('b2c3d4e5-f6a7-8b9c-0d1e-2f3a4b5c6d7e', 'N5 - Pangkat 2', p2RadicalData, p2KanjiData, p2VocabData);
fs.writeFileSync(outP2Path, p2Sql, 'utf8');
console.log('Saved Pangkat 2 Seed SQL to:', outP2Path);

// Generate Pangkat 3 SQL
const p3Sql = generateSQL('c3d4e5f6-a7b8-9c0d-1e2f-3a4b5c6d7e8f', 'N5 - Pangkat 3', p3RadicalData, p3KanjiData, p3VocabData);
fs.writeFileSync(outP3Path, p3Sql, 'utf8');
console.log('Saved Pangkat 3 Seed SQL to:', outP3Path);

// Function to write split SQL files in chunks of 250 lines
function writeSplitSQL(filePath, baseOutPath) {
  const content = fs.readFileSync(filePath, 'utf8');
  const lines = content.split('\n');
  const chunkSize = 250;
  let partIndex = 1;
  
  for (let i = 0; i < lines.length; i += chunkSize) {
    const chunkLines = lines.slice(i, i + chunkSize);
    const chunkContent = chunkLines.join('\n');
    const partPath = baseOutPath.replace('.sql', `_part${partIndex}.sql`);
    fs.writeFileSync(partPath, chunkContent, 'utf8');
    console.log(`Saved split SQL chunk to: ${partPath}`);
    partIndex++;
  }
}

console.log('Splitting Pangkat 2 SQL...');
writeSplitSQL(outP2Path, outP2Path);

console.log('Splitting Pangkat 3 SQL...');
writeSplitSQL(outP3Path, outP3Path);
