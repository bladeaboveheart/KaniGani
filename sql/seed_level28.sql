-- ====================================================
-- KaniGani — Seed Data Level 28 (v2, relasional)
-- Auto-generated with Indonesian Slugs
-- ====================================================

DO $$
DECLARE
  -- ============ RADICAL IDs (Level 28) ============
  r_314_raksasa UUID; r_315_barak UUID; r_316_hercules UUID; r_317_khusus UUID; r_318_cantik UUID; r_326_aneh UUID; r_8908_depan UUID;

  -- ============ KANJI IDs (Level 28) ============
  k_1346_balik UUID; k_1347_raksasa UUID; k_1348_penyimpanan UUID; k_1349_anak UUID; k_1350_dingin UUID; k_1351_beku UUID; k_1352_masa_bayi UUID; k_1353_belum_dewasa UUID; k_1354_menghadapi UUID; k_1355_pameran UUID; k_1356_murni UUID; k_1357_murni UUID; k_1358_catatan UUID; k_1359_pasukan UUID; k_1360_menguasai UUID; k_1361_tiket UUID; k_1362_wanita UUID; k_1363_aneh UUID; k_1364_aneh UUID; k_1365_cantik UUID; k_1366_halus UUID; k_1367_keuntungan UUID; k_1368_menggeser UUID; k_1369_cakupan UUID; k_1370_roh UUID; k_1372_berbaris UUID; k_1373_konstitusi UUID; k_1374_rakyat UUID; k_1375_payung UUID; k_1376_pantai UUID; k_1377_menyerang UUID; k_1378_agresi UUID; k_1479_cantik UUID; k_1866_rawa UUID; k_9251_menyelesaikan UUID;

  -- ============ VOCABULARY IDs (Level 28) ============
  v_2945_belum UUID; v_4189_untuk_mengenakan_sepatu UUID; v_4666_kriteria UUID; v_4746_membatasi UUID; v_4786_tampilan_lengkap UUID; v_4787_latar_depan UUID; v_4887_lagi UUID; v_4890_minggu_setelah_berikutnya UUID; v_4933_karena_itu UUID; v_4989_kabel UUID; v_5013_sangat_besar UUID; v_5014_raksasa UUID; v_5028_untuk_memanggil UUID; v_5039_untuk_mencapai_puncak_sesuatu UUID; v_5092_untuk_mundur UUID; v_5105_anak_panah UUID; v_5107_berdampingan UUID; v_5108_secara_paralel UUID; v_5109_untuk_berbaris UUID; v_5110_biasa UUID; v_5111_gelar_master UUID; v_5112_memperbaiki UUID; v_5113_pelatihan UUID; v_5114_retorik UUID; v_5115_payung UUID; v_5116_tempat_payung UUID; v_5119_anak_anak UUID; v_5120_balita UUID; v_5121_dingin UUID; v_5122_berkepala_dingin UUID; v_5123_freezer UUID; v_5124_untuk_membekukan UUID; v_5125_mati_kedinginan UUID; v_5126_pembekuan UUID; v_5127_menghadapi UUID; v_5128_pembuangan UUID; v_5130_tiket UUID; v_5131_paspor UUID; v_5132_tiket_muka UUID; v_5133_buku_tiket UUID; v_5135_kekuatan_kreatif UUID; v_5136_kreatif UUID; v_5137_museum UUID; v_5139_berjudi UUID; v_5140_perbintangan UUID; v_5141_tidak_begitu_baik UUID; v_5142_aneh UUID; v_5143_obat_ajaib UUID; v_5144_wanita UUID; v_5145_suami_istri UUID; v_5147_sangat_muda UUID; v_5148_masa_kecil UUID; v_5149_gudang UUID; v_5150_brankas UUID; v_5151_garasi UUID; v_5152_untuk_memulihkan UUID; v_5154_mikroorganisme UUID; v_5155_konstitusi UUID; v_5156_pemerintahan_konstitusional UUID; v_5157_penyerapan_total UUID; v_5158_bahasa_tubuh UUID; v_5159_furigana UUID; v_5160_untuk_wawancara_dengan UUID; v_5161_untuk_menembak UUID; v_5162_menyerang UUID; v_5163_untuk_menyerang UUID; v_5164_besar UUID; v_5165_serangan_balasan UUID; v_5167_pantai UUID; v_5168_yokohama UUID; v_5169_murni UUID; v_5170_membersihkan UUID; v_5171_terhormat UUID; v_5172_kotor UUID; v_5173_berbicara_pada_diri_sendiri UUID; v_5174_laba UUID; v_5175_bermanfaat UUID; v_5176_kepentingan_umum UUID; v_5177_kepentingan_nasional UUID; v_5178_untuk_bergeser UUID; v_5179_imigrasi UUID; v_5180_migrasi UUID; v_5182_cakupan UUID; v_5183_derajat UUID; v_5184_proses UUID; v_5185_jadwal UUID; v_5186_kekanak_kanakan UUID; v_5187_roh UUID; v_5188_presisi UUID; v_5190_untuk_memutuskan_kontak UUID; v_5192_toko_permen UUID; v_5193_masyarakat_umum UUID; v_5194_dewan_perwakilan_rakyat UUID; v_5195_kotak_tabungan UUID; v_5196_relatif UUID; v_5198_balik UUID; v_5199_efek_berlawanan UUID; v_5200_untuk_melawan UUID; v_5201_paradoks UUID; v_5202_kesalahan_besar UUID; v_5203_kantor_pos UUID; v_5204_nomor_pos UUID; v_5205_kotak_pos UUID; v_5206_rekaman_suara UUID; v_5207_pendaftaran UUID; v_5208_catatan UUID; v_5209_tentara UUID; v_5210_pasukan UUID; v_5211_tentara UUID; v_5212_pendaftaran UUID; v_5262_untuk_sakit UUID; v_5265_pil_tidur UUID; v_5284_untuk_merayu UUID; v_5388_untuk_mengimpor UUID; v_5390_kami UUID; v_5392_secara_langsung UUID; v_5502_cantik UUID; v_5751_jatuh UUID; v_5839_untuk_terkulai UUID; v_6734_rawa UUID; v_6736_tanah_rawa UUID; v_7468_maju UUID; v_7717_sepupu UUID; v_8540_kerinduan UUID; v_8683_pantai UUID; v_8719_karena UUID; v_8757_untuk_membuat_kesalahan UUID; v_8758_pergerakan UUID; v_9075_pencairan UUID; v_9252_menjadi_lengkap UUID; v_9359_kutub_utara UUID; v_9370_untuk_memutar UUID; v_9374_larut_malam UUID;

BEGIN

  DELETE FROM items WHERE level = 28;

  -- 1. RADICALS
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '巨', 'raksasa', 28, 1, 'Jika Anda melihat <radical>raksasa</radical> dari atas, inilah yang akan Anda lihat. Apakah Anda melihat kepala dan kedua lengan? Raksasa itu menghadap ke arah kanan.')
    RETURNING id INTO r_314_raksasa;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '屯', 'barak', 28, 2, 'Anda menempelkan payung dengan perosotan besar ke lereng gunung untuk membuat <radikal>barak</radikal> Anda. Anda akan menggunakan barak ini untuk mengajari tentara cara meluncur dan bersembunyi dari cuaca buruk. Itu cerdik!')
    RETURNING id INTO r_315_barak;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '絜', 'hercules', 28, 3, 'Benang kehidupan dipotong dengan pedang oleh Moirai. Mereka, dalam mitologi Yunani, adalah orang-orang yang memutuskan kapan akan membiarkan Anda mati, dengan memotong benang kehidupan Anda. Hal ini mungkin paling terkenal dalam kisah <radical>Hercules</radical>, jadi kita akan membahasnya dengan radikal ini.')
    RETURNING id INTO r_316_hercules;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '専', 'khusus', 28, 4, 'Radikal ini sama dengan kanji. Artinya <radikal>kekhususan</radikal>.')
    RETURNING id INTO r_317_khusus;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '麗', 'cantik', 28, 5, 'Saya tidak tahu benda apa ini, tapi <radikal>indah</radikal>. Ia memiliki dua mata, mulut yang lucu, dan janggut yang kurus. Itu indah, dan tidak ada yang lain, oke? Jadi ingatlah seperti itu.')
    RETURNING id INTO r_318_cantik;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '奇', 'aneh', 28, 6, 'Cincin bibir yang besar adalah hal yang cukup <radikal>aneh</radikal> untuk dimiliki. Kalau besar, bibirmu akan melebar, dan itu aneh juga.')
    RETURNING id INTO r_326_aneh;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '前', 'depan', 28, 7, 'Makna radikal ini sama dengan kanji. Artinya <radikal>depan</radikal>.')
    RETURNING id INTO r_8908_depan;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_314_raksasa, 'Raksasa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_315_barak, 'Barak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_316_hercules, 'Hercules', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_317_khusus, 'Khusus', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_318_cantik, 'Cantik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_326_aneh, 'Aneh', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_8908_depan, 'Depan', true, true);

  -- 2. KANJIS
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '逆', 'balik', 28, 8, 'Jika Anda mengendarai <radical>skuter</radical> sambil mengenakan <radical>klakson</radical> di <radical>barak</radical>, Anda akan terjebak dan harus <kanji>mundur</kanji> keluar dari sana ke arah <kanji>berlawanan</kanji>.', 'Setelah Anda <kanji>mundur</kanji> ke arah <kanji>berlawanan</kanji>, Anda akan menemukan sekelompok <reading>Gak</reading> (ぎゃく) menutupi roda skuter Anda. Para prajurit pasti memasang jebakan di barak mereka dengan Gak. Anda dapat mundur dari barak, tetapi Gak telah merusak roda Anda dengan sangat buruk sehingga sekarang hanya berjalan mundur. Aneh… Sepertinya Anda akan mengalami kebalikannya selamanya.')
    RETURNING id INTO k_1346_balik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '巨', 'raksasa', 28, 9, 'Kanji <radikal>raksasa</radikal> dan kanji <kanji>raksasa</kanji> sama persis! Besar sekali!', 'Baru-baru ini, <kanji>raksasa</kanji> mengamuk di <reading>Kyo</reading>to (きょ) Kecil, jadi sekarang ukurannya menjadi lebih kecil dari sebelumnya. Kyoto Kecil yang malang.')
    RETURNING id INTO k_1347_raksasa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '庫', 'penyimpanan', 28, 10, 'Sebuah <radical>kanopi</radikal> menutupi <radical>mobil</radikal> Anda karena mobil Anda berada di <kanji>penyimpanan</kanji> di <kanji>gudang</kanji> yang besar.', 'Mobil Anda ada di <kanji>penyimpanan</kanji> <kanji>gudang</kanji> ini, hanya diam di sana. Seorang <reading>子</reading> (こ) memperhatikan hal ini, dan memutuskan untuk membawa mobil Anda dalam perjalanan. Anda tidak akan menyadarinya, bukan? Anda tidak pernah mengendarainya.')
    RETURNING id INTO k_1348_penyimpanan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '児', 'anak', 28, 11, 'Dengan mengarahkan <radikal>tongkat</radikal> ajaib bertenaga surya Anda ke <radikal>matahari</radikal>, Anda mendapatkan <radikal>kaki</radikal> seorang <kanji>anak</kanji>. Anda sudah tua dan menginginkan kaki-kaki muda untuk membawa Anda kemana-mana, jadi Anda mengambil tongkat harapan Anda yang bertenaga matahari, dan Anda menginginkan kaki seorang anak kecil.', 'Saat Anda menikmati kaki baru Anda, <reading>Je</reading>sus (じ) turun dari langit. "<kanji>anak</kanji>ku," katanya, "mengapa kamu mengarahkan tongkat ke matahari dan menginginkan kaki seorang anak? Kamu sudah sempurna, sama seperti semua anak Tuhan juga sempurna."')
    RETURNING id INTO k_1349_anak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '冷', 'dingin', 28, 12, 'Anda mendapatkan <radical>es</radical> <radical>pesanan</radical>. Tentu saja, pesanan es Anda adalah untuk membuat keadaan menjadi <kanji>dingin</kanji> dan <kanji>dingin</kanji>.', 'Bagaimana cara membuat sesuatu menjadi <kanji>keren</kanji> dan <kanji>dingin</kanji>? Anda akan menggunakan senjata <read>ray</reading> (れい) khusus yang menembakkan sinar dingin.')
    RETURNING id INTO k_1350_dingin;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '凍', 'beku', 28, 13, '<radical>Es</radical> dari <radical>timur</radical> <kanji>dibekukan</kanji>. Tentu saja, semua es membeku, tapi es dari timur sepertinya sangat beku.', 'Jepang adalah negara di timur, dan es ini <kanji>dibekukan</kanji> di <reading>とう</reading>きょう. とうきょう sangat bagus dalam membekukan benda beku, jadi masuk akal jika es beku ini berasal dari sana.')
    RETURNING id INTO k_1351_beku;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '幼', 'masa-bayi', 28, 14, '<radikal>kotoran</radikal> super adalah <radikal>kekuatan</radikal> super yang Anda miliki di <kanji>masa bayi</kanji>. Mereka yang masih bayi mempunyai kemampuan untuk buang air besar sesuka hati, kapan pun dan di mana pun mereka mau. Kekuatan kotoran masa bayi!', 'Pada masa <kanji>masa bayi</kanji>, seseorang banyak makan makanan lunak, seperti <reading>yo</reading>gurt (よう). Yogurt adalah makanan yang memberikan kekuatan buang air besar yang unggul.')
    RETURNING id INTO k_1352_masa_bayi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '稚', 'belum-dewasa', 28, 15, 'Berikan <radical>biji-bijian</radikal> hanya pada <radical>kalkun</radikal> jika masih <kanji>belum matang</kanji>. Kalkun dewasa harus mengonsumsi makanan yang lebih sehat, seperti serangga dan rumput. Tapi kalkun yang belum dewasa tidak peduli jika mereka menjadi gemuk, jadi mereka merengek dan merengek sampai Anda memberi mereka biji-bijian.', 'Hal lain yang disukai kalkun (dan manusia) <kanji>belum dewasa</kanji> adalah <reading>chee</reading>se (ち). Sebagian besar dari kita, manusia dan burung yang belum dewasa, masih menyukai keju, tetapi jika Anda tidak mengalami fase keju yang belum matang saat masih anak-anak atau remaja, Anda tidak akan bisa menyukai keju saat Anda sudah tua.')
    RETURNING id INTO k_1353_belum_dewasa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '処', 'menghadapi', 28, 16, '<radical>musim dingin</radical> <radical>meja</radical> akan menjadi hal yang aneh untuk <kanji>ditangani</kanji>. Musim dingin mungkin sulit untuk dihadapi sendiri, tetapi ubah meja Anda menjadi musim dingin? Menghadapi makanan Anda menjadi dingin saja sudah menjadi hal terburuk!', 'Meja musim dingin ini adalah sesuatu yang harus <kanji>tangani</kanji>, tentu saja, tapi bagaimana jika Anda memberikannya ke <reading>pertunjukan</reading> (しょ) sirkus? Mereka menyukai hal-hal aneh seperti ini.')
    RETURNING id INTO k_1354_menghadapi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '博', 'pameran', 28, 17, 'Anda mengenakan <radical>cross</radical> besar dengan <radical>drop</radical> di atasnya, dan pergi ke <radical>special</radical> <kanji>pameran</kanji> untuk <kanji>perjudian</kanji>. Tanda silang dan jatuhan besar di dada Anda adalah lencana Anda untuk diterima dalam pameran. Setiap orang di pameran khusus melakukan cross and drop, dan semua orang berjudi.', 'Kamu tidak pandai <kanji>berjudi</kanji>, tapi kamu cukup pandai dalam menyontek. Anda <reading>meretas</reading> (はく) mesin judi <kanji>pameran</kanji> khusus untuk membayar banyak uang hanya untuk Anda. Anda meretas dengan cepat dan diam-diam, jadi untungnya tidak ada yang mengetahui bahwa Anda telah meretas sistem.')
    RETURNING id INTO k_1355_pameran;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '清', 'murni', 28, 18, '<radikal>tsunami</radikal> yang <radikal>biru</radikal> adalah <kanji>murni</kanji>. Beberapa tsunami mempunyai warna lain, seperti coklat atau merah karena tidak murni, penuh dengan sampah dan kotoran serta hal-hal mengerikan lainnya. Tapi tsunami biru benar-benar murni!', 'Melihat tsunami biru <kanji>murni</kanji> ini menginspirasi Anda untuk mengeluarkan <reading>sa</reading>ber (せい) biru bersinar Anda! Saat air murni datang ke arah Anda, ambillah satu tebasan panjang!')
    RETURNING id INTO k_1356_murni;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '潔', 'murni', 28, 19, 'Ketika <radical>tsunami</radical> menembus <radical>tulang rusuk</radical> Anda seperti <radical>pedang</radical> menembus <radical>benang</radical>, hal itu membuat Anda merasa <kanji>murni</kanji> dan <kanji>bersih</kanji>.', 'Setelah tsunami berlalu, bagian dalam tubuh Anda menjadi begitu <kanji>murni</kanji> dan <kanji>bersih</kanji> sehingga sama sekali tidak berwarna. Untuk mengatasinya, semprotkan <reading>ketsu</reading>p (けつ) ke seluruh tubuh. Itu akan mengembalikannya ke warna merah yang sehat.')
    RETURNING id INTO k_1357_murni;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '録', 'catatan', 28, 20, '<radical>emas</radical> <radical>Wolverine</radical> berenang di <radical>air</radical> sementara ayahnya membuat <kanji>catatan</kanji> tentangnya. Wolverine berwarna emas karena baru saja meraih medali emas renang, jadi sekarang dia emas. Bagus sekali, Wolverine.', 'Karena Wolverine sebenarnya adalah seorang mutan, dia segera didiskualifikasi dari medali emasnya. Ayahnya juga membuat <kanji>catatan</kanji> tentang hal ini. Seorang penggemar yang marah melemparkan <reading>batu</reading> (ろく) ke Wolverine setelahnya. Kemudian yang lain melemparkan batu. Dan batu lainnya. Sebelum Anda menyadarinya, semua orang melemparkan batu ke arah Wolverine. Ayah Wolverine tidak turun tangan untuk membantu, dia hanya terus mencatat.')
    RETURNING id INTO k_1358_catatan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '隊', 'pasukan', 28, 21, '<radical>Bangunan</radikal> ini menampilkan <radikal>tanduk</radikal> pada <radikal>babi</radikal> untuk mewakili <kanji>pasukan</kanji> kami.', 'Pasukan <kanji></kanji> kami juga mengenakan <reading>dasi</reading> khusus (たい) dengan gambar babi bertanduk kami. Dan kami tidak peduli jika Anda menganggap itu jelek, karena kami adalah SQUAD.')
    RETURNING id INTO k_1359_pasukan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '修', 'menguasai', 28, 22, '<radical>Pemimpin</radikal> Anda menggunakan <radical>tongkat</radikal> di <radikal>musim dingin</radikal> yang terbuat dari <radikal>rambut</radikal>. Ini adalah tongkat <kanji>penguasaan</kanji> dan <kanji>perbaikan</kanji>.', 'Apa kunci untuk <kanji>menguasai</kanji> keterampilan apa pun? Sebuah tongkat dan <reading>sepatu</reading> (しゅう)!')
    RETURNING id INTO k_1360_menguasai;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '券', 'tiket', 28, 23, '<radikal>gladiator</radikal> di depan Anda menghunus <radikal>pedang</radikal> miliknya. Dia mengarahkan pedang ke dada Anda dan tepat ketika Anda berpikir semuanya akan berakhir, Anda menyadari dia mengarahkan pedang ke <kanji>tiket</kanji> di tangan Anda.', 'Gladiator dengan senang hati menandai <kanji>tiket</kanji> Anda dengan pedangnya, ketika <reading>Ken</reading> (けん) sang samurai mendorong melewati Anda. Dia mengangkat pedangnya sendiri, menantang sang gladiator, yang hanya menggelengkan kepalanya dan menunjuk tiket Anda lagi.')
    RETURNING id INTO k_1361_tiket;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '婦', 'wanita', 28, 24, 'Lihat <radical>wanita</radical> dengan <radical>sapu</radical> itu? Itulah <kanji>nyonya</kanji> di rumah. Dia bersiap-siap untuk menyerahkan sapu itu kepada Anda — kepala pelayannya — karena Anda melewatkan satu tempat di sana.', 'Alih-alih menggunakan nama Anda, <kanji>nyonya</kanji> di rumah hanya memanggil Anda "<reading>foo</reading>l" (ふ). Anda jarang memenuhi standar tinggi Nyonya, jadi dari sudut pandangnya Anda hanyalah orang bodoh bodoh yang tidak bisa melakukan sesuatu dengan benar.')
    RETURNING id INTO k_1362_wanita;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '奇', 'aneh', 28, 25, 'Kanji <radikal>ganjil</radikal> dan kanji <kanji>ganjil</kanji> adalah sama. Keduanya... sungguh <kanji>aneh</kanji>.', 'Kamu <kanji>aneh</kanji> juga, sama seperti kanji ini. Namun Anda tidak ingin ada yang mengetahuinya, jadi kuncilah kebiasaan <kanji>aneh</kanji> Anda dengan <membaca>kunci</reading> (き).')
    RETURNING id INTO k_1363_aneh;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '妙', 'aneh', 28, 26, '<radikal>wanita</radikal> adalah salah satu dari <radikal>sedikit</radikal> hal <kanji>aneh</kanji> di dunia. Segala sesuatu kecuali seorang wanita dapat dijelaskan dan dipahami. Hanya ada beberapa hal yang benar-benar aneh di dunia ini, dan wanita adalah salah satunya.', 'Tapi kalau dipikir-pikir, kita semua agak aneh. Aku, kamu, <read>myou</reading> (みょう) semuanya!')
    RETURNING id INTO k_1364_aneh;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '麗', 'cantik', 28, 27, 'Jika Anda mengetahui arti radikal <radikal>indah</radikal>, Anda juga mengetahui arti kanji <kanji>indah</kanji>!', '"<kanji>Cantik</kanji>" adalah nama senjata <reading>ray</reading> (れい) milikku. Itu lebih indah dari apapun.')
    RETURNING id INTO k_1365_cantik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '微', 'halus', 28, 28, 'Anda <radical>berkeliaran</radical> di <radical>gunung</radical>, membaca angka <radical>pi</radical> pada pagi <radical>musim dingin</radical> ini. Udara pegunungan yang dingin begitu <kanji>halus</kanji>, dan hanya berubah dalam cara yang sangat <kanji>kecil</kanji> — sama seperti pi ketika Anda menambahkan angka lain ke dalamnya.', 'Ah! Tentu saja! <kanji>halus</kanji> bumble <reading>menjadi</reading>e (び). Agak tidak pada tempatnya di musim dingin, tetapi makhluk mungil ini menurut Anda halus. Ia mendarat di jari Anda, dan Anda melihat setiap serat kecil dari keberadaannya.')
    RETURNING id INTO k_1366_halus;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '益', 'keuntungan', 28, 29, 'Ada beberapa <radical>tanduk</radikal> di <radikal>tanah</radikal> di samping <radikal>sirip</radikal> pada <radikal>pelat</radikal> yang dimaksudkan untuk <kanji>menguntungkan</kanji> semua orang. Jika Anda anggota kota ini, salah satu keuntungan Anda adalah pengaturan kecil ini.', '<kanji>Manfaat</kanji> lainnya adalah penggunaan <read>駅</reading> (えき) gratis! Kapan pun Anda pulang dari suatu tempat dengan kereta, 駅 ini sepenuhnya gratis.')
    RETURNING id INTO k_1367_keuntungan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '移', 'menggeser', 28, 30, 'Sebuah <radical>biji-bijian</radikal>, dari satu <radikal>malam</radikal> ke <radikal>malam</radikal> berikutnya, mengalami <kanji>pergeseran</kanji>. Setelah dua malam, gabah berpindah dari satu lokasi ke lokasi lain.', '<kanji>Pergeseran</kanji> ini disebabkan oleh <read>ea</reading>gle (い) yang ingin memakan biji-bijian. Setiap malam, elang menukik ke bawah, memindahkan biji-bijian (memakan sedikit) dan kemudian terbang.')
    RETURNING id INTO k_1368_menggeser;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '程', 'cakupan', 28, 31, '<radical>Biji-bijian</radikal> <radikal>Mulut</radikal> <radikal>Raja</radikal> menuangkan biji-bijian dari mulutnya untuk Anda dan rakyatnya yang lain. Anda pergi ke dia dan menarik jarinya. Ketika Anda melakukan ini, biji-bijian mengalir dari mulutnya. Tapi kami serakah. Kami tidak memahami <kanji>sejauh</kanji> kami memanen gandum mulutnya.', '<kanji>luasnya</kanji> saat kami memanen gandum dari mulutnya terlalu besar. Grain Mouth King telah kehabisan gandum. Dia khawatir dia akan kehilangan kekuatan jika dia tidak punya gandum untuk ditawarkan, jadi dia beralih ke muntah <reading>ta</reading>ter (てい) tots sebagai gantinya.')
    RETURNING id INTO k_1369_cakupan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '精', 'roh', 28, 32, '<radical>Nasi</radikal> yang berwarna <radikal>biru</radikal> memiliki semangat <kanji>yang kuat</kanji>. Semangat kita berwarna biru, jadi jika Anda pernah melihat nasi (atau makanan lain, atau bahkan orang) berwarna biru, Anda tahu itulah semangat mereka yang terpancar!', 'Anda ingin melihat <kanji>roh</kanji> dari dekat, jadi ambillah <reading>sa</reading>ber (せい) Anda, lemparkan nasi biru ke udara, dan potong menjadi dua! Nasinya meledak dan cahaya biru memenuhi segalanya!

Lalu hilang.')
    RETURNING id INTO k_1370_roh;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '並', 'berbaris', 28, 33, 'Anda menancapkan <radical>tanduk</radikal> di <radikal>tanah</radikal> menggunakannya sebagai <radikal>paku</radikal> dan Anda <kanji>menjajarkan</kanji> tanduk tersebut dalam garis lurus. Tanduk hampir sama dengan paku ketika Anda menancapkannya ke tanah, dan Anda memasangnya dengan tepat untuk perlindungan optimal.', 'Saat Anda <kanji>menjajarkan</kanji> tanduk ini dan menancapkannya ke tanah, Anda melihat seekor banteng sedang mengunyah <read>jerami</reading> (へい) di dekatnya. Itu menatap tanduk yang Anda antri. Entah kenapa rasanya seperti sedang mengunyah jerami dengan marah. Anda menelan ludah, melihat tanduknya saat ia mengambil seteguk jerami lagi, dan Anda merasa sangat bersalah.')
    RETURNING id INTO k_1372_berbaris;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '憲', 'konstitusi', 28, 34, 'Apa yang berfungsi seperti <radical>atap</radikal>, <radikal>sangkar tulang rusuk</radikal>, dan <radikal>jaring</radikal> pengaman bagi <radikal>hati</radikal> Anda sekaligus? Ini adalah <kanji>konstitusi</kanji> negara Anda.', 'Saat ini, konstitusi juga memerlukan perlindungan. <kanji>konstitusi</kanji> negara Anda dilindungi oleh <reading>Ken</reading> (けん) sang samurai, pahlawan sewaan.')
    RETURNING id INTO k_1373_konstitusi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '衆', 'rakyat', 28, 35, '<radical>Darah</radikal> dan <radikal>rambut</radikal> dan <radikal>tahu</radikal> membentuk <kanji>populasi</kanji>. Itu adalah tiga kategori yang cocok untuk seluruh masyarakat.', 'Seluruh <kanji>masyarakat</kanji> berhak mendapatkan <reading>sepatu</reading> (しゅう). Itu adalah hal mendasar yang harus dimiliki semua manusia seperti darah mengalir, rambut (di suatu tempat), dan tahu untuk dimakan.')
    RETURNING id INTO k_1374_rakyat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '傘', 'payung', 28, 36, 'Dengan menggunakan <radical>topi</radical>, empat <radical>orang</radical> dengan <radical>cross</radical> membuat <kanji>payung</kanji>. Topinya cukup besar untuk dijadikan payung bagi keempat orang, jadi masuk akal. Keempatnya adalah misionaris keagamaan, itulah sebabnya mereka memegang salib di bawah “payung”.', 'Anda tahu ungkapan bahasa Spanyol "Mi <reading>casa</reading> (かさ) es su casa"? Ya, ini semacam itu, tapi hanya dengan topi. Dan topi itu juga merupakan <kanji>payung</kanji>. Mi casa juga milikmu, karena itu payung dan juga topi. Ini masuk akal, percayalah.')
    RETURNING id INTO k_1375_payung;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '浜', 'pantai', 28, 37, 'Setelah <radical>tsunami</radical>, Anda menemukan <radical>kapak</radical> di <radical>tanah</radical> di samping beberapa <radical>sirip</radical> di <kanji>pantai</kanji>. Tsunaminya cukup dahsyat, dan sepertinya kapak ini terhempas ke beberapa ikan dan memotong siripnya dan kini benda-benda itu tergeletak di tanah di tepi pantai.', 'Berjalan menyusuri <kanji>pantai</kanji> sedikit lagi, Anda juga akan menemukan <reading>palu</reading> (はま). Astaga, sepertinya tsunami melanda bengkel atau toko perkakas atau semacamnya. Dulu kapak, sekarang palu.')
    RETURNING id INTO k_1376_pantai;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '撃', 'menyerang', 28, 38, 'Jika seseorang datang ke arah Anda dengan <radical>mobil</radical> sambil memegang <radical>senjata</radical> di <radical>tangan</radical> mereka, mereka akan <kanji>menyerang</kanji> Anda!', 'Tepat sebelum <kanji>serangan</kanji> dimulai, Anda mengenali tangan yang memegang senjata ini dan mengemudikan mobil ini. Itu <reading>Tokek</reading> (げき), tokek Anda yang sudah lama hilang, yang mungkin sudah atau belum Anda biarkan terbang ke dalam tsunami yang sangat dahsyat. Ups. Saya pikir dia mungkin di sini menyerang Anda karena balas dendam.')
    RETURNING id INTO k_1377_menyerang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '攻', 'agresi', 28, 39, '<radical>Konstruksi</radical> di <radical>musim dingin</radical> menyebabkan <kanji>agresi</kanji>. Pikirkan saja. Dingin, tidak menyenangkan, dan Anda tidak ingin berada di sana. Jadi, Anda mulai mengembangkan agresi terhadap orang lain yang bekerja dengan Anda dalam proyek musim dingin ini.', 'Anda melampiaskan <kanji>agresi</kanji> Anda pada semua orang. Kemudian, pekerja konstruksi seksi dari WaniKani Level 1, <reading>こう</reading>いち, lewat tanpa mengenakan kemeja. Anda melampiaskan semua agresi Anda padanya.')
    RETURNING id INTO k_1378_agresi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '綺', 'cantik', 28, 40, '<radical>utas</radikal> ini <radikal>aneh</radikal>, tapi itulah yang membuatnya <kanji>indah</kanji>. Sedikit usang, sedikit salah warna, tapi itulah yang membuatnya menarik bagi Anda.', 'Ambil thread <kanji>indah</kanji> ini dan kunci dengan <reading>key</reading> (き). Anda ingin menyimpan semuanya untuk diri Anda sendiri, Anda ingin keindahannya hanya untuk mata Anda!')
    RETURNING id INTO k_1479_cantik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '沼', 'rawa', 28, 41, '<radikal>tsunami</radikal> tidak dapat menahan <radikal>panggilan</radikal> dari <kanji>rawa</kanji>. Setiap kali tsunami menuju daratan, rawa akan selalu memanggilnya, "Hei tsunami, tidakkah kamu ingin menghantamku dengan airmu? Kemarilah~"', 'Saat Anda mendengarkan panggilan <kanji>rawa</kanji>, Anda menyadari bahwa itu tampak seperti pria <reading>Numa</reading> (ぬま) Numa di pikiran Anda. Anda membuka mata Anda dan itu hanya rawa. Anda menutup mata Anda, dan itu dia. Pria Numa Numa.')
    RETURNING id INTO k_1866_rawa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '揃', 'menyelesaikan', 28, 42, 'Pegang <radical>jari</radical> Anda di <radical>depan</radical> — wah, Anda punya satu set <kanji>lengkap</kanji>!', 'Untuk memamerkan <kanji>lengkap</kanji> jari Anda, Anda memutuskan untuk memainkan <reading>solo</reading> (そろ) di piano. Tidak ada yang mendemonstrasikan kemampuan satu set jari yang lengkap seperti solo piano cepat yang mempesona.')
    RETURNING id INTO k_9251_menyelesaikan;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1346_balik, 'Balik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1346_balik, 'Di depan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1347_raksasa, 'Raksasa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1348_penyimpanan, 'Penyimpanan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1348_penyimpanan, 'Gudang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1348_penyimpanan, 'Gudang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1349_anak, 'Anak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1350_dingin, 'Dingin', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1350_dingin, 'Dingin', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1351_beku, 'Beku', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1351_beku, 'Membekukan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1352_masa_bayi, 'Masa bayi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1352_masa_bayi, 'Masa kecil', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1353_belum_dewasa, 'Belum dewasa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1354_menghadapi, 'Menghadapi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1355_pameran, 'Pameran', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1355_pameran, 'Berjudi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1356_murni, 'Murni', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1357_murni, 'Murni', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1357_murni, 'Membersihkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1358_catatan, 'Catatan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1359_pasukan, 'Pasukan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1360_menguasai, 'Menguasai', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1360_menguasai, 'Memperbaiki', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1361_tiket, 'Tiket', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1362_wanita, 'Wanita', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1362_wanita, 'Istri', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1363_aneh, 'Aneh', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1363_aneh, 'Aneh', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1364_aneh, 'Aneh', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1365_cantik, 'Cantik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1366_halus, 'Halus', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1366_halus, 'Kecil', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1366_halus, 'Sedikit', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1367_keuntungan, 'Keuntungan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1368_menggeser, 'Menggeser', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1369_cakupan, 'Cakupan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1370_roh, 'Roh', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1370_roh, 'Murni', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1372_berbaris, 'Berbaris', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1373_konstitusi, 'Konstitusi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1374_rakyat, 'Rakyat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1375_payung, 'Payung', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1376_pantai, 'Pantai', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1377_menyerang, 'Menyerang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1378_agresi, 'Agresi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1479_cantik, 'Cantik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1866_rawa, 'Rawa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_9251_menyelesaikan, 'Menyelesaikan', true, true);

  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1346_balik, 'ぎゃく', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1346_balik, 'さか', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1347_raksasa, 'きょ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1348_penyimpanan, 'こ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1348_penyimpanan, 'くら', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1349_anak, 'じ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1349_anak, 'に', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1349_anak, 'こ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1350_dingin, 'れい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1350_dingin, 'つめ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1350_dingin, 'ひ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1350_dingin, 'さ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1351_beku, 'とう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1351_beku, 'こお', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1351_beku, 'こご', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1352_masa_bayi, 'よう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1352_masa_bayi, 'おさな', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1353_belum_dewasa, 'ち', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1354_menghadapi, 'しょ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1354_menghadapi, 'ところ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1355_pameran, 'はく', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1355_pameran, 'ばく', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1356_murni, 'せい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1356_murni, 'しょう', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1356_murni, 'しん', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1356_murni, 'きよ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1356_murni, 'し', 'nanori', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1357_murni, 'けつ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1357_murni, 'いさぎよ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1358_catatan, 'ろく', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1359_pasukan, 'たい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1360_menguasai, 'しゅう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1360_menguasai, 'おさ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1361_tiket, 'けん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1362_wanita, 'ふ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1363_aneh, 'き', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1364_aneh, 'みょう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1364_aneh, 'たえ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1365_cantik, 'れい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1365_cantik, 'うるわ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1366_halus, 'び', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1366_halus, 'かす', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1367_keuntungan, 'えき', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1368_menggeser, 'い', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1368_menggeser, 'うつ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1369_cakupan, 'てい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1369_cakupan, 'ほど', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1370_roh, 'せい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1372_berbaris, 'へい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1372_berbaris, 'なら', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1372_berbaris, 'なみ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1373_konstitusi, 'けん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1374_rakyat, 'しゅう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1375_payung, 'かさ', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1375_payung, 'さん', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1376_pantai, 'はま', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1376_pantai, 'ひん', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1377_menyerang, 'げき', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1377_menyerang, 'う', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1378_agresi, 'こう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1378_agresi, 'せ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1479_cantik, 'き', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1866_rawa, 'ぬま', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1866_rawa, 'しょう', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_9251_menyelesaikan, 'そろ', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_9251_menyelesaikan, 'せん', 'onyomi', false, false);

  -- 3. VOCABULARIES
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '未だ', 'belum', 28, 43, 'Ini adalah versi kata keterangan dari <kanji>未</kanji>, jadi artinya sama saja: <vocabulary>belum</vocabulary>, atau <vocabulary>masih</vocabulary>, bergantung pada konteksnya.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak mempelajarinya dengan kanji ini, jadi berikut mnemonik untuk membantu Anda:

Ada yang bilang "<vocabulary>belum</vocabulary>...belum....belum...". Ada makanan di hidungmu, tapi kamu tidak diperbolehkan memakannya <reading>今</reading> (いま).

Perhatikan bahwa kata ini juga bisa dibaca まだ. Namun, いまだ sering ditulis dalam kanji, sedangkan まだ hampir selalu ditulis dalam kana. Jadi ketika Anda melihat 未だ, sebaiknya dibaca sebagai いまだ!', 'Belum, Tetap')
    RETURNING id INTO v_2945_belum;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '履く', 'untuk-mengenakan-sepatu', 28, 44, 'Kanji sendiri berarti <kanji>alas kaki</kanji>, namun kata ini merupakan kata kerja. Jadi biasanya apa yang Anda lakukan dengan alas kaki? Anda memakainya! Itu sebabnya kata ini adalah <vocabulary>memakai sepatu</vocabulary>. Atau <vocabulary>memakai celana</vocabulary>, atau <vocabulary>memakai rok</vocabulary>…

Oke, celana dan rok bukanlah alas kaki. Tapi 履く pada dasarnya digunakan untuk pakaian apa pun yang Anda kenakan dari pinggang ke bawah, termasuk kaus kaki, sepatu, sepatu bot, celana, rok, celana pendek, dan bahkan celana dalam.', '履く menggunakan bacaan kun''yomi yang belum pernah Anda lihat sebelumnya, jadi inilah mnemoniknya:

Setelah Anda berhasil <vocabulary>memakai sepatu</vocabulary>, Anda berseru, "<reading>Hah</reading> (は)! Saya tahu saya bisa melakukannya!" Semua orang ragu Anda bisa mengenakan sepatu Anda, tapi Anda berhasil - Anda benar-benar menunjukkannya. Hah! Sekarang pertanyaannya adalah… apakah kamu bisa <vocabulary>memakai celana</vocabulary>?', 'Untuk Mengenakan Sepatu, Untuk Mengenakan Celana, Untuk Mengenakan Rok')
    RETURNING id INTO v_4189_untuk_mengenakan_sepatu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '規準', 'kriteria', 28, 45, '<kanji>standar</kanji> dari <kanji>standar</kanji> adalah <vocabulary>kriteria</vocabulary> utama yang kami kerjakan. Itulah <vocabulary>standar</vocabulary> yang kami ikuti.

Dibandingkan dengan 基準 yang seringkali merupakan "standar" kuantitatif untuk penilaian, 規準 lebih merupakan "kriteria" yang berfokus pada kualitas yang dapat menjadi dasar untuk mencapai tujuan. Anda akan sering melihat kata ini digunakan dalam konteks akademis atau profesional.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.

Meski bukan bacaan resmi, orang terkadang membedakan 基準 dan 規準 dengan memanggilnya masing-masing もとじゅん dan のりじゅん saat berbicara.', 'Kriteria, Standar')
    RETURNING id INTO v_4666_kriteria;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '限度', 'membatasi', 28, 46, '<kanji>derajat</kanji> dari <kanji>batas</kanji> tertentu adalah seberapa jauh ia dapat melangkah. Itu adalah <vocabulary>batas</vocabulary>; naikkan satu derajat lagi dan itu di luar <vocabulary>batas</vocabulary>. Simpan di tempatnya dan itu sempurna.

Kata ini mengacu pada tingkat atau jangkauan maksimum sesuatu, yang melampauinya tidak dapat dilampaui. Meskipun mirip dengan 限界, 限度 sering kali menyiratkan batas yang dapat diterima atau ditoleransi yang telah ditentukan sebelumnya, sedangkan 限界 lebih erat kaitannya dengan batas absolut atau batas akhir.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Membatasi, Batas')
    RETURNING id INTO v_4746_membatasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '全景', 'tampilan-lengkap', 28, 47, 'Bila Anda dapat melihat <kanji>semua</kanji> <kanji>adegan</kanji> Anda memiliki <vocabulary>tampilan lengkap</vocabulary>.

Ini bukan kata umum dalam percakapan sehari-hari, namun dapat ditemukan dalam sastra, seni, film, fotografi, dan tulisan perjalanan untuk menggambarkan pemandangan panorama atau komprehensif.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Tampilan Lengkap, Tampilan Penuh, Pemandangan Panorama, Panorama')
    RETURNING id INTO v_4786_tampilan_lengkap;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '前景', 'latar-depan', 28, 48, '<kanji>depan</kanji> <kanji>adegan</kanji> adalah <vocabulary>latar depan</vocabulary>.

Kata ini terutama mengacu pada latar depan visual dalam seni, fotografi, atau teater. Berbeda dengan "latar depan" dalam bahasa Inggris, kata ini tidak umum digunakan dalam arti kiasan untuk mendeskripsikan aspek situasi yang paling menonjol.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Latar depan')
    RETURNING id INTO v_4787_latar_depan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '再び', 'lagi', 28, 49, 'Ini adalah versi kata keterangan dari 再, sehingga memiliki arti yang sama <vocabulary>lagi</vocabulary> dan juga memiliki arti <vocabulary>sekali lagi</vocabulary>.

Perhatikan bahwa kata ini agak formal dan sastra.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda:

<vocabulary>Sekali lagi</vocabulary>, Anda harus mengatakan "<reading>Siapa</reading>? <reading>Ta</reading>-<reading>ta</reading>!" (ふたた). Itu karena orang yang tidak Anda kenal terus mencoba berbicara dengan Anda, <vocabulary>lagi</vocabulary> dan lagi. Setiap kali ini terjadi, Anda berkata, "Siapa? Ta-ta!" lagi dan lari.', 'Lagi, Sekali lagi')
    RETURNING id INTO v_4887_lagi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '再来週', 'minggu-setelah-berikutnya', 28, 50, 'Anda tahu bagaimana 来週 <kanji>minggu depan</kanji>? Nah, jika Anda melakukannya lagi minggu depan, Anda memiliki <vocabulary>minggu berikutnya</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Minggu Setelah Berikutnya, Seminggu Setelah Berikutnya')
    RETURNING id INTO v_4890_minggu_setelah_berikutnya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '故に', 'karena-itu', 28, 51, 'Anda belajar bahwa 故 berarti alasan. Pada dasarnya, apapun yang muncul sebelum 故に dalam sebuah pernyataan akan menjadi alasan untuk sesuatu yang muncul setelahnya. Jadi 故に berfungsi seperti <vocabulary>karena itu</vocabulary> atau <vocabulary>akibatnya</vocabulary>. Ini juga dapat diterjemahkan sebagai "karena" atau kata hubung serupa lainnya tergantung konteksnya.

Perlu diingat juga bahwa 故に terutama digunakan dalam konteks formal, seperti dalam tulisan akademis atau pidato politisi — seperti "karena itu" dalam bahasa Inggris.', 'Dengan mengetahui kata 故 kamu akan mengetahui bacaan kata ini juga! Berikut ini mnemonik jika Anda memerlukan pengingat:

Anda menggunakan WaniKani, <vocabulary>oleh karena itu</vocabulary> Anda mempelajari kanji dan vocab. Salah siapa ini? Itu salah WaniKani! Tapi, otakmu sudah terpukul habis-habisan karena semua pembelajaran, jadi saat kamu mengatakan "itu salahmu" yang keluar adalah "itu salah <reading>yue</reading>!" Silakan katakan dengan lantang seperti itu.', 'Karena itu, Akibatnya')
    RETURNING id INTO v_4933_karena_itu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '針金', 'kabel', 28, 52, '<kanji>jarum</kanji> yang terbuat dari <kanji>emas</kanji> adalah <vocabulary>kawat</vocabulary>. Mungkin dulu kabel sebagian besar terbuat dari emas? Dan mereka kurus seperti jarum? Itu dugaanku.', 'Bacaannya adalah bacaan kun''yomi keduanya. Kalian sudah tahu kedua-duanya, nantikan saja rendaku di 金!', 'Kabel')
    RETURNING id INTO v_4989_kabel;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '巨大', 'sangat-besar', 28, 53, '<kanji>raksasa</kanji> <kanji>besar</kanji> adalah sesuatu yang <vocabulary>sangat besar</vocabulary> dan <vocabulary>raksasa</vocabulary>.

巨大 sering digunakan secara tertulis untuk mendeskripsikan sesuatu <vocabulary>sangat besar</vocabulary>. Bisa untuk apa saja yang skalanya sangat besar, tidak hanya benda fisik seperti bangunan atau monster, tapi juga benda abstrak seperti dampak bencana alam atau bahkan pengaruh seseorang.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Sangat besar, Raksasa, Sangat besar')
    RETURNING id INTO v_5013_sangat_besar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '巨人', 'raksasa', 28, 54, '<kanji>raksasa</kanji> <kanji>orang</kanji> adalah <vocabulary>raksasa</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Raksasa, Raksasa')
    RETURNING id INTO v_5014_raksasa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '招く', 'untuk-memanggil', 28, 55, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>memberi isyarat</kanji> sehingga versi kosakata kata kerjanya adalah <vocabulary>to memberi isyarat</vocabulary>. 

Karena 招く memunculkan gambaran seseorang yang memberi isyarat, itu juga berarti <vocabulary>mengundang</vocabulary>, dan merupakan kata yang relatif formal. Secara kiasan, ini juga bisa berarti <vocabulary>menyebabkan</vocabulary>, seperti mengundang hasil atau situasi yang tidak diinginkan.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak mempelajari cara membaca tersebut dengan kanji ini, jadi inilah mnemonik yang dapat membantu Anda: Anda menggerakkan <vocabulary>untuk memberi isyarat</vocabulary> kepada teman Anda. Anda tidak dapat melihatnya dengan baik, jadi itu sebabnya Anda mengundangnya untuk mendekat. Dia menyembunyikan sesuatu, dan ternyata itu adalah surai kudanya yang panjang dan mewah (まね). Kenapa dia punya surai!? Steroid kuda?', 'Untuk Memanggil, Untuk Mengundang, Untuk Menyebabkan')
    RETURNING id INTO v_5028_untuk_memanggil;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '極める', 'untuk-mencapai-puncak-sesuatu', 28, 56, 'Kanji itu sendiri berarti <kanji>ekstrim</kanji>. Versi kosakata kata kerjanya tidak "terlalu ekstrim" karena itu tidak masuk akal. Sebaliknya, Anda membawa sesuatu ke ekstrem, menjadikan <kosakata>mencapai puncak sesuatu</vocabulary>, <vocabulary>menyempurnakan</vocabulary>, atau <vocabulary>mencapai ekstrem</vocabulary>.

極める umumnya berarti mencapai tingkat kemahiran atau keunggulan tertinggi dalam keterampilan, seni, atau bidang tertentu. Ini juga bisa berarti melakukan sesuatu yang ekstrem, seperti menjadi sangat sibuk.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda:

Saat Anda <vocabulary>untuk mencapai puncak sesuatu</vocabulary> atau <vocabulary>untuk menyempurnakan</vocabulary> sesuatu, Anda cenderung sedikit berlebihan, jadi harus ada <reading>key</reading> <reading>wo</reading>rd (きわ) yang bisa diucapkan orang lain untuk mengingatkan Anda agar sedikit tenang. "Nanas! Nanas!"', 'Untuk Mencapai Puncak Sesuatu, Untuk Sempurna, Untuk Mencapai Yang Ekstrim')
    RETURNING id INTO v_5039_untuk_mencapai_puncak_sesuatu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '退く', 'untuk-mundur', 28, 57, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>mundur</kanji>, dan versi kosakata kata kerjanya berarti <vocabulary>mundur</vocabulary> atau <vocabulary>mundur</vocabulary>.

退く juga bisa berarti <kosakata>mengundurkan diri</vocabulary>, karena mengundurkan diri adalah semacam kemunduran kiasan, seperti dari peran profesional atau posisi terdepan dalam suatu bidang atau industri.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda:

Kamu perlu <vocabulary>mundur</vocabulary> karena <reading>dia mengubah lokasi</reading>ned (しりぞ) di tempat kamu berdiri. Sekarang ini adalah zona dilarang berdiri. Siapa dia? Zonasi ulang, ya.', 'Untuk Mundur, Untuk Menarik, Untuk Mengundurkan Diri')
    RETURNING id INTO v_5092_untuk_mundur;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '矢印', 'anak-panah', 28, 58, '矢印 menggabungkan <kanji>panah</kanji> kanji dan kata vocab 印 (tanda), memberi kita jenis panah yang Anda gunakan untuk menunjuk sesuatu, seperti ini: →↑↓←. Itu bisa berupa panah pada sebuah tanda, atau pada selembar kertas, atau dokumen. Kita bisa menyebutnya sebagai <vocabulary>panah</vocabulary>, atau <vocabulary>simbol panah</vocabulary>.', 'Bacaannya adalah 矢 dan 印 dijadikan satu.印 mirip dengan kosakata sebenarnya 印, tapi hati-hati jika rendaku mengubahnya dari しるし menjadi じるし.', 'Anak panah, Simbol Panah')
    RETURNING id INTO v_5105_anak_panah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '並列', 'berdampingan', 28, 59, '<kanji>Sejajarkan</kanji> semuanya dalam satu <kanji>baris</kanji>. Saat Anda melakukan itu, semuanya akan <vocabulary>berdampingan</vocabulary>.

並列 adalah kata yang relatif formal untuk benda-benda yang disusun berdampingan secara sejajar. Anda paling sering melihatnya digunakan dalam pengertian teknis, seperti rangkaian <vocabulary>paralel</vocabulary> dalam barang elektronik. Namun kata ini juga digunakan untuk menggambarkan pengaturan hal-hal lain yang teratur dan berdampingan, seperti kendaraan yang diparkir bersebelahan dalam barisan atau tentara yang berdiri dalam barisan.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Berdampingan, Paralel')
    RETURNING id INTO v_5107_berdampingan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '並行', 'secara-paralel', 28, 60, 'Jika beberapa orang <kanji>berbaris</kanji> dan <kanji>pergi</kanji> bersama-sama, mereka semua akan maju <vocabulary>secara paralel</vocabulary> sambil <vocabulary>berbaris</vocabulary> satu sama lain.

Meskipun 平行 hanya mengacu pada benda-benda yang sejajar secara geometris, 並行 digunakan untuk dua benda atau lebih yang ditempatkan atau bergerak berdampingan, seperti bus atau kereta api yang berjalan berdampingan. Kata ini juga digunakan untuk mendeskripsikan dua aktivitas atau lebih yang terjadi pada waktu yang sama — dengan kata lain hal-hal yang <vocabulary>bersamaan</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.

Ini juga berjalan <em>paralel</em> dengan 平行 dalam hal pembacaannya, sehingga dapat membuatnya lebih mudah untuk diingat juga.', 'Secara paralel, Mengikuti, Bersamaan')
    RETURNING id INTO v_5108_secara_paralel;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '並ぶ', 'untuk-berbaris', 28, 61, 'Kanji itu sendiri berarti <kanji>berbaris</kanji>, dan ini adalah versi kata kerja intransitifnya, yang membuat <vocabulary>berbaris</vocabulary> atau <vocabulary>berbaris</vocabulary>. Anda dapat mengingat ini karena Anda terus-menerus mengucapkan <reading>boo</reading> (ぶ), mengapa semua orang sudah mengantri? Jika Anda adalah orang yang bertugas mengantre, Anda tidak perlu <vocabulary>mengantri</vocabulary> sendiri…

Secara kiasan, ini juga bisa berarti <kosakata>sejajar</vocabulary>, seperti seseorang atau sesuatu yang cocok atau sebanding dalam kemampuan, status, atau peringkatnya dengan orang lain (seolah-olah mereka sejajar jika dibandingkan).', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: Hanya untuk Anda, ketika Anda mengunjungi <reading>Nara</reading> (なら), rusa di sana <vocabulary>harus diantre</vocabulary> untuk Anda periksa, karena Anda adalah pengawas rusa. Jika Anda belum tahu tentang Nara dan rusanya, Anda harus mencarinya, mereka cukup mengagumkan.', 'Untuk Berbaris, Untuk Berbaris, Untuk Berdiri Dalam Antrean, Menjadi Setara')
    RETURNING id INTO v_5109_untuk_berbaris;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '並', 'biasa', 28, 62, 'Hal-hal yang <kanji>berbaris</kanji> adalah hal-hal <vocabulary>biasa</vocabulary> dan <vocabulary>rata-rata</vocabulary>. Karena sebagian besar benda (atau orang) masuk dalam kategori rata-rata, bisa dibilang sebagian besar dari mereka berbaris berdampingan satu sama lain.

Ini mungkin alasan mengapa 並 sering digunakan di restoran untuk merujuk pada ukuran porsi standar (atau rata-rata). Dan di restoran sushi, 並 bisa merujuk pada set standar, bukan set yang lebih mewah atau premium.

Perhatikan bahwa ketika mendeskripsikan sesuatu sebagai 並 di luar konteks restoran atau komersial, nadanya bisa sedikit menghakimi. Kebanyakan orang tidak akan senang jika Anda menyebut pekerjaan mereka (atau mereka) biasa-biasa saja dan biasa-biasa saja, Anda tahu?', 'Karena kata ini terdiri dari satu kanji, kemungkinan besar menggunakan bacaan kun''yomi. Anda tidak mempelajari bacaan ini, jadi inilah mnemonik untuk membantu Anda mengingat:

Anda berada di pantai, melihat <reading>波</reading> (なみ), yang semuanya sangat <vocabulary>biasa</vocabulary>, <vocabulary>rata-rata</vocabulary>. Tidak ada yang luar biasa dari ombak itu.', 'Biasa, Rata-rata')
    RETURNING id INTO v_5110_biasa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '修士', 'gelar-master', 28, 63, 'Gelar <kanji>mastering</kanji> yang setara dengan <kanji>samurai</kanji> diperlukan untuk <vocabulary>gelar master</vocabulary>. Anda harus menguasai keterampilan pilihan Anda hingga tingkat samurai untuk memperoleh gelar seperti itu… Kedengarannya sulit.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Gelar Master')
    RETURNING id INTO v_5111_gelar_master;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '修理', 'memperbaiki', 28, 64, 'Saat Anda <kanji>memperbaiki</kanji> sesuatu karena <kanji>alasan</kanji>, Anda akan dapat <vocabulary>memperbaiki</vocabulary> apa saja! Ingat saja, selalu melakukan perbaikan karena suatu alasan.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Memperbaiki')
    RETURNING id INTO v_5112_memperbaiki;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '研修', 'pelatihan', 28, 65, 'Anda <kanji>mempertajam</kanji> <kanji>penguasaan</kanji> Anda terhadap keterampilan tertentu. Bisa dibilang Anda sedang <vocabulary>berlatih</vocabulary>. Selain itu, ketika Anda mempertajam penguasaan orang lain, Anda <vocabulary>memberikan pelatihan</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Pelatihan, Berikan Pelatihan')
    RETURNING id INTO v_5113_pelatihan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '修辞学', 'retorik', 28, 66, 'Bidang <kanji>penguasaan</kanji> <kanji>kata</kanji> dalam <kanji>studi</kanji> juga dikenal sebagai <vocabulary>retorika</vocabulary>.

修辞学 khusus untuk studi dan teori retorika. Dengan kata lain, retorika sebagai bidang akademis. Jika Anda hanya berbicara tentang cara orang membujuk satu sama lain dengan kata-kata, istilah yang lebih umum digunakan adalah レトリック.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Retorik')
    RETURNING id INTO v_5114_retorik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '傘', 'payung', 28, 67, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji.', 'Payung')
    RETURNING id INTO v_5115_payung;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '傘立て', 'tempat-payung', 28, 68, 'Ini adalah saat Anda mengambil <kanji>payung</kanji> dan <kanji>berdiri</kanji>. Tunggu, bagaimana payung bisa berdiri? Pertanyaan bagus, Crabling sayang, kamu meletakkan payungmu di <vocabulary>tempat payung</vocabulary>.', 'Bacaannya adalah bacaan 傘 (dipelajari dengan kanji) dan 立つ (berdiri).', 'Tempat Payung, Tempat Payung')
    RETURNING id INTO v_5116_tempat_payung;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '児童', 'anak-anak', 28, 69, '<kanji>anak</kanji> yang merupakan <kanji>remaja</kanji> hanyalah <vocabulary>anak</vocabulary>. Sekelompok di antaranya adalah <vocabulary>anak-anak</vocabulary>.

児童 mengacu secara khusus pada anak-anak usia sekolah dasar, biasanya berusia sekitar 6 hingga 12 tahun. Kata ini sering digunakan dalam konteks formal, seperti dalam dokumen hukum atau saat mengacu pada <vocabulary>anak sekolah</vocabulary> di lingkungan pendidikan.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Anak-anak, Anak, Anak sekolah')
    RETURNING id INTO v_5119_anak_anak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '幼児', 'balita', 28, 70, '<kanji>masa bayi</kanji> <kanji>anak</kanji> adalah <vocabulary>balita</vocabulary>. Kanjinya agak menipu karena tidak digunakan untuk bayi. Ini lebih ditujukan untuk anak kecil, mulai dari balita hingga <vocabulary>anak prasekolah</vocabulary>.

幼児 agak formal, tetapi biasanya digunakan untuk berbicara tentang anak kecil berusia sekitar satu hingga enam tahun, atau tentang periode tertentu di masa kanak-kanak.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Balita, Anak prasekolah')
    RETURNING id INTO v_5120_balita;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '冷たい', 'dingin', 28, 71, 'Sesuatu yang <kanji>keren</kanji> adalah <vocabulary>dingin</vocabulary>. Ini mengacu pada sesuatu yang <vocabulary>dingin saat disentuh</vocabulary>, bukan cuaca atau sesuatu seperti itu (yaitu 寒い).', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi berikut ini mnemonik untuk membantu Anda: Sesuatu yang benar-benar <vocabulary>dingin</vocabulary> saat disentuh sudah cukup dingin <reading>untuk membuat es krim.', 'Dingin, Dingin, Dingin Saat Disentuh')
    RETURNING id INTO v_5121_dingin;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '冷静', 'berkepala-dingin', 28, 72, 'Kamu <kanji>keren</kanji> dan <kanji>pendiam</kanji>. Itu kamu, ayah. Baik dan <vocabulary>berkepala dingin</vocabulary> dan <vocabulary>tenang</vocabulary>. Begitu banyak <vocabulary>ketenangan</vocabulary>', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Berkepala Dingin, Tenang, Ketenangan')
    RETURNING id INTO v_5122_berkepala_dingin;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '冷凍庫', 'freezer', 28, 73, '<kanji>dingin</kanji> <kanji>beku</kanji> <kanji>penyimpanan</kanji> adalah tempat yang bagian dalamnya sangat dingin, sangat dingin sehingga dapat membekukan sesuatu. Ini disebut <vocabulary>freezer</vocabulary>, berbeda dengan 冷蔵庫, yaitu kulkas, dan tidak memiliki kanji untuk "membekukan" di dalamnya.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Freezer')
    RETURNING id INTO v_5123_freezer;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '凍る', 'untuk-membekukan', 28, 74, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri artinya <kanji>dibekukan</kanji>, jadi versi vocabnya adalah <vocabulary>dibekukan</vocabulary>.', 'Bacaannya sebenarnya berasal dari kata 氷 yang berarti “es”. Anda dapat melihat dari mana asal kata-kata ini berasal, sekarang... benda beku yang sangat dingin. Jadi, pikirkan kembali こおり, lalu ubah り menjadi る dan letakkan di luar kanji. Itu membuat pembacaan untuk <membaca>こお</reading>る ini, dalam semua (atau sebagian besar) kemuliaan 氷.', 'Untuk Membekukan, Menjadi Beku')
    RETURNING id INTO v_5124_untuk_membekukan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '凍死', 'mati-kedinginan', 28, 75, 'Saya dengar, <kanji>beku</kanji> <kanji>kematian</kanji> bukanlah cara yang buruk. Namun, Anda tidak ingin <vocabulary>mati kedinginan</vocabulary> jika Anda bisa membantu.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Mati kedinginan')
    RETURNING id INTO v_5125_mati_kedinginan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '凍結', 'pembekuan', 28, 76, 'Benda-benda yang <kanji>dibekukan</kanji> telah <kanji>diikat</kanji>di dalam es <vocabulary>pembekuan</vocabulary>. Mereka <vocabulary>menjadi beku</vocabulary> dengan cara seperti itu. 

凍結 adalah kata yang relatif formal yang digunakan untuk pembekuan fisik infrastruktur, seperti jalan dan pipa air. Ini juga bisa merujuk pada pembekuan sistem atau akun, seperti penangguhan akun media sosial atau bank.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Pembekuan, Dapatkan Beku')
    RETURNING id INTO v_5126_pembekuan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '処理', 'menghadapi', 28, 77, 'Saya bisa <kanji>mengatasinya</kanji>, apa pun <kanji>alasannya</kanji>. Saya bersumpah saya bisa <vocabulary>mengatasi</vocabulary> masalah ini sendiri!

処理 adalah kata yang relatif formal untuk <vocabulary>menangani</vocabulary> dan <vocabulary>memproses</vocabulary> suatu masalah atau tugas untuk membawanya ke penyelesaian. Ini mencakup semua jenis tugas, mulai dari pekerjaan administratif dan pemrosesan data hingga tantangan praktis seperti pembuangan limbah dan penanganan pengaduan. Bahkan bisa juga digunakan untuk menjinakkan bom yang belum meledak.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Menghadapi, Penanganan, Pengolahan')
    RETURNING id INTO v_5127_menghadapi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '処分', 'pembuangan', 28, 78, 'Saat Anda <kanji>menangani</kanji> sampah, Anda harus <kanji>membaginya</kanji> menjadi beberapa jenis sebelum Anda dapat <vocabulary>pembuangan</vocabulary>. Kapan pun Anda menangani dan membagi sesuatu, Anda bersiap untuk membuangnya.

処分 berarti membuang hal-hal yang tidak diinginkan, seperti sampah atau furnitur lama. Terkadang, ini juga bisa berarti <vocabulary>hukuman</vocabulary>, seperti skorsing dari sekolah karena melanggar peraturan. Hubungan ini masuk akal karena pembuangan dan hukuman melibatkan penanganan sesuatu yang tidak diinginkan—baik berupa barang atau perilaku.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Pembuangan, Hukuman')
    RETURNING id INTO v_5128_pembuangan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '券', 'tiket', 28, 79, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.

券 adalah kata mandiri yang berarti <vocabulary>tiket</vocabulary>, namun biasanya digunakan sebagai akhiran untuk membentuk kata-kata seperti 入場券 (tiket masuk), 割引券 (<vocabulary>kupon</vocabulary> diskon), atau 定期券 (<vocabulary>pass</vocabulary> komuter).', 'Bacaannya sama dengan yang Anda pelajari dengan kanji. Biasanya ini melekat pada sesuatu, karena ini memberi tahu Anda jenis tiket apa itu.', 'Tiket, Kupon, Lulus')
    RETURNING id INTO v_5130_tiket;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '旅券', 'paspor', 28, 80, '<kanji>perjalanan</kanji> <kanji>tiket</kanji> Anda adalah tiket yang memungkinkan Anda melakukan SEMUA perjalanan Anda. Itu bukan tiket pesawatmu, bukan tiket perahumu, itu tiket perjalanan. Ini adalah <vocabulary>paspor</vocabulary> Anda, yang memungkinkan Anda melakukan perjalanan.

旅券 adalah istilah formal untuk paspor. Ini biasanya digunakan dalam dokumen resmi dan suasana formal, seperti ketika menangani dokumen pemerintah. Dalam konteks yang tidak terlalu formal, Anda cukup mengucapkan パスポート!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Paspor')
    RETURNING id INTO v_5131_paspor;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '前売り券', 'tiket-muka', 28, 81, 'Apa itu <kanji>sebelum</kanji> <kanji>jual</kanji> <kanji>tiket</kanji>? Ini adalah tiket yang Anda jual sebelum acara. Dengan kata lain, <vocabulary>tiket di muka</vocabulary> atau <vocabulary>tiket dijual di muka</vocabulary>!

前売り券 sering kali merupakan tiket dengan harga lebih murah dan keuntungan atau keuntungan tertentu. Perhatikan bahwa Anda juga akan melihat ini ditulis sebagai 前売券, tanpa okurigana, namun bacaannya akan tetap sama.', 'Bacaannya adalah 前, 売る dan 券 digabungkan menjadi satu kata yang janggal.', 'Tiket Muka, Tiket Dijual Di Muka')
    RETURNING id INTO v_5132_tiket_muka;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '回数券', 'buku-tiket', 28, 82, 'Banyak <kanji>kali</kanji> adalah berapa kali Anda dapat menggunakan <kanji>jumlah</kanji> dari <kanji>tiket</kanji> ini. Artinya ada banyak tiket, menjadikan ini <vocabulary>buku tiket</vocabulary>.

回数券 mengacu pada buku atau set tiket prabayar yang sering kali dijual dengan harga diskon dan bisa dalam bentuk fisik atau digital. Biasanya digunakan untuk transportasi umum, seperti bus atau kereta api, dan juga dapat dikeluarkan oleh bisnis lain yang sering dikunjungi orang, seperti pemandian air panas dan pemandian umum.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Buku Tiket, Tiket Kereta Api')
    RETURNING id INTO v_5133_buku_tiket;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '創造力', 'kekuatan-kreatif', 28, 83, 'Jika 創造 adalah <kanji>penciptaan</kanji> dan Anda menambahkan <kanji>kekuatan</kanji> ke dalamnya, Anda memiliki <vocabulary>kekuatan kreatif</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda tahu cara membaca kanji Anda, Anda juga akan tahu cara membacanya!', 'Kekuatan Kreatif, Kreativitas')
    RETURNING id INTO v_5135_kekuatan_kreatif;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '創造的', 'kreatif', 28, 84, 'Jika 創造 adalah <kanji>kreasi</kanji>, maka Anda menambahkan 的 ke dalamnya, yang berarti Anda memiliki sesuatu yang bersifat kreasi, yang cukup <vocabulary>kreatif</vocabulary> bukan?', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kreatif')
    RETURNING id INTO v_5136_kreatif;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '博物館', 'museum', 28, 85, 'Sebuah <kanji>pameran</kanji> untuk <kanji>sesuatu</kanji> diletakkan di <kanji>gedung publik</kanji> agar siapa pun dapat melihatnya. Tempat ini adalah <vocabulary>museum</vocabulary>.

Perhatikan bahwa 博物館 tidak digunakan untuk museum seni, tetapi untuk museum yang berfokus pada berbagai subjek lain, seperti sejarah alam, sains, sejarah, dan teknologi.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Museum')
    RETURNING id INTO v_5137_museum;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '博打', 'berjudi', 28, 86, '<kanji>perjudian</kanji> <kanji>pukul</kanji> bisa berarti banyak hal. Salah satu jenis perjudian di Jepang yang populer pada masa itu adalah mempertaruhkan benda-benda balok kayu yang menakjubkan ini. Anda akan bertaruh dengan menjatuhkannya ke tanah, menghasilkan suara yang bagus. Cara lain untuk memikirkannya adalah seperti blackjack. Anda ingin kartu? Anda memukul! Apa pun itu, itu adalah <vocabulary>perjudian</vocabulary>.', 'Pembacaannya aneh untuk yang satu ini, tapi perjudian itu aneh, menurutku. はく pergi ke ばく, mungkin karena Anda sedang bermain judi <read>kembali</read>gammon.ち bisa <read>chea</reading>ting, di mana Anda curang di backgammon perjudian ini. Jadi, kamu <reading>kembali</reading>gammon <reading>chea</reading>ting (ばくち), dasar penipu ulung.', 'Berjudi')
    RETURNING id INTO v_5139_berjudi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '星占い', 'perbintangan', 28, 87, '占い adalah "meramal nasib." <kanji>Bintang</kanji> <kanji>meramal</kanji> adalah saat Anda menggunakan bintang untuk meramal. Itu dikenal sebagai <vocabulary>astrology</vocabulary> atau <vocabulary>horoscope</vocabulary>.', 'Bacaannya adalah kata 星 dan 占い dirangkai menjadi satu. Apakah Anda memperkirakan hal itu akan datang?', 'Perbintangan, Horoskop')
    RETURNING id INTO v_5140_perbintangan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '微妙', 'tidak-begitu-baik', 28, 88, 'Sesuatu yang <kanji>halus</kanji> dan <kanji>aneh</kanji> mungkin <vocabulary>tidak terlalu bagus</vocabulary>. Tidak jelek, tapi juga tidak bagus — mudah pecah, ditambah lagi agak aneh… <vocabulary>tidak terlalu</vocabulary> bagus, tahu? Bayangkan 微妙 sebagai semacam eufemisme untuk hal-hal rumit dan aneh yang sebenarnya tidak Anda sukai. 

微妙 juga bisa berarti <vocabulary>halus</vocabulary> atau <vocabulary>halus</vocabulary>, seperti 微妙な立場 (posisi rumit yang membutuhkan penanganan hati-hati) atau 微妙なニュアンスの違い (perbedaan nuansa halus yang sulit ditentukan).', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Tidak begitu baik, Tidak terlalu, Halus, Tak kentara')
    RETURNING id INTO v_5141_tidak_begitu_baik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '妙', 'aneh', 28, 89, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.

Perhatikan bahwa 妙 lebih sering digunakan dalam tulisan daripada percakapan.', 'Bacaannya sebenarnya sama dengan kanji yang Anda pelajari. On''yomi sepanjang jalan, meski sendirian. <vocabulary>aneh</vocabulary> sekali!', 'Aneh, Tidak biasa, Aneh')
    RETURNING id INTO v_5142_aneh;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '妙薬', 'obat-ajaib', 28, 90, '<kanji>obat</kanji> <kanji>anji</kanji> yang tampaknya terlalu bagus untuk menjadi kenyataan? Itulah yang kami sebut sebagai <vocabulary>obat ajaib</vocabulary> atau <vocabulary>obat ajaib</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Obat Ajaib, Obat Ajaib')
    RETURNING id INTO v_5143_obat_ajaib;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '婦人', 'wanita', 28, 91, '<kanji>Nyonya</kanji> <kanji>orang</kanji> adalah cara lain untuk mengatakan <vocabulary>wanita</vocabulary> — tapi agak sopan, lho? Sebuah cara yang pantas untuk seorang <vocabulary>wanita</vocabulary>.

婦人 adalah kata yang sopan namun agak kuno untuk wanita dewasa. Anda masih sering melihatnya dalam nama kategori formal, seperti 婦人服 (pakaian wanita) atau 婦人科 (ginekologi).', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Wanita, Wanita')
    RETURNING id INTO v_5144_wanita;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '夫婦', 'suami-istri', 28, 92, 'Apa yang Anda sebut sebagai <kanji>suami</kanji> dan <kanji>nyonya</kanji>? <vocabulary>Suami dan istri</vocabulary>! Mereka adalah <vocabulary>pasangan suami istri</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Suami Istri, Pasangan Menikah, Tuan dan Nyonya.')
    RETURNING id INTO v_5145_suami_istri;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '幼い', 'sangat-muda', 28, 93, 'Kanji berarti <kanji>masa bayi</kanji>. Versi kata sifat mendeskripsikan seseorang yang <vocabulary>sangat muda</vocabulary>, seperti anak kecil di masa kanak-kanak atau bayi!

Tergantung pada konteksnya, kata ini juga dapat mendeskripsikan perilaku atau gagasan yang <kosa kata>kekanak-kanakan</vocabulary> atau tidak dewasa, sering kali berkonotasi negatif.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda:

Saat kamu masih <vocabulary>sangat muda</vocabulary> dan <vocabulary>kekanak-kanakan</vocabulary> kamu disuruh berdoa memohon ampun. Salah satu hal yang harus Anda lakukan adalah menyanyikan "<reading>hosanna</reading> (おさな) di tempat tertinggi."', 'Sangat Muda, Kekanak-kanakan')
    RETURNING id INTO v_5147_sangat_muda;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '幼年時代', 'masa-kecil', 28, 94, 'Anda menggunakan 時代 sebagai "periode" waktu yang Anda bicarakan. Periode apa? <kanji>masa bayi</kanji> <kanji>tahun</kanji>. Tahun-tahun itu bukan hanya saat Anda masih bayi, tetapi juga saat Anda beranjak dewasa. Itu adalah <vocabulary>masa kecil</vocabulary> Anda.

幼年時代 secara khusus mengacu pada tahun-tahun <kosakata>masa kanak-kanak</vocabulary> Anda. Ini adalah kata formal yang sering Anda lihat dalam tulisan dengan nada agak kaku, sering kali muncul dalam literatur, otobiografi, atau memoar yang mengenang masa muda seseorang.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Masa kecil, Anak usia dini')
    RETURNING id INTO v_5148_masa_kecil;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '庫', 'gudang', 28, 95, 'Kanji berarti <kanji>gudang</kanji>, dan kosakatanya juga <vocabulary>gudang</vocabulary>! Secara khusus, ini biasanya mengacu pada gudang tradisional Jepang, yang biasanya merupakan bangunan dua lantai yang digunakan untuk menyimpan properti pribadi atau barang dagangan.', 'Apa yang Anda masukkan ke dalam <vocabulary>gudang</vocabulary> Anda? Tidak ada yang bagus. Hanya mobil gudang (くら) Anda yang benar-benar <read>cra</reading>. Sedih sekali, mobil itu juga bagus dan sekarang semuanya rusak dan disimpan di gudang Anda.', 'Gudang, Gudang, Kura')
    RETURNING id INTO v_5149_gudang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '金庫', 'brankas', 28, 96, '<kanji>Emas</kanji> <kanji>penyimpanan</kanji> adalah tempat Anda menyimpan emas. Anda ingin aman, jadi simpanlah di <vocabulary>brankas</vocabulary> atau <vocabulary>vault</vocabulary>.

金庫 dapat merujuk pada berbagai jenis penyimpanan aman. Tergantung pada konteksnya, ini bisa berarti brankas pribadi, brankas bank, atau brankas.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Brankas, Kubah')
    RETURNING id INTO v_5150_brankas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '車庫', 'garasi', 28, 97, '<kanji>Mobil</kanji> <kanji>penyimpanan</kanji> adalah tempat Anda menyimpan mobil. Ini adalah <vocabulary>garasi</vocabulary> Anda.

車庫 secara harfiah berarti tempat penyimpanan kendaraan, jadi digunakan untuk segala hal mulai dari garasi rumah hingga depo besar untuk transportasi umum. Nadanya lebih formal daripada kata katakana ガレージ (garasi).', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Garasi')
    RETURNING id INTO v_5151_garasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '回復する', 'untuk-memulihkan', 28, 98, '回復 adalah "pemulihan", jadi ubah saja menjadi kata kerja dan Anda memiliki <vocabulary>untuk memulihkan</vocabulary>.', 'Selain berbagi bacaan dengan 回復, ini juga menggunakan bacaan yang Anda pelajari dengan kanji, jadi Anda siap melakukannya.', 'Untuk Memulihkan, Untuk Memulihkan, Untuk Mendapatkan Kembali')
    RETURNING id INTO v_5152_untuk_memulihkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '微生物', 'mikroorganisme', 28, 99, 'Anda telah mempelajari 微 bisa berarti "halus", namun bisa juga berarti <kanji>kecil</kanji>. Gabungkan hal tersebut dengan 生物, yang mungkin Anda ingat adalah "makhluk hidup", dan apa yang Anda dapatkan? Makhluk hidup kecil…? Nah, itulah <vocabulary>mikroorganisme</vocabulary>. Jenis makhluk hidup terkecil yang pernah ada.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Mikroorganisme, Mikroba')
    RETURNING id INTO v_5154_mikroorganisme;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '憲法', 'konstitusi', 28, 100, '<kanji>konstitusi</kanji> <kanji>hukum</kanji> adalah apa yang membentuk <vocabulary>konstitusi</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Berhati-hatilah terhadap ほう yang berubah menjadi ぽう!', 'Konstitusi')
    RETURNING id INTO v_5155_konstitusi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '憲政', 'pemerintahan-konstitusional', 28, 101, '<kanji>konstitusi</kanji> <kanji>pemerintahan</kanji> adalah <vocabulary>pemerintahan konstitusional</vocabulary>.

憲政 adalah kata formal yang mungkin muncul dalam diskusi tentang demokrasi atau kerangka konstitusi, terutama dalam tulisan tingkat lanjut.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Pemerintahan Konstitusional')
    RETURNING id INTO v_5156_pemerintahan_konstitusional;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '無我夢中', 'penyerapan-total', 28, 102, 'Anda sudah tahu bahwa 無我 berarti "tidak mementingkan diri sendiri" dan 夢中 berarti "tergila-gila". Jadi ini artinya seperti <vocabulary>penyerapan total</vocabulary>. Anda begitu menyukai sesuatu sehingga Anda mulai kehilangan kesadaran diri. Sama seperti 夢中, ini juga bisa menggambarkan melakukan sesuatu dengan <vocabulary>panik</vocabulary>sekutu, seperti melarikan diri dari seseorang atau sesuatu.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Penyerapan Total, Kehilangan Diri Sendiri, Panik')
    RETURNING id INTO v_5157_penyerapan_total;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '身振り', 'bahasa-tubuh', 28, 103, 'Ingat bagaimana kosakata 身 berarti "tubuh" dan 振る berarti "mengguncang sesuatu"? Nah, cara Anda "menggoyangkan" tubuh Anda adalah <vocabulary>bahasa tubuh</vocabulary> Anda, atau cara Anda <vocabulary>gesture</vocabulary>.

身振り umumnya mengacu pada gerakan tubuh dan gerak tubuh yang membuat komunikasi lebih ekspresif atau membantu menjembatani hambatan bahasa. Anda akan sering menemukan ini bersamaan dengan 手振り (isyarat tangan) dalam frasa 身振り手振り.', 'Pembacaannya adalah kun''yomis untuk 身 dan 振る disatukan, dimana 振り dirangkai menjadi ぶり.', 'Bahasa Tubuh, Sikap')
    RETURNING id INTO v_5158_bahasa_tubuh;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '振り仮名', 'furigana', 28, 104, '振る berarti "mengguncang." 仮名 adalah kana. Kata ini mengacu pada <vocabulary>furigana</vocabulary>, yaitu kana kecil yang diletakkan di sebelah kanji untuk orang yang tidak menggunakan WaniKani dan tidak bisa membaca apa pun. Kenapa disebut "goyang kana"? Saya tidak tahu. Bayangkan saja meletakkan kana kecil di sebelah kanji dan melihatnya bergoyang-goyang, dan Anda sudah siap melakukannya.', 'Bacaannya 振る dan 仮名 disatukan menjadi satu. Jika Anda mengetahui kata-kata itu, Anda tidak memerlukan furigana untuk membantu Anda dengan kata ini.', 'Furigana, Kana Kecil Di Sebelah Kanji')
    RETURNING id INTO v_5159_furigana;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '面接する', 'untuk-wawancara-dengan', 28, 105, '面接 adalah <kanji>wawancara</kanji>. Jadikan itu menjadi kata kerja dan Anda harus melakukan <vocabulary>wawancara dengan</vocabulary>.

Ingatlah bahwa 面接 adalah wawancara untuk pekerjaan atau penerimaan sekolah, bukan wawancara untuk majalah atau acara TV. インタビューする adalah kata yang lebih tepat untuk wawancara media.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Akan membantu untuk mengetahui kata 面接 juga.', 'Untuk Wawancara Dengan, Untuk Wawancara')
    RETURNING id INTO v_5160_untuk_wawancara_dengan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '撃つ', 'untuk-menembak', 28, 106, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>menyerang</kanji>, tetapi 撃つ berarti <vocabulary>menembak</vocabulary>.

Ini bisa berarti <vocabulary>menembakkan</vocabulary> senjata seperti pistol atau menembakkan proyektil, seperti anak panah. Bisa juga berarti menembak seseorang atau binatang.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Apa yang ingin Anda <vocabulary>tunjukkan</vocabulary>? <membaca>U</reading>ni (う)! Mengapa? Karena kawasan ini banyak ditumbuhi bulu babi berwarna hitam runcing. Anda harus memusnahkan mereka dengan menembak jatuh mereka.', 'Untuk Menembak, Untuk Menembak')
    RETURNING id INTO v_5161_untuk_menembak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '攻撃', 'menyerang', 28, 107, 'Dengan <kanji>agresi</kanji> Anda <kanji>menyerang</kanji> musuh. Ini adalah <vocabulary>serangan</vocabulary>.

攻撃 biasanya merujuk pada <vocabulary>menyerang</vocabulary> seseorang atau sesuatu dengan tujuan menyebabkan bahaya atau kerusakan langsung, baik secara fisik maupun verbal. Anda akan mendengarnya digunakan dalam konteks perang, permainan, argumen, atau bahkan hal-hal seperti kritik media atau serangan siber.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Menyerang, Menyerang')
    RETURNING id INTO v_5162_menyerang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '攻める', 'untuk-menyerang', 28, 108, 'Anda tidak mengatakan "agresi". Saat Anda melakukan agresi terhadap seseorang, Anda mungkin melakukan sesuatu yang menyakitinya. Ini adalah sebuah serangan, membuat kata ini <vocabulary>menyerang</vocabulary>.

攻める berarti menyerang atau menyerang musuh dalam pertempuran, namun bisa juga digunakan untuk membuat gerakan yang kuat atau proaktif dalam kompetisi seperti olahraga, bisnis, atau permainan. Kata ini juga dapat digunakan untuk menggambarkan pengambilan tindakan yang berani, seperti melanjutkan rencana yang berisiko.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda:

<vocabulary>Untuk menyerang</vocabulary> seseorang, gunakan tongkat <reading>ce</reading>lery (せ). Seledri bukanlah senjata yang mematikan namun kebanyakan orang membencinya, sehingga sangat cocok untuk menyerang seseorang dengan santai, terutama mereka yang membenci seledri.', 'Untuk Menyerang, Untuk Menyerang')
    RETURNING id INTO v_5163_untuk_menyerang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '専攻', 'besar', 28, 109, '<kanji>spesialisasi</kanji> Anda, yang Anda fokuskan dengan <kanji>agresi</kanji>, adalah <vocabulary>jurusan</vocabulary> Anda di perguruan tinggi (<vocabulary>jurusan perguruan tinggi</vocabulary> Anda). Belajarlah dengan giat, hai belalang muda.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Besar, Jurusan Perguruan Tinggi, Bidang Studi')
    RETURNING id INTO v_5164_besar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '反攻', 'serangan-balasan', 28, 110, '<kanji>Anti</kanji> <kanji>agresi</kanji> adalah ketika Anda menerima suatu agresi, lalu membalasnya dengan anti agresi alias <vocabulary>serangan balik</vocabulary> Anda.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Serangan balasan, Serangan Balik')
    RETURNING id INTO v_5165_serangan_balasan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '浜', 'pantai', 28, 111, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna. Perlu disebutkan bahwa cara yang lebih umum untuk mengatakan pantai adalah ビーチ, dan banyak orang sebenarnya mengatakan 海 meskipun secara harfiah berarti "laut".', 'Bacaannya sama dengan yang Anda pelajari dengan kanji.', 'Pantai')
    RETURNING id INTO v_5167_pantai;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '横浜', 'yokohama', 28, 112, 'Itu adalah <kanji>sisi</kanji> dari <kanji>pantai</kanji>! Tunggu, ada apa? Ini akan lebih masuk akal ketika Anda melihat bacaan untuk kata tersebut, karena itu adalah sebuah tempat: <vocabulary>Yokohama</vocabulary>.', 'Bacaannya adalah 横 dan 浜 disatukan menjadi satu kata yang bagus, <reading>よこはま</reading>.', 'Yokohama')
    RETURNING id INTO v_5168_yokohama;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '清い', 'murni', 28, 113, 'Ini adalah kanji tunggal dengan い di akhir, artinya Anda tahu itu mungkin kata sifat. Apa bentuk kata sifat dari <kanji>murni</kanji>? Itu <vocabulary>murni</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: "Untuk tetap <vocabulary>murni</vocabulary> dan <vocabulary>clean</vocabulary>, Anda tidak boleh melakukan apa pun yang kotor atau buruk. Itulah kunci <membaca>, yo</reading> (きよ).."', 'Murni, Membersihkan')
    RETURNING id INTO v_5169_murni;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '清潔', 'membersihkan', 28, 114, 'Sesuatu yang sangat <kanji>murni</kanji> menjadi <kanji>murni</kanji> dua kali. Pasti <vocabulary>bersih</vocabulary> banget! <vocabulary>Kebersihan</vocabulary> sama dengan kemurnian...bagaimanapun juga. Saya yakin begitulah kata pepatah.

清潔 adalah kata yang relatif formal yang mengacu pada kondisi <vocabulary>sanitasi</vocabulary> dalam kebersihan pribadi, kesehatan masyarakat, atau lingkungan medis. Hal ini dapat merujuk pada tempat yang bersih secara fisik dan praktik higienis. Dalam sastra, 清潔 juga dapat menggambarkan seseorang yang murni secara moral.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Membersihkan, Kebersihan, Sanitasi')
    RETURNING id INTO v_5170_membersihkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '潔い', 'terhormat', 28, 115, 'Ini adalah kanji tunggal dengan い di akhir, artinya Anda tahu itu mungkin kata sifat. Kanji berarti <kanji>murni</kanji>, namun ini merupakan kata sifat yang sering menggambarkan perilaku atau karakter, sehingga berarti <vocabulary>terhormat</vocabulary>, <vocabulary>bermartabat</vocabulary>, atau <vocabulary>gracious</vocabulary>.

Bagaimana cara kerjanya? Saya kira jika Anda bisa tetap murni meskipun berada dalam situasi sulit, Anda harus cukup terhormat dan bermartabat. Kamu adalah tipe orang yang bisa meminta maaf dengan ramah (潔い謝り), bersikap bermartabat (潔い態度), atau bahkan mati dengan terhormat (潔く死ぬ).

潔い adalah tentang menjadi kuat dan melakukan hal yang benar tanpa ragu-ragu, terutama ketika itu sulit. Misalnya, ketika seseorang mengakui kesalahannya dengan jujur ​​atau menangani situasi sulit dengan berani, Anda dapat mengatakan bahwa dia 潔い. Ini adalah cara untuk memuji seseorang karena bersikap terus terang dan mengagumkan di masa-masa sulit.', 'Ya ampun, bacaannya... seperti... gila. Bagian pertama bisa seperti <reading>i</reading>itu <reading>basah</reading> (いさぎ)... lalu bagian kedua seperti kata 良い (bagus). Jadi, bayangkanlah seseorang yang <vocabulary>terhormat</vocabulary>makan sereal basah. Mereka begitu ramah sehingga tidak masalah bagi mereka betapa basahnya air itu. Nyatanya, mereka menerimanya dengan bermartabat! Mereka terus berkata, "Ini basah... 良い!" berulang-ulang sambil memakan makanan yang sangat basah itu.', 'Terhormat, Bermartabat, Ramah')
    RETURNING id INTO v_5171_terhormat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '不潔', 'kotor', 28, 116, '<kanji>Tidak</kanji> <kanji>bersih</kanji> sesuatu adalah <vocabulary>kotor</vocabulary> dan <vocabulary>kotor</vocabulary>. Ewughh.

不潔 adalah kata yang relatif formal yang mengacu pada kondisi <vocabulary>tidak sehat</vocabulary> dalam kebersihan pribadi, kesehatan masyarakat, atau lingkungan medis. Hal ini dapat merujuk pada lingkungan yang kotor dan praktik kebersihan yang buruk. Dalam sastra, 不潔 juga dapat menggambarkan sesuatu yang kotor secara moral untuk menimbulkan rasa jijik, meskipun penggunaan ini agak kuno.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kotor, Kotor, Tidak sehat')
    RETURNING id INTO v_5172_kotor;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '独り言', 'berbicara-pada-diri-sendiri', 28, 117, 'Ingat bagaimana 独り berarti "sendirian"? Nah, jika seseorang sendirian dan <kanji>mengatakan</kanji> sesuatu dengan keras, itu termasuk <vocabulary>berbicara kepada diri sendiri</vocabulary>.

独り言 berarti berbicara atau bergumam sendiri dengan suara keras, baik sendirian maupun di depan umum. Itu juga bisa merujuk pada kata-kata itu sendiri — hal-hal yang Anda katakan saat berbicara kepada diri sendiri.', 'Pembacaan 独り hanyalah pembacaan 独り. Namun, pembacaan 言 merupakan pengecualian. Itu ごと, yang berasal dari こと. Bayangkan saja saat Anda berbicara pada diri sendiri, Anda berulang kali mengatakan pada diri sendiri untuk <reading>pergi</reading> neraka. Kamu jahat pada dirimu sendiri, dan kamu juga gila, itulah sebabnya kamu terus-terusan mengatakan hal itu kepada siapa pun kecuali dirimu sendiri.', 'Berbicara Pada Diri Sendiri, Bergumam Pada Diri Sendiri')
    RETURNING id INTO v_5173_berbicara_pada_diri_sendiri;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '利益', 'laba', 28, 118, '<kanji>Keuntungan</kanji> dan <kanji>manfaat</kanji> secara harafiah berarti <vocabulary>keuntungan</vocabulary>dan <vocabulary>manfaat</vocabulary>. Sama seperti kata “profit” dalam bahasa Inggris, kata ini sering digunakan untuk merujuk pada keuntungan finansial, namun bisa juga digunakan untuk keuntungan non-finansial.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Laba, Keuntungan')
    RETURNING id INTO v_5174_laba;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '有益', 'bermanfaat', 28, 119, '<kanji>memiliki</kanji> <kanji>manfaat</kanji> berarti menjadi <vocabulary>bermanfaat</vocabulary>.

有益 adalah kata yang lebih formal daripada 役に立つ (berguna). Ini sering digunakan untuk hal-hal seperti 有益なアドバイス (nasihat yang bermanfaat) atau 有益な情報 (informasi berguna).', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Bermanfaat, Berguna')
    RETURNING id INTO v_5175_bermanfaat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '公益', 'kepentingan-umum', 28, 120, 'Sesuatu untuk <kanji>kepentingan</kanji> <kanji>umum</kanji> adalah untuk <vocabulary>kepentingan umum</vocabulary> atau <vocabulary>kepentingan umum</vocabulary>.

公益 adalah kata formal yang digunakan untuk menggambarkan kegiatan atau organisasi yang mempunyai dampak positif terhadap masyarakat atau masyarakat umum.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kepentingan Umum, Kepentingan umum')
    RETURNING id INTO v_5176_kepentingan_umum;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '国益', 'kepentingan-nasional', 28, 121, '<kanji>Negara</kanji> akan <kanji>mendapatkan manfaat</kanji> dari tindakan ini. Hal ini akan menciptakan <vocabulary>keuntungan nasional</vocabulary> atau <vocabulary>kepentingan nasional</vocabulary>.

国益 adalah kata yang sering ditemukan dalam tulisan formal politik, diplomatik, dan ekonomi.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kepentingan Nasional, Manfaat Nasional')
    RETURNING id INTO v_5177_kepentingan_nasional;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '移す', 'untuk-bergeser', 28, 122, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>bergeser</kanji> sehingga versi kosakata kata kerjanya adalah <vocabulary>to shift</vocabulary>.', 'Semua dubstep (<reading>うつ</reading>うつうつうつうつ) yang diputar di lantai bawah menyebabkan semua peralatan gelas Anda <vocabulary>bergeser</vocabulary> dari rak dan jatuh ke lantai. Sialan dubstep itu. うつうつうつうつうつ♪', 'Untuk Bergeser, Untuk Mentransfer')
    RETURNING id INTO v_5178_untuk_bergeser;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '移民', 'imigrasi', 28, 123, 'Saat Anda <kanji>bergeser</kanji>dari <kanji>orang</kanji>, Anda menyebabkan <vocabulary>imigrasi</vocabulary> atau <vocabulary>emigrasi</vocabulary>, yang mengarah pada… <vocabulary>imigran</vocabulary>, atau <vocabulary>emigran</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Imigrasi, Emigrasi, Imigran, Emigran')
    RETURNING id INTO v_5179_imigrasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '移住', 'migrasi', 28, 124, 'Jika Anda <kanji>bergeser</kanji> tempat Anda <kanji>tinggal</kanji>, itu disebut <vocabulary>migrasi</vocabulary>.

移住 adalah kata yang relatif formal untuk tindakan pindah ke tempat tinggal baru, seringkali dalam arti jangka panjang atau permanen. Kata ini bisa berarti pindah ke kota baru, atau bisa juga merujuk pada <vocabulary>imigrasi</vocabulary> atau <vocabulary>emigrasi</vocabulary> ke negara lain.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Migrasi, Imigrasi, Emigrasi')
    RETURNING id INTO v_5180_migrasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '程', 'cakupan', 28, 125, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.

Anda akan melihat 程 digunakan dalam berbagai cara untuk mengekspresikan <vocabulary>luasan</vocabulary> atau derajat sesuatu, seperti 思った程じゃない (tidak sebanyak yang saya harapkan), 言葉で表せない程すごい (sangat menakjubkan sehingga tidak bisa diungkapkan dengan kata-kata), atau 30分程歩く (berjalan sekitar tiga puluh menit). Perlu diingat kata ini sering ditulis dalam huruf kana.', 'Anda akan mengingat kanji ini <vocabulary>sejauh</vocabulary> Anda mempelajarinya. Jika Anda mempelajarinya seperti <reading>Hodo</reading>r (ほど) mempelajarinya, Anda tidak akan mempelajarinya sama sekali. Anda hanya bisa mengucapkan "hodor, hodor" berulang-ulang, dan itu tidak membantu sama sekali.', 'Cakupan, Suatu Batas')
    RETURNING id INTO v_5182_cakupan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '程度', 'derajat', 28, 126, '<kanji>tingkat</kanji> <kanji>derajat</kanji> adalah <vocabulary>derajat</vocabulary> atau <vocabulary>luas</vocabulary> Anda bersedia mengambil sesuatu.

程度 juga bisa menunjukkan perkiraan tingkat <kosakata></kosakata>, seperti 一時間程度 (selama sekitar satu jam) atau この程度 (sampai sejauh ini). Untuk memahami kegunaan yang berbeda, lihat bagian konteks.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Derajat, Cakupan, Tingkat')
    RETURNING id INTO v_5183_derajat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '過程', 'proses', 28, 127, '<kanji>Melampaui</kanji> <kanji>batas</kanji>... oke, apa maksudnya? Anda mengetahui sejauh mana kemampuan Anda, dan kemudian Anda melampauinya untuk menjadi lebih baik. Hal ini harus Anda lakukan berulang kali agar bisa terus menjadi lebih baik. Itu adalah <vocabulary>proses</vocabulary> yang harus dicapai jika Anda ingin menjadi lebih baik dari sekarang.

過程 sering digunakan untuk menggambarkan kemajuan yang sedang berlangsung, seperti 生産過程 (proses produksi), tetapi juga dapat digunakan untuk berbicara tentang bagaimana sesuatu berkembang. Misalnya, Anda mungkin merenungkan tujuan yang mengarah pada pekerjaan Anda saat ini, atau menjelaskan langkah-langkah yang diikuti tim untuk menyelesaikan sebuah proyek.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Proses, Sebuah Proses')
    RETURNING id INTO v_5184_proses;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '日程', 'jadwal', 28, 128, '<kanji>hari</kanji> <kanji>luasnya</kanji> adalah kita akan melakukan ini, ini, dan ini. Itu adalah <vocabulary>jadwal</vocabulary> atau <vocabulary>itinerary</vocabulary> kami, jadi patuhi itu.

日程 adalah kata yang relatif formal yang digunakan untuk membicarakan jadwal acara, pertemuan, atau aktivitas tertentu.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Jadwal, Rencana perjalanan')
    RETURNING id INTO v_5185_jadwal;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '幼稚', 'kekanak-kanakan', 28, 129, 'Dia yang masih dalam <kanji>masa kanak-kanak</kanji> dan <kanji>belum dewasa</kanji> mungkin adalah <vocabulary>kekanak-kanakan</vocabulary> dan <vocabulary>belum dewasa</vocabulary>.

Ketika digunakan sebagai kata sifat, 幼稚 menggambarkan ketidakdewasaan negatif dalam perilaku, ucapan, atau gagasan seseorang. Namun, dalam kata majemuk seperti 幼稚園 (taman kanak-kanak), ini hanya mengacu pada tahap anak usia dini tanpa nada negatif.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kekanak-kanakan, Belum dewasa')
    RETURNING id INTO v_5186_kekanak_kanakan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '精神', 'roh', 28, 130, '<kanji>spirit</kanji> <kanji>spirit</kanji> Anda adalah… <vocabulary>spirit</vocabulary> Anda. Kata ini ditujukan untuk <kosakata>pikiran</vocabulary> manusia dan dapat merujuk pada kondisi mental, pemikiran, sikap, pola pikir, atau bahkan kemauan Anda. 

Tergantung konteksnya, 精神 juga bisa berarti "semangat" seperti pada hakikat atau prinsip inti dari sesuatu, seperti 独立の精神 (semangat kemandirian).', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Roh, Pikiran')
    RETURNING id INTO v_5187_roh;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '精度', 'presisi', 28, 131, '<kanji>derajat</kanji> fokus <kanji>semangat</kanji> Anda inilah yang membantu Anda mengasah <vocabulary>presisi</vocabulary> dan <vocabulary>akurasi</vocabulary> Anda, karena alasan tertentu. Bayangkan saja diri Anda sedang melempar bola. Anda meleset dari sasaran. Hmm, oke... waktunya bertenaga seperti di Dragonball. Tingkatkan energi roh itu. Naikkan derajatnya. Ledakan. Luar biasa. Sekarang lempar lagi. Memukul! Anda berhasil! Betapa presisi luar biasa yang telah Anda peroleh dengan mengasah semangat Anda!

精度 adalah kata yang relatif formal, sering digunakan untuk berbicara tentang ketepatan atau keakuratan sesuatu dalam konteks teknis atau analitis.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Presisi, Ketepatan')
    RETURNING id INTO v_5188_presisi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '絶つ', 'untuk-memutuskan-kontak', 28, 132, 'Kanji berarti <kanji>kepunahan</kanji> atau <kanji>mati</kanji>, namun versi kata kerja di sini berarti <vocabulary>meputuskan kontak</vocabulary>, <vocabulary>memutus</vocabulary>, atau <vocabulary>mengakhiri</vocabulary>. Coba pikirkan bagaimana ketika Anda memutuskan kontak dengan seseorang, pada dasarnya Anda membuat mereka punah atau hilang sama sekali dari hidup Anda. Ini benar-benar pesangon, mereka pada dasarnya tidak ada lagi bagi Anda.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Dalam hal <vocabulary>yang perlu Anda putuskan</vocabulary>, <reading>ta</reading>cos (た) adalah #1 dalam daftar Anda. Tidak ada lagi taco untukmu, aku akan menghilangkannya dari dietku.', 'Untuk Memutuskan Kontak, Ke Parah, Untuk Mengakhiri')
    RETURNING id INTO v_5190_untuk_memutuskan_kontak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', 'お菓子屋', 'toko-permen', 28, 133, 'お菓子 adalah "permen", bukan? Tambahkan <kanji>toko</kanji> ke dalamnya dan Anda memiliki <vocabulary>toko permen</vocabulary>.', 'Kata ini menggunakan bacaan yang Anda pelajari dengan kanji. Mengetahui kata お菓子 juga akan membantu.', 'Toko Permen')
    RETURNING id INTO v_5192_toko_permen;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '大衆', 'masyarakat-umum', 28, 134, 'Tempat <kanji>besar</kanji> <kanji>padat</kanji> terdengar seperti tempat dengan banyak orang tetapi lebih seperti sebagian besar penduduknya. Tentu saja, ini adalah sebagian besar masyarakat, menjadikannya <vocabulary>masyarakat umum</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Masyarakat umum')
    RETURNING id INTO v_5193_masyarakat_umum;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '衆議院', 'dewan-perwakilan-rakyat', 28, 135, 'Ini adalah <kanji>lembaga</kanji> yang melakukan <kanji>musyawarah</kanji> atas nama <kanji>rakyat</kanji>. Mereka mewakili rakyat. Mereka adalah <vocabulary>dewan perwakilan</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Dewan Perwakilan Rakyat')
    RETURNING id INTO v_5194_dewan_perwakilan_rakyat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '貯金箱', 'kotak-tabungan', 28, 136, 'Ingat bagaimana 貯金 berarti "tabungan"? Nah, <kanji>kotak</kanji> tempat Anda menyimpan tabungan tersebut adalah <vocabulary>kotak tabungan</vocabulary>, atau <vocabulary>celengan</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kotak Tabungan, Keruntung')
    RETURNING id INTO v_5195_kotak_tabungan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '比較的', 'relatif', 28, 137, '比較 adalah perbandingan. Tambahkan 的 ke dalamnya dan Anda memiliki <vocabulary> secara komparatif</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Akan membantu jika Anda mengetahui kata 比較.', 'Relatif, Relatif')
    RETURNING id INTO v_5196_relatif;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '逆', 'balik', 28, 138, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.

Ingatlah bahwa 逆 sering kali menyiratkan bahwa sesuatu adalah <vocabulary>kebalikan</vocabulary> atau <vocabulary>kebalikan</vocabulary> dari apa yang seharusnya. Misalnya, Anda menggunakan 逆 ketika Anda pergi ke arah yang berlawanan dengan tujuan Anda atau mengenakan baju terbalik.', 'Pembacaannya juga sama dengan apa yang Anda pelajari dengan kanji. Beruntung! <kanji>Membalikkan</kanji> waktu tatap muka!', 'Balik, Di depan')
    RETURNING id INTO v_5198_balik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '逆効果', 'efek-berlawanan', 28, 139, '効果 berarti "efek", jadi <kanji>kebalikan</kanji> dari efek tersebut adalah <vocabulary>efek kebalikan</vocabulary>. Atau dengan istilah lain, sesuatu yang <vocabulary>kontraproduktif</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Akan membantu untuk mengetahui 効果 juga.', 'Efek Berlawanan, Kontraproduktif')
    RETURNING id INTO v_5199_efek_berlawanan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '逆らう', 'untuk-melawan', 28, 140, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi <ja>う</ja>, Anda tahu bahwa kata tersebut adalah kata kerja. Kanji itu sendiri berarti <kanji>berlawanan</kanji>, jadi versi kata kerjanya adalah <vocabulary>melawan</vocabulary> atau <vocabulary>menentang</vocabulary>.

逆らう mengacu pada melawan kekuatan alam atau sosial, seperti 逆らって進む (melawan arus), atau melawan orang tertentu, seperti 親に逆らう (menentang orang tua). Artinya secara aktif menolak sesuatu, baik itu suatu aliran, tren, atau otoritas, menyoroti pilihan sadar untuk mengambil jalan yang berbeda.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Sama seperti saat Anda bermain <reading>sepak bola</reading> (さか). Anda tidak pernah bermain dengan benar, sehingga menyebabkan Anda <vocabulary>melanggar</vocabulary> semua hal yang seharusnya Anda lakukan dan mencetak gol ke gawang Anda sendiri.', 'Untuk Melawan, Untuk Menentang, Bertentangan dengan')
    RETURNING id INTO v_5200_untuk_melawan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '逆説', 'paradoks', 28, 141, 'Ini adalah <kanji>kebalikan</kanji> dari <kanji>teori</kanji>! Apa yang sedang terjadi? Ada yang tidak beres. Pasti ada semacam <vocabulary>paradox</vocabulary> yang terjadi, di mana semua teori dibalik! D:

逆説 adalah kata yang cukup formal untuk paradoks yang sebenarnya, dan untuk pernyataan yang tampak paradoks namun mengandung wawasan yang lebih dalam. Anda akan sering melihatnya dalam filsafat, sastra, atau diskusi yang bijaksana.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Paradoks, Pernyataan yang Berlawanan dengan Intuitif')
    RETURNING id INTO v_5201_paradoks;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '大間違い', 'kesalahan-besar', 28, 142, 'Sebuah 間違い adalah sebuah kesalahan. <kanji>besar</kanji> <kanji>kesalahan</kanji> adalah <vocabulary>kesalahan besar</vocabulary>.

大間違い bukan tentang kesalahan faktual dan lebih banyak tentang seseorang yang salah dalam asumsi atau ekspektasinya. Hal ini menunjukkan bahwa segala sesuatunya tidak berjalan sesuai rencana - seperti Anda berasumsi bahwa senyuman akan memperbaiki segalanya atau mengharapkan kencan berjalan baik, namun ternyata segalanya menjadi salah.', 'Bacaannya 大 dan 間違い dirangkai menjadi satu kata yang tidak salah.', 'Kesalahan Besar')
    RETURNING id INTO v_5202_kesalahan_besar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '郵便局', 'kantor-pos', 28, 143, 'Dengan 郵便 menjadi <kanji>surat</kanji> dan 局 menjadi biro, kita mempunyai "biro surat". Mereka lebih sering dikenal sebagai <vocabulary>kantor pos</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Akan membantu untuk mengetahui kata 郵便 juga.', 'Kantor Pos')
    RETURNING id INTO v_5203_kantor_pos;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '郵便番号', 'nomor-pos', 28, 144, 'Anda tahu bahwa 郵便 adalah <kanji>mail</kanji> dan 番号 adalah <kanji>angka</kanji>. Jadi "nomor surat", apa itu? Biasanya mengacu pada <vocabulary>nomor kiriman</vocabulary> atau <vocabulary>kode pos</vocabulary> Anda. Ia juga sering disebut dengan simbol 〒, jadi berhati-hatilah.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Nomor Pos, Kode Pos, Kode pos, Kode pos')
    RETURNING id INTO v_5204_nomor_pos;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '郵便箱', 'kotak-pos', 28, 145, '郵便 adalah "surat". <kanji>kotak</kanji> yang digunakan dengan surat tersebut adalah <vocabulary>kotak pos</vocabulary>.

郵便箱 digunakan untuk merujuk secara khusus pada <vocabulary>kotak koleksi</vocabulary> publik tempat Anda menitipkan email untuk dikirim. Namun sekarang, beberapa orang juga menggunakannya untuk <vocabulary>kotak surat</vocabulary> di rumah mereka! Jangan khawatir — Anda biasanya dapat membedakan mana yang mana dari konteksnya.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kotak pos, Kotak Koleksi, Kotak surat')
    RETURNING id INTO v_5205_kotak_pos;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '録音', 'rekaman-suara', 28, 146, '<kanji>rekaman</kanji> dari <kanji>suara</kanji> adalah semacam <vocabulary>rekaman suara</vocabulary>. Mungkin minidisk, mungkin CD, mungkin digital. Apapun itu, itu tetap rekaman suara.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Rekaman Suara, Rekaman Audio')
    RETURNING id INTO v_5206_rekaman_suara;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '登録', 'pendaftaran', 28, 147, '<kanji>Naik</kanji> dan <kanji>catat</kanji> informasi Anda di sini. Ini adalah <vocabulary>pendaftaran</vocabulary>. Sulit untuk mendaftarkan diri Anda (dari pendakian) dan bahkan jika nama Anda tercatat di sana, Anda mungkin tidak bisa masuk. Jadi catat informasi Anda, tunggu, dan berharap Anda bisa masuk.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Pendaftaran')
    RETURNING id INTO v_5207_pendaftaran;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '記録', 'catatan', 28, 148, '<kanji>Tulis</kanji> <kanji>catatan</kanji> kejadian tersebut agar kami memiliki <vocabulary>catatan</vocabulary>. Tidak ingin orang-orang melupakan peristiwa penting ini, ketika Raja Felix mendapatkan permainan sempurnanya.

記録 mengacu pada tindakan mencatat sesuatu atau mencatat itu sendiri. Sama seperti "rekor" dalam bahasa Inggris, kata ini juga dapat merujuk pada performa terbaik atau peristiwa paling luar biasa dari jenisnya yang telah diukur dan dicatat secara resmi, seperti rekor lapangan bisbol tercepat.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Catatan, Dokumen')
    RETURNING id INTO v_5208_catatan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '軍隊', 'tentara', 28, 149, '<kanji>tentara</kanji> <kanji>pasukan</kanji> adalah <vocabulary>pasukan</vocabulary>. Itu juga hanya <vocabulary>tentara</vocabulary>. Kata ini lebih mengacu pada "tentara" daripada "tentara". Hanya sekelompok orang yang melakukan urusan militer.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Tentara, Sebuah Tentara')
    RETURNING id INTO v_5209_tentara;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '隊', 'pasukan', 28, 150, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.

隊 umumnya digunakan sebagai sufiks untuk merujuk pada kelompok atau unit terorganisir, sering kali merupakan kelompok yang bekerja sama untuk mencapai sasaran atau tujuan tertentu, seperti レスキュー隊 (pasukan</vocabulary> penyelamat), 軍の部隊 (unit <vocabulary></vocabulary> militer), atau 登山隊(tim <vocabulary>pendakian gunung</vocabulary>)!', 'Pembacaannya sama dengan pembacaan kanji yang Anda pelajari, mungkin karena ini melekat pada sesuatu, menggambarkan berbagai regu.', 'Pasukan, Satuan, Tim')
    RETURNING id INTO v_5210_pasukan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '兵隊', 'tentara', 28, 151, '<kanji>prajurit</kanji> dalam <kanji>pasukan</kanji> adalah <vocabulary>prajurit</vocabulary> atau <vocabulary>sailor</vocabulary> yang sesungguhnya, tidak seperti "prajurit" yang tidak tergabung dalam regu. Mereka tidak punya pekerjaan, dan tidak bisa disebut tentara sungguhan.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Tentara, Pelaut')
    RETURNING id INTO v_5211_tentara;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '入隊', 'pendaftaran', 28, 152, '<kanji>Masuk</kanji>ke dalam <kanji>pasukan</kanji> disebut <vocabulary>wajib militer</vocabulary>!

入隊 bisa merujuk pada <vocabulary>wajib militer</vocabulary>ing di grup mana pun yang diakhiri dengan 隊 (pasukan), seperti 軍隊 (militer) atau 音楽隊 (marching band). Ini memang kegunaan yang paling umum.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Pendaftaran, Mendapatkan')
    RETURNING id INTO v_5212_pendaftaran;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '痛む', 'untuk-sakit', 28, 153, 'Ingat bagaimana <ja>痛い</ja> itu "menyakitkan"? Ini adalah versi kata kerjanya, jadi artinya <vocabulary>sakit</vocabulary>, <vocabulary>menyakiti</vocabulary>, atau <vocabulary>menjadi kesakitan</vocabulary>.

痛む adalah kata kerja intransitif yang menunjukkan sensasi nyeri atau nyeri yang berkelanjutan. Kata ini sedikit lebih deskriptif daripada 痛い, jadi Anda mungkin melihatnya digunakan secara tertulis atau untuk menggambarkan kondisi yang lebih persisten atau berulang. Kata ini juga sering digunakan secara kiasan, terutama dalam ekspresi seperti 心が痛む (hatiku sakit).', 'Kata ini menggunakan bacaan kun''yomi yang sudah kamu pelajari!', 'Untuk sakit, Untuk Menyakiti, Menjadi Sakit')
    RETURNING id INTO v_5262_untuk_sakit;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '睡眠薬', 'pil-tidur', 28, 154, '<kanji>Mengantuk</kanji> <kanji>tidur</kanji> <kanji>obat</kanji> terdengar agak konyol, tapi itulah yang Anda harapkan: <vocabulary>obat tidur</vocabulary> atau <vocabulary>obat tidur</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Pil tidur, Obat Tidur')
    RETURNING id INTO v_5265_pil_tidur;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '誘惑する', 'untuk-merayu', 28, 155, 'Jika 誘惑 adalah rayuan atau godaan, maka versi kata kerjanya adalah <vocabulary>to seduce</vocabulary> atau <vocabulary>to tempa</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Akan membantu untuk mengetahui kata 誘惑 terlebih dahulu.', 'Untuk merayu, Untuk menggoda')
    RETURNING id INTO v_5284_untuk_merayu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '輸入する', 'untuk-mengimpor', 28, 156, '輸入 adalah <kanji>impor</kanji>. Sekarang mari kita menjadikannya kata kerja. <vocabulary>Untuk mengimpor</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Akan membantu untuk mengetahui kata 輸入 juga.', 'Untuk Mengimpor')
    RETURNING id INTO v_5388_untuk_mengimpor;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '我々', 'kami', 28, 157, '我 adalah aku, jadi aku berdua menjadi <vocabulary>kita</vocabulary>! Atau <vocabulary>kita</vocabulary>!

Anda telah mengetahui bahwa 我 adalah kata ganti kuno. 我々 serupa karena terasa formal dan berwibawa. Artinya, kata ini sering digunakan dalam situasi yang memerlukan perwakilan resmi, seperti pernyataan perusahaan, pertemuan bisnis, atau pidato politik. Lihat kalimat konteks kami untuk beberapa contoh!', 'Pembacaannya adalah 我, dua kali.', 'Kami, Kita')
    RETURNING id INTO v_5390_kami;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '直接的', 'secara-langsung', 28, 158, '直接 berarti "langsung". Tambahkan 的 ke dalam campuran dan Anda memiliki <vocabulary>secara langsung</vocabulary>.

Ini adalah kata yang relatif formal, jadi Anda akan menemukan kata lain seperti ダイレクト dalam konteks yang lebih santai.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Akan membantu jika Anda sudah mengetahuinya.', 'Secara langsung, Langsung')
    RETURNING id INTO v_5392_secara_langsung;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '綺麗', 'cantik', 28, 159, 'Hal-hal yang <kanji>indah</kanji> dan <kanji>indah</kanji> sangatlah <vocabulary>indah</vocabulary>, <vocabulary>cantik</vocabulary>, dan sering kali <vocabulary>bersih</vocabulary> juga. Anda dapat memanggil seseorang 綺麗. Anda juga dapat menyebutkan betapa bersihnya sesuatu dengan 綺麗. Saya kira, memberi Anda wawasan tentang apa itu "keindahan" di Jepang. Mandilah, teman-teman.

Ingin tahu apa perbedaan antara 綺麗 dan 美しい? 美しい lebih dramatis, sehingga menyiratkan bahwa Anda benar-benar terpesona oleh keindahan sesuatu (atau seseorang). 綺麗, di sisi lain, adalah kata sehari-hari yang mencakup segala sesuatu yang indah, cantik, atau bahkan sekadar bersih. Dengan kata lain, standarnya sedikit lebih rendah untuk 綺麗!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Cantik, Cantik, Membersihkan')
    RETURNING id INTO v_5502_cantik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '降る', 'jatuh', 28, 160, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>turun</kanji>, namun kata ini berarti sesuatu yang mendekati <vocabulary>jatuh</vocabulary> atau <vocabulary>turun</vocabulary>.

降る umumnya digunakan ketika berbicara tentang cuaca, seperti 雨が降る (hujan) atau 雪が降る (salju turun). Hal ini juga berlaku untuk benda lain yang jatuh dari atas, seperti 火山灰が降る (jatuh abu vulkanik) atau bahkan secara kiasan, seperti dalam 幸運が降ってくる (semoga sukses menghampiri).', 'Hujan <vocabulary>akan turun</vocabulary> dan Anda tetap berada di luar dengan mulut terbuka sehingga mulut Anda <reading>penuh</reading> (ふる) berisi air hujan! Semua kolam, sumur, dan pekarangan Anda juga akan penuh air!', 'Jatuh, Untuk Turun')
    RETURNING id INTO v_5751_jatuh;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '垂れる', 'untuk-terkulai', 28, 161, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>terkulai</kanji>, jadi versi kosakata kata kerjanya berarti <vocabulary>terkulai</vocabulary>, <vocabulary>menggantung</vocabulary> atau <vocabulary>menetes</vocabulary>. Jadi, Anda dapat menggunakan 垂れる untuk mendeskripsikan telinga anjing Anda yang terkulai ke bawah atau lelehan es krim Anda yang menetes.

垂れる pada umumnya bersifat intransitif, namun bisa juga menggunakan objek langsung dalam ekspresi tertentu, seperti 説教を垂れる (memberikan ceramah), こうべを垂れる (menundukkan kepala dengan rendah hati), atau bahasa gaul kasar クソを垂れる (menjatuhkan sebuah beban).', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda:

Perut Anda mungkin akan mulai <vocabulary>mengendur</vocabulary> setelah makan besar <reading>ta</reading>cos (た). Tidak ada yang membuat Anda kenyang dan membuat perut Anda terkulai di pinggang seperti taco - terutama jika Anda memakannya dengan cara yang benar dan melahapnya sampai Anda akan meledak.', 'Untuk terkulai, Untuk Menggantung, Menetes')
    RETURNING id INTO v_5839_untuk_terkulai;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '沼', 'rawa', 28, 162, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.

Perhatikan bahwa, tidak seperti bahasa Inggris, yang membedakan berbagai jenis lahan basah seperti rawa, rawa, atau rawa, bahasa Jepang 沼 mengacu pada area seperti kolam dengan air berlumpur dan keruh.', 'Bacaannya adalah yang Anda pelajari dengan kanji, ぬま.', 'Rawa, Rawa')
    RETURNING id INTO v_6734_rawa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '沼地', 'tanah-rawa', 28, 163, 'Tempat <kanji>rawa</kanji> <kanji>bumi</kanji> adalah tempat yang buminya berawa. Itu adalah <vocabulary>rawa</vocabulary> atau <vocabulary>wetland</vocabulary>.', 'Bacaannya adalah yang Anda pelajari dengan kanji masing-masing.', 'Tanah rawa, lahan basah, Daerah rawa')
    RETURNING id INTO v_6736_tanah_rawa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '進撃', 'maju', 28, 164, 'Anda <kanji>maju</kanji> dan <kanji>menyerang</kanji>! Ini adalah <vocabulary>biaya</vocabulary> pada seseorang atau sesuatu, meski bisa juga menjadi <vocabulary>maju</vocabulary> pada mereka. Yap, ini adalah 進撃 dari 進撃の巨人, anime dan manga populer. Jangan bilang Anda tidak pernah mempelajari sesuatu yang berguna di sini.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji. Maju! Mengenakan biaya! Pindah ke item berikutnya!', 'Maju, Mengenakan biaya')
    RETURNING id INTO v_7468_maju;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '従兄弟', 'sepupu', 28, 165, 'Ingat bagaimana 兄弟 berarti "saudara kandung?" Nah, jika mereka bersaudara, Anda harus <kanji>menaati</kanji> bahwa mereka bukan saudara laki-laki atau perempuan Anda, mereka adalah <vocabulary>sepupu</vocabulary> Anda.', 'Seluruh bacaan untuk ini merupakan pengecualian. Maaf tentang itu. Berikut ini mnemonik untuk membantu Anda:

Apa dua ciri khas yang dimiliki sepupu Anda? Mereka baik dan masih anak-anak. いいと子, atau disingkat <reading>いとこ</reading>. Ingatlah kebaikanmu, sepupu kecil. Sepupu いとこmu.', 'Sepupu, Sepupu Laki-Laki')
    RETURNING id INTO v_7717_sepupu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '憧れ', 'kerinduan', 28, 166, 'Jika Anda <kanji>merindukan</kanji> sesuatu, Anda akan merasakan <vocabulary>kerinduan</vocabulary> dan <vocabulary>kerinduan</vocabulary>. Jangan khawatir, suatu hari nanti kamu akan mendapatkan apa pun itu. 

憧れ juga dapat menggambarkan perasaan <vocabulary>kekaguman</vocabulary> yang kuat, khususnya terhadap orang lain.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda sudah mempelajari bacaan ini jadi Anda harus bisa membacanya!', 'Kerinduan, Kerinduan, Kekaguman')
    RETURNING id INTO v_8540_kerinduan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '浜辺', 'pantai', 28, 167, '<kanji>pantai</kanji> <kanji>area</kanji> hanyalah sebuah <vocabulary>pantai</vocabulary>!', 'Bacaan kata ini sama-sama bacaan kun''yomi. Anda belum mempelajari bacaan ini untuk 辺, jadi inilah mnemonik untuk membantu Anda:

<vocabulary>Pantai</vocabulary> dimulai dengan <reading>menjadi</reading>. Menjadi adalah べ! (Maksudku, pengucapannya berbeda, tapi ejaannya sama!) Saat memikirkan pantai, pikirkan べ!', 'Pantai')
    RETURNING id INTO v_8683_pantai;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '何故なら', 'karena', 28, 168, 'Ini seperti mengatakan "jika menyangkut 何故", yang berarti Anda memberikan alasan, membuat <vocabulary>karena</vocabulary> atau <vocabulary>alasannya adalah</vocabulary>, diikuti dengan… apa pun yang ingin Anda katakan! 

Perhatikan bahwa ini adalah cara yang cukup formal untuk mengatakan "karena", jadi Anda sering kali menemukannya dalam tulisan atau pidato formal, dan hampir selalu di awal kalimat dalam bahasa Jepang.', 'Bacaan ini merupakan pengecualian tetapi Anda sudah mempelajarinya karena sama dengan kata 何故, yang Anda pelajari beberapa level yang lalu. Itu hanya memiliki beberapa kana yang melekat padanya!', 'Karena, Alasannya adalah')
    RETURNING id INTO v_8719_karena;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '間違える', 'untuk-membuat-kesalahan', 28, 169, 'Ingat bagaimana 間違い berarti "kesalahan?" Nah ini adalah versi kata kerjanya. Artinya <vocabulary>melakukan kesalahan</vocabulary> atau <vocabulary>melakukan kesalahan</vocabulary>.

Kata kerja ini bersifat transitif. Artinya dibutuhkan objek langsung. Ingatlah bahwa yang satu ini agak rumit, karena meskipun dalam bahasa Jepang bersifat transitif, terjemahan bahasa Inggrisnya terkadang bersifat intransitif.', 'Bacaannya sama dengan 間違い! Bagus dan mudah!', 'Untuk Membuat Kesalahan, Salah')
    RETURNING id INTO v_8757_untuk_membuat_kesalahan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '移動', 'pergerakan', 28, 170, '<kanji>Shift</kanji> dan <kanji>move</kanji> untuk membuat <vocabulary>gerakan</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Pergerakan, Transfer, Pemindahan, Migrasi')
    RETURNING id INTO v_8758_pergerakan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '解凍', 'pencairan', 28, 171, 'Jika Anda <kanji>melepaskan</kanji> sesuatu yang <kanji>membekukan</kanji>, Anda <vocabulary>mencairkan</vocabulary> itu. Cara terbaik untuk <vocabulary>mencairkan</vocabulary> apa pun adalah dengan melepaskan ikatannya terlebih dahulu.

Dalam konteks file komputer, kata ini juga bisa berarti <vocabulary>unzip</vocabulary>. Kami mengekstrak file dalam bahasa Inggris, tetapi dalam bahasa Jepang kami mencairkannya!', 'Ini adalah kata jukugo yang menggunakan on''yomi untuk kedua kanjinya, jadi Anda harus bisa membacanya sendiri.', 'Pencairan, Mencairkan es, Membuka ritsleting')
    RETURNING id INTO v_9075_pencairan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '揃う', 'menjadi-lengkap', 28, 172, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja.

Ini adalah kata kerja intransitif yang menggunakan kanji <kanji>lengkap</kanji>. Artinya <kosa kata>lengkap</vocabulary>. Ini juga dapat digunakan ketika Anda ingin <vocabulary>seragam</vocabulary>. Rasanya memuaskan jika semuanya lengkap dan seragam bukan?', 'Karena kata ini memiliki okurigana (hiragana yang melekat pada kanji), Anda tahu bahwa kemungkinan besar itu adalah bacaan kun''yomi. Kamu mempelajari bacaan kun''yomi saat mempelajari kanji, jadi kamu seharusnya bisa membaca ini!', 'Menjadi Lengkap, Menjadi Seragam')
    RETURNING id INTO v_9252_menjadi_lengkap;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '北極', 'kutub-utara', 28, 173, '<kanji>utara</kanji><kanji>ekstrim</kanji> dunia adalah <vocabulary>Kutub Utara</vocabulary>, alias <vocabulary>Arktik</vocabulary>. Tahukah Anda, kutub dengan beruang kutub.', 'Ini adalah kata jukugo yang menggunakan bacaan on''yomi untuk 北 (ほく) dan 極 (きょく). Jika kamu ingat bacaan tersebut, kamu hampir sampai — ingatlah perubahan ほく menjadi ほっ pada kata ini!', 'Kutub Utara, Arktik')
    RETURNING id INTO v_9359_kutub_utara;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '捻る', 'untuk-memutar', 28, 174, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>memutar</kanji>, jadi versi kata kerjanya adalah <vocabulary>to twist</vocabulary>.

捻る secara harafiah berarti "memutar", jadi Anda bisa menggunakannya untuk apa saja, mulai dari memutar gagang keran hingga memutar pergelangan kaki saat bermain sepak bola. Jika digabungkan dengan kata lain, kata ini juga dapat memiliki makna metaforis, seperti 頭を捻る (berpikir keras) dan 首を捻る (berpikir keras).', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda:

Kudamu kebetulan <vocabulary>memutar</vocabulary> pergelangan kakinya, dan <reading>dia meringkik (ひね) karena tidak nyaman. Jika itu kamu yang pergelangan kakimu terkilir, kamu mungkin akan berteriak atau melontarkan sumpah serapah atau semacamnya, tapi itu kudamu, jadi dia meringkik. Orang malang. Taruh es pada benda itu untuknya.

Perhatikan bahwa ini juga bisa dibaca sebagai ねじる, meskipun bacaan ini biasanya ditulis dalam kana. Meskipun ひねる mengacu pada gerakan memutar secara umum — seperti memutar atau menekuk ke samping — ねじる cenderung bernuansa memutar sesuatu beberapa kali, seperti tali atau kawat, sering kali dari kedua ujungnya.', 'Untuk Memutar, Untuk Berbelok, Terkilir')
    RETURNING id INTO v_9370_untuk_memutar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '夜更け', 'larut-malam', 28, 175, 'Kita mempunyai <kanji>malam</kanji> dan versi kata benda 更ける (terlambat). Gabungkan keduanya, dan Anda akan mendapatkan sebuah kata yang berarti <vocabulary>larut malam</vocabulary>, <vocabulary>tengah malam</vocabulary>, atau <vocabulary>larut malam</vocabulary>.', 'Kata ini menggunakan pembacaan kanji kun''yomi. Anda harus ingat kun''yomi 更 dari 更ける, tapi 夜 sedikit rumit karena menggunakan bacaan よ yang kurang umum. Anda mempelajari bacaan ini dengan 夜明け, tapi inilah mnemonik jika Anda memerlukan penyegaran:

Anda begadang <vocabulary>larut malam</vocabulary> lagi bermain dengan <reading>yo</reading>-yo (よ). Ada banyak sekali trik yo-yo yang ingin Anda kuasai, jadi mau tak mau Anda harus terus berlatih, melakukan yo-yo hingga <vocabulary>larut</vocabulary> setiap malam. Seseorang harus mengambil benda itu darimu agar kamu bisa tidur.', 'Larut Malam, Mati Malam, Saat larut')
    RETURNING id INTO v_9374_larut_malam;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2945_belum, 'Belum', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2945_belum, 'Tetap', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4189_untuk_mengenakan_sepatu, 'Untuk Mengenakan Sepatu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4189_untuk_mengenakan_sepatu, 'Untuk Mengenakan Celana', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4189_untuk_mengenakan_sepatu, 'Untuk Mengenakan Rok', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4666_kriteria, 'Kriteria', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4666_kriteria, 'Standar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4746_membatasi, 'Membatasi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4746_membatasi, 'Batas', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4786_tampilan_lengkap, 'Tampilan Lengkap', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4786_tampilan_lengkap, 'Tampilan Penuh', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4786_tampilan_lengkap, 'Pemandangan Panorama', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4786_tampilan_lengkap, 'Panorama', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4787_latar_depan, 'Latar depan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4887_lagi, 'Lagi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4887_lagi, 'Sekali lagi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4890_minggu_setelah_berikutnya, 'Minggu Setelah Berikutnya', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4890_minggu_setelah_berikutnya, 'Seminggu Setelah Berikutnya', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4933_karena_itu, 'Karena itu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4933_karena_itu, 'Akibatnya', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4989_kabel, 'Kabel', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5013_sangat_besar, 'Sangat besar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5013_sangat_besar, 'Raksasa', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5013_sangat_besar, 'Sangat besar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5014_raksasa, 'Raksasa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5014_raksasa, 'Raksasa', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5028_untuk_memanggil, 'Untuk Memanggil', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5028_untuk_memanggil, 'Untuk Mengundang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5028_untuk_memanggil, 'Untuk Menyebabkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5039_untuk_mencapai_puncak_sesuatu, 'Untuk Mencapai Puncak Sesuatu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5039_untuk_mencapai_puncak_sesuatu, 'Untuk Sempurna', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5039_untuk_mencapai_puncak_sesuatu, 'Untuk Mencapai Yang Ekstrim', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5092_untuk_mundur, 'Untuk Mundur', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5092_untuk_mundur, 'Untuk Menarik', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5092_untuk_mundur, 'Untuk Mengundurkan Diri', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5105_anak_panah, 'Anak panah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5105_anak_panah, 'Simbol Panah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5107_berdampingan, 'Berdampingan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5107_berdampingan, 'Paralel', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5108_secara_paralel, 'Secara paralel', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5108_secara_paralel, 'Mengikuti', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5108_secara_paralel, 'Bersamaan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5109_untuk_berbaris, 'Untuk Berbaris', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5109_untuk_berbaris, 'Untuk Berbaris', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5109_untuk_berbaris, 'Untuk Berdiri Dalam Antrean', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5109_untuk_berbaris, 'Menjadi Setara', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5110_biasa, 'Biasa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5110_biasa, 'Rata-rata', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5111_gelar_master, 'Gelar Master', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5112_memperbaiki, 'Memperbaiki', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5113_pelatihan, 'Pelatihan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5113_pelatihan, 'Berikan Pelatihan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5114_retorik, 'Retorik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5115_payung, 'Payung', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5116_tempat_payung, 'Tempat Payung', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5116_tempat_payung, 'Tempat Payung', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5119_anak_anak, 'Anak-anak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5119_anak_anak, 'Anak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5119_anak_anak, 'Anak sekolah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5120_balita, 'Balita', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5120_balita, 'Anak prasekolah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5121_dingin, 'Dingin', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5121_dingin, 'Dingin', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5121_dingin, 'Dingin Saat Disentuh', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5122_berkepala_dingin, 'Berkepala Dingin', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5122_berkepala_dingin, 'Tenang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5122_berkepala_dingin, 'Ketenangan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5123_freezer, 'Freezer', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5124_untuk_membekukan, 'Untuk Membekukan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5124_untuk_membekukan, 'Menjadi Beku', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5125_mati_kedinginan, 'Mati kedinginan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5126_pembekuan, 'Pembekuan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5126_pembekuan, 'Dapatkan Beku', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5127_menghadapi, 'Menghadapi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5127_menghadapi, 'Penanganan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5127_menghadapi, 'Pengolahan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5128_pembuangan, 'Pembuangan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5128_pembuangan, 'Hukuman', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5130_tiket, 'Tiket', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5130_tiket, 'Kupon', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5130_tiket, 'Lulus', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5131_paspor, 'Paspor', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5132_tiket_muka, 'Tiket Muka', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5132_tiket_muka, 'Tiket Dijual Di Muka', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5133_buku_tiket, 'Buku Tiket', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5133_buku_tiket, 'Tiket Kereta Api', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5135_kekuatan_kreatif, 'Kekuatan Kreatif', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5135_kekuatan_kreatif, 'Kreativitas', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5136_kreatif, 'Kreatif', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5137_museum, 'Museum', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5139_berjudi, 'Berjudi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5140_perbintangan, 'Perbintangan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5140_perbintangan, 'Horoskop', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5141_tidak_begitu_baik, 'Tidak begitu baik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5141_tidak_begitu_baik, 'Tidak terlalu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5141_tidak_begitu_baik, 'Halus', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5141_tidak_begitu_baik, 'Tak kentara', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5142_aneh, 'Aneh', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5142_aneh, 'Tidak biasa', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5142_aneh, 'Aneh', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5143_obat_ajaib, 'Obat Ajaib', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5143_obat_ajaib, 'Obat Ajaib', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5144_wanita, 'Wanita', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5144_wanita, 'Wanita', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5145_suami_istri, 'Suami Istri', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5145_suami_istri, 'Pasangan Menikah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5145_suami_istri, 'Tuan dan Nyonya.', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5147_sangat_muda, 'Sangat Muda', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5147_sangat_muda, 'Kekanak-kanakan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5148_masa_kecil, 'Masa kecil', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5148_masa_kecil, 'Anak usia dini', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5149_gudang, 'Gudang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5149_gudang, 'Gudang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5149_gudang, 'Kura', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5150_brankas, 'Brankas', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5150_brankas, 'Kubah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5151_garasi, 'Garasi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5152_untuk_memulihkan, 'Untuk Memulihkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5152_untuk_memulihkan, 'Untuk Memulihkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5152_untuk_memulihkan, 'Untuk Mendapatkan Kembali', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5154_mikroorganisme, 'Mikroorganisme', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5154_mikroorganisme, 'Mikroba', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5155_konstitusi, 'Konstitusi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5156_pemerintahan_konstitusional, 'Pemerintahan Konstitusional', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5157_penyerapan_total, 'Penyerapan Total', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5157_penyerapan_total, 'Kehilangan Diri Sendiri', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5157_penyerapan_total, 'Panik', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5158_bahasa_tubuh, 'Bahasa Tubuh', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5158_bahasa_tubuh, 'Sikap', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5159_furigana, 'Furigana', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5159_furigana, 'Kana Kecil Di Sebelah Kanji', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5160_untuk_wawancara_dengan, 'Untuk Wawancara Dengan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5160_untuk_wawancara_dengan, 'Untuk Wawancara', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5161_untuk_menembak, 'Untuk Menembak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5161_untuk_menembak, 'Untuk Menembak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5162_menyerang, 'Menyerang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5162_menyerang, 'Menyerang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5163_untuk_menyerang, 'Untuk Menyerang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5163_untuk_menyerang, 'Untuk Menyerang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5164_besar, 'Besar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5164_besar, 'Jurusan Perguruan Tinggi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5164_besar, 'Bidang Studi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5165_serangan_balasan, 'Serangan balasan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5165_serangan_balasan, 'Serangan Balik', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5167_pantai, 'Pantai', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5168_yokohama, 'Yokohama', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5169_murni, 'Murni', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5169_murni, 'Membersihkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5170_membersihkan, 'Membersihkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5170_membersihkan, 'Kebersihan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5170_membersihkan, 'Sanitasi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5171_terhormat, 'Terhormat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5171_terhormat, 'Bermartabat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5171_terhormat, 'Ramah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5172_kotor, 'Kotor', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5172_kotor, 'Kotor', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5172_kotor, 'Tidak sehat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5173_berbicara_pada_diri_sendiri, 'Berbicara Pada Diri Sendiri', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5173_berbicara_pada_diri_sendiri, 'Bergumam Pada Diri Sendiri', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5174_laba, 'Laba', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5174_laba, 'Keuntungan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5175_bermanfaat, 'Bermanfaat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5175_bermanfaat, 'Berguna', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5176_kepentingan_umum, 'Kepentingan Umum', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5176_kepentingan_umum, 'Kepentingan umum', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5177_kepentingan_nasional, 'Kepentingan Nasional', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5177_kepentingan_nasional, 'Manfaat Nasional', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5178_untuk_bergeser, 'Untuk Bergeser', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5178_untuk_bergeser, 'Untuk Mentransfer', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5179_imigrasi, 'Imigrasi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5179_imigrasi, 'Emigrasi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5179_imigrasi, 'Imigran', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5179_imigrasi, 'Emigran', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5180_migrasi, 'Migrasi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5180_migrasi, 'Imigrasi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5180_migrasi, 'Emigrasi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5182_cakupan, 'Cakupan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5182_cakupan, 'Suatu Batas', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5183_derajat, 'Derajat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5183_derajat, 'Cakupan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5183_derajat, 'Tingkat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5184_proses, 'Proses', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5184_proses, 'Sebuah Proses', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5185_jadwal, 'Jadwal', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5185_jadwal, 'Rencana perjalanan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5186_kekanak_kanakan, 'Kekanak-kanakan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5186_kekanak_kanakan, 'Belum dewasa', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5187_roh, 'Roh', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5187_roh, 'Pikiran', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5188_presisi, 'Presisi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5188_presisi, 'Ketepatan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5190_untuk_memutuskan_kontak, 'Untuk Memutuskan Kontak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5190_untuk_memutuskan_kontak, 'Ke Parah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5190_untuk_memutuskan_kontak, 'Untuk Mengakhiri', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5192_toko_permen, 'Toko Permen', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5193_masyarakat_umum, 'Masyarakat umum', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5194_dewan_perwakilan_rakyat, 'Dewan Perwakilan Rakyat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5195_kotak_tabungan, 'Kotak Tabungan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5195_kotak_tabungan, 'Keruntung', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5196_relatif, 'Relatif', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5196_relatif, 'Relatif', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5198_balik, 'Balik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5198_balik, 'Di depan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5199_efek_berlawanan, 'Efek Berlawanan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5199_efek_berlawanan, 'Kontraproduktif', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5200_untuk_melawan, 'Untuk Melawan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5200_untuk_melawan, 'Untuk Menentang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5200_untuk_melawan, 'Bertentangan dengan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5201_paradoks, 'Paradoks', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5201_paradoks, 'Pernyataan yang Berlawanan dengan Intuitif', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5202_kesalahan_besar, 'Kesalahan Besar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5203_kantor_pos, 'Kantor Pos', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5204_nomor_pos, 'Nomor Pos', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5204_nomor_pos, 'Kode Pos', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5204_nomor_pos, 'Kode pos', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5204_nomor_pos, 'Kode pos', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5205_kotak_pos, 'Kotak pos', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5205_kotak_pos, 'Kotak Koleksi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5205_kotak_pos, 'Kotak surat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5206_rekaman_suara, 'Rekaman Suara', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5206_rekaman_suara, 'Rekaman Audio', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5207_pendaftaran, 'Pendaftaran', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5208_catatan, 'Catatan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5208_catatan, 'Dokumen', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5209_tentara, 'Tentara', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5209_tentara, 'Sebuah Tentara', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5210_pasukan, 'Pasukan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5210_pasukan, 'Satuan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5210_pasukan, 'Tim', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5211_tentara, 'Tentara', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5211_tentara, 'Pelaut', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5212_pendaftaran, 'Pendaftaran', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5212_pendaftaran, 'Mendapatkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5262_untuk_sakit, 'Untuk sakit', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5262_untuk_sakit, 'Untuk Menyakiti', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5262_untuk_sakit, 'Menjadi Sakit', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5265_pil_tidur, 'Pil tidur', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5265_pil_tidur, 'Obat Tidur', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5284_untuk_merayu, 'Untuk merayu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5284_untuk_merayu, 'Untuk menggoda', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5388_untuk_mengimpor, 'Untuk Mengimpor', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5390_kami, 'Kami', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5390_kami, 'Kita', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5392_secara_langsung, 'Secara langsung', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5392_secara_langsung, 'Langsung', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5502_cantik, 'Cantik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5502_cantik, 'Cantik', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5502_cantik, 'Membersihkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5751_jatuh, 'Jatuh', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5751_jatuh, 'Untuk Turun', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5839_untuk_terkulai, 'Untuk terkulai', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5839_untuk_terkulai, 'Untuk Menggantung', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5839_untuk_terkulai, 'Menetes', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6734_rawa, 'Rawa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6734_rawa, 'Rawa', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6736_tanah_rawa, 'Tanah rawa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6736_tanah_rawa, 'lahan basah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6736_tanah_rawa, 'Daerah rawa', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7468_maju, 'Maju', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7468_maju, 'Mengenakan biaya', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7717_sepupu, 'Sepupu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7717_sepupu, 'Sepupu Laki-Laki', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8540_kerinduan, 'Kerinduan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8540_kerinduan, 'Kerinduan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8540_kerinduan, 'Kekaguman', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8683_pantai, 'Pantai', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8719_karena, 'Karena', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8719_karena, 'Alasannya adalah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8757_untuk_membuat_kesalahan, 'Untuk Membuat Kesalahan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8757_untuk_membuat_kesalahan, 'Salah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8758_pergerakan, 'Pergerakan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8758_pergerakan, 'Transfer', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8758_pergerakan, 'Pemindahan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8758_pergerakan, 'Migrasi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9075_pencairan, 'Pencairan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9075_pencairan, 'Mencairkan es', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9075_pencairan, 'Membuka ritsleting', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9252_menjadi_lengkap, 'Menjadi Lengkap', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9252_menjadi_lengkap, 'Menjadi Seragam', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9359_kutub_utara, 'Kutub Utara', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9359_kutub_utara, 'Arktik', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9370_untuk_memutar, 'Untuk Memutar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9370_untuk_memutar, 'Untuk Berbelok', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9370_untuk_memutar, 'Terkilir', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9374_larut_malam, 'Larut Malam', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9374_larut_malam, 'Mati Malam', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9374_larut_malam, 'Saat larut', false, true);

  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2945_belum, 'いまだ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4189_untuk_mengenakan_sepatu, 'はく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4666_kriteria, 'きじゅん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4746_membatasi, 'げんど', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4786_tampilan_lengkap, 'ぜんけい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4787_latar_depan, 'ぜんけい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4887_lagi, 'ふたたび', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4890_minggu_setelah_berikutnya, 'さらいしゅう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4933_karena_itu, 'ゆえに', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4989_kabel, 'はりがね', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5013_sangat_besar, 'きょだい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5014_raksasa, 'きょじん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5028_untuk_memanggil, 'まねく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5039_untuk_mencapai_puncak_sesuatu, 'きわめる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5092_untuk_mundur, 'しりぞく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5105_anak_panah, 'やじるし', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5107_berdampingan, 'へいれつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5108_secara_paralel, 'へいこう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5109_untuk_berbaris, 'ならぶ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5110_biasa, 'なみ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5111_gelar_master, 'しゅうし', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5112_memperbaiki, 'しゅうり', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5113_pelatihan, 'けんしゅう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5114_retorik, 'しゅうじがく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5115_payung, 'かさ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5116_tempat_payung, 'かさたて', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5119_anak_anak, 'じどう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5120_balita, 'ようじ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5121_dingin, 'つめたい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5122_berkepala_dingin, 'れいせい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5123_freezer, 'れいとうこ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5124_untuk_membekukan, 'こおる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5125_mati_kedinginan, 'とうし', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5126_pembekuan, 'とうけつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5127_menghadapi, 'しょり', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5128_pembuangan, 'しょぶん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5130_tiket, 'けん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5131_paspor, 'りょけん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5132_tiket_muka, 'まえうりけん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5133_buku_tiket, 'かいすうけん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5135_kekuatan_kreatif, 'そうぞうりょく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5136_kreatif, 'そうぞうてき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5137_museum, 'はくぶつかん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5139_berjudi, 'ばくち', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5140_perbintangan, 'ほしうらない', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5141_tidak_begitu_baik, 'びみょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5142_aneh, 'みょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5143_obat_ajaib, 'みょうやく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5144_wanita, 'ふじん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5145_suami_istri, 'ふうふ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5147_sangat_muda, 'おさない', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5148_masa_kecil, 'ようねんじだい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5149_gudang, 'くら', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5150_brankas, 'きんこ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5151_garasi, 'しゃこ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5152_untuk_memulihkan, 'かいふくする', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5154_mikroorganisme, 'びせいぶつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5155_konstitusi, 'けんぽう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5156_pemerintahan_konstitusional, 'けんせい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5157_penyerapan_total, 'むがむちゅう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5158_bahasa_tubuh, 'みぶり', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5159_furigana, 'ふりがな', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5160_untuk_wawancara_dengan, 'めんせつする', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5161_untuk_menembak, 'うつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5162_menyerang, 'こうげき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5163_untuk_menyerang, 'せめる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5164_besar, 'せんこう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5165_serangan_balasan, 'はんこう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5167_pantai, 'はま', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5168_yokohama, 'よこはま', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5169_murni, 'きよい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5170_membersihkan, 'せいけつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5171_terhormat, 'いさぎよい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5172_kotor, 'ふけつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5173_berbicara_pada_diri_sendiri, 'ひとりごと', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5174_laba, 'りえき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5175_bermanfaat, 'ゆうえき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5176_kepentingan_umum, 'こうえき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5177_kepentingan_nasional, 'こくえき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5178_untuk_bergeser, 'うつす', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5179_imigrasi, 'いみん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5180_migrasi, 'いじゅう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5182_cakupan, 'ほど', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5183_derajat, 'ていど', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5184_proses, 'かてい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5185_jadwal, 'にってい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5186_kekanak_kanakan, 'ようち', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5187_roh, 'せいしん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5188_presisi, 'せいど', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5190_untuk_memutuskan_kontak, 'たつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5192_toko_permen, 'おかしや', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5193_masyarakat_umum, 'たいしゅう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5194_dewan_perwakilan_rakyat, 'しゅうぎいん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5195_kotak_tabungan, 'ちょきんばこ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5196_relatif, 'ひかくてき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5198_balik, 'ぎゃく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5199_efek_berlawanan, 'ぎゃくこうか', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5200_untuk_melawan, 'さからう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5201_paradoks, 'ぎゃくせつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5202_kesalahan_besar, 'おおまちがい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5203_kantor_pos, 'ゆうびんきょく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5204_nomor_pos, 'ゆうびんばんごう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5205_kotak_pos, 'ゆうびんばこ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5206_rekaman_suara, 'ろくおん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5207_pendaftaran, 'とうろく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5208_catatan, 'きろく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5209_tentara, 'ぐんたい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5210_pasukan, 'たい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5211_tentara, 'へいたい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5212_pendaftaran, 'にゅうたい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5262_untuk_sakit, 'いたむ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5265_pil_tidur, 'すいみんやく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5284_untuk_merayu, 'ゆうわくする', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5388_untuk_mengimpor, 'ゆにゅうする', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5390_kami, 'われわれ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5392_secara_langsung, 'ちょくせつてき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5502_cantik, 'きれい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5751_jatuh, 'ふる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5839_untuk_terkulai, 'たれる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6734_rawa, 'ぬま', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6736_tanah_rawa, 'ぬまち', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7468_maju, 'しんげき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7717_sepupu, 'いとこ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8540_kerinduan, 'あこがれ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8683_pantai, 'はまべ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8719_karena, 'なぜなら', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8757_untuk_membuat_kesalahan, 'まちがえる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8758_pergerakan, 'いどう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9075_pencairan, 'かいとう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9252_menjadi_lengkap, 'そろう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9359_kutub_utara, 'ほっきょく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9370_untuk_memutar, 'ひねる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9370_untuk_memutar, 'ねじる', NULL, false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9374_larut_malam, 'よふけ', NULL, true, true);

  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2945_belum, '未だ海外に行ったことが有りません。', 'Saya belum pernah ke luar negeri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2945_belum, '主人がどこにいるのか、未だ不明です。', 'Masih belum diketahui keberadaan suami saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2945_belum, '未だ、二百才まで生きた人はいないでしょう。', 'Saya yakin tidak ada seorang pun yang hidup sampai usia 200 tahun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4189_untuk_mengenakan_sepatu, 'ズボンを履く時って、いつもジャンプしながら履くよね？', 'Saat kamu memakai celana, kamu selalu melompat-lompat, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4189_untuk_mengenakan_sepatu, 'まだパンツ履いてないの？早くしなさい！', 'Kamu belum memakai celana dalammu? Ayo cepat!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4189_untuk_mengenakan_sepatu, '靴下を履かずにスニーカーを履かないで！スニーカーが臭くなるって何度言ったら分かるの？', 'Jangan memakai sepatu kets tanpa memakai kaus kaki! Sepatu ketsnya akan berbau. Berapa kali aku harus memberitahumu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4189_untuk_mengenakan_sepatu, 'スタッドレスタイヤへの履き替えは、初雪が降る1ヶ月前ぐらいがいいそうです。まぁ、うちはいつも初雪の予報を見て、あわててスタッドレスを履くんですけどね。', 'Rupanya, ban salju paling baik dipasang sekitar sebulan sebelum salju pertama turun. Meskipun demikian, kami biasanya menunggu sampai kami melihat ramalan cuaca salju pertama, lalu panik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4666_kriteria, 'もう少し、目標に具体的な規準を設定してみてはいかがでしょうか。', 'Bagaimana dengan menetapkan kriteria yang lebih spesifik untuk tujuan Anda?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4666_kriteria, '評価規準の作成方法を教えてもらえませんか？', 'Bisakah Anda mengajari saya cara membuat kriteria evaluasi?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4666_kriteria, 'この条件だと、選考規準に満たないですね。', 'Berdasarkan kondisi tersebut, tidak memenuhi kriteria seleksi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4746_membatasi, 'ただし、一人当たり１００万円を限度とする。', 'Namun perlu diperhatikan bahwa batasannya ditetapkan sebesar satu juta yen per orang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4746_membatasi, 'いくら気前がよくても限度というものがある。	', 'Meskipun Anda murah hati, ada batasnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4746_membatasi, 'このクレジットカードの限度額がいくらだったか忘れちゃったんだよね。', 'Saya lupa berapa batas saya pada kartu kredit ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4786_tampilan_lengkap, 'ここから、町の全景が見わたせるんです。', 'Anda dapat melihat seluruh kota dari sini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4786_tampilan_lengkap, 'ドローンがあれば、この都市の全景を写した写真がとれますよ！', 'Jika Anda memiliki drone, Anda dapat memotret seluruh kota!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4786_tampilan_lengkap, 'うーん、この情報だけだと、建物の全景がうまくイメージできないな。', 'Yah, saya tidak bisa mendapatkan gambaran yang bagus tentang keseluruhan bangunan dari informasi ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4786_tampilan_lengkap, '私は息を飲むような富士の全景を期待していたが、実際はかなりお粗末なものだった。', 'Saya mengharapkan panorama Gunung Fuji yang menakjubkan, namun kenyataannya cukup menyedihkan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4787_latar_depan, '前景をちょっとぼかしてみます。', 'Saya akan mengaburkan latar depan sedikit.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4787_latar_depan, 'この前景レイヤー、見えなくしてみて。', 'Bisakah Anda membuat lapisan latar depan ini tidak terlihat?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4787_latar_depan, '前景に立っている木、目立ちすぎじゃない？', 'Bukankah pohon yang berdiri di latar depan terlalu menonjol?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4787_latar_depan, 'このカメラでは、どうすれば前景の被写体にピントを合わせることができるんですか？', 'Bagaimana cara memfokuskan sesuatu di latar depan dengan kamera ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4887_lagi, '男はよろめきながらも、再びゆっくりと歩き始めた。', 'Pria itu, meski terhuyung-huyung, mulai berjalan perlahan sekali lagi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4887_lagi, 'この地を再び訪れることになるとは思ってもいなかったよ。', 'Saya tidak berpikir saya akan mengunjungi tempat ini lagi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4887_lagi, '次の朝、怪物は再び現れた。', 'Keesokan paginya, monster itu muncul lagi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4890_minggu_setelah_berikutnya, '運動会は今週じゃなくて再来週だよ。', 'Festival olahraganya bukan minggu ini, tapi minggu berikutnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4890_minggu_setelah_berikutnya, '再来週の予定ってどんな感じ？', 'Apa rencana untuk minggu depan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4890_minggu_setelah_berikutnya, 'ランチ、再来週にリスケできないかな？', 'Apakah mungkin untuk menjadwal ulang makan siang untuk minggu berikutnya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4933_karena_itu, '故に、この薬は人々に知られるようになったのです。', 'Oleh karena itu, obat ini mulai dikenal masyarakat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4933_karena_itu, '私は美人が故に顔ばかり見られます。以前は嫌だったんですが、今は美人が故の宿命だと思って受け入れています。', 'Sebagai konsekuensi dari ketampanan, orang cenderung hanya melihat wajah saya. Dulu aku tidak menyukainya, tapi sekarang aku menerimanya sebagai takdir yang datang dari menjadi wanita cantik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4933_karena_itu, '「何が故にソナタたち人間は苦しむのじゃ？」「愛故に人は苦しまねばならぬのだ」', '“Mengapa kalian manusia menderita?” “Karena cintalah manusia harus menderita.”');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4933_karena_itu, '度重なる無断遅刻故に、 休暇日数が減らされてしまった。', 'Saya berulang kali terlambat tanpa izin dan akibatnya hari libur saya dipersingkat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4989_kabel, '針金が床に落ちていたよ。', 'Kawatnya ada di lantai, lho.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4989_kabel, '針金を使って留めましょう。', 'Mari kita gunakan kawat untuk mengencangkannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4989_kabel, 'これはハンガーの針金を曲げて作ったアートです。', 'Ini adalah karya seni yang dibuat dengan membengkokkan kawat gantungan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5013_sangat_besar, 'なんて巨大なピーマンなんだ！', 'Paprika hijau yang sangat besar!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5013_sangat_besar, '巨大なトーフグ人形がオフィスに届きました。', 'Boneka Tofugu raksasa telah tiba di kantor.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5013_sangat_besar, '日本に旅行してる時に、南海トラフみたいな巨大地震が来る可能性もあるでしょ？', 'Ada kemungkinan gempa besar seperti yang terjadi di Palung Nankai terjadi saat Anda sedang berwisata di Jepang, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5013_sangat_besar, '彼はとっても忙しい巨大企業の社長さんなんだから、アポの約束は絶対に早目に取っておいた方がいいよ。', 'Saya sangat menyarankan agar Anda menjadwalkan janji temu dengannya jauh-jauh hari karena dia adalah presiden sebuah perusahaan besar dan dia sangat, sangat sibuk.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5014_raksasa, '虫にとっては、人間も巨人でしょ。', 'Bagi serangga, manusia itu raksasa, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5014_raksasa, 'えっ、巨人ファンなんですか？', 'Apakah kamu penggemar Giants?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5014_raksasa, 'あのバスケットボール選手は巨人症です。', 'Pemain bola basket itu menderita gigantisme.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5028_untuk_memanggil, '今回のパーティーには、クライアントを百名招く予定です。', 'Kami berencana mengundang seratus klien ke pesta ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5028_untuk_memanggil, '人を手を使って招くことを「手招きする」って言うんですよ。', 'Ini disebut "memberi isyarat" menggunakan tangan Anda untuk mengundang orang masuk.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5028_untuk_memanggil, '彼をうちのCEOとして招くことができれば最高なんだけどな。', 'Akan sangat bagus jika kami bisa mengundang dia sebagai CEO kami.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5028_untuk_memanggil, 'え、インフレを招くのは円安だと思ってたんですが、円高がインフレを招くこともあるんですか？', 'Eh, saya pikir yen yang lemah menyebabkan inflasi, tapi yen yang kuat juga kadang menyebabkan inflasi?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5028_untuk_memanggil, '死者の霊魂を招く歌を作ってみた。', 'Saya menulis lagu untuk memanggil roh orang mati.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5039_untuk_mencapai_puncak_sesuatu, 'コウイチは漢字の道を極めるために、日本に行って漢字道場に通いました。', 'Koichi pergi ke Jepang untuk menghadiri dojo kanji untuk menguasai seni kanji.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5039_untuk_mencapai_puncak_sesuatu, '私、チーズケーキは極めてるからさ。', 'Saya ahli dalam membuat kue keju, Anda tahu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5039_untuk_mencapai_puncak_sesuatu, '日本語を極めるのは、生易しい事ではない。', 'Menguasai bahasa Jepang bukanlah tugas yang mudah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5039_untuk_mencapai_puncak_sesuatu, '天候が悪かったので、レスキュー作業は困難を極めました。', 'Karena cuaca buruk, operasi penyelamatan menjadi sangat menantang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5039_untuk_mencapai_puncak_sesuatu, '法律関係の職に就いて法律を極めることが夢でしたが、それよりも仕事で多忙を極めることになりました。', 'Impian saya adalah memasuki profesi hukum dan menguasai hukum, namun saya menjadi sangat sibuk dengan pekerjaan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5092_untuk_mundur, '現役を退くには、まだ早過ぎますよ。', 'Masih terlalu dini untuk pensiun dari tugas aktif.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5092_untuk_mundur, 'その選手は第一線を退いて、コーチになる道を選びました。', 'Sang pemain memilih pensiun dari lini depan dan menjadi pelatih.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5092_untuk_mundur, 'オオカミを前にして、ミカは二、三歩退いた。', 'Menghadapi serigala, Mika mundur dua atau tiga langkah ke belakang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5092_untuk_mundur, 'お前なら、どうすればこの状況で敵兵を退かせることができると思う？', 'Menurut Anda, bagaimana cara membuat tentara musuh mundur dalam situasi ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5092_untuk_mundur, 'コウイチは任期を満了し、大統領の座を退きました。', 'Koichi menyelesaikan masa jabatannya dan mengundurkan diri dari jabatan presiden.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5092_untuk_mundur, '職を退いた後も、仕事で得た個人情報を他人にもらしたり、悪用してはいけません。', 'Bahkan setelah Anda mengundurkan diri dari jabatan Anda, Anda tidak boleh mengungkapkan atau menyalahgunakan informasi pribadi yang diperoleh selama bekerja.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5105_anak_panah, '矢印にそって進んでください。', 'Silakan ikuti panahnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5105_anak_panah, 'あの矢印の道路標識は何という意味ですか。', 'Apa arti tanda panah jalan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5105_anak_panah, '矢印ってどうやって出すの？', 'Bagaimana cara memunculkan simbol panah?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5105_anak_panah, '青い矢印の標識は「左折可」で、青地に白抜きの矢印の標識「一方通行」だよ！', 'Rambu jalan dengan panah biru berarti "boleh belok kiri", dan rambu dengan panah putih dengan latar belakang biru berarti "satu arah"!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5107_berdampingan, '今日は学校で、直列回路と並列回路について学びました。', 'Hari ini di sekolah kita belajar tentang rangkaian seri dan rangkaian paralel.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5107_berdampingan, 'その駅では、特急電車と各駅電車が並列して停車していた。', 'Di stasiun itu, KA ekspres dan KA lokal berhenti berdampingan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5107_berdampingan, 'マルチコアのCPUを使えば、タスクの並列処理ができるようになります。', 'Menggunakan CPU multi-core memungkinkan tugas diproses secara paralel.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5107_berdampingan, 'まるで平行線をたどる彼の気持ちのように、二本の道はただ真っ直ぐ、並列にのびていた。', 'Seolah-olah mencerminkan perasaannya, ditakdirkan untuk tetap sejajar, kedua jalan itu berjalan lurus ke depan, berdampingan dengan tenang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5108_secara_paralel, '私、並行して何かをするのは苦手なんです。', 'Saya tidak pandai melakukan sesuatu secara paralel.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5108_secara_paralel, '今、二つの小説を同時並行で書いています。', 'Saat ini saya sedang menulis dua novel sekaligus.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5108_secara_paralel, '線路と道路が並行している区間を、電車と自転車が並行して走るシーンが好きなんです。', 'Saya menyukai adegan di mana kereta api dan sepeda berjalan beriringan melalui bentangan jalur kereta api dan jalan yang berjalan berdampingan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5108_secara_paralel, '複数の言語を並行して勉強することは、ひとつだけを学習するよりも効率的だと聞いたことがあります。', 'Saya mendengar bahwa mempelajari beberapa bahasa sekaligus lebih efisien daripada hanya mempelajari satu bahasa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5109_untuk_berbaris, 'エコバッグを買うために十二時間も行列に並ぶなんて信じられないよ。', 'Saya tidak percaya orang mengantri selama dua belas jam hanya untuk mendapatkan tas ramah lingkungan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5109_untuk_berbaris, '危ないですから白線の内側にお並びください。', 'Ini berbahaya, jadi harap berbaris di dalam garis putih.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5109_untuk_berbaris, '割りこまないで下さい。私達が先ですよ。みんな並んでいるんですから、あなたもちゃんと並ぶべきです。列の最後尾はあちらです。', 'Tolong jangan memaksa masuk. Kami di sini dulu. Semua orang sedang mengantri, jadi Anda juga harus mengambil tempat dalam antrean seperti orang lain. Akhir dari garisnya adalah seperti itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5110_biasa, 'この巻きずしセット、並と上があるんだけど、どっちがいい？', 'Kami memiliki set makizushi biasa dan mewah. Kamu mau yang mana?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5110_biasa, '並の努力では、ここまで成功することはできないよ。', 'Anda tidak bisa mencapai tingkat kesuksesan ini hanya dengan usaha biasa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5110_biasa, '運動神経は並だったが、頭はすこぶる良かった。', 'Dia memiliki refleks yang rata-rata, tetapi pikiran yang hebat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5111_gelar_master, 'もう一度大学に行って、ちゃんと修士の学位を取るつもりなんです。', 'Saya berencana untuk masuk universitas lagi dan mendapatkan gelar master dengan baik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5111_gelar_master, 'アルバイトをしながら、修士号を取るために勉強しています。	', 'Saya sedang belajar untuk mendapatkan gelar master sambil bekerja paruh waktu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5111_gelar_master, '昨年、応用言語学の修士課程を修了しました。', 'Tahun lalu, saya menyelesaikan gelar master saya di bidang linguistik terapan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5112_memperbaiki, '時計の修理の仕方が分かりません。', 'Saya tidak tahu cara memperbaiki jam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5112_memperbaiki, '修理に出したら、修理代、高くつくんじゃない？', 'Jika Anda mengirimkannya untuk diperbaiki, bukankah perbaikannya akan menghabiskan banyak uang?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5112_memperbaiki, 'メーカーに問い合わせましたが、もう部品がなく修理不能だそうです。', 'Saya menghubungi produsennya, tetapi mereka mengatakan bahwa mereka tidak lagi memiliki suku cadangnya dan tidak dapat diperbaiki lagi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5112_memperbaiki, '「おい、修理屋。これはすぐに直せるか？」「って、君たちの関係ってこと？悪いけど、それはできないよ。」	', '"Hei, tukang reparasi. Bisakah kamu memperbaikinya sekarang?" "Maksudmu, hubungan kalian? Maaf. Tidak bisa."');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5113_pelatihan, 'その研修は午後3時に始まる予定です。', 'Sesi pelatihan akan dimulai pukul 3 sore.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5113_pelatihan, 'えっ、森さんが新人社員を研修するんですか？', 'Oh, apakah Mori-san akan melatih karyawan baru?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5113_pelatihan, 'この会社には、社員研修の制度はありますか？', 'Apakah perusahaan ini mempunyai program pelatihan karyawan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5114_retorik, '修辞学のレポートの締め切りはいつですか？', 'Kapan batas waktu penyerahan esai retorika?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5114_retorik, 'この修辞学の本は、面白い上に有益です。', 'Buku retorika ini tidak hanya menarik tetapi juga bermanfaat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5114_retorik, '私は修辞学の先生に恋をしています。', 'Saya naksir guru retorika saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5115_payung, '傘、持っていったら？', 'Mengapa kamu tidak membawa payung?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5115_payung, '幼稚園に傘を忘れてきちゃった。', 'Saya lupa payung saya di taman kanak-kanak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5115_payung, 'アメリカでは、傘をさして歩いている人をあまり見かけません。', 'Saya jarang melihat orang berjalan dengan payung di Amerika.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5115_payung, '私は傘をクロークに預けました。', 'Aku meninggalkan payungku di ruang ganti.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5116_tempat_payung, 'レストランの傘立てに傘を入れたまま忘れて出てきてしまいました。', 'Saya meninggalkan restoran, melupakan payung saya di tempat saya meletakkannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5116_tempat_payung, 'コンビニの傘立てに傘を立てると、ぬすまれることが多い。', 'Jika Anda meletakkan payung di tempat payung di toko swalayan, sering kali payung tersebut dicuri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5116_tempat_payung, '傘立てに濡れた傘を立てないで下さい。', 'Mohon jangan menaruh payung basah di tempat payung.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5119_anak_anak, '私の姉は、児童相談所で働いています。', 'Adikku bekerja di pusat kesejahteraan anak-anak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5119_anak_anak, 'ハリー・ポッターって、児童書じゃないの？てっきり児童向けの本だと思っていたよ。', 'Bukankah Harry Potter adalah buku anak-anak? Saya selalu berpikir itu adalah buku yang ditujukan untuk anak-anak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5119_anak_anak, '最近、授業中に立ち歩く児童生徒が増えています。', 'Akhir-akhir ini, terjadi peningkatan jumlah siswa yang berkeliaran di kelas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5119_anak_anak, '児童の九割が欠席しました。', 'Sembilan puluh persen anak-anak tidak hadir.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5120_balita, 'そのゲームは、幼児にはまだ早いんじゃないかな？', 'Menurut saya permainan itu masih terlalu maju untuk anak-anak prasekolah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5120_balita, '幼児期は特別な時期で、幼児教育ってすごく大事なんです。', 'Anak usia dini merupakan masa yang istimewa, dan pendidikan anak usia dini sangatlah penting.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5120_balita, '幼児が幼児語しゃべってるのって、本当に可愛いよね！', 'Lucu sekali ketika balita berbicara bahasa balita!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5121_dingin, 'ミサキちゃんの手、めっちゃ冷たいね！', 'Tangan Misaki dingin sekali!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5121_dingin, '早く飲まないと、スープが冷たくなっちゃうよ。', 'Anda harus segera memakan supnya, atau supnya akan menjadi dingin.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5121_dingin, '冷たいコーヒーのことを、日本語では「アイスコーヒー」と呼びます。', 'Kami menyebut kopi dingin "es kopi" dalam bahasa Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5121_dingin, '冷たいことを言うようですが、こちらも上からの締めつけがきびしくて色々と難しいんです。', 'Saya mungkin terdengar dingin, tetapi saya berada di bawah kendali ketat dari atas, dan itu membuat banyak hal menjadi sulit.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5122_berkepala_dingin, 'できるだけ冷静な口調で話すようにした。', 'Saya mencoba berbicara dengan nada setenang mungkin.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5122_berkepala_dingin, '落ち着いて！ちょっと冷静になろう。', 'Ayo tenang! Mari kita menenangkan diri sedikit.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5122_berkepala_dingin, 'こんなことが起きて、冷静でいられる訳がないだろ！', 'Bagaimana Anda bisa tetap tenang setelah kejadian seperti ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5123_freezer, 'うちの冷凍庫はいつもいっぱいなんです。', 'Freezer kami selalu penuh.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5123_freezer, 'げっ、冷凍庫、閉め忘れてた！', 'Ya ampun, aku lupa menutup freezer!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5123_freezer, '良い冷凍庫が見つかるといいですね。', 'Saya harap Anda menemukan freezer yang bagus.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5123_freezer, '冷凍庫の中に怪しいカタマリが入っているんだけど、あれ何？', 'Ada blok misterius di freezer kami. Apa itu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5124_untuk_membekukan, 'シャボン玉って凍るの？', 'Apakah gelembung sabun membeku?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5124_untuk_membekukan, 'シカ肉なら、冷凍庫で凍らせてあるよ。', 'Jika itu daging rusa, saya membekukannya di freezer.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5124_untuk_membekukan, 'オレンジジュースを凍らせて氷を作ったことはありますか。', 'Pernahkah Anda membuat es batu dengan membekukan jus jeruk?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5124_untuk_membekukan, '道路はまだガチガチに凍ってるから気を付けてね。', 'Harap berhati-hati karena jalanan masih membeku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5124_untuk_membekukan, 'ほんと、ゾッとしましたよ。背筋が凍る思いでした。', 'Saya sangat ketakutan. Itu adalah pengalaman yang mengerikan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5125_mati_kedinginan, '犬小屋でネズミが凍死していました。', 'Seekor tikus mati beku di dalam kandang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5125_mati_kedinginan, 'こんなに寒い日に外に放置していると、凍死しちゃうんじゃない？', 'Jika Anda meninggalkannya di luar pada hari yang dingin ini, ia mungkin mati kedinginan, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5125_mati_kedinginan, 'ドイツでは、ホームレスが凍死しないように、町の色々なところにシェルターポッドが配置されています。', 'Di Jerman, tempat penampungan ditempatkan di berbagai bagian kota untuk mencegah para tunawisma mati kedinginan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5126_pembekuan, 'アカウントが凍結されちゃいました。', 'Akun saya telah dibekukan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5126_pembekuan, 'まだ完全には凍結していないかもしれないから、気を付けてね。', 'Ini mungkin belum sepenuhnya beku, jadi berhati-hatilah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5126_pembekuan, '凍結防止のために道に塩をまきます。', 'Kami menyebarkan garam di jalan untuk mencegah pembekuan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5126_pembekuan, '彼女は道路の凍結についてよく文句を言っています。', 'Dia sering mengeluh jalanan macet.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5127_menghadapi, '彼は、上司が顧客のクレーム処理をしないことについてぶつぶつ文句を言っている。', 'Dia mengeluh bahwa atasannya tidak menangani keluhan klien.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5127_menghadapi, 'パソコンがデータを処理しきれずにフリーズしてしまった。', 'Komputer saya tidak dapat memproses data dan terhenti.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5127_menghadapi, 'あの選手はゴロを処理するのが上手い。', 'Pemain itu pandai menjaga bola tanah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5128_pembuangan, 'いらないものを全部処分しました。', 'Saya membuang semua hal yang tidak saya perlukan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5128_pembuangan, '夏物の最終処分セールに行ってきました。', 'Saya pergi ke obral terakhir untuk barang-barang musim panas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5128_pembuangan, '投資していた企業が、突然行政処分を受けることになり、株価が急落しました。', 'Perusahaan tempat saya berinvestasi tiba-tiba menerima sanksi administratif, dan harga sahamnya anjlok.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5128_pembuangan, '私の息子は、ある生徒にイジメを行い、退学処分を受けました。	', 'Putra saya dikeluarkan dari sekolah karena menindas seorang siswa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5130_tiket, '薬局で、割引券をもらいました。', 'Di apotek, saya mendapat kupon diskon.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5130_tiket, '映画の券が余ってるんだけど、よかったらいらない？', 'Saya punya tiket film tambahan, apakah Anda mau?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5130_tiket, '三ヶ月の定期券をもらえますか？', 'Bisakah saya mendapatkan commuter pass selama tiga bulan berturut-turut?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5131_paspor, '新しいパスポートは、旅券番号も新しくなるはずだよ。', 'Paspor baru harus memiliki nomor paspor baru juga.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5131_paspor, 'ホテルの金庫に旅券を入れてもらいたいのですが。', 'Saya ingin meninggalkan paspor saya di brankas hotel.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5131_paspor, '旅券には有効期間が十年のものと五年のものの二種類があります。', 'Ada dua jenis paspor: yang berlaku sepuluh tahun dan yang berlaku lima tahun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5131_paspor, '万が一のために、旅先ではあらかじめ旅券のコピーをとり、旅券とは別の場所に保管するようにしてください。', 'Dalam keadaan darurat, harap membuat fotokopi paspor Anda terlebih dahulu dan menyimpannya secara terpisah dari paspor Anda saat berada di tempat tujuan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5132_tiket_muka, '前売り券はどこで買えるんですか？', 'Dimana saya bisa membeli tiket terlebih dahulu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5132_tiket_muka, '映画の前売り券を二枚もらったんだけど、よかったらいっしょに行かない？', 'Saya mendapat dua tiket di muka untuk sebuah film. Maukah kamu ikut denganku?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5132_tiket_muka, 'ディスカウントも特典もないんなら、前売り券を買う意味なくない？', 'Jika tidak ada diskon atau penawaran khusus, apa gunanya membeli tiket terlebih dahulu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5132_tiket_muka, '前売り券は他の割引とは併用できませんって書いてあるよ。', 'Dikatakan bahwa tiket yang dijual di muka tidak dapat digunakan dengan diskon lainnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5133_buku_tiket, '回数券だと、どれくらい安くなりますか？', 'Berapa harga buku tiket yang lebih murah?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5133_buku_tiket, '大人の回数券は、6枚つづりで2,050円です。', 'Satu set dewasa berisi enam tiket dan harganya 2.050 yen.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5133_buku_tiket, '電車の回数券は金券ショップでも買えますよ。', 'Anda juga dapat membeli buku tiket kereta api dari outlet tiket.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5135_kekuatan_kreatif, 'あなたのような創造力のある人と仕事ができることを、とても楽しみにしています。', 'Saya sangat bersemangat bekerja dengan orang kreatif seperti Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5135_kekuatan_kreatif, '私の妹は、創造力がとても豊かだ。', 'Adik perempuanku sangat kreatif.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5135_kekuatan_kreatif, 'ニュース記事のライターには、創造力はいらない。', 'Penulis artikel berita tidak perlu kreatif.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5136_kreatif, 'いつの時代も、創造的な仕事につきたいと思っている若者は多い。', 'Di saat-saat tertentu, banyak anak muda yang ingin berkarir di bidang kreatif.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5136_kreatif, '西野さんは、創造的なアイデアを考え出すのが得意です。', 'Nishino-san pandai memunculkan ide-ide kreatif.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5136_kreatif, '彼女みたいな創造的思考を身に付けるには、どうすればいいと思いますか？', 'Menurut Anda bagaimana kita bisa belajar berpikir kreatif seperti dia?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5137_museum, '昨日の博物館デート、どうだった？', 'Bagaimana tanggal museum Anda kemarin?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5137_museum, '先日、父に博物館に連れて行ってもらいました。', 'Suatu hari, ayah saya membawa saya ke museum.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5137_museum, '明日は、朝は児童館に行って、昼からは博物館に行く予定です。', 'Besok, saya berencana pergi ke pusat anak-anak di pagi hari dan kemudian ke museum di sore hari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5137_museum, '日曜日に母と京都国立博物館に行ってきました。', 'Saya mengunjungi Museum Nasional Kyoto bersama ibu saya pada hari Minggu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5139_berjudi, '博打でお金を全部使い果たしてしまった。', 'Aku mempertaruhkan seluruh uangku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5139_berjudi, '投資家と博打打ちって、何が違うの？', 'Apa perbedaan antara investor dan penjudi?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5139_berjudi, '博打を打つことは日本では違法です。', 'Perjudian adalah ilegal di Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5140_perbintangan, '毎日朝の番組で今日の星占いを見てから学校に行きます。', 'Setiap hari, saya menonton ramalan bintang hari itu di acara TV pagi dan kemudian berangkat ke sekolah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5140_perbintangan, '「星占いを信じるとか、バカみたい」ってむすめには冷たく言われるんだけど、ついつい見ちゃうんだよね。', 'Putriku dengan dingin mengatakan bahwa percaya pada horoskop itu bodoh, tetapi aku tidak bisa menahan diri untuk tidak melihatnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5140_perbintangan, '今日の星占いで、頭にたんこぶができないように気をつけた方がいいと出ていたの。', 'Ramalan bintang hari ini mengatakan aku harus berhati-hati agar kepalaku tidak terbentur.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5141_tidak_begitu_baik, 'うーん…なんとも微妙な感じですね。', 'Yah... perasaanku campur aduk.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5141_tidak_begitu_baik, '微妙なコメントしか思いつかなかったので、結局何も言いませんでした。', 'Saya hanya bisa memberikan komentar yang meragukan, jadi saya akhirnya tidak mengatakan apa-apa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5141_tidak_begitu_baik, 'その絵、微妙に曲がってない？', 'Bukankah gambar itu agak bengkok?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5141_tidak_begitu_baik, '彼氏から誕生日に極楽鳥花を貰ったんだけど、彼のセンスちょっと微妙だと思わない？', 'Pacarku memberiku tanaman Burung Cendrawasih untuk ulang tahunku. Seleranya tidak begitu enak, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5142_aneh, 'コウイチは、妙なステッカーを車にはっている。', 'Koichi memiliki stiker aneh di mobilnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5142_aneh, '下山さんって、妙に理屈屋な時があるよね。', 'Anehnya, Tuan Shimoyama terkadang bisa menjadi argumentatif.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5142_aneh, '妙だな。いつもならこの時間には母親から電話がかかってくるんだけど。', 'Aneh. Saya biasanya mendapat telepon dari ibu saya saat ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5143_obat_ajaib, 'ウナギは、昔から夏の暑さに負けないための妙薬として人気がありました。', 'Belut telah lama populer sebagai obat ajaib untuk mengatasi panasnya musim panas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5143_obat_ajaib, 'ホットワインは、ヨーロッパでは、風邪に効く妙薬としても知られています。', 'Anggur panas juga dikenal di Eropa sebagai obat ajaib untuk flu biasa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5143_obat_ajaib, '古代中国では、水銀が不老長生の妙薬とされてきたって本当ですか？', 'Benarkah di Tiongkok kuno, merkuri dianggap sebagai obat ajaib untuk umur panjang?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5144_wanita, '婦人服売り場はどこですか？', 'Dimanakah bagian pakaian wanita?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5144_wanita, 'こちらのご婦人は、産婦人科の婦人科医をされているんですよ。', 'Wanita ini adalah seorang dokter kandungan di klinik kebidanan dan ginekologi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5144_wanita, '明日は町内の婦人会のランチがあるんです。', 'Saya makan siang besok untuk kelompok perempuan kota.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5144_wanita, 'あの婦人、俺の手には負えなくなってきたよ。どうしたらいいかな？', 'Wanita itu menjadi tidak terkendali. Apa yang harus saya lakukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5145_suami_istri, 'その夫婦は二人共、おなかが弱かった。', 'Pasangan suami istri itu sama-sama memiliki perut yang lemah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5145_suami_istri, 'ご心配いただかなくても、夫婦関係は良好ですよ。', 'Jangan khawatir, pernikahan kita baik-baik saja.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5145_suami_istri, '仲間さん夫婦は、私のあこがれの夫婦です。', 'Tuan dan Nyonya Nakama adalah pasangan yang saya kagumi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5145_suami_istri, 'ねぇ、あなた。これから先、私たち夫婦の間で色々なことがうまくいくといいわね。', 'Hei sayang. Saya harap semuanya berjalan baik di antara kita ke depannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5147_sangat_muda, 'あの子、まだ幼いのに、かわいそうだね。', 'Aku kasihan pada gadis kecil itu, dia masih sangat muda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5147_sangat_muda, '病院で、迷子になっている幼い男の子がいました。', 'Ada seorang anak kecil yang tersesat di rumah sakit.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5147_sangat_muda, 'お兄ちゃんの方が、考え方がちょっと幼いんだよね。', 'Yang lebih tua memiliki cara berpikir yang sedikit lebih kekanak-kanakan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5148_masa_kecil, '『幼年時代』って、トルストイの幼年時代の思い出について書かれた本じゃないんですか？', 'Bukankah "Childhood" adalah buku tentang kenangan masa kecil Tolstoy?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5148_masa_kecil, 'その時私は、あの幸せな幼年時代は、もう二度と帰ってはこないんだと実感しました。', 'Saat itulah aku menyadari bahwa masa kecil yang bahagia itu tidak akan pernah terulang kembali.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5148_masa_kecil, '幼年時代の夏は、いつも九州の従兄弟のところで過ごしたから、ヒラタクワガタは思い出の虫なのだ。', 'Saya selalu menghabiskan musim panas masa kecil saya di rumah sepupu saya di Kyushu, jadi kumbang rusa pipih adalah serangga yang berkesan bagi saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5149_gudang, '心配するな。金は、庫の中に入れてある。', 'Jangan khawatir. Uang itu disimpan di gudang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5149_gudang, '庫の戸には、ちゃんとカギがかかってある。', 'Pintu lumbung terkunci rapat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5149_gudang, '男の子が庫の中に入っていくのを見たぞ。', 'Saya melihat seorang anak laki-laki masuk ke dalam gudang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5150_brankas, '家に金庫はありますか？', 'Apakah Anda memiliki brankas di rumah Anda?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5150_brankas, 'マミは貸金庫にベーコンをあずけているらしいよ。', 'Rupanya Mami menyimpan dagingnya di brankas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5150_brankas, 'あの銀行の金庫はとても頑丈です。', 'Gudang bank itu sangat kokoh.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5151_garasi, '車庫には、二台のBMWが並列して停められていました。', 'Dua BMW diparkir berjajar di garasi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5151_garasi, 'アパートの下に電車の車庫がある、ちょっと変わった団地があるそうです。', 'Mereka memiliki kompleks apartemen yang agak tidak biasa dengan garasi kereta di bawah apartemen.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5151_garasi, '両親の車を車庫に入れる時に、柱にぶつけてしまいました。', 'Ketika saya sedang memundurkan mobil orang tua saya ke dalam garasi, saya menabrakkannya ke tiang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5151_garasi, '車庫証明とは自動車の保管場所が確保されていることを証明する書類のことで、車庫法で取得が義務付けられています。', '"Shako shomei" adalah dokumen yang menyatakan bahwa tempat parkir telah diamankan untuk kendaraan, dan untuk mendapatkannya diamanatkan oleh Undang-Undang Garasi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5152_untuk_memulihkan, '天気、回復してきたね。', 'Cuacanya sudah membaik, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5152_untuk_memulihkan, 'このリハビリは、脳の機能を回復するためのものです。', 'Rehabilitasi ini dirancang untuk mengembalikan fungsi otak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5152_untuk_memulihkan, '彼が意識を回復することは難しいだろうと医者に言われました。', 'Dokter memberi tahu saya bahwa kemungkinan besar dia tidak akan sadar kembali.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5152_untuk_memulihkan, '回復するにつれて、あの日のことを思い出し始めた。なぜ私だけが助かったのかも。', 'Ketika saya pulih, saya mulai mengingat hari itu. Termasuk kenapa hanya aku yang selamat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5154_mikroorganisme, 'このお化けのような形の微生物は「ミジンコ」です。', 'Mikroorganisme berbentuk hantu ini adalah "Daphnia magna".');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5154_mikroorganisme, '微生物学の専門家は何時に来る予定ですか。 ', 'Dokter spesialis mikrobiologi dijadwalkan datang jam berapa?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5154_mikroorganisme, 'ミソって実は、微生物の働きによって作られているんですよ。', 'Miso sebenarnya dibuat melalui aktivitas mikroorganisme.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5154_mikroorganisme, '門田さんは二年前まで微生物の心を読み取る研究をしていました。', 'Pak Kadota telah meneliti membaca pikiran mikroba hingga dua tahun lalu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5155_konstitusi, 'それって憲法違反じゃないですか？', 'Bukankah itu melanggar Konstitusi?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5155_konstitusi, '憲法の全文を丸暗記しています。', 'Saya mencoba menghafal teks lengkap UUD melalui hafalan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5155_konstitusi, '表現の自由は憲法で保証されています。', 'Kebebasan berekspresi dijamin oleh Konstitusi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5155_konstitusi, '憲法改正案の見直しで忙しい。', 'Saya sibuk mengkaji amandemen konstitusi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5156_pemerintahan_konstitusional, '彼女は、タイの憲政史上最も若い首相です。', 'Dia adalah perdana menteri termuda dalam sejarah konstitusi Thailand.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5156_pemerintahan_konstitusional, '私は日本と中国の憲政を比較する研究をしています。', 'Saya sedang melakukan penelitian yang membandingkan sistem ketatanegaraan Jepang dan Tiongkok.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5156_pemerintahan_konstitusional, '憲法によって行う政治のことを「憲政」や「立憲政治」といいます。', 'Politik yang dilaksanakan berdasarkan konstitusi disebut "kensei" atau "rikken-seiji".');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5157_penyerapan_total, 'ゲームに熱中しすぎて、無我夢中の状態になっていた。', 'Aku begitu asyik dengan sebuah permainan, hingga aku benar-benar tenggelam dalam permainan itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5157_penyerapan_total, '「撃て！撃つんだ！」とビエトは無我夢中でさけんだ。', '"Tembak! Tembak!" Viet berteriak dengan panik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5157_penyerapan_total, '正直、無我夢中だったので、何も覚えていません。', 'Sejujurnya, saya tidak ingat apa pun karena saya benar-benar asyik dengan hal itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5157_penyerapan_total, '彼は無我夢中で働き、二十代で家を建てたが、三十代で墓を建てることとなった。', 'Bekerja dengan tergesa-gesa, dia membangun rumahnya pada usia dua puluhan dan membangun makamnya pada usia tiga puluhan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5158_bahasa_tubuh, '日本人の人たちと、身振り手振りで何とかコミュニケーションをとることができた。', 'Saya berhasil berkomunikasi dengan orang Jepang dengan gerak tubuh.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5158_bahasa_tubuh, 'あの子って、いつも身振り手振りが大げさなんですよね。', 'Gadis itu selalu membesar-besarkan gerak tubuh dan bahasa tubuhnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5158_bahasa_tubuh, 'ビエトは部下に、どこかに隠れるよう身振りで合図した。', 'Viet memberi isyarat kepada anak buahnya untuk bersembunyi di suatu tempat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5158_bahasa_tubuh, '男は肩をすくめて「それで？オレは知らねーよ？」という意味の身振りをした。', 'Pria itu mengangkat bahunya, memberi isyarat yang berarti, "Terus kenapa? Aku tidak tahu apa-apa tentang itu, oke?"');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5159_furigana, '名前にはカタカナで振り仮名をつけてください。', 'Silakan tambahkan furigana untuk nama Anda dalam katakana.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5159_furigana, 'ワニカニは漢字を勉強するサイトなので、振り仮名は使いません。', 'Kami tidak menggunakan furigana karena Wanikani adalah situs untuk mempelajari kanji.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5159_furigana, '漢字に振り仮名を振る仕事を見つけました。', 'Saya menemukan pekerjaan di mana saya menambahkan karakter kana kecil ke kanji.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5160_untuk_wawancara_dengan, '面接試験で受験生を面接する面接官の仕事を見つけました。', 'Saya menemukan pekerjaan sebagai pewawancara yang melakukan wawancara selama proses ujian wawancara dengan calon ujian.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5160_untuk_wawancara_dengan, '明後日面接する会社のホームページをのぞいたら、バリバリのヤクザ会社だった。', 'Aku memeriksa beranda perusahaan tempat aku akan melakukan wawancara kerja lusa, dan menemukan bahwa itu pastinya adalah perusahaan yakuza.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5160_untuk_wawancara_dengan, '最終面接は社長面接で、この企業の社長と一対一で面接するみたいです。そこまでたどり着けるといいんだけど。', 'Sepertinya wawancara terakhir adalah wawancara empat mata dengan presiden perusahaan ini. Saya harap saya bisa sampai di sana.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5161_untuk_menembak, '動くな。じっとしていないと、撃つぞ！', 'Jangan bergerak. Diam atau Anda akan tertembak!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5161_untuk_menembak, 'いや、あのクマを撃つ必要はないだろ。', 'Tidak, tidak perlu menembak beruang itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5161_untuk_menembak, '実戦では、敵を後ろから撃ってでも勝たなければいけない。', 'Dalam pertarungan sesungguhnya, kamu harus menang meski dengan menembak musuh dari belakang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5161_untuk_menembak, '逆説めくが、私はお前を守るために撃ったんだ。', 'Aku tahu kedengarannya paradoks, tapi aku menembakmu untuk melindungimu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5162_menyerang, 'サーバーがサイバー攻撃を受けている。', 'Server sedang diserang dunia maya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5162_menyerang, '敵はまず巨大都市を攻撃してくるだろう。', 'Musuh mungkin akan menyerang kota-kota besar terlebih dahulu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5162_menyerang, '後ろから攻撃を仕掛けてくるなんて、ひきょうだぞ！', 'Anda pengecut yang melakukan serangan mendadak dari belakang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5162_menyerang, '今まで見た中で一番セクシーなミサイル攻撃だったよ。', 'Itu adalah serangan rudal terseksi yang pernah saya lihat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5162_menyerang, '昨日、武力攻撃が開始された。', 'Kemarin, serangan bersenjata dilancarkan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5163_untuk_menyerang, '明日、敵の城を攻めるぞ。', 'Besok, kita akan menyerang benteng musuh.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5163_untuk_menyerang, 'ご質問ありがとうございます。中々難しいところを攻めてきますね。', 'Terima kasih atas pertanyaan Anda. Anda sedang menangani masalah yang agak sulit.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5163_untuk_menyerang, 'そのピッチャーはバッターを変化球で攻めることが多い。', 'Pelempar itu sering menyerang pemukul dengan bola melengkung.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5163_untuk_menyerang, '理屈は抜きにして、とりあえず攻めて攻めて攻めまくりました。', 'Mengesampingkan logika, saya terus mendorong dan mendorong tanpa henti.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5164_besar, '専攻は何ですか？', 'Apa jurusanmu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5164_besar, '私はファインアートを専攻しています。', 'Saya mengambil jurusan seni rupa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5164_besar, '彼女はうちの大学の、人類学専攻の学生なんだよ。', 'Dia adalah mahasiswa antropologi di universitas ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5165_serangan_balasan, 'これと同時に、ソ連が反攻を開始しました。', 'Pada saat yang sama, Uni Soviet melancarkan serangan balasan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5165_serangan_balasan, '1944年に連合軍は反攻に転じました。', 'Pada tahun 1944, pasukan Sekutu melancarkan serangan balasan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5165_serangan_balasan, 'もちろん我が軍は、反攻を準備している。しかし、まだ準備が整っておらず、反攻を行うことができない状況にあるのだ。', 'Tentu saja, tentara kita sedang mempersiapkan serangan balik. Namun, kami belum siap dan berada dalam situasi di mana kami tidak bisa melancarkan serangan balik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5167_pantai, 'さっき、浜でモクズガニを見ました！', 'Saya baru saja melihat kepiting sarung tangan di pantai!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5167_pantai, '浜風が気持ちよかった。', 'Angin pantai terasa menyenangkan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5167_pantai, 'え、浜さんもこの日、浜にいたんですか？', 'Apa, apakah kamu juga ada di pantai hari itu, Hama-san?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5168_yokohama, '横浜まで乗せてもらえませんか？', 'Bisakah Anda memberi saya tumpangan ke Yokohama?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5168_yokohama, '私は三ヶ月ほど横浜に住んでいたことがあります。', 'Saya pernah tinggal di Yokohama selama sekitar tiga bulan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5168_yokohama, '横浜生まれ、横浜育ちの人のことを「浜っ子」って言うって本当ですか？', 'Benarkah orang yang lahir dan besar di Yokohama disebut “Hamakko”?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5169_murni, 'でも、心の清い人にしか見えないんだって。', 'Namun ternyata hanya mereka yang berhati murni yang bisa melihatnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5169_murni, '「清く正しく美しく」が私のモットーです。', 'Motto saya adalah "Kemurnian, Kejujuran, Kecantikan."');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5169_murni, '「水清ければ魚住まず」って言うでしょ？', 'Tahukah Anda pepatah, "Jika airnya jernih, ikan tidak akan hidup di sana"?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5170_membersihkan, 'キッチンは清潔にしておくものでしょ？', 'Kita seharusnya menjaga dapur kita tetap bersih, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5170_membersihkan, 'おそうじの行き届いた清潔なお店で、ご飯も美味しかったです。', 'Restorannya bersih dan terawat dengan baik, dan makanannya lezat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5170_membersihkan, 'あそこのクリニックはとても清潔です。', 'Klinik itu sangat bersih.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5170_membersihkan, '実際には清潔だけど、見た目は汚らしくてちょっと影がある男の人がタイプです。', 'Tipeku adalah pria yang sebenarnya bersih tapi terlihat kotor dan samar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5171_terhormat, 'いやー、あれは潔い判断でしたね。', 'Ya, itu adalah keputusan yang anggun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5171_terhormat, 'お父さん、君の潔い態度が気に入ったみたい。', 'Sepertinya ayahku menyukai sikap ramahmu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5171_terhormat, '締切に間に合わなかったことを潔く謝ったら、あっさり許してもらえました。', 'Saya meminta maaf sebesar-besarnya karena melewatkan tenggat waktu dan dimaafkan dengan mudah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5172_kotor, '不潔な手で私をさわらないでください！', 'Jangan sentuh aku dengan tangan kotormu!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5172_kotor, '不潔な部屋を見て、別れを決意した。', 'Saya memutuskan untuk putus dengannya ketika saya melihat kamarnya yang kotor.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5172_kotor, '医者が着る白衣ほど不潔なものはありません。', 'Tidak ada yang lebih kotor dari jas putih yang dikenakan dokter.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5173_berbicara_pada_diri_sendiri, 'アイツは本当に独り言が多いよな。', 'Dia sangat sering berbicara pada dirinya sendiri, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5173_berbicara_pada_diri_sendiri, 'カオルはブツブツ独り言をつぶやいていた。', 'Kaoru bergumam pada dirinya sendiri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5173_berbicara_pada_diri_sendiri, '母は、独り言を言ってるのを近所の人に聞かれて赤面した。', 'Ibu saya tersipu ketika tetangga mendengarnya berbicara sendiri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5174_laba, 'どうしてこんな利益がほとんど出ないことをするんですか？', 'Mengapa Anda melakukan hal ini padahal keuntungannya sangat sedikit?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5174_laba, 'トーフグの一日の利益はどのぐらいですか？', 'Berapa keuntungan yang diperoleh Tofugu dalam sehari?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5174_laba, '彼は社会の利益を考えて行動できる政治家です。', 'Dia adalah politisi yang bisa bertindak demi kepentingan terbaik masyarakat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5175_bermanfaat, '有益なアドバイス、有難うございます。', 'Terima kasih atas saran bermanfaat Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5175_bermanfaat, 'ビジネスをするなら、社会にとって有益なサービスでないと、意味がないと思うんです。', 'Menurut saya kalau mau berbisnis harus bermanfaat bagi masyarakat, kalau tidak percuma.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5175_bermanfaat, '非常に有益な情報を提供していただき、有り難うございます。', 'Terima kasih banyak atas informasinya yang sangat berguna.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5176_kepentingan_umum, '私は公益法人で働いています。', 'Saya bekerja untuk yayasan nirlaba.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5176_kepentingan_umum, '私は公益の観点で投資をするようにしています。', 'Saya mencoba berinvestasi di saham dari perspektif kepentingan publik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5176_kepentingan_umum, 'トーフグのこと、ずっと公益事業をしている公益法人だと思っていました。', 'Saya mengira Tofugu adalah perusahaan kepentingan publik yang telah lama melakukan pelayanan publik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5176_kepentingan_umum, 'その決定は公益を害する可能性があります。', 'Keputusan itu bisa merugikan kepentingan publik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5176_kepentingan_umum, '公益に反する行動が評価される会社って、どうかしてると思いませんか？', 'Perusahaan yang memuji tindakan yang bertentangan dengan kepentingan publik — bukankah itu tindakan yang kacau?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5177_kepentingan_nasional, '国益を守るのが外交官の仕事でしょ？', 'Tugas diplomat adalah melindungi kepentingan nasional, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5177_kepentingan_nasional, 'みんなに嫌われても、国益を考えて行動できる政治家になりたいと思っています。', 'Saya ingin menjadi politisi yang bisa bertindak demi kepentingan nasional meski semua orang membenci saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5177_kepentingan_nasional, '国益より地球益、さらには地球益より宇宙益を優先させるべきだと思いませんか？', 'Tidakkah menurut Anda kita harus mendahulukan kepentingan global di atas kepentingan nasional dan terlebih lagi kepentingan universal di atas kepentingan global?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5177_kepentingan_nasional, '日本人の英会話力不足によって、将来国益が損なわれる可能性がある。	', 'Bahasa Inggris orang Jepang yang buruk dapat merusak kepentingan nasional di masa depan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5178_untuk_bergeser, '銀座に事務所を移すことを検討しています。', 'Kami sedang mempertimbangkan untuk memindahkan kantor kami ke Ginza.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5178_untuk_bergeser, 'アイディアを実行に移すのが難しいんですよね。', 'Sulit untuk mewujudkan ide menjadi tindakan, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5178_untuk_bergeser, '成功者は、何でも行動に移すのが速い気がします。', 'Saya merasa orang-orang sukses cepat mengambil tindakan dalam segala hal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5178_untuk_bergeser, '私は苺をミキサーに移しました。', 'Saya memindahkan stroberi ke blender.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5179_imigrasi, '今後、日本は移民の受け入れを増やすと思いますか？', 'Apakah menurut Anda Jepang akan menerima lebih banyak imigran di masa depan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5179_imigrasi, '星さんの夫は、フランスからアメリカに移民してきたそうです。', 'Saya mendengar bahwa suami Hoshi-san berimigrasi ke AS dari Perancis.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5179_imigrasi, '私はカナダ政府公認移民コンサルタントです。', 'Saya seorang Konsultan Imigrasi Bersertifikat Pemerintah Kanada.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5179_imigrasi, '私は、自分が不法移民であるという秘密を彼女に告白した。', 'Saya mengakui rahasia saya bahwa saya adalah seorang imigran ilegal kepadanya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5180_migrasi, '今のところ、日本への移住の予定は無いです。', 'Saya tidak punya rencana untuk pindah ke Jepang untuk saat ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5180_migrasi, '日本からアメリカへ移住するのは、アメリカから日本へ移住するよりも難しい。', 'Bermigrasi dari Jepang ke Amerika lebih sulit dibandingkan dari Amerika ke Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5180_migrasi, 'それはあなたがこの国に移住して来るか来ないかによります。', 'Itu tergantung apakah Anda akan pindah ke negara ini atau tidak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5182_cakupan, 'あの歌手、歌は上手いけど、ビヨンセ程ではないよね。', 'Penyanyi itu adalah penyanyi yang bagus, tapi mereka tidak sebaik Beyonce.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5182_cakupan, '思った程高くなかったので、思わずポチってしまいました。', 'Harganya tidak semahal yang saya harapkan, jadi saya akhirnya mengklik untuk segera memesan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5182_cakupan, '聞けば聞く程、こわくなってきました。', 'Semakin banyak saya mendengarnya, semakin menakutkan jadinya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5183_derajat, 'この程度の金額でビビってたらなんにもできないよ。', 'Jika Anda takut hanya dengan jumlah uang sebanyak ini, Anda tidak akan bisa berbuat apa-apa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5183_derajat, 'そのウワサについて、どの程度ご存知ですか？', 'Sejauh mana Anda mengetahui rumor tersebut?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5183_derajat, '本気で怒らせない程度に、ほどほどにね！', 'Hanya saja, jangan sampai menyinggung perasaannya secara serius, tetapi secukupnya saja!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5183_derajat, '彼は実際は35歳だが、3歳児と同程度の知能水準しかない。', 'Ia sebenarnya berusia 35 tahun, namun kecerdasannya tidak melebihi anak berusia tiga tahun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5184_proses, '私はいつも自分の作品を作り上げていく過程を楽しむようにしています。', 'Saya selalu berusaha menikmati proses menciptakan karya saya sendiri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5184_proses, 'うちの子は夏休みの自由研究で、昆虫の成長過程を記録しています。', 'Anak saya merekam proses pertumbuhan serangga untuk proyek penelitiannya selama liburan musim panas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5184_proses, 'プロジェクトが失敗したことは仕方のないことですが、どうしてそうなったかの過程を考え、説明できるようにしないと、失敗を次に活かせませんよ。', 'Tidak dapat dihindari bahwa proyek tersebut gagal, tetapi jika Anda tidak memikirkan proses mengapa hal itu terjadi dan tidak mampu menjelaskannya, Anda tidak akan dapat memanfaatkan kegagalan tersebut untuk keuntungan Anda di lain waktu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5185_jadwal, '旅行の日程って、どんな感じで考えてる？', 'Rencana perjalanan seperti apa yang ada dalam pikiran Anda?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5185_jadwal, '職場研修の日程は、決まり次第連絡しますね。', 'Saya akan memberi tahu Anda jadwal pelatihan kerja segera setelah diputuskan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5185_jadwal, 'では、議事日程に従い、審議案件に移ります。', 'Nah, sesuai dengan jadwal persidangan, kini kita masuk ke materi pembahasan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5186_kekanak_kanakan, 'うちの夫、本当に幼稚なんだよね。', 'Suamiku benar-benar belum dewasa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5186_kekanak_kanakan, 'お言葉を返すようですが、幼稚な考えを持っているのは、ご自身の方じゃないですか？', 'Saya tidak bermaksud menentang Anda, tetapi bukankah menurut Anda Andalah yang memiliki pemikiran kekanak-kanakan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5186_kekanak_kanakan, 'うちの子は今、土曜日の朝にある日本語学校の幼稚部に通っています。', 'Anak saya sekarang bersekolah di bagian taman kanak-kanak di sekolah bahasa Jepang pada Sabtu pagi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5186_kekanak_kanakan, 'どうして幼稚な喋り方をする日本人女性が多いのですか？', 'Mengapa banyak gadis Jepang berbicara seperti anak-anak?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5187_roh, '私の父は、精神を病んで精神病院に通っています。', 'Ayah saya sakit jiwa dan dirawat di rumah sakit jiwa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5187_roh, '精神を集中して勉強すれば、一ヶ月で日本語がペラペラになるよ。', 'Jika Anda memfokuskan pikiran dan belajar dengan giat, Anda akan fasih berbahasa Jepang dalam sebulan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5187_roh, 'うちの学校は自由と独立の精神を重んじているので、校則がありません。', 'Sekolah kami menghargai semangat kebebasan dan kemandirian, sehingga tidak ada peraturan sekolah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5188_presisi, 'あの国のミサイルの精度はまだ低いと言われている。', 'Konon presisi rudal negara tersebut masih rendah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5188_presisi, 'え、モノマネの精度、高すぎない？', 'Eh, bukankah peniruan identitasmu terlalu akurat?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5188_presisi, 'デッサンの精度を高めたいんですが、どうすれば精度が上がると思いますか？', 'Saya ingin meningkatkan akurasi sketsa saya, menurut Anda bagaimana saya dapat meningkatkan akurasi?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5190_untuk_memutuskan_kontak, '恋人との関係を絶つ方法を教えてください。', 'Tolong ajari aku tentang cara putus dengan kekasihku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5190_untuk_memutuskan_kontak, '国際社会で責任ある立場を得るには、こちら側から他国との国交を絶ち断交するのは望ましくありません。', 'Untuk mendapatkan posisi yang bertanggung jawab dalam komunitas internasional, kita tidak diinginkan untuk memutuskan hubungan diplomatik dengan negara lain.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5190_untuk_memutuskan_kontak, '三年前、サシ飲みの途中にさ、親友がスマホも財布も置いたまま、突然ふらりと店を出たんだよね。で、そのまま消息を絶っちゃったの。', 'Tiga tahun yang lalu, ketika kami berdua sedang minum-minum, sahabatku tiba-tiba bangun dan keluar dari bar, meninggalkan ponsel pintar dan dompetnya. Dan kemudian saya tidak pernah mendengar kabar darinya lagi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5190_untuk_memutuskan_kontak, '自分は誰の役にも立たないからといって自ら命を絶とうとする人もいますが、骨髄バンクに登録して、毎日献血するだけでも、たくさんの人の役に立てるんです。', 'Ada orang yang mencoba mengakhiri hidupnya sendiri karena merasa tidak berguna bagi siapa pun, namun hanya dengan mendaftar ke bank sumsum tulang dan mendonor darah setiap hari, Anda sudah bisa membantu banyak orang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5192_toko_permen, 'お母さん、心配しなくていいよ。あのお菓子屋さんなら僕、一人でも行けるよ。', 'Jangan khawatir ibu. Saya bisa pergi ke toko permen sendirian.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5192_toko_permen, '大好きな地元のお菓子屋さんで買ってきたカヌレです。', 'Saya membeli canelé ini dari toko kue lokal favorit saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5192_toko_permen, 'このマーケットに、ルーネベリタルトを置いているお菓子屋さんはありますか？', 'Apakah ada toko kue di pasar ini yang menjual kue tart Runeberg?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5192_toko_permen, 'お菓子屋さんにも和菓子屋さんや洋菓子屋さんなど、いくつかの種類があるんだよ。', 'Di antara toko permen terdapat beberapa jenis, seperti toko manisan Jepang dan toko manisan Barat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5193_masyarakat_umum, 'もっと大衆の声に耳をかたむけてください。', 'Mohon dengarkan baik-baik suara masyarakat umum.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5193_masyarakat_umum, '巨大地震で大衆はパニックにおちいった。', 'Akibat gempa besar tersebut, massa menjadi panik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5193_masyarakat_umum, '大衆の感じ方次第です。', 'Tergantung bagaimana perasaan masyarakat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5194_dewan_perwakilan_rakyat, '日本の衆議院における女性議員の割合はどれぐらいですか？', 'Berapa persentase perempuan di DPR di Jepang?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5194_dewan_perwakilan_rakyat, '昨日、増税の予算案が衆議院を通過してしまいました。', 'Kemarin, rancangan anggaran kenaikan pajak disahkan di Majelis Rendah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5194_dewan_perwakilan_rakyat, 'あの議員は参議院を辞めて、衆議院議員になることを検討しているというウワサもあります。', 'Anggota dewan tersebut dikabarkan sedang mempertimbangkan untuk mengundurkan diri dari Dewan Perwakilan Rakyat dan menjadi anggota Dewan Perwakilan Rakyat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5194_dewan_perwakilan_rakyat, 'ある衆議院議員が公費でボートを借りたことが明らかになりました。', 'Terungkap ada anggota DPR yang menyewa perahu atas biaya pemerintah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5195_kotak_tabungan, '長男が学校で貯金箱を作ってきました。', 'Putra tertua saya membuat celengan di sekolah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5195_kotak_tabungan, '10才の時に始めた500円玉貯金箱が、ついにいっぱいになりました！', 'Celengan koin 500 yen yang saya mulai ketika saya berumur sepuluh tahun akhirnya penuh!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5195_kotak_tabungan, 'コウイチの貯金箱は、私の貯金箱とは比較にならない程大きい。', 'Celengan Koichi jauh lebih besar dari milikku, sampai-sampai kamu tidak bisa membandingkannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5195_kotak_tabungan, 'この貯金箱はハンマーで叩いて割らないとお金が出せない仕組みです。', 'Celengan ini dirancang sedemikian rupa sehingga Anda harus memecahkannya dengan palu untuk mengeluarkan uangnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5196_relatif, 'この店は、銀座にしては比較的安いんだよ。', 'Restoran ini relatif murah mengingat letaknya di Ginza.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5196_relatif, 'この本は、児童文学にしては比較的難しい言葉を使っているね。', 'Buku ini menggunakan kata-kata yang relatif sulit meskipun merupakan literatur remaja.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5196_relatif, '実は日本って、G７の中では税金が比較的安い方なんです。', 'Faktanya, Jepang merupakan salah satu negara G7 dengan pajak yang relatif rendah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5198_balik, 'そのシャツ、前と後ろが逆じゃない？', 'Bukankah baju itu terbalik?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5198_balik, 'コウイチって、お兄さんとは真逆な性格をしてるよね。', 'Koichi memiliki kepribadian yang sangat bertolak belakang dengan kakak laki-lakinya, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5198_balik, 'ネジをゆるめたかったのに、逆に回して締めつけてしまっていた。', 'Saya ingin melonggarkan sekrupnya, tetapi akhirnya saya memutarnya ke arah sebaliknya dan malah mengencangkannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5198_balik, '最近、道路を逆に走る人、増えてない？さっきも高速道路を逆走しているトラックがいたよ！', 'Apakah akhir-akhir ini semakin banyak orang yang mengemudi di jalur yang salah? Baru saja ada truk yang mengemudi dengan cara yang salah di jalan raya!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5199_efek_berlawanan, 'それ、逆効果じゃない？', 'Bukankah itu kontraproduktif?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5199_efek_berlawanan, '励ますつもりが、逆効果になってしまった。', 'Aku ingin menghiburnya, tapi efeknya malah sebaliknya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5199_efek_berlawanan, '手料理でハートをつかもうとしたのに、逆効果だった。', 'Saya mencoba memikat hatinya dengan masakan rumahan, tetapi itu menjadi bumerang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5200_untuk_melawan, 'お前、親に逆らうつもりか？', 'Kamu menentang orang tuamu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5200_untuk_melawan, 'やっぱり、誰も時代の流れに逆らうことはできないんだよ。', 'Bagaimanapun, tidak ada seorang pun yang bisa melawan arus zaman.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5200_untuk_melawan, 'フグは流れに逆らって川を上って行くサーモンに感動を覚えた。', 'Fugu digerakkan oleh Salmon yang sedang berenang ke hulu melawan arus sungai.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5201_paradoks, 'あの議員は、逆説の論理をよく使います。', 'Legislator itu kerap menggunakan logika paradoks.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5201_paradoks, '「寝たいのにスマホを見る」って、逆説めいてるよね。', 'Ingin tidur tetapi masih melihat ponsel — terasa paradoks, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5201_paradoks, 'このマンガは、不死の存在となった者同士の戦いを通じて命について考える、逆説的な物語です。', 'Manga ini merupakan kisah paradoks yang membuat kita berpikir tentang kehidupan melalui pertarungan antara mereka yang telah menjadi abadi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5202_kesalahan_besar, 'ニコニコ笑っておけば何とかなるでしょって思ってる人は大間違いですよ。', 'Mereka yang mengira bisa bertahan hidup jika hanya tersenyum dan tertawa, sangatlah keliru.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5202_kesalahan_besar, 'そもそも、野外で録音しようとしたのが大間違いだった。', 'Kesalahan besar awalnya adalah kami mencoba merekam di luar ruangan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5202_kesalahan_besar, 'これで夏が終わったと思ったら大間違いだよ！本当の夏は、まだまだこれからなんだから。', 'Kalau kamu mengira ini akhir musim panas, kamu salah! Musim panas yang sebenarnya belum tiba.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5202_kesalahan_besar, '彼女をデートに誘ったが、それは大間違いだった。', 'Aku memintanya untuk pergi bersamaku, tapi itu adalah kesalahan besar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5203_kantor_pos, 'この辺に郵便局はありますか？', 'Apakah ada kantor pos di daerah ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5203_kantor_pos, '郵便局で切手を十枚買ってきてくれない？', 'Bisakah Anda mendapatkan sepuluh prangko di kantor pos untuk saya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5203_kantor_pos, '私のおじは、あの郵便局の郵便局長なんです。', 'Paman saya adalah kepala kantor pos di kantor pos itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5203_kantor_pos, '郵便局のサービスに対して苦情を言いました。', 'Saya mengajukan keluhan tentang layanan kantor pos.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5204_nomor_pos, '郵便番号は何番ですか？', 'Berapa nomor kode pos Anda?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5204_nomor_pos, 'まだ新しい郵便番号を覚えていません。', 'Saya belum menghafal kode pos baru saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5204_nomor_pos, 'アメリカの郵便番号は何ケタあるんですか？', 'Berapa digit kode pos Amerika?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5204_nomor_pos, '郵便番号を間違えて書いてしまっていたようで、配達がおくれているみたいです。', 'Rupanya saya salah menulis nomor kiriman dan sepertinya pengirimannya tertunda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5205_kotak_pos, 'どうやって私の小さな郵便箱にこの本が入ったんだろう。', 'Bagaimana buku ini bisa muat di kotak surat kecil saya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5205_kotak_pos, '僕の家の前の表札の横には、郵便箱が一つ取り付けてあった。', 'Ada satu kotak surat yang dipasang di samping papan nama di depan rumah saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5205_kotak_pos, 'この郵便箱、カメラがついてるよ！', 'Kotak surat ini memiliki kamera di dalamnya!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5205_kotak_pos, 'コウイチあてのラブレターがあまりにもたくさん届くので、巨大なタンカーを郵便箱の代わりに使っています。', 'Karena begitu banyak surat cinta yang dikirimkan ke Koichi, kami menggunakan kapal tanker raksasa sebagai kotak surat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5206_rekaman_suara, 'コウイチのスピーチ、録音した？', 'Apakah Anda merekam pidato Koichi?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5206_rekaman_suara, '今日はガンダムパーティーがあるので、ポッドキャストの録音は月曜日にしましょう。', 'Kita mengadakan pesta Gundam hari ini, jadi mari kita tunda rekaman podcast ke hari Senin.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5206_rekaman_suara, 'ごめん！録音ボタンをクリックしたつもりだったのに、録音できてなかった！', 'Maaf! Saya pikir saya mengklik tombol rekam, tetapi tidak merekam!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5207_pendaftaran, 'TofuguのYouTubeチャンネルの登録者って何人くらいですか？', 'Berapa banyak pelanggan yang dimiliki saluran YouTube Tofugu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5207_pendaftaran, '来学期も日本語のクラスに登録するつもりです。', 'Saya berencana mendaftar kelas bahasa Jepang lagi semester depan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5207_pendaftaran, '住民登録はもうお済みですか？', 'Apakah Anda sudah menyelesaikan pendaftaran penduduk Anda?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5207_pendaftaran, '三宅結花です。携帯電話を変えたので、新しい電話番号とメールアドレスの登録をお願いします。', 'Ini Yuka Miyake. Saya telah mengganti telepon saya, jadi bisakah Anda mendaftarkan nomor dan alamat email baru saya di buku alamat Anda? Terima kasih.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5208_catatan, 'それが、何の記録も残ってないんだよ。', 'Untuk beberapa alasan, tidak ada catatan mengenai hal itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5208_catatan, '北山さんって、水泳の世界記録保持者なんだって！', 'Kudengar Kitayama-san adalah pemegang rekor dunia renang!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5208_catatan, 'この本には、太平洋戦争終了後もパラオに残ることを決意した日本兵の証言が記録されています。', 'Buku ini berisi kesaksian tentara Jepang yang memutuskan untuk tetap tinggal di Palau bahkan setelah Perang Pasifik berakhir.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5209_tentara, '軍隊ごっこをしているの？面白そう。私も入れてよ。 ', 'Apakah kamu bermain tentara? Kelihatannya menyenangkan. Biarkan aku masuk juga.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5209_tentara, '私は、軍隊を持つ必要の無い国は存在しないと思っています。', 'Saya tidak percaya ada negara yang tidak perlu memiliki tentara.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5209_tentara, 'この世代の男性は軍隊経験がある人が多いんです。', 'Banyak pria dari generasi ini memiliki pengalaman militer.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5210_pasukan, '先発隊に選ばれました。', 'Saya terpilih sebagai anggota regu pendahulu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5210_pasukan, 'トーフグ隊のメンバーになると、どんなことをしなくちゃいけないんですか？', 'Hal apa saja yang harus saya lakukan jika saya menjadi anggota partai Tofugu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5210_pasukan, '私は、小動物レスキュー隊の隊長です。', 'Saya adalah kapten tim penyelamat hewan kecil.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5210_pasukan, '海上自衛隊音楽隊に採用された時、彼女は他の自衛隊員と同様に肉体的にも厳しいトレーニングを受けなくてはいけないことを知らなかった。	', 'Ketika dia dipekerjakan oleh Kelompok Pasukan Bela Diri Maritim Jepang, dia tidak tahu bahwa dia juga harus bekerja keras secara fisik seperti mereka.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5211_tentara, 'これは兵隊アリですね。', 'Ini adalah semut tentara.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5211_tentara, '兵隊達は、気の向くままに森を歩いていた。', 'Para prajurit berkeliaran di hutan tanpa tujuan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5211_tentara, 'うちの息子達は、最近兵隊ごっこをすることにハマっています。', 'Putra-putra kami baru-baru ini menjadi sangat suka bermain sebagai tentara.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5212_pendaftaran, 'ついに音楽隊への入隊が決まりました。', 'Saya akhirnya memutuskan untuk bergabung dengan band tersebut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5212_pendaftaran, '入隊試験に面接があるとは思ってもみなかった。', 'Saya tidak pernah berpikir akan ada wawancara untuk tes wajib militer.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5212_pendaftaran, '日本人男性がアメリカ軍に入隊することはできますか。', 'Bolehkah orang Jepang mendaftar militer di AS?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5262_untuk_sakit, '週末に買った靴が合わなくて、かかとが痛むんです。', 'Sepatu pumps yang saya beli akhir pekan lalu tidak pas dan tumit saya sakit.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5262_untuk_sakit, '母は最近よくヒザが痛むと言っていました。', 'Akhir-akhir ini ibu saya sering mengeluh lututnya sakit.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5262_untuk_sakit, 'やせ細ってエサを探し回るクマの姿を見て、胸が痛みました。', 'Sungguh memilukan melihat beruang, kurus dan mencari makanan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5262_untuk_sakit, '昨日の夜から歯が酷く痛むんですが、診てもらえますか。', 'Saya mengalami sakit gigi yang parah sejak tadi malam, jadi bisakah Anda memeriksanya untuk saya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5265_pil_tidur, '睡眠薬が無いと眠れないんです。', 'Saya tidak bisa tidur tanpa obat tidur.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5265_pil_tidur, '昨夜、眠れなかったので、睡眠薬を飲みました。', 'Saya tidak bisa tidur tadi malam, jadi saya minum obat tidur.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5265_pil_tidur, '睡眠薬は決められた量を守って飲まないと危険ですよ。', 'Obat tidur bisa berbahaya jika Anda tidak mematuhi jumlah yang ditentukan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5265_pil_tidur, 'さっき飲んだ睡眠薬のせいで、手足が思うように動かないんだけど。', 'Saya sangat tidak terkoordinasi sekarang karena obat tidur yang saya minum beberapa waktu lalu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5284_untuk_merayu, 'ダイエットしてるって知ってるのに松本さんはいつもケーキ屋さんに行こうと誘惑してくる。', 'Meski Bu Matsumoto tahu aku sedang diet, dia selalu menggodaku untuk pergi ke toko kue bersama.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5284_untuk_merayu, 'ヘビはイブを善悪の知識の木の実を食べるように誘惑してしまったのだ。', 'Ular itu menggoda Hawa untuk memakan buah dari pohon pengetahuan baik dan jahat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5284_untuk_merayu, '彼女はたくさんの男を誘惑する悪魔だ。', 'Dia adalah iblis yang merayu banyak pria.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5388_untuk_mengimpor, '私はインターネットでキューバから葉巻を個人輸入した。', 'Saya secara pribadi mengimpor cerutu dari Kuba melalui Internet.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5388_untuk_mengimpor, '日本は色んな国から食料を輸入しています。', 'Jepang mengimpor makanan dari berbagai negara.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5388_untuk_mengimpor, '私はヨーロッパからワインとチョコレートを輸入する仕事をしています。', 'Pekerjaan saya adalah mengimpor anggur dan coklat dari Eropa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5390_kami, '我々の力だけでは、どうにもならないんです。', 'Kami tidak akan bisa berbuat apa-apa hanya dengan usaha kami sendiri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5390_kami, '仕方ないです。原因を作った我々が悪いと思うようにします。', 'Mau bagaimana lagi. Saya akan mencoba menganggapnya sebagai kesalahan kami yang menyebabkannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5390_kami, '我々はテロを容認することはできません。', 'Kita tidak bisa memaafkan terorisme.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5390_kami, '我々はその問題を熟考する必要がある。', 'Kita perlu mempertimbangkan masalahnya dengan cermat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5392_secara_langsung, '健康に直接的な影響は無いと見られています。', 'Hal ini dinilai tidak berdampak langsung terhadap kesehatan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5392_secara_langsung, '直接的な知り合いではないんですけど、連絡先なら分かると思いますよ。', 'Saya tidak memiliki hubungan langsung dengannya, tapi saya mungkin bisa mendapatkan informasi kontaknya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5392_secara_langsung, 'できれば、あまり直接的な表現は使わないようお願いします。', 'Jika memungkinkan, cobalah untuk tidak menggunakan bahasa yang terlalu lugas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5392_secara_langsung, '幸運なことに、私の家族はあの日本の大地震や大津波による直接的な被害は受けませんでした。', 'Untungnya, keluarga kami tidak terkena dampak langsung dari gempa bumi besar atau tsunami di Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5502_cantik, 'とっても綺麗な星空でした。', 'Itu adalah langit berbintang yang sangat indah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5502_cantik, '川口さんの家は、いつも綺麗に片付いています。', 'Rumah Kawaguchi-san selalu bersih dan rapi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5502_cantik, '綺麗事ばっかり言う人は信じられません。', 'Saya tidak bisa mempercayai orang yang hanya mengatakan hal-hal yang terdengar bagus.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5502_cantik, '「君みたいに綺麗な女性に会ったのは初めてだよ、サーモン。」「フグったら、ウソばっかり。」	', '“Salmon, kamu wanita tercantik yang pernah kutemui.” "Fugu, itu bohong."');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5751_jatuh, '明日は雨が降るみたいですね。', 'Sepertinya besok akan turun hujan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5751_jatuh, '雪が降ってきたよ。', 'Sedang turun salju.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5751_jatuh, 'そんな時に、思いがけない幸運が降ってきたんです。', 'Kemudian pada saat itu, sebuah keberuntungan yang tak terduga menimpa kami.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5839_untuk_terkulai, 'フタがちゃんと閉まっていなかったみたいで、横からソースが垂れている。', 'Tampaknya tutupnya tidak tertutup rapat, sehingga ada saus yang bocor di satu sisi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5839_untuk_terkulai, '昨夜ジャグチの調子が悪くて、水がポタポタ垂れる音が気になってほとんど寝られなかった。', 'Ada yang tidak beres dengan keran tadi malam, dan suara tetesan air sangat menggangguku hingga aku hampir tidak bisa tidur.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5839_untuk_terkulai, 'ジャズの尻尾は次郎がいない間ずっと垂れ下がっていたが、彼の車が聞こえた途端、ぴんとはね上がり、激しく振り始めた。', 'Meskipun ekor Jazz terkulai sepanjang Jiro keluar, saat dia mendengar mobilnya, ekornya langsung melompat ke atas dan mulai bergoyang-goyang dengan marah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6734_rawa, '沼のほとりにテントを張った。', 'Saya mendirikan tenda di sepanjang tepi rawa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6734_rawa, '沼に入ってはいけないよ。沼に落ちると大変だからね。', 'Jangan pergi ke rawa. Berbahaya jika Anda terjatuh ke dalamnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6734_rawa, '沼の底にはたくさんの生き物がいるんだよ。', 'Banyak makhluk hidup di dasar rawa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6734_rawa, 'どっちにしろ沼に飛び込まなきゃいけないと思うしね。', 'Kurasa aku harus tetap melompat ke rawa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6736_tanah_rawa, 'この沼地には、たくさんの野生動物が生息している。', 'Banyak hewan liar yang menghuni tanah rawa ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6736_tanah_rawa, 'ジェフは沼地に落ちて、泥だらけになった。', 'Jeff jatuh ke tanah rawa dan berlumuran lumpur.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6736_tanah_rawa, 'この辺りには、多くの沼地が点在している。', 'Banyak rawa yang tersebar di sekitar kawasan ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6736_tanah_rawa, '町外れの沼地の洞窟の奥には、ドラゴンがいるという言い伝えがあります。', 'Ada legenda bahwa seekor naga hidup di kedalaman gua yang terletak di tanah rawa di pinggiran kota.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7468_maju, 'どうにかして敵の進撃をはばんでくれ！', 'Lakukan sesuatu untuk menghentikan gerak maju musuh!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7468_maju, 'ビエトは敵に進撃した。', 'Viet maju ke arah musuh.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7468_maju, '進撃の巨人にはまっています。', 'Saya terpikat pada Attack on Titan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7468_maju, 'いやー、すごいですね！阪神タイガースの快進撃！この進撃、続いてほしいですね。', 'Wah, luar biasa bukan? Kemenangan beruntun Hanshin Tigers yang luar biasa! Saya sangat berharap momentum ini terus berlanjut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7717_sepupu, '従兄弟はいますか？', 'Apakah kamu punya sepupu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7717_sepupu, '日本で一番楽しみなのは、従兄弟に会うことです。', 'Hal yang paling saya nantikan di Jepang adalah bertemu dengan sepupu saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7717_sepupu, 'ハロウィンは、従兄弟と一緒にUSJに行ってきました。', 'Untuk Halloween, saya pergi ke Universal Studios Jepang bersama sepupu saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7717_sepupu, '従兄弟同士は結婚できるんだぜ。', 'Sepupu bisa menikah?!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8540_kerinduan, '憧れのダービー、なんとしても勝ちたいです。', 'Saya sangat ingin berada di derby dan ingin menang, apa pun yang terjadi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8540_kerinduan, '彼は私の憧れです。', 'Dia seseorang yang saya kagumi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8540_kerinduan, 'ワニカニのエンジニアは、みんなの憧れの仕事です。', 'Menjadi insinyur WaniKani adalah pekerjaan impian setiap orang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8683_pantai, '今、浜辺でインスタライブしてまーす。', 'Saya sedang di pantai sekarang melakukan live Instagram.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8683_pantai, '見て！浜辺でサクラ貝を見つけたの！', 'Lihat! Saya menemukan cangkang bunga sakura di pantai!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8683_pantai, 'ちょっと浜辺を歩きませんか？', 'Bagaimana kalau kita berjalan-jalan sebentar di pantai?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8683_pantai, '浜辺にイルカの赤ちゃんが打ち上げられた時は、地元の人たちが海に返したそうです。', 'Saya mendengar bahwa ketika seekor bayi lumba-lumba terdampar di pantai, masyarakat setempat mengembalikannya ke laut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8719_karena, '何故なら、明日がカードの締め日だからです。', 'Alasannya karena besok adalah tanggal cut-off kartu kredit saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8719_karena, '理由はシンプルで、何故なら美味しいからです。	', 'Alasannya sederhana: karena rasanya yang enak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8719_karena, '何故なら、待ち時間は有益に使った方がいいからです。', 'Itu karena Anda harus memanfaatkan waktu tunggu Anda dengan lebih produktif.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8719_karena, '何故なら、彼は魔法使いだったのです。', 'Karena, dia adalah seorang penyihir!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8757_untuk_membuat_kesalahan, 'ドンマイ！誰だって間違えることはあるよ。', 'Jangan khawatir! Setiap orang membuat kesalahan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8757_untuk_membuat_kesalahan, 'こんな簡単な問題を間違えるなんて、悔しいよ。', 'Membuat kesalahan pada pertanyaan sederhana seperti itu sungguh membuat frustrasi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8757_untuk_membuat_kesalahan, 'すいません、友人と間違えてしまいました。', 'Maaf, saya salah mengira Anda seorang teman.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8757_untuk_membuat_kesalahan, '間違えて他人の児童手当が私の銀行に振りこまれていたみたいです。', 'Tampaknya tunjangan anak orang lain tidak sengaja disetorkan ke bank saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8758_pergerakan, 'ちょっと車を移動してくるよ。', 'Aku akan pergi memindahkan mobilku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8758_pergerakan, 'なんか嫌な感じだね。場所、移動する？', 'Orang itu mengeluarkan kesan buruk. Apakah Anda ingin pindah tempat?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8758_pergerakan, 'コウイチ王子を安全な場所へ移動させなくてはいけません。', 'Kita harus memindahkan Pangeran Koichi ke tempat yang aman.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8758_pergerakan, 'バスで長距離の移動は疲れる。', 'Anda menjadi lelah saat bermigrasi jarak jauh dengan bus.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9075_pencairan, 'このターキー、解凍するのにどのくらい時間かかるかな？', 'Saya bertanya-tanya berapa lama waktu yang dibutuhkan untuk mencairkan kalkun ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9075_pencairan, 'パッケージに解凍方法が書いてあるはずだよ。', 'Cara pencairan bunga es harus tertulis pada kemasannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9075_pencairan, 'このファイルを開くには、解凍ソフトが必要です。', 'Untuk membuka file ini, Anda memerlukan ekstraktor file.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9252_menjadi_lengkap, '全員が揃うの五年ぶりだね。', 'Sudah lima tahun sejak semua orang berkumpul.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9252_menjadi_lengkap, '山田さんちのクツはいつもきれいに揃っている。', 'Sepatu keluarga Yamada selalu tertata rapi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9252_menjadi_lengkap, '全ての条件が揃っていた。もう勝てる気しかしなかった。', 'Semua persyaratan terpenuhi. Saya merasa kami akan menang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9359_kutub_utara, '北極はとても寒いです。', 'Kutub Utara sangat dingin.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9359_kutub_utara, '北極にはシロクマが住んでいます。', 'Beruang kutub hidup di Kutub Utara.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9359_kutub_utara, '北極の夏は、夜になっても空が明るいんです。', 'Di musim panas di Arktik, langit cerah bahkan di malam hari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9359_kutub_utara, '北極でオーロラを見ました。とてもやさしい光でした。', 'Saya melihat cahaya utara di Kutub Utara. Itu adalah cahaya yang sangat lembut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9370_untuk_memutar, 'それじゃあ次は、左右に体を捻るストレッチをします。', 'Oke, selanjutnya kita akan melakukan peregangan dengan cara memutar badan dari sisi ke sisi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9370_untuk_memutar, 'そのスイッチを強く捻るとエンジンが入りますよ。', 'Jika Anda memutar saklar itu dengan keras, mesin akan hidup.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9370_untuk_memutar, 'パンの中にキムチが入っててさ、みんな首を捻ってたよ。', 'Ada kimchi di dalam roti, dan semua orang tampak bingung karenanya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9374_larut_malam, 'ハロウィンパーティーは夜更けまで続いた。', 'Pesta Halloween berlangsung hingga dini hari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9374_larut_malam, 'こんな夜更けに来られても困るよ。', 'Ini menempatkanku pada posisi yang sulit ketika kamu muncul selarut ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9374_larut_malam, '「また会おうな！」そう言ってコウイチは夜更けの静けさに消えていった。', '"Ayo bertemu lagi!" Dengan kata-kata itu, Koichi menghilang ke dalam keheningan larut malam.');

  -- 4. PREREQUISITES
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1346_balik, id FROM items WHERE type = 'radical' AND (slug = '114' OR id = '114') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1346_balik, id FROM items WHERE type = 'radical' AND (slug = '8767' OR id = '8767') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1346_balik, r_315_barak);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1347_raksasa, r_314_raksasa);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1348_penyimpanan, id FROM items WHERE type = 'radical' AND (slug = '62' OR id = '62') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1348_penyimpanan, id FROM items WHERE type = 'radical' AND (slug = '93' OR id = '93') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1349_anak, id FROM items WHERE type = 'radical' AND (slug = '8761' OR id = '8761') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1349_anak, id FROM items WHERE type = 'radical' AND (slug = '22' OR id = '22') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1349_anak, id FROM items WHERE type = 'radical' AND (slug = '28' OR id = '28') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1350_dingin, id FROM items WHERE type = 'radical' AND (slug = '123' OR id = '123') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1350_dingin, id FROM items WHERE type = 'radical' AND (slug = '189' OR id = '189') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1351_beku, id FROM items WHERE type = 'radical' AND (slug = '123' OR id = '123') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1351_beku, id FROM items WHERE type = 'radical' AND (slug = '224' OR id = '224') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1352_masa_bayi, id FROM items WHERE type = 'radical' AND (slug = '87' OR id = '87') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1352_masa_bayi, id FROM items WHERE type = 'radical' AND (slug = '13' OR id = '13') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1353_belum_dewasa, id FROM items WHERE type = 'radical' AND (slug = '135' OR id = '135') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1353_belum_dewasa, id FROM items WHERE type = 'radical' AND (slug = '240' OR id = '240') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1354_menghadapi, id FROM items WHERE type = 'radical' AND (slug = '60' OR id = '60') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1354_menghadapi, id FROM items WHERE type = 'radical' AND (slug = '177' OR id = '177') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1355_pameran, id FROM items WHERE type = 'radical' AND (slug = '15' OR id = '15') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1355_pameran, id FROM items WHERE type = 'radical' AND (slug = '3' OR id = '3') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1355_pameran, r_317_khusus);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1356_murni, id FROM items WHERE type = 'radical' AND (slug = '103' OR id = '103') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1356_murni, id FROM items WHERE type = 'radical' AND (slug = '120' OR id = '120') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1357_murni, id FROM items WHERE type = 'radical' AND (slug = '103' OR id = '103') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1357_murni, id FROM items WHERE type = 'radical' AND (slug = '9452' OR id = '9452') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1357_murni, id FROM items WHERE type = 'radical' AND (slug = '24' OR id = '24') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1357_murni, id FROM items WHERE type = 'radical' AND (slug = '86' OR id = '86') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1358_catatan, id FROM items WHERE type = 'radical' AND (slug = '118' OR id = '118') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1358_catatan, id FROM items WHERE type = 'radical' AND (slug = '105' OR id = '105') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1358_catatan, id FROM items WHERE type = 'radical' AND (slug = '45' OR id = '45') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1359_pasukan, id FROM items WHERE type = 'radical' AND (slug = '176' OR id = '176') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1359_pasukan, id FROM items WHERE type = 'radical' AND (slug = '8767' OR id = '8767') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1359_pasukan, id FROM items WHERE type = 'radical' AND (slug = '233' OR id = '233') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1360_menguasai, id FROM items WHERE type = 'radical' AND (slug = '75' OR id = '75') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1360_menguasai, id FROM items WHERE type = 'radical' AND (slug = '8761' OR id = '8761') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1360_menguasai, id FROM items WHERE type = 'radical' AND (slug = '60' OR id = '60') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1360_menguasai, id FROM items WHERE type = 'radical' AND (slug = '38' OR id = '38') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1361_tiket, id FROM items WHERE type = 'radical' AND (slug = '8819' OR id = '8819') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1361_tiket, id FROM items WHERE type = 'radical' AND (slug = '24' OR id = '24') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1362_wanita, id FROM items WHERE type = 'radical' AND (slug = '19' OR id = '19') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1362_wanita, id FROM items WHERE type = 'radical' AND (slug = '9391' OR id = '9391') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1363_aneh, r_326_aneh);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1364_aneh, id FROM items WHERE type = 'radical' AND (slug = '19' OR id = '19') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1364_aneh, id FROM items WHERE type = 'radical' AND (slug = '198' OR id = '198') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1365_cantik, r_318_cantik);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1366_halus, id FROM items WHERE type = 'radical' AND (slug = '99' OR id = '99') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1366_halus, id FROM items WHERE type = 'radical' AND (slug = '20' OR id = '20') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1366_halus, id FROM items WHERE type = 'radical' AND (slug = '101' OR id = '101') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1366_halus, id FROM items WHERE type = 'radical' AND (slug = '60' OR id = '60') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1367_keuntungan, id FROM items WHERE type = 'radical' AND (slug = '8767' OR id = '8767') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1367_keuntungan, id FROM items WHERE type = 'radical' AND (slug = '1' OR id = '1') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1367_keuntungan, id FROM items WHERE type = 'radical' AND (slug = '2' OR id = '2') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1367_keuntungan, id FROM items WHERE type = 'radical' AND (slug = '84' OR id = '84') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1368_menggeser, id FROM items WHERE type = 'radical' AND (slug = '135' OR id = '135') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1368_menggeser, id FROM items WHERE type = 'radical' AND (slug = '33' OR id = '33') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1369_cakupan, id FROM items WHERE type = 'radical' AND (slug = '135' OR id = '135') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1369_cakupan, id FROM items WHERE type = 'radical' AND (slug = '16' OR id = '16') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1369_cakupan, id FROM items WHERE type = 'radical' AND (slug = '48' OR id = '48') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1370_roh, id FROM items WHERE type = 'radical' AND (slug = '98' OR id = '98') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1370_roh, id FROM items WHERE type = 'radical' AND (slug = '120' OR id = '120') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1372_berbaris, id FROM items WHERE type = 'radical' AND (slug = '8767' OR id = '8767') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1372_berbaris, id FROM items WHERE type = 'radical' AND (slug = '1' OR id = '1') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1372_berbaris, id FROM items WHERE type = 'radical' AND (slug = '8768' OR id = '8768') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1373_konstitusi, id FROM items WHERE type = 'radical' AND (slug = '78' OR id = '78') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1373_konstitusi, id FROM items WHERE type = 'radical' AND (slug = '9452' OR id = '9452') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1373_konstitusi, id FROM items WHERE type = 'radical' AND (slug = '163' OR id = '163') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1373_konstitusi, id FROM items WHERE type = 'radical' AND (slug = '65' OR id = '65') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1374_rakyat, id FROM items WHERE type = 'radical' AND (slug = '137' OR id = '137') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1374_rakyat, id FROM items WHERE type = 'radical' AND (slug = '38' OR id = '38') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1374_rakyat, id FROM items WHERE type = 'radical' AND (slug = '8778' OR id = '8778') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1375_payung, id FROM items WHERE type = 'radical' AND (slug = '8764' OR id = '8764') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1375_payung, id FROM items WHERE type = 'radical' AND (slug = '9' OR id = '9') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1375_payung, id FROM items WHERE type = 'radical' AND (slug = '15' OR id = '15') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1376_pantai, id FROM items WHERE type = 'radical' AND (slug = '103' OR id = '103') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1376_pantai, id FROM items WHERE type = 'radical' AND (slug = '115' OR id = '115') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1376_pantai, id FROM items WHERE type = 'radical' AND (slug = '1' OR id = '1') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1376_pantai, id FROM items WHERE type = 'radical' AND (slug = '2' OR id = '2') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1377_menyerang, id FROM items WHERE type = 'radical' AND (slug = '93' OR id = '93') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1377_menyerang, id FROM items WHERE type = 'radical' AND (slug = '160' OR id = '160') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1377_menyerang, id FROM items WHERE type = 'radical' AND (slug = '41' OR id = '41') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1378_agresi, id FROM items WHERE type = 'radical' AND (slug = '25' OR id = '25') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1378_agresi, id FROM items WHERE type = 'radical' AND (slug = '60' OR id = '60') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1479_cantik, id FROM items WHERE type = 'radical' AND (slug = '86' OR id = '86') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1479_cantik, r_326_aneh);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1866_rawa, id FROM items WHERE type = 'radical' AND (slug = '103' OR id = '103') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1866_rawa, id FROM items WHERE type = 'radical' AND (slug = '331' OR id = '331') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_9251_menyelesaikan, id FROM items WHERE type = 'radical' AND (slug = '63' OR id = '63') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_9251_menyelesaikan, r_8908_depan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2945_belum, id FROM items WHERE type = 'kanji' AND (slug = '656' OR id = '656') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4189_untuk_mengenakan_sepatu, id FROM items WHERE type = 'kanji' AND (slug = '1075' OR id = '1075') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4666_kriteria, id FROM items WHERE type = 'kanji' AND (slug = '1191' OR id = '1191') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4666_kriteria, id FROM items WHERE type = 'kanji' AND (slug = '1200' OR id = '1200') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4746_membatasi, id FROM items WHERE type = 'kanji' AND (slug = '1248' OR id = '1248') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4746_membatasi, id FROM items WHERE type = 'kanji' AND (slug = '725' OR id = '725') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4786_tampilan_lengkap, id FROM items WHERE type = 'kanji' AND (slug = '610' OR id = '610') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4786_tampilan_lengkap, id FROM items WHERE type = 'kanji' AND (slug = '1256' OR id = '1256') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4787_latar_depan, id FROM items WHERE type = 'kanji' AND (slug = '633' OR id = '633') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4787_latar_depan, id FROM items WHERE type = 'kanji' AND (slug = '1256' OR id = '1256') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4887_lagi, id FROM items WHERE type = 'kanji' AND (slug = '1310' OR id = '1310') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4890_minggu_setelah_berikutnya, id FROM items WHERE type = 'kanji' AND (slug = '1310' OR id = '1310') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4890_minggu_setelah_berikutnya, id FROM items WHERE type = 'kanji' AND (slug = '590' OR id = '590') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4890_minggu_setelah_berikutnya, id FROM items WHERE type = 'kanji' AND (slug = '672' OR id = '672') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4933_karena_itu, id FROM items WHERE type = 'kanji' AND (slug = '1291' OR id = '1291') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4989_kabel, id FROM items WHERE type = 'kanji' AND (slug = '1300' OR id = '1300') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4989_kabel, id FROM items WHERE type = 'kanji' AND (slug = '602' OR id = '602') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5013_sangat_besar, k_1347_raksasa);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5013_sangat_besar, id FROM items WHERE type = 'kanji' AND (slug = '453' OR id = '453') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5014_raksasa, k_1347_raksasa);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5014_raksasa, id FROM items WHERE type = 'kanji' AND (slug = '444' OR id = '444') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5028_untuk_memanggil, id FROM items WHERE type = 'kanji' AND (slug = '1314' OR id = '1314') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5039_untuk_mencapai_puncak_sesuatu, id FROM items WHERE type = 'kanji' AND (slug = '1340' OR id = '1340') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5092_untuk_mundur, id FROM items WHERE type = 'kanji' AND (slug = '1319' OR id = '1319') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5105_anak_panah, id FROM items WHERE type = 'kanji' AND (slug = '526' OR id = '526') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5105_anak_panah, id FROM items WHERE type = 'kanji' AND (slug = '1283' OR id = '1283') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5107_berdampingan, k_1372_berbaris);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5107_berdampingan, id FROM items WHERE type = 'kanji' AND (slug = '936' OR id = '936') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5108_secara_paralel, k_1372_berbaris);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5108_secara_paralel, id FROM items WHERE type = 'kanji' AND (slug = '580' OR id = '580') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5109_untuk_berbaris, k_1372_berbaris);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5110_biasa, k_1372_berbaris);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5111_gelar_master, k_1360_menguasai);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5111_gelar_master, id FROM items WHERE type = 'kanji' AND (slug = '877' OR id = '877') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5112_memperbaiki, k_1360_menguasai);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5112_memperbaiki, id FROM items WHERE type = 'kanji' AND (slug = '669' OR id = '669') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5113_pelatihan, id FROM items WHERE type = 'kanji' AND (slug = '691' OR id = '691') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5113_pelatihan, k_1360_menguasai);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5114_retorik, k_1360_menguasai);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5114_retorik, id FROM items WHERE type = 'kanji' AND (slug = '981' OR id = '981') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5114_retorik, id FROM items WHERE type = 'kanji' AND (slug = '599' OR id = '599') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5115_payung, k_1375_payung);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5116_tempat_payung, k_1375_payung);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5116_tempat_payung, id FROM items WHERE type = 'kanji' AND (slug = '494' OR id = '494') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5119_anak_anak, k_1349_anak);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5119_anak_anak, id FROM items WHERE type = 'kanji' AND (slug = '833' OR id = '833') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5120_balita, k_1352_masa_bayi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5120_balita, k_1349_anak);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5121_dingin, k_1350_dingin);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5122_berkepala_dingin, k_1350_dingin);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5122_berkepala_dingin, id FROM items WHERE type = 'kanji' AND (slug = '1052' OR id = '1052') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5123_freezer, k_1350_dingin);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5123_freezer, k_1351_beku);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5123_freezer, k_1348_penyimpanan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5124_untuk_membekukan, k_1351_beku);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5125_mati_kedinginan, k_1351_beku);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5125_mati_kedinginan, id FROM items WHERE type = 'kanji' AND (slug = '617' OR id = '617') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5126_pembekuan, k_1351_beku);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5126_pembekuan, id FROM items WHERE type = 'kanji' AND (slug = '1009' OR id = '1009') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5127_menghadapi, k_1354_menghadapi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5127_menghadapi, id FROM items WHERE type = 'kanji' AND (slug = '669' OR id = '669') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5128_pembuangan, k_1354_menghadapi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5128_pembuangan, id FROM items WHERE type = 'kanji' AND (slug = '501' OR id = '501') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5130_tiket, k_1361_tiket);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5131_paspor, id FROM items WHERE type = 'kanji' AND (slug = '816' OR id = '816') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5131_paspor, k_1361_tiket);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5132_tiket_muka, id FROM items WHERE type = 'kanji' AND (slug = '633' OR id = '633') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5132_tiket_muka, id FROM items WHERE type = 'kanji' AND (slug = '587' OR id = '587') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5132_tiket_muka, k_1361_tiket);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5133_buku_tiket, id FROM items WHERE type = 'kanji' AND (slug = '569' OR id = '569') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5133_buku_tiket, id FROM items WHERE type = 'kanji' AND (slug = '703' OR id = '703') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5133_buku_tiket, k_1361_tiket);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5135_kekuatan_kreatif, id FROM items WHERE type = 'kanji' AND (slug = '1284' OR id = '1284') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5135_kekuatan_kreatif, id FROM items WHERE type = 'kanji' AND (slug = '1281' OR id = '1281') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5135_kekuatan_kreatif, id FROM items WHERE type = 'kanji' AND (slug = '447' OR id = '447') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5136_kreatif, id FROM items WHERE type = 'kanji' AND (slug = '1284' OR id = '1284') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5136_kreatif, id FROM items WHERE type = 'kanji' AND (slug = '1281' OR id = '1281') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5136_kreatif, id FROM items WHERE type = 'kanji' AND (slug = '914' OR id = '914') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5137_museum, k_1355_pameran);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5137_museum, id FROM items WHERE type = 'kanji' AND (slug = '718' OR id = '718') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5137_museum, id FROM items WHERE type = 'kanji' AND (slug = '873' OR id = '873') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5139_berjudi, k_1355_pameran);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5139_berjudi, id FROM items WHERE type = 'kanji' AND (slug = '536' OR id = '536') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5140_perbintangan, id FROM items WHERE type = 'kanji' AND (slug = '638' OR id = '638') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5140_perbintangan, id FROM items WHERE type = 'kanji' AND (slug = '1313' OR id = '1313') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5141_tidak_begitu_baik, k_1366_halus);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5141_tidak_begitu_baik, k_1364_aneh);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5142_aneh, k_1364_aneh);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5143_obat_ajaib, k_1364_aneh);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5143_obat_ajaib, id FROM items WHERE type = 'kanji' AND (slug = '997' OR id = '997') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5144_wanita, k_1362_wanita);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5144_wanita, id FROM items WHERE type = 'kanji' AND (slug = '444' OR id = '444') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5145_suami_istri, id FROM items WHERE type = 'kanji' AND (slug = '945' OR id = '945') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5145_suami_istri, k_1362_wanita);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5147_sangat_muda, k_1352_masa_bayi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5148_masa_kecil, k_1352_masa_bayi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5148_masa_kecil, id FROM items WHERE type = 'kanji' AND (slug = '546' OR id = '546') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5148_masa_kecil, id FROM items WHERE type = 'kanji' AND (slug = '662' OR id = '662') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5148_masa_kecil, id FROM items WHERE type = 'kanji' AND (slug = '530' OR id = '530') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5149_gudang, k_1348_penyimpanan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5150_brankas, id FROM items WHERE type = 'kanji' AND (slug = '602' OR id = '602') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5150_brankas, k_1348_penyimpanan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5151_garasi, id FROM items WHERE type = 'kanji' AND (slug = '562' OR id = '562') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5151_garasi, k_1348_penyimpanan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5152_untuk_memulihkan, id FROM items WHERE type = 'kanji' AND (slug = '569' OR id = '569') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5152_untuk_memulihkan, id FROM items WHERE type = 'kanji' AND (slug = '1285' OR id = '1285') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5154_mikroorganisme, k_1366_halus);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5154_mikroorganisme, id FROM items WHERE type = 'kanji' AND (slug = '850' OR id = '850') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5154_mikroorganisme, id FROM items WHERE type = 'kanji' AND (slug = '718' OR id = '718') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5155_konstitusi, k_1373_konstitusi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5155_konstitusi, id FROM items WHERE type = 'kanji' AND (slug = '949' OR id = '949') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5156_pemerintahan_konstitusional, k_1373_konstitusi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5156_pemerintahan_konstitusional, id FROM items WHERE type = 'kanji' AND (slug = '985' OR id = '985') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5157_penyerapan_total, id FROM items WHERE type = 'kanji' AND (slug = '1008' OR id = '1008') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5157_penyerapan_total, id FROM items WHERE type = 'kanji' AND (slug = '1294' OR id = '1294') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5157_penyerapan_total, id FROM items WHERE type = 'kanji' AND (slug = '1108' OR id = '1108') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5157_penyerapan_total, id FROM items WHERE type = 'kanji' AND (slug = '469' OR id = '469') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5158_bahasa_tubuh, id FROM items WHERE type = 'kanji' AND (slug = '689' OR id = '689') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5158_bahasa_tubuh, id FROM items WHERE type = 'kanji' AND (slug = '1307' OR id = '1307') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5159_furigana, id FROM items WHERE type = 'kanji' AND (slug = '1307' OR id = '1307') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5159_furigana, id FROM items WHERE type = 'kanji' AND (slug = '739' OR id = '739') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5159_furigana, id FROM items WHERE type = 'kanji' AND (slug = '544' OR id = '544') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5160_untuk_wawancara_dengan, id FROM items WHERE type = 'kanji' AND (slug = '974' OR id = '974') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5160_untuk_wawancara_dengan, id FROM items WHERE type = 'kanji' AND (slug = '1311' OR id = '1311') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5161_untuk_menembak, k_1377_menyerang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5162_menyerang, k_1378_agresi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5162_menyerang, k_1377_menyerang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5163_untuk_menyerang, k_1378_agresi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5164_besar, id FROM items WHERE type = 'kanji' AND (slug = '991' OR id = '991') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5164_besar, k_1378_agresi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5165_serangan_balasan, id FROM items WHERE type = 'kanji' AND (slug = '855' OR id = '855') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5165_serangan_balasan, k_1378_agresi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5167_pantai, k_1376_pantai);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5168_yokohama, id FROM items WHERE type = 'kanji' AND (slug = '768' OR id = '768') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5168_yokohama, k_1376_pantai);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5169_murni, k_1356_murni);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5170_membersihkan, k_1356_murni);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5170_membersihkan, k_1357_murni);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5171_terhormat, k_1357_murni);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5172_kotor, id FROM items WHERE type = 'kanji' AND (slug = '563' OR id = '563') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5172_kotor, k_1357_murni);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5173_berbicara_pada_diri_sendiri, id FROM items WHERE type = 'kanji' AND (slug = '1312' OR id = '1312') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5173_berbicara_pada_diri_sendiri, id FROM items WHERE type = 'kanji' AND (slug = '593' OR id = '593') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5174_laba, id FROM items WHERE type = 'kanji' AND (slug = '786' OR id = '786') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5174_laba, k_1367_keuntungan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5175_bermanfaat, id FROM items WHERE type = 'kanji' AND (slug = '615' OR id = '615') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5175_bermanfaat, k_1367_keuntungan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5176_kepentingan_umum, id FROM items WHERE type = 'kanji' AND (slug = '499' OR id = '499') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5176_kepentingan_umum, k_1367_keuntungan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5177_kepentingan_nasional, id FROM items WHERE type = 'kanji' AND (slug = '621' OR id = '621') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5177_kepentingan_nasional, k_1367_keuntungan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5178_untuk_bergeser, k_1368_menggeser);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5179_imigrasi, k_1368_menggeser);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5179_imigrasi, id FROM items WHERE type = 'kanji' AND (slug = '650' OR id = '650') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5180_migrasi, k_1368_menggeser);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5180_migrasi, id FROM items WHERE type = 'kanji' AND (slug = '679' OR id = '679') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5182_cakupan, k_1369_cakupan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5183_derajat, k_1369_cakupan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5183_derajat, id FROM items WHERE type = 'kanji' AND (slug = '725' OR id = '725') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5184_proses, id FROM items WHERE type = 'kanji' AND (slug = '1158' OR id = '1158') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5184_proses, k_1369_cakupan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5185_jadwal, id FROM items WHERE type = 'kanji' AND (slug = '476' OR id = '476') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5185_jadwal, k_1369_cakupan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5186_kekanak_kanakan, k_1352_masa_bayi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5186_kekanak_kanakan, k_1353_belum_dewasa);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5187_roh, k_1370_roh);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5187_roh, id FROM items WHERE type = 'kanji' AND (slug = '799' OR id = '799') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5188_presisi, k_1370_roh);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5188_presisi, id FROM items WHERE type = 'kanji' AND (slug = '725' OR id = '725') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5190_untuk_memutuskan_kontak, id FROM items WHERE type = 'kanji' AND (slug = '1371' OR id = '1371') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5192_toko_permen, id FROM items WHERE type = 'kanji' AND (slug = '1305' OR id = '1305') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5192_toko_permen, id FROM items WHERE type = 'kanji' AND (slug = '462' OR id = '462') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5192_toko_permen, id FROM items WHERE type = 'kanji' AND (slug = '724' OR id = '724') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5193_masyarakat_umum, id FROM items WHERE type = 'kanji' AND (slug = '453' OR id = '453') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5193_masyarakat_umum, k_1374_rakyat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5194_dewan_perwakilan_rakyat, k_1374_rakyat);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5194_dewan_perwakilan_rakyat, id FROM items WHERE type = 'kanji' AND (slug = '1114' OR id = '1114') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5194_dewan_perwakilan_rakyat, id FROM items WHERE type = 'kanji' AND (slug = '744' OR id = '744') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5195_kotak_tabungan, id FROM items WHERE type = 'kanji' AND (slug = '1290' OR id = '1290') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5195_kotak_tabungan, id FROM items WHERE type = 'kanji' AND (slug = '602' OR id = '602') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5195_kotak_tabungan, id FROM items WHERE type = 'kanji' AND (slug = '972' OR id = '972') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5196_relatif, id FROM items WHERE type = 'kanji' AND (slug = '1088' OR id = '1088') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5196_relatif, id FROM items WHERE type = 'kanji' AND (slug = '1287' OR id = '1287') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5196_relatif, id FROM items WHERE type = 'kanji' AND (slug = '914' OR id = '914') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5198_balik, k_1346_balik);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5199_efek_berlawanan, k_1346_balik);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5199_efek_berlawanan, id FROM items WHERE type = 'kanji' AND (slug = '1267' OR id = '1267') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5199_efek_berlawanan, id FROM items WHERE type = 'kanji' AND (slug = '1005' OR id = '1005') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5200_untuk_melawan, k_1346_balik);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5201_paradoks, k_1346_balik);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5201_paradoks, id FROM items WHERE type = 'kanji' AND (slug = '1026' OR id = '1026') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5202_kesalahan_besar, id FROM items WHERE type = 'kanji' AND (slug = '453' OR id = '453') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5202_kesalahan_besar, id FROM items WHERE type = 'kanji' AND (slug = '701' OR id = '701') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5202_kesalahan_besar, id FROM items WHERE type = 'kanji' AND (slug = '1220' OR id = '1220') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5203_kantor_pos, id FROM items WHERE type = 'kanji' AND (slug = '1299' OR id = '1299') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5203_kantor_pos, id FROM items WHERE type = 'kanji' AND (slug = '808' OR id = '808') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5203_kantor_pos, id FROM items WHERE type = 'kanji' AND (slug = '684' OR id = '684') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5204_nomor_pos, id FROM items WHERE type = 'kanji' AND (slug = '1299' OR id = '1299') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5204_nomor_pos, id FROM items WHERE type = 'kanji' AND (slug = '808' OR id = '808') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5204_nomor_pos, id FROM items WHERE type = 'kanji' AND (slug = '696' OR id = '696') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5204_nomor_pos, id FROM items WHERE type = 'kanji' AND (slug = '533' OR id = '533') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5205_kotak_pos, id FROM items WHERE type = 'kanji' AND (slug = '1299' OR id = '1299') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5205_kotak_pos, id FROM items WHERE type = 'kanji' AND (slug = '808' OR id = '808') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5205_kotak_pos, id FROM items WHERE type = 'kanji' AND (slug = '972' OR id = '972') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5206_rekaman_suara, k_1358_catatan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5206_rekaman_suara, id FROM items WHERE type = 'kanji' AND (slug = '606' OR id = '606') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5207_pendaftaran, id FROM items WHERE type = 'kanji' AND (slug = '845' OR id = '845') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5207_pendaftaran, k_1358_catatan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5208_catatan, id FROM items WHERE type = 'kanji' AND (slug = '664' OR id = '664') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5208_catatan, k_1358_catatan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5209_tentara, id FROM items WHERE type = 'kanji' AND (slug = '954' OR id = '954') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5209_tentara, k_1359_pasukan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5210_pasukan, k_1359_pasukan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5211_tentara, id FROM items WHERE type = 'kanji' AND (slug = '1000' OR id = '1000') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5211_tentara, k_1359_pasukan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5212_pendaftaran, id FROM items WHERE type = 'kanji' AND (slug = '445' OR id = '445') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5212_pendaftaran, k_1359_pasukan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5262_untuk_sakit, id FROM items WHERE type = 'kanji' AND (slug = '1318' OR id = '1318') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5265_pil_tidur, id FROM items WHERE type = 'kanji' AND (slug = '1333' OR id = '1333') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5265_pil_tidur, id FROM items WHERE type = 'kanji' AND (slug = '1332' OR id = '1332') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5265_pil_tidur, id FROM items WHERE type = 'kanji' AND (slug = '997' OR id = '997') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5284_untuk_merayu, id FROM items WHERE type = 'kanji' AND (slug = '1327' OR id = '1327') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5284_untuk_merayu, id FROM items WHERE type = 'kanji' AND (slug = '1326' OR id = '1326') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5388_untuk_mengimpor, id FROM items WHERE type = 'kanji' AND (slug = '1221' OR id = '1221') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5388_untuk_mengimpor, id FROM items WHERE type = 'kanji' AND (slug = '445' OR id = '445') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5390_kami, id FROM items WHERE type = 'kanji' AND (slug = '1294' OR id = '1294') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5390_kami, id FROM items WHERE type = 'kanji' AND (slug = '856' OR id = '856') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5392_secara_langsung, id FROM items WHERE type = 'kanji' AND (slug = '630' OR id = '630') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5392_secara_langsung, id FROM items WHERE type = 'kanji' AND (slug = '1311' OR id = '1311') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5392_secara_langsung, id FROM items WHERE type = 'kanji' AND (slug = '914' OR id = '914') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5502_cantik, k_1479_cantik);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5502_cantik, k_1365_cantik);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5751_jatuh, id FROM items WHERE type = 'kanji' AND (slug = '1548' OR id = '1548') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5839_untuk_terkulai, id FROM items WHERE type = 'kanji' AND (slug = '1519' OR id = '1519') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6734_rawa, k_1866_rawa);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6736_tanah_rawa, k_1866_rawa);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6736_tanah_rawa, id FROM items WHERE type = 'kanji' AND (slug = '608' OR id = '608') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7468_maju, id FROM items WHERE type = 'kanji' AND (slug = '748' OR id = '748') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7468_maju, k_1377_menyerang);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7717_sepupu, id FROM items WHERE type = 'kanji' AND (slug = '1293' OR id = '1293') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7717_sepupu, id FROM items WHERE type = 'kanji' AND (slug = '515' OR id = '515') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7717_sepupu, id FROM items WHERE type = 'kanji' AND (slug = '588' OR id = '588') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8540_kerinduan, id FROM items WHERE type = 'kanji' AND (slug = '2429' OR id = '2429') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8683_pantai, k_1376_pantai);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8683_pantai, id FROM items WHERE type = 'kanji' AND (slug = '651' OR id = '651') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8719_karena, id FROM items WHERE type = 'kanji' AND (slug = '582' OR id = '582') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8719_karena, id FROM items WHERE type = 'kanji' AND (slug = '1291' OR id = '1291') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8757_untuk_membuat_kesalahan, id FROM items WHERE type = 'kanji' AND (slug = '701' OR id = '701') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8757_untuk_membuat_kesalahan, id FROM items WHERE type = 'kanji' AND (slug = '1220' OR id = '1220') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8758_pergerakan, k_1368_menggeser);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8758_pergerakan, id FROM items WHERE type = 'kanji' AND (slug = '827' OR id = '827') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9075_pencairan, id FROM items WHERE type = 'kanji' AND (slug = '1150' OR id = '1150') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_9075_pencairan, k_1351_beku);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_9252_menjadi_lengkap, k_9251_menyelesaikan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9359_kutub_utara, id FROM items WHERE type = 'kanji' AND (slug = '517' OR id = '517') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9359_kutub_utara, id FROM items WHERE type = 'kanji' AND (slug = '1340' OR id = '1340') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9370_untuk_memutar, id FROM items WHERE type = 'kanji' AND (slug = '9361' OR id = '9361') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9374_larut_malam, id FROM items WHERE type = 'kanji' AND (slug = '622' OR id = '622') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9374_larut_malam, id FROM items WHERE type = 'kanji' AND (slug = '1431' OR id = '1431') LIMIT 1;

END $$;
