-- ====================================================
-- KaniGani — Seed Data Level 35 (v2, relasional)
-- Auto-generated with Indonesian Slugs
-- ====================================================

DO $$
DECLARE
  -- ============ RADICAL IDs (Level 35) ============
  r_352_sabuk UUID; r_353_penyu UUID; r_354_senjata_rahasia UUID; r_355_demi UUID; r_8831_komandan UUID;

  -- ============ KANJI IDs (Level 35) ============
  k_1534_gurun UUID; k_1579_lambat UUID; k_1580_mengukir UUID; k_1581_ukuran UUID; k_1582_merobek UUID; k_1583_pondok UUID; k_1584_kuliah UUID; k_1585_mandek UUID; k_1586_memperkenalkan UUID; k_1587_terjebak_di UUID; k_1588_diri UUID; k_1589_kemalangan UUID; k_1590_penyu UUID; k_1591_saling UUID; k_1592_pedang UUID; k_1593_jangka_hidup UUID; k_1595_malu UUID; k_1596_pohon_cedar UUID; k_1597_sup UUID; k_1598_riuh UUID; k_1599_api UUID; k_1600_demi UUID; k_1601_beruang UUID; k_1602_penjara UUID; k_1603_mabuk UUID; k_1604_cuka UUID; k_1605_panci_masak UUID; k_1606_danau UUID; k_1607_tembaga UUID; k_1609_minyak UUID; k_1610_kecap UUID; k_1897_titik_air_mata UUID; k_2133_konter_rumah UUID; k_8860_menangkap UUID; k_8910_mengobrol UUID; k_8992_kerabat UUID; k_9394_air_liur UUID; k_9395_menghancurkan UUID;

  -- ============ VOCABULARY IDs (Level 35) ============
  v_3207_untuk_menghitung UUID; v_4860_kantor_perdana_menteri UUID; v_5668_gurun UUID; v_5669_tidak_jelas UUID; v_5725_untuk_terluka UUID; v_5750_bangsawan UUID; v_5838_dengan_pikiran_lajang UUID; v_5840_untuk_memberitakan UUID; v_5841_untuk_menumpuk UUID; v_5842_pengkhianat UUID; v_5843_bermacam_macam UUID; v_5844_rambut_dikepang UUID; v_5847_untuk_menyelesaikannya UUID; v_5848_menjadi_yakin UUID; v_5849_bentuk_negatif UUID; v_5850_untuk_menolak UUID; v_5851_untuk_menghormati UUID; v_5852_bahasa_jepang_yang_terhormat UUID; v_5853_kehidupan UUID; v_5854_homonim UUID; v_5855_hak_cipta UUID; v_5856_panas_dan_lembab UUID; v_5857_untuk_mengulangi UUID; v_5858_untuk_berpura_pura UUID; v_5859_terlambat UUID; v_5860_terlambat UUID; v_5861_menunda UUID; v_5862_patung UUID; v_5863_untuk_mengukur UUID; v_5864_dugaan UUID; v_5865_ramalan UUID; v_5866_pengamatan UUID; v_5867_merobek UUID; v_5868_pengrusakan UUID; v_5869_kecelakaan_kapal UUID; v_5870_kebangkrutan UUID; v_5871_pedesaan UUID; v_5872_barak UUID; v_5873_gedung_kantor_pemerintah UUID; v_5874_kuliah UUID; v_5875_pengajar UUID; v_5876_kuliah UUID; v_5877_terlambat UUID; v_5878_menunda UUID; v_5879_perkenalan UUID; v_5880_intervensi UUID; v_5881_diri UUID; v_5882_diri_sendiri UUID; v_5883_sulit UUID; v_5884_penyu UUID; v_5885_penyu_laut UUID; v_5886_saling UUID; v_5887_saling UUID; v_5888_bergantian UUID; v_5889_serius UUID; v_5890_kendo UUID; v_5891_sushi UUID; v_5892_jangka_hidup UUID; v_5893_umur_panjang UUID; v_5894_ulang_tahun_ketujuh_puluh_ketujuh UUID; v_5895_kebahagiaan_dan_panjang_umur UUID; v_5899_memalukan UUID; v_5900_malu UUID; v_5901_pohon_cedar UUID; v_5902_jus_buah UUID; v_5903_sup UUID; v_5904_miso UUID; v_5905_api UUID; v_5906_peradangan UUID; v_5907_demi UUID; v_5908_akta UUID; v_5909_makna UUID; v_5910_beruang UUID; v_5911_prefektur_kumamoto UUID; v_5912_neraka UUID; v_5913_di_penjara UUID; v_5914_hukuman_penjara UUID; v_5915_bebaskan_dari_penjara UUID; v_5916_melarikan_diri_dari_penjara UUID; v_5917_menjadi_mabuk UUID; v_5918_mati_mabuk UUID; v_5919_cuka UUID; v_5920_makanan_cuka UUID; v_5921_panci_masak UUID; v_5922_danau UUID; v_5923_danau_yamanaka UUID; v_5924_perunggu UUID; v_5925_tambang_tembaga UUID; v_5926_patung_tembaga UUID; v_5928_minyak UUID; v_5929_kurangnya_perhatian UUID; v_5930_ladang_minyak UUID; v_5931_minyak_mentah UUID; v_5932_mengisi_bahan_bakar UUID; v_5933_shoyu UUID; v_6580_kenaikan UUID; v_6823_air_mata UUID; v_7555_pedang UUID; v_7589_agar_bersemangat_tinggi UUID; v_7662_berharga UUID; v_7776_menjadi_gelap UUID; v_7837_konter_rumah UUID; v_8688_beruang_kutub UUID; v_8726_minyak UUID; v_8868_untuk_dipahami UUID; v_8917_untuk_mengobrol UUID; v_8977_jahitan_dalam UUID; v_9002_kerabat UUID; v_9059_untuk_mempertimbangkan_sesuatu UUID; v_9160_selfie UUID; v_9267_cuaca_hujan UUID; v_9309_amatir UUID; v_9387_segera UUID; v_9403_untuk_menghancurkan UUID; v_9441_menjadi_menguntungkan UUID; v_9443_beberapa UUID;

BEGIN

  DELETE FROM items WHERE level = 35;

  -- 1. RADICALS
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '帯', 'sabuk', 35, 1, 'Radikal ini sama dengan kanji. Artinya <radikal>sabuk</radikal>.')
    RETURNING id INTO r_352_sabuk;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '亀', 'penyu', 35, 2, 'Ini adalah radikal <radikal>penyu</radikal>. Anda bisa mengetahuinya karena ada cangkang besar di tengah, kepala utuh di atas, dan ekor di bawah. Anda mungkin bisa menebak ini adalah kura-kura tanpa saya beritahukan kepada Anda, ini sangat mirip kura-kura.')
    RETURNING id INTO r_353_penyu;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '彑', 'senjata-rahasia', 35, 3, 'Lihat <radical>shuriken</radical> tertancap di tanah? Jika Anda tidak tahu, shuriken hanyalah a
bintang lempar — benda yang digunakan ninja. Ini terlihat seperti satu, kan? Itu sebabnya itu adalah shuriken radikal.')
    RETURNING id INTO r_354_senjata_rahasia;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '為', 'demi', 35, 4, 'Radikal ini terlihat seperti serangga ulat yang besar dan aneh. Tapi, demi kewarasan semua orang, kita sebut saja <radikal>demi</radikal>, oke? Perlu diingat, yang kami maksud adalah sake seperti dalam "demi X", bukan seperti dalam minuman beralkohol!')
    RETURNING id INTO r_355_demi;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '将', 'komandan', 35, 5, 'Siapa yang memakai cleat dan melakukan pengukuran terlalu lama hingga es mulai terbentuk di tubuh Anda? <radikal>komandan</radikal> Anda. Komandannya sangat, sangat khusus. Dan semua orang tahu bahwa komandan harus melakukan segalanya dengan benar. Jadi melakukan pengukuran membutuhkan waktu SANGAT lama hingga es keluar dari hidung Anda. Tapi tidak apa-apa. Anda harus mengesankan komandan baru Anda, sialan!')
    RETURNING id INTO r_8831_komandan;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_352_sabuk, 'Sabuk', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_353_penyu, 'Penyu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_354_senjata_rahasia, 'senjata rahasia', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_355_demi, 'Demi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_8831_komandan, 'Komandan', true, true);

  -- 2. KANJIS
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '漠', 'gurun', 35, 6, '<radikal>tsunami</radikal> menghantam <radikal>rumah kaca</radikal>, menghancurkan sisa tanaman di area tersebut. Tsunami surut, dan hanya ada pasir, dan daratan menjadi <kanji>gurun</kanji>.', 'Lihat matahari terbit di atas <kanji>gurun</kanji>, lalu <reading>kembali</reading> (ばく) ke bawah. Atas, kembali ke bawah, kembali ke atas, kembali ke bawah. Anda berdiri di sini selama berhari-hari menonton karena Anda sangat depresi. Berhentilah bersikap <kanji>tidak jelas</kanji> dalam pendekatanmu, matahari! Anda membuat semua orang aneh!')
    RETURNING id INTO k_1534_gurun;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '遅', 'lambat', 35, 7, 'Di samping <radical>skuter</radical>, ada <radical>bendera</radical> yang memperingatkan Anda bahwa ada <radical>domba</radical> di sekitar sini, jadi Anda harus <kanji>pelan-pelan</kanji>. Itu berarti Anda mungkin <kanji>terlambat</kanji>, tapi setidaknya dombanya akan baik-baik saja!', 'Anda mengikuti benderanya, namun dombanya menolak untuk <kanji>memperlambat</kanji> jadi Anda harus kreatif. Anda menempatkan <reading>chee</reading>se (ち) setiap sepuluh kaki atau lebih, dengan cara itu domba akan memperlambat kecepatannya untuk membungkuk pada skuternya dan menggigitnya.')
    RETURNING id INTO k_1579_lambat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '彫', 'mengukir', 35, 8, 'Ada <radical>lingkaran</radikal> di sekitar <radical>rambut</radikal> seseorang, misalnya, Anda dapat melihat lingkaran yang digambar di sekeliling bagian atas kepalanya. Ketika Anda memeriksanya lebih dekat, dan menariknya sedikit, Anda menyadari bahwa seseorang telah <kanji>memotong</kanji> rambut dari kepala seseorang!', 'Ketika kamu memikirkan semua orang yang bisa melakukan ini... semua orang yang bisa <kanji>mengukir</kanji> rambut seseorang, hanya satu orang yang terlintas dalam pikiran, dan itu adalah Ny. <reading>Chou</reading> (ちょう). Dia satu-satunya orang yang cukup jahat untuk melakukan hal seperti ini.')
    RETURNING id INTO k_1580_mengukir;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '測', 'ukuran', 35, 9, '<radikal>tsunami</radikal> akan mengambil sekelompok <radikal>kerang</radikal> dan membuangnya ke pantai Anda, jadi Anda mengambil <radikal>pisau</radikal> dan <kanji>mengukur</kanji> mereka.', 'Semua kerang yang Anda <kanji>ukur</kanji> yang terlalu kecil dimasukkan ke dalam <reading>kaus kaki</reading> (そく) Anda. Setelah kaus kaki penuh, Anda mengayunkannya di sekitar kepala dan melemparkannya kembali ke laut.')
    RETURNING id INTO k_1581_ukuran;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '破', 'merobek', 35, 10, 'Jika Anda menggoreskan <radikal>batu</radikal> yang tajam pada <radikal>kulit</radikal> Anda, maka <kanji>robek</kanji> akan terjadi. Batu tajam itu merobek kulitmu. Sakit!', 'Saat kulitmu <kanji>robek</kanji>, kamu tidak bisa menahan diri untuk tidak berteriak, "<reading>Hah</reading> (は)!" Kedengarannya seperti tertawa, tapi lebih seperti gonggongan kesakitan.')
    RETURNING id INTO k_1582_merobek;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '舎', 'pondok', 35, 11, 'Kanji dan radikal yang terlihat seperti ini sama persis. Keduanya adalah <kanji>pondok</kanji>.', 'Anda mendapatkan <kanji>pondok</kanji> ini dari seorang <reading>sha</reading>man (しゃ). Faktanya, semua orang yang Anda kenal mendapatkan pondoknya dari seorang dukun. Suatu hari Anda sedang berjalan-jalan di hutan, dan hal berikutnya yang Anda tahu, seorang dukun memberi Anda kunci pondok lama mereka.')
    RETURNING id INTO k_1583_pondok;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '講', 'kuliah', 35, 12, 'Cobalah untuk <radical>mengatakan</radical> sesuatu kepada <radical>penjaga pantai</radical> dan Anda hanya akan mendapatkan <kanji>ceramah</kanji>.', 'Penjaga pantai yang penuh kasih <kanji>ceramah</kanji> ini tidak lain adalah <reading>こう</reading>いち! Maksudku, lihat berapa panjang lebar isi situs ini? Dapatkah Anda membayangkan dia mencoba memberi Anda ceramah tentang etika berenang yang benar?')
    RETURNING id INTO k_1584_kuliah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '滞', 'mandek', 35, 13, 'Sebuah <radikal>tsunami</radikal>, setelah dihentikan oleh <radikal>sabuk</radikal>, akan mulai <kanji>stagnasi</kanji>. Sabuk ini merupakan sabuk kedap air sehingga sabuk tersebut dapat menahan tsunami. Sabuk tersebut menyebabkan tsunami terhenti.', 'Selagi Anda menyaksikan tsunami <kanji>stagnan</kanji>, Anda bersiap untuk bekerja. Saat Anda menyaksikan semua ini terjadi, Anda sedang mengikat <reading>dasi</reading> Anda (たい). Setelah tsunami berhenti, Anda sudah selesai mengikat dasi Anda. Dan karena tsunami tidak lagi menjadi ancaman, Anda siap berangkat kerja.')
    RETURNING id INTO k_1585_mandek;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '紹', 'memperkenalkan', 35, 14, 'Anda membuat <radical>utas</radikal> dengan seseorang dengan <radical>memanggil</radikal>kepadanya untuk <kanji>memperkenalkan</kanji> diri Anda.', 'Anda ingin <kanji>memperkenalkan</kanji> diri Anda pada senjata <reading>Shou</reading> (しょう) tetapi tidak peduli seberapa sering Anda memanggilnya, dia tidak akan cukup dekat sehingga Anda dapat mengikatkan benang perkenalan Anda padanya. Kamu berseru semakin keras, "SHOUGUN BIARKAN AKU MEMPERKENALKAN DIRI SENDIRI!"')
    RETURNING id INTO k_1586_memperkenalkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '介', 'terjebak-di', 35, 15, 'Kanji <radikal>macet</radikal> dan kanji <kanji>macet</kanji> adalah sama!', 'Memandang rendah! Anda <kanji>terjebak</kanji>pada sesuatu. Anda tidak bisa menggerakkan kaki Anda. Apa ini?! Oh, tubuhmu terjebak dalam <reading>kay</reading>ak (かい).')
    RETURNING id INTO k_1587_terjebak_di;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '己', 'diri', 35, 16, 'Kanji dan radikalnya sama, jadi mengingat arti kanji ini semudah memastikan Anda mengetahui radikal untuk <radikal>diri sendiri</radikal> terlebih dahulu! Jika Anda tahu kata radikalnya, Anda pasti tahu kanji ini juga berarti <kanji>diri sendiri</kanji>.', '<kanji>Diri sendiri</kanji>. Siapa yang hanya memikirkan dirinya sendiri? Setiap <reading>子</reading> (こ) di dunia.')
    RETURNING id INTO k_1588_diri;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '厄', 'kemalangan', 35, 17, 'Jika Anda berada di tepi <radical>tebing</radical> dengan <radical>ular</radical>, itu adalah <kanji>kesialan</kanji>. Anda tergantung di tepi tebing ini dan Anda tidak dapat menarik diri Anda kembali ke atas. Kemudian Anda melihat seekor ular mendekati jari Anda, tampak seperti akan menggigit Anda. Sungguh malang!', 'Anda memutuskan untuk melepaskannya, namun di dasar tebing terdapat <kanji>kemalangan</kanji> yang lebih besar: <reading>yak</reading> (やく). Sekelompok yak yang berlari kencang lewat saat Anda terjatuh. Ups! Anda secara tidak sengaja telah menyerahkan diri Anda pada kemalangan terbesar, kematian karena terinjak-injak yak.')
    RETURNING id INTO k_1589_kemalangan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '亀', 'penyu', 35, 18, 'Kanji <radical>turtle</radical> dan kanji <kanji>turtle</kanji> sama persis! Bagus!', 'Anda tahu Dragon Ball Z, kan? Bayangkan <kanji>kura-kura</kanji> ini melakukan <reading>Kame</reading>hameha (かめ). Kura-kura mengisi energinya dan melepaskan ledakan Kamehameha yang dahsyat. Aduh!')
    RETURNING id INTO k_1590_penyu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '互', 'saling', 35, 19, '<radical>tanah</radikal> dan <radikal>shuriken</radikal> <kanji>saling</kanji> saling menghormati satu sama lain. Shuriken menghormati tanah karena kokoh dan stabilnya, dan tanah menghormati shuriken karena runcingnya. Mereka sangat menghormati satu sama lain di sini.', 'Karena kamu membuat shurikennya menyerang tanah, <kanji>saling</kanji> menjadi tidak seimbang. Ini memanggil <reading>Pergi</reading>dzilla (ご) naik dari kedalaman lautan sekali lagi. Dia selalu muncul ketika ada sesuatu yang tidak beres, untuk menunjukkan kepada manusia kesalahan mereka. Dia mengambil shuriken dan melemparkannya ke kota, yang meledak, meninggalkan lubang di tanah.')
    RETURNING id INTO k_1591_saling;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '剣', 'pedang', 35, 20, 'Ikat <radical>cumi-cumi</radical> ke <radical>pisau</radical> dan Anda mendapatkan <kanji>pedang</kanji>! Pisau terlalu kecil untuk dianggap sebagai pedang. Itu sebabnya kamu mengikatkan cumi padanya. Bentuknya pas, agak runcing, jadi tak seorang pun akan tahu kalau itu hanya pisau.', 'Anda belajar cara membuat <kanji>pedang</kanji> dengan cara ini dari <reading>Ken</reading> (けん) sang samurai. Dia menaruh teman cumi-cumi kecilnya di pisaunya dan sekarang tidak ada yang menyadari itu bukan pedang!')
    RETURNING id INTO k_1592_pedang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '寿', 'jangka-hidup', 35, 21, 'Di <radical>musim semi</radical>, <radical>pengukuran</radical> Anda akan menunjukkan <kanji>umur</kanji> Anda. Hanya di musim semi Anda dapat mengukur umur Anda, semudah Anda mengukur tinggi dan berat badan.', 'Jika pengukuran <kanji>umur</kanji> Anda tidak sepanjang yang Anda inginkan, Anda perlu minum lebih banyak <reading>ju</reading>es (じゅ) kotak kecil tahun ini. Bagaimanapun, itu baik untuk kesehatan Anda!')
    RETURNING id INTO k_1593_jangka_hidup;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '恥', 'malu', 35, 22, '<radical>telinga</radical> Anda mendengarkan <radical>hati</radical> Anda dan merasa <kanji>malu</kanji>. Hatimu penuh rasa malu atas caramu menjalani hidup dan ketika telingamu mendengar semua hal yang telah kamu lakukan, telingamu juga merasa malu.', 'Anda harus membersihkan jiwa Anda dari <kanji>rasa malu</kanji> ini. Anda memutuskan untuk menyelesaikan <read>Haji</reading> (はじ) — Anda tahu, ziarah Islam ke Mekah. Namun, sesampainya di sana, semua peziarah lainnya melihat ke arah Anda dan berkata, "<reading>Hah</reading> (は)! Kamu? Kamu tersesat, sobat." Tampaknya haji pun tidak bisa menyelamatkanmu dari rasa malu.')
    RETURNING id INTO k_1595_malu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '杉', 'pohon-cedar', 35, 23, 'Ada <radical>pohon</radical> di <radical>rambut</radical> Anda, menurut saya itu adalah <kanji>cedar</kanji>. Bagaimana pohon cedar itu bisa sampai ke rambutmu?

(Jenis pohon cedar tertentu memiliki kulit kayu yang terkelupas menjadi benang-benang halus, menjadikannya pohon yang sangat berbulu. Jadi kanji ini sangat masuk akal!)', 'Setelah <kanji>cedar</kanji> sudah tumbuh sempurna, Anda dapat menggunakan kayu cedar tersebut untuk membuat gitar untuk Sue. A <read>Sue gui</reading>tar (すぎ), jika Anda mau. Gitar Sue ini dibuat khusus untuk Sue. Dia akan menyukainya.')
    RETURNING id INTO k_1596_pohon_cedar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '汁', 'sup', 35, 24, '<radikal>tsunami</radikal> membawa <radikal>salib</radikal> ke dalam <kanji>sup</kanji> Anda. Hei tsunami, aku sedang makan sup itu!', 'Anda mengeluarkan salib dari <kanji>sup</kanji> Anda dan melihat bahwa salib ''Yahudi</reading> (じゅう) jatuh dan berada di sana sekarang. Permatanya berkilau, bersinar, dan larut ke dalam sup!')
    RETURNING id INTO k_1597_sup;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '噌', 'riuh', 35, 25, '<radical>Mulut</radical>mu memakai <radical>topeng</radical> sehingga orang tidak akan menyadari bahwa kamulah yang <kanji>riuh</kanji> saat memakan <kanji>miso</kanji>mu. Jika Anda menutup mulut Anda dengan masker ini, tidak akan ada yang tahu bahwa Anda adalah pemakan miso yang riuh.', 'Anda sedang <kanji>riuh</kanji> dan sedang menikmati <kanji>miso</kanji> di luar ketika tiba-tiba seseorang memasukkan <reading>so</reading>ap (そ) ke dalam mulut Anda. "Bahkan maskermu tidak bisa menyembunyikan miso-eating yang riuh itu. Tenanglah dan cuci mulutmu dengan sabun itu!" mereka berteriak.')
    RETURNING id INTO k_1598_riuh;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '炎', 'api', 35, 26, '<radical>Api</radikal>, <radikal>api</radikal>, <kanji>nyala</kanji>! Ada api dimana-mana!', '<kanji>nyala</kanji> menjadi lebih besar, mengelilingi Anda, dan kemudian semuanya <reading>en</reading>ds (えん).')
    RETURNING id INTO k_1599_api;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '為', 'demi', 35, 27, 'Radikal <radikal>sake</radikal> dan kanji <kanji>sake</kanji> sama persis! Manis.', 'Demi <kanji>demi</kanji> kenyamanan, perusahaan akan menggunakan <reading>ea</reading>gles (い) untuk pekerjaan pengiriman di masa depan. Cukup pesan, dan itu akan tiba di depan pintu Anda dalam waktu singkat. Elang itu seperti, super cepat dalam pengiriman.')
    RETURNING id INTO k_1600_demi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '熊', 'beruang', 35, 28, '<radikal>kemampuan</radikal> untuk <radikal>mendidih</radikal> adalah salah satu kemampuan utama <kanji>beruang</kanji>.', 'Seekor <kanji>beruang</kanji> yang mendidih di depan Anda seharusnya membuat Anda merasa sangat terhormat. Atau, seperti yang mereka katakan dalam bahasa Latin: Magna <reading>cum</reading> (くま) laude.

Mengerti? Sedikit humor lucu untuk Anda.')
    RETURNING id INTO k_1601_beruang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '獄', 'penjara', 35, 29, 'Anda memiliki <radical>hewan</radikal> dan Anda <radikal>mengatakan</radikal> itu adalah <radikal>anjing</radikal> untuk mencegahnya masuk <kanji>penjara</kanji>. Anjing adalah satu-satunya hewan yang tidak harus masuk penjara. Hewan Anda bukan anjing, tetapi Anda mengatakannya untuk mencegahnya masuk penjara.', 'Apa nama binatangmu? Hewan Anda diberi nama <reading>Goku</reading> (ごく). Ya, seperti Goku dari Dragon Ball Z. Anda tidak ingin Goku kecil Anda masuk <kanji>penjara</kanji>, jadi Anda mengatakan bahwa dia adalah seekor anjing.')
    RETURNING id INTO k_1602_penjara;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '酔', 'mabuk', 35, 30, 'Anda memiliki <radical>alkohol</radical> <radical>sembilan</radical> kali lebih kuat dibandingkan minuman lainnya, dalam botol berbentuk <radical>cross</radical>, dan Anda meminum semuanya dan menjadi <kanji>mabuk</kanji>. Kamu seperti, sangat mabuk sekarang karena semua alkohol itu. Sembilan kali lebih mabuk dari sebelumnya.', 'Segalanya berputar sekarang, kamu <kanji>mabuk</kanji> sampai rasanya seperti sedang <reading>berenang</reading>ng (すい). Terhuyung-huyung dalam keadaan mabuk, merasa semakin mual karena semua ayunan yang mengerikan ini. Ugh.')
    RETURNING id INTO k_1603_mabuk;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '酢', 'cuka', 35, 31, 'Untuk menjadikan <radikal>alkohol</radikal> sebagai <radikal>kunci</radikal> adalah dengan memfermentasinya. Namun, jika difermentasi dengan cara tertentu, itu akan menjadi <kanji>cuka</kanji>.', 'Anda mendemonstrasikan latihan ini di depan penonton. Anda ingin mereka menganggap Anda serius sehingga Anda mengenakan <reading>su</reading>it (す). Setelan yang sangat bagus. Pastinya mereka sekarang akan percaya bahwa Anda bisa mengubah alkohol menjadi <kanji>cuka</kanji>.')
    RETURNING id INTO k_1604_cuka;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '鍋', 'panci-masak', 35, 32, 'Anda melemparkan sepasang <radical>emas</radical> <radical>kumis</radical> ke dalam <kanji>panci</kanji> dan mulai merebusnya. Beberapa orang menggunakan daun salam dan yang lainnya, tetapi di tempat asal Anda, tidak ada bumbu yang lebih Anda sukai di panci masak Anda selain beberapa kumis emas.', 'Pasangan Anda bertanya apakah mereka bisa mencicipi apa yang ada di <kanji>panci</kanji> Anda, tapi Anda berkata, "<reading>Nah ba</reading>be (なべ), ini semua untuk saya."')
    RETURNING id INTO k_1605_panci_masak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '湖', 'danau', 35, 33, '<radikal>tsunami</radikal> selama <radikal>bulan</radikal> <radikal>lama</radikal> (beberapa bulan yang lalu) bertanggung jawab atas <kanji>danau</kanji> di dunia.', '"Dari situlah <kanji>danau</kanji> berasal," Anda memberi tahu <reading>子</reading> (こ).')
    RETURNING id INTO k_1606_danau;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '銅', 'tembaga', 35, 34, '<radical>Emas</radical> tidak <radical>sama</radical> dengan <kanji>tembaga</kanji>. Mereka adalah dua logam yang berbeda. Emas tidak sama dengan tembaga.', 'Menghantamkan <kanji>tembaga</kanji> ke emas telah membuatmu lelah. Anda harus makan ghnut (どう) <reading>dou</reading>. Ambillah donat untuk dirimu sendiri.')
    RETURNING id INTO k_1607_tembaga;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '油', 'minyak', 35, 35, '<radikal>tsunami</radikal> ini adalah <radikal>alasan</radikal> kita memiliki begitu banyak <kanji>minyak</kanji> sekarang. Tsunami telah menggeser sebagian besar bumi, sehingga kini sangat mudah untuk menggali minyak. Terima kasih tsunami!', 'Sekarang <kanji>minyak</kanji> begitu melimpah, semua orang tinggal di <reading>yu</reading>rts (ゆ). Mereka ringan dan mudah dipindahkan, sehingga orang bisa berpindah dari sumur minyak ke sumur minyak lainnya, mengumpulkan minyak.')
    RETURNING id INTO k_1609_minyak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '醤', 'kecap', 35, 36, '<radikal>alkohol</radikal> <radikal>komandan</radikal> sebenarnya hanyalah <kanji>kecap</kanji>. Ketika dia keluar untuk minum bersama pasukannya dan mereka semua mabuk bersama, dia berhasil bersenang-senang dan tetap sadar dengan meminum segelas kecap non-alkohol yang lezat.', '<kanji>Kecap</kanji> juga merupakan minuman favorit <reading>Shou</reading>gun (しょう). Sayangnya, dia tidak bisa begitu saja memberi tahu orang-orang bahwa dia suka minum segelas kecap, atau mereka akan memandangnya aneh. Sebaliknya dia memerintahkannya sebagai alkohol komandan juga.')
    RETURNING id INTO k_1610_kecap;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '涙', 'titik-air-mata', 35, 37, '<radikal>tsunami</radikal> melewati <radikal>pintu</radikal> kecil, dan menjatuhkan tetesan <radikal>besar</radikal> ke wajah Anda. Tsunami ini adalah air mata Anda di dalam area mata Anda. Pintunya adalah saluran air matamu. Tetesan besar adalah <kanji>tetesan air mata</kanji> yang jatuh ke mata Anda.', '<kanji>tetesan air mata</kanji>mu seperti ombak kecil. Apa itu? Mereka <membaca>波だ</reading> (なみだ).')
    RETURNING id INTO k_1897_titik_air_mata;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '軒', 'konter-rumah', 35, 38, '<radical>Mobil</radical> Anda <radical>kering</radical> karena Anda menyimpannya di bawah <kanji>atap</kanji> rumah Anda. 

Kanji ini juga memiliki arti kedua: <kanji>penghitung rumah</kanji>. Bayangkan menghitung semua rumah di blok Anda dengan jumlah atap yang Anda lihat untuk menjaga mobil tetap kering.', 'Di atas <kanji>atap</kanji> rumahmu <reading>Ken</reading> (けん) sang samurai juga menghitung rumah.')
    RETURNING id INTO k_2133_konter_rumah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '捉', 'menangkap', 35, 39, 'Gunakan <radical>jari</radical> Anda untuk meraih <radical>kaki</radical> seseorang dan <kanji>tangkap</kanji> dia! Namun, menyentuh kakinya membuat Anda merasa jijik, itulah sebabnya Anda hanya menangkapnya dengan jari, bukan seluruh tangan.', 'Apa yang membuat Anda memutuskan untuk <kanji>menangkap</kanji> orang ini? <bacaan>Taurat</reading> (とら). Ada tertulis dalam Taurat bahwa Anda harus menangkap orang ini, dan Anda selalu mengikuti semua ajaran Taurat.')
    RETURNING id INTO k_8860_menangkap;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '喋', 'mengobrol', 35, 40, '<radical>Mulut</radikal> <radikal>Dunia</radikal> <radikal>Pohon</radikal>, yang dilakukannya hanyalah <kanji>mengobrol</kanji> dan <kanji>berbicara</kanji>.', 'Untuk <kanji>mengobrol</kanji> atau <kanji>berbicara</kanji> dengan Pohon Dunia, cukup kunjungi <reading>Sha</reading>man <reading>Bay</reading> (しゃべ).')
    RETURNING id INTO k_8910_mengobrol;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '戚', 'kerabat', 35, 41, 'Ada <radical>slide</radical> dengan <radical>pemabuk</radical> <radical>di atasnya</radical>, dan itu membuat Anda merasa <radical>kecil</radical>. Dan bagian terburuknya adalah pemabuk itu adalah salah satu <kanji>kerabat</kanji> Anda.', 'Seolah-olah keadaan tidak akan menjadi lebih buruk, kerabat Anda tampaknya menganggap mereka <reading>seksi</reading> (せき) ketika mereka sedang mabuk di perosotan. Seksi? Lebih seperti tidak bertanggung jawab!')
    RETURNING id INTO k_8992_kerabat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '唾', 'air-liur', 35, 42, 'Cobalah untuk tidak membiarkan <radical>mulut</radical> Anda menjadi <radical>kantuk</radical> — Anda akan meneteskan <kanji>air liur</kanji> ke mana-mana.', 'Jika Anda membutuhkan pelampiasan untuk semua <kanji>air liur</kanji> ekstra Anda, cobalah memainkan <reading>tuba</reading> (つば). Sebuah tuba bahkan mempunyai katup <kanji>ludah</kanji> kecil yang bagus di bagian bawah, sehingga Anda dapat mengisinya dengan air liur sepuasnya dan kemudian mengalirkannya setelah selesai.')
    RETURNING id INTO k_9394_air_liur;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '潰', 'menghancurkan', 35, 43, '<radical>Tsunami</radical> suka menghantam benda-benda <radikal>berharga</radikal> dan <kanji>menghancurkan</kanji> hingga terlupakan. Tsunami akan menghancurkan rumah Anda dan <kanji>menghancurkan</kanji> mobil Anda dan Anda bahkan tidak pernah berpikir untuk meminta maaf.', 'Tsunami dapat <kanji>menghancurkan</kanji> sebuah rumah atau mobil seolah-olah itu adalah <reading>tabung</reading> (つぶ) pasta gigi.')
    RETURNING id INTO k_9395_menghancurkan;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1534_gurun, 'Gurun', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1534_gurun, 'Tidak jelas', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1579_lambat, 'Lambat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1579_lambat, 'Terlambat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1580_mengukir, 'Mengukir', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1581_ukuran, 'Ukuran', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1582_merobek, 'Merobek', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1583_pondok, 'Pondok', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1584_kuliah, 'Kuliah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1585_mandek, 'Mandek', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1586_memperkenalkan, 'Memperkenalkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1587_terjebak_di, 'Terjebak di', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1588_diri, 'Diri', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1588_diri, 'Diri sendiri', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1589_kemalangan, 'Kemalangan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1589_kemalangan, 'Sial', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1590_penyu, 'Penyu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1591_saling, 'Saling', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1592_pedang, 'Pedang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1593_jangka_hidup, 'Jangka hidup', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1593_jangka_hidup, 'Umur panjang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1595_malu, 'Malu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1596_pohon_cedar, 'pohon cedar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1597_sup, 'Sup', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1598_riuh, 'Riuh', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1598_riuh, 'miso', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1599_api, 'Api', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1599_api, 'Api', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1600_demi, 'Demi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1601_beruang, 'Beruang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1602_penjara, 'Penjara', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1603_mabuk, 'Mabuk', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1604_cuka, 'Cuka', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1605_panci_masak, 'Panci Masak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1606_danau, 'Danau', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1607_tembaga, 'Tembaga', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1609_minyak, 'Minyak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1610_kecap, 'Kecap', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1897_titik_air_mata, 'Titik air mata', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2133_konter_rumah, 'Konter Rumah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2133_konter_rumah, 'Atap', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_8860_menangkap, 'Menangkap', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_8910_mengobrol, 'Mengobrol', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_8910_mengobrol, 'Bicara', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_8992_kerabat, 'Kerabat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_9394_air_liur, 'Air liur', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_9394_air_liur, 'Meludah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_9395_menghancurkan, 'Menghancurkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_9395_menghancurkan, 'Labu', false, true);

  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1534_gurun, 'ばく', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1579_lambat, 'ち', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1579_lambat, 'おそ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1579_lambat, 'おく', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1580_mengukir, 'ちょう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1580_mengukir, 'ほ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1581_ukuran, 'そく', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1581_ukuran, 'はか', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1582_merobek, 'は', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1582_merobek, 'やぶ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1583_pondok, 'しゃ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1584_kuliah, 'こう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1585_mandek, 'たい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1585_mandek, 'とどこお', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1586_memperkenalkan, 'しょう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1587_terjebak_di, 'かい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1587_terjebak_di, 'すけ', 'nanori', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1588_diri, 'こ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1588_diri, 'き', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1588_diri, 'おのれ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1589_kemalangan, 'やく', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1590_penyu, 'かめ', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1590_penyu, 'き', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1591_saling, 'ご', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1591_saling, 'たが', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1592_pedang, 'けん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1592_pedang, 'つるぎ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1593_jangka_hidup, 'じゅ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1593_jangka_hidup, 'す', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1593_jangka_hidup, 'ことぶき', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1595_malu, 'は', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1595_malu, 'はじ', 'kunyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1595_malu, 'ち', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1596_pohon_cedar, 'すぎ', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1597_sup, 'じゅう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1597_sup, 'しる', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1598_riuh, 'そ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1599_api, 'えん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1599_api, 'ほのお', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1600_demi, 'い', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1600_demi, 'ため', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1600_demi, 'な', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1600_demi, 'す', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1601_beruang, 'くま', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1601_beruang, 'ゆう', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1602_penjara, 'ごく', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1603_mabuk, 'すい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1603_mabuk, 'よ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1604_cuka, 'す', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1604_cuka, 'さく', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1605_panci_masak, 'なべ', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1605_panci_masak, 'か', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1606_danau, 'こ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1606_danau, 'みずうみ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1607_tembaga, 'どう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1607_tembaga, 'あかがね', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1609_minyak, 'ゆ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1609_minyak, 'あぶら', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1610_kecap, 'しょう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1897_titik_air_mata, 'なみだ', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1897_titik_air_mata, 'るい', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_2133_konter_rumah, 'けん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_2133_konter_rumah, 'のき', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_8860_menangkap, 'とら', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_8860_menangkap, 'そく', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_8910_mengobrol, 'しゃべ', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_8910_mengobrol, 'ちょう', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_8992_kerabat, 'せき', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_9394_air_liur, 'つば', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_9394_air_liur, 'だ', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_9395_menghancurkan, 'つぶ', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_9395_menghancurkan, 'かい', 'onyomi', false, false);

  -- 3. VOCABULARIES
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '算定する', 'untuk-menghitung', 35, 44, 'Saat Anda <kanji>menghitung</kanji> dan <kanji>menentukan</kanji> (perhitungan), Anda menentukan perhitungannya. Itu sebabnya kata ini adalah <vocabulary>menghitung</vocabulary>.

Berbeda dengan 計算する yang secara umum berarti “menghitung”, 算定する merupakan kata formal yang lebih menitikberatkan pada nilai akhir suatu penghitungan, dibandingkan pada proses penghitungan itu sendiri.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Untuk Menghitung')
    RETURNING id INTO v_3207_untuk_menghitung;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '総理府', 'kantor-perdana-menteri', 35, 45, '<kanji>pemerintahan</kanji> perdana menteri (総理) adalah tempat dia menjalankan semua pemerintahannya. Di sinilah letak <vocabulary>Kantor Perdana Menteri</vocabulary> Jepang (alias <vocabulary>Kantor Kabinet</vocabulary>) juga berada.

総理府 sebenarnya berganti nama menjadi 内閣府 pada tahun 2001, jadi biasanya Anda hanya menggunakan 総理府 untuk membicarakan Kantor Kabinet di masa lalu.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Mengetahui 総理 sebelumnya juga akan membantu.', 'Kantor Perdana Menteri, Kantor Kabinet')
    RETURNING id INTO v_4860_kantor_perdana_menteri;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '砂漠', 'gurun', 35, 46, '<kanji>pasir</kanji> <kanji>gurun</kanji> hanyalah sebuah <vocabulary>gurun</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Gurun')
    RETURNING id INTO v_5668_gurun;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '漠然', 'tidak-jelas', 35, 47, 'Sesuatu yang <kanji>tidak jelas</kanji> <kanji>sifatnya</kanji> juga cukup <vocabulary>tidak jelas</vocabulary>. 

Perhatikan bahwa Anda perlu menambahkan と di akhir kata ini untuk menjadikannya kata keterangan, dan たる untuk menjadikannya kata sifat!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Tidak jelas')
    RETURNING id INTO v_5669_tidak_jelas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '傷つく', 'untuk-terluka', 35, 48, 'Ingat bagaimana 傷 adalah "luka"? Kini sebuah luka semakin mendekat padamu, atau dengan kata lain, semakin melekat padamu. Jika ada luka yang menempel di tubuhmu, kamu mungkin <vocabulary>terluka</vocabulary>.', 'Bacaannya sama dengan kata 傷.', 'Untuk Terluka')
    RETURNING id INTO v_5725_untuk_terluka;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '貴族', 'bangsawan', 35, 49, 'Orang-orang dari <kanji>suku</kanji> yang berharga</kanji> adalah bagian dari <vocabulary>bangsawan</vocabulary>. Berbeda dengan suku kami, mereka berharga.

貴族 mengacu pada seorang bangsawan atau <kosakata>bangsawan</vocabulary> dalam sistem sosial lama, jadi Anda kebanyakan melihatnya di buku sejarah atau latar fantasi. Dalam bahasa Jepang modern, orang terkadang menggunakannya dengan bercanda ketika seseorang melakukan sesuatu yang sangat mewah atau memanjakan — seolah-olah mereka sedang hidup seperti bangsawan untuk sesaat.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Bangsawan, Aristokrat')
    RETURNING id INTO v_5750_bangsawan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '一筋', 'dengan-pikiran-lajang', 35, 50, 'Anda memiliki <kanji>satu</kanji> <kanji>otot</kanji>, oleh karena itu ia hanya melakukan satu hal. Itu saja. Itu adalah <vocabulary>dengan pikiran tunggal</vocabulary> melakukan satu hal itu. Itu adalah <vocabulary>dengan sungguh-sungguh</vocabulary> dan <vocabulary>dengan sungguh-sungguh</vocabulary> melakukan satu hal itu.', 'Bacaannya agak aneh. Itu adalah pembacaan kun''yomi, dimana 一 adalah ひと dan 筋 adalah すじ. Lihatlah kembali kosakata yang menggunakan bacaan ini untuk mengingat yang ini.', 'Dengan Pikiran Lajang, Dengan sungguh-sungguh, Sungguh-sungguh, Sebuah Garis')
    RETURNING id INTO v_5838_dengan_pikiran_lajang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '宣言する', 'untuk-memberitakan', 35, 51, 'Jika 宣言 adalah "proklamasi", maka versi kata kerjanya adalah <vocabulary>to proclaim</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Untuk Memberitakan')
    RETURNING id INTO v_5840_untuk_memberitakan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '盛り上げる', 'untuk-menumpuk', 35, 52, '盛る adalah "menumpuk." Kalau kamu "menaikkan" (上げる) apa yang kamu timbun, itu berarti menimbun sesuatu, menjadikan kata ini <vocabulary>menumpuk</vocabulary> atau <vocabulary>menumpuk</vocabulary>. Kata ini juga digunakan ketika Anda ingin <vocabulary>menghidupkan</vocabulary> beberapa hal. Kumpulkan energi itu dan gejolak segalanya!', 'Bacaannya berasal dari 盛る dan 上げる. Ketahuilah kata-kata itu dan Anda akan dapat membaca yang ini juga.', 'Untuk Menumpuk, Untuk Menumpuk, Untuk Menghidupkan, Untuk Menggerakkan')
    RETURNING id INTO v_5841_untuk_menumpuk;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '裏切り者', 'pengkhianat', 35, 53, '<kanji>Seseorang</kanji> yang menusuk dari belakang (裏切り) seseorang adalah <vocabulary>pengkhianat</vocabulary>.', 'Bacaannya adalah 裏切り dan bacaan pengecualian untuk 者. Bayangkan saja bagaimana Anda menganggap pengkhianat sebagai "benda" (物) dan bukan manusia.', 'Pengkhianat')
    RETURNING id INTO v_5842_pengkhianat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '諸々', 'bermacam-macam', 35, 54, 'Anda memiliki <kanji>berbagai</kanji> <kanji>berbagai</kanji> hal. <Kosakata>beragam</kosakata>. Anda memiliki <vocabulary>semua jenis</vocabulary>.', 'Bacaannya agak aneh. Coba pikirkan bagaimana ketika Anda memiliki berbagai hal, Anda mungkin memiliki banyak hal. Apa yang kamu inginkan? Anda ingin <membaca>lebih lanjut</reading> (もろ) dari hal-hal tersebut. <read>Lebih banyak lagi</read> lebih banyak lagi!', 'Bermacam-macam, Semua Jenis')
    RETURNING id INTO v_5843_bermacam_macam;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '三つ編み', 'rambut-dikepang', 35, 55, '編む adalah "merajut". Saat Anda merajut dalam <kanji>tiga</kanji>, Anda merajut dengan gaya kepang. Apa yang kamu kepang? Rambut. Itulah yang membuat <vocabulary>rambut dikepang</vocabulary> ini.', 'Bacaannya adalah み dari 三つ dan つ dan 編む digabungkan menjadi satu (atau haruskah saya katakan tiga?) kepang. Berhati-hatilah karena ini bukan みっつあみ, ini hanya みつあみ. Dengarkan audionya beberapa kali untuk memastikan Anda mengingat cara ejaan dan pengucapannya!', 'Rambut Dikepang, Kepang Rambut, Rambut Anyaman, Anyaman')
    RETURNING id INTO v_5844_rambut_dikepang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '納まる', 'untuk-menyelesaikannya', 35, 56, 'Jika 納める adalah "menyediakan" atau "menyampaikan", maka kata ini adalah kata ketika sesuatu telah diserahkan: jadi <vocabulary>menetap ke</vocabulary> atau <vocabulary>dipuaskan</vocabulary>. 

納まる berarti sesuatu atau seseorang telah menemukan tempat yang tepat dan menetap di sana. Hal ini sering kali menyiratkan bahwa sebelumnya ada keadaan ketidakpastian atau ketidakpuasan, namun sekarang semuanya berada pada tempatnya.

Seperti kebanyakan kata kerja dengan まる sebagai okurigana, ini adalah kata kerja intransitif. Artinya, hal itu terjadi dengan sendirinya, tanpa penekanan pada orang atau benda yang membuat sesuatu menjadi tenang atau terpuaskan.', 'Bacaannya sama dengan 納める.', 'Untuk Menyelesaikannya, Agar Puas')
    RETURNING id INTO v_5847_untuk_menyelesaikannya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '納得', 'menjadi-yakin', 35, 57, 'Saya akan <kanji>memasok</kanji> dan Anda akan <kanji>memperoleh</kanji>, hingga Anda akhirnya <vocabulary>yakin</vocabulary>. Apakah itu terdengar bagus? Apakah saya mendapat <vocabulary>persetujuan</vocabulary> Anda? Saya dapat melihat bahwa Anda <vocabulary>memahami</vocabulary>. Anda berencana <vocabulary>menerima</vocabulary> proposisi saya, bukan?

納得 berarti memahami dan menerima sesuatu secara utuh, baik secara intelektual maupun emosional. Ini digunakan dalam bahasa Jepang sehari-hari ketika seseorang akhirnya setuju dengan suatu penjelasan atau merasa yakin setelah memikirkannya.', 'Pembacaan untuk 納 ini cukup aneh, jadi inilah mnemoniknya:

Bayangkan seseorang yang Anda kenal <vocabulary>yakin</vocabulary> dengan penjelasan Anda, tetapi hanya setelah mereka mengatakan "<reading>Nah</reading> (なっ)! Nah!" setelah setiap poin yang Anda buat. Pada akhirnya Anda mendapatkan <vocabulary>persetujuan</vocabulary> dan <vocabulary>pemahaman</vocabulary> mereka tentang berbagai hal, tetapi hanya setelah mereka mengatakan "nah!" satu juta kali.', 'Menjadi Yakin, Izin, Memahami, Menerima')
    RETURNING id INTO v_5848_menjadi_yakin;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '否定形', 'bentuk-negatif', 35, 58, '否定 adalah penolakan. Ingat bagaimana 形 terkadang mengacu pada tata bahasa tense/tipe? Nah, dengan tata bahasa tipe penolakan, Anda memiliki <vocabulary>bentuk negatif</vocabulary>, menjadikannya <vocabulary>kalimat negatif</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Bentuk Negatif, Kalimat Negatif, Negatif, Tense Negatif')
    RETURNING id INTO v_5849_bentuk_negatif;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '否定する', 'untuk-menolak', 35, 59, 'Jika 否定 adalah "penyangkalan", maka versi kata kerjanya adalah <vocabulary>menyangkal</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri. Akan membantu untuk mengetahui kata 否定 juga.', 'Untuk Menolak')
    RETURNING id INTO v_5850_untuk_menolak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '尊敬する', 'untuk-menghormati', 35, 60, 'Jika 尊敬 adalah "menghormati" maka versi kata kerjanya adalah <vocabulary>menghormati</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Untuk Menghormati')
    RETURNING id INTO v_5851_untuk_menghormati;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '尊敬語', 'bahasa-jepang-yang-terhormat', 35, 61, '尊敬 adalah rasa hormat. <kanji>bahasa</kanji> penghormatan adalah <vocabulary>bahasa Jepang kehormatan</vocabulary> (atau <vocabulary>bahasa kehormatan</vocabulary>, meskipun biasanya ini mengacu pada bahasa Jepang).', 'Bacaannya adalah 尊敬 plus 語 disatukan.', 'Bahasa Jepang yang terhormat, Bahasa Kehormatan, Bahasa Jepang formal, Bahasa Formal')
    RETURNING id INTO v_5852_bahasa_jepang_yang_terhormat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '暮らし', 'kehidupan', 35, 62, 'Jika 暮らす adalah "hidup" atau "menjalani hidup" maka versi kata bendanya adalah <vocabulary>life</vocabulary>.', 'Bacaannya sama dengan 暮らす. Namun, 暮らし sering kali tersangkut di akhir kata benda lain, seperti 田舎暮らし (kehidupan pedesaan), jadi berhati-hatilah terhadap rendaku saat hal itu terjadi.', 'Kehidupan, Hidup, Kehidupan Sehari-hari')
    RETURNING id INTO v_5853_kehidupan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '同音異義語', 'homonim', 35, 63, 'Anda memiliki <kanji>yang sama</kanji> <kanji>suara</kanji> dengan <vocabulary>arti yang berbeda</vocabulary> (異義), dan itu adalah bagian dari <kanji>bahasa</kanji>. Bunyinya sama... artinya berbeda... yang bunyinya seperti <vocabulary>homophone</vocabulary>, atau <vocabulary>homonym</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri. Yang saya tahu mungkin tidak ada homonim untuk kata ini, karena kata ini sangat besar.', 'Homonim, Huruf sebunyi')
    RETURNING id INTO v_5854_homonim;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '著作権', 'hak-cipta', 35, 64, '著作 adalah "menulis" atau "penulis". <kanji>hak</kanji> yang dimiliki oleh tulisan disebut dengan <vocabulary>hak cipta</vocabulary>.

Perhatikan bahwa 著作権 mengacu pada hak cipta untuk apa pun, bukan hanya tulisan.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri. Akan membantu untuk mengetahui 著作 terlebih dahulu juga.', 'Hak cipta')
    RETURNING id INTO v_5855_hak_cipta;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '蒸し暑い', 'panas-dan-lembab', 35, 65, 'Jika hari <kanji>beruap</kanji>dingin <kanji>panas</kanji>, artinya cuacanya <vocabulary>panas dan lembab</vocabulary> (atau bisa juga dikatakan <vocabulary>lembab</vocabulary>, karena biasanya berarti panas juga). Ini adalah kata yang berguna untuk musim panas di Jepang, karena Anda akan selalu mengeluh tentang hal ini.', 'Bacaannya berasal dari 蒸れる dan 暑い. Ketahuilah itu dan Anda juga mengetahui hal ini.', 'Panas dan Lembab, Lembab')
    RETURNING id INTO v_5856_panas_dan_lembab;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '蒸し返す', 'untuk-mengulangi', 35, 66, 'Anda <kanji>mengukus</kanji> sesuatu untuk <kanji>mengembalikan</kanji> ke keadaan hangat sebelumnya, karena Anda belum selesai menggunakannya… secara kiasan… itulah sebabnya ini berarti <vocabulary>mengulangi</vocabulary> sesuatu.

蒸し返す secara harfiah berarti <vocabulary>memanaskan kembali</vocabulary> makanan dengan mengukusnya, namun sebagian besar digunakan secara kiasan untuk mengungkit topik lama lagi. Seringkali hal ini bernuansa negatif, seperti membuka kembali argumen yang telah diselesaikan — setidaknya dari sudut pandang seseorang.', 'Bacaannya sama dengan yang Anda pelajari dengan 蒸れる dan 返す, sehingga ini merupakan pengulangan. Panaskan kembali pengetahuan itu dan Anda siap melakukannya.', 'Untuk mengulangi, Untuk Memanaskan Kembali, Untuk Memunculkan Lagi')
    RETURNING id INTO v_5857_untuk_mengulangi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '装う', 'untuk-berpura-pura', 35, 67, 'Jika Anda <kanji>berpakaian</kanji> sendiri, Anda menutupi siapa diri Anda dan mencoba menjadi orang lain. Anda mencoba <vocabulary>berpura-pura</vocabulary>. Anda mencoba <vocabulary>memakai</vocabulary> kebohongan. Anda mencoba <vocabulary>berpura-pura</vocabulary>.', 'Saat Anda <vocabulary>berpura-pura</vocabulary> bahwa Anda adalah seseorang atau sesuatu yang lain, seseorang menegur Anda: "<reading>kamu sangat</reading> (よそお) benar-benar pembohong!"', 'Untuk Berpura-pura, Untuk Dipakai, Untuk berpura-pura')
    RETURNING id INTO v_5858_untuk_berpura_pura;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '遅れる', 'terlambat', 35, 68, 'Jika sesuatu atau seseorang <kanji>lambat</kanji>, dan mereka "melakukannya lambat" maka mereka akan <vocabulary>terlambat</vocabulary>.', 'Apa yang lambat dan mungkin akan selalu terlambat? <read>ek</reading> besar (おく). Pohon ek kesulitan bergerak, lambat, dan karena itu selalu terlambat juga.', 'Terlambat')
    RETURNING id INTO v_5859_terlambat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '遅刻', 'terlambat', 35, 69, '<kanji>lambat</kanji> <kanji>pengukiran</kanji> sangat lambat. Jika Anda mengukir sesuatu dengan lambat, itu akan memakan waktu lama. Anda akan <vocabulary>terlambat</vocabulary> dengan ukiran lambat seperti itu.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Terlambat, Jadilah Terlambat, Terlambat, Terlambat')
    RETURNING id INTO v_5860_terlambat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '遅延', 'menunda', 35, 70, 'Saya terlalu <kanji>lambat</kanji>, jadi kami harus <kanji>memperpanjang</kanji> waktu peluncuran produk ini. Ini adalah <vocabulary>penundaan</vocabulary> :(', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Menunda')
    RETURNING id INTO v_5861_menunda;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '彫刻', 'patung', 35, 71, 'Anda <kanji>mengukir</kanji> lalu <kanji>mengukir</kanji> lagi. Banyak sekali ukirannya sampai, tunggu, wow, sepertinya ada sesuatu! Semua ukiran itu menjadi <vocabulary>patung</vocabulary>!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Patung')
    RETURNING id INTO v_5862_patung;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '測る', 'untuk-mengukur', 35, 72, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>mengukur</kanji> sehingga kata kerjanya vocab berarti <vocabulary>mengukur</vocabulary>. Kata ini umumnya berkaitan dengan pengukuran ilmiah atau medis.', 'Ingat kata lain yang berarti "mengukur?" Itu adalah 量る, dan memiliki bacaan yang sama dengan kata ini. Itu akan membuat segalanya lebih mudah untuk diingat.', 'Untuk Mengukur, Untuk Mengukur Secara Ilmiah')
    RETURNING id INTO v_5863_untuk_mengukur;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '推測', 'dugaan', 35, 73, 'Saat Anda <kanji>menyimpulkan</kanji> dan <kanji>mengukur</kanji>, hal ini akan menghasilkan semacam <vocabulary>dugaan</vocabulary>, <vocabulary>spekulasi</vocabulary>, atau <vocabulary>tebakan</vocabulary> tentang sesuatu.

推測 berarti menebak berdasarkan fakta atau informasi yang diketahui, sambil menggunakan alasan untuk mengisi kekosongan.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Dugaan, Spekulasi, Tebakan')
    RETURNING id INTO v_5864_dugaan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '予測', 'ramalan', 35, 74, '<kanji>sebelumnya</kanji> <kanji>pengukuran</kanji> adalah saat Anda membuat <vocabulary>prediksi</vocabulary> atau <vocabulary>estimasi</vocabulary> tentang sesuatu.

Meskipun 予想 sering merujuk pada prediksi subjektif, 予測 umumnya mengacu pada <vocabulary>perkiraan</vocabulary> kejadian di masa depan berdasarkan <i>bukti objektif</i>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Ramalan, Perkiraan, Ramalan')
    RETURNING id INTO v_5865_ramalan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '観測', 'pengamatan', 35, 75, '<kanji>Lihat</kanji> dan <kanji>ukur</kanji> apa yang sedang Anda tonton. Ini adalah <vocabulary>observasi</vocabulary>. Ini bukan sekedar menonton, ini lebih dari itu.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Pengamatan')
    RETURNING id INTO v_5866_pengamatan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '破る', 'merobek', 35, 76, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>merobek</kanji> jadi versi kata kerjanya adalah <vocabulary>to merobek</vocabulary>.', 'Anda mulai <vocabulary>menyobek</vocabulary> kain itu. Anda tidak tahu apakah Anda seharusnya melakukannya atau tidak. Penonton juga tidak yakin. Anda mendengar reaksi <reading>yah boo</reading> (やぶ), membuat Anda tidak yakin apakah Anda harus melanjutkan atau berhenti. Ya! Huuu. Ya! Huuu!', 'Merobek, Untuk Merobek, Untuk Istirahat')
    RETURNING id INTO v_5867_merobek;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '破壊', 'pengrusakan', 35, 77, '<kanji>Robek</kanji> dan <kanji>hancurkan</kanji> semuanya, hapus semuanya. <vocabulary>Kehancuran</vocabulary>! <vocabulary>Pembongkaran</vocabulary>!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Pengrusakan, Pembongkaran')
    RETURNING id INTO v_5868_pengrusakan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '破船', 'kecelakaan-kapal', 35, 78, '<kanji>robek</kanji> pada <kanji>kapal</kanji> Anda akan menyebabkannya karam, menjadikannya <vocabulary>kapal karam</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Kecelakaan kapal')
    RETURNING id INTO v_5869_kecelakaan_kapal;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '破産', 'kebangkrutan', 35, 79, 'Jika seseorang <kanji>merobek</kanji> seluruh <kanji>properti</kanji> Anda, hal ini akan menyebabkan <vocabulary>kebangkrutan</vocabulary>. Jika semua harta benda Anda terkoyak, Anda akan <vocabulary>bangkrut</vocabulary>. Orang jahat apa yang melakukan itu?', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Kebangkrutan, Bangkrut')
    RETURNING id INTO v_5870_kebangkrutan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '田舎', 'pedesaan', 35, 80, '<kanji>sawah</kanji> dan <kanji>pondok</kanji>. Inilah gambaran <vocabulary>pedesaan</vocabulary> bagi saya. Ini adalah <vocabulary>pedesaan</vocabulary>. Hanya pondok dan sawah...', 'Pembacaannya tidak terlalu masuk akal untuk kanjinya, dan tentu saja merupakan pengecualian. Coba pikirkan bagaimana ketika Anda berada di <vocabulary>pedesaan</vocabulary> Anda <reading>di 中</reading> (いなか) entah dari mana.', 'Pedesaan, Pedesaan')
    RETURNING id INTO v_5871_pedesaan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '兵舎', 'barak', 35, 81, '<kanji>prajurit</kanji> <kanji>pondok</kanji> adalah tempat di mana para prajurit tinggal. Ini adalah <vocabulary>barak</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Barak')
    RETURNING id INTO v_5872_barak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '庁舎', 'gedung-kantor-pemerintah', 35, 82, '<kanji>kantor pemerintah</kanji> <kanji>pondok</kanji> adalah tempat penyimpanan kantor pemerintah. Itulah <vocabulary>gedung kantor pemerintah</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Gedung Kantor Pemerintah')
    RETURNING id INTO v_5873_gedung_kantor_pemerintah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '講演', 'kuliah', 35, 83, '<kanji>Lakukan</kanji> <kanji>ceramah</kanji> Anda. Ini adalah <vocabulary>ceramah</vocabulary> Anda. Ini adalah <vocabulary>alamat</vocabulary> Anda kepada orang-orang.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Kuliah, Alamat')
    RETURNING id INTO v_5874_kuliah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '講師', 'pengajar', 35, 84, '<kanji>dosen</kanji> <kanji>pakar</kanji> adalah <vocabulary>dosen</vocabulary> atau <vocabulary>instructor</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Pengajar, Pengajar')
    RETURNING id INTO v_5875_pengajar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '講義', 'kuliah', 35, 85, '<kanji>Ceramah</kanji> tentang <kanji>kebenaran</kanji> masih berupa <vocabulary>ceramah</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Kuliah')
    RETURNING id INTO v_5876_kuliah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '滞る', 'terlambat', 35, 86, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>stagnasi</kanji>, dan versi kosakata kata kerjanya adalah <vocabulary>terlambat</vocabulary>. Lagi pula, kalau ada yang mandek, tidak maju, yang menyebabkan <vocabulary>tertunda</vocabulary>.', 'Pekerjaan Anda cenderung <vocabulary>terlambat</vocabulary>, sehingga Anda mendapat banyak <reading>to-do call</reading>s (とどこおる) dari atasan Anda, yang mengingatkan Anda untuk melakukan pekerjaan Anda. Panggilan ini cukup mengganggu, tapi setidaknya pekerjaan Anda tidak terlalu tertunda.', 'Terlambat, Akan Tertunda')
    RETURNING id INTO v_5877_terlambat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '遅滞', 'menunda', 35, 87, 'Saya terlalu <kanji>lambat</kanji> sehingga segalanya mulai <kanji>stagnasi</kanji>. Benar-benar <vocabulary>penundaan</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Menunda')
    RETURNING id INTO v_5878_menunda;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '紹介', 'perkenalan', 35, 88, '<kanji>perkenalan</kanji> saya <kanji>disimpan di sana</kanji> agar Anda dapat mendengarnya. Itulah <vocabulary>perkenalan</vocabulary> saya. Masukkan itu.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Perkenalan')
    RETURNING id INTO v_5879_perkenalan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '介入', 'intervensi', 35, 89, 'Saya <kanji>masuk</kanji> sendiri dan <kanji>memasuki</kanji> kehidupan pribadi Anda. Karena aku peduli, kamu tahu? Saya tidak ingin Anda kecanduan My Little Pony lagi, jadi ini adalah <vocabulary>intervensi</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Intervensi')
    RETURNING id INTO v_5880_intervensi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '己', 'diri', 35, 90, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna. Kata ini juga berarti <vocabulary>diriku sendiri</vocabulary> dan <vocabulary>I</vocabulary>.', 'Sedangkan untuk <vocabulary>saya sendiri</vocabulary>? Aku bukan Bob. <read>oh tidak, Ray</reading> (おのれ), Ray adalah namaku.', 'Diri, Saya sendiri, SAYA')
    RETURNING id INTO v_5881_diri;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '自己', 'diri-sendiri', 35, 91, '<kanji>diri</kanji> Anda <kanji>diri</kanji>, adalah <vocabulary>diri</vocabulary> atau <vocabulary>self</vocabulary> Anda.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Diri sendiri, Diri')
    RETURNING id INTO v_5882_diri_sendiri;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '厄介', 'sulit', 35, 92, '<kanji>kemalangan</kanji> semakin <kanji>terjebak di</kanji> di sana. Begitu banyak kemalangan menyebabkan <vocabulary>susah</vocabulary> <vocabulary>masalah</vocabulary> yang sangat <vocabulary>menyusahkan</vocabulary>.

厄介 menggambarkan sesuatu atau seseorang yang menyusahkan, atau masalah itu sendiri. Ini sangat mirip dengan 面倒, tetapi 厄介 sering digunakan untuk situasi yang lebih menantang atau rumit.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.やく diubah menjadi やっ.', 'Sulit, Sulit Untuk Ditangani, Masalah')
    RETURNING id INTO v_5883_sulit;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '亀', 'penyu', 35, 93, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna. TERBAKAR, TERBAKAR, TERBAKAR.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji.', 'Penyu')
    RETURNING id INTO v_5884_penyu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '海亀', 'penyu-laut', 35, 94, '<kanji>penyu</kanji> <kanji>penyu</kanji> adalah <vocabulary>penyu laut</vocabulary>. Cowabunga!', 'Bacaannya adalah bacaan kun''yomi dari kanji-kanji tersebut, yang disatukan. Saya kira itu karena itu seperti dua kata terpisah yang disatukan menjadi satu. Itu membuat kata ini dibaca sebagai <reading>うみがめ</reading>, dimana かめ mendapat rendaku.', 'Penyu Laut')
    RETURNING id INTO v_5885_penyu_laut;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '互い', 'saling', 35, 95, 'Meskipun terlihat seperti kata sifat, ini adalah versi kata benda dari kanji, sehingga menjadikannya <vocabulary>saling</vocabulary>. Kata ini juga berarti <vocabulary>satu sama lain</vocabulary> dan <vocabulary>timbal balik</vocabulary> dan <vocabulary>bersama</vocabulary> juga.', 'Mari saling membantu <vocabulary>satu sama lain</vocabulary>. Mungkin kalau kita <vocabulary>bersama</vocabulary> kita bisa menghilangkan <reading>tagger</reading> (たが) yang menandai grafiti di seluruh lingkungan kita.', 'Saling, Satu sama lain, Kebalikan, Bersama')
    RETURNING id INTO v_5886_saling;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '相互', 'saling', 35, 96, '<kanji>Saling</kanji> dan <kanji>saling</kanji> adalah <vocabulary>saling</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Saling, Kebalikan')
    RETURNING id INTO v_5887_saling;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '交互に', 'bergantian', 35, 97, 'Upaya dua orang <kanji>bercampur</kanji> secara <kanji>saling</kanji> ketika mereka bekerja <vocabulary>bergantian</vocabulary>. Melakukan <vocabulary>secara bergantian</vocabulary> tidak hanya adil — tetapi juga efisien!

交互に adalah kata keterangan yang relatif formal yang menggambarkan dua hal yang terjadi secara berurutan — apakah itu sepasang elemen visual yang berulang secara bergantian dalam suatu pola, atau hanya dua orang yang bergantian melakukan sesuatu, <vocabulary>satu demi satu</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Bergantian, Selang seling, Satu demi satu')
    RETURNING id INTO v_5888_bergantian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '真剣', 'serius', 35, 98, '<kanji>realitas</kanji> dari <kanji>pedang</kanji> adalah ia akan membelahmu menjadi dua dan membunuhmu dengan mudah. Fakta bahwa hal ini benar adalah hal yang <vocabulary>serius</vocabulary>. Sangat serius.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Serius')
    RETURNING id INTO v_5889_serius;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '剣道', 'kendo', 35, 99, '<kanji>jalur</kanji> dari <kanji>pedang</kanji> dikenal sebagai <vocabulary>kendo</vocabulary>. Anda juga bisa mengucapkan <vocabulary>anggar Jepang</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Kendo, Anggar Jepang, Jalan Pedang')
    RETURNING id INTO v_5890_kendo;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '寿司', 'sushi', 35, 100, '<kanji>umur</kanji> seorang <kanji>sutradara</kanji> bergantung pada seberapa banyak <vocabulary>sushi</vocabulary> yang mereka makan. 

Oke, kanji di 寿司 sebenarnya tidak berhubungan dengan arti kata tersebut, jadi yang ini agak rumit. Coba anggap saja sushi sebagai rahasia umur panjang bagi para sutradara. Bayangkan semua sutradara itu melahap banyak sushi karena mereka sangat ingin memperpanjang umur mereka.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.

Mungkin juga membantu jika mengetahui kanji dalam 寿司 adalah <a href="https://www.wanikani.com/vocabulary/%E5%BD%93%E3%81%A6%E5%AD%97" target="_blank">当て字</a> (ingat itu?). Mereka tidak ada hubungannya dengan sushi, jadi mereka hanya digunakan di sini untuk suaranya.', 'sushi')
    RETURNING id INTO v_5891_sushi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '寿命', 'jangka-hidup', 35, 101, '<kanji>umur</kanji> Anda adalah <kanji>takdir</kanji> Anda dan akan menunjukkan berapa lama <vocabulary>umur</vocabulary> Anda.', 'Anda memang mempelajari cara membaca 寿, tetapi cara membaca 命 merupakan pengecualian. Saat Anda memikirkan jangka hidup, pikirkan bagaimana hal itu memengaruhi setiap orang. Aku, kamu... yah, hanya itu saja. Gabungkan keduanya menjadi <reading>myou</reading> (みょう). Itulah yang mempengaruhi umur. Ya ampun!', 'Jangka hidup')
    RETURNING id INTO v_5892_jangka_hidup;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '長寿', 'umur-panjang', 35, 102, '<kanji>panjang</kanji> <kanji>umur</kanji> adalah <vocabulary>umur panjang</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Umur Panjang, Umur panjang')
    RETURNING id INTO v_5893_umur_panjang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '喜寿', 'ulang-tahun-ketujuh-puluh-ketujuh', 35, 103, 'Anda dapat <kanji>bergembira</kanji> karena <kanji>umur</kanji> Anda telah mencapai titik istimewa ini. Poin spesial itu adalah <vocabulary>ulang tahun ketujuh puluh tujuh</vocabulary> Anda. Banyak sekali angka tujuh, beruntung!', 'Bacaannya adalah bacaan on''yomi. Anda pernah melihat pembacaan on''yomi 喜 sebelumnya, meskipun mungkin sulit untuk mengingatnya saat ini. Mungkin kamu bisa memikirkan bagaimana saat kamu mencapai <vocabulary>ulang tahun ketujuh puluh tujuh</vocabulary> ini, yang kamu inginkan hanyalah <reading>kunci</reading> (き) ke kota sehingga kamu bisa melakukan apapun yang kamu mau.', 'Ulang Tahun Ketujuh Puluh Ketujuh')
    RETURNING id INTO v_5894_ulang_tahun_ketujuh_puluh_ketujuh;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '福寿', 'kebahagiaan-dan-panjang-umur', 35, 104, '<kanji>Keberuntungan</kanji> sepanjang <kanji>umur</kanji> Anda, itulah kehidupan <vocabulary>kebahagiaan dan umur panjang</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Kebahagiaan Dan Panjang Umur')
    RETURNING id INTO v_5895_kebahagiaan_dan_panjang_umur;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '恥ずかしい', 'memalukan', 35, 105, 'Ini adalah kanji tunggal dengan い di akhir, artinya Anda tahu itu mungkin kata sifat. Apa bentuk kata sifat dari <kanji>malu</kanji>? Bisa jadi <vocabulary>malu</vocabulary> atau bahkan <vocabulary> memalukan</vocabulary>.', 'Setiap kali Anda melakukan sesuatu yang <vocabulary>memalukan</vocabulary>, tidak ada yang lebih buruk daripada seseorang yang menunjuk dan berkata, "<reading>Hah</reading> (は)! Lihat pecundang ini!" Seolah-olah Anda belum cukup <vocabulary>malu</vocabulary>.', 'Memalukan, Malu, Malu')
    RETURNING id INTO v_5899_memalukan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '恥', 'malu', 35, 106, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Ini juga bacaan yang Anda pelajari. Bagus sekali! Namun jika Anda tidak mengingatnya, sayang sekali <vocabulary>memalukan</vocabulary>. Ini pasti <vocabulary>memalukan</vocabulary> bagi Anda.', 'Malu, Malu, Aib')
    RETURNING id INTO v_5900_malu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '杉', 'pohon-cedar', 35, 107, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji. Ini akan sangat berguna untuk nama, karena ada banyak nama dengan 杉.', 'pohon cedar')
    RETURNING id INTO v_5901_pohon_cedar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '果汁', 'jus-buah', 35, 108, '<kanji>Buah</kanji> <kanji>sup</kanji> sebenarnya bukan sup, ini lebih merupakan <vocabulary>jus buah</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Jus buah')
    RETURNING id INTO v_5902_jus_buah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '汁', 'sup', 35, 109, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Karena kata ini terdiri dari satu kanji, kemungkinan besar menggunakan bacaan kun''yomi. Anda tidak mempelajari bacaan ini, jadi inilah mnemonik untuk membantu Anda: 

Anda diberi sup. Anda menggigitnya dan mulut Anda terpotong bersih. Itu karena Anda makan sup <reading>yang tipis</reading> (しる).', 'Sup, Jus')
    RETURNING id INTO v_5903_sup;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '味噌', 'miso', 35, 110, '<kanji>rasa</kanji> yang membuat makanan <kanji>riuh</kanji> adalah rasa yang enak. Dalam hal ini, rasa <vocabulary>miso</vocabulary>, yang terdapat di banyak masakan Jepang, dan tentu saja membuat rasanya riuh.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'miso')
    RETURNING id INTO v_5904_miso;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '炎', 'api', 35, 111, 'Kanji dan kata-katanya sama persis!', '<read>Ho tidaaaak</reading> (ほのお), ada api dimana-mana!', 'Api, Api')
    RETURNING id INTO v_5905_api;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '炎症', 'peradangan', 35, 112, 'Saat Anda mengalami <kanji>nyala</kanji> <kanji>gejala</kanji> saat itulah Anda merasa seperti dipenuhi api, yaitu <vocabulary> peradangan</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Peradangan')
    RETURNING id INTO v_5906_peradangan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '為に', 'demi', 35, 113, 'Ini adalah <kanji>sake</kanji> yang dipasangkan dengan に, yang menunjukkan bahwa Anda bergerak menuju "sake" tersebut, seolah itulah tujuan atau alasan Anda melakukan sesuatu. Itu sebabnya ini berarti <vocabulary>demi</vocabulary>.

Anda akan melihatnya dalam frasa seperti 友達の為にする (melakukan <vocabulary>untuk</vocabulary> teman), atau 痩せる為に (<vocabulary>untuk</vocabulary> menurunkan berat badan), yang sering kali ditulis dalam kana. Bisa juga digunakan tanpa に, dalam pengumuman singkat yang menunjukkan penyebab sesuatu, seperti 雨天の為、中止 (dibatalkan <vocabulary>karena</vocabulary> hujan).', 'Ini menggunakan pembacaan kun''yomi yang tidak Anda pelajari dengan kanji, jadi inilah mnemonik untuk membantu Anda:

<vocabulary>Demi</vocabulary> keselamatan publik, Anda harus <read>menjinakkan</reading> (ため) binatang buas yang berkeliaran di kota kami. Sekarang pergilah — jinakkan mereka, demi semua orang!', 'Demi, Untuk, Untuk, Karena')
    RETURNING id INTO v_5907_demi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '行為', 'akta', 35, 114, 'Anda <kanji>pergi</kanji> ke suatu tempat demi <kanji>demi</kanji> melakukan suatu <vocabulary>perbuatan</vocabulary>. Apakah <vocabulary>tindakan</vocabulary> yang Anda rencanakan untuk dilakukan di sana bersifat baik? Atau akankah <vocabulary>perilaku</vocabulary> Anda mungkin… berbahaya?

行為 adalah kata yang agak formal yang secara obyektif mengacu pada sesuatu yang dilakukan seseorang, dengan fokus lebih pada tindakan itu sendiri daripada niat di baliknya. Ini biasanya digunakan dalam tulisan, aturan, atau diskusi tentang benar dan salah, seperti 犯罪行為 (tindakan kriminal) atau 迷惑行為 (perilaku mengganggu).', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Akta, Bertindak, Perilaku')
    RETURNING id INTO v_5908_akta;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '有意', 'makna', 35, 115, 'Hal-hal yang <kanji>memiliki</kanji> <kanji>ide</kanji> di belakangnya memiliki <vocabulary>signifikansi</vocabulary>. Dengan kata lain, kata-kata tersebut <vocabulary>signifikan</vocabulary>. Tidak ada yang dangkal, sembrono, dan tidak masuk akal bagi saya, terima kasih! Saya hanya menginginkan hal-hal yang penting.

有意 adalah istilah formal yang paling umum digunakan dalam konteks akademis untuk merujuk pada hasil penelitian yang signifikan secara statistik.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Makna, Penting')
    RETURNING id INTO v_5909_makna;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '熊', 'beruang', 35, 116, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji.', 'Beruang')
    RETURNING id INTO v_5910_beruang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '熊本県', 'prefektur-kumamoto', 35, 117, '<kanji>Beruang</kanji> <kanji>asal</kanji> <kanji>prefektur</kanji> adalah <vocabulary>Prefektur Kumamoto</vocabulary>. Mungkin yang terbaik untuk mempelajari makna ini melalui membaca. Selain itu, Anda harus mencari Kumamon dari Kumamoto-ken.', 'Bacaannya adalah bacaan 熊, bacaan "asal" alternatif 本, dan bacaan untuk 県.', 'Prefektur Kumamoto')
    RETURNING id INTO v_5911_prefektur_kumamoto;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '地獄', 'neraka', 35, 118, '<kanji>bumi</kanji> <kanji>penjara</kanji> adalah penjara yang berada di dalam bumi. Penjara apa yang ada di bawah bumi? Itu akan menjadi <vocabulary>neraka</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Neraka')
    RETURNING id INTO v_5912_neraka;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '獄内', 'di-penjara', 35, 119, 'Jika Anda <kanji>di dalam</kanji> <kanji>penjara</kanji> Anda <vocabulary>di penjara</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Di Penjara')
    RETURNING id INTO v_5913_di_penjara;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '入獄', 'hukuman-penjara', 35, 120, 'Saat Anda <kanji>memasuki</kanji> <kanji>penjara</kanji> itulah <vocabulary>penjara</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Hukuman penjara')
    RETURNING id INTO v_5914_hukuman_penjara;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '出獄', 'bebaskan-dari-penjara', 35, 121, 'Jika Anda <kanji>keluar</kanji> dari <kanji>penjara</kanji> Anda mendapatkan <vocabulary>pembebasan dari penjara</vocabulary>. Namun, sebelum Anda melanjutkan, izinkan saya memberi tahu Anda satu hal: Harapan adalah hal yang berbahaya. Harapan bisa membuat seseorang menjadi gila.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Bebaskan Dari Penjara')
    RETURNING id INTO v_5915_bebaskan_dari_penjara;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '脱獄', 'melarikan-diri-dari-penjara', 35, 122, 'Anda sedang <kanji>melarikan diri</kanji> dari <kanji>penjara</kanji> . Jadi ini berarti... <vocabulary>melarikan diri dari penjara</vocabulary>. Atau <vocabulary>jailbreak</vocabulary> jika Anda merasa sedikit mewah.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Melarikan Diri Dari Penjara, pembobolan penjara')
    RETURNING id INTO v_5916_melarikan_diri_dari_penjara;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '酔う', 'menjadi-mabuk', 35, 123, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>mabuk</kanji> jadi versi kosakata kata kerjanya adalah <kosa kata>mabuk</vocabulary>.

Perasaan mabuk ini juga terjadi pada sebagian orang yang berada di dalam perahu dan mobil. Namun kami menyebutnya <vocabulary>mabuk laut</vocabulary> atau <vocabulary>mabuk kendaraan</vocabulary>. Anda sebenarnya tidak mabuk, tetapi Anda merasa seperti mabuk (dan Anda mungkin akan muntah, ih!).', 'Aku tidak mabuk, <read>yo</reading> (よ). KAMU. Aku tidak mabuk, lho. KAMU. Yo, aku tidak mabuk. Yo.', 'Menjadi Mabuk, Menjadi mabuk laut, Menjadi mabuk kendaraan')
    RETURNING id INTO v_5917_menjadi_mabuk;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '泥酔', 'mati-mabuk', 35, 124, 'Jika Anda <kanji>lumpur</kanji> <kanji>mabuk</kanji>, Anda sangat mabuk hingga berguling-guling di tanah. Anda <vocabulary>mabuk berat</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda belum melihat bacaan on''yomi untuk 泥 (でい), jadi inilah mnemonik untuk membantu Anda: 

Kamu mungkin akan <vocabulary>mabuk berat</vocabulary> jika kamu mulai minum di tengah <reading>hari</reading> (でい). Coba saja tunggu sampai hari selesai, misalnya sepulang kerja, lho?', 'Mati Mabuk, Benar-benar Mabuk')
    RETURNING id INTO v_5918_mati_mabuk;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '酢', 'cuka', 35, 125, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji!', 'Cuka')
    RETURNING id INTO v_5919_cuka;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '酢の物', 'makanan-cuka', 35, 126, '<kanji>cuka</kanji> <kanji>benda</kanji> adalah sesuatu yang telah diberi cuka. Ini adalah <vocabulary>makanan yang diberi cuka</vocabulary> atau <vocabulary>makanan yang diasamkan</vocabulary>.', 'Bacaannya adalah bacaan 酢 dan bacaan kun''yomi untuk 物 yang sudah cukup banyak Anda lihat saat ini.', 'Makanan Cuka, Makanan Acar')
    RETURNING id INTO v_5920_makanan_cuka;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '鍋', 'panci-masak', 35, 127, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Pembacaannya sama seperti yang Anda pelajari dengan kanji.', 'Panci Masak, Makanan daging dan sayur')
    RETURNING id INTO v_5921_panci_masak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '湖', 'danau', 35, 128, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sangat panjang, tapi juga sangat mudah! Anda tahu みず berarti "air", dan うみ berarti "laut". Jadi, Anda memiliki "air laut" yang merupakan sebuah danau, yang merupakan <reading>みずうみ</reading>.', 'Danau')
    RETURNING id INTO v_5922_danau;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '山中湖', 'danau-yamanaka', 35, 129, '<kanji>gunung</kanji> <kanji>tengah</kanji> <kanji>danau</kanji> adalah <vocabulary>danau Yamanaka</vocabulary>, sebuah danau yang terkenal dan sangat indah di Jepang. Ini juga merupakan danau yang akan membantu Anda mempelajari membaca kanji danau dengan lebih baik.', 'Bacaannya adalah bacaan kun''yomi 山 dan 中, kemudian bacaan on''yomi 湖.', 'Danau Yamanaka, Danau Yamanaka')
    RETURNING id INTO v_5923_danau_yamanaka;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '青銅', 'perunggu', 35, 130, '<kanji>Biru</kanji> <kanji>tembaga</kanji> adalah <vocabulary>perunggu</vocabulary>. Perunggu memiliki warna kebiruan, itulah sebabnya warnanya tembaga biru.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Perunggu')
    RETURNING id INTO v_5924_perunggu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '銅山', 'tambang-tembaga', 35, 131, 'Di <kanji>tembaga</kanji> <kanji>gunung</kanji> Anda masuk dan membuat <vocabulary>tambang tembaga</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Bacaan 山 adalah ざん, bukan さん karena rendaku.', 'Tambang Tembaga')
    RETURNING id INTO v_5925_tambang_tembaga;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '銅像', 'patung-tembaga', 35, 132, '<kanji>tembaga</kanji> <kanji>patung</kanji> adalah <vocabulary>patung tembaga</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Patung Tembaga, Patung Perunggu')
    RETURNING id INTO v_5926_patung_tembaga;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '油', 'minyak', 35, 133, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Anda perlu mengoleskan <vocabulary>minyak</vocabulary> ke <reading>bra</reading> (あぶら) karena itu menempel pada Anda. Anda tidak bisa melepas kaitannya, jadi Anda harus melepasnya. Masalahnya, bra itu terlalu ketat, itulah sebabnya <reading>bra</reading> perlu minyak agar bisa lepas.', 'Minyak')
    RETURNING id INTO v_5928_minyak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '油断', 'kurangnya-perhatian', 35, 134, 'Jika Anda membiarkan seseorang <kanji>memutus</kanji> persediaan <kanji>minyak</kanji> Anda, itu mungkin karena <vocabulary>kurangnya perhatian</vocabulary> Anda. Anda <vocabulary>melonggarkan kewaspadaan</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Kurangnya perhatian, Turunkan Penjagaan Anda')
    RETURNING id INTO v_5929_kurangnya_perhatian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '油田', 'ladang-minyak', 35, 135, '<kanji>minyak</kanji> <kanji>sawah</kanji> lebih mirip <vocabulary>ladang minyak</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Anda belum mempelajari bacaan ini untuk 田. Bayangkan saja bagaimana Anda berjalan ke <vocabulary>ladang minyak</vocabulary> dan Anda melihat <reading>sarang</reading> (でん) beruang, berisi minyak.', 'Ladang Minyak')
    RETURNING id INTO v_5930_ladang_minyak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '原油', 'minyak-mentah', 35, 136, '<kanji>minyak</kanji> <kanji>asli</kanji> adalah minyak dalam keadaan aslinya. Itulah <vocabulary>minyak mentah</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Minyak mentah')
    RETURNING id INTO v_5931_minyak_mentah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '給油', 'mengisi-bahan-bakar', 35, 137, 'Anda mengambil <kanji>gaji</kanji> Anda dan membeli <kanji>minyak</kanji>. Saat Anda melakukan ini, Anda <vocabulary>mendorong</vocabulary> sesuatu.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Mengisi bahan bakar')
    RETURNING id INTO v_5932_mengisi_bahan_bakar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '醤油', 'shoyu', 35, 138, '<kanji>Kecap</kanji> <kanji>minyak</kanji> adalah <vocabulary>kecap</vocabulary>, atau sebagaimana disebut dalam bahasa Jepang, <vocabulary>shoyu</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Shoyu, Kecap, Shouyu')
    RETURNING id INTO v_5933_shoyu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '起床', 'kenaikan', 35, 139, '<kanji>Bangun</kanji> dari <kanji>tempat tidur</kanji> Anda dan bangun. Anda <vocabulary>bangkit</vocabulary> atau <vocabulary>bangun dari tempat tidur</vocabulary>.

起床 adalah kata yang relatif formal yang biasa digunakan dalam tulisan. Ini juga digunakan sebagai perintah untuk membangunkan individu di lingkungan seperti pangkalan militer atau penjara.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda belum mempelajari bacaan ini, jadi inilah mnemonik untuk membantu Anda:

Ingatlah bahwa <vocabulary>bangun</vocabulary> dan <vocabulary>bangun dari tempat tidur</vocabulary> lebih awal adalah <reading>kunci</reading> (き) menuju hati <reading>Sho</reading>gun (しょう). Dia tidak suka orang yang malas, jadi pastikan untuk bangun dari tempat tidur pada waktu yang wajar.', 'Kenaikan, Bangun Dari Tempat Tidur')
    RETURNING id INTO v_6580_kenaikan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '涙', 'air-mata', 35, 140, '<kanji>tetesan air mata</kanji> Anda juga dikenal sebagai <vocabulary>air mata</vocabulary> Anda.', 'Karena kata ini terdiri dari satu kanji, kemungkinan besar menggunakan bacaan kun''yomi. Anda mempelajari bacaan ini dengan kanji, tapi inilah mnemonik jika Anda memerlukan penyegaran:

<kanji>tetesan air mata</kanji>mu seperti ombak kecil. Apa itu? Mereka <membaca>波だ</reading> (なみだ).', 'Air mata, Merobek, Titik air mata')
    RETURNING id INTO v_6823_air_mata;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '剣', 'pedang', 35, 141, 'Kanji dan kata-katanya sama. Itu berarti mereka juga berbagi makna. Kata ini mencakup semua jenis <vocabulary>pedang</vocabulary> dan <vocabulary>sabre</vocabulary>, meskipun pada awalnya kata ini kebanyakan digunakan untuk <vocabulary>pedang bermata dua</vocabulary>.', 'Bacaannya sama dengan kanji yang Anda pelajari, artinya Anda tahu bacaannya!

Kata ini juga bisa dibaca つるぎ, namun dalam hal ini maknanya terbatas pada pedang gaya Barat saja. Karena perbedaan makna, kami hanya menerima pembacaan けん (tetapi Anda akan mendapat percobaan lagi jika memasukkan つるぎ).', 'Pedang, Pedang, Pedang Bermata Dua')
    RETURNING id INTO v_7555_pedang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '勇む', 'agar-bersemangat-tinggi', 35, 142, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>keberanian</kanji> jadi versi kata kerjanya adalah apa yang terjadi jika Anda memiliki banyak keberanian. Seseorang yang memiliki keberanian mungkin adalah tipe orang yang mampu <vocabulary>bersemangat tinggi</vocabulary> dalam menghadapi sesuatu!

勇む berarti <kosa kata>bersemangat</vocabulary> menghadapi sesuatu atau menghadapinya dengan keberanian dan tekad. Ini sering kali menunjukkan keterlibatan yang proaktif dan antusias. Anda akan menemukannya dalam ekspresi tertulis seperti 喜び勇む (dengan gembira dan bersemangat melakukan sesuatu) atau 勇んで出かける (keluar dengan tekad).', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda:

Siapakah orang yang tampaknya selalu <vocabulary>bersemangat tinggi</vocabulary>? <read>Isa</reading>bel (いさ)! Dia sangat positif dan bersemangat, bahkan ketika menghadapi tantangan.', 'Agar Bersemangat Tinggi, Menjadi Bersemangat')
    RETURNING id INTO v_7589_agar_bersemangat_tinggi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '貴重', 'berharga', 35, 143, 'Sesuatu yang <kanji>berharga</kanji> dan <kanji>berat</kanji> sangatlah <vocabulary>berharga</vocabulary> dan mungkin bahkan lebih <vocabulary>berharga</vocabulary> dibandingkan barang-barang Anda yang tidak terlalu berat.

貴重 digunakan terutama ketika ada sesuatu yang langka, penting, atau sulit digantikan. Anda dapat menggunakannya untuk hal-hal fisik, namun Anda juga akan melihatnya digunakan untuk menunjukkan penghargaan terhadap hal-hal yang tidak berwujud, seperti 貴重なご意見 (pendapat Anda yang berharga) atau 貴重な体験 (pengalaman berharga).', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda tidak mempelajari bacaan 重 ini dengan kanji, jadi inilah mnemonik untuk membantu Anda:

Simpan barang-barang <vocabulary>berharga</vocabulary> di dekat anda, karena Nyonya <reading>Chou</reading> (ちょう) yang jahat akan datang dan mencurinya jika anda tidak melakukannya. Dia akan mengambil semua <vocabulary>berharga</vocabulary> yang Anda miliki dan menghancurkannya.', 'Berharga, Berharga')
    RETURNING id INTO v_7662_berharga;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '暮れる', 'menjadi-gelap', 35, 144, 'Anda terlalu sibuk dengan <kanji>mata pencaharian</kanji> Anda, Anda bahkan tidak menyadari bahwa di luar <vocabulary> mulai gelap</vocabulary>. Saat Anda menjalani banyak kehidupan, hari dan musim terasa <vocabulary>berakhir</vocabulary> dengan cepat seperti itu.

Alternatifnya, pikirkan betapa <reading>jarang</reading> (れる) menjadi gelap. Ini sebenarnya hanya terjadi setiap 24 jam sekali. Kejadian yang cukup langka jika Anda bertanya kepada saya.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda mempelajari bacaan ini ketika mempelajari 暮らす, jadi jika Anda dapat mengingatnya, Anda juga harus dapat mengingat yang ini!', 'Menjadi Gelap, Untuk Mengakhiri')
    RETURNING id INTO v_7776_menjadi_gelap;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '〜軒', 'konter-rumah', 35, 145, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna. 

Hal ini umumnya digunakan untuk menghitung rumah terpisah untuk satu keluarga, namun juga dapat digunakan untuk menghitung unit individu dalam kompleks perumahan, serta toko atau restoran.', 'Bacaannya sama dengan kanji yang Anda pelajari, artinya Anda tahu bacaannya!', 'Konter Rumah, Konter Untuk Rumah, Konter Untuk Bangunan')
    RETURNING id INTO v_7837_konter_rumah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '白熊', 'beruang-kutub', 35, 146, '<kanji>putih</kanji> <kanji>beruang</kanji> adalah <vocabulary>beruang kutub</vocabulary>! Merekalah satu-satunya beruang putih di seluruh dunia!', 'Bacaan kata ini sama-sama bacaan kun''yomi. Anda sudah mempelajarinya, jadi Anda harus bisa membacanya juga!', 'Beruang Kutub')
    RETURNING id INTO v_8688_beruang_kutub;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '石油', 'minyak', 35, 147, '<kanji>Minyak</kanji> yang mengandung <kanji>batu</kanji> berasal dari tanah. Ini bukan minyak zaitun, ini <vocabulary>minyak bumi</vocabulary>!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Minyak, Minyak bumi, Minyak tanah')
    RETURNING id INTO v_8726_minyak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '捉える', 'untuk-dipahami', 35, 148, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji berarti <kanji>menangkap</kanji>, namun versi kata kerja di sini berarti <kosakata>memahami</vocabulary> atau <vocabulary>memahami</vocabulary>. Anda masih menangkap sesuatu, hanya dalam arti yang lebih metaforis.

Sekilas, kata ini mungkin sedikit mengingatkan Anda pada 捕える, karena (spoiler alert) kedua kata tersebut mempunyai bacaan yang sama. Namun, meskipun 捕える adalah tentang menangkap secara fisik sesuatu yang dapat melarikan diri, seperti penjahat atau binatang buas, 捉える cenderung lebih bersifat kiasan. Anda akan melihatnya terbiasa membicarakan hal-hal seperti menangkap ide, meraih peluang, atau bahkan memikat hati orang.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda mempelajari bacaan ini dengan kanji, jadi Anda seharusnya bisa membacanya sendiri.

Alternatifnya, Anda juga dapat mengingatnya dengan 捕える, yang bacaannya sama. Kedua kata tersebut mengacu pada "menangkap" sesuatu, hanya dalam arti kata yang berbeda!', 'Untuk dipahami, Untuk Memahami, Untuk Memikat')
    RETURNING id INTO v_8868_untuk_dipahami;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '喋る', 'untuk-mengobrol', 35, 149, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>mengobrol</kanji> atau <kanji>berbicara</kanji> sehingga versi kata kerjanya adalah <vocabulary>to chat</vocabulary> atau <vocabulary>to talk</vocabulary>.', 'Kosakata ini menggunakan bacaan yang sama yang Anda pelajari dengan kanji, ditambah hiragana yang terlampir di akhir.', 'Untuk Mengobrol, Untuk Berbicara')
    RETURNING id INTO v_8917_untuk_mengobrol;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '股下', 'jahitan-dalam', 35, 150, '<kanji>selangkangan</kanji> Anda dan apa yang <kanji>di bawah</kanji> disebut <vocabulary>inseam</vocabulary> Anda. Garis itulah yang turun ke bagian dalam celana Anda. Tergantung pada variasi bahasa Inggris Anda, Anda mungkin menyebutnya sebagai <vocabulary>inside leg</vocabulary> Anda!', 'Kata ini menggunakan bacaan kun’yomi dari kedua kanji tersebut. Kamu belajar また dari kata 股, dan kamu belajar した dari kata 下 beberapa waktu yang lalu. Jika Anda tidak ingat salah satu dari ini, tundukkan kepala Anda karena malu dan lihat <reading>またした</reading> Anda!', 'jahitan dalam, Kaki Bagian Dalam')
    RETURNING id INTO v_8977_jahitan_dalam;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '親戚', 'kerabat', 35, 151, 'Apa sebenarnya <kanji>orang tua</kanji> <kanji>kerabat</kanji> Anda? <vocabulary>kerabat</vocabulary> Anda sendiri! Kalian semua <vocabulary>saudara</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Kerabat, Anggota Keluarga, Kerabat')
    RETURNING id INTO v_9002_kerabat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '鑑みる', 'untuk-mempertimbangkan-sesuatu', 35, 152, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Anda telah mengetahui bahwa kanji ini berarti "model", namun bisa juga berarti "<kanji>memperhitungkan</kanji>", jadi versi kata kerjanya berarti <vocabulary>memperhitungkan sesuatu</vocabulary> atau <vocabulary>to be in light</vocabulary>.

鑑みる secara harfiah berasal dari gagasan "melihat sesuatu dari dekat untuk menilainya". Ini adalah kata formal yang digunakan untuk menggambarkan tindakan mempertimbangkan sesuatu dengan penuh pertimbangan berdasarkan hal-hal seperti pengalaman sebelumnya atau keadaan sekitar.

Ini adalah kata kerja transitif, tetapi memerlukan を atau に untuk menandai hal yang Anda perhitungkan. Kedua partikel tersebut benar secara tata bahasa, tetapi に terdengar sedikit lebih formal, yang sering kali sesuai dengan konteks penggunaan kata tersebut.', 'Kata kerja ini menggunakan kun''yomi dari kanji. Anda belum mempelajarinya, jadi inilah mnemonik untuk membantu Anda:

Jika kamu ingin <vocabulary>memperhitungkan sesuatu</vocabulary>, kamu harus <membaca>考</reading>える (かんが) tentang hal itu terlebih dahulu. Dan ketika Anda berpikir seperti itu, <kosakata>harus mempertimbangkan</vocabulary> banyak faktor lainnya. Mempertimbangkan semua faktor tersebut akan membantu memandu langkah Anda selanjutnya, Anda tahu?', 'Untuk Mempertimbangkan Sesuatu, Untuk Menjadi Terang')
    RETURNING id INTO v_9059_untuk_mempertimbangkan_sesuatu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '自撮り', 'selfie', 35, 153, '<kanji>diri</kanji> <kanji>foto</kanji> persis seperti itu: <vocabulary>selfie</vocabulary>.', 'Kata ini menggunakan on''yomi dari 自, yang Anda pelajari dengan kanji, dan kun''yomi dari 撮, yang Anda pelajari dengan kata 撮る. Meskipun kombinasinya agak tidak biasa, Anda mungkin bisa menebak kombinasi pertama karena bacaannya umum, dan kombinasi kedua karena り di akhir. Hati-hati dengan rendaku, yang mengubah とり menjadi どり.', 'Selfie')
    RETURNING id INTO v_9160_selfie;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '雨天', 'cuaca-hujan', 35, 154, 'Anda melihat kanji untuk <kanji>hujan</kanji> diikuti oleh kanji 天 dari 天気 (cuaca). Kata ini berarti <vocabulary>cuaca hujan</vocabulary>.

Ini mempunyai nuansa formal, dan sering digunakan untuk pengumuman acara (apakah akan ditunda jika cuaca hujan, dll).', 'Ini adalah kata jukugo, jadi gunakan bacaan on''yomi. Anda seharusnya sudah familiar dengan bacaan on''yomi untuk 天, tetapi tidak untuk 雨. Jadi, inilah mnemonik untuk membantu Anda mengingat:

<vocabulary>cuaca hujan</vocabulary> tidak akan menghentikan Anda untuk pergi mencari <reading>u</reading>ni (う). Lagipula Anda akan basah saat menyelam ke laut untuk mengambil uni, cuaca hujan tidak mempengaruhi Anda. Anda juga bisa menjualnya seharga <read>sepuluh</reading> (てん) dolar per potongnya! Cuaca hujan sama sekali tidak menjadi masalah bagi perburuan universitas jika Anda menghasilkan sepuluh dolar untuk setiap perburuan, Anda tahu?', 'Cuaca Hujan')
    RETURNING id INTO v_9267_cuaca_hujan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '素人', 'amatir', 35, 155, 'Anda memiliki <kanji>elemen</kanji>al <kanji>orang</kanji> yang sangat <kanji>. Mereka sangat dasar sehingga mereka termasuk <vocabulary>amatir</vocabulary>, sungguh. Mungkin sedikit terlalu mendasar.', 'Sayangnya, bacaan untuk ini merupakan pengecualian, jadi Anda hanya perlu menghafalnya saja. Berikut ini mnemonik untuk membantu Anda:

"Kamu seorang <vocabulary>amatir</vocabulary>!", <reading>tulisnya</reading> (しろうと). Agak kasar, bukan? Tapi itulah yang dia tulis. Harus berbuat sedikit lebih baik untuk membuatnya terkesan, sobat.', 'Amatir, Pemula')
    RETURNING id INTO v_9309_amatir;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '直ちに', 'segera', 35, 156, 'Jika seseorang meminta Anda untuk <kanji>langsung</kanji> dalam melakukan sesuatu, Anda harus melakukannya <vocabulary>segera</vocabulary>. Ayo, potong-potong!

直ちに berarti melakukan sesuatu <vocabulary>segera</vocabulary>, dan memiliki nuansa urgensi — misalnya, peringatan tsunami yang meminta orang untuk segera mengungsi dari rumahnya atau dokter yang meminta Anda untuk segera menghubungi mereka jika Anda mengalami gejala tertentu. Namun, bisa juga berarti <vocabulary>secara langsung</vocabulary>, seperti 失敗は直ちに死に繋がる (kegagalan akan langsung menyebabkan kematian).', 'Kata ini menggunakan bacaan langka untuk 直 yang belum pernah Anda lihat sebelumnya, jadi inilah mnemonik untuk membantu Anda mengingatnya:

Setiap kali atasan Anda meminta Anda melakukan sesuatu <vocabulary>segera</vocabulary>, Anda melakukannya lalu berteriak "<reading>ta-da</reading> (ただ)!!" Bayangkan betapa menyebalkannya Anda sebagai seorang karyawan, sambil berteriak "ta-da!" setiap kali Anda menyelesaikan tugas. Namun, Anda menyelesaikan segala sesuatunya dengan segera, sehingga tidak ada seorang pun yang dapat memecat Anda — bahkan jika mereka mungkin menginginkannya.', 'Segera, Langsung, Secara langsung')
    RETURNING id INTO v_9387_segera;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '潰す', 'untuk-menghancurkan', 35, 157, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>menghancurkan</kanji> atau <kanji>menekan</kanji> sehingga versi kata kerjanya adalah <vocabulary>to crush</vocabulary> atau <vocabulary>to squash</vocabulary>.

潰す artinya meremukkan atau menghancurkan sesuatu yang tidak dapat diperbaiki lagi. Meskipun sering digunakan secara harfiah, seperti 箱を潰す (meratakan kotak), kata ini juga dapat digunakan secara kiasan, seperti merusak rencana, menghabiskan waktu, menyia-nyiakan peluang, atau bahkan membuat bisnis bangkrut.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda sudah mempelajarinya dengan kanji, jadi Anda seharusnya sudah siap di sini.', 'Untuk Menghancurkan, Untuk Labu, Untuk Merusak Sesuatu')
    RETURNING id INTO v_9403_untuk_menghancurkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '儲かる', 'menjadi-menguntungkan', 35, 158, 'Ingat bagaimana 儲ける berarti "mendapatkan keuntungan"? Nah, ini versi intransitif — versi yang tidak mengambil objek langsung — jadi artinya <vocabulary>menguntungkan</vocabulary>. Akhiran かる merupakan sebuah petunjuk, karena kata kerja dengan かる sebagai okurigana (kana ditambahkan ke kanji) biasanya bersifat intransitif.

Dibandingkan dengan 儲ける, yaitu tentang kamu mendapatkan sesuatu, 儲かる lebih tentang situasi itu sendiri yang menghasilkan uang, seperti この店は儲かってる (toko ini berjalan dengan baik). Ini juga bisa mengacu pada beberapa keuntungan yang didapat karena keberuntungan, seperti 一日儲かった (Saya mendapat satu hari ekstra).', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda sudah mempelajari bacaan ini dengan kanji, jadi Anda sudah siap di sini.', 'Menjadi Menguntungkan, Untuk Menghasilkan Untung, Untuk Menghasilkan Uang')
    RETURNING id INTO v_9441_menjadi_menguntungkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '僅か', 'beberapa', 35, 159, 'Jika ada sesuatu yang <kanji>sedikit</kanji>, itu berarti Anda hanya memiliki <vocabulary>sedikit</vocabulary> atau <vocabulary>sedikit</vocabulary> dari benda tersebut.

僅か adalah kata yang relatif formal yang menunjukkan jumlah kecil. Anda akan mendengarnya ketika seseorang ingin menekankan betapa kecilnya sesuatu, seperti 僅かな差 (celah kecil) atau 僅か10分 (<vocabulary>hanya</vocabulary> sepuluh menit). Perhatikan bahwa kata ini sering ditulis dalam kana, seperti わずか, kecuali jika gaya penulisannya sangat formal.', 'Ketika orang hanya memiliki <vocabulary>sedikit</vocabulary> sesuatu, <reading>perang</reading> (わず) cenderung pecah. Begitu banyak perang yang dimulai karena hanya ada <vocabulary>sedikit</vocabulary> sesuatu dan orang-orang mulai memperebutkannya.', 'Beberapa, Sedikit, Hanya')
    RETURNING id INTO v_9443_beberapa;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3207_untuk_menghitung, 'Untuk Menghitung', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4860_kantor_perdana_menteri, 'Kantor Perdana Menteri', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4860_kantor_perdana_menteri, 'Kantor Kabinet', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5668_gurun, 'Gurun', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5669_tidak_jelas, 'Tidak jelas', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5725_untuk_terluka, 'Untuk Terluka', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5750_bangsawan, 'Bangsawan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5750_bangsawan, 'Aristokrat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5838_dengan_pikiran_lajang, 'Dengan Pikiran Lajang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5838_dengan_pikiran_lajang, 'Dengan sungguh-sungguh', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5838_dengan_pikiran_lajang, 'Sungguh-sungguh', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5838_dengan_pikiran_lajang, 'Sebuah Garis', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5840_untuk_memberitakan, 'Untuk Memberitakan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5841_untuk_menumpuk, 'Untuk Menumpuk', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5841_untuk_menumpuk, 'Untuk Menumpuk', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5841_untuk_menumpuk, 'Untuk Menghidupkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5841_untuk_menumpuk, 'Untuk Menggerakkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5842_pengkhianat, 'Pengkhianat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5843_bermacam_macam, 'Bermacam-macam', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5843_bermacam_macam, 'Semua Jenis', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5844_rambut_dikepang, 'Rambut Dikepang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5844_rambut_dikepang, 'Kepang Rambut', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5844_rambut_dikepang, 'Rambut Anyaman', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5844_rambut_dikepang, 'Anyaman', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5847_untuk_menyelesaikannya, 'Untuk Menyelesaikannya', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5847_untuk_menyelesaikannya, 'Agar Puas', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5848_menjadi_yakin, 'Menjadi Yakin', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5848_menjadi_yakin, 'Izin', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5848_menjadi_yakin, 'Memahami', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5848_menjadi_yakin, 'Menerima', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5849_bentuk_negatif, 'Bentuk Negatif', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5849_bentuk_negatif, 'Kalimat Negatif', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5849_bentuk_negatif, 'Negatif', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5849_bentuk_negatif, 'Tense Negatif', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5850_untuk_menolak, 'Untuk Menolak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5851_untuk_menghormati, 'Untuk Menghormati', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5852_bahasa_jepang_yang_terhormat, 'Bahasa Jepang yang terhormat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5852_bahasa_jepang_yang_terhormat, 'Bahasa Kehormatan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5852_bahasa_jepang_yang_terhormat, 'Bahasa Jepang formal', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5852_bahasa_jepang_yang_terhormat, 'Bahasa Formal', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5853_kehidupan, 'Kehidupan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5853_kehidupan, 'Hidup', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5853_kehidupan, 'Kehidupan Sehari-hari', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5854_homonim, 'Homonim', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5854_homonim, 'Huruf sebunyi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5855_hak_cipta, 'Hak cipta', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5856_panas_dan_lembab, 'Panas dan Lembab', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5856_panas_dan_lembab, 'Lembab', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5857_untuk_mengulangi, 'Untuk mengulangi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5857_untuk_mengulangi, 'Untuk Memanaskan Kembali', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5857_untuk_mengulangi, 'Untuk Memunculkan Lagi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5858_untuk_berpura_pura, 'Untuk Berpura-pura', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5858_untuk_berpura_pura, 'Untuk Dipakai', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5858_untuk_berpura_pura, 'Untuk berpura-pura', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5859_terlambat, 'Terlambat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5860_terlambat, 'Terlambat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5860_terlambat, 'Jadilah Terlambat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5860_terlambat, 'Terlambat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5860_terlambat, 'Terlambat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5861_menunda, 'Menunda', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5862_patung, 'Patung', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5863_untuk_mengukur, 'Untuk Mengukur', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5863_untuk_mengukur, 'Untuk Mengukur Secara Ilmiah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5864_dugaan, 'Dugaan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5864_dugaan, 'Spekulasi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5864_dugaan, 'Tebakan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5865_ramalan, 'Ramalan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5865_ramalan, 'Perkiraan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5865_ramalan, 'Ramalan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5866_pengamatan, 'Pengamatan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5867_merobek, 'Merobek', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5867_merobek, 'Untuk Merobek', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5867_merobek, 'Untuk Istirahat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5868_pengrusakan, 'Pengrusakan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5868_pengrusakan, 'Pembongkaran', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5869_kecelakaan_kapal, 'Kecelakaan kapal', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5870_kebangkrutan, 'Kebangkrutan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5870_kebangkrutan, 'Bangkrut', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5871_pedesaan, 'Pedesaan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5871_pedesaan, 'Pedesaan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5872_barak, 'Barak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5873_gedung_kantor_pemerintah, 'Gedung Kantor Pemerintah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5874_kuliah, 'Kuliah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5874_kuliah, 'Alamat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5875_pengajar, 'Pengajar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5875_pengajar, 'Pengajar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5876_kuliah, 'Kuliah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5877_terlambat, 'Terlambat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5877_terlambat, 'Akan Tertunda', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5878_menunda, 'Menunda', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5879_perkenalan, 'Perkenalan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5880_intervensi, 'Intervensi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5881_diri, 'Diri', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5881_diri, 'Saya sendiri', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5881_diri, 'SAYA', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5882_diri_sendiri, 'Diri sendiri', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5882_diri_sendiri, 'Diri', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5883_sulit, 'Sulit', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5883_sulit, 'Sulit Untuk Ditangani', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5883_sulit, 'Masalah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5884_penyu, 'Penyu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5885_penyu_laut, 'Penyu Laut', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5886_saling, 'Saling', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5886_saling, 'Satu sama lain', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5886_saling, 'Kebalikan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5886_saling, 'Bersama', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5887_saling, 'Saling', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5887_saling, 'Kebalikan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5888_bergantian, 'Bergantian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5888_bergantian, 'Selang seling', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5888_bergantian, 'Satu demi satu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5889_serius, 'Serius', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5890_kendo, 'Kendo', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5890_kendo, 'Anggar Jepang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5890_kendo, 'Jalan Pedang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5891_sushi, 'sushi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5892_jangka_hidup, 'Jangka hidup', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5893_umur_panjang, 'Umur Panjang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5893_umur_panjang, 'Umur panjang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5894_ulang_tahun_ketujuh_puluh_ketujuh, 'Ulang Tahun Ketujuh Puluh Ketujuh', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5895_kebahagiaan_dan_panjang_umur, 'Kebahagiaan Dan Panjang Umur', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5899_memalukan, 'Memalukan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5899_memalukan, 'Malu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5899_memalukan, 'Malu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5900_malu, 'Malu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5900_malu, 'Malu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5900_malu, 'Aib', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5901_pohon_cedar, 'pohon cedar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5902_jus_buah, 'Jus buah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5903_sup, 'Sup', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5903_sup, 'Jus', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5904_miso, 'miso', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5905_api, 'Api', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5905_api, 'Api', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5906_peradangan, 'Peradangan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5907_demi, 'Demi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5907_demi, 'Untuk', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5907_demi, 'Untuk', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5907_demi, 'Karena', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5908_akta, 'Akta', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5908_akta, 'Bertindak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5908_akta, 'Perilaku', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5909_makna, 'Makna', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5909_makna, 'Penting', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5910_beruang, 'Beruang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5911_prefektur_kumamoto, 'Prefektur Kumamoto', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5912_neraka, 'Neraka', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5913_di_penjara, 'Di Penjara', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5914_hukuman_penjara, 'Hukuman penjara', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5915_bebaskan_dari_penjara, 'Bebaskan Dari Penjara', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5916_melarikan_diri_dari_penjara, 'Melarikan Diri Dari Penjara', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5916_melarikan_diri_dari_penjara, 'pembobolan penjara', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5917_menjadi_mabuk, 'Menjadi Mabuk', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5917_menjadi_mabuk, 'Menjadi mabuk laut', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5917_menjadi_mabuk, 'Menjadi mabuk kendaraan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5918_mati_mabuk, 'Mati Mabuk', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5918_mati_mabuk, 'Benar-benar Mabuk', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5919_cuka, 'Cuka', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5920_makanan_cuka, 'Makanan Cuka', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5920_makanan_cuka, 'Makanan Acar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5921_panci_masak, 'Panci Masak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5921_panci_masak, 'Makanan daging dan sayur', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5922_danau, 'Danau', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5923_danau_yamanaka, 'Danau Yamanaka', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5923_danau_yamanaka, 'Danau Yamanaka', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5924_perunggu, 'Perunggu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5925_tambang_tembaga, 'Tambang Tembaga', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5926_patung_tembaga, 'Patung Tembaga', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5926_patung_tembaga, 'Patung Perunggu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5928_minyak, 'Minyak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5929_kurangnya_perhatian, 'Kurangnya perhatian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5929_kurangnya_perhatian, 'Turunkan Penjagaan Anda', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5930_ladang_minyak, 'Ladang Minyak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5931_minyak_mentah, 'Minyak mentah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5932_mengisi_bahan_bakar, 'Mengisi bahan bakar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5933_shoyu, 'Shoyu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5933_shoyu, 'Kecap', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5933_shoyu, 'Shouyu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6580_kenaikan, 'Kenaikan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6580_kenaikan, 'Bangun Dari Tempat Tidur', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6823_air_mata, 'Air mata', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6823_air_mata, 'Merobek', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6823_air_mata, 'Titik air mata', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7555_pedang, 'Pedang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7555_pedang, 'Pedang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7555_pedang, 'Pedang Bermata Dua', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7589_agar_bersemangat_tinggi, 'Agar Bersemangat Tinggi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7589_agar_bersemangat_tinggi, 'Menjadi Bersemangat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7662_berharga, 'Berharga', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7662_berharga, 'Berharga', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7776_menjadi_gelap, 'Menjadi Gelap', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7776_menjadi_gelap, 'Untuk Mengakhiri', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7837_konter_rumah, 'Konter Rumah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7837_konter_rumah, 'Konter Untuk Rumah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7837_konter_rumah, 'Konter Untuk Bangunan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8688_beruang_kutub, 'Beruang Kutub', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8726_minyak, 'Minyak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8726_minyak, 'Minyak bumi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8726_minyak, 'Minyak tanah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8868_untuk_dipahami, 'Untuk dipahami', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8868_untuk_dipahami, 'Untuk Memahami', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8868_untuk_dipahami, 'Untuk Memikat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8917_untuk_mengobrol, 'Untuk Mengobrol', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8917_untuk_mengobrol, 'Untuk Berbicara', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8977_jahitan_dalam, 'jahitan dalam', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8977_jahitan_dalam, 'Kaki Bagian Dalam', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9002_kerabat, 'Kerabat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9002_kerabat, 'Anggota Keluarga', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9002_kerabat, 'Kerabat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9059_untuk_mempertimbangkan_sesuatu, 'Untuk Mempertimbangkan Sesuatu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9059_untuk_mempertimbangkan_sesuatu, 'Untuk Menjadi Terang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9160_selfie, 'Selfie', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9267_cuaca_hujan, 'Cuaca Hujan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9309_amatir, 'Amatir', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9309_amatir, 'Pemula', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9387_segera, 'Segera', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9387_segera, 'Langsung', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9387_segera, 'Secara langsung', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9403_untuk_menghancurkan, 'Untuk Menghancurkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9403_untuk_menghancurkan, 'Untuk Labu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9403_untuk_menghancurkan, 'Untuk Merusak Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9441_menjadi_menguntungkan, 'Menjadi Menguntungkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9441_menjadi_menguntungkan, 'Untuk Menghasilkan Untung', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9441_menjadi_menguntungkan, 'Untuk Menghasilkan Uang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9443_beberapa, 'Beberapa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9443_beberapa, 'Sedikit', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9443_beberapa, 'Hanya', false, true);

  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3207_untuk_menghitung, 'さんていする', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4860_kantor_perdana_menteri, 'そうりふ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5668_gurun, 'さばく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5669_tidak_jelas, 'ばくぜん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5725_untuk_terluka, 'きずつく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5750_bangsawan, 'きぞく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5838_dengan_pikiran_lajang, 'ひとすじ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5840_untuk_memberitakan, 'せんげんする', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5841_untuk_menumpuk, 'もりあげる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5842_pengkhianat, 'うらぎりもの', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5843_bermacam_macam, 'もろもろ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5844_rambut_dikepang, 'みつあみ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5847_untuk_menyelesaikannya, 'おさまる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5848_menjadi_yakin, 'なっとく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5849_bentuk_negatif, 'ひていけい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5850_untuk_menolak, 'ひていする', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5851_untuk_menghormati, 'そんけいする', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5852_bahasa_jepang_yang_terhormat, 'そんけいご', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5853_kehidupan, 'くらし', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5854_homonim, 'どうおんいぎご', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5855_hak_cipta, 'ちょさくけん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5856_panas_dan_lembab, 'むしあつい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5857_untuk_mengulangi, 'むしかえす', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5858_untuk_berpura_pura, 'よそおう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5859_terlambat, 'おくれる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5860_terlambat, 'ちこく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5861_menunda, 'ちえん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5862_patung, 'ちょうこく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5863_untuk_mengukur, 'はかる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5864_dugaan, 'すいそく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5865_ramalan, 'よそく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5866_pengamatan, 'かんそく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5867_merobek, 'やぶる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5868_pengrusakan, 'はかい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5869_kecelakaan_kapal, 'はせん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5870_kebangkrutan, 'はさん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5871_pedesaan, 'いなか', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5872_barak, 'へいしゃ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5873_gedung_kantor_pemerintah, 'ちょうしゃ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5874_kuliah, 'こうえん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5875_pengajar, 'こうし', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5876_kuliah, 'こうぎ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5877_terlambat, 'とどこおる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5878_menunda, 'ちたい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5879_perkenalan, 'しょうかい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5880_intervensi, 'かいにゅう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5881_diri, 'おのれ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5882_diri_sendiri, 'じこ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5883_sulit, 'やっかい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5884_penyu, 'かめ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5885_penyu_laut, 'うみがめ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5886_saling, 'たがい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5887_saling, 'そうご', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5888_bergantian, 'こうごに', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5889_serius, 'しんけん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5890_kendo, 'けんどう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5891_sushi, 'すし', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5892_jangka_hidup, 'じゅみょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5893_umur_panjang, 'ちょうじゅ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5894_ulang_tahun_ketujuh_puluh_ketujuh, 'きじゅ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5895_kebahagiaan_dan_panjang_umur, 'ふくじゅ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5899_memalukan, 'はずかしい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5900_malu, 'はじ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5901_pohon_cedar, 'すぎ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5902_jus_buah, 'かじゅう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5903_sup, 'しる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5904_miso, 'みそ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5905_api, 'ほのお', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5906_peradangan, 'えんしょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5907_demi, 'ために', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5908_akta, 'こうい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5909_makna, 'ゆうい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5910_beruang, 'くま', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5911_prefektur_kumamoto, 'くまもとけん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5912_neraka, 'じごく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5913_di_penjara, 'ごくない', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5914_hukuman_penjara, 'にゅうごく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5915_bebaskan_dari_penjara, 'しゅつごく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5916_melarikan_diri_dari_penjara, 'だつごく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5917_menjadi_mabuk, 'よう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5918_mati_mabuk, 'でいすい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5919_cuka, 'す', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5920_makanan_cuka, 'すのもの', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5921_panci_masak, 'なべ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5922_danau, 'みずうみ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5923_danau_yamanaka, 'やまなかこ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5924_perunggu, 'せいどう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5925_tambang_tembaga, 'どうざん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5926_patung_tembaga, 'どうぞう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5928_minyak, 'あぶら', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5929_kurangnya_perhatian, 'ゆだん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5930_ladang_minyak, 'ゆでん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5931_minyak_mentah, 'げんゆ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5932_mengisi_bahan_bakar, 'きゅうゆ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5933_shoyu, 'しょうゆ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6580_kenaikan, 'きしょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6823_air_mata, 'なみだ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7555_pedang, 'けん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7589_agar_bersemangat_tinggi, 'いさむ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7662_berharga, 'きちょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7776_menjadi_gelap, 'くれる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7837_konter_rumah, 'けん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8688_beruang_kutub, 'しろくま', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8726_minyak, 'せきゆ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8868_untuk_dipahami, 'とらえる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8917_untuk_mengobrol, 'しゃべる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8977_jahitan_dalam, 'またした', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9002_kerabat, 'しんせき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9059_untuk_mempertimbangkan_sesuatu, 'かんがみる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9160_selfie, 'じどり', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9267_cuaca_hujan, 'うてん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9309_amatir, 'しろうと', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9387_segera, 'ただちに', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9403_untuk_menghancurkan, 'つぶす', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9441_menjadi_menguntungkan, 'もうかる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9443_beberapa, 'わずか', NULL, true, true);

  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3207_untuk_menghitung, '今日の入場人数を今すぐ算定してもらってもいいですか？', 'Saat ini, bisakah Anda menghitung jumlah orang yang datang hari ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3207_untuk_menghitung, '母は毎月の家のお金の出入りを算定することが上手です。', 'Ibu saya pandai menghitung uang keluar masuk rumah setiap bulannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3207_untuk_menghitung, '花火大会の時のかき氷と風船の売り上げを算定しました。', 'Kami menghitung penjualan es serut dan balon hasil pertunjukan kembang api.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4860_kantor_perdana_menteri, '総理府の電話番号を知っていますか？', 'Tahukah Anda nomor telepon kantor perdana menteri?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4860_kantor_perdana_menteri, '総理府次長がお前のことをさがしていたぞ。', 'Wakil Direktur Jenderal Kantor Perdana Menteri sedang mencari Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4860_kantor_perdana_menteri, '彼女のことについては、総理府で働いているという以外には何も知らなかった。', 'Saya tidak tahu apa-apa tentang dia kecuali dia bekerja di kantor perdana menteri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5668_gurun, '私は砂漠探索の経験が豊富です。', 'Saya memiliki banyak pengalaman dalam menjelajahi gurun pasir.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5669_tidak_jelas, '漠然とした不安を感じながら、私は川の流れを見詰めていました。', 'Saat saya melihat aliran sungai, samar-samar saya merasakan perasaan cemas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5725_untuk_terluka, 'おばちゃんって呼ばれる年齢かなあ。傷つくなあ。', 'Bukankah aku terlalu muda untuk disebut wanita paruh baya? saya terluka.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5750_bangsawan, 'その国では、貴族たちが政治を左右していた。', 'Di negara itu, para bangsawan mengendalikan politik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5750_bangsawan, '俺が貴族の血を引いているって言ったら、みんなビックリしてたよ。', 'Semua orang kaget saat kukatakan pada mereka aku punya darah bangsawan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5750_bangsawan, 'ああ、もし私が貴族の家柄に生まれていたら、彼女と話をすることも可能だったかもしれないのに。', 'Ah, andai saja aku terlahir di keluarga bangsawan, aku mungkin bisa berbicara dengannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5750_bangsawan, '自由にいろんなことができる独身者の生活って、まるで貴族みたいでしょ？だから「独身貴族」って言われるんだよ。', 'Seseorang yang bisa melakukan apapun yang mereka inginkan pada dasarnya hidup seperti bangsawan, bukan? Itu sebabnya kami menyebut mereka "bangsawan tunggal".');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5838_dengan_pikiran_lajang, 'うちの長男は野球一筋なのよ。女っ気も無くてさ。', 'Putra sulung kami tidak melakukan apa pun selain bermain bisbol. Dia juga tidak punya pacar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5840_untuk_memberitakan, 'あの時、日本政府は非常事態を宣言するべきだったと思わないかい。', 'Tidakkah menurut Anda pemerintah Jepang seharusnya mengumumkan keadaan darurat pada saat itu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5841_untuk_menumpuk, '俺の友達はメチャクチャ面白くて、パーティーを盛り上げるのが得意なんだよ。', 'Teman saya sangat menarik dan dia hebat dalam meramaikan pesta.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5842_pengkhianat, '彼は裏切り者なんかじゃないよ。ただ、生まれつきちょっととぼけているだけさ。', 'Dia bukan pengkhianat. Secara alami dia agak lambat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5842_pengkhianat, '奴らは裏切り者を殺すのにこの施設を利用している。', 'Mereka menggunakan fasilitas ini untuk membunuh pengkhianat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5843_bermacam_macam, '諸々の理由がありまして、しばらく一時的に店を閉めることにしました。', 'Kami memutuskan untuk menutup sementara toko kami karena berbagai alasan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5844_rambut_dikepang, 'おいおい、頼むよ。明らかにお前たちの相性全然よくなかっただろ！絶対にあの三つ編みの女に電話なんてしない方がいいって！', 'Oh ayolah, itu sangat jelas! Tidak ada chemistry di antara kalian berdua! Anda pastinya tidak boleh memanggil gadis dengan rambut dikepang itu!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5847_untuk_menyelesaikannya, '金を払うだけで、彼らが納まるとは思えないけどな。', 'Saya rasa mereka tidak akan puas hanya dengan uang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5848_menjadi_yakin, '彼の意見には納得だね。', 'Saya yakin dengan pendapatnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5848_menjadi_yakin, 'それは納得できない！', 'Itu yang saya tidak mengerti!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5848_menjadi_yakin, 'どうせお前は娘を金ずくで納得させたんだろう？', 'Anda membuat putri saya setuju menggunakan uang, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5849_bentuk_negatif, 'この文章を否定形にすることができますか。', 'Bisakah Anda mengubah kalimat ini menjadi kalimat negatif?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5850_untuk_menolak, '私は納豆がご飯に合うって説は否定しますね。', 'Saya menyangkal teori bahwa natto cocok dengan nasi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5851_untuk_menghormati, '尊敬する人はいますか？', 'Apakah Anda memiliki seseorang yang Anda hormati?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5852_bahasa_jepang_yang_terhormat, 'よく尊敬語と謙譲語がゴチャゴチャになってしまいます。', 'Saya sering mencampuradukkan bahasa Jepang kehormatan dengan bahasa Jepang yang rendah hati.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5853_kehidupan, 'テクノロジーは人々の暮らしを大きく変えました。', 'Teknologi telah banyak mengubah kehidupan masyarakat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5853_kehidupan, '日々の暮らしに感謝することを忘れないようにしています。', 'Aku berusaha untuk tidak lupa mensyukuri kehidupan sehari-hari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5853_kehidupan, '田舎暮らしは退屈だよ。でもさ、都会での暮らしは便利だけど、ストレスも多いよね？	', 'Kehidupan pedesaan membosankan. Lagi pula, kehidupan kota mungkin nyaman, tapi juga menimbulkan banyak stres, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5854_homonim, '同音異義語のテストで０点を取って、恥をかいてしまいました。', 'Saya malu ketika mendapat nilai nol pada tes homofon.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5854_homonim, '日本語には、同音異義語はいくつありますか？', 'Berapa banyak homofon dalam bahasa Jepang?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5854_homonim, '同音異義語に関するユーチューブビデオを作ったので、よかったら見てみてください。', 'Saya membuat video YouTube tentang homonim, jadi silakan lihat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5855_hak_cipta, '著作権の対象となるかどうかに関わらず、他人の作品は使用しないでください。', 'Saya tidak ingin kalian menggunakan karya orang lain terlepas dari apakah karya tersebut memiliki hak cipta atau tidak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5856_panas_dan_lembab, '今年の夏は絶対去年よりも蒸し暑いよね。', 'Musim panas kali ini jelas lebih lembap dibandingkan tahun lalu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5857_untuk_mengulangi, 'またかよ。お前はすぐ昔の話を蒸し返すよな。やってられないわ。', 'Ini dia lagi. Anda selalu mengungkit masalah lama. Aku tidak bisa berurusan denganmu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5857_untuk_mengulangi, 'パサパサになったギョーザも、少量の水とお酢を加えて蒸し返すと、またふっくらとしたギョーザになるんです。', 'Bahkan gyoza yang sudah dikeringkan pun bisa menjadi lembut dan mengembang kembali jika Anda mengukusnya kembali dengan sedikit air dan cuka.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5857_untuk_mengulangi, '終わったはずのことを、わざわざ蒸し返す必要はないっていうけど、それはその時その人が納得しないまま終わっちゃったってことでしょ？', 'Mereka bilang tidak perlu mengungkit sesuatu yang sudah berakhir, tapi bukankah itu berarti semuanya sudah berakhir tanpa orang tersebut benar-benar baik-baik saja?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5858_untuk_berpura_pura, '予想していた昇進が無かったが、彼は平気を装って昇進した社員たちにおめでとうと言った。', 'Meskipun dia tidak mendapatkan promosi yang dia harapkan, dia tetap memasang wajah baik dan mengucapkan selamat kepada orang-orang yang mendapatkannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5858_untuk_berpura_pura, '腹立つ感情を隠しつつ、彼女は冷静を装って言葉を選んだ。', 'Sambil menyembunyikan perasaan marahnya, dia berpura-pura tenang dan memilih kata-katanya dengan hati-hati.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5859_terlambat, 'もし飛行機が遅れたら、補償金のようなものは支払われたりするんでしょうか。', 'Jika penerbangan tertunda, bisakah saya mendapatkan kompensasi?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5860_terlambat, '遅刻の理由は何ですか？', 'Apa alasanmu terlambat?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5860_terlambat, 'やばいっ、遅刻する！', 'Uh-oh, aku terlambat!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5860_terlambat, '三日連続で遅刻してしまいました。', 'Saya terlambat tiga hari berturut-turut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5860_terlambat, '早くしないと、また遅刻だよ！遅刻は時間泥棒なんだよ。', 'Cepatlah, atau kamu akan terlambat lagi! Terlambat adalah mencuri waktu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5861_menunda, 'バスの大幅な遅延により会議に遅れてしまった。', 'Busnya tertunda lama dan saya terlambat menghadiri pertemuan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5862_patung, '彫刻を落として、真っ二つに割ってしまいました。', 'Saya menjatuhkan patung itu dan pecah menjadi dua.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5863_untuk_mengukur, 'その看護師さんは、血圧を測るのが上手です。', 'Perawat pandai mengukur tekanan darah orang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5864_dugaan, '私の推測では、彼は宝くじが当たって、バハマに引っ越しています。', 'Dugaan saya adalah dia memenangkan lotre dan pindah ke Bahama.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5864_dugaan, 'おそらく皆さんも、大なり小なり似たような推測をされていると思います。', 'Saya membayangkan Anda semua mungkin membuat kesimpulan serupa pada tingkat yang lebih besar atau lebih kecil.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5864_dugaan, 'あなたは日本は今後どうなるとお考えでしょうか。推測を交えてで結構ですので、お答えください。　', 'Menurut Anda bagaimana Jepang akan berubah di masa depan? Silakan memasukkan spekulasi dalam jawaban Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5865_ramalan, '科学者たちは、大地震の予測に失敗した。', 'Para ilmuwan gagal memprediksi gempa besar tersebut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5865_ramalan, '何度もブログ記事で書いた通り、私たちはこの事を以前から予測していました。', 'Seperti yang telah kami tulis di banyak postingan blog, kami telah memperkirakan hal ini selama beberapa waktu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5865_ramalan, '株価の正確な未来予測は不可能です。そんなことができるなら、彼らはセールスではなく自分で資産運用をしているはずです。', 'Prediksi harga saham yang akurat tidak mungkin dilakukan. Jika memungkinkan, orang-orang ini akan mengelola asetnya sendiri, alih-alih bekerja di bagian penjualan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5866_pengamatan, '南極観測隊のメンバーになるにはどうすればいいですか。', 'Bagaimana saya bisa menjadi anggota kelompok eksplorasi Antartika?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5867_merobek, 'うちのワンコがクリスマスプレゼントの包装をビリビリ破っているビデオを撮ったのよ。', 'Kami mengambil video anak anjing kami merobek hadiah Natal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5868_pengrusakan, '兎小屋は火事によって破壊されました。', 'Kandang kelinci hancur dilalap api.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5869_kecelakaan_kapal, '江戸時代の有名な刀を載せた船は、嵐によって破船してしまいました。', 'Kapal yang membawa pedang terkenal pada zaman Edo terdampar di tengah badai.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5870_kebangkrutan, '彼の祖父は江戸時代の破産した百姓だという噂だ。', 'Dikabarkan bahwa kakeknya adalah seorang petani yang bangkrut pada zaman Edo.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5871_pedesaan, '田舎道で死にかけのイタチを見ました。', 'Saya melihat musang sekarat di jalan desa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5872_barak, 'その兵舎には異臭が漂っており、息をするのもやっとだった。', 'Barak dipenuhi dengan bau busuk yang menyengat sehingga saya hampir tidak bisa bernapas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5873_gedung_kantor_pemerintah, '庁舎に雷が落ちたみたいだよ。', 'Saya dengar gedung kantor pemerintah disambar petir.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5874_kuliah, 'その講師、講演会場にリムジンで登場したんだよ。', 'Dosen datang ke ruang kuliah dengan limusin.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5875_pengajar, 'その大学の講師としての資格を得ました。', 'Saya memenuhi syarat sebagai dosen di universitas tersebut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5876_kuliah, '講義の頭に、教授は私達がナイフにニックネームを付けているかどうかを尋ねました。', 'Di awal perkuliahan, profesor kami menanyakan apakah kami mempunyai nama panggilan untuk pisau kami.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5877_terlambat, '支払いが滞っている理由は何ですか。', 'Apa alasan keterlambatan pembayaran?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5877_terlambat, '授業料の支払いが滞っているって言われたんですが、ちゃんと払ってますよ。', 'Saya diberitahu bahwa biaya sekolah saya telah jatuh tempo, namun saya telah membayarnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5877_terlambat, '家主が六ヶ月間家賃が滞っている男の家に出向くと、男は家の中で死んでいた。', 'Pemilik rumah mengunjungi seorang pria yang terlambat membayar sewa selama enam bulan dan menemukannya tewas di dalam rumah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5878_menunda, 'その動画を遅滞なく削除せよ。', 'Hapus video tanpa penundaan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5879_perkenalan, '「こんにちは。サーモンいますか？妹なんですけど。」「わぁ、イクラじゃない！！！」「わぁ、紹介してよ！」「こちらが、フグ。（フグを指さしながら）」「初めまして。」「鰐蟹とキンニクマは知ってるわよね！」「やあ、イクラちゃん。久しぶり。」', 'Salmon-Roe: "Hai, apakah Salmon ada di sini? Saya saudara perempuannya." Salmon: "Ya Tuhan, Salmon-Roe!" Fugu: "Oh, perkenalkan kami!" Ikan Salmon: "Ini Fugu." (Menunjuk padanya.) Salmon-Roe: "Senang bertemu denganmu!" Salmon: "Dan kamu kenal Crabigator dan Kinnikuma!" Crabigator & Kinnikuma: "Hai Salmon-Roe. Lama sekali, tidak bertemu."');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5880_intervensi, '警察の介入により、事態は一層複雑化した。', 'Intervensi polisi membuat situasi semakin rumit.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5881_diri, '俺は、みんな死ぬ前に己の墓は己で建てるべきだと思うけどね。', 'Saya pikir orang harus membangun kuburannya sendiri sebelum mereka mati.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5882_diri_sendiri, '彼は、「俺様が一番好きな歌手は俺様自身だよ」と自己満足の笑みを浮かべながら豪語していた。', 'Dia sangat bangga pada dirinya sendiri dan berkata, "Saya adalah penyanyi favorit saya," dengan senyuman yang sangat puas diri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5883_sulit, 'ビエットの顔に落書きなんてしたら、後々厄介なことになるよ。', 'Jika Anda menggambar wajah Viet, Anda sedang mencari masalah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5884_penyu, 'なんかその亀に親近感を感じるんだよな。', 'Saya merasakan ketertarikan dengan kura-kura karena suatu alasan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5885_penyu_laut, 'その種の海亀は、絶滅の危機にあります。', 'Penyu jenis ini terancam punah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5886_saling, 'あの二人は、「どうぞお座りください」とお互いに席の譲り合いをしたんだ。', 'Kedua orang itu berkata, "Sini, duduklah saya," satu sama lain.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5887_saling, '相互リンクしてもらえませんか。', 'Bisakah Anda menjalin hubungan timbal balik dengan saya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5888_bergantian, 'ページを交互に読んでいきましょう。', 'Mari bergiliran membaca halaman.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5888_bergantian, 'コントローラーが一つしかないので、交互にプレイするよう言いました。', 'Karena pengontrolnya hanya satu, saya suruh mereka bermain bergantian.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5888_bergantian, '彼女は二種類の味のアイスクリームを交互に舐めた。', 'Dia bergantian menjilati dua rasa es krim yang berbeda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5888_bergantian, 'このボタンを押すと、二つのプログラムが交互に実行されます。', 'Saat Anda menekan tombol ini, kedua program dijalankan secara bergantian.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5889_serius, '売上げを損ねずに値上げする方法を真剣に考えているんです。', 'Saya serius memikirkan cara menaikkan harga tanpa kehilangan penjualan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5890_kendo, 'コウイチには大きな目標がある。剣道で世界一になりたいんだ。', 'Koichi memiliki cita-cita yang tinggi. Dia ingin menjadi yang terbaik di dunia dalam kendo.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5891_sushi, '近所にお寿司屋さんがあるんだけど、すごく旨いちらし寿司をたったの10ドルで出しているんだよ。これ以上のものはないね。', 'Ada restoran sushi di lingkungan saya yang menyajikan Chirashi-zushi enak hanya dengan $10. Sulit untuk dikalahkan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5892_jangka_hidup, '携帯の電池の寿命が短くなってきてるんだけど。', 'Umur baterai ponsel saya semakin pendek.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5893_umur_panjang, '婆ちゃんにいつも、「バナナを食べることは長寿に繋がる」と言われるんだよね。', 'Nenek saya selalu memberi tahu saya bahwa makan pisang bisa panjang umur.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5894_ulang_tahun_ketujuh_puluh_ketujuh, 'バイトのみんなで、店長の喜寿をコンビニでお祝いする予定なんだよ。', 'Semua pekerja paruh waktu akan merayakan ulang tahun pemiliknya yang ke 77 di toko serba ada miliknya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5895_kebahagiaan_dan_panjang_umur, '折角の福寿のお祝いだったのに、途中で酔って眠ってしまった。', 'Meskipun ini adalah kesempatan penting untuk merayakan kebahagiaan dan umur panjang, saya mabuk hingga tertidur di tengah-tengahnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5895_kebahagiaan_dan_panjang_umur, '福寿と書かれた年賀状を受け取りました。', 'Saya menerima kartu ucapan Tahun Baru dengan tulisan kebahagiaan dan umur panjang di dalamnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5895_kebahagiaan_dan_panjang_umur, 'あそこの「福寿」って名前の焼肉屋、結構美味しいらしいよ。', 'Kudengar restoran yakiniku di sana, bernama "Fukuju", cukup enak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5899_memalukan, 'こんなことを言うのは恥ずかしいんですが、私は安物買いの銭失いみたいなところがあるんですよね。', 'Saya merasa malu untuk mengatakan ini, tapi saya cenderung membuang-buang uang untuk barang-barang murah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5900_malu, 'あいつ、俺にみんなの前で恥をかかされたって思ってるみたいでさ。', 'Dia pikir aku mempermalukannya di depan semua orang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5901_pohon_cedar, 'うちのお店では、国産杉を使った家具をお手頃なお値段で提供しております。', 'Kami menawarkan furnitur kayu cedar Jepang dengan harga yang wajar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5902_jus_buah, '俺が果汁百パーセントのオレンジジュースをストローですすっていると、誰かが俺の肩をトントンと叩いた。', 'Saat aku sedang menyedot jus jeruk 100% melalui sedotan, seseorang menepuk bahuku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5903_sup, '熱々の豚汁をもらえますか。', 'Bisakah saya minta sup miso babi rebus?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5904_miso, '味噌と醤油は和食には欠かせません。', 'Miso dan kecap sangat penting untuk hidangan ala Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5905_api, '山火事の炎は、強風にあおられ、さらに大きくなった。', 'Kobaran api kebakaran hutan semakin membesar akibat angin kencang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5905_api, 'たき火の炎を見つめていると、色々なことを思い出します。', 'Saat aku menatap nyala api unggun, aku teringat banyak hal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5905_api, 'ある超能力者が、ホワイトハウスが一時間もしないうちに炎に飲み込まれてしまう予知夢を見たと噂になっています。', 'Ada rumor bahwa seorang paranormal mendapat penglihatan bahwa api melahap Gedung Putih dalam waktu kurang dari satu jam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5906_peradangan, '筋肉の炎症には、ノンステロイドの痛み止めを処方しておきますね。', 'Saya akan meresepkan beberapa obat pereda nyeri nonsteroid untuk peradangan otot Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5907_demi, 'あの人、ラーメンだけの為に日本まで行ったらしいよ。', 'Rupanya, orang itu pergi jauh-jauh ke Jepang hanya untuk makan ramen.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5907_demi, '「君の為に言ってるんだよ！」が一番信用できないセリフだったりすると思わない？', 'Tidakkah Anda berpikir, "Saya mengatakan ini demi kebaikan Anda sendiri!" terkadang merupakan kalimat yang paling tidak dapat dipercaya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5907_demi, 'モテる為にギターと筋トレを始めたのに、結局いちばん話しかけてくるのはおじさんだ。', 'Aku mulai bermain gitar dan berolahraga untuk mendapatkan cewek, tapi ternyata orang yang paling banyak ngobrol denganku adalah pria paruh baya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5907_demi, '今日は夜勤の為に少し寝ておきたかったが、電車の音がうるさすぎた為、結局あまり眠れなかった。', 'Aku ingin tidur sebentar sebelum shift malam hari ini, tapi pada akhirnya aku tidak bisa tidur banyak karena keretanya terlalu berisik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5908_akta, 'それは裏切り行為ですよ。', 'Itu adalah tindakan pengkhianatan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5908_akta, '頭突きは危険な行為ですよ。', 'Menandukkan kepala adalah perilaku yang berbahaya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5908_akta, '私には彼の行為は理解できません。', 'Saya tidak mengerti tindakannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5908_akta, '違法行為は厳しく罰せられます。', 'Aktivitas ilegal akan dihukum berat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5909_makna, '卒論のための研究で、統計学的に有意な値を導けなかったんです。', 'Dalam penelitian untuk tesis kelulusan saya, saya tidak dapat memperoleh hasil yang signifikan secara statistik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5910_beruang, 'ありえない！今温泉に浸かっている熊を見たんだけど！', 'Mustahil! Saya baru saja melihat beruang berendam di sumber air panas!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5911_prefektur_kumamoto, '夜行バスは、熊本県で発生した事故のため一時不通になった。', 'Layanan bus malam dihentikan sementara karena kecelakaan di prefektur Kumamoto.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5912_neraka, '死後地獄に堕ちる事を願って、ありとあらゆる拷問について研究しています。', 'Saya mempelajari setiap jenis penyiksaan dengan harapan bisa hidup di Neraka setelah saya mati.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5913_di_penjara, 'あなたの獄内での話、最後はどうなるの？', 'Bagaimana akhir cerita Anda tentang berada di penjara?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5914_hukuman_penjara, '初めて入獄した時、何故か安心感を得たんですよね。', 'Ketika saya dipenjara untuk pertama kalinya, entah kenapa saya merasa aman.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5915_bebaskan_dari_penjara, '出獄した日に万引きしてまた警察に逮捕されました。', 'Pada hari saya keluar dari penjara, saya ditangkap lagi oleh polisi karena mengutil.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5915_bebaskan_dari_penjara, '今日の夜は、ビエト兄貴の出獄祝いにタイの尾頭付きが用意されてるみたいだぜ。', 'Rupanya ikan air tawar berkepala dan berekor sedang dipersiapkan malam ini untuk merayakan pembebasan kakak laki-laki Viet dari penjara.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5915_bebaskan_dari_penjara, 'そして、出獄の日が近づくにつれて、憂鬱になって、何故か危機感を感じたんです。', 'Kemudian, ketika hari pembebasan saya dari penjara semakin dekat, saya menjadi depresi dan karena alasan tertentu saya merasakan malapetaka yang akan datang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5916_melarikan_diri_dari_penjara, '彼の母親は彼に脱獄を強要した。', 'Ibunya memaksanya keluar dari penjara.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5917_menjadi_mabuk, 'みんな船に酔ってしまい、そこら中に吐き散らかしていました。', 'Semua orang mabuk laut dan muntah di seluruh kapal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5917_menjadi_mabuk, '酔ってる時に車を運転するのは絶対にダメだよ。', 'Jangan pernah mengemudi saat Anda mabuk.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5918_mati_mabuk, '完璧に泥酔していて、方向感覚を失っていました。', 'Saya benar-benar mabuk dan kehilangan arah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5919_cuka, 'お酢は常温で保管しています。', 'Saya menyimpan cuka pada suhu kamar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5920_makanan_cuka, '大人になったら酢の物が好きになりました。', 'Dia mulai menyukai makanan acar saat dia besar nanti.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5921_panci_masak, 'この鍋、どこで買ったの？', 'Dimana kamu membeli pot ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5921_panci_masak, '今夜の夕食は鍋だよ！', 'Kami akan makan hotpot untuk makan malam malam ini!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5921_panci_masak, '今度みんなで鍋パーティーしたいね！あ、でもその前に、鍋ゲットしなきゃ。', 'Kita harus mengadakan pesta hotpot dengan semua orang kapan-kapan! Oh, tapi sebelum itu, aku perlu mengambil pot.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5922_danau, '仕事に向かう前に、湖のほとりに沿って寄り道をするのが好きだ。', 'Saya suka mengambil jalan memutar kecil di sepanjang danau sebelum berangkat kerja.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5923_danau_yamanaka, '安物のカメラで撮ったにしては、山中湖の写真すごく綺麗に撮れてるじゃん。', 'Mengingat betapa murahnya kameranya, semua gambar Danau Yamanaka menjadi indah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5924_perunggu, '青銅でコウイチの像を鋳造するっていうのはどうよ。', 'Mengapa kita tidak membuat patung perunggu Koichi?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5925_tambang_tembaga, '日本では、銅山は次々に閉山していっています。', 'Di Jepang, tambang tembaga terus ditutup.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5926_patung_tembaga, '誰かが銅像を粉々に破壊しました。', 'Seseorang memecahkan patung tembaga itu menjadi beberapa bagian.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5928_minyak, 'その割りには油は綺麗だね。', 'Sebagai perbandingan, minyak ini cukup murni.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5929_kurangnya_perhatian, '油断大敵ってよく言うよね。', 'Kita sering mengatakan bahwa kurangnya perhatian adalah musuh terbesar, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5929_kurangnya_perhatian, '完全に油断してた。', 'Aku benar-benar lengah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5929_kurangnya_perhatian, 'コウイチには油断をするな。奴は中々手強い男だぞ。', 'Jangan lengah di sekitar Koichi. Dia pria yang sangat tangguh.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5930_ladang_minyak, '残念ですが、どの油田も私のものではありません。', 'Sayangnya, tidak satu pun dari ladang minyak tersebut yang merupakan milik saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5931_minyak_mentah, '原油の値段は上がり続けている。', 'Harga minyak mentah akan terus meningkat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5932_mengisi_bahan_bakar, '給油ポンプが車に届きません。', 'Pompa bahan bakar tidak mencapai mobil saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5933_shoyu, 'これは普通の醤油じゃなくて、最高の醤油だよ！', 'Ini bukan kecap biasa. Ini kecap terbaik!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6580_kenaikan, '明日は４時起床の予定です。', 'Saya berencana untuk bangun jam 4 pagi besok.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6580_kenaikan, '起床！おい、いつまで寝てるんだ！', 'Bangun! Hei, berapa lama kamu akan tidur?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6580_kenaikan, '父は毎朝、起床後すぐに、ジョギングに出かけます。', 'Ayah saya pergi jogging setelah bangun tidur setiap pagi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6580_kenaikan, '彼は起床時間になっても、まだいびきをかいています。', 'Dia masih mendengkur meski sudah waktunya bangun dari tempat tidur.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6823_air_mata, '涙が止まりません。', 'Air mata tidak mau berhenti.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6823_air_mata, 'やばい、涙が出てきた。', 'Oh tidak, aku mulai menangis.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6823_air_mata, '涙ってしょっぱいんだね。', 'Air mata itu asin, bukan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6823_air_mata, '面白過ぎて涙が出てきたよ。', 'Lucu sekali sampai aku mulai menangis.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7555_pedang, 'この剣いくらですか。', 'Berapa harga pedang ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7555_pedang, '私達は午前二時に剣で戦うことにした。', 'Kami memutuskan untuk bertarung dengan pedang pada pukul dua pagi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7555_pedang, '興味があったので、剣の歴史の講義のノートは念入りに取りました。', 'Saya tertarik dengan mata pelajaran tersebut, jadi saya membuat catatan yang cermat selama kuliah tentang sejarah pedang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7589_agar_bersemangat_tinggi, 'そんなに勇む必要はないよ。リラックスして行こうぜ。', 'Tidak perlu terlalu bersemangat. Mari santai saja dan santai saja.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7589_agar_bersemangat_tinggi, 'コウイチとビエトは、勇んでオフィスに入って来ました。', 'Koichi dan Viet datang ke kantor dengan semangat tinggi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7589_agar_bersemangat_tinggi, 'あんなに勇んでたら、あの馬は買えないなぁ。	', 'Kuda itu terlalu banyak berjingkrak sehingga saya tidak berani bertaruh.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7589_agar_bersemangat_tinggi, '「絶対に合格するぞ！」と勇む君の顔は、とてもキラキラしていました。', '"Saya pasti akan lulus!" kamu bertekad, wajahmu berseri-seri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7662_berharga, 'その本は今では非常に貴重です。', 'Buku itu sangat langka sekarang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7662_berharga, '貴重なご意見を有難うございます。', 'Terima kasih atas pendapat Anda yang berharga.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7662_berharga, 'その体験は彼にとって貴重な学びになった。', 'Pengalaman itu menjadi pelajaran berharga baginya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7662_berharga, 'これ以上、貴重な時間をムダにしたくないんです。', 'Saya tidak ingin menyia-nyiakan waktu saya yang berharga lagi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7776_menjadi_gelap, '早くしないと、日が暮れるわよ。', 'Jika Anda tidak cepat, hari akan menjadi gelap.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7837_konter_rumah, 'この人は、マンションを五軒持っています。', 'Orang ini punya lima apartemen.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8688_beruang_kutub, 'どうしてここに白熊がいるんだ？', 'Mengapa ada beruang kutub di sini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8726_minyak, '石油価格が高騰している。', 'Harga minyak meningkat tajam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8868_untuk_dipahami, 'コップの半分まで入れられた水は、人によって「半分しかない」とも「半分もある」とも捉えられます。', 'Gelas yang diisi air setengahnya dapat dianggap "setengah kosong" atau "setengah penuh", bergantung pada orangnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8868_untuk_dipahami, '日本人のクライアントの本音を捉えるのは難しい。', 'Sulit untuk memahami apa yang sebenarnya dipikirkan klien Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8868_untuk_dipahami, 'そのサーカス団は、開演してすぐに観客の心を捉えた。', 'Sesaat setelah pertunjukan dimulai, rombongan sirkus memikat hati penonton.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8917_untuk_mengobrol, 'あとでちょっと喋ろうよ。', 'Mari kita ngobrol sebentar nanti.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8917_untuk_mengobrol, '私は喋るのが苦手です。', 'Saya tidak pandai berbicara.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8917_untuk_mengobrol, 'あの妖精は本当によく喋るよね。', 'Peri itu cerewet sekali ya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8977_jahitan_dalam, 'そのジーンズって股下何センチ？', 'Berapa ukuran inseam jeans Anda dalam sentimeter?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8977_jahitan_dalam, 'あの巨人の股下は5メートルもある。', 'Jahitan dalam raksasa itu panjangnya lima meter.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8977_jahitan_dalam, '股下が短すぎるズボンは苦手です。', 'Saya bukan penggemar celana yang terlalu pendek.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9002_kerabat, '親戚はみんな日本に住んでいます。', 'Semua kerabat saya tinggal di Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9002_kerabat, 'あなたの親戚はiPadでは何のブラウザを使っていますか。', 'Browser apa yang digunakan kerabat Anda di iPad mereka?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9002_kerabat, 'なんとか飛行場で親戚を拾うことができました。', 'Saya hampir tidak berhasil menjemput kerabat saya di bandara.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9059_untuk_mempertimbangkan_sesuatu, '無料のサービスであることに鑑み、参加人数には制限を設けさせていただきます。', 'Mengingat layanan ini gratis, maka akan ada batasan jumlah peserta.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9059_untuk_mempertimbangkan_sesuatu, '世界の状況を鑑みながら、必要な変更を行っています。', 'Dengan mempertimbangkan situasi global, kami melakukan perubahan yang diperlukan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9059_untuk_mempertimbangkan_sesuatu, '健康のための食事の重要性に鑑みて、すべての国民がバランスのとれた食事ができるようなサポートをしていきます。', 'Mengingat pentingnya pola makan bagi kesehatan, kami akan mendukung seluruh masyarakat untuk mengonsumsi makanan seimbang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9160_selfie, 'スマホで自撮りした。', 'Saya mengambil selfie dengan ponsel cerdas saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9160_selfie, 'あれ、自撮り棒がない。', 'Oh, aku tidak punya tongkat selfie.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9160_selfie, '簡単に上手な自撮りができるコツをお伝えします。', 'Berikut beberapa tips cara mengambil selfie yang bagus dengan mudah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9267_cuaca_hujan, '雨天の場合、花火大会は中止です。', 'Kembang api akan dibatalkan jika cuaca hujan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9267_cuaca_hujan, 'マリンスポーツは雨天でもできますか？', 'Bisakah kita tetap melakukan olah raga laut saat cuaca hujan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9267_cuaca_hujan, '雨天の心配は今のところなさそうです。', 'Sepertinya tidak ada kekhawatiran terhadap cuaca hujan untuk saat ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9309_amatir, 'やっぱりプロと素人は違うね！', 'Profesional dan amatir memang berbeda!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9309_amatir, 'なんか今の発言、素人っぽい。', 'Apa yang baru saja Anda katakan terdengar amatiran.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9309_amatir, 'ど素人の私でも出来たんだから、大丈夫だよ。', 'Bahkan seseorang yang tidak berpengalaman sepertiku pun bisa melakukannya, jadi kamu akan baik-baik saja.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9387_segera, '直ちに医者を呼んでください。', 'Hubungi dokter segera.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9387_segera, 'これは直ちに対応が必要ですね。', 'Hal ini memerlukan tindakan segera.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9387_segera, '問題が発生したら、直ちに報告してください。', 'Jika terjadi masalah, harap segera lapor.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9403_untuk_menghancurkan, '空き缶を足で潰した。', 'Aku menghancurkan kaleng kosong itu dengan kakiku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9403_untuk_menghancurkan, '彼は虫を見て思わず潰してしまった。', 'Dia secara naluriah menghancurkan serangga itu ketika dia melihatnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9403_untuk_menghancurkan, '予定が急に空いたので、時間を潰す必要ができちゃったんです。', 'Rencanaku tiba-tiba terbuka, jadi aku harus menghabiskan waktu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9403_untuk_menghancurkan, 'チャンスを潰すようなことばかりしてると、いつか会社も潰すことになるよ！', 'Jika Anda terus merusak setiap kesempatan yang Anda dapatkan, suatu hari nanti Anda akan menenggelamkan seluruh perusahaan!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9441_menjadi_menguntungkan, 'あの会社は最近すごく儲かってるらしい。', 'Saya mendengar bahwa perusahaan berjalan dengan sangat baik akhir-akhir ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9441_menjadi_menguntungkan, '儲かるかどうかはやってみないと分からない。', 'Anda tidak akan tahu apakah itu menguntungkan sampai Anda mencobanya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9441_menjadi_menguntungkan, '新しいサービスが予想以上に儲かったんです。', 'Layanan baru ini menghasilkan lebih banyak uang dari yang diharapkan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9443_beberapa, '僅かな差で彼女が勝ちました。', 'Dia menang dengan selisih tipis.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9443_beberapa, '僅か数分で状況が一変した。', 'Hanya dalam beberapa menit, semuanya berubah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9443_beberapa, '僅かにドアが開いていて、中から声が聞こえてきました。', 'Pintunya sedikit terbuka, dan aku bisa mendengar suara-suara dari dalam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9443_beberapa, '財布の中には、もう僅か数セントしか残ってなかった。', 'Hanya tersisa beberapa sen di dompetku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9443_beberapa, 'そんなことが出来る人は、ごくごく僅かですよ。', 'Hanya segelintir orang yang bisa melakukan hal seperti itu.');

  -- 4. PREREQUISITES
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1534_gurun, id FROM items WHERE type = 'radical' AND (slug = '103' OR id = '103') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1534_gurun, id FROM items WHERE type = 'radical' AND (slug = '356' OR id = '356') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1579_lambat, id FROM items WHERE type = 'radical' AND (slug = '114' OR id = '114') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1579_lambat, id FROM items WHERE type = 'radical' AND (slug = '37' OR id = '37') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1579_lambat, id FROM items WHERE type = 'radical' AND (slug = '136' OR id = '136') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1580_mengukir, id FROM items WHERE type = 'radical' AND (slug = '169' OR id = '169') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1580_mengukir, id FROM items WHERE type = 'radical' AND (slug = '38' OR id = '38') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1581_ukuran, id FROM items WHERE type = 'radical' AND (slug = '103' OR id = '103') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1581_ukuran, id FROM items WHERE type = 'radical' AND (slug = '94' OR id = '94') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1581_ukuran, id FROM items WHERE type = 'radical' AND (slug = '128' OR id = '128') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1582_merobek, id FROM items WHERE type = 'radical' AND (slug = '54' OR id = '54') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1582_merobek, id FROM items WHERE type = 'radical' AND (slug = '195' OR id = '195') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1583_pondok, id FROM items WHERE type = 'radical' AND (slug = '433' OR id = '433') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1584_kuliah, id FROM items WHERE type = 'radical' AND (slug = '117' OR id = '117') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1584_kuliah, id FROM items WHERE type = 'radical' AND (slug = '303' OR id = '303') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1585_mandek, r_352_sabuk);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1585_mandek, id FROM items WHERE type = 'radical' AND (slug = '103' OR id = '103') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1586_memperkenalkan, id FROM items WHERE type = 'radical' AND (slug = '86' OR id = '86') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1586_memperkenalkan, id FROM items WHERE type = 'radical' AND (slug = '331' OR id = '331') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1587_terjebak_di, id FROM items WHERE type = 'radical' AND (slug = '166' OR id = '166') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1588_diri, id FROM items WHERE type = 'radical' AND (slug = '228' OR id = '228') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1589_kemalangan, id FROM items WHERE type = 'radical' AND (slug = '116' OR id = '116') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1589_kemalangan, id FROM items WHERE type = 'radical' AND (slug = '158' OR id = '158') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1590_penyu, r_353_penyu);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1591_saling, id FROM items WHERE type = 'radical' AND (slug = '1' OR id = '1') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1591_saling, r_354_senjata_rahasia);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1592_pedang, id FROM items WHERE type = 'radical' AND (slug = '8785' OR id = '8785') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1592_pedang, id FROM items WHERE type = 'radical' AND (slug = '128' OR id = '128') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1593_jangka_hidup, id FROM items WHERE type = 'radical' AND (slug = '8779' OR id = '8779') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1593_jangka_hidup, id FROM items WHERE type = 'radical' AND (slug = '74' OR id = '74') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1595_malu, id FROM items WHERE type = 'radical' AND (slug = '88' OR id = '88') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1595_malu, id FROM items WHERE type = 'radical' AND (slug = '65' OR id = '65') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1596_pohon_cedar, id FROM items WHERE type = 'radical' AND (slug = '23' OR id = '23') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1596_pohon_cedar, id FROM items WHERE type = 'radical' AND (slug = '38' OR id = '38') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1597_sup, id FROM items WHERE type = 'radical' AND (slug = '103' OR id = '103') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1597_sup, id FROM items WHERE type = 'radical' AND (slug = '15' OR id = '15') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1598_riuh, id FROM items WHERE type = 'radical' AND (slug = '16' OR id = '16') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1598_riuh, id FROM items WHERE type = 'radical' AND (slug = '259' OR id = '259') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1599_api, id FROM items WHERE type = 'radical' AND (slug = '46' OR id = '46') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1600_demi, r_355_demi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1601_beruang, id FROM items WHERE type = 'radical' AND (slug = '287' OR id = '287') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1601_beruang, id FROM items WHERE type = 'radical' AND (slug = '131' OR id = '131') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1602_penjara, id FROM items WHERE type = 'radical' AND (slug = '144' OR id = '144') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1602_penjara, id FROM items WHERE type = 'radical' AND (slug = '117' OR id = '117') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1602_penjara, id FROM items WHERE type = 'radical' AND (slug = '47' OR id = '47') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1603_mabuk, id FROM items WHERE type = 'radical' AND (slug = '182' OR id = '182') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1603_mabuk, id FROM items WHERE type = 'radical' AND (slug = '11' OR id = '11') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1603_mabuk, id FROM items WHERE type = 'radical' AND (slug = '15' OR id = '15') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1604_cuka, id FROM items WHERE type = 'radical' AND (slug = '182' OR id = '182') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1604_cuka, id FROM items WHERE type = 'radical' AND (slug = '122' OR id = '122') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1605_panci_masak, id FROM items WHERE type = 'radical' AND (slug = '118' OR id = '118') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1605_panci_masak, id FROM items WHERE type = 'radical' AND (slug = '121' OR id = '121') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1606_danau, id FROM items WHERE type = 'radical' AND (slug = '103' OR id = '103') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1606_danau, id FROM items WHERE type = 'radical' AND (slug = '69' OR id = '69') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1606_danau, id FROM items WHERE type = 'radical' AND (slug = '43' OR id = '43') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1607_tembaga, id FROM items WHERE type = 'radical' AND (slug = '118' OR id = '118') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1607_tembaga, id FROM items WHERE type = 'radical' AND (slug = '341' OR id = '341') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1609_minyak, id FROM items WHERE type = 'radical' AND (slug = '103' OR id = '103') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1609_minyak, id FROM items WHERE type = 'radical' AND (slug = '268' OR id = '268') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1610_kecap, r_8831_komandan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1610_kecap, id FROM items WHERE type = 'radical' AND (slug = '182' OR id = '182') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1897_titik_air_mata, id FROM items WHERE type = 'radical' AND (slug = '103' OR id = '103') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1897_titik_air_mata, id FROM items WHERE type = 'radical' AND (slug = '73' OR id = '73') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1897_titik_air_mata, id FROM items WHERE type = 'radical' AND (slug = '18' OR id = '18') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_2133_konter_rumah, id FROM items WHERE type = 'radical' AND (slug = '93' OR id = '93') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_2133_konter_rumah, id FROM items WHERE type = 'radical' AND (slug = '61' OR id = '61') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_8860_menangkap, id FROM items WHERE type = 'radical' AND (slug = '63' OR id = '63') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_8860_menangkap, id FROM items WHERE type = 'radical' AND (slug = '95' OR id = '95') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_8910_mengobrol, id FROM items WHERE type = 'radical' AND (slug = '16' OR id = '16') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_8910_mengobrol, id FROM items WHERE type = 'radical' AND (slug = '83' OR id = '83') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_8910_mengobrol, id FROM items WHERE type = 'radical' AND (slug = '23' OR id = '23') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_8992_kerabat, id FROM items WHERE type = 'radical' AND (slug = '5' OR id = '5') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_8992_kerabat, id FROM items WHERE type = 'radical' AND (slug = '194' OR id = '194') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_8992_kerabat, id FROM items WHERE type = 'radical' AND (slug = '325' OR id = '325') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_8992_kerabat, id FROM items WHERE type = 'radical' AND (slug = '35' OR id = '35') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_9394_air_liur, id FROM items WHERE type = 'radical' AND (slug = '16' OR id = '16') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_9394_air_liur, id FROM items WHERE type = 'radical' AND (slug = '9390' OR id = '9390') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_9395_menghancurkan, id FROM items WHERE type = 'radical' AND (slug = '103' OR id = '103') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_9395_menghancurkan, id FROM items WHERE type = 'radical' AND (slug = '358' OR id = '358') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3207_untuk_menghitung, id FROM items WHERE type = 'kanji' AND (slug = '762' OR id = '762') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3207_untuk_menghitung, id FROM items WHERE type = 'kanji' AND (slug = '714' OR id = '714') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4860_kantor_perdana_menteri, id FROM items WHERE type = 'kanji' AND (slug = '1131' OR id = '1131') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4860_kantor_perdana_menteri, id FROM items WHERE type = 'kanji' AND (slug = '669' OR id = '669') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4860_kantor_perdana_menteri, id FROM items WHERE type = 'kanji' AND (slug = '977' OR id = '977') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5668_gurun, id FROM items WHERE type = 'kanji' AND (slug = '1533' OR id = '1533') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5668_gurun, k_1534_gurun);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5669_tidak_jelas, k_1534_gurun);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5669_tidak_jelas, id FROM items WHERE type = 'kanji' AND (slug = '881' OR id = '881') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5725_untuk_terluka, id FROM items WHERE type = 'kanji' AND (slug = '1499' OR id = '1499') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5750_bangsawan, id FROM items WHERE type = 'kanji' AND (slug = '1547' OR id = '1547') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5750_bangsawan, id FROM items WHERE type = 'kanji' AND (slug = '830' OR id = '830') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5838_dengan_pikiran_lajang, id FROM items WHERE type = 'kanji' AND (slug = '440' OR id = '440') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5838_dengan_pikiran_lajang, id FROM items WHERE type = 'kanji' AND (slug = '1518' OR id = '1518') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5840_untuk_memberitakan, id FROM items WHERE type = 'kanji' AND (slug = '1521' OR id = '1521') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5840_untuk_memberitakan, id FROM items WHERE type = 'kanji' AND (slug = '593' OR id = '593') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5841_untuk_menumpuk, id FROM items WHERE type = 'kanji' AND (slug = '1532' OR id = '1532') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5841_untuk_menumpuk, id FROM items WHERE type = 'kanji' AND (slug = '450' OR id = '450') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5842_pengkhianat, id FROM items WHERE type = 'kanji' AND (slug = '1542' OR id = '1542') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5842_pengkhianat, id FROM items WHERE type = 'kanji' AND (slug = '502' OR id = '502') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5842_pengkhianat, id FROM items WHERE type = 'kanji' AND (slug = '690' OR id = '690') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5843_bermacam_macam, id FROM items WHERE type = 'kanji' AND (slug = '1543' OR id = '1543') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5843_bermacam_macam, id FROM items WHERE type = 'kanji' AND (slug = '856' OR id = '856') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5844_rambut_dikepang, id FROM items WHERE type = 'kanji' AND (slug = '449' OR id = '449') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5844_rambut_dikepang, id FROM items WHERE type = 'kanji' AND (slug = '1445' OR id = '1445') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5847_untuk_menyelesaikannya, id FROM items WHERE type = 'kanji' AND (slug = '1536' OR id = '1536') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5848_menjadi_yakin, id FROM items WHERE type = 'kanji' AND (slug = '1536' OR id = '1536') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5848_menjadi_yakin, id FROM items WHERE type = 'kanji' AND (slug = '1081' OR id = '1081') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5849_bentuk_negatif, id FROM items WHERE type = 'kanji' AND (slug = '1517' OR id = '1517') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5849_bentuk_negatif, id FROM items WHERE type = 'kanji' AND (slug = '714' OR id = '714') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5849_bentuk_negatif, id FROM items WHERE type = 'kanji' AND (slug = '589' OR id = '589') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5850_untuk_menolak, id FROM items WHERE type = 'kanji' AND (slug = '1517' OR id = '1517') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5850_untuk_menolak, id FROM items WHERE type = 'kanji' AND (slug = '714' OR id = '714') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5851_untuk_menghormati, id FROM items WHERE type = 'kanji' AND (slug = '1522' OR id = '1522') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5851_untuk_menghormati, id FROM items WHERE type = 'kanji' AND (slug = '1526' OR id = '1526') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5852_bahasa_jepang_yang_terhormat, id FROM items WHERE type = 'kanji' AND (slug = '1522' OR id = '1522') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5852_bahasa_jepang_yang_terhormat, id FROM items WHERE type = 'kanji' AND (slug = '1526' OR id = '1526') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5852_bahasa_jepang_yang_terhormat, id FROM items WHERE type = 'kanji' AND (slug = '764' OR id = '764') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5853_kehidupan, id FROM items WHERE type = 'kanji' AND (slug = '1527' OR id = '1527') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5854_homonim, id FROM items WHERE type = 'kanji' AND (slug = '568' OR id = '568') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5854_homonim, id FROM items WHERE type = 'kanji' AND (slug = '606' OR id = '606') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5854_homonim, id FROM items WHERE type = 'kanji' AND (slug = '1530' OR id = '1530') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5854_homonim, id FROM items WHERE type = 'kanji' AND (slug = '1154' OR id = '1154') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5854_homonim, id FROM items WHERE type = 'kanji' AND (slug = '764' OR id = '764') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5855_hak_cipta, id FROM items WHERE type = 'kanji' AND (slug = '1538' OR id = '1538') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5855_hak_cipta, id FROM items WHERE type = 'kanji' AND (slug = '584' OR id = '584') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5855_hak_cipta, id FROM items WHERE type = 'kanji' AND (slug = '1134' OR id = '1134') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5856_panas_dan_lembab, id FROM items WHERE type = 'kanji' AND (slug = '1539' OR id = '1539') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5856_panas_dan_lembab, id FROM items WHERE type = 'kanji' AND (slug = '838' OR id = '838') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5857_untuk_mengulangi, id FROM items WHERE type = 'kanji' AND (slug = '1539' OR id = '1539') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5857_untuk_mengulangi, id FROM items WHERE type = 'kanji' AND (slug = '858' OR id = '858') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5858_untuk_berpura_pura, id FROM items WHERE type = 'kanji' AND (slug = '1541' OR id = '1541') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5859_terlambat, k_1579_lambat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5860_terlambat, k_1579_lambat);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5860_terlambat, id FROM items WHERE type = 'kanji' AND (slug = '1577' OR id = '1577') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5861_menunda, k_1579_lambat);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5861_menunda, id FROM items WHERE type = 'kanji' AND (slug = '1426' OR id = '1426') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5862_patung, k_1580_mengukir);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5862_patung, id FROM items WHERE type = 'kanji' AND (slug = '1577' OR id = '1577') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5863_untuk_mengukur, k_1581_ukuran);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5864_dugaan, id FROM items WHERE type = 'kanji' AND (slug = '1565' OR id = '1565') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5864_dugaan, k_1581_ukuran);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5865_ramalan, id FROM items WHERE type = 'kanji' AND (slug = '854' OR id = '854') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5865_ramalan, k_1581_ukuran);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5866_pengamatan, id FROM items WHERE type = 'kanji' AND (slug = '1175' OR id = '1175') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5866_pengamatan, k_1581_ukuran);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5867_merobek, k_1582_merobek);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5868_pengrusakan, k_1582_merobek);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5868_pengrusakan, id FROM items WHERE type = 'kanji' AND (slug = '1389' OR id = '1389') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5869_kecelakaan_kapal, k_1582_merobek);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5869_kecelakaan_kapal, id FROM items WHERE type = 'kanji' AND (slug = '671' OR id = '671') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5870_kebangkrutan, k_1582_merobek);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5870_kebangkrutan, id FROM items WHERE type = 'kanji' AND (slug = '1109' OR id = '1109') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5871_pedesaan, id FROM items WHERE type = 'kanji' AND (slug = '490' OR id = '490') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5871_pedesaan, k_1583_pondok);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5872_barak, id FROM items WHERE type = 'kanji' AND (slug = '1000' OR id = '1000') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5872_barak, k_1583_pondok);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5873_gedung_kantor_pemerintah, id FROM items WHERE type = 'kanji' AND (slug = '1233' OR id = '1233') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5873_gedung_kantor_pemerintah, k_1583_pondok);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5874_kuliah, k_1584_kuliah);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5874_kuliah, id FROM items WHERE type = 'kanji' AND (slug = '1196' OR id = '1196') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5875_pengajar, k_1584_kuliah);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5875_pengajar, id FROM items WHERE type = 'kanji' AND (slug = '1198' OR id = '1198') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5876_kuliah, k_1584_kuliah);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5876_kuliah, id FROM items WHERE type = 'kanji' AND (slug = '1154' OR id = '1154') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5877_terlambat, k_1585_mandek);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5878_menunda, k_1579_lambat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5878_menunda, k_1585_mandek);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5879_perkenalan, k_1586_memperkenalkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5879_perkenalan, k_1587_terjebak_di);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5880_intervensi, k_1587_terjebak_di);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5880_intervensi, id FROM items WHERE type = 'kanji' AND (slug = '445' OR id = '445') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5881_diri, k_1588_diri);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5882_diri_sendiri, id FROM items WHERE type = 'kanji' AND (slug = '578' OR id = '578') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5882_diri_sendiri, k_1588_diri);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5883_sulit, k_1589_kemalangan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5883_sulit, k_1587_terjebak_di);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5884_penyu, k_1590_penyu);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5885_penyu_laut, id FROM items WHERE type = 'kanji' AND (slug = '640' OR id = '640') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5885_penyu_laut, k_1590_penyu);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5886_saling, k_1591_saling);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5887_saling, id FROM items WHERE type = 'kanji' AND (slug = '730' OR id = '730') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5887_saling, k_1591_saling);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5888_bergantian, id FROM items WHERE type = 'kanji' AND (slug = '565' OR id = '565') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5888_bergantian, k_1591_saling);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5889_serius, id FROM items WHERE type = 'kanji' AND (slug = '971' OR id = '971') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5889_serius, k_1592_pedang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5890_kendo, k_1592_pedang);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5890_kendo, id FROM items WHERE type = 'kanji' AND (slug = '700' OR id = '700') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5891_sushi, k_1593_jangka_hidup);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5891_sushi, id FROM items WHERE type = 'kanji' AND (slug = '943' OR id = '943') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5892_jangka_hidup, k_1593_jangka_hidup);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5892_jangka_hidup, id FROM items WHERE type = 'kanji' AND (slug = '789' OR id = '789') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5893_umur_panjang, id FROM items WHERE type = 'kanji' AND (slug = '632' OR id = '632') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5893_umur_panjang, k_1593_jangka_hidup);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5894_ulang_tahun_ketujuh_puluh_ketujuh, id FROM items WHERE type = 'kanji' AND (slug = '976' OR id = '976') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5894_ulang_tahun_ketujuh_puluh_ketujuh, k_1593_jangka_hidup);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5895_kebahagiaan_dan_panjang_umur, id FROM items WHERE type = 'kanji' AND (slug = '867' OR id = '867') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5895_kebahagiaan_dan_panjang_umur, k_1593_jangka_hidup);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5899_memalukan, k_1595_malu);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5900_malu, k_1595_malu);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5901_pohon_cedar, k_1596_pohon_cedar);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5902_jus_buah, id FROM items WHERE type = 'kanji' AND (slug = '1005' OR id = '1005') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5902_jus_buah, k_1597_sup);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5903_sup, k_1597_sup);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5904_miso, id FROM items WHERE type = 'kanji' AND (slug = '812' OR id = '812') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5904_miso, k_1598_riuh);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5905_api, k_1599_api);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5906_peradangan, k_1599_api);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5906_peradangan, id FROM items WHERE type = 'kanji' AND (slug = '1334' OR id = '1334') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5907_demi, k_1600_demi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5908_akta, id FROM items WHERE type = 'kanji' AND (slug = '580' OR id = '580') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5908_akta, k_1600_demi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5909_makna, id FROM items WHERE type = 'kanji' AND (slug = '615' OR id = '615') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5909_makna, id FROM items WHERE type = 'kanji' AND (slug = '811' OR id = '811') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5910_beruang, k_1601_beruang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5911_prefektur_kumamoto, k_1601_beruang);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5911_prefektur_kumamoto, id FROM items WHERE type = 'kanji' AND (slug = '487' OR id = '487') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5911_prefektur_kumamoto, id FROM items WHERE type = 'kanji' AND (slug = '731' OR id = '731') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5912_neraka, id FROM items WHERE type = 'kanji' AND (slug = '608' OR id = '608') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5912_neraka, k_1602_penjara);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5913_di_penjara, k_1602_penjara);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5913_di_penjara, id FROM items WHERE type = 'kanji' AND (slug = '500' OR id = '500') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5914_hukuman_penjara, id FROM items WHERE type = 'kanji' AND (slug = '445' OR id = '445') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5914_hukuman_penjara, k_1602_penjara);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5915_bebaskan_dari_penjara, id FROM items WHERE type = 'kanji' AND (slug = '483' OR id = '483') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5915_bebaskan_dari_penjara, k_1602_penjara);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5916_melarikan_diri_dari_penjara, id FROM items WHERE type = 'kanji' AND (slug = '1157' OR id = '1157') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5916_melarikan_diri_dari_penjara, k_1602_penjara);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5917_menjadi_mabuk, k_1603_mabuk);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5918_mati_mabuk, id FROM items WHERE type = 'kanji' AND (slug = '1456' OR id = '1456') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5918_mati_mabuk, k_1603_mabuk);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5919_cuka, k_1604_cuka);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5920_makanan_cuka, k_1604_cuka);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5920_makanan_cuka, id FROM items WHERE type = 'kanji' AND (slug = '718' OR id = '718') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5921_panci_masak, k_1605_panci_masak);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5922_danau, k_1606_danau);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5923_danau_yamanaka, id FROM items WHERE type = 'kanji' AND (slug = '455' OR id = '455') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5923_danau_yamanaka, id FROM items WHERE type = 'kanji' AND (slug = '469' OR id = '469') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5923_danau_yamanaka, k_1606_danau);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5924_perunggu, id FROM items WHERE type = 'kanji' AND (slug = '604' OR id = '604') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5924_perunggu, k_1607_tembaga);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5925_tambang_tembaga, k_1607_tembaga);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5925_tambang_tembaga, id FROM items WHERE type = 'kanji' AND (slug = '455' OR id = '455') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5926_patung_tembaga, k_1607_tembaga);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5926_patung_tembaga, id FROM items WHERE type = 'kanji' AND (slug = '890' OR id = '890') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5928_minyak, k_1609_minyak);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5929_kurangnya_perhatian, k_1609_minyak);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5929_kurangnya_perhatian, id FROM items WHERE type = 'kanji' AND (slug = '1139' OR id = '1139') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5930_ladang_minyak, k_1609_minyak);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5930_ladang_minyak, id FROM items WHERE type = 'kanji' AND (slug = '490' OR id = '490') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5931_minyak_mentah, id FROM items WHERE type = 'kanji' AND (slug = '995' OR id = '995') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5931_minyak_mentah, k_1609_minyak);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5932_mengisi_bahan_bakar, id FROM items WHERE type = 'kanji' AND (slug = '1345' OR id = '1345') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5932_mengisi_bahan_bakar, k_1609_minyak);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5933_shoyu, k_1610_kecap);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5933_shoyu, k_1609_minyak);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6580_kenaikan, id FROM items WHERE type = 'kanji' AND (slug = '740' OR id = '740') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6580_kenaikan, id FROM items WHERE type = 'kanji' AND (slug = '1810' OR id = '1810') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6823_air_mata, k_1897_titik_air_mata);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7555_pedang, k_1592_pedang);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7589_agar_bersemangat_tinggi, id FROM items WHERE type = 'kanji' AND (slug = '941' OR id = '941') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7662_berharga, id FROM items WHERE type = 'kanji' AND (slug = '1547' OR id = '1547') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7662_berharga, id FROM items WHERE type = 'kanji' AND (slug = '735' OR id = '735') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7776_menjadi_gelap, id FROM items WHERE type = 'kanji' AND (slug = '1527' OR id = '1527') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7837_konter_rumah, k_2133_konter_rumah);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8688_beruang_kutub, id FROM items WHERE type = 'kanji' AND (slug = '491' OR id = '491') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8688_beruang_kutub, k_1601_beruang);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8726_minyak, id FROM items WHERE type = 'kanji' AND (slug = '493' OR id = '493') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8726_minyak, k_1609_minyak);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8868_untuk_dipahami, k_8860_menangkap);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8917_untuk_mengobrol, k_8910_mengobrol);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8977_jahitan_dalam, id FROM items WHERE type = 'kanji' AND (slug = '8964' OR id = '8964') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8977_jahitan_dalam, id FROM items WHERE type = 'kanji' AND (slug = '451' OR id = '451') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9002_kerabat, id FROM items WHERE type = 'kanji' AND (slug = '770' OR id = '770') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_9002_kerabat, k_8992_kerabat);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9059_untuk_mempertimbangkan_sesuatu, id FROM items WHERE type = 'kanji' AND (slug = '1450' OR id = '1450') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9160_selfie, id FROM items WHERE type = 'kanji' AND (slug = '578' OR id = '578') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9160_selfie, id FROM items WHERE type = 'kanji' AND (slug = '1441' OR id = '1441') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9267_cuaca_hujan, id FROM items WHERE type = 'kanji' AND (slug = '603' OR id = '603') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9267_cuaca_hujan, id FROM items WHERE type = 'kanji' AND (slug = '473' OR id = '473') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9309_amatir, id FROM items WHERE type = 'kanji' AND (slug = '1138' OR id = '1138') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9309_amatir, id FROM items WHERE type = 'kanji' AND (slug = '444' OR id = '444') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9387_segera, id FROM items WHERE type = 'kanji' AND (slug = '630' OR id = '630') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_9403_untuk_menghancurkan, k_9395_menghancurkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9441_menjadi_menguntungkan, id FROM items WHERE type = 'kanji' AND (slug = '9393' OR id = '9393') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9443_beberapa, id FROM items WHERE type = 'kanji' AND (slug = '9388' OR id = '9388') LIMIT 1;

END $$;
