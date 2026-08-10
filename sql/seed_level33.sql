-- ====================================================
-- KaniGani — Seed Data Level 33 (v2, relasional)
-- Auto-generated with Indonesian Slugs
-- ====================================================

DO $$
DECLARE
  -- ============ RADICAL IDs (Level 33) ============
  r_344_selang UUID; r_345_menerima UUID; r_347_gudang UUID; r_382_lebar UUID; r_428_sepatu_bot UUID; r_8794_karang UUID; r_8830_sirup UUID;

  -- ============ KANJI IDs (Level 33) ============
  k_1513_kesederhanaan UUID; k_1515_majalah UUID; k_1516_jendela UUID; k_1517_tidak UUID; k_1518_otot UUID; k_1521_menyatakan UUID; k_1522_dihormati UUID; k_1523_loyalitas UUID; k_1524_memperpanjang UUID; k_1525_memanipulasi UUID; k_1526_menghormati UUID; k_1527_mata_pencaharian UUID; k_1528_abu UUID; k_1529_mematangkan UUID; k_1530_berbeda UUID; k_1531_kaisar UUID; k_1532_tumpukan UUID; k_1533_pasir UUID; k_1535_gula UUID; k_1536_memasok UUID; k_1537_paru_paru UUID; k_1538_pengarang UUID; k_1539_uap UUID; k_1540_gudang UUID; k_1541_pakaian UUID; k_1542_belakang UUID; k_1543_bermacam_macam UUID; k_1544_menyewa UUID; k_8858_isu UUID; k_8964_selangkangan UUID; k_8994_perut_kembung UUID; k_9388_sedikit UUID; k_9393_menghasilkan_uang UUID; k_9445_keponakan_laki_laki UUID;

  -- ============ VOCABULARY IDs (Level 33) ============
  v_2873_tahunan UUID; v_3825_kebun UUID; v_4277_untuk_menghalangi UUID; v_4639_aliran_gunung UUID; v_4927_kemerosotan UUID; v_5002_untuk_menangkap UUID; v_5466_untuk_menyelamatkan UUID; v_5484_imitasi UUID; v_5598_sederhana UUID; v_5611_untuk_mengedit UUID; v_5612_penyedot_debu UUID; v_5613_untuk_berjalan_jalan UUID; v_5614_sangat_indah UUID; v_5615_kecuali UUID; v_5617_makam UUID; v_5621_majalah UUID; v_5622_jendela_tiket UUID; v_5623_jendela UUID; v_5624_tidak UUID; v_5625_penyangkalan UUID; v_5626_penolakan UUID; v_5627_urat_daging UUID; v_5628_otot UUID; v_5634_periklanan UUID; v_5635_proklamasi UUID; v_5636_dihormati UUID; v_5637_menghormati UUID; v_5638_setia UUID; v_5639_nasihat UUID; v_5640_untuk_memperluas UUID; v_5641_pembesaran UUID; v_5642_perbesar UUID; v_5643_untuk_memanipulasi UUID; v_5644_kesucian UUID; v_5645_operasi UUID; v_5646_senam UUID; v_5647_sebutan_kehormatan UUID; v_5648_untuk_hidup UUID; v_5649_mentah UUID; v_5650_abu UUID; v_5651_abu_abu UUID; v_5652_asbak UUID; v_5653_untuk_matang UUID; v_5654_kata_majemuk UUID; v_5655_mentah UUID; v_5656_mematangkan UUID; v_5657_untuk_berbeda UUID; v_5658_kelainan UUID; v_5659_jenis_kelamin_berbeda UUID; v_5660_beda_arti UUID; v_5661_kaisar_jepang UUID; v_5662_putra_mahkota UUID; v_5663_keluarga_kekaisaran UUID; v_5664_keluarga_kekaisaran UUID; v_5665_untuk_menumpuk UUID; v_5667_gula UUID; v_5670_fruktosa UUID; v_5671_bebas_gula UUID; v_5672_untuk_memasok UUID; v_5673_penyimpanan UUID; v_5674_pembayaran UUID; v_5675_paru_paru UUID; v_5676_kanker_paru_paru UUID; v_5677_sakit_paru_paru UUID; v_5678_luar_biasa UUID; v_5679_pengarang UUID; v_5680_menulis UUID; v_5681_menjadi_panas_dan_lengket UUID; v_5682_uap UUID; v_5683_gudang UUID; v_5684_lemari_es UUID; v_5685_jizo UUID; v_5686_pakaian UUID; v_5687_peralatan UUID; v_5688_samaran UUID; v_5689_pakaian UUID; v_5690_pintu_belakang UUID; v_5691_untuk_menusuk_dari_belakang UUID; v_5692_pengkhianatan UUID; v_5693_gang UUID; v_5694_belakang UUID; v_5695_tuan_tuan UUID; v_5696_bermacam_macam UUID; v_5697_sewa_rumah UUID; v_5698_persewaan UUID; v_5699_kapal_barang UUID; v_5700_tepung_terigu UUID; v_5707_perampok UUID; v_5709_mengejutkan UUID; v_5710_untuk_membersihkan UUID; v_5711_untuk_mengeringkan_sesuatu UUID; v_5712_untuk_menyebar UUID; v_5713_untuk_memisahkan_sesuatu UUID; v_5936_sederhana UUID; v_6737_rawa UUID; v_7226_lampu UUID; v_7499_editor UUID; v_7775_selebaran UUID; v_8687_lengan UUID; v_8724_abnormal UUID; v_8816_hari_libur UUID; v_8865_isu UUID; v_8978_selangkangan UUID; v_8979_sendi_pinggul UUID; v_9004_perut_kembung UUID; v_9005_argumen_yang_tidak_logis UUID; v_9043_talas UUID; v_9064_tukang_bonceng UUID; v_9065_sopan_santun UUID; v_9273_alami UUID; v_9342_untuk_menghapus UUID; v_9371_untuk_diselamatkan UUID; v_9398_margin_sempit UUID; v_9442_untuk_menghasilkan_untung UUID; v_9446_keponakan_laki_laki UUID; v_9487_pojok_jalan UUID;

BEGIN

  DELETE FROM items WHERE level = 33;

  -- 1. RADICALS
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '間', 'selang', 33, 1, 'Radikal ini sama dengan kanji. Artinya <radikal>interval</radikal>.')
    RETURNING id INTO r_344_selang;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '享', 'menerima', 33, 2, 'Tutup mulut seorang anak kecil dan apa yang akan Anda <radikal>terima</radikal>? Paling banter, tatapan tidak terkesan dari anak malang itu. Jika Anda ingin menerima hal-hal baik, menutup mulut anak-anak bukanlah cara yang tepat.')
    RETURNING id INTO r_345_menerima;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '蔵', 'gudang', 33, 3, 'Bungamu menjadi pelayanmu. Anda menanamnya, Anda menyiraminya, Anda membesarkannya, lalu Anda menebangnya dan menaruhnya di <radikal>gudang</radikal> Anda. Mereka melakukan apa yang Anda inginkan karena mereka menjadi hamba ANDA, bukan sebaliknya. Itu sebabnya Anda bisa menyuruh mereka duduk di gudang tempat mereka menunggu sampai Anda datang untuk memakannya.')
    RETURNING id INTO r_347_gudang;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '広', 'lebar', 33, 4, 'Radikal ini sama dengan kanji. Artinya <radikal>lebar</radikal>.')
    RETURNING id INTO r_382_lebar;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '堇', 'sepatu-bot', 33, 5, 'Ada sesuatu yang terbuat dari kulit dengan sedikit kotoran di bagian bawahnya. Ini adalah <radikal>boot</radikal>!')
    RETURNING id INTO r_428_sepatu_bot;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '丞', 'karang', 33, 6, 'Di dalam air ada duri di tanah. Itu <radikal>karang</radikal>. Karang mungkin terlihat cantik, tetapi jika Anda terpeleset ke dalam air dan menginjaknya, Anda akan tergores. Hal itu sangat bagus.')
    RETURNING id INTO r_8794_karang;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '喿', 'sirup', 33, 7, 'Produk yang dihasilkan pohon? Itu <radikal>sirup</radikal>. Sirup maple yang enak, misalnya. Mmmm!')
    RETURNING id INTO r_8830_sirup;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_344_selang, 'Selang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_345_menerima, 'Menerima', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_347_gudang, 'Gudang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_382_lebar, 'Lebar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_428_sepatu_bot, 'sepatu bot', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_8794_karang, 'Karang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_8830_sirup, 'Sirup', true, true);

  -- 2. KANJIS
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '簡', 'kesederhanaan', 33, 8, 'Anda menyejajarkan batang <radical>bambu</radical> dengan <radical>interval</radical> yang sama di antara masing-masing batang. Pola ini menciptakan kesan <kanji>kesederhanaan</kanji>.', '<kanji>kesederhanaan</kanji> seperti itulah yang selalu dituntut oleh Jenghis <reading>Khan</reading> (かん). Segala sesuatu yang dia putuskan didasarkan pada kesederhanaan.')
    RETURNING id INTO k_1513_kesederhanaan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '誌', 'majalah', 33, 9, 'Untuk <radical>mengatakan</radical> apa yang ada di <radical>samurai</radical>, Anda memulai sebuah <kanji>majalah</kanji>. Anda berkeliling menulis dan mewawancarai semua samurai sehingga Anda dapat membagikan apa yang mereka katakan kepada semua orang yang ingin membaca!', 'Sayangnya, <kanji>majalah</kanji> Anda membantu samurai <reading>shee</reading>p (し) menemukan samurai lain... dan membunuh mereka. Tidak ada satu pun samurai yang ingin berbagi perasaannya dengan majalah Anda lagi, oh tidak!')
    RETURNING id INTO k_1515_majalah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '窓', 'jendela', 33, 10, '<radikal>lubang</radikal> yang mengarah ke <radikal>pribadi</radikal> <radikal>jantung</radikal> rumah Anda adalah <kanji>jendela</kanji>. Atau mungkin itu hanya jendela jiwamu, dan bukan rumahmu. Seperti puisi yang orang katakan.', 'Anda menyadari bahwa banyak sekali orang yang melihat ke <kanji>jendela</kanji> Anda dan melihat semua hal pribadi Anda. Ini membuatmu <read>gila</reading> (まど)! Hak apa yang mereka miliki untuk mengetahui pikiran dan keinginan pribadi Anda?!')
    RETURNING id INTO k_1516_jendela;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '否', 'tidak', 33, 11, '<radikal>Tidak</radikal> <radikal>Mulut</radikal> mengatakan “<kanji>tidak</kanji>”. Apa lagi yang Anda harapkan dari sesuatu yang disebut “Bukan Mulut”? Si Bukan Mulut akan selalu berkata “tidak”, apa pun pertanyaannya.', 'Anda bertanya kepada Bukan Mulut apakah ia takut pada <membaca>dia</reading>at (ひ). The Not Mouth berkata, “<kanji>tidak</kanji>”. Jadi Anda membakar Not Mouth. Not Mouth kemudian berteriak, “NONONONONONONONONOOOOOOO~!” Sepertinya seseorang tidak bisa menahan panasnya.')
    RETURNING id INTO k_1517_tidak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '筋', 'otot', 33, 12, '<radikal>bambu</radikal> ini menyerap <radikal>kekuatan</radikal> <radikal>bulan</radikal>, dan Anda menginginkan kekuatan itu ada di tubuh Anda, jadi Anda memasukkannya melalui pembedahan ke dalam tubuh Anda untuk menggantikan <kanji>otot</kanji> dan <kanji>tendon</kanji> Anda.', '<kanji>otot</kanji> dan <kanji>tendon</kanji> spesial Anda telah menjadi terkenal dan <reading>Raja</reading>g (きん) Inggris telah meminta agar Anda hadir di istananya! Sepertinya dia ingin Anda mengajari ahli bedah tukang cukurnya bagaimana Anda mendapatkan otot baru.')
    RETURNING id INTO k_1518_otot;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '宣', 'menyatakan', 33, 13, 'Seseorang naik ke <radical>atap</radical> dari <radical>tanah</radical> ketika <radical>fajar</radical> tiba untuk <kanji>mewartakan</kanji> bahwa hari baru telah dimulai! Mereka menyatakan hal ini sekuat tenaga!', 'Benda yang naik ke atap untuk <kanji>menyatakan</kanji> bahwa hari baru telah tiba adalah <reading>cen</reading>taur (せん). Ohoho, apa menurutmu aku akan bilang itu ayam jago? Salah! Centaur lebih tinggi dari manusia dan ayam jantan, jadi ketika mereka naik ke atap dengan kaki kudanya, mereka dapat melihat fajar dimulai sebelum orang lain.')
    RETURNING id INTO k_1521_menyatakan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '尊', 'dihormati', 33, 14, '<radikal>tanduk</radikal> makhluk peminum <radikal>alkohol</radikal> memiliki <radikal>ukuran</radikal> yang sangat besar sehingga mereka <kanji>dihormati</kanji> di seluruh dunia. Tanduknya dihormati karena ukuran dan potensinya. Tanduknya bisa digunakan untuk pengobatan, jadi sangat berharga, tanduk monster beralkohol itu.', 'Alasan mengapa kamu begitu tertarik dengan tanduk <kanji>yang dihormati</kanji> ini adalah karena <reading>anak</reading> (そん) kamu sedang sakit dan kamu membutuhkan salah satu dari tanduk yang dihormati ini untuk dijadikan obat bagi putramu. Hanya dengan kekuatan tanduk yang dihormati Anda dapat menyelamatkan nyawa putra Anda.')
    RETURNING id INTO k_1522_dihormati;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '忠', 'loyalitas', 33, 15, 'Mereka yang berada di <radical>tengah</radical> <radical>hati</radical> Anda adalah orang-orang yang paling <kanji>loyal</kanji> Anda terhadapnya. Bagian tengah hatimu adalah tempat yang paling suci dan istimewa bagi orang-orang, jadi masuk akal jika orang yang kamu simpan di tengah hatimu adalah orang yang paling kamu setiai.', 'Anda membayangkan <read>Chew</reading>bacca (ちゅう), bukan? TIDAK? Ya, seharusnya begitu. Chewbacca layak mendapatkan <kanji>kesetiaan</kanji> semua orang. Chewbacca sangat setia kepada Anda, jadi dia pantas mendapatkan kesetiaan Anda kembali.')
    RETURNING id INTO k_1523_loyalitas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '拡', 'memperpanjang', 33, 16, 'Untuk membuat <radical>jari</radikal> <radikal>lebar</radikal> Anda <kanji>meregangkan</kanji> mereka.', 'Saat Anda <kanji>mengulurkan</kanji> jari Anda, seekor <reading>ayam</reading> (かく) berlari lewat dan langsung berlari ke arah jari tersebut. T-COCK!')
    RETURNING id INTO k_1524_memperpanjang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '操', 'memanipulasi', 33, 17, 'Jika seseorang <radical>jarinya</radical> berada di <radical>sirup</radical> Anda, itu hanyalah cara lain untuk mengatakan bahwa mereka <kanji>memanipulasi</kanji>d Anda. Karena hanya orang berlendir yang memanipulasi orang lain, sehingga jari-jarinya berlendir dan lengket karena terlumuri sirup karena mengacaukan hidupmu.

Kata ini juga memiliki arti lain: <kanji>kesucian</kanji>. Bayangkan saja jika seseorang ingin Anda menjaga kesucian dan mereka menyebut seks. ketika seseorang "memasukkan jarinya ke dalam sirup Anda". Itu akan sangat efektif, bukan? Karena itu seperti, sangat menjijikkan.', 'Jika Anda ingin <kanji>memanipulasi</kanji> orang lain, hal ini akan memiliki efek permanen pada <reading>sou</reading>l (そう) Anda. Menjadi manipulatif tidaklah keren. Dan jiwamu akan menderita selamanya karenanya.')
    RETURNING id INTO k_1525_memanipulasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '敬', 'menghormati', 33, 18, 'Menulis <radical>puisi</radikal> tentang <radikal>musim dingin</radikal> adalah satu-satunya cara untuk mendapatkan <kanji>rasa hormat</kanji> dari penyair lain.', 'Setelah Anda mendapatkan <kanji>rasa hormat</kanji> mereka, Anda mendapatkan <reading>ca</reading>ke (けい)!')
    RETURNING id INTO k_1526_menghormati;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '暮', 'mata-pencaharian', 33, 19, '<radikal>rumah kaca</radikal> sudah sangat baik jika dikaitkan dengan penghidupan tanaman. Namun tambahkan <radical>matahari</radical> ke dalam persamaan tersebut dan Anda akan mendapatkan sesuatu yang sangat bermanfaat untuk tanaman. <kanji>Mata pencaharian</kanji> mereka akan luar biasa sekarang!', 'Entah dari mana, <reading>Bo</reading>bo (ぼ) si badut pencuri terkenal mulai memetik tanaman, mengakhiri <kanji>mata pencaharian</kanji> mereka. Bobo membutuhkan bunga untuk aksi badutnya, jadi dia menggunakan mata pencaharian bunga tersebut untuk menunjang penghidupannya sendiri.')
    RETURNING id INTO k_1527_mata_pencaharian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '灰', 'abu', 33, 20, 'Di <radical>tebing</radical>, <radical>api</radical> membakar menjadi <kanji>abu</kanji>. Abunya kemudian berhamburan dari tebing, dan mengikuti angin kemanapun ia pergi.', '<kanji>abu</kanji> menginspirasi Anda untuk menulis <reading>hai</reading>ku (はい). Dengan menggunakan abunya Anda menulis haiku di atas batu untuk dinikmati semua orang.')
    RETURNING id INTO k_1528_abu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '熟', 'mematangkan', 33, 21, 'Jika Anda <radical>menerima</radical> sesuatu yang dapat dimakan, susunlah dalam <radical>lingkaran</radical> dan <radical>rebus</radical>. Dengan begitu, tanaman akan <kanji>matang</kanji> lebih cepat.', 'Setelah semua yang Anda terima telah <kanji>matang</kanji>, Anda duduk kembali di dekat kotak <reading>juke</reading> (じゅく) Anda dan memakannya. Jukebox mengatur suasana hati, membuat suguhan matang terasa dua kali lebih manis.')
    RETURNING id INTO k_1529_mematangkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '異', 'berbeda', 33, 22, 'Gabungkan <radical>sawah</radical> <radical>bersama</radical> dengan padi lainnya dan Anda akan melihat betapa <kanji>perbedaannya</kanji>. Saat Anda berkendara atau naik kereta melewati pedesaan, mungkin tampak seolah-olah semua sawah yang kabur itu sama saja, namun bisa saja berbeda sedikit!', 'Untuk melihat <kanji>perbedaan</kanji> sawah, Anda memerlukan pandangan mata <reading>ea</reading>gle (い). Sulit untuk melihat dari bawah, jadi terbanglah ke langit seperti elang dan lihatlah sawah bersama-sama.')
    RETURNING id INTO k_1530_berbeda;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '皇', 'kaisar', 33, 23, 'Selain komentar sosial, <radikal>kulit putih</radikal> <radikal>raja</radikal> adalah raja yang mengenakan pakaian serba putih. Secara tradisional, ini adalah seseorang yang lebih baik dari seorang raja. <kanji>kaisar</kanji>!', 'Siapakah <kanji>kaisar</kanji>? Itu adalah <membaca>こう</membaca>いち. こういち kaisar berdiri di depan rakyatnya.')
    RETURNING id INTO k_1531_kaisar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '盛', 'tumpukan', 33, 24, 'Jika kamu <radikal>menjadi</radikal> sebuah <radikal>piring</radikal>, aku akan <kanji>menumpuk</kanji> makanan untukmu. Dengan tumpukan sebesar itu, semua orang akan menganggap Anda <kanji>makmur</kanji>.', 'Kamu sangat <kanji>makmur</kanji> sehingga kamu menggunakan <reading>sa</reading>ber (せい) untuk memotong tumpukan makanan dan memasukkan potongan-potongan itu ke dalam mulut piringmu. Faktanya, seluruh keluargamu menggunakan pedang khususmu untuk memotong dan memakanmu. Pisau biasa tidak akan mampu menembus semua makanan ini!')
    RETURNING id INTO k_1532_tumpukan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '砂', 'pasir', 33, 25, 'Jika Anda menggiling <radical>batu</radical> menjadi lebih dari <radical>beberapa</radical> keping, itu akan menjadi <kanji>pasir</kanji>. Batu yang cukup pecah akan menjadi pasir, dan Anda mengambil beberapa butir di tangan Anda.', 'Setelah memecah batu menjadi <kanji>pasir</kanji>, Anda mengambil pasir khusus <reading>sa</reading>w (さ). Beberapa bagian masih terlalu tebal, jadi Anda harus menggunakan gergaji pasir sekarang.')
    RETURNING id INTO k_1533_pasir;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '糖', 'gula', 33, 26, 'Tarik beberapa <radical>beras</radical> ke <radical>kanopi</radical> di mana Anda menggunakan <radical>stick</radical> untuk menumbuknya ke dalam <radical>mulut</radical> <radical>Wolverine</radical>. Kikis pasta nasi yang sudah dihaluskan, dan voila — Anda telah membuat <kanji>gula</kanji>!', 'Anda mempelajari cara membuat <kanji>gula</kanji> semacam ini di <reading>とう</reading>きょう. Anda menemukan sugar sensei khusus dan mereka memperkenalkan Anda pada semua metode rahasia yang Anda ketahui sekarang.')
    RETURNING id INTO k_1535_gula;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '納', 'memasok', 33, 27, '<radical>utas</radikal> yang Anda miliki <radikal>di dalam</radikal> adalah seluruh <kanji>persediaan</kanji> Anda. Saat Anda sedang menjahit di luar dan kehabisan, masuk saja ke dalam, periksa persediaan Anda, dan pilih yang baru.', 'Anda memiliki <kanji>persediaan</kanji> ini karena <reading>Tidak</reading>stradamus (のう) memiliki prediksi yang mengatakan Anda akan melakukannya. Dan jika Anda tidak menyimpan persediaan benang yang cukup di dalam, Anda akan kehabisan benang.')
    RETURNING id INTO k_1536_memasok;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '肺', 'paru-paru', 33, 28, 'Ada <radical>bulan</radical> dan <radical>kota</radical> di dalam <kanji>paru-paru</kanji> Anda. Di dalam paru-parumu ada sebuah kota dan diatas kota itu terdapat sebuah bulan. Pemandangan yang indah, namun juga sangat aneh. Bulan dan kota biasanya tidak berada di dalam paru-paru.', 'Memiliki bulan dan kota di dalam <kanji>paru-paru</kanji> Anda menginspirasi Anda untuk menulis <reading>hai</reading>ku (はい). Mungkin kota dan bulan hanyalah metafora. Apa pun yang terjadi, haiku adalah cara terbaik untuk melakukan berbagai hal di sini.')
    RETURNING id INTO k_1537_paru_paru;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '著', 'pengarang', 33, 29, 'Jika Anda ingin memberikan <radical>bunga</radical> kepada <radical>seseorang</radical>, berikan kepada <kanji>penulis</kanji>. Penulis sangat menyukai bunga, karena membantu mereka memikirkan bahasa berbunga-bunga yang dapat mereka gunakan agar terdengar cerdas dalam buku mereka.', 'Sayangnya, <kanji>penulis</kanji> alergi menyentuh bunga, jadi mereka memegangnya dengan sepasang <read>cho</reading>pstick (ちょ). Mereka menempelkannya sangat dekat ke wajah mereka dengan sumpit, sehingga mereka masih dapat menggunakannya untuk memikirkan kata-kata mewah yang dibuat oleh penulis.')
    RETURNING id INTO k_1538_pengarang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '蒸', 'uap', 33, 30, 'Jika Anda mengambil <radical>bunga</radical> dari beberapa <radical>karang</radikal> dan <radical>merebus</radikal>, <kanji>uap</kanji> akan keluar.', 'Saat Anda melihat <kanji>uap</kanji> keluar dari bunga karang, seseorang muncul di belakang Anda. Itu <read>Joe</reading> (じょう), buruh tani besar. “Apakah kamu mengukus koral?” dia bertanya. “Menciumnya dari jarak satu mil. Saya suka mengukus karang.”')
    RETURNING id INTO k_1539_uap;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '蔵', 'gudang', 33, 31, 'Makna kanji radikal <radikal>gudang</radikal> dan <kanji>gudang</kanji> adalah sama. Jika Anda tahu radikalnya, Anda tahu kanjinya!', 'Anda memiliki <kanji>gudang</kanji>. Di dalamnya adalah tempat Anda menyimpan semua <reading>zo</reading>mbies (ぞう) Anda.')
    RETURNING id INTO k_1540_gudang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '装', 'pakaian', 33, 32, 'Jika Anda melihat <radical>es</radical> menggantung di <radical>pakaian</radical> seorang <radical>samurai</radical>, jangan khawatir, itu hanyalah bagian dari <kanji>pakaian</kanji> musim dinginnya. Samurai harus bepergian dan bertarung dalam segala kondisi, jadi masuk akal jika mereka memiliki pakaian untuk setiap musim.', '<kanji>Pakaian</kanji> seperti ini penting karena mencerminkan <membaca>jiwa</reading> (そう) Anda. Sang samurai mengenakan pakaian yang terbuat dari es karena itulah yang dirasakan hatinya juga: membeku karena dia harus bertarung dalam cuaca musim dingin yang mengerikan ini.')
    RETURNING id INTO k_1541_pakaian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '裏', 'belakang', 33, 33, 'Ada <radical>penutup</radical> di <radical>desa</radical> Anda, jadi Anda <radical>menendang</radical> bagian <kanji>bagian belakangnya</kanji> untuk melihat apa yang ada di <kanji>bagian bawahnya</kanji>.', 'Ternyata <kanji>bagian belakang</kanji> desamu ditutupi dengan <reading>ura</reading>nium (うら). Eureka! Kalian semua akan menjadi kaya!')
    RETURNING id INTO k_1542_belakang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '諸', 'bermacam-macam', 33, 34, 'Mereka <radikal>mengatakan</radikal> <radikal>seseorang</radikal> dengan <kanji>berbagai</kanji> bakat itu penting. Berbagai bakat dapat mencakup berbicara berbagai bahasa jadi jika Anda adalah seseorang yang mengetahui berbagai bahasa, Anda dapat mengatakan hal-hal yang dapat dipahami oleh berbagai orang.', 'Anda sangat pandai berbicara <kanji>berbagai</kanji> bahasa sehingga Anda memutuskan untuk menggunakan <reading>sho</reading>w (しょ). Di acara itu, Anda mengatakan banyak hal dalam berbagai bahasa dan semua orang terkesan.')
    RETURNING id INTO k_1543_bermacam_macam;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '賃', 'menyewa', 33, 35, '<radical>pemimpin</radikal> yang merupakan <radikal>raja</radikal> dari setiap <radikal>kerang</radikal> menetapkan <kanji>sewa</kanji> untuk semua orang. Jika Anda menyewa rumah di kerajaan Raja Kerang, harga sewanya akan ditentukan oleh pemimpin besar kerang itu sendiri.', 'Jika kamu tidak punya cukup kerang untuk membayar <kanji>sewa</kanji>mu, King Shellfish akan meninjumu di <reading>dagu</reading> (ちん).')
    RETURNING id INTO k_1544_menyewa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '噂', 'isu', 33, 36, 'Di sebelah <radical>mulut</radical> Anda terdapat <radical>sirip</radical> yang bereaksi terhadap <radical>alkohol</radical>. Jika Anda melebihi <radikal>takaran</radikal> alkohol tertentu, mereka akan mulai bertebaran, yang membuat Anda menyebarkan <kanji>rumor</kanji> dan <kanji>gosip</kanji> secara tak terkendali.', 'Sirip yang mengepak membuatmu tidak bisa berkata-kata, tapi itu tidak menghentikanmu untuk menyebarkan <kanji>rumor</kanji> dan <kanji>gosip</kanji>: "<reading>Ooo</reading> <reading>whassa</reading>t (うわさ) Aku mendengar tentang si fulan berselingkuh?!"')
    RETURNING id INTO k_8858_isu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '股', 'selangkangan', 33, 37, 'Anda menyimpan <radical>bulan</radical> <radical>senjata</radical> Anda di <kanji>selangkangan</kanji> Anda. Di mana lagi Anda akan menyimpannya?', '<kanji>selangkangan</kanji> Anda memiliki senjata bulan, dan itu sangat berguna bagi Anda, jadi Anda berharap jika suatu hari Anda memiliki <read>子 </reading> (こ), mereka juga akan memilikinya.')
    RETURNING id INTO k_8964_selangkangan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '屁', 'perut-kembung', 33, 38, 'Gunakan <radical>bendera</radikal> untuk <radikal>membandingkan</radikal> <kanji>perut kembung</kanji> Anda.', 'Bagaimana cara membaca <kanji>perut kembung</kanji>? <membaca>Heh</reading>(へ)..heh..heh..heheheh. Anda tidak bisa TIDAK menertawakan kata perut kembung.

Perhatikan bahwa beberapa kamus salah mencantumkan おなら sebagai bacaan untuk kanji ini. Meskipun おなら juga berarti "perut kembung" (seperti dalam "kentut"), Anda hanya akan menemukan bacaan ini dalam hiragana, karena kanji hanya dapat dibaca sebagai へ.')
    RETURNING id INTO k_8994_perut_kembung;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '僅', 'sedikit', 33, 39, 'Seorang <radical>pemimpin</radikal> yang mengenakan <radikal>sepatu bot</radikal> memiliki <kanji>sedikit</kanji> keunggulan dibandingkan pemimpin yang tidak mengenakan sepatu bot. Memang tidak banyak, tapi keuntungan <kanji>sedikit</kanji> lebih baik daripada tidak sama sekali.', 'Mendapatkan <kanji>sedikit</kanji> keunggulan atas pemimpin lainnya memungkinkan pemimpin Anda menjadi <reading>saudara</reading>g (きん).')
    RETURNING id INTO k_9388_sedikit;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '儲', 'menghasilkan-uang', 33, 40, 'Apa yang mungkin <radical>pemimpin</radical> <radical>katakan</radical> kepada <radical>seseorang</radical> hingga membuat sedikit <radical>drop</radical> keringat muncul di keningnya? "Pergilah <kanji>hasilkan uang</kanji> untukku." Ketika seorang pemimpin mempercayakan seseorang untuk melaksanakan rencana terbarunya untuk menghasilkan uang, orang tersebut akan merasakan banyak tekanan untuk berhasil.', 'Jadi, apa rencana besar pemimpin Anda untuk <kanji>menghasilkan uang</kanji>? Tentu saja, meminta Anda <read>memotong</reading> (もう). Hanya sedikit skema penghasil uang yang lebih teruji dan benar dibandingkan dengan pendekatan lama "memotong rumput tetangga Anda seharga dua puluh dolar". Rumput tumbuh kembali selamanya, jadi pada dasarnya rumput adalah sapi perah bagi alam — moooow, paham?')
    RETURNING id INTO k_9393_menghasilkan_uang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '甥', 'keponakan-laki-laki', 33, 41, 'Tidak ada orang yang lebih penuh dengan <radikal>kehidupan</radikal> selain <radikal>manusia</radikal> kecil yang Anda sebut sebagai <kanji>keponakan</kanji> Anda.', '<kanji>Keponakan</kanji>mu begitu lincah sehingga kamu perlu berteriak "<reading>Oi</reading> (おい)!" padanya kadang-kadang ketika dia datang berkunjung. "Oi! Keponakan! Berhenti menjilat jendela! Oi! Berhenti membuang kaus kakiku ke toilet!"')
    RETURNING id INTO k_9445_keponakan_laki_laki;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1513_kesederhanaan, 'Kesederhanaan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1515_majalah, 'Majalah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1516_jendela, 'Jendela', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1517_tidak, 'TIDAK', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1518_otot, 'Otot', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1518_otot, 'Urat daging', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1521_menyatakan, 'Menyatakan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1522_dihormati, 'Dihormati', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1523_loyalitas, 'Loyalitas', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1524_memperpanjang, 'Memperpanjang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1525_memanipulasi, 'Memanipulasi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1525_memanipulasi, 'Kesucian', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1526_menghormati, 'Menghormati', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1527_mata_pencaharian, 'Mata pencaharian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1528_abu, 'Abu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1528_abu, 'Abu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1529_mematangkan, 'Mematangkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1530_berbeda, 'Berbeda', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1531_kaisar, 'Kaisar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1532_tumpukan, 'Tumpukan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1532_tumpukan, 'Makmur', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1532_tumpukan, 'Tumpukan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1533_pasir, 'Pasir', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1535_gula, 'Gula', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1536_memasok, 'Memasok', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1537_paru_paru, 'Paru-paru', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1538_pengarang, 'Pengarang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1539_uap, 'Uap', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1540_gudang, 'Gudang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1541_pakaian, 'Pakaian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1542_belakang, 'Belakang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1542_belakang, 'Bawah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1542_belakang, 'Balik', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1543_bermacam_macam, 'Bermacam-macam', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1544_menyewa, 'Menyewa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_8858_isu, 'Isu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_8858_isu, 'Gosip', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_8964_selangkangan, 'selangkangan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_8964_selangkangan, 'Kunci paha', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_8964_selangkangan, 'Garpu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_8994_perut_kembung, 'Perut kembung', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_8994_perut_kembung, 'Gas', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_9388_sedikit, 'Sedikit', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_9388_sedikit, 'Sedikit', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_9393_menghasilkan_uang, 'Menghasilkan uang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_9445_keponakan_laki_laki, 'Keponakan laki-laki', true, true);

  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1513_kesederhanaan, 'かん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1515_majalah, 'し', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1516_jendela, 'まど', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1516_jendela, 'そう', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1517_tidak, 'ひ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1517_tidak, 'いな', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1517_tidak, 'いや', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1518_otot, 'きん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1518_otot, 'すじ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1521_menyatakan, 'せん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1521_menyatakan, 'のたま', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1522_dihormati, 'そん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1522_dihormati, 'とうと', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1522_dihormati, 'たっと', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1523_loyalitas, 'ちゅう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1524_memperpanjang, 'かく', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1524_memperpanjang, 'ひろ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1525_memanipulasi, 'そう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1525_memanipulasi, 'あやつ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1525_memanipulasi, 'みさお', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1526_menghormati, 'けい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1526_menghormati, 'うやま', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1527_mata_pencaharian, 'ぼ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1527_mata_pencaharian, 'く', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1528_abu, 'はい', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1528_abu, 'かい', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1529_mematangkan, 'じゅく', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1529_mematangkan, 'う', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1530_berbeda, 'い', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1530_berbeda, 'こと', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1531_kaisar, 'こう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1531_kaisar, 'おう', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1532_tumpukan, 'せい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1532_tumpukan, 'じょう', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1532_tumpukan, 'も', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1532_tumpukan, 'さか', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1533_pasir, 'さ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1533_pasir, 'しゃ', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1533_pasir, 'すな', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1535_gula, 'とう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1536_memasok, 'のう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1536_memasok, 'なっ', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1536_memasok, 'おさ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1536_memasok, 'な', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1537_paru_paru, 'はい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1538_pengarang, 'ちょ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1538_pengarang, 'いちじる', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1538_pengarang, 'あらわ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1539_uap, 'じょう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1539_uap, 'む', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1540_gudang, 'ぞう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1540_gudang, 'くら', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1541_pakaian, 'そう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1541_pakaian, 'しょう', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1541_pakaian, 'よそお', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1542_belakang, 'うら', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1542_belakang, 'り', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1543_bermacam_macam, 'しょ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1543_bermacam_macam, 'もろ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1544_menyewa, 'ちん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_8858_isu, 'うわさ', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_8858_isu, 'そん', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_8964_selangkangan, 'こ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_8964_selangkangan, 'また', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_8964_selangkangan, 'もも', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_8994_perut_kembung, 'へ', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_8994_perut_kembung, 'ひ', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_9388_sedikit, 'きん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_9388_sedikit, 'わず', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_9393_menghasilkan_uang, 'もう', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_9445_keponakan_laki_laki, 'おい', 'kunyomi', true, true);

  -- 3. VOCABULARIES
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '年次', 'tahunan', 33, 42, '<kanji>tahun</kanji> yang <kanji>berikutnya</kanji> akan segera tiba. Apa yang akan Anda lakukan di tahun berikutnya seperti yang Anda lakukan tahun ini juga? Apa yang Anda lakukan yang <vocabulary>tahunan</vocabulary>?

年次 adalah istilah formal yang biasanya digunakan dalam lingkungan bisnis, seperti dalam 年次報告書 (laporan tahunan) atau 年次休暇 (cuti tahunan).', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Tahunan, Tahunan')
    RETURNING id INTO v_2873_tahunan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '園', 'kebun', 33, 43, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.

Kata ini umumnya digunakan pada nama taman, seperti エデンの園 dan 桜の園. Kata ini juga digunakan dalam frasa seperti 学びの園, yang berarti "sekolah" dan mempunyai konotasi sebagai surga untuk belajar.', 'Kata ini menggunakan bacaan kun''yomi, yang kanjinya tidak Anda pelajari, jadi inilah mnemonik untuk membantu Anda:

<vocabulary>taman</vocabulary> manakah yang merupakan Taman Eden? <membaca>その</reading> taman! Taman di sebelah Anda itu adalah Taman Eden!

Namun, Anda juga bisa menggunakan on''yomi yang telah Anda pelajari. Jika menggunakan on''yomi dan digunakan sebagai kata yang berdiri sendiri, biasanya kata tersebut merujuk pada suatu institusi, seperti 幼稚園.', 'Kebun')
    RETURNING id INTO v_3825_kebun;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '妨げる', 'untuk-menghalangi', 33, 44, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri artinya <kanji>menghalangi</kanji>, lalu apa versi vocab verbanya? Itu adalah <vocabulary>untuk menghalangi</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Anda mencoba <vocabulary>menghalangi</vocabulary> seorang wanita yang menghampiri Anda (lihat kanji). Saat dia mendekat, dia mengaum, "Saya <reading>Sama(n)tha</reading>!" (さまた) Biarkan aku lewat!" Jangan berdebat dengan Samanthas. Minggir!', 'Untuk Menghalangi, Untuk Mencegah, Untuk menghambat')
    RETURNING id INTO v_4277_untuk_menghalangi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '沢', 'aliran-gunung', 33, 45, 'Kanji dan kata tersebut memiliki arti yang sama dengan <vocabulary>rawa</vocabulary>, namun kata ini terutama digunakan untuk mengartikan <vocabulary>aliran gunung</vocabulary>. Bayangkan saja, air untuk rawa harus datang dari suatu tempat bukan? Bermula dari pegunungan dan mengalir ke rawa-rawa di lembah. Siklus hidup aliran gunung menjadi rawa!', 'Karena kata ini terdiri dari satu kanji, kemungkinan besar menggunakan bacaan kun''yomi. Anda tidak mempelajari bacaan ini, jadi inilah mnemonik untuk membantu Anda mengingat: Awal kata <vocabulary>swamp</vocabulary> sebenarnya sangat mirip dengan bacaan kata ini. さわ = "swa"? Menurut saya itu cukup dekat untuk membuat mnemonik muncul di kepala Anda.', 'Aliran Gunung, Rawa')
    RETURNING id INTO v_4639_aliran_gunung;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '不振', 'kemerosotan', 33, 46, 'Jika ada sesuatu yang <kanji>tidak</kanji> <kanji>bergetar</kanji>, mungkin itu sedang <vocabulary>merosot</vocabulary>. Jika tidak ada yang bergetar, segalanya pasti <vocabulary>lamban</vocabulary>.

不振 digunakan pada saat keadaan lebih lambat atau lebih buruk dari biasanya. Misalnya, 業績不振 adalah saat bisnis tidak berjalan sebaik biasanya, dan 食欲不振 adalah saat Anda tidak ingin makan sebanyak biasanya.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kemerosotan, Lamban')
    RETURNING id INTO v_4927_kemerosotan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '捕える', 'untuk-menangkap', 33, 47, 'Kanji itu sendiri berarti <kanji>menangkap</kanji>, dan 捕える berarti <vocabulary>to capture</vocabulary> atau <vocabulary>to catch</vocabulary>.

捕える dan 捕まえる keduanya berarti "menangkap", tetapi 捕える cenderung terdengar lebih berbobot dan bersifat sastra — Anda lebih mungkin melihatnya di buku yang berbicara tentang penangkapan jenderal musuh yang melarikan diri daripada mendengarnya dari seorang anak yang baru saja menangkap belalang.', 'Anda telah mempelajari 捕まえる dan 捕まる, yang menggunakan kanji yang sama, namun kata ini sebenarnya memiliki cara baca yang sangat berbeda. Berikut ini mnemonik untuk membantu Anda mengingatnya:

Anda perlu <vocabulary>untuk menangkap</vocabulary> seseorang karena mereka mencuri salinan <read>Torah</reading> (とら) Anda. Mereka mencoba melarikan diri dengan perahu, namun untungnya semua pembelajaran Taurat Anda membuahkan hasil dan Anda dapat <kosakata>menangkap</vocabulary> mereka dengan membelah lautan dan menangkap mereka dengan berjalan kaki.', 'Untuk Menangkap, Untuk Menangkap, Untuk Memahami')
    RETURNING id INTO v_5002_untuk_menangkap;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '救う', 'untuk-menyelamatkan', 33, 48, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>menyelamatkan</kanji> jadi versi kosakata kata kerjanya adalah <vocabulary>to save</vocabulary> atau <vocabulary>to save</vocabulary>.

救う adalah kata yang relatif formal untuk menyelamatkan seseorang dari situasi berbahaya atau sulit, seperti 命を救う (menyelamatkan nyawa seseorang) atau 心を救う (menyelamatkan seseorang secara emosional). Biasanya digunakan untuk konteks yang sangat penting atau bermakna, seperti pahlawan yang menyelamatkan dunia atau orang yang diselamatkan dari penderitaan mendalam atau kesulitan ekstrem.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Ketika bencana terjadi, tempat pertama yang harus <vocabulary>menyelamatkan</vocabulary> orang adalah <reading>sekolah</reading>l (すく) . Kamu perlu <vocabulary>untuk menyelamatkan</vocabulary> semua anak sekolah yang lugu dan menggemaskan! Bisakah Anda bayangkan betapa marahnya semua orang jika Anda membolos sekolah dan pergi menyelamatkan orang di firma hukum atau semacamnya? Tidak, sekolah jelas merupakan tempat yang harus Anda selamatkan terlebih dahulu.', 'Untuk Menyelamatkan, Untuk Menyimpan')
    RETURNING id INTO v_5466_untuk_menyelamatkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '真似', 'imitasi', 33, 49, 'Anda mengambil <kanji>realitas</kanji> dan mencoba <kanji>menyerupai</kanji> itu. Untuk melakukan hal ini, Anda harus melakukan <vocabulary>imitasi</vocabulary>, <vocabulary>mimicry</vocabulary>, atau <vocabulary>impersonation</vocabulary>.', 'Kata ini menggunakan bacaan kun''yomi untuk 真 dan bacaan tidak beraturan untuk 似. Anda sudah mempelajari cara membaca 真, namun berikut ini ada mnemonik untuk membantu Anda dalam 似:

Apa yang Anda lakukan <vocabulary>imitasi</vocabulary>? Seekor kuda! Anda berlari kencang <reading>meringkik</reading>ing (ね) sekuat tenaga! Itu tiruan yang cukup bagus.', 'Imitasi, Peniruan, Peniruan')
    RETURNING id INTO v_5484_imitasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '簡易', 'sederhana', 33, 50, 'Memiliki <kanji>kesederhanaan</kanji> dan <kanji>mudah</kanji>. Apapun itu, <vocabulary>sederhana</vocabulary> dan <vocabulary>mudah</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Sederhana, Mudah')
    RETURNING id INTO v_5598_sederhana;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '編集する', 'untuk-mengedit', 33, 51, '編集 adalah <kanji>edit</kanji>, jadi versi kata kerjanya adalah <vocabulary>to edit</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Untuk Mengedit')
    RETURNING id INTO v_5611_untuk_mengedit;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '掃除機', 'penyedot-debu', 33, 52, '<kanji>pembersih</kanji> (掃除) <kanji>mesin</kanji> adalah <vocabulary>penyedot debu</vocabulary>. Sedot kotoran itu!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Penyedot debu')
    RETURNING id INTO v_5612_penyedot_debu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '散歩する', 'untuk-berjalan-jalan', 33, 53, '散歩 adalah "berjalan-jalan". Jadikan itu menjadi kata kerja dan Anda harus <vocabulary>jalan-jalan</vocabulary> atau <vocabulary>jalan-jalan</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri. Mengetahui 散歩 juga akan membantu.', 'Untuk Berjalan-jalan, Untuk Berjalan-jalan')
    RETURNING id INTO v_5613_untuk_berjalan_jalan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '華々しい', 'sangat-indah', 33, 54, '華やか berarti "mencolok". Sekarang kami menggandakannya, menjadikannya lebih mencolok. Jika Anda membuat sesuatu yang cukup mencolok, itu akan menjadi <vocabulary>cantik</vocabulary>, namun juga menjadi cukup <vocabulary>flamboyan</vocabulary>. Sangat, sangat, sangat flamboyan.', 'Bacaannya berasal dari 華やか. Perhatikan はな kedua menjadi ばな, menjadi <reading>はなばな</reading>しい.', 'Sangat indah, Semarak, Cemerlang, Luar biasa')
    RETURNING id INTO v_5614_sangat_indah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '除いて', 'kecuali', 33, 55, '除く adalah "mengecualikan." Ini adalah bentuk te, dan artinya "kecuali". Jadi, seperti "tolong beli semuanya kecuali brokoli", karena siapa yang mau brokoli?', 'Bacaannya berasal dari 除く. Itu hanya bentuk te saja.', 'Kecuali')
    RETURNING id INTO v_5615_kecuali;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '墓場', 'makam', 33, 56, '<kanji>kuburan</kanji> <kanji>lokasi</kanji> adalah tempat di mana terdapat kuburan. Itu adalah <vocabulary>kuburan</vocabulary>.

Kata ini lebih lugas dan informal daripada 墓地, jadi penggunaan 墓場 untuk pemakaman sebenarnya mungkin dianggap tidak sopan. Ini biasanya digunakan dalam frasa seperti ゆりかごから墓場まで (dari buaian sampai liang kubur) atau 墓場まで持っていく (membawa rahasia ke liang lahat).', 'Kata ini menggunakan kun''yomi untuk kedua kanji, yang cukup tidak biasa, tetapi kuburan adalah tempat yang tidak biasa dan istimewa. Anda telah mempelajari kedua bacaan ini sebelumnya, jadi Anda seharusnya bisa membacanya sendiri, namun berikut ini pengingat untuk berjaga-jaga:

<vocabulary>kuburan</vocabulary> ini hanya untuk <reading>hacker</reading> (はか) yang mengucapkan "<reading>baa</reading>" (ば). Dengan kata lain, domba hacker sudah mati. Banyak dari mereka adalah tipe anti kemapanan yang membocorkan informasi rahasia ke publik, lalu meninggal secara misterius. Saat ini, peretas di seluruh dunia mengunjungi kuburan ini dan berdoa di depan kuburan untuk memberikan penghormatan. Beristirahatlah dengan bulu domba, kawan! Baa!', 'Makam')
    RETURNING id INTO v_5617_makam;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '雑誌', 'majalah', 33, 57, '<kanji>Acak</kanji> <kanji>majalah</kanji> hampir semua majalah. Hanya sekumpulan hal acak di dalamnya, menjadikannya <vocabulary>majalah</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Majalah')
    RETURNING id INTO v_5621_majalah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '窓口', 'jendela-tiket', 33, 58, '<kanji>jendela</kanji> <kanji>mulut</kanji> adalah tempat Anda membeli tiket di luar jendela. Anda tahu bagaimana ada jendela-jendela yang berlubang, atau jendela itu sendiri yang berlubang? Itulah <vocabulary>jendela tiket</vocabulary> yang saya bicarakan.', 'Bacaannya adalah bacaan untuk 窓 dan bacaan untuk 口.', 'Jendela Tiket, Konter Tiket, Staf, Pelayanan pelanggan')
    RETURNING id INTO v_5622_jendela_tiket;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '窓', 'jendela', 33, 59, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan bacaan kanji yang Anda pelajari.', 'Jendela')
    RETURNING id INTO v_5623_jendela;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '否', 'tidak', 33, 60, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.

Perhatikan bahwa 否 (いな) sangat formal dan agak kuno. Saat ini, kata ini paling sering digunakan dalam ekspresi 〜か否か (apakah… atau <vocabulary>tidak</vocabulary>).', 'Karena kata ini terdiri dari satu kanji, kemungkinan besar menggunakan bacaan kun''yomi. Anda tidak mempelajari bacaan ini, jadi inilah mnemonik untuk membantu Anda: 

Daripada mengatakan "tidak" Anda mengatakan "na," dan bukannya mengatakan "na" Anda mengatakan <reading>いな</reading>. 

Perhatikan bahwa 否 juga bisa dibaca いや, yang merupakan cara umum untuk mengatakan “tidak” dalam bahasa Jepang modern, namun bacaan tersebut hampir selalu ditulis dalam kana.', 'TIDAK, Bukan')
    RETURNING id INTO v_5624_tidak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '否定', 'penyangkalan', 33, 61, '<kanji>Tidak</kanji>! Saya tidak akan <kanji>menentukan</kanji> itu. Faktanya, saya <vocabulary>menyangkal</vocabulary> itu. Ini adalah <vocabulary>penolakan</vocabulary> saya.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Penyangkalan, Membantah, Penyangkalan')
    RETURNING id INTO v_5625_penyangkalan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '否決', 'penolakan', 33, 62, '"<kanji>Tidak</kanji>" adalah <kanji>keputusan</kanji> yang telah saya buat. Maaf, tapi ini adalah <vocabulary>penolakan</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Penolakan, Menolak')
    RETURNING id INTO v_5626_penolakan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '筋', 'urat-daging', 33, 63, 'Kanji dan kata-katanya sama persis. Itu berarti keduanya juga memiliki arti yang sama, setidaknya pada sisi <kanji>tendon</kanji>.', 'Karena kata ini terdiri dari satu kanji, kemungkinan besar menggunakan bacaan kun''yomi. Anda tidak mempelajari bacaan ini, jadi inilah mnemonik untuk membantu Anda: 

Anda mengalami cedera <vocabulary>tendon</vocabulary> yang parah, sehingga Anda tidak bisa berjalan lagi. Anda sangat kesal sehingga Anda menyalahkan Yesus. Jadi, pergilah dan <reading>menuntut Yesus atas cedera tendon ini, dan menang di pengadilan, dengan luar biasa.', 'Urat daging, Otot')
    RETURNING id INTO v_5627_urat_daging;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '筋肉', 'otot', 33, 64, '<kanji>otot</kanji> <kanji>daging</kanji> Anda adalah <vocabulary>otot</vocabulary> Anda.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Otot')
    RETURNING id INTO v_5628_otot;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '宣伝', 'periklanan', 33, 65, 'Jika Anda ingin <kanji>memproklamirkan</kanji> dan <kanji>menyebarkan</kanji> sesuatu kepada sekelompok orang, lalu cara apa yang lebih baik untuk melakukannya selain <vocabulary>mengiklankan</vocabulary>? Yup, kata ini mengacu pada berbagai jenis <vocabulary>promosi</vocabulary>, seperti produk, jasa, atau ide. Atau, ketika menyampaikan semua hal yang diproklamasikan oleh seorang pemimpin, Anda juga bisa menyebutnya sebagai <vocabulary>propaganda</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Periklanan, Promosi, Propaganda')
    RETURNING id INTO v_5634_periklanan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '宣言', 'proklamasi', 33, 66, 'Anda <kanji>menyatakan</kanji> sesuatu dengan <kanji>mengucapkannya</kanji>. Ini adalah <vocabulary>proklamasi</vocabulary> atau <vocabulary>deklarasi</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Proklamasi, Pernyataan')
    RETURNING id INTO v_5635_proklamasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '尊い', 'dihormati', 33, 67, 'Ini adalah kanji tunggal dengan い di akhir, artinya Anda tahu itu mungkin kata sifat. Apa bentuk kata sifat dari <kanji>dihormati</kanji>? Itu juga <vocabulary>dihormati</vocabulary>!', 'Kamu <vocabulary>dihormati</vocabulary> karena <reading>Toe toe</reading> (とうと) yang merupakan ujung jari kakimu. Aneh memang, tapi sepertinya orang-orang menyukainya.', 'Dihormati, Bangsawan, Berharga')
    RETURNING id INTO v_5636_dihormati;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '尊敬', 'menghormati', 33, 68, 'Anda <kanji>dihormati</kanji> dan Anda mendapat <kanji>rasa hormat</kanji> dari saya. Inilah <vocabulary>rasa hormat</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Menghormati')
    RETURNING id INTO v_5637_menghormati;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '忠実', 'setia', 33, 69, 'Aku punya <kanji>kesetiaan</kanji> padamu, jadi aku selalu memberitahumu <kanji>kebenaran</kanji>. Aku sangat <vocabulary>setia</vocabulary> dan <vocabulary>berbakti</vocabulary> padamu!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Setia, Setia, Setia')
    RETURNING id INTO v_5638_setia;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '忠告', 'nasihat', 33, 70, '<kanji>kesetiaan</kanji> <kanji>pengumuman</kanji> adalah jenis pengumuman yang Anda berikan kepada seseorang yang Anda setiai. Bagi orang seperti ini, pengumuman Anda akan datang dalam bentuk <vocabulary>nasihat</vocabulary> atau mungkin <vocabulary>teguran</vocabulary>, jika Anda kesal dengan apa yang telah mereka lakukan.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Nasihat, Pengingatan')
    RETURNING id INTO v_5639_nasihat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '拡がる', 'untuk-memperluas', 33, 71, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>memperluas</kanji> jadi versi kosakata kata kerjanya adalah <vocabulary>to extend</vocabulary>.

Apakah kanjinya terlihat familier, mungkin mirip 広い? 拡がる adalah padanan yang kurang umum dan lebih sempit dari 広がる. Ini digunakan untuk menggambarkan pembesaran atau perluasan ukuran, luas, atau jangkauan sesuatu.', 'Kata ini memiliki bacaan yang sama dengan 広い. Artinya 拡がる dibaca sebagai <reading>ひろ</reading>がる.', 'Untuk Memperluas, Untuk Menyebar')
    RETURNING id INTO v_5640_untuk_memperluas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '拡張', 'pembesaran', 33, 72, 'Silakan <kanji>perpanjang</kanji> dan <kanji>regangkan</kanji>. Begitulah cara kami melakukan <vocabulary>pembesaran</vocabulary>, <vocabulary>ekspansi</vocabulary>, dan <vocabulary>ekstensi</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri. Tentu saja, untuk sekedar jorok, orang yang mengarang kata ini memutuskan untuk menggunakan kanji yang dibaca かく. Biksu tua jorok yang bisa melihat masa depan dan berbicara bahasa Inggris, ugh.', 'Pembesaran, Ekspansi, Perpanjangan')
    RETURNING id INTO v_5641_pembesaran;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '拡大', 'perbesar', 33, 73, '<kanji>Perluas</kanji> lensanya dengan bagus dan <kanji>besar</kanji> untuk <vocabulary>memperbesar</vocabulary> subjeknya. Itulah <vocabulary>pembesaran</vocabulary>, <vocabulary>pembesaran</vocabulary>, dan <vocabulary>ekspansi</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Perbesar, Pembesaran, Pembesaran, Ekspansi')
    RETURNING id INTO v_5642_perbesar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '操る', 'untuk-memanipulasi', 33, 74, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>memanipulasi</kanji>, jadi versi kosakata kata kerjanya adalah <vocabulary>to memanipulasi</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: Pria yang menggunakan <reading>seni mata</reading> (あやつ) bukanlah pria hebat, dia adalah tipe pria yang mungkin mencoba <vocabulary>memanipulasi</vocabulary> Anda melalui hipnosis mata.', 'Untuk Memanipulasi')
    RETURNING id INTO v_5643_untuk_memanipulasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '操', 'kesucian', 33, 75, 'Ini mengambil arti kedua dari kanji yang Anda pelajari, <vocabulary>chastity</vocabulary>.', 'Siapa yang melakukan hal <vocabulary>kesucian</vocabulary>? <reading>missa itu, oh</reading> (みさお), ya benar.', 'Kesucian')
    RETURNING id INTO v_5644_kesucian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '操作', 'operasi', 33, 76, 'Jika Anda <kanji>memanipulasi</kanji> hal-hal yang Anda <kanji>buat</kanji>, Anda berada dalam <vocabulary>operasi</vocabulary> hal-hal tersebut.

Hal ini tidak hanya mengacu pada pengoperasian perangkat dan mesin, namun juga <vocabulary>manipulasi</vocabulary> berbagai elemen, seperti pasar, harga saham, dan banyak lagi, dengan tujuan untuk memajukan kepentingan seseorang.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Operasi, Penanganan, Manipulasi')
    RETURNING id INTO v_5645_operasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '体操', 'senam', 33, 77, 'Ambil <kanji>tubuh</kanji> Anda dan <kanji>manipulasi</kanji> untuk berolahraga. Ini adalah <vocabulary>Senam</vocabulary> atau <vocabulary>senam</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Senam, Olahraga senam')
    RETURNING id INTO v_5646_senam;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '敬語', 'sebutan-kehormatan', 33, 78, '<kanji>Hormat</kanji> <kanji>bahasa</kanji> adalah apa yang Anda ucapkan kepada seseorang yang Anda hormati dan ingin Anda tingkatkan. Anda dapat melakukannya dengan menggunakan jenis bahasa Jepang ini, yang dikenal sebagai bahasa <vocabulary>honorific</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Sebutan kehormatan, Jangka Waktu Hormat, Keigo')
    RETURNING id INTO v_5647_sebutan_kehormatan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '暮らす', 'untuk-hidup', 33, 79, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>mata pencaharian</kanji>. Versi kata kerjanya adalah <vocabulary>to live</vocabulary>. Namun sebenarnya, ini bukanlah "hidup" secara harfiah. Ini lebih seperti <vocabulary>menjalani hidup</vocabulary>, bukan sekadar menjalaninya.', 'Jika seseorang ingin <vocabulary>menjalani hidupnya</vocabulary>, itu pasti <read>Ku</reading>blai Khan (く) yang hebat. Dia menaklukkan sebagian besar dunia dan sangat tangguh.', 'Untuk Hidup, Untuk Menjalani Hidup Seseorang')
    RETURNING id INTO v_5648_untuk_hidup;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '野暮', 'mentah', 33, 80, '<kanji>bidang</kanji> <kanji>mata pencaharian</kanji> begitu semarak! Lihatlah segala sesuatu yang melompat-lompat. Ini sangat segar, baru, dan mengagumkan! Meski begitu, karena begitu hidup, segar, dan baru, bahasa ini cukup <vocabulary>tidak halus</vocabulary> dan <vocabulary>rustic</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Mentah, Pedesaan, Bodoh')
    RETURNING id INTO v_5649_mentah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '灰', 'abu', 33, 81, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji.', 'Abu, Abu')
    RETURNING id INTO v_5650_abu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '灰色', 'abu-abu', 33, 82, '<kanji>Abu</kanji> <kanji>warna</kanji> cenderung berwarna abu-abu, bukan begitu? Hal ini menjadikan kata ini <vocabulary>abu-abu</vocabulary> (atau <vocabulary>abu-abu</vocabulary>, tergantung dari mana Anda berasal).', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji kun''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Abu-abu, Warna Abu-abu')
    RETURNING id INTO v_5651_abu_abu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '灰皿', 'asbak', 33, 83, '<kanji>abu</kanji> <kanji>piring</kanji> adalah piring yang Anda gunakan untuk abu. Itu adalah <vocabulary>asbak</vocabulary>.', 'Bacaannya adalah dua kosakata, 灰 dan 皿, yang disatukan. Ingatlah bahwa 皿 membuat rendaku menjadi ざら.', 'Asbak')
    RETURNING id INTO v_5652_asbak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '熟れる', 'untuk-matang', 33, 84, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>matang</kanji> jadi versi kosakata kata kerjanya adalah <vocabulary>to mematangkan</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik yang dapat membantu Anda: Jika sesuatu <vocabulary>menjadi matang</vocabulary> terlalu banyak, semuanya menjadi kotor, dan Anda semua berkata, "<reading>ew</reading> (う), itu menjijikkan."', 'Untuk matang')
    RETURNING id INTO v_5653_untuk_matang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '熟語', 'kata-majemuk', 33, 85, '<kanji>Bahasa</kanji>yang matang adalah bahasa yang memiliki waktu untuk matang seperti anggur berkualitas. Kita berbicara tentang kata-kata dewasa yang bernuansa: <vocabulary>kata majemuk</vocabulary> atau <vocabulary>kanji compound</vocabulary>. Anda tahu hal "<vocabulary>jukugo</vocabulary>" yang sering kita bicarakan? Itu dia!

熟語 mengacu pada kata-kata Jepang yang terdiri dari dua atau lebih kanji — hal-hal seperti 天気, 学校, dan bahkan kata 熟語 itu sendiri. Anda juga dapat melihatnya dalam konteks 四字熟語 (よじじゅくご) — senyawa kanji empat karakter yang sering kali memiliki makna idiomatik atau pepatah. 

Di sekolah Jepang, 熟語 terkadang merujuk pada idiom atau pasangan kata umum dalam bahasa asing. Namun jika berbicara tentang bahasa Jepang sendiri, 熟語 berarti gabungan kanji — kanji digabungkan sehingga maknanya dapat dimatangkan menjadi satu kata kecil yang rapi!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Kata Majemuk, Senyawa Kanji, Jukugo')
    RETURNING id INTO v_5654_kata_majemuk;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '未熟', 'mentah', 33, 86, 'Sesuatu yang <kanji>belum</kanji> <kanji>matang</kanji>, adalah <vocabulary>mentah</vocabulary>. Kata ini sering digunakan secara kiasan untuk mengatakan bahwa seseorang <vocabulary>belum dewasa</vocabulary> atau <vocabulary>tidak berpengalaman</vocabulary>, jadi Anda akan sering menemukan penggunaan tersebut!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Mentah, Belum dewasa, Tidak berpengalaman, Belum Pandai')
    RETURNING id INTO v_5655_mentah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '成熟', 'mematangkan', 33, 87, '<kanji>menjadi</kanji> <kanji>matang(n)</kanji> berarti <vocabulary>matang</vocabulary> dan <vocabulary>matang</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Mematangkan, Dewasa, Kematangan, Kematangan')
    RETURNING id INTO v_5656_mematangkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '異なる', 'untuk-berbeda', 33, 88, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>berbeda</kanji> sehingga versi kosakata kata kerjanya adalah <vocabulary>to diferred</vocabulary>.', 'Lihatlah <reading>mantel</reading>mu (こと), sekarang lihat milikku. Mereka berbeda. Jika Anda melihatnya, <kosakata>mereka akan berbeda</vocabulary>.', 'Untuk Berbeda')
    RETURNING id INTO v_5657_untuk_berbeda;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '異状', 'kelainan', 33, 89, 'Ini <kanji>berbeda</kanji> dari <kanji>kondisi</kanji> normal, membuatnya aneh. Ini adalah <vocabulary>abnormalitas</vocabulary>. Ada <vocabulary>ada yang salah</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Kelainan, Ada masalah')
    RETURNING id INTO v_5658_kelainan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '異性', 'jenis-kelamin-berbeda', 33, 90, 'Seseorang yang <kanji>berbeda</kanji> dalam <kanji>gender</kanji> dengan Anda memiliki <vocabulary>gender berbeda</vocabulary>. Kata ini sering digunakan untuk mengartikan <kosakata>lawan jenis</vocabulary> dalam pengertian laki-laki sebagaimana dipandang oleh perempuan dan sebaliknya.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Jenis Kelamin Berbeda, Lawan Jenis Kelamin')
    RETURNING id INTO v_5659_jenis_kelamin_berbeda;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '異義', 'beda-arti', 33, 91, 'Gagasan saya tentang <kanji>kebenaran</kanji> <kanji>berbeda</kanji> dengan gagasan Anda. Sungguh, itu hanya <vocabulary>berbeda arti</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Beda Arti')
    RETURNING id INTO v_5660_beda_arti;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '天皇', 'kaisar-jepang', 33, 92, '<kanji>kaisar</kanji> Jepang seharusnya berasal dari <kanji>surga</kanji>, sehingga kaisar surga ini menjadi <vocabulary>kaisar Jepang</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda hanya perlu mengingat bahwa 皇 dibaca sebagai のう di sini. Anda baru tahu bahwa Anda tidak akan pernah bisa menjadi Kaisar Jepang karena Anda bukan orang Jepang. <membaca>TIDAKOOOOOOOOOOOO</baca>~ (のう).', 'Kaisar Jepang, Kaisar')
    RETURNING id INTO v_5661_kaisar_jepang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '皇太子', 'putra-mahkota', 33, 93, '<kanji>anak</kanji> <kanji>gemuk</kanji> <kanji>kaisar</kanji> adalah <vocabulary>putra mahkota</vocabulary>, bukan karena dia gemuk, tetapi karena dia adalah anak kaisar.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'putra Mahkota')
    RETURNING id INTO v_5662_putra_mahkota;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '皇族', 'keluarga-kekaisaran', 33, 94, '<kanji>suku</kanji> <kanji>kaisar</kanji> adalah keluarganya. Keluarga ini dikenal sebagai <vocabulary>keluarga kekaisaran</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Keluarga Kekaisaran, Anggota Keluarga Kekaisaran')
    RETURNING id INTO v_5663_keluarga_kekaisaran;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '皇室', 'keluarga-kekaisaran', 33, 95, '<kanji>Kamar</kanji> <kanji>ruangan</kanji> adalah tempat berkumpulnya <vocabulary>Keluarga Kekaisaran</vocabulary>.

Perhatikan bahwa 皇室 mengacu pada <kosakata>Rumah Tangga Kekaisaran</vocabulary> sebagai unit keluarga, bukan ruang fisik.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Keluarga Kekaisaran, Rumah Tangga Kekaisaran')
    RETURNING id INTO v_5664_keluarga_kekaisaran;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '盛る', 'untuk-menumpuk', 33, 96, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>tumpukan</kanji>, jadi versi kosakata kata kerjanya adalah <vocabulary>to heap up</vocabulary>. Ini juga bisa berarti <vocabulary>menyajikan makanan</vocabulary>, seperti Anda menumpuk makanan di piring seseorang.', 'Tolong terus menumpuk makanannya. Saya ingin <membaca>lebih banyak</membaca> (もる), lebih banyak, lebih banyak.', 'Untuk Menumpuk, Untuk Menyajikan Makanan')
    RETURNING id INTO v_5665_untuk_menumpuk;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '砂糖', 'gula', 33, 97, '<kanji>pasir</kanji> <kanji>gula</kanji> hanyalah <vocabulary>gula</vocabulary>.  Nom nom nom, gula.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.

Perhatikan ketika Anda menempelkan ini ke kata lain untuk menentukan jenis gula, seperti きび砂糖 (gula tebu), maka rendaku akan menjadi ざとう.', 'Gula')
    RETURNING id INTO v_5667_gula;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '果糖', 'fruktosa', 33, 98, '<kanji>buah</kanji> <kanji>gula</kanji> adalah jenis gula yang lebih dikenal sebagai <vocabulary>fruktosa</vocabulary>. Mmm, fruktosa yang enak.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Fruktosa')
    RETURNING id INTO v_5670_fruktosa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '無糖', 'bebas-gula', 33, 99, 'Sesuatu yang <kanji>tidak</kanji> <kanji>gula</kanji> adalah sesuatu yang <vocabulary>bebas gula</vocabulary> atau <vocabulary>tanpa pemanis</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Bebas Gula, Yg tak diberi gula')
    RETURNING id INTO v_5671_bebas_gula;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '納める', 'untuk-memasok', 33, 100, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>menyuplai</kanji> sehingga versi kata kerjanya adalah <vocabulary>to supply</vocabulary>.', 'Jadi Anda memasok sesuatu... katakanlah hulu ledak nuklir... kepada <reading>Osa</reading>ma ​​Bin Laden. Anda akan mendapat banyak masalah, terutama karena itu adalah zombie Osama Bin Laden.', 'Untuk Memasok, Untuk Memberikan, Untuk Membayar')
    RETURNING id INTO v_5672_untuk_memasok;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '収納', 'penyimpanan', 33, 101, 'Saat Anda <kanji>mendapatkan</kanji> <kanji>persediaan</kanji>, Anda harus mengumpulkan semuanya di suatu tempat. Anda harus menyimpannya di <vocabulary>storage</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Penyimpanan, Menyimpan')
    RETURNING id INTO v_5673_penyimpanan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '納入', 'pembayaran', 33, 102, 'Saat Anda <kanji>memasukkan</kanji> <kanji>persediaan</kanji> Anda ke dalam mesin, itulah <vocabulary>pembayaran</vocabulary> Anda untuk hari itu. Setiap hari Anda harus memasukkan persediaan Anda, jika tidak mereka akan menindak Anda.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Pembayaran, Memasok, Pengiriman')
    RETURNING id INTO v_5674_pembayaran;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '肺', 'paru-paru', 33, 103, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji. OH <read>HAI</reading> ADA PARU-PARU. OH HAI ADA KAMU.', 'Paru-paru')
    RETURNING id INTO v_5675_paru_paru;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '肺がん', 'kanker-paru-paru', 33, 104, '肺 adalah <kanji>paru-paru</kanji>, がん adalah "kanker", saya kira karena Anda ingin <reading>hilang</reading> (がん) dari Anda. Hal ini menjadikan kata <vocabulary>kanker paru-paru</vocabulary>, yang, seiring dengan jumlah perokok di Jepang, jumlahnya cukup banyak.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji.', 'Kanker Paru-paru')
    RETURNING id INTO v_5676_kanker_paru_paru;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '肺病', 'sakit-paru-paru', 33, 105, 'Penyakit <kanji>paru-paru</kanji> <kanji></kanji> berdampak buruk bagi paru-paru Anda. Artinya anda mengidap <vocabulary>penyakit paru-paru</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Sakit paru paru')
    RETURNING id INTO v_5677_sakit_paru_paru;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '著しい', 'luar-biasa', 33, 106, 'Kanji berarti <kanji>penulis</kanji>, tetapi jika dipikir-pikir, apa yang dilakukan penulis? Mereka menulis tentang hal-hal yang <vocabulary>luar biasa</vocabulary> atau <vocabulary>ditandai</vocabulary>, baik itu fiksi maupun nonfiksi.', 'Ada sesuatu yang <vocabulary>luar biasa</vocabulary> sehingga Anda melontarkan <reading>satu ejekan</reading> (いちじる) pada tim lawan. Satu saja, karena kamu tidak sejahat itu.', 'Luar biasa, Ditandai')
    RETURNING id INTO v_5678_luar_biasa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '著者', 'pengarang', 33, 107, '<kanji>Seseorang</kanji> yang merupakan <kanji>penulis</kanji> adalah <vocabulary>penulis</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Pengarang')
    RETURNING id INTO v_5679_pengarang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '著作', 'menulis', 33, 108, 'Seorang <kanji>penulis</kanji> <kanji>membuat</kanji> <vocabulary>tulisan</vocabulary> dalam aktivitas yang dikenal sebagai <vocabulary>authorship</vocabulary>.

Perhatikan bahwa kata ini bukanlah istilah umum untuk menulis! 著作 memiliki nuansa yang lebih spesifik — sebagian besar digunakan untuk berbicara tentang suatu karya atau tulisan penulis tertentu. Anda juga akan sering melihatnya di kata majemuk 著作権, sehubungan dengan hak cipta.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Menulis, Kepengarangan, Sebuah Karya')
    RETURNING id INTO v_5680_menulis;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '蒸れる', 'menjadi-panas-dan-lengket', 33, 109, 'Dimana saja yang memiliki banyak <kanji>uap</kanji> akan menjadi panas dan lengket, jadi kata ini berarti... <vocabulary>menjadi panas dan lengket</vocabulary>!

Dengan 蒸れる, sesuatu menjadi panas dan lengket karena panas dan kelembapan yang terperangkap, seperti ketiak yang berkeringat di bawah kemeja pada hari yang lembab, atau pantat yang lengket setelah duduk di meja beberapa saat.

Selain itu, 蒸れる bisa berarti <vocabulary>dikukus</vocabulary>, seperti yang terjadi pada nasi saat melunak di rice cooker.', 'Apa yang membuat segalanya <vocabulary>menjadi panas dan lengket</vocabulary>? Tidak banyak orang yang mengetahui hal ini, namun sebenarnya semua sapi akan <read>moo</reading> (む). Dengan banyaknya moo yang mereka lakukan, mereka menghasilkan begitu banyak uap sehingga semuanya menjadi panas dan lengket. Siapa yang tahu?!', 'Menjadi Panas Dan Lengket, Untuk Dikukus')
    RETURNING id INTO v_5681_menjadi_panas_dan_lengket;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '蒸気', 'uap', 33, 110, '<kanji>Uap</kanji> <kanji>energi</kanji> adalah <vocabulary>uap</vocabulary> atau <vocabulary>uap</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Uap, Menguap')
    RETURNING id INTO v_5682_uap;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '蔵', 'gudang', 33, 111, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.

Penasaran dengan perbedaan antara 蔵 dan 倉? Secara tradisional, 蔵 kanji digunakan untuk bangunan kokoh yang menyimpan barang-barang penting. Di sinilah samurai menyimpan barang-barang berharga mereka! Di sisi lain, 倉 awalnya mengacu pada tempat menyimpan biji-bijian, dan biasanya dibuat tidak sekuat itu. Pada dasarnya keduanya dapat dipertukarkan sekarang, tetapi 蔵 kanji lebih umum digunakan.', 'Bacaannya sama dengan bacaan gudang lain yang Anda pelajari sebelumnya dengan 倉 dan 庫. Pada dasarnya semuanya sama, dan beruntung bagi Anda mereka juga berbagi bacaan yang sama (<reading>くら</reading>).', 'Gudang, Gudang Jepang, Kura')
    RETURNING id INTO v_5683_gudang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '冷蔵庫', 'lemari-es', 33, 112, '<kanji>keren</kanji> <kanji>gudang</kanji> <kanji>penyimpanan</kanji> adalah tempat Anda menaruh sesuatu (seperti makanan) agar tetap dingin. Ini adalah <vocabulary>lemari es</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Lemari es, Kulkas')
    RETURNING id INTO v_5684_lemari_es;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '地蔵', 'jizo', 33, 113, '<kanji>tanah</kanji> <kanji>gudang</kanji> mengacu pada nama seseorang. Mungkin akan lebih mudah untuk mempelajari bacaan yang satu ini terlebih dahulu karena itu. Bagaimanapun, orang ini adalah <vocabulary>Jizo(u)</vocabulary>, seorang Bodhisattva, dan pelindung anak-anak.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Jizo, Jizou')
    RETURNING id INTO v_5685_jizo;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '装い', 'pakaian', 33, 114, 'Sepertinya ini kata sifat, tapi itu hanya kata yang rumit. Itu adalah kata benda, dan artinya sama dengan kanji, menjadikannya <vocabulary>pakaian</vocabulary>.', '"<reading>Yo, jadi, oh</reading>, kamu akan memakai <vocabulary>pakaian</vocabulary> itu hari ini atau bagaimana?"', 'Pakaian, Gaun, Pakaian')
    RETURNING id INTO v_5686_pakaian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '装置', 'peralatan', 33, 115, '<kanji>pakaian</kanji> ini <kanji>diletakkan</kanji> di dalam <vocabulary>peralatan</vocabulary> ini, lalu diubah menjadi sesuatu yang lain. <vocabulary>perangkat</vocabulary> pakaian ini aneh dan menarik. Bayangkan sesuatu yang berdampak pada pakaian Anda.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Peralatan, Perangkat, Aparat')
    RETURNING id INTO v_5687_peralatan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '変装', 'samaran', 33, 116, '<kanji>Ubah</kanji> <kanji>pakaian</kanji> Anda agar terlihat seperti orang lain. Ini adalah <vocabulary>penyamaran</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Samaran')
    RETURNING id INTO v_5688_samaran;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '服装', 'pakaian', 33, 117, '<kanji>pakaian</kanji> Anda yang mana <kanji>pakaian</kanji> Anda adalah <vocabulary>pakaian</vocabulary> Anda. Begitulah cara Anda <vocabulary>berpakaian</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Pakaian, Gaun')
    RETURNING id INTO v_5689_pakaian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '裏口', 'pintu-belakang', 33, 118, '<kanji>belakang</kanji> <kanji>mulut</kanji> (pikirkan: pintu masuk) adalah <vocabulary>pintu belakang</vocabulary> atau <vocabulary>pintu masuk belakang</vocabulary>.', 'Bacaannya adalah 裏 dan 口 yang dirangkai menjadi satu kata.', 'Pintu belakang, Pintu Masuk Belakang')
    RETURNING id INTO v_5690_pintu_belakang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '裏切る', 'untuk-menusuk-dari-belakang', 33, 119, 'Jika kamu <kanji>memotong</kanji> seseorang dari <kanji>belakang</kanji> kamu sedang melakukan pengkhianatan, membuat kata ini <vocabulary>menusuk dari belakang</vocabulary> atau <vocabulary>mengkhianati</vocabulary>.', 'Bacaannya adalah 裏 plus 切る yang dirangkai menjadi satu kata.', 'Untuk menusuk dari belakang, Untuk Mengkhianati')
    RETURNING id INTO v_5691_untuk_menusuk_dari_belakang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '裏切り', 'pengkhianatan', 33, 120, 'Dari <kanji>belakang</kanji> Anda <kanji>memotong</kanji> seseorang. Wow. Brengsek sekali. Apa itu <vocabulary>pengkhianatan</vocabulary> dan <vocabulary>treachery</vocabulary>.', 'Kata ini adalah bacaan 裏 dan 切る, disatukan.', 'Pengkhianatan, Pengkhianatan')
    RETURNING id INTO v_5692_pengkhianatan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '裏通り', 'gang', 33, 121, '<kanji>belakang</kanji> <kanji>jalan</kanji> (atau "jalan") adalah jalan yang bukan jalan utama... jalan itu tersembunyi dan di balik segalanya, menjadikannya <vocabulary>gang</vocabulary>.', 'Bacaannya adalah 裏 dan 通り yang dirangkai menjadi satu kata.', 'Gang, Jalan Belakang')
    RETURNING id INTO v_5693_gang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '裏', 'belakang', 33, 122, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan yang kamu pelajari dengan kanji juga.', 'Belakang, Balik, Sisi Lain')
    RETURNING id INTO v_5694_belakang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '諸君', 'tuan-tuan', 33, 123, '<kanji>berbagai</kanji> <kanji>teman</kanji> saya! Tunggu, hasilnya tidak tepat. <vocabulary>Tuan-tuan</vocabulary>! <vocabulary>Teman-temanku</vocabulary>! Ini dia, jauh lebih baik.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Tuan-tuan, Teman-teman saya, Hadirin sekalian')
    RETURNING id INTO v_5695_tuan_tuan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '諸〜', 'bermacam-macam', 33, 124, 'Ini memiliki arti yang sama dengan kanji. Tempelkan ini ke kata lain dan Anda akan mendapatkan "berbagai _____".', 'Pembacaannya juga sama dengan apa yang Anda pelajari dengan kanji.', 'Bermacam-macam')
    RETURNING id INTO v_5696_bermacam_macam;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '家賃', 'sewa-rumah', 33, 125, '<kanji>rumah</kanji> <kanji>sewa</kanji> Anda adalah <vocabulary>sewa rumah</vocabulary> Anda, meskipun bisa juga menjadi <vocabulary>sewa</vocabulary> apartemen Anda.', 'Pembacaan 家 sama dengan yang Anda pelajari dengan 空き家 dan 大家. Ingat saja: ketika pemilik rumah bertanya apakah Anda sudah membayar <vocabulary>sewa</vocabulary>, Anda selalu menjawab "<reading>yah</reading> (や)," baik Anda sudah membayarnya atau belum.', 'Sewa Rumah, Menyewa')
    RETURNING id INTO v_5697_sewa_rumah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '賃貸', 'persewaan', 33, 126, '<kanji>Sewa</kanji> dan saya akan <kanji>meminjamkan</kanji> kepada Anda. Benda ini yang dipinjamkan dan disewakan? Ini adalah <vocabulary>rental</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda hanya perlu mengingat bahwa 貸 dibaca sebagai たい untuk yang satu ini. Apa sewamu? Ini adalah petarung <reading>tie</reading> (たい). Manis.', 'Persewaan')
    RETURNING id INTO v_5698_persewaan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '貨物船', 'kapal-barang', 33, 127, '<kanji>pengangkutan</kanji> <kanji>barang</kanji> <kanji>kapal</kanji> adalah perahu yang mengangkut barang. Itu adalah <vocabulary>pengangkut</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri. Huruf 物 menggunakan bacaan もつ, yang masuk akal karena terdengar seperti 持つ, yaitu "menahan". Apa yang dilakukan kapal barang ini? Itu menahan barang! Jadi, begitulah cara Anda mengingat bagian itu.', 'Kapal barang, Kapal Barang')
    RETURNING id INTO v_5699_kapal_barang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '小麦粉', 'tepung-terigu', 33, 128, '<kanji>Kecil</kanji> <kanji>gandum</kanji> <kanji>bubuk</kanji> adalah <vocabulary>tepung terigu</vocabulary>, atau <vocabulary>tepung</vocabulary>.', 'Kata ini menggunakan bacaan kun''yomi dari ketiga kanji.小 dan 粉 sama-sama menggunakan kun''yomi yang belum kamu pelajari, tapi untungnya keduanya sama! Bayangkan saja betapa "kecil" benda itu seperti <reading>子</reading> (こ), dan "bubuk" juga kecil. Jadi baik 小 maupun 粉 dibaca こ.', 'Tepung terigu, Tepung')
    RETURNING id INTO v_5700_tepung_terigu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '泥棒', 'perampok', 33, 129, 'Saya tidak tahu mengapa <kanji>lumpur</kanji> <kanji>tiang</kanji> adalah <vocabulary>perampok</vocabulary>, tetapi untuk beberapa alasan memang demikian. Bayangkan saja seorang perampok menutupi dirinya dengan lumpur dan berdiri di belakang tiang untuk bersembunyi, lalu melompat keluar, lalu merampas semua milik Anda.', 'Bacaannya adalah 泥 ditambah bacaan untuk 棒 disatukan.', 'Perampok, Pencuri')
    RETURNING id INTO v_5707_perampok;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '驚かす', 'mengejutkan', 33, 130, 'Ingat bagaimana 驚く berarti "terkejut"? Ini adalah saat Anda mengejutkan orang lain, melakukan hal yang mengejutkan, membuat kata <vocabulary>mengejutkan</vocabulary> atau <vocabulary>mengejutkan</vocabulary>.', 'Bacaannya berasal dari 驚く. Jangan heran jika anda mengingat bacaan kata ini karena pengetahuan anda di masa lalu.', 'Mengejutkan, Mengejutkan, Sangat mengherankan')
    RETURNING id INTO v_5709_mengejutkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '掃除する', 'untuk-membersihkan', 33, 131, '掃除 adalah <kanji>membersihkan</kanji>, jadi versi kata kerjanya adalah <vocabulary>to clean</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri. Selain itu, mengetahui kata 掃除 juga akan membantu.', 'Untuk Membersihkan')
    RETURNING id INTO v_5710_untuk_membersihkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '乾かす', 'untuk-mengeringkan-sesuatu', 33, 132, '乾く adalah "untuk dikeringkan." Ini adalah versi di mana Anda melakukan pengeringan, menjadikannya <vocabulary>untuk mengeringkan sesuatu</vocabulary>. Anda mengetahui hal ini karena harus mengeringkan sesuatu sendiri itu menjengkelkan, jadi Anda <reading>menyumpah</reading> (かす) tanpa henti saat melakukannya. "#$@%! Kenapa aku harus membuang-buang waktu mengeringkan benda %&$# ini?!"', 'Bacaannya berasal dari 乾く.', 'Untuk Mengeringkan Sesuatu, Untuk Mengeringkan')
    RETURNING id INTO v_5711_untuk_mengeringkan_sesuatu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '散らかす', 'untuk-menyebar', 33, 133, '散る berarti "tersebar." 散らかす di sisi lain adalah saat Anda melakukan hamburan. Jadi artinya <vocabulary>menyebarkan</vocabulary> atau <vocabulary>membuat kekacauan</vocabulary>.

Anda sering mendengarnya ketika seseorang berbicara tentang membuat ruangan menjadi berantakan atau meninggalkan barang-barang di mana-mana. Anda dapat mengingatnya dengan mudah karena setelah <membaca>keributan</reading> (らかす), orang sering kali meninggalkan kekacauan.', 'Pembacaan 散 berasal dari 散る. Jadi, lanjutkan dan sebarkan lebih banyak kenangan di otak Anda, Anda sudah mendapatkannya.', 'Untuk Menyebar, Untuk Membuat Kekacauan')
    RETURNING id INTO v_5712_untuk_menyebar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '離す', 'untuk-memisahkan-sesuatu', 33, 134, 'Ingat bagaimana 離れる berarti "memisahkan", yaitu sesuatu yang memisahkan atau menjauh dari sesuatu yang lain? Nah, 離す itu versi transitif, jadi dibutuhkan objek langsung dan artinya <vocabulary>untuk memisahkan sesuatu</vocabulary>. Anda dapat mengingat hal ini karena jika Anda mencoba memisahkan dua orang yang tidak ingin dipisahkan, mereka mungkin akan menuntut (す) Anda sebagai balasannya!

離す digunakan saat Anda melepaskan atau memberi jarak di antara orang atau benda. Ini bisa bersifat literal, seperti saat Anda menjauhkan tempat tidur dari dinding, atau lebih bersifat kiasan, seperti saat Anda secara sembarangan mengalihkan pandangan dari sesuatu yang penting. 

Ini juga bisa berarti <vocabulary>melepaskan</vocabulary> sesuatu, karena Anda "memisahkan" tangan Anda darinya. Penggunaan ini sangat mirip dengan 放す, namun tidak memiliki nuansa membebaskan sesuatu — ini hanyalah tindakan netral dalam melepaskan sesuatu.', 'Bacaannya berasal dari 離れる.', 'Untuk Memisahkan Sesuatu, Untuk Melepaskan')
    RETURNING id INTO v_5713_untuk_memisahkan_sesuatu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '簡単', 'sederhana', 33, 135, '<kanji>Kesederhanaan</kanji> adalah <kanji>sederhana</kanji>, membuat <vocabulary>sederhana</vocabulary> ini juga.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Sederhana, Mudah, Hanya')
    RETURNING id INTO v_5936_sederhana;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '泥沼', 'rawa', 33, 136, '<kanji>lumpur</kanji>dy <kanji>rawa</kanji> adalah cara untuk mendeskripsikan <vocabulary>rawa</vocabulary>. Ini adalah rawa yang hampir tidak ada air tersisa, menjadi berlumpur dan lengket. Kotor (dan berbahaya)!

Kata ini biasanya digunakan secara kiasan untuk menggambarkan situasi di mana suatu konflik menjadi kacau dan sulit diselesaikan, atau suatu masalah yang sulit untuk dilepaskan.', 'Bacaannya adalah bacaan kosakata dari dua kata yaitu 泥 dan 沼.', 'Rawa, Rawa, Rawa')
    RETURNING id INTO v_6737_rawa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '灯り', 'lampu', 33, 137, 'Kanji berarti <kanji>lampu</kanji>, dan versi kata benda pada dasarnya memiliki arti yang sama: <vocabulary>light</vocabulary> atau <vocabulary>lamp</vocabulary>.

Meskipun 光 mengacu pada cahaya dalam arti abstrak dan 明かり mengacu pada iluminasi yang dipancarkan sesuatu, 灯り (atau terkadang hanya 灯) mengacu pada sumber cahaya buatan manusia — baik lampu, lilin, atau bahkan cahaya tidak jelas yang terlihat sekilas di kejauhan pada malam hari. Dibandingkan dengan istilah yang lebih modern seperti ライト, istilah ini terasa lebih lembut dan hangat, dan lebih sering muncul dalam konteks puitis atau deskriptif seperti novel atau lagu.', 'Kata ini menggunakan bacaan kun''yomi untuk 灯 yang belum Anda pelajari, jadi inilah mnemoniknya:

Bacaannya terdengar seperti 明かり, kata lain yang berhubungan dengan cahaya. Masuk akal, jika dipikir-pikir, karena <vocabulary>lampu</vocabulary> akan membuat <reading>明か</reading>り (あか) ketika menyala.', 'Lampu, Lampu')
    RETURNING id INTO v_7226_lampu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '編集者', 'editor', 33, 138, 'Sebuah <kanji>edit</kanji> adalah 編集. <kanji>Seseorang</kanji> yang melakukan pengeditan tersebut adalah <vocabulary>editor</vocabulary>!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri. Juga, bacaan dari 編集 akan membantu Anda.', 'Editor')
    RETURNING id INTO v_7499_editor;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '散らし', 'selebaran', 33, 139, 'Apa yang biasanya <kanji>sebarkan</kanji> secara terburu-buru (らし)? <vocabulary>Leaflet</vocabulary> dan <vocabulary>selebaran</vocabulary>. Menyerahkannya membutuhkan banyak waktu, jadi jika Anda <a href="https://www.youtube.com/watch?v=vfaNkGXrEtA" target="_blank">menyebarkannya ke mana-mana</a>, pekerjaan Anda akan selesai jauh lebih cepat!', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Kamu mempelajari bacaan ini ketika kamu mempelajari 散る, jadi kamu seharusnya sudah bisa membacanya! 

Perhatikan bahwa kata ini hampir selalu ditulis dalam kana, dan チラシ jauh lebih umum daripada ちらし.', 'selebaran, Surat edaran, Pamflet, Penyebaran')
    RETURNING id INTO v_7775_selebaran;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '武装', 'lengan', 33, 140, 'Bagian terpenting dari <kanji>militer</kanji> <kanji>pakaian</kanji> Anda adalah <vocabulary>lengan</vocabulary> Anda (bukan yang melekat pada tubuh Anda, senjata Anda, dan sebagainya). Senjata itulah yang membuat Anda menjadi orang militer sejati.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Lengan, Persenjataan, Bersenjata')
    RETURNING id INTO v_8687_lengan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '異常', 'abnormal', 33, 141, 'Ketika sesuatu <kanji>berbeda</kanji> dari <kanji>normal</kanji> itu disebut <vocabulary>abnormal</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Abnormal, Kelainan')
    RETURNING id INTO v_8724_abnormal;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '祭日', 'hari-libur', 33, 142, '<kanji>festival</kanji> <kanji>hari</kanji> secara harfiah berarti "hari festival", seperti hari festival atau ritual Shinto. Namun saat ini, itu hanya berarti <vocabulary>liburan</vocabulary>.

Biasanya hari ini merupakan <vocabulary>hari libur nasional</vocabulary> atau <vocabulary>hari libur umum</vocabulary>, karena beberapa hari libur umum di Jepang didasarkan pada hari festival Shinto. 祭日 adalah istilah resmi untuk hari libur sebelum Perang Dunia II, tetapi sekarang 祝日 digunakan sebagai gantinya. Karena itu, sekarang ini terdengar agak kuno, tetapi Anda mungkin masih menjumpainya sesekali.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Karena 日 mempunyai dua pembacaan on''yomi, berikut adalah mnemonik untuk membantu Anda mengingat mana yang harus digunakan:

Rupanya ada dua <vocabulary>liburan</vocabulary> minggu ini. <reading>Wah</reading>, <reading>dua</reading> (じつ)? Beruntungnya kamu. Anda mungkin harus memikirkan beberapa hal menyenangkan untuk dilakukan selama dua liburan ini.', 'Hari libur, Hari Libur Nasional, Hari Libur Nasional')
    RETURNING id INTO v_8816_hari_libur;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '噂', 'isu', 33, 143, 'Kanji dan kata-katanya sama persis.', 'Anda mempelajari bacaan ini dengan kanji, jadi Anda seharusnya sudah bisa membacanya!', 'Isu, Gosip')
    RETURNING id INTO v_8865_isu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '股間', 'selangkangan', 33, 144, '<kanji>selangkangan</kanji> <kanji>interval</kanji> hanyalah <vocabulary>groin</vocabulary> atau <vocabulary>crotch</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'selangkangan, Kunci paha')
    RETURNING id INTO v_8978_selangkangan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '股関節', 'sendi-pinggul', 33, 145, 'Tahukah Anda bahwa <kanji>selangkangan</kanji> Anda <kanji>terhubung</kanji> melalui berbagai <kanji>sendi</kanji>? Hal ini menjadikan kata ini sebagai <vocabulary>pinggul</vocabulary> Anda atau, lebih umum lagi, hanya <vocabulary>hip</vocabulary> Anda.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Sendi Pinggul, Panggul')
    RETURNING id INTO v_8979_sendi_pinggul;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '屁', 'perut-kembung', 33, 146, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Anda sudah mempelajari bacaan ini dengan kanji, jadi sebaiknya Anda mulai!', 'Perut kembung, Gas, Kentut')
    RETURNING id INTO v_9004_perut_kembung;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '屁理屈', 'argumen-yang-tidak-logis', 33, 147, 'Anda sudah tahu 理屈 berarti "logika" atau "argumen". Jadi apa logika <kanji>perut kembung</kanji>? Itu adalah <vocabulary>argumen yang tidak logis</vocabulary>, <vocabulary>argumen yang tidak masuk akal</vocabulary>, atau terkadang <vocabulary>alasan yang tidak masuk akal</vocabulary>. Itu semua hanya udara panas!', 'Anda telah mempelajari semua bacaan ini. Anda seharusnya bisa membaca ini sendiri. Dan tidak, itu bukanlah argumen yang dibuat-buat, atau alasan yang lemah untuk tidak menulis mnemonik.', 'Argumen yang Tidak Logis, Argumen yang Tidak Masuk Akal, Alasan yang payah')
    RETURNING id INTO v_9005_argumen_yang_tidak_logis;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '里芋', 'talas', 33, 148, '<kanji>kampung halaman</kanji> <kanji>kentang</kanji> adalah <vocabulary>talas</vocabulary>. Di Jepang, talas merupakan jenis kentang yang banyak dimiliki semua orang di kampung halamannya, karena sudah ada sejak lama dan bisa tumbuh dimana saja.

Dalam bahasa Inggris, "taro" terkadang dapat digunakan untuk sayuran umbi-umbian lainnya juga, namun perlu diingat bahwa kata ini merujuk secara khusus pada <vocabulary>Japanese taro</vocabulary> — sayuran kecil, bertepung, mirip kentang.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji kun''yomi.', 'Talas, Talas Jepang')
    RETURNING id INTO v_9043_talas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '居候', 'tukang-bonceng', 33, 149, 'Untuk tetap <kanji>hidup</kanji> di <kanji>iklim</kanji> tertentu, beberapa orang tidak punya pilihan selain menjadi <vocabulary>freeloader</vocabulary>. Artinya, <vocabulary>seorang penghuni yang tidak membayar apa pun</vocabulary>. Jika Anda tinggal di suatu tempat dengan iklim yang tidak ramah tetapi tidak mampu membayar sewa, satu-satunya pilihan Anda adalah tinggal bersama seseorang secara gratis.', 'Ini adalah kasus yang sedikit tidak biasa karena kedua kanji menggunakan kun''yomi. Anda belum mempelajari bacaan itu untuk 候, jadi inilah mnemonik untuk membantu Anda:

Apa? Anda telah menjadi <vocabulary>freeloader</vocabulary>? Aku tidak percaya kamu sudah <membaca>begitu rendah</membaca> (そうろう)!', 'Tukang bonceng, Pemondok yang Tidak Membayar Apa Pun')
    RETURNING id INTO v_9064_tukang_bonceng;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '温厚', 'sopan-santun', 33, 150, 'Ketika temperamen <kanji>hangat</kanji> diterapkan <kanji>tebal</kanji> ekstra, hal ini akan menyebabkan seseorang memiliki kepribadian <vocabulary>sopan santun</vocabulary> atau <vocabulary>lembut</vocabulary>.

Perhatikan bahwa ini adalah istilah yang lebih formal, jadi Anda biasanya akan menemukannya secara tertulis.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda sudah mengetahui on''yomi untuk 温, tetapi tidak untuk 厚, jadi inilah mnemonik untuk membantu Anda mengingatnya:

Staf Tofugu yang paling <vocabulary>sopan santun</vocabulary> harus <reading>on</reading>ion <reading>こう</reading>いち. Itu adalah bawang yang cocok untuk こういち setiap kali dia tidak berada di kantor. Dia adalah jiwa paling <vocabulary>lembut</vocabulary> yang dapat Anda bayangkan, tidak pernah membentak siapa pun. Bos yang ideal, sungguh.', 'Sopan santun, Lembut, Baik hati')
    RETURNING id INTO v_9065_sopan_santun;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '天然', 'alami', 33, 151, 'Sesuatu dari <kanji>sifat</kanji> <kanji>surga</kanji> memang <vocabulary>alami</vocabulary>, tanpa campur tangan manusia.

Meskipun kata ini secara teknis merupakan kata benda, namun sering kali digunakan sebagai kata sifat. Itu pula yang membedakannya dengan 自然. Jadi, Anda akan sering melihat 天然 digunakan untuk mengatakan bahwa sesuatu itu "alami" atau "dari alam", sedangkan 自然 sering digunakan untuk berbicara tentang alam secara umum, seperti mengatakan bahwa alam itu indah.', 'Anda mengetahui cara membaca 天, tetapi 然 menggunakan cara membaca yang berbeda dari yang Anda pelajari. Jadi, inilah mnemonik untuk membantu Anda:

Satu hal yang pastinya tidak <vocabulary>alami</vocabulary> adalah <reading>nen</reading>doroids (ねん). Ingat, patung plastik kecil itu? Pernahkah Anda melihat patung anime tumbuh secara alami di ladang sebelumnya? Ya, aku juga tidak. Tidak terlalu alami.', 'Alami')
    RETURNING id INTO v_9273_alami;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '拭う', 'untuk-menghapus', 33, 152, 'Anda memiliki kanji untuk <kanji>wipe</kanji>, dan ini adalah versi kata kerjanya, yang menjadikan <vocabulary>to wipe</vocabulary> atau <vocabulary>to mop up</vocabulary>.

Anda telah mempelajari 拭く, yang merupakan kata umum untuk tindakan menyeka, baik Anda sedang menyeka meja atau menyeka dahi. 拭う, di sisi lain, lebih umum digunakan secara tertulis untuk menggambarkan tindakan menyeka dan menghilangkan sesuatu yang spesifik seperti keringat, air mata, kotoran, atau bahkan keraguan.', 'Ini adalah kata kerja, jadi menggunakan kun''yomi. Namun, untuk membedakan kata kerja ini dari 拭く, ia menggunakan bacaan yang berbeda, jadi inilah mnemonik untuk membantu Anda mengingatnya:

Apa yang Anda coba <vocabulary>hapus</vocabulary>? Beberapa <reading>nu</reading>de <reading>goo</reading> (ぬぐ)! Anda menumpahkan cairan telanjang ke seluruh lantai, dan sekarang Anda harus mengepel semuanya… cairan telanjang yang mengganggu.', 'Untuk Menghapus, Untuk Mengepel')
    RETURNING id INTO v_9342_untuk_menghapus;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '貯まる', 'untuk-diselamatkan', 33, 153, 'Ingat bagaimana 貯める berarti "menabung"? Hal ini hampir sama, hanya saja fokusnya adalah pada hal yang disimpan. Itu sebabnya artinya <vocabulary>disimpan</vocabulary> atau <vocabulary>menambah</vocabulary>. Ingatlah bahwa ini adalah versi intransitif, coba pikirkan betapa mudahnya menyimpan uang jika Anda memasukkannya ke dalam <reading>mar</reading>ket (まる).

貯まる sering merujuk pada uang, seperti dalam 資金が貯まる (dana disimpan). Namun Anda juga akan melihatnya dalam frasa seperti マイルが貯まる (frequent flier miles bertambah).', 'Satu hal yang cenderung <vocabulary>disimpan</vocabulary> adalah <reading>ta</reading>cos (た). Ini karena taco selalu dibuat terlalu banyak sehingga harus disimpan di lemari es untuk nanti. Namun kemudian Anda melupakannya dan menghasilkan lebih banyak, sehingga <vocabulary>bertambah</vocabulary> lebih banyak lagi. Ini adalah lingkaran setan taco.', 'Untuk Diselamatkan, Untuk Menambah, Untuk Akumulasi')
    RETURNING id INTO v_9371_untuk_diselamatkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '僅差', 'margin-sempit', 33, 154, 'Ketika hanya ada <kanji>sedikit</kanji> <kanji>perbedaan</kanji> antara Anda dan lawan, kemenangan pasti ditentukan oleh <vocabulary>margin yang sempit</vocabulary>.

僅差 mengacu pada <kosakata>perbedaan kecil</vocabulary> — seperti menang atau kalah hanya dengan sehelai rambut. Anda akan mendengarnya dalam olahraga, kompetisi, tes, atau peringkat ketika jaraknya sangat kecil: beberapa poin, beberapa detik, atau hampir tidak sama sekali. Ini adalah kata yang relatif formal yang lebih banyak muncul dalam tulisan, berita, dan komentar dibandingkan dalam obrolan santai.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Margin Sempit, Perbedaan Kecil')
    RETURNING id INTO v_9398_margin_sempit;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '儲ける', 'untuk-menghasilkan-untung', 33, 155, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>menghasilkan uang</kanji>, jadi versi kosakata kata kerjanya cukup mirip: <vocabulary>to make a profit</vocabulary>.

儲ける berarti <vocabulary>mendapatkan sesuatu</vocabulary> dengan cara yang dirasa menguntungkan atau menguntungkan. Kata ini paling umum digunakan dalam pembicaraan tentang uang, seperti 株で儲ける (mendapatkan keuntungan dari saham), namun kata ini juga dapat menggambarkan jenis keuntungan lain yang membawa keberuntungan atau manfaat. Misalnya, Anda mungkin 一日儲ける (mendapatkan satu hari ekstra) berkat keberuntungan atau cara efisien dalam melakukan sesuatu.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda sudah mempelajari bacaan ini dengan kanji, jadi Anda siap melakukannya! Woo-hoo!', 'Untuk Menghasilkan Untung, Untuk Mendapatkan Sesuatu')
    RETURNING id INTO v_9442_untuk_menghasilkan_untung;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '甥', 'keponakan-laki-laki', 33, 156, 'Kanji dan kata-katanya sama persis, jadi ini artinya <vocabulary>keponakan</vocabulary>.

Dalam percakapan santai, Anda mungkin lebih sering mendengar 甥っ子, yang merupakan cara yang lebih ramah dan terdengar penuh kasih sayang untuk membicarakan keponakan Anda.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji.', 'Keponakan laki-laki')
    RETURNING id INTO v_9446_keponakan_laki_laki;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '街角', 'pojok-jalan', 33, 157, 'Di <kanji>jalanan</kanji>, hanya ada satu jenis <kanji>sudut</kanji>: <vocabulary>sudut jalan</vocabulary>.

街角 secara harfiah berarti sudut pertemuan jalan, seperti dalam 街角を曲がる (belok di tikungan). Lebih jauh lagi, kata ini juga bisa merujuk pada <kosakata>jalan</vocabulary> sebagai tempat umum dimana kehidupan kota sehari-hari berlangsung, seperti 街角でタクシーをひろう (memanggil taksi di jalan) atau 街角の話題 (berbicara tentang kota).', 'Kata ini merupakan gabungan dari kata 街 dan 角, jadi sebenarnya akan menggunakan bacaan kun''yomi keduanya. Berhati-hatilah dalam menggunakan pembacaan kosakata daripada pembacaan kanji dan Anda akan baik-baik saja di sini!', 'Pojok Jalan, Jalan')
    RETURNING id INTO v_9487_pojok_jalan;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2873_tahunan, 'Tahunan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2873_tahunan, 'Tahunan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3825_kebun, 'Kebun', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4277_untuk_menghalangi, 'Untuk Menghalangi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4277_untuk_menghalangi, 'Untuk Mencegah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4277_untuk_menghalangi, 'Untuk menghambat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4639_aliran_gunung, 'Aliran Gunung', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4639_aliran_gunung, 'Rawa', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4927_kemerosotan, 'Kemerosotan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4927_kemerosotan, 'Lamban', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5002_untuk_menangkap, 'Untuk Menangkap', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5002_untuk_menangkap, 'Untuk Menangkap', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5002_untuk_menangkap, 'Untuk Memahami', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5466_untuk_menyelamatkan, 'Untuk Menyelamatkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5466_untuk_menyelamatkan, 'Untuk Menyimpan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5484_imitasi, 'Imitasi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5484_imitasi, 'Peniruan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5484_imitasi, 'Peniruan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5598_sederhana, 'Sederhana', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5598_sederhana, 'Mudah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5611_untuk_mengedit, 'Untuk Mengedit', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5612_penyedot_debu, 'Penyedot debu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5613_untuk_berjalan_jalan, 'Untuk Berjalan-jalan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5613_untuk_berjalan_jalan, 'Untuk Berjalan-jalan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5614_sangat_indah, 'Sangat indah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5614_sangat_indah, 'Semarak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5614_sangat_indah, 'Cemerlang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5614_sangat_indah, 'Luar biasa', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5615_kecuali, 'Kecuali', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5617_makam, 'Makam', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5621_majalah, 'Majalah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5622_jendela_tiket, 'Jendela Tiket', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5622_jendela_tiket, 'Konter Tiket', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5622_jendela_tiket, 'Staf', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5622_jendela_tiket, 'Pelayanan pelanggan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5623_jendela, 'Jendela', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5624_tidak, 'TIDAK', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5624_tidak, 'Bukan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5625_penyangkalan, 'Penyangkalan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5625_penyangkalan, 'Membantah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5625_penyangkalan, 'Penyangkalan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5626_penolakan, 'Penolakan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5626_penolakan, 'Menolak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5627_urat_daging, 'Urat daging', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5627_urat_daging, 'Otot', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5628_otot, 'Otot', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5634_periklanan, 'Periklanan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5634_periklanan, 'Promosi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5634_periklanan, 'Propaganda', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5635_proklamasi, 'Proklamasi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5635_proklamasi, 'Pernyataan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5636_dihormati, 'Dihormati', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5636_dihormati, 'Bangsawan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5636_dihormati, 'Berharga', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5637_menghormati, 'Menghormati', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5638_setia, 'Setia', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5638_setia, 'Setia', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5638_setia, 'Setia', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5639_nasihat, 'Nasihat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5639_nasihat, 'Pengingatan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5640_untuk_memperluas, 'Untuk Memperluas', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5640_untuk_memperluas, 'Untuk Menyebar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5641_pembesaran, 'Pembesaran', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5641_pembesaran, 'Ekspansi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5641_pembesaran, 'Perpanjangan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5642_perbesar, 'Perbesar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5642_perbesar, 'Pembesaran', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5642_perbesar, 'Pembesaran', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5642_perbesar, 'Ekspansi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5643_untuk_memanipulasi, 'Untuk Memanipulasi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5644_kesucian, 'Kesucian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5645_operasi, 'Operasi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5645_operasi, 'Penanganan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5645_operasi, 'Manipulasi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5646_senam, 'Senam', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5646_senam, 'Olahraga senam', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5647_sebutan_kehormatan, 'Sebutan kehormatan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5647_sebutan_kehormatan, 'Jangka Waktu Hormat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5647_sebutan_kehormatan, 'Keigo', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5648_untuk_hidup, 'Untuk Hidup', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5648_untuk_hidup, 'Untuk Menjalani Hidup Seseorang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5649_mentah, 'Mentah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5649_mentah, 'Pedesaan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5649_mentah, 'Bodoh', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5650_abu, 'Abu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5650_abu, 'Abu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5651_abu_abu, 'Abu-abu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5651_abu_abu, 'Warna Abu-abu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5652_asbak, 'Asbak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5653_untuk_matang, 'Untuk matang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5654_kata_majemuk, 'Kata Majemuk', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5654_kata_majemuk, 'Senyawa Kanji', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5654_kata_majemuk, 'Jukugo', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5655_mentah, 'Mentah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5655_mentah, 'Belum dewasa', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5655_mentah, 'Tidak berpengalaman', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5655_mentah, 'Belum Pandai', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5656_mematangkan, 'Mematangkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5656_mematangkan, 'Dewasa', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5656_mematangkan, 'Kematangan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5656_mematangkan, 'Kematangan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5657_untuk_berbeda, 'Untuk Berbeda', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5658_kelainan, 'Kelainan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5658_kelainan, 'Ada masalah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5659_jenis_kelamin_berbeda, 'Jenis Kelamin Berbeda', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5659_jenis_kelamin_berbeda, 'Lawan Jenis Kelamin', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5660_beda_arti, 'Beda Arti', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5661_kaisar_jepang, 'Kaisar Jepang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5661_kaisar_jepang, 'Kaisar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5662_putra_mahkota, 'putra Mahkota', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5663_keluarga_kekaisaran, 'Keluarga Kekaisaran', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5663_keluarga_kekaisaran, 'Anggota Keluarga Kekaisaran', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5664_keluarga_kekaisaran, 'Keluarga Kekaisaran', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5664_keluarga_kekaisaran, 'Rumah Tangga Kekaisaran', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5665_untuk_menumpuk, 'Untuk Menumpuk', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5665_untuk_menumpuk, 'Untuk Menyajikan Makanan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5667_gula, 'Gula', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5670_fruktosa, 'Fruktosa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5671_bebas_gula, 'Bebas Gula', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5671_bebas_gula, 'Yg tak diberi gula', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5672_untuk_memasok, 'Untuk Memasok', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5672_untuk_memasok, 'Untuk Memberikan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5672_untuk_memasok, 'Untuk Membayar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5673_penyimpanan, 'Penyimpanan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5673_penyimpanan, 'Menyimpan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5674_pembayaran, 'Pembayaran', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5674_pembayaran, 'Memasok', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5674_pembayaran, 'Pengiriman', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5675_paru_paru, 'Paru-paru', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5676_kanker_paru_paru, 'Kanker Paru-paru', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5677_sakit_paru_paru, 'Sakit paru paru', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5678_luar_biasa, 'Luar biasa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5678_luar_biasa, 'Ditandai', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5679_pengarang, 'Pengarang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5680_menulis, 'Menulis', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5680_menulis, 'Kepengarangan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5680_menulis, 'Sebuah Karya', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5681_menjadi_panas_dan_lengket, 'Menjadi Panas Dan Lengket', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5681_menjadi_panas_dan_lengket, 'Untuk Dikukus', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5682_uap, 'Uap', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5682_uap, 'Menguap', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5683_gudang, 'Gudang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5683_gudang, 'Gudang Jepang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5683_gudang, 'Kura', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5684_lemari_es, 'Lemari es', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5684_lemari_es, 'Kulkas', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5685_jizo, 'Jizo', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5685_jizo, 'Jizou', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5686_pakaian, 'Pakaian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5686_pakaian, 'Gaun', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5686_pakaian, 'Pakaian', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5687_peralatan, 'Peralatan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5687_peralatan, 'Perangkat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5687_peralatan, 'Aparat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5688_samaran, 'Samaran', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5689_pakaian, 'Pakaian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5689_pakaian, 'Gaun', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5690_pintu_belakang, 'Pintu belakang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5690_pintu_belakang, 'Pintu Masuk Belakang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5691_untuk_menusuk_dari_belakang, 'Untuk menusuk dari belakang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5691_untuk_menusuk_dari_belakang, 'Untuk Mengkhianati', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5692_pengkhianatan, 'Pengkhianatan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5692_pengkhianatan, 'Pengkhianatan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5693_gang, 'Gang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5693_gang, 'Jalan Belakang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5694_belakang, 'Belakang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5694_belakang, 'Balik', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5694_belakang, 'Sisi Lain', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5695_tuan_tuan, 'Tuan-tuan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5695_tuan_tuan, 'Teman-teman saya', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5695_tuan_tuan, 'Hadirin sekalian', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5696_bermacam_macam, 'Bermacam-macam', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5697_sewa_rumah, 'Sewa Rumah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5697_sewa_rumah, 'Menyewa', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5698_persewaan, 'Persewaan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5699_kapal_barang, 'Kapal barang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5699_kapal_barang, 'Kapal Barang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5700_tepung_terigu, 'Tepung terigu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5700_tepung_terigu, 'Tepung', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5707_perampok, 'Perampok', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5707_perampok, 'Pencuri', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5709_mengejutkan, 'Mengejutkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5709_mengejutkan, 'Mengejutkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5709_mengejutkan, 'Sangat mengherankan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5710_untuk_membersihkan, 'Untuk Membersihkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5711_untuk_mengeringkan_sesuatu, 'Untuk Mengeringkan Sesuatu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5711_untuk_mengeringkan_sesuatu, 'Untuk Mengeringkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5712_untuk_menyebar, 'Untuk Menyebar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5712_untuk_menyebar, 'Untuk Membuat Kekacauan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5713_untuk_memisahkan_sesuatu, 'Untuk Memisahkan Sesuatu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5713_untuk_memisahkan_sesuatu, 'Untuk Melepaskan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5936_sederhana, 'Sederhana', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5936_sederhana, 'Mudah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5936_sederhana, 'Hanya', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6737_rawa, 'Rawa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6737_rawa, 'Rawa', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6737_rawa, 'Rawa', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7226_lampu, 'Lampu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7226_lampu, 'Lampu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7499_editor, 'Editor', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7775_selebaran, 'selebaran', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7775_selebaran, 'Surat edaran', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7775_selebaran, 'Pamflet', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7775_selebaran, 'Penyebaran', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8687_lengan, 'Lengan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8687_lengan, 'Persenjataan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8687_lengan, 'Bersenjata', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8724_abnormal, 'Abnormal', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8724_abnormal, 'Kelainan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8816_hari_libur, 'Hari libur', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8816_hari_libur, 'Hari Libur Nasional', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8816_hari_libur, 'Hari Libur Nasional', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8865_isu, 'Isu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8865_isu, 'Gosip', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8978_selangkangan, 'selangkangan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8978_selangkangan, 'Kunci paha', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8979_sendi_pinggul, 'Sendi Pinggul', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8979_sendi_pinggul, 'Panggul', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9004_perut_kembung, 'Perut kembung', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9004_perut_kembung, 'Gas', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9004_perut_kembung, 'Kentut', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9005_argumen_yang_tidak_logis, 'Argumen yang Tidak Logis', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9005_argumen_yang_tidak_logis, 'Argumen yang Tidak Masuk Akal', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9005_argumen_yang_tidak_logis, 'Alasan yang payah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9043_talas, 'Talas', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9043_talas, 'Talas Jepang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9064_tukang_bonceng, 'Tukang bonceng', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9064_tukang_bonceng, 'Pemondok yang Tidak Membayar Apa Pun', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9065_sopan_santun, 'Sopan santun', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9065_sopan_santun, 'Lembut', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9065_sopan_santun, 'Baik hati', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9273_alami, 'Alami', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9342_untuk_menghapus, 'Untuk Menghapus', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9342_untuk_menghapus, 'Untuk Mengepel', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9371_untuk_diselamatkan, 'Untuk Diselamatkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9371_untuk_diselamatkan, 'Untuk Menambah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9371_untuk_diselamatkan, 'Untuk Akumulasi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9398_margin_sempit, 'Margin Sempit', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9398_margin_sempit, 'Perbedaan Kecil', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9442_untuk_menghasilkan_untung, 'Untuk Menghasilkan Untung', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9442_untuk_menghasilkan_untung, 'Untuk Mendapatkan Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9446_keponakan_laki_laki, 'Keponakan laki-laki', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9487_pojok_jalan, 'Pojok Jalan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9487_pojok_jalan, 'Jalan', false, true);

  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2873_tahunan, 'ねんじ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3825_kebun, 'その', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3825_kebun, 'えん', NULL, false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4277_untuk_menghalangi, 'さまたげる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4639_aliran_gunung, 'さわ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4927_kemerosotan, 'ふしん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5002_untuk_menangkap, 'とらえる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5466_untuk_menyelamatkan, 'すくう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5484_imitasi, 'まね', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5598_sederhana, 'かんい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5611_untuk_mengedit, 'へんしゅうする', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5612_penyedot_debu, 'そうじき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5613_untuk_berjalan_jalan, 'さんぽする', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5614_sangat_indah, 'はなばなしい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5615_kecuali, 'のぞいて', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5617_makam, 'はかば', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5621_majalah, 'ざっし', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5622_jendela_tiket, 'まどぐち', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5623_jendela, 'まど', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5624_tidak, 'いな', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5624_tidak, 'いや', NULL, false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5625_penyangkalan, 'ひてい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5626_penolakan, 'ひけつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5627_urat_daging, 'すじ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5628_otot, 'きんにく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5634_periklanan, 'せんでん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5635_proklamasi, 'せんげん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5636_dihormati, 'とうとい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5637_menghormati, 'そんけい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5638_setia, 'ちゅうじつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5639_nasihat, 'ちゅうこく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5640_untuk_memperluas, 'ひろがる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5641_pembesaran, 'かくちょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5642_perbesar, 'かくだい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5643_untuk_memanipulasi, 'あやつる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5644_kesucian, 'みさお', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5645_operasi, 'そうさ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5646_senam, 'たいそう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5647_sebutan_kehormatan, 'けいご', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5648_untuk_hidup, 'くらす', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5649_mentah, 'やぼ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5650_abu, 'はい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5651_abu_abu, 'はいいろ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5652_asbak, 'はいざら', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5653_untuk_matang, 'うれる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5654_kata_majemuk, 'じゅくご', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5655_mentah, 'みじゅく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5656_mematangkan, 'せいじゅく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5657_untuk_berbeda, 'ことなる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5658_kelainan, 'いじょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5659_jenis_kelamin_berbeda, 'いせい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5660_beda_arti, 'いぎ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5661_kaisar_jepang, 'てんのう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5662_putra_mahkota, 'こうたいし', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5663_keluarga_kekaisaran, 'こうぞく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5664_keluarga_kekaisaran, 'こうしつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5665_untuk_menumpuk, 'もる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5667_gula, 'さとう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5670_fruktosa, 'かとう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5671_bebas_gula, 'むとう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5672_untuk_memasok, 'おさめる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5673_penyimpanan, 'しゅうのう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5674_pembayaran, 'のうにゅう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5675_paru_paru, 'はい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5676_kanker_paru_paru, 'はいがん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5677_sakit_paru_paru, 'はいびょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5678_luar_biasa, 'いちじるしい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5679_pengarang, 'ちょしゃ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5680_menulis, 'ちょさく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5681_menjadi_panas_dan_lengket, 'むれる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5682_uap, 'じょうき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5683_gudang, 'くら', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5684_lemari_es, 'れいぞうこ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5685_jizo, 'じぞう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5686_pakaian, 'よそおい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5687_peralatan, 'そうち', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5688_samaran, 'へんそう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5689_pakaian, 'ふくそう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5690_pintu_belakang, 'うらぐち', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5691_untuk_menusuk_dari_belakang, 'うらぎる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5692_pengkhianatan, 'うらぎり', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5693_gang, 'うらどおり', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5694_belakang, 'うら', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5695_tuan_tuan, 'しょくん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5696_bermacam_macam, 'しょ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5697_sewa_rumah, 'やちん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5698_persewaan, 'ちんたい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5699_kapal_barang, 'かもつせん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5700_tepung_terigu, 'こむぎこ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5707_perampok, 'どろぼう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5709_mengejutkan, 'おどろかす', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5710_untuk_membersihkan, 'そうじする', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5711_untuk_mengeringkan_sesuatu, 'かわかす', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5712_untuk_menyebar, 'ちらかす', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5713_untuk_memisahkan_sesuatu, 'はなす', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5936_sederhana, 'かんたん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6737_rawa, 'どろぬま', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7226_lampu, 'あかり', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7499_editor, 'へんしゅうしゃ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7775_selebaran, 'ちらし', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8687_lengan, 'ぶそう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8724_abnormal, 'いじょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8816_hari_libur, 'さいじつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8865_isu, 'うわさ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8978_selangkangan, 'こかん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8979_sendi_pinggul, 'こかんせつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9004_perut_kembung, 'へ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9005_argumen_yang_tidak_logis, 'へりくつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9043_talas, 'さといも', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9064_tukang_bonceng, 'いそうろう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9065_sopan_santun, 'おんこう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9273_alami, 'てんねん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9342_untuk_menghapus, 'ぬぐう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9371_untuk_diselamatkan, 'たまる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9398_margin_sempit, 'きんさ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9442_untuk_menghasilkan_untung, 'もうける', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9446_keponakan_laki_laki, 'おい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9487_pojok_jalan, 'まちかど', NULL, true, true);

  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2873_tahunan, '今年の年次大会は無事終了いたしました。', 'Konvensi tahunan tahun ini berakhir dengan sukses.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2873_tahunan, 'その情報は株主に郵送された年次報告書に記載されていました。', 'Informasi itu ada dalam laporan tahunan yang dikirimkan kepada pemegang saham.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2873_tahunan, '当社では、未消化の年次休暇は次の年に繰り越すことができません。', 'Di perusahaan kami, cuti tahunan yang tidak digunakan tidak dapat dialihkan ke tahun berikutnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3825_kebun, 'エデンの園でアダムとイブが食べたのは、実はリンゴじゃなくてバナナだったかもしれないんだって。', 'Dikatakan bahwa apa yang Adam dan Hawa makan di Taman Eden mungkin adalah pisang, bukan apel.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3825_kebun, 'リンゴ園でリンゴを箱づめするアルバイトをしていました。', 'Saya mempunyai pekerjaan paruh waktu di mana saya mengemas apel dalam kotak di kebun apel.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3825_kebun, 'うちの園の先生たちは、みんな良い先生ばかりです。', 'Semua guru di prasekolah kami adalah guru yang sangat baik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4277_untuk_menghalangi, 'あの会社は、トーフグの成功を妨げようとしているらしい。', 'Saya mendengar bahwa perusahaan berusaha menghambat kesuksesan Tofugu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4277_untuk_menghalangi, '生産性を妨げるものは、すててしまった方がいいよ。', 'Sebaiknya Anda menyingkirkan hal-hal yang menghambat produktivitas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4277_untuk_menghalangi, 'どうして人々は宇宙人が地球にやってくる事を妨げようとするのか理解できません。', 'Saya tidak mengerti mengapa orang berusaha mencegah alien mencapai bumi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4639_aliran_gunung, 'とても美しい沢ですね。', 'Bukankah ini sungai pegunungan yang sangat indah?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4639_aliran_gunung, 'この沢には沢ガニなど、たくさんの生き物が住んでいます。', 'Banyak makhluk seperti kepiting air tawar hidup di aliran ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4639_aliran_gunung, '沢の音を聞きながら歩くのが好きなんです。', 'Saya suka berjalan sambil mendengarkan suara aliran sungai.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4639_aliran_gunung, 'フロリダのとある沢のほとりで、巨大なワニを見ました。', 'Saya melihat buaya raksasa di dekat rawa di Florida.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4927_kemerosotan, 'イチローは今季は不振なようだね。', 'Sepertinya Ichiro sedang terpuruk musim ini, bukan begitu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4927_kemerosotan, '最近、食欲不振が続いてるんです。', 'Saya mengalami kehilangan nafsu makan akhir-akhir ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4927_kemerosotan, '業績不振で落ちこんでいて、食欲不振になっているんです。	', 'Saya merasa sedih karena kinerja bisnis yang buruk, dan itu menyebabkan saya kehilangan nafsu makan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4927_kemerosotan, '私のCDはしばらく売上不振に苦しんでいたが、ラジオで紹介されてから今月は売上げが上昇しています。	', 'CD saya sempat mengalami penurunan penjualan selama beberapa waktu, namun sejak diperkenalkan di radio, penjualan kembali meningkat di bulan ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5002_untuk_menangkap, '兵士たちは敵を生きたまま捕えた。', 'Para prajurit menangkap musuh hidup-hidup.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5002_untuk_menangkap, '前線で数名の若い敵兵を捕えました！', 'Kami menangkap beberapa tentara muda musuh di garis depan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5002_untuk_menangkap, '捕えられたスパイは静かに笑った。', 'Mata-mata yang ditangkap itu tersenyum pelan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5002_untuk_menangkap, '王を捕えれば、戦いは終わるはずだった。', 'Jika mereka menangkap raja, pertempuran seharusnya berakhir.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5466_untuk_menyelamatkan, '彼らは人々を救うために、毎日働いています。', 'Mereka bekerja setiap hari untuk menyelamatkan orang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5466_untuk_menyelamatkan, '地元のボランティアが多くの命を救いました。', 'Relawan lokal menyelamatkan banyak nyawa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5466_untuk_menyelamatkan, 'あなたが私を救ってくれたから、今の私がいるんです。', 'Saya menjadi seperti sekarang ini karena Anda menyelamatkan saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5466_untuk_menyelamatkan, '救急車が来るまで、彼を救うためにできることをしていました。', 'Saya melakukan semua yang saya bisa untuk menyelamatkannya sampai ambulans tiba.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5484_imitasi, '四歳になる娘が、見るもの全てを真似するので困っています。', 'Saya mengalami kesulitan karena putri saya yang berusia empat tahun meniru semua yang dilihatnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5598_sederhana, 'とりあえず、簡易のテントを張っておいたよ。', 'Saya sudah mendirikan tenda sederhana untuk saat ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5598_sederhana, 'かなり簡易な作りですが、フンドシを作ってみました。', 'Polanya cukup sederhana, tapi saya membuat fundoshi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5598_sederhana, 'もしうちに泊まりたいなら、簡易ベッドがあるよ。', 'Jika Anda ingin menginap di tempat kami, kami memiliki tempat tidur bayi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5611_untuk_mengedit, '今オフィスで資料の要約を編集しているところよ。', 'Saya sedang mengedit ringkasan dokumen di kantor sekarang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5612_penyedot_debu, '科学者は、宇宙はある巨大な掃除機だと言うでしょ？だったら、それをカーペットを掃除するのに使ったらいいんじゃない？？', 'Para ilmuwan mengatakan bahwa ruang angkasa adalah ruang hampa raksasa, bukan? Jadi mengapa kita tidak menggunakannya untuk membersihkan karpet saja?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5613_untuk_berjalan_jalan, '何時くらいに散歩する予定なんですか？', 'Sekitar jam berapa Anda berencana untuk berjalan-jalan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5613_untuk_berjalan_jalan, '健康のために毎日散歩するようにしています。', 'Saya mencoba berjalan-jalan setiap hari untuk kesehatan saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5613_untuk_berjalan_jalan, '私は散歩しながら、考え事をするのが好きなんです。', 'Saya suka berpikir sambil berjalan-jalan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5613_untuk_berjalan_jalan, '妻が、今日は早目に仕事を切り上げて犬を散歩させてほしいと言っているのですが、よろしいでしょうか。', 'Istri saya ingin saya pulang kerja lebih awal dan mengajak anjing jalan-jalan hari ini. Apakah kamu tidak keberatan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5614_sangat_indah, 'その左利きの投手は、大リーグで華々しいデビューを飾りました。', 'Pelempar kidal itu melakukan debut liga utama yang brilian.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5615_kecuali, '彼女は厄介な仕事をうまくやってのけた…あることを除いて、だが。', 'Dia berhasil melakukan pekerjaan rumit itu dengan baik... kecuali untuk itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5617_makam, '墓場の隣に住んだら、お化けがドアをノックすることもあるかもしれない。', 'Jika Anda tinggal di sebelah kuburan, hantu mungkin akan mengetuk pintu Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5621_majalah, 'この雑誌の表紙のインターバル撮影された写真すごい好きかも。', 'Saya sangat menyukai fotografi time-lapse di sampul majalah ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5622_jendela_tiket, '窓口の仕事ではあったが、彼女はその面接をとてもうまくこなした。', 'Dia benar-benar lolos dalam wawancara kerja meskipun itu hanya untuk posisi ticket window.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5623_jendela, 'この窓は何で作られているんですか。', 'Terbuat dari apakah jendela ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5624_tidak, 'そのビデオを見るか否か、まだ決めきれていない。', 'Saya belum memutuskan apakah saya akan menonton videonya atau belum.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5625_penyangkalan, 'その女優はダイエット中であることを否定した。', 'Aktris itu membantah bahwa dia sedang diet.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5625_penyangkalan, '社長にやる事なす事全てを否定されて、やる気を完全に失ったよ。', 'Saya benar-benar kehilangan motivasi, karena presiden menyangkal semua yang saya lakukan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5625_penyangkalan, '二重否定の文はいつも上手く訳せないんです。', 'Saya tidak selalu bisa menerjemahkan kalimat negatif ganda dengan baik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5626_penolakan, '今朝新聞で上院は議案を否決したって読んだよ。', 'Saya membaca bahwa Senat menolak RUU tersebut di surat kabar pagi ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5627_urat_daging, 'ジョギングをしてる時に足の筋を痛めちゃった。', 'Kaki saya tegang saat sedang joging.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5627_urat_daging, '今日は久々に牛筋のに込みでも作ってみますか。', 'Sudah lama berlalu, tapi saya rasa saya akan mencoba membuat sup urat daging sapi lagi hari ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5627_urat_daging, 'ほら、肉を焼く前にちゃんと筋を切っておかなかったから焼いたら縮んじゃったでしょ？', 'Lihat, kamu tidak memotong ototnya dengan benar sebelum dimasak, jadi dagingnya menyusut saat kamu memanggangnya, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5628_otot, '毎日七時に仕事を終え、筋肉を鍛えるために帰り道にジムに寄ります。', 'Saya berangkat kerja jam 7 malam. setiap hari lalu mampir ke gym dalam perjalanan pulang untuk mengembangkan otot saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5634_periklanan, 'トーフグの広告宣伝費はいくらぐらいですか。', 'Berapa banyak uang yang Tofugu keluarkan untuk iklan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5635_proklamasi, 'ポツダム宣言っていつだっけ？', 'Kapan Deklarasi Potsdam?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5635_proklamasi, 'ここに長きにわたった二国間の戦争が終結したことを宣言します。', 'Dengan ini kami menyatakan bahwa perang panjang antara kedua negara telah berakhir.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5635_proklamasi, '彼のお気に入りのアイドルが、年末に引退するって宣言したから、彼も他のファンもショックを受けちゃってるのよ。', 'Idola favoritnya mengejutkan dia dan penggemar lainnya dengan mengumumkan bahwa dia akan pensiun pada akhir tahun ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5636_dihormati, '息子に、「命ってどれくらい尊いの？」なんて聞かれちゃってさ。言葉に窮しちゃったよ。', 'Anak saya menanyakan sesuatu seperti, "Seberapa berharganya hidup ini?" Aku kesulitan menjawabnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5637_menghormati, '彼の事、知れば知る程尊敬するのよね。', 'Semakin saya mengenalnya, semakin saya menghormatinya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5638_setia, '私達の子どもはあなたの子と違って、忠実に言うことを聞くんです。', 'Anak-anak kami dengan setia melakukan apa yang diperintahkan, tidak seperti anak Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5639_nasihat, '彼の忠告を侮るでないぞ、さもなくば命を落としかねんぞ。', 'Jangan meremehkan nasihatnya, atau Anda mungkin kehilangan nyawa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5640_untuk_memperluas, '薄暗い部屋の床に、血が静かに拡がっていた。', 'Darah diam-diam menyebar di lantai dalam ruangan redup.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5641_pembesaran, 'どうやってそんなにピアスの穴を拡張したの？', 'Bagaimana kamu bisa melebarkan lubang tindik telingamu sebanyak itu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5641_pembesaran, 'ファイルのサイズを拡張したいのですが。', 'Saya ingin memperbesar ukuran file.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5641_pembesaran, '日本政府は、羽田空港と成田空港を拡張するべきか議論している。', 'Pemerintah Jepang sedang memperdebatkan apakah akan memperluas bandara Haneda dan Narita.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5642_perbesar, 'このボタンをクリックしたら、コウイチの顔が拡大できるよ。', 'Jika Anda mengklik tombol ini, Anda dapat memperbesar wajah Koichi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5642_perbesar, 'コウイチはトーフグのビジネスを火星まで拡大するため、宇宙人を一人やとうことにした。', 'Koichi memutuskan untuk menyewa alien untuk memperluas bisnis Tofugu ke Mars.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5642_perbesar, '写真を拡大した時に、彼氏の鼻毛が出てることを発見しちゃったんだよね。どん引きだったわ。', 'Saya memperbesar foto dan menemukan bulu hidung pacar saya menonjol. Saya dimatikan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5643_untuk_memanipulasi, 'クマが裏でみんなを操っている黒幕だっていう噂があるんだ。', 'Ada rumor bahwa Kuma memanipulasi semua orang di belakang layar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5644_kesucian, '私の兄は女性は結婚するまで操を守るべきだと言う。', 'Kakakku berkata bahwa anak perempuan harus menjaga kesuciannya sampai menikah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5645_operasi, '他人にスマフォの遠隔操作を可能にさせるバックドアを発見しました。', 'Kami menemukan pintu belakang yang memungkinkan seseorang mengoperasikan ponsel cerdas Anda dari jarak jauh.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5646_senam, 'この体操は見た目よりもずっときついんですよ。', 'Latihan ini sebenarnya jauh lebih sulit daripada yang terlihat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5647_sebutan_kehormatan, 'あの女が私に敬語を使わないなんて、本当に屈辱的だわ。', 'Sangat memalukan karena dia tidak pernah menggunakan gelar kehormatan denganku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5648_untuk_hidup, '彼は今は幸せに暮らしているが、ああ見えて苦難を経験してるんだぜ。', 'Dia menjalani kehidupan yang bahagia sekarang, tapi sebenarnya dia mengalami banyak kesulitan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5649_mentah, 'うちの学校は本当に野暮だから、生徒たちのソーシャルメディアの利用を禁止してるんだよ。', 'Sekolah kami sangat bodoh sehingga melarang penggunaan media sosial oleh siswa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5650_abu, '鹿児島の桜島の火山の噴火で、近くの街は灰だらけになってしまいました。', 'Letusan gunung berapi Sakurajima di Kagoshima menutupi kota terdekat dengan abu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5651_abu_abu, 'この灰色のお守りは、悪い気を追い払ってくれます。', 'Pesona abu-abu ini mengusir roh jahat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5652_asbak, '念のため灰皿を買っておきました。', 'Saya membeli asbak untuk berjaga-jaga.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5653_untuk_matang, 'そろそろ桃が熟れる頃だ。', 'Ini adalah waktu dalam setahun untuk buah persik matang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5654_kata_majemuk, '昨日その熟語を学んだところです。', 'Saya baru mempelajari kata majemuk itu kemarin.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5655_mentah, 'まだまだ未熟で分からないことばかりですが、がんばります。 ', 'Aku masih belum begitu baik dalam hal itu dan ada banyak hal yang aku tidak mengerti, tapi aku akan melakukan yang terbaik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5655_mentah, '未熟ながらも、解説させていただきました。', 'Meskipun saya kurang pengalaman, saya memberikan penjelasan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5655_mentah, '自分の未熟さを痛感しました。', 'Saya sangat merasakan ketidakdewasaan saya sendiri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5655_mentah, '俺も昔は未熟で好き勝手してたよ。', 'Saya dulunya belum dewasa dan saya juga melakukan apa pun yang saya inginkan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5656_mematangkan, '成熟した女性の脳と成熟した男性の脳の相違点について、論文を書いています。', 'Saya sedang menulis makalah tentang perbedaan antara otak wanita dewasa dan otak pria dewasa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5657_untuk_berbeda, '種類の異なるコーヒーを飲み比べてみました。', 'Saya minum dan membandingkan berbagai jenis kopi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5657_untuk_berbeda, '異なる言語や文化を背景にした人々同士でコミュニケーションを上手く取るのは難しいと思います。', 'Sulit bagi orang-orang dari latar belakang bahasa dan budaya yang berbeda untuk berkomunikasi dengan baik satu sama lain.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5657_untuk_berbeda, 'それぞれの薬には、異なる副作用があります。', 'Setiap obat mempunyai efek samping yang berbeda-beda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5658_kelainan, '子宮がん検診の結果が「異状あり」だったのでびびっています。', 'Tes Pap saya "tidak normal" dan saya panik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5659_jenis_kelamin_berbeda, 'シェアハウスについて初めて知った時、知らない異性同士が暮らすなんてありえないと思いました。', 'Ketika saya pertama kali mengetahui tentang berbagi rumah, saya pikir mustahil bagi orang asing yang berbeda jenis kelamin untuk tinggal bersama.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5659_jenis_kelamin_berbeda, '今日は異性といつもより長く話しをしました。', 'Hari ini, saya berbicara dengan lawan jenis lebih lama dari biasanya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5659_jenis_kelamin_berbeda, '美果は、異性の筋肉を意識しすぎてるんだって。', 'Mika, kamu terlalu memperhatikan otot anak laki-laki.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5660_beda_arti, 'この単語に異義はありますか？', 'Apakah ada arti berbeda untuk kata ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5661_kaisar_jepang, '天皇陛下に「プラス思考であれば、何でも最後にはうまくいきますよ」なんて助言した奴は一体どこの誰だ？', 'Siapakah orang yang memberikan nasihat kepada Kaisar Jepang untuk bersikap optimis dan bahwa segala sesuatunya akan berjalan baik pada akhirnya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5662_putra_mahkota, '皇太子殿下に「うまくいくといいですね」と言った。', 'Saya memberi tahu putra mahkota bahwa saya berharap segala sesuatunya berjalan baik untuknya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5663_keluarga_kekaisaran, '時々電車は、皇族専用の駅に特別に止まることがあります。', 'Kereta kadang-kadang berhenti tak terjadwal di stasiun khusus untuk Keluarga Kekaisaran.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5664_keluarga_kekaisaran, '皇室はここ最近、かなり大変な状況に陥っています。', 'Rumah tangga Kekaisaran sedang melalui masa yang sangat sulit akhir-akhir ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5665_untuk_menumpuk, 'ここに赤土を盛ってください。', 'Tolong timbunkan tanah merah di sini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5665_untuk_menumpuk, 'お皿に盛られた豪華な食べ物に舌つづみを打ちました。', 'Aku mendecakkan bibirku pada makanan mewah yang disajikan di piringku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5665_untuk_menumpuk, '日本人の中には、不幸や悪霊を追い払うために玄関先に塩を盛る人がいます。', 'Beberapa orang Jepang menimbun garam di depan pintu rumah mereka untuk mengusir kesialan dan roh jahat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5667_gula, 'コーヒーには砂糖を入れる派ですか？', 'Apakah Anda tipe orang yang menyukai gula dalam kopi Anda?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5667_gula, '彼の言葉は、いつも砂糖のようにあまかった。', 'Kata-katanya selalu semanis gula.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5667_gula, 'いやいや、砂糖を忘れたプリンはデザートじゃなくただの卵料理だからね？', 'Tidak, tidak — jika Anda lupa gulanya, puding bukan makanan penutup lagi, ini hanya hidangan telur, oke?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5667_gula, 'ブラウンシュガーは日本語では粗糖と呼ばれ、黒砂糖とは区別されます。', 'Gula merah disebut sotou dalam bahasa Jepang dan berbeda dengan gula muscovado.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5670_fruktosa, 'ブドウ糖果糖液糖は体に悪いって言うじゃない？', 'Sirup jagung fruktosa tinggi dikatakan tidak baik untuk Anda, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5671_bebas_gula, 'さっきも言ったけど、珈琲は無糖派なの。', 'Seperti yang saya katakan sebelumnya, saya minum kopi tanpa pemanis.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5672_untuk_memasok, '無事に商品を納めることができたし、今から飲みに行こうよ！', 'Kami sudah mengirimkan barang dalam keadaan utuh, sekarang ayo kita minum!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5672_untuk_memasok, 'こんな変なフグ模様のノートを納めたのはどこの業者だ？！', 'Perusahaan mana yang memasok buku catatan dengan pola ikan buntal yang aneh?!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5672_untuk_memasok, '血税の使い道が理にかなってさえいれば、政府に税金を納めるのは私は一向に構いませんよ。', 'Saya tidak keberatan membayar pajak kepada pemerintah selama mereka membelanjakannya untuk hal-hal yang wajar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5673_penyimpanan, '私の部屋にはあまり収納スペースがないので、ちょっとした工夫が必要です。', 'Tidak banyak ruang untuk menyimpan barang di kamar saya, jadi memerlukan sedikit kecerdikan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5674_pembayaran, '授業料の納入期限はどこに書いてありますか。', 'Dimana tertulis tanggal jatuh tempo pembayaran uang sekolah?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5674_pembayaran, '急に大きいお金を準備できなかったから、分割納入制度を利用しました。', 'Karena saya tidak bisa langsung menyiapkan uang dalam jumlah besar, saya menggunakan sistem pembayaran cicilan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5674_pembayaran, '五日以内にその製品を納入して頂きたいのですが、可能でしょうか。', 'Saya ingin Anda mengirimkan produk dalam waktu lima hari, apakah mungkin?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5675_paru_paru, '肺気胸は日本ではイケメン病としても知られている。', 'Pneumotoraks paru juga dikenal sebagai penyakit pria tampan di Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5676_kanker_paru_paru, '君の辛さはすごく分かるよ。僕も肺がんなんだ。', 'Saya sangat memahami apa yang Anda alami karena saya juga menderita kanker paru-paru.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5677_sakit_paru_paru, '肺病の治療のために、三日後に入院するんです。', 'Saya akan dirawat di rumah sakit dalam tiga hari untuk mengobati penyakit paru-paru saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5678_luar_biasa, '親馬鹿かもしれませんが、娘の英語力の上達が著しい気がするんですよね。', 'Saya tahu saya adalah orang tua yang penyayang, namun menurut saya ada peningkatan luar biasa dalam kemampuan bahasa Inggris putri saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5679_pengarang, 'なんと私の姉もその本の著者でした。', 'Yang mengejutkan, saudara perempuan saya adalah penulis buku itu juga.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5680_menulis, '彼女は少なくとも五十は著作があります。', 'Dia telah menerbitkan tidak kurang dari lima puluh buku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5681_menjadi_panas_dan_lengket, 'この靴、可愛いんだけど、足が蒸れて臭うんだよね。', 'Sepatu ini kelihatannya lucu, tapi membuat kakiku berkeringat dan bau.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5682_uap, '珈琲メーカーからの蒸気でやけどをしちゃった。', 'Saya terbakar oleh uap dari mesin kopi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5683_gudang, '今、蔵の掃除をしているんです。', 'Kami sedang membersihkan gudang kami sekarang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5684_lemari_es, 'なんでタトゥーで冷蔵庫なんて彫ったの？', 'Mengapa Anda membuat tato bertuliskan kulkas?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5684_lemari_es, '兄が新しい冷蔵庫を持っているのを見て、妹は羨ましそうにしていた。', 'Adikku terlihat iri saat melihat kakak kami punya kulkas baru.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5685_jizo, 'お地蔵さんの頭がへこんでるよ。', 'Kepala Jizou penyok.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5686_pakaian, 'もうすっかり春の装いだね。', 'Anda sudah mengenakan gaun musim semi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5687_peralatan, '今日は電気制御装置の使い方を学びました。', 'Saya belajar cara menggunakan perangkat kontrol listrik hari ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5688_samaran, '変装教室にギリギリ間に合いました。', 'Saya berhasil sampai ke kelas penyamaran pada menit terakhir.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5689_pakaian, '彼のことは好きなんだけど、服装があまり好きじゃないのよね。', 'Aku menyukainya, tapi aku tidak terlalu menyukai cara dia berpakaian.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5690_pintu_belakang, '彼女の家には隠された裏口があるという彼の話は、信憑性を増した。', 'Kisahnya bahwa ada pintu belakang rahasia di rumahnya semakin dipercaya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5691_untuk_menusuk_dari_belakang, '彼女に裏切られて落ち込んでいるんです。', 'Dia mengkhianatiku dan aku merasa tertekan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5691_untuk_menusuk_dari_belakang, '友達と、マラソン大会で一しょにゴールしようねって言ってたのに、裏切られた。', 'Aku dan temanku bilang kami akan menyelesaikan maraton bersama, tapi mereka mengkhianatiku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5692_pengkhianatan, '彼女の裏切りを知ったとき、目の前が真っ暗になった。', 'Ketika saya mengetahui tentang pengkhianatannya, segalanya menjadi gelap di depan mata saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5692_pengkhianatan, 'あの優しさは、裏切りを隠すための仮面だったのかと思うと、胸がギュッとしめつけられた。', 'Memikirkan bagaimana kebaikan itu sebenarnya hanyalah topeng untuk menyembunyikan pengkhianatan mereka membuat dadaku sesak karena kesakitan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5692_pengkhianatan, '天使のような笑顔の裏に、裏切りがひそんでいたなんて、誰が想像できただろう。', 'Siapa yang pernah membayangkan pengkhianatan mengintai di balik senyuman malaikat itu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5693_gang, 'レーシングカーは、裏通りを縫うようにして走っていった。', 'Mobil balap itu melaju kencang, melewati jalan-jalan kecil.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5694_belakang, '私の紹介はパンフレットの裏表紙に記されています。', 'Profil saya dapat ditemukan di halaman belakang pamflet ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5694_belakang, 'この計画の裏には、最高の頭脳集団がいる。', 'Sekelompok elit yang memiliki pemikiran cemerlang berada di balik rencana ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5694_belakang, '古い履き物の中から、十年前のレシートが出てきた。裏には「レベル60になった？」とだけ書かれていた。', 'Kwitansi sepuluh tahun jatuh dari sepasang sepatu tua. Di belakangnya hanya tertulis: "Apakah Anda mencapai level 60?"');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5695_tuan_tuan, '諸君、トーフグのオフィスで独身の 10 人がみんな集まるのってこれがたぶん最後だってこと、気がついていたかい？', 'Teman-teman, sadarkah Anda ini mungkin terakhir kalinya kita semua berada di kantor Tofugu sebagai sepuluh orang lajang?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5696_bermacam_macam, '各出席者の方に、まず諸書類をお配り致します。', 'Kami akan membagikan berbagai dokumen kepada setiap orang yang hadir terlebih dahulu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5697_sewa_rumah, 'この部屋、家賃いくら？', 'Berapa harga sewa tempat ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5697_sewa_rumah, '家賃を下げてもらえませんか。', 'Bisakah Anda menurunkan harga sewanya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5697_sewa_rumah, 'やべっ、家賃、払い忘れてた！', 'Oh tidak, saya lupa membayar sewa!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5697_sewa_rumah, '安月給だけど、この家賃だったら何とか暮らしていけそうかな。', 'Gaji bulananku tidak seberapa, tapi dengan sewa serendah ini aku mungkin bisa bertahan hidup.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5698_persewaan, '友人が賃貸のアパートを探してるんですが、どこかいい物件を知りませんかね。', 'Teman saya sedang mencari apartemen untuk disewa, apakah kamu tahu tempat yang bagus?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5699_kapal_barang, '私の貨物船の中で騒ぐんじゃない！', 'Jangan kasar di kapal barangku!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5700_tepung_terigu, 'お水の三倍の量の小麦粉を入れてください。', 'Tambahkan tepung tiga kali lebih banyak daripada air.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5700_tepung_terigu, 'これは小麦粉を練って作ったお菓子です。', 'Ini adalah makanan manis yang dibuat dengan menguleni tepung.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5700_tepung_terigu, 'うわっ最悪。さっき買った高級小麦粉、電車に忘れちゃった。', 'Oh tidak. Saya meninggalkan tepung mahal yang baru saja saya beli di kereta.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5707_perampok, '泥棒になるためのトレーニングは、ブートキャンプ並にハードです。', 'Pelatihan menjadi pencuri sama sulitnya dengan pelatihan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5709_mengejutkan, '23歳の新入社員は82歳のCEOと結婚して、一緒に仕事をする人全員を驚かした。', 'Rekrutan baru berusia 23 tahun ini mengejutkan semua orang yang bekerja bersamanya dengan menikahi CEO berusia 82 tahun tersebut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5710_untuk_membersihkan, '「今朝は4時から起きてるよ。」「嘘でしょ？いったい何してるの？」「えっと…家を大掃除してるの。」', '"Aku sudah bangun sejak jam empat pagi ini." "Tidak mungkin! Apa yang sedang kamu lakukan?" "Yah, hanya membersihkan sekitar rumah."');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5711_untuk_mengeringkan_sesuatu, 'あなたを愛しています。僕にはあなたが必要なんです。太陽さん、どうか僕の濡れたシャツを今すぐ乾かしてくれませんか？お願いします！！！', 'Aku sangat mencintaimu. aku membutuhkanmu. Bisakah Anda mengeringkan baju saya yang basah sekarang, Tuan Sun? Silakan!!!!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5712_untuk_menyebar, '俺、どうしてこんなに散らかすのが得意なんだろう？', 'Kenapa aku begitu pandai membuat kekacauan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5712_untuk_menyebar, '私は毎日、子供が散らかしたおもちゃを片付けてから寝ます。', 'Setiap hari, saya membersihkan mainan anak saya yang berserakan sebelum tidur.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5712_untuk_menyebar, 'ゴミを散らかしたままにするのは、マナー違反ですよ。', 'Membiarkan sampah berserakan adalah tindakan yang tidak baik lho.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5712_untuk_menyebar, '掃除しても、次の日にはまたすぐ散らかしちゃうんだよね。	', 'Bahkan jika saya membersihkannya, saya akan membuat kekacauan lagi keesokan harinya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5712_untuk_menyebar, 'いや、みんな「ハゲ散らかす」ってよく言うけど、ハゲは別に「散らかす」も「片付ける」もできないものだから！そんな言い方、失礼だろ。', 'Maksud saya, semua orang mengatakan "hage-chirakasu" (kebotakan yang tersebar dan tidak merata), namun kebotakan bukanlah sesuatu yang "menyebar" atau yang bisa Anda "rapikan". Ekspresi seperti itu tidak sopan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5713_untuk_memisahkan_sesuatu, '水泳中は、子供から目を離すと危ないよ！', 'Berbahaya jika mengalihkan pandangan dari anak Anda saat berenang!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5713_untuk_memisahkan_sesuatu, 'この電子レンジとトースター、もうちょっと離して置いた方がいいんじゃない？', 'Bukankah sebaiknya kita meletakkan microwave dan pemanggang roti ini agak berjauhan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5713_untuk_memisahkan_sesuatu, 'ごめん。いま手が離せないんだ。後でかけ直してもいいかな？', 'Maaf, aku sedang melakukan sesuatu. Aku akan meneleponmu kembali. Oke?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5713_untuk_memisahkan_sesuatu, 'あのマラソン選手は、二番手を百メートルも離して余裕でゴールインしたそうです。', 'Pelari maraton tersebut dikatakan telah melintasi garis finis, seratus meter di depan runner-up.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5936_sederhana, 'iPadはノートパソコンよりも持ち運びが簡単です。', 'iPad lebih mudah dibawa-bawa dibandingkan laptop.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6737_rawa, 'この訴訟は泥沼化しています。', 'Gugatan ini telah berubah menjadi rawa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6737_rawa, '友人の離婚の泥沼の争いに巻き込まれてしまった。', 'Saya terjebak dalam perselisihan yang berantakan terkait dengan perceraian teman saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6737_rawa, 'コスタリカの泥沼で、忍者トカゲとしても知られているバシリスクを見ました。', 'Saya melihat beberapa kadal basilisk hijau, yang dikenal sebagai kadal Yesus, di rawa-rawa di Kosta Rika.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7226_lampu, '遠くにぽつんと灯りが見える。', 'Satu-satunya cahaya terlihat di kejauhan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7226_lampu, '窓から暖かい灯りが見えた。', 'Cahaya hangat bisa dilihat melalui jendela.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7226_lampu, '灯りの消えた町は、どこかさびしかった。', 'Kota ini terasa sepi setelah semua lampu padam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7226_lampu, 'その部屋には、小さなロウソクの灯りだけがともっていました。', 'Ruangan itu hanya diterangi oleh cahaya lilin kecil.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7499_editor, 'その本の編集者として任命されてから、過労気味です。', 'Sejak ditunjuk sebagai editor buku tersebut, saya merasa terlalu banyak bekerja.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7775_selebaran, 'スーパーの散らし、ここに置いてなかった？', 'Apakah Anda tidak meninggalkan brosur supermarket di sini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8687_lengan, 'どうやら、武装勢力に襲われたようだ。', 'Tampaknya mereka diserang oleh pemberontak bersenjata.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8724_abnormal, '異常気象が続いています。', 'Cuaca tidak normal terus berlanjut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8816_hari_libur, '今日は祭日だからいつものカフェがお休みだったよ。', 'Hari ini adalah hari libur nasional, jadi kedai kopi yang biasa saya datangi tutup.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8816_hari_libur, '祭日なのに、仕事なの？', 'Anda harus bekerja padahal hari libur nasional?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8816_hari_libur, '祭日だってことを忘れていて、会社に来てしまった。', 'Saya lupa ini hari libur, jadi saya akhirnya datang ke kantor.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8865_isu, 'サイラスというあの男は、実はロボットだという噂がある。', 'Ada rumor yang mengatakan bahwa pria bernama Cyrus itu sebenarnya adalah robot.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8865_isu, 'あなたって本当、噂をするのが好きね。', 'Anda sangat suka bergosip, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8865_isu, 'ネットで噂の「加賀屋」っていう居酒屋に行かない？', 'Apakah Anda ingin pergi ke izakaya "Kagaya" yang dibicarakan semua orang secara online?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8865_isu, '「私、もう何週間もフグを見てないわ。」「ほら、見て。ちょうど今フグが来たわよ。」「あら、噂をすれば影がさす、ね。こんにちは。私たち、今ちょうどあなたのことを話していたのよ。」', '"Aku sudah berminggu-minggu tidak bertemu Fugu." "Oh, lihat. Fugu datang sekarang."
"Yah, bicaralah tentang iblis. Hai, itu. Kami baru saja membicarakanmu."');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8978_selangkangan, '股間がすごく痒い。', 'Selangkanganku sungguh gatal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8978_selangkangan, 'あのダンサーはどうしていつも股間を押さえるの？', 'Mengapa penari itu selalu meletakkan tangannya di selangkangannya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8978_selangkangan, '恥ずかしいかもしれないけど、お医者さんに股間を見てもらったほうがいいと思うよ。', 'Ini mungkin memalukan, tapi menurut saya selangkangan Anda harus diperiksakan ke dokter.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8979_sendi_pinggul, '次は股関節のストレッチです。', 'Selanjutnya adalah peregangan sendi pinggul Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8979_sendi_pinggul, '私は股関節がすごくかたいんです。', 'Saya memiliki pinggul yang sangat kaku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8979_sendi_pinggul, '股関節周りの血流が良くなるエクササイズを教えてもらいました。', 'Saya diajari latihan yang akan meningkatkan aliran darah di sekitar area sendi pinggul.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9004_perut_kembung, 'あなたは屁の話をしていると思っているんですが、合ってますかね。', 'Saya berasumsi Anda berbicara tentang perut kembung, benarkah?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9004_perut_kembung, '私は豚肉を食べると屁がたくさん出ます。', 'Jika saya makan daging babi, saya banyak kentut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9004_perut_kembung, 'それらの屁はまあ満足のいくものだったね。', 'Kentut itu cukup memuaskan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9005_argumen_yang_tidak_logis, 'それは屁理屈ではなく事実である。', 'Itu bukan argumen yang tidak logis, ini fakta.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9005_argumen_yang_tidak_logis, '屁理屈をこねる人は嫌いです。', 'Saya tidak suka orang yang membuat argumen yang tidak masuk akal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9005_argumen_yang_tidak_logis, '屁理屈を言うのはやめて、やるべきことをやりましょう。', 'Mari berhenti membuat alasan yang tidak masuk akal dan lanjutkan apa yang harus kita lakukan!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9043_talas, 'その居酒屋の和風里芋サラダは美味しいよ。', 'Salad talas ala Jepang di izakaya itu enak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9043_talas, '里芋はどうやって保存するのが一番いいですか？', 'Apa cara terbaik untuk mengawetkan talas?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9043_talas, '里芋は日本で何千年も前から食べられています。', 'Talas telah dimakan di Jepang selama ribuan tahun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9064_tukang_bonceng, '居候をするなら、せめて料理くらいは覚えた方がいい。', 'Jika Anda ingin menjadi pekerja lepas, setidaknya Anda harus belajar memasak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9064_tukang_bonceng, '居候の身だから、あんまり強くは言うことはできないんだよね。', 'Saya tidak bisa mengatakan apa pun terlalu keras karena saya tinggal di sini secara gratis.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9064_tukang_bonceng, 'それで、仕事を失って、居候生活を始めたんです。', 'Jadi saya kehilangan pekerjaan dan mulai hidup sebagai pekerja lepas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9065_sopan_santun, '夫はマイペースで、温厚な性格です。　', 'Suamiku melakukan segalanya dengan kecepatannya sendiri dan memiliki sifat lembut.　');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9065_sopan_santun, 'あの人、普段は温厚だけど、怒らせると怖いよ。', 'Orang itu biasanya berwatak lembut, tapi kalau marah dia menakutkan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9065_sopan_santun, 'どちらかといえば、オレは温厚なほうだと思う。', 'Kalaupun ada, menurutku aku termasuk orang yang berwatak lembut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9273_alami, 'この池はたくさんの人が泳いでて、まるで天然のプールだ。', 'Kolam ini banyak terdapat orang yang berenang di dalamnya, seperti kolam alami.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9273_alami, 'コンビニでペットボトルの天然水を買ってきてくれる？', 'Maukah Anda membeli sebotol air alami dari toko serba ada?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9273_alami, '天然のウナギやブリは高いです。', 'Harga belut liar dan ekor kuning cukup mahal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9342_untuk_menghapus, 'うちの子、まだ口をそでで拭うクセがあるんです。', 'Anak saya masih punya kebiasaan menyeka mulut dengan lengan baju.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9342_untuk_menghapus, '男はシャツで血を拭うと、また走り出した。', 'Setelah menyeka darah dengan bajunya, pria itu mulai berlari kembali.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9342_untuk_menghapus, '彼女はハンカチでなみだをそっと拭うと、決心したように立ち上がりました。', 'Setelah dengan lembut menyeka air matanya dengan sapu tangan, dia berdiri seolah-olah dia telah membuat keputusan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9371_untuk_diselamatkan, '出張がたくさんありすぎて、マイルが本当すぐに貯まるよ！', 'Saya memiliki begitu banyak perjalanan bisnis sehingga miles saya terakumulasi dengan sangat cepat!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9371_untuk_diselamatkan, '私の息子はおこづかいが少しでも貯まると、コンビニにポケモンカードを買いに行くんです。', 'Segera setelah anak saya memiliki sedikit tabungan uang saku, dia pergi dan membeli kartu Pokémon di toko serba ada.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9371_untuk_diselamatkan, '生きてるうちにお金を使わないと、どんどん銀行に貯まっていくだけだし、結局天国には持っていけないのよ。', 'Jika Anda tidak membelanjakan uang Anda saat masih hidup, uang tersebut akan terus menumpuk di bank — dan pada akhirnya, Anda tidak dapat membawanya ke surga.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9398_margin_sempit, '僅差でライバルに負けて、すごくくやしかった。', 'Kalah dari rival saya dengan selisih yang kecil sungguh membuat frustrasi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9398_margin_sempit, '試合は僅差で相手チームが勝った。', 'Tim lawan memenangkan pertandingan dengan selisih tipis.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9398_margin_sempit, '僅差だったため、最後まで結果が読めなかった。', 'Itu sangat dekat sehingga tidak ada yang bisa memprediksi hasilnya sampai akhir.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9398_margin_sempit, '僅差だったんで判定に時間がかかったんです。', 'Jaraknya sangat dekat, sehingga butuh beberapa waktu bagi para juri untuk mengambil keputusan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9442_untuk_menghasilkan_untung, 'その店は毎日かなり儲けているらしい。', 'Toko itu rupanya menghasilkan untung yang cukup besar setiap harinya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9442_untuk_menghasilkan_untung, 'うまく投資して大きく儲けることができた。', 'Saya berinvestasi dengan baik dan mampu menghasilkan keuntungan besar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9442_untuk_menghasilkan_untung, '仕事が急に休みになって、一日儲けた気分だ。', 'Pekerjaanku tiba-tiba dibatalkan, jadi rasanya aku mendapat satu hari penuh.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9442_untuk_menghasilkan_untung, '二人は結婚して、すぐに子どもを儲けました。', 'Mereka menikah dan segera memiliki anak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9446_keponakan_laki_laki, '甥は今年、中学生になった。', 'Keponakan saya menjadi siswa sekolah menengah tahun ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9446_keponakan_laki_laki, '甥っ子と公園でキャッチボールをした。', 'Saya bermain tangkap tangan dengan keponakan saya di taman.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9446_keponakan_laki_laki, '今のって、甥っ子ちゃん？大きくなったね！', 'Apakah itu keponakanmu? Wow, dia menjadi sangat besar!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9487_pojok_jalan, '街角にお気に入りの小さなカフェがある。', 'Ada sebuah kafe kecil yang saya suka di sudut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9487_pojok_jalan, '街角で友達にバッタリ出くわした。', 'Saya bertemu dengan seorang teman di jalan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9487_pojok_jalan, '街角でカッコよく立ってみたけど、誰も見ていなかった。', 'Saya mencoba berdiri di jalan sambil terlihat keren, tetapi tidak ada yang melihat.');

  -- 4. PREREQUISITES
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1513_kesederhanaan, id FROM items WHERE type = 'radical' AND (slug = '85' OR id = '85') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1513_kesederhanaan, r_344_selang);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1515_majalah, id FROM items WHERE type = 'radical' AND (slug = '117' OR id = '117') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1515_majalah, id FROM items WHERE type = 'radical' AND (slug = '97' OR id = '97') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1515_majalah, id FROM items WHERE type = 'radical' AND (slug = '65' OR id = '65') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1516_jendela, id FROM items WHERE type = 'radical' AND (slug = '170' OR id = '170') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1516_jendela, id FROM items WHERE type = 'radical' AND (slug = '140' OR id = '140') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1516_jendela, id FROM items WHERE type = 'radical' AND (slug = '65' OR id = '65') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1517_tidak, id FROM items WHERE type = 'radical' AND (slug = '96' OR id = '96') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1517_tidak, id FROM items WHERE type = 'radical' AND (slug = '16' OR id = '16') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1518_otot, id FROM items WHERE type = 'radical' AND (slug = '85' OR id = '85') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1518_otot, id FROM items WHERE type = 'radical' AND (slug = '43' OR id = '43') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1518_otot, id FROM items WHERE type = 'radical' AND (slug = '13' OR id = '13') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1521_menyatakan, id FROM items WHERE type = 'radical' AND (slug = '78' OR id = '78') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1521_menyatakan, id FROM items WHERE type = 'radical' AND (slug = '1' OR id = '1') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1521_menyatakan, id FROM items WHERE type = 'radical' AND (slug = '293' OR id = '293') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1522_dihormati, id FROM items WHERE type = 'radical' AND (slug = '8767' OR id = '8767') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1522_dihormati, id FROM items WHERE type = 'radical' AND (slug = '182' OR id = '182') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1522_dihormati, id FROM items WHERE type = 'radical' AND (slug = '74' OR id = '74') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1523_loyalitas, id FROM items WHERE type = 'radical' AND (slug = '49' OR id = '49') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1523_loyalitas, id FROM items WHERE type = 'radical' AND (slug = '65' OR id = '65') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1524_memperpanjang, id FROM items WHERE type = 'radical' AND (slug = '63' OR id = '63') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1524_memperpanjang, r_382_lebar);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1525_memanipulasi, id FROM items WHERE type = 'radical' AND (slug = '63' OR id = '63') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1525_memanipulasi, r_8830_sirup);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1526_menghormati, id FROM items WHERE type = 'radical' AND (slug = '255' OR id = '255') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1526_menghormati, id FROM items WHERE type = 'radical' AND (slug = '60' OR id = '60') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1527_mata_pencaharian, id FROM items WHERE type = 'radical' AND (slug = '356' OR id = '356') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1527_mata_pencaharian, id FROM items WHERE type = 'radical' AND (slug = '22' OR id = '22') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1528_abu, id FROM items WHERE type = 'radical' AND (slug = '116' OR id = '116') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1528_abu, id FROM items WHERE type = 'radical' AND (slug = '46' OR id = '46') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1529_mematangkan, r_345_menerima);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1529_mematangkan, id FROM items WHERE type = 'radical' AND (slug = '223' OR id = '223') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1529_mematangkan, id FROM items WHERE type = 'radical' AND (slug = '131' OR id = '131') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1530_berbeda, id FROM items WHERE type = 'radical' AND (slug = '51' OR id = '51') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1530_berbeda, id FROM items WHERE type = 'radical' AND (slug = '269' OR id = '269') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1531_kaisar, id FROM items WHERE type = 'radical' AND (slug = '52' OR id = '52') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1531_kaisar, id FROM items WHERE type = 'radical' AND (slug = '48' OR id = '48') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1532_tumpukan, id FROM items WHERE type = 'radical' AND (slug = '263' OR id = '263') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1532_tumpukan, id FROM items WHERE type = 'radical' AND (slug = '84' OR id = '84') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1533_pasir, id FROM items WHERE type = 'radical' AND (slug = '54' OR id = '54') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1533_pasir, id FROM items WHERE type = 'radical' AND (slug = '198' OR id = '198') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1535_gula, id FROM items WHERE type = 'radical' AND (slug = '98' OR id = '98') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1535_gula, id FROM items WHERE type = 'radical' AND (slug = '62' OR id = '62') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1535_gula, id FROM items WHERE type = 'radical' AND (slug = '8761' OR id = '8761') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1535_gula, id FROM items WHERE type = 'radical' AND (slug = '105' OR id = '105') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1535_gula, id FROM items WHERE type = 'radical' AND (slug = '16' OR id = '16') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1536_memasok, id FROM items WHERE type = 'radical' AND (slug = '86' OR id = '86') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1536_memasok, id FROM items WHERE type = 'radical' AND (slug = '346' OR id = '346') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1537_paru_paru, id FROM items WHERE type = 'radical' AND (slug = '43' OR id = '43') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1537_paru_paru, id FROM items WHERE type = 'radical' AND (slug = '267' OR id = '267') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1538_pengarang, id FROM items WHERE type = 'radical' AND (slug = '90' OR id = '90') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1538_pengarang, id FROM items WHERE type = 'radical' AND (slug = '203' OR id = '203') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1539_uap, id FROM items WHERE type = 'radical' AND (slug = '90' OR id = '90') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1539_uap, r_8794_karang);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1539_uap, id FROM items WHERE type = 'radical' AND (slug = '131' OR id = '131') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1540_gudang, r_347_gudang);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1541_pakaian, id FROM items WHERE type = 'radical' AND (slug = '8826' OR id = '8826') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1541_pakaian, id FROM items WHERE type = 'radical' AND (slug = '97' OR id = '97') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1541_pakaian, id FROM items WHERE type = 'radical' AND (slug = '320' OR id = '320') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1542_belakang, id FROM items WHERE type = 'radical' AND (slug = '8' OR id = '8') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1542_belakang, id FROM items WHERE type = 'radical' AND (slug = '125' OR id = '125') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1542_belakang, id FROM items WHERE type = 'radical' AND (slug = '8770' OR id = '8770') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1543_bermacam_macam, id FROM items WHERE type = 'radical' AND (slug = '117' OR id = '117') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1543_bermacam_macam, id FROM items WHERE type = 'radical' AND (slug = '203' OR id = '203') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1544_menyewa, id FROM items WHERE type = 'radical' AND (slug = '75' OR id = '75') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1544_menyewa, id FROM items WHERE type = 'radical' AND (slug = '48' OR id = '48') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1544_menyewa, id FROM items WHERE type = 'radical' AND (slug = '94' OR id = '94') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_8858_isu, id FROM items WHERE type = 'radical' AND (slug = '16' OR id = '16') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_8858_isu, id FROM items WHERE type = 'radical' AND (slug = '2' OR id = '2') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_8858_isu, id FROM items WHERE type = 'radical' AND (slug = '182' OR id = '182') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_8858_isu, id FROM items WHERE type = 'radical' AND (slug = '74' OR id = '74') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_8964_selangkangan, id FROM items WHERE type = 'radical' AND (slug = '43' OR id = '43') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_8964_selangkangan, id FROM items WHERE type = 'radical' AND (slug = '160' OR id = '160') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_8994_perut_kembung, id FROM items WHERE type = 'radical' AND (slug = '37' OR id = '37') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_8994_perut_kembung, id FROM items WHERE type = 'radical' AND (slug = '161' OR id = '161') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_9388_sedikit, id FROM items WHERE type = 'radical' AND (slug = '75' OR id = '75') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_9388_sedikit, r_428_sepatu_bot);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_9393_menghasilkan_uang, id FROM items WHERE type = 'radical' AND (slug = '75' OR id = '75') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_9393_menghasilkan_uang, id FROM items WHERE type = 'radical' AND (slug = '117' OR id = '117') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_9393_menghasilkan_uang, id FROM items WHERE type = 'radical' AND (slug = '203' OR id = '203') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_9393_menghasilkan_uang, id FROM items WHERE type = 'radical' AND (slug = '3' OR id = '3') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_9445_keponakan_laki_laki, id FROM items WHERE type = 'radical' AND (slug = '210' OR id = '210') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_9445_keponakan_laki_laki, id FROM items WHERE type = 'radical' AND (slug = '243' OR id = '243') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2873_tahunan, id FROM items WHERE type = 'kanji' AND (slug = '546' OR id = '546') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2873_tahunan, id FROM items WHERE type = 'kanji' AND (slug = '616' OR id = '616') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3825_kebun, id FROM items WHERE type = 'kanji' AND (slug = '960' OR id = '960') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4277_untuk_menghalangi, id FROM items WHERE type = 'kanji' AND (slug = '1096' OR id = '1096') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4639_aliran_gunung, id FROM items WHERE type = 'kanji' AND (slug = '1208' OR id = '1208') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4927_kemerosotan, id FROM items WHERE type = 'kanji' AND (slug = '563' OR id = '563') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4927_kemerosotan, id FROM items WHERE type = 'kanji' AND (slug = '1307' OR id = '1307') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5002_untuk_menangkap, id FROM items WHERE type = 'kanji' AND (slug = '1265' OR id = '1265') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5466_untuk_menyelamatkan, id FROM items WHERE type = 'kanji' AND (slug = '1465' OR id = '1465') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5484_imitasi, id FROM items WHERE type = 'kanji' AND (slug = '971' OR id = '971') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5484_imitasi, id FROM items WHERE type = 'kanji' AND (slug = '1472' OR id = '1472') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5598_sederhana, k_1513_kesederhanaan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5598_sederhana, id FROM items WHERE type = 'kanji' AND (slug = '1063' OR id = '1063') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5611_untuk_mengedit, id FROM items WHERE type = 'kanji' AND (slug = '1445' OR id = '1445') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5611_untuk_mengedit, id FROM items WHERE type = 'kanji' AND (slug = '754' OR id = '754') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5612_penyedot_debu, id FROM items WHERE type = 'kanji' AND (slug = '1455' OR id = '1455') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5612_penyedot_debu, id FROM items WHERE type = 'kanji' AND (slug = '1451' OR id = '1451') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5612_penyedot_debu, id FROM items WHERE type = 'kanji' AND (slug = '1090' OR id = '1090') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5613_untuk_berjalan_jalan, id FROM items WHERE type = 'kanji' AND (slug = '1466' OR id = '1466') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5613_untuk_berjalan_jalan, id FROM items WHERE type = 'kanji' AND (slug = '628' OR id = '628') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5614_sangat_indah, id FROM items WHERE type = 'kanji' AND (slug = '1446' OR id = '1446') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5614_sangat_indah, id FROM items WHERE type = 'kanji' AND (slug = '856' OR id = '856') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5615_kecuali, id FROM items WHERE type = 'kanji' AND (slug = '1451' OR id = '1451') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5617_makam, id FROM items WHERE type = 'kanji' AND (slug = '1474' OR id = '1474') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5617_makam, id FROM items WHERE type = 'kanji' AND (slug = '694' OR id = '694') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5621_majalah, id FROM items WHERE type = 'kanji' AND (slug = '1494' OR id = '1494') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5621_majalah, k_1515_majalah);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5622_jendela_tiket, k_1516_jendela);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5622_jendela_tiket, id FROM items WHERE type = 'kanji' AND (slug = '452' OR id = '452') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5623_jendela, k_1516_jendela);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5624_tidak, k_1517_tidak);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5625_penyangkalan, k_1517_tidak);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5625_penyangkalan, id FROM items WHERE type = 'kanji' AND (slug = '714' OR id = '714') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5626_penolakan, k_1517_tidak);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5626_penolakan, id FROM items WHERE type = 'kanji' AND (slug = '687' OR id = '687') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5627_urat_daging, k_1518_otot);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5628_otot, k_1518_otot);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5628_otot, id FROM items WHERE type = 'kanji' AND (slug = '577' OR id = '577') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5634_periklanan, k_1521_menyatakan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5634_periklanan, id FROM items WHERE type = 'kanji' AND (slug = '777' OR id = '777') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5635_proklamasi, k_1521_menyatakan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5635_proklamasi, id FROM items WHERE type = 'kanji' AND (slug = '593' OR id = '593') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5636_dihormati, k_1522_dihormati);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5637_menghormati, k_1522_dihormati);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5637_menghormati, k_1526_menghormati);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5638_setia, k_1523_loyalitas);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5638_setia, id FROM items WHERE type = 'kanji' AND (slug = '715' OR id = '715') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5639_nasihat, k_1523_loyalitas);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5639_nasihat, id FROM items WHERE type = 'kanji' AND (slug = '1031' OR id = '1031') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5640_untuk_memperluas, k_1524_memperpanjang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5641_pembesaran, k_1524_memperpanjang);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5641_pembesaran, id FROM items WHERE type = 'kanji' AND (slug = '1205' OR id = '1205') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5642_perbesar, k_1524_memperpanjang);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5642_perbesar, id FROM items WHERE type = 'kanji' AND (slug = '453' OR id = '453') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5643_untuk_memanipulasi, k_1525_memanipulasi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5644_kesucian, k_1525_memanipulasi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5645_operasi, k_1525_memanipulasi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5645_operasi, id FROM items WHERE type = 'kanji' AND (slug = '584' OR id = '584') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5646_senam, id FROM items WHERE type = 'kanji' AND (slug = '583' OR id = '583') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5646_senam, k_1525_memanipulasi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5647_sebutan_kehormatan, k_1526_menghormati);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5647_sebutan_kehormatan, id FROM items WHERE type = 'kanji' AND (slug = '764' OR id = '764') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5648_untuk_hidup, k_1527_mata_pencaharian);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5649_mentah, id FROM items WHERE type = 'kanji' AND (slug = '848' OR id = '848') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5649_mentah, k_1527_mata_pencaharian);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5650_abu, k_1528_abu);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5651_abu_abu, k_1528_abu);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5651_abu_abu, id FROM items WHERE type = 'kanji' AND (slug = '579' OR id = '579') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5652_asbak, k_1528_abu);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5652_asbak, id FROM items WHERE type = 'kanji' AND (slug = '540' OR id = '540') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5653_untuk_matang, k_1529_mematangkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5654_kata_majemuk, k_1529_mematangkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5654_kata_majemuk, id FROM items WHERE type = 'kanji' AND (slug = '764' OR id = '764') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5655_mentah, id FROM items WHERE type = 'kanji' AND (slug = '656' OR id = '656') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5655_mentah, k_1529_mematangkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5656_mematangkan, id FROM items WHERE type = 'kanji' AND (slug = '780' OR id = '780') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5656_mematangkan, k_1529_mematangkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5657_untuk_berbeda, k_1530_berbeda);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5658_kelainan, k_1530_berbeda);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5658_kelainan, id FROM items WHERE type = 'kanji' AND (slug = '1183' OR id = '1183') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5659_jenis_kelamin_berbeda, k_1530_berbeda);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5659_jenis_kelamin_berbeda, id FROM items WHERE type = 'kanji' AND (slug = '918' OR id = '918') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5660_beda_arti, k_1530_berbeda);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5660_beda_arti, id FROM items WHERE type = 'kanji' AND (slug = '1154' OR id = '1154') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5661_kaisar_jepang, id FROM items WHERE type = 'kanji' AND (slug = '473' OR id = '473') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5661_kaisar_jepang, k_1531_kaisar);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5662_putra_mahkota, k_1531_kaisar);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5662_putra_mahkota, id FROM items WHERE type = 'kanji' AND (slug = '505' OR id = '505') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5662_putra_mahkota, id FROM items WHERE type = 'kanji' AND (slug = '462' OR id = '462') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5663_keluarga_kekaisaran, k_1531_kaisar);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5663_keluarga_kekaisaran, id FROM items WHERE type = 'kanji' AND (slug = '830' OR id = '830') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5664_keluarga_kekaisaran, k_1531_kaisar);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5664_keluarga_kekaisaran, id FROM items WHERE type = 'kanji' AND (slug = '635' OR id = '635') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5665_untuk_menumpuk, k_1532_tumpukan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5667_gula, k_1533_pasir);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5667_gula, k_1535_gula);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5670_fruktosa, id FROM items WHERE type = 'kanji' AND (slug = '1005' OR id = '1005') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5670_fruktosa, k_1535_gula);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5671_bebas_gula, id FROM items WHERE type = 'kanji' AND (slug = '1008' OR id = '1008') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5671_bebas_gula, k_1535_gula);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5672_untuk_memasok, k_1536_memasok);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5673_penyimpanan, id FROM items WHERE type = 'kanji' AND (slug = '1186' OR id = '1186') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5673_penyimpanan, k_1536_memasok);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5674_pembayaran, k_1536_memasok);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5674_pembayaran, id FROM items WHERE type = 'kanji' AND (slug = '445' OR id = '445') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5675_paru_paru, k_1537_paru_paru);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5676_kanker_paru_paru, k_1537_paru_paru);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5677_sakit_paru_paru, k_1537_paru_paru);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5677_sakit_paru_paru, id FROM items WHERE type = 'kanji' AND (slug = '773' OR id = '773') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5678_luar_biasa, k_1538_pengarang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5679_pengarang, k_1538_pengarang);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5679_pengarang, id FROM items WHERE type = 'kanji' AND (slug = '690' OR id = '690') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5680_menulis, k_1538_pengarang);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5680_menulis, id FROM items WHERE type = 'kanji' AND (slug = '584' OR id = '584') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5681_menjadi_panas_dan_lengket, k_1539_uap);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5682_uap, k_1539_uap);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5682_uap, id FROM items WHERE type = 'kanji' AND (slug = '548' OR id = '548') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5683_gudang, k_1540_gudang);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5684_lemari_es, id FROM items WHERE type = 'kanji' AND (slug = '1350' OR id = '1350') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5684_lemari_es, k_1540_gudang);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5684_lemari_es, id FROM items WHERE type = 'kanji' AND (slug = '1348' OR id = '1348') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5685_jizo, id FROM items WHERE type = 'kanji' AND (slug = '608' OR id = '608') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5685_jizo, k_1540_gudang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5686_pakaian, k_1541_pakaian);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5687_peralatan, k_1541_pakaian);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5687_peralatan, id FROM items WHERE type = 'kanji' AND (slug = '1164' OR id = '1164') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5688_samaran, id FROM items WHERE type = 'kanji' AND (slug = '944' OR id = '944') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5688_samaran, k_1541_pakaian);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5689_pakaian, id FROM items WHERE type = 'kanji' AND (slug = '716' OR id = '716') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5689_pakaian, k_1541_pakaian);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5690_pintu_belakang, k_1542_belakang);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5690_pintu_belakang, id FROM items WHERE type = 'kanji' AND (slug = '452' OR id = '452') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5691_untuk_menusuk_dari_belakang, k_1542_belakang);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5691_untuk_menusuk_dari_belakang, id FROM items WHERE type = 'kanji' AND (slug = '502' OR id = '502') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5692_pengkhianatan, k_1542_belakang);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5692_pengkhianatan, id FROM items WHERE type = 'kanji' AND (slug = '502' OR id = '502') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5693_gang, k_1542_belakang);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5693_gang, id FROM items WHERE type = 'kanji' AND (slug = '665' OR id = '665') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5694_belakang, k_1542_belakang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5695_tuan_tuan, k_1543_bermacam_macam);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5695_tuan_tuan, id FROM items WHERE type = 'kanji' AND (slug = '682' OR id = '682') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5696_bermacam_macam, k_1543_bermacam_macam);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5697_sewa_rumah, id FROM items WHERE type = 'kanji' AND (slug = '660' OR id = '660') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5697_sewa_rumah, k_1544_menyewa);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5698_persewaan, k_1544_menyewa);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5698_persewaan, id FROM items WHERE type = 'kanji' AND (slug = '1324' OR id = '1324') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5699_kapal_barang, id FROM items WHERE type = 'kanji' AND (slug = '1470' OR id = '1470') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5699_kapal_barang, id FROM items WHERE type = 'kanji' AND (slug = '718' OR id = '718') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5699_kapal_barang, id FROM items WHERE type = 'kanji' AND (slug = '671' OR id = '671') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5700_tepung_terigu, id FROM items WHERE type = 'kanji' AND (slug = '463' OR id = '463') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5700_tepung_terigu, id FROM items WHERE type = 'kanji' AND (slug = '598' OR id = '598') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5700_tepung_terigu, id FROM items WHERE type = 'kanji' AND (slug = '1467' OR id = '1467') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5707_perampok, id FROM items WHERE type = 'kanji' AND (slug = '1456' OR id = '1456') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5707_perampok, id FROM items WHERE type = 'kanji' AND (slug = '1457' OR id = '1457') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5709_mengejutkan, id FROM items WHERE type = 'kanji' AND (slug = '1458' OR id = '1458') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5710_untuk_membersihkan, id FROM items WHERE type = 'kanji' AND (slug = '1455' OR id = '1455') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5710_untuk_membersihkan, id FROM items WHERE type = 'kanji' AND (slug = '1451' OR id = '1451') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5711_untuk_mengeringkan_sesuatu, id FROM items WHERE type = 'kanji' AND (slug = '1381' OR id = '1381') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5712_untuk_menyebar, id FROM items WHERE type = 'kanji' AND (slug = '1466' OR id = '1466') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5713_untuk_memisahkan_sesuatu, id FROM items WHERE type = 'kanji' AND (slug = '1443' OR id = '1443') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5936_sederhana, k_1513_kesederhanaan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5936_sederhana, id FROM items WHERE type = 'kanji' AND (slug = '942' OR id = '942') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6737_rawa, id FROM items WHERE type = 'kanji' AND (slug = '1456' OR id = '1456') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6737_rawa, id FROM items WHERE type = 'kanji' AND (slug = '1866' OR id = '1866') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7226_lampu, id FROM items WHERE type = 'kanji' AND (slug = '2037' OR id = '2037') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7499_editor, id FROM items WHERE type = 'kanji' AND (slug = '1445' OR id = '1445') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7499_editor, id FROM items WHERE type = 'kanji' AND (slug = '754' OR id = '754') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7499_editor, id FROM items WHERE type = 'kanji' AND (slug = '690' OR id = '690') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7775_selebaran, id FROM items WHERE type = 'kanji' AND (slug = '1466' OR id = '1466') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8687_lengan, id FROM items WHERE type = 'kanji' AND (slug = '1241' OR id = '1241') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8687_lengan, k_1541_pakaian);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8724_abnormal, k_1530_berbeda);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8724_abnormal, id FROM items WHERE type = 'kanji' AND (slug = '1011' OR id = '1011') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8816_hari_libur, id FROM items WHERE type = 'kanji' AND (slug = '823' OR id = '823') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8816_hari_libur, id FROM items WHERE type = 'kanji' AND (slug = '476' OR id = '476') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8865_isu, k_8858_isu);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8978_selangkangan, k_8964_selangkangan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8978_selangkangan, id FROM items WHERE type = 'kanji' AND (slug = '701' OR id = '701') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8979_sendi_pinggul, k_8964_selangkangan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8979_sendi_pinggul, id FROM items WHERE type = 'kanji' AND (slug = '982' OR id = '982') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8979_sendi_pinggul, id FROM items WHERE type = 'kanji' AND (slug = '1058' OR id = '1058') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_9004_perut_kembung, k_8994_perut_kembung);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_9005_argumen_yang_tidak_logis, k_8994_perut_kembung);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9005_argumen_yang_tidak_logis, id FROM items WHERE type = 'kanji' AND (slug = '669' OR id = '669') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9005_argumen_yang_tidak_logis, id FROM items WHERE type = 'kanji' AND (slug = '1320' OR id = '1320') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9043_talas, id FROM items WHERE type = 'kanji' AND (slug = '597' OR id = '597') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9043_talas, id FROM items WHERE type = 'kanji' AND (slug = '1553' OR id = '1553') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9064_tukang_bonceng, id FROM items WHERE type = 'kanji' AND (slug = '1280' OR id = '1280') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9064_tukang_bonceng, id FROM items WHERE type = 'kanji' AND (slug = '1262' OR id = '1262') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9065_sopan_santun, id FROM items WHERE type = 'kanji' AND (slug = '842' OR id = '842') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9065_sopan_santun, id FROM items WHERE type = 'kanji' AND (slug = '1112' OR id = '1112') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9273_alami, id FROM items WHERE type = 'kanji' AND (slug = '473' OR id = '473') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9273_alami, id FROM items WHERE type = 'kanji' AND (slug = '881' OR id = '881') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9342_untuk_menghapus, id FROM items WHERE type = 'kanji' AND (slug = '9338' OR id = '9338') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9371_untuk_diselamatkan, id FROM items WHERE type = 'kanji' AND (slug = '1290' OR id = '1290') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_9398_margin_sempit, k_9388_sedikit);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9398_margin_sempit, id FROM items WHERE type = 'kanji' AND (slug = '1235' OR id = '1235') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_9442_untuk_menghasilkan_untung, k_9393_menghasilkan_uang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_9446_keponakan_laki_laki, k_9445_keponakan_laki_laki);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9487_pojok_jalan, id FROM items WHERE type = 'kanji' AND (slug = '1400' OR id = '1400') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9487_pojok_jalan, id FROM items WHERE type = 'kanji' AND (slug = '592' OR id = '592') LIMIT 1;

END $$;
