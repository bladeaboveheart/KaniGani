-- ====================================================
-- KaniGani — Seed Data Level 30 (v2, relasional)
-- Auto-generated with Indonesian Slugs
-- ====================================================

DO $$
DECLARE
  -- ============ RADICAL IDs (Level 30) ============
  r_162_satu_sisi UUID; r_328_mengawasi UUID; r_330_cangkang_penyu UUID; r_391_bajak_laut UUID; r_8771_perbukitan UUID;

  -- ============ KANJI IDs (Level 30) ============
  k_1413_menarik UUID; k_1414_mengering UUID; k_1416_pernikahan UUID; k_1417_bermain UUID; k_1418_bendera UUID; k_1419_menerangi UUID; k_1420_menyenangkan UUID; k_1421_edisi UUID; k_1422_miskin UUID; k_1423_langka UUID; k_1424_sesuai UUID; k_1425_deposito UUID; k_1426_memperpanjang UUID; k_1427_berikutnya UUID; k_1428_lihat UUID; k_1429_nostalgia UUID; k_1430_dorongan UUID; k_1432_bantal UUID; k_1433_mengambang UUID; k_1434_bocor UUID; k_1435_token UUID; k_1436_pembelian UUID; k_1437_melampauinya UUID; k_1438_menghias UUID; k_1439_riuh UUID; k_1440_kembali UUID; k_1441_foto UUID; k_1442_mencuri UUID; k_2037_lampu UUID; k_8834_bau UUID; k_8863_basah UUID; k_8965_pagar UUID; k_9335_keponakan_perempuan UUID;

  -- ============ VOCABULARY IDs (Level 30) ============
  v_3968_penyebab_utama UUID; v_4423_perdana_menteri UUID; v_5042_pendirian UUID; v_5078_harakiri UUID; v_5129_perlakuan UUID; v_5138_eksposisi UUID; v_5153_halus UUID; v_5181_emigran UUID; v_5283_untuk_diisi UUID; v_5296_daya_tarik UUID; v_5297_untuk_menyejajarkan_sesuatu UUID; v_5298_langka UUID; v_5299_kekurangan UUID; v_5300_untuk_mendinginkan_sesuatu UUID; v_5301_pernikahan UUID; v_5302_lamaran_pernikahan UUID; v_5303_bulan_madu UUID; v_5304_belum_menikah UUID; v_5308_untuk_memperpanjang_sesuatu UUID; v_5309_memperpanjang UUID; v_5310_untuk_menunda UUID; v_5311_menyenangkan UUID; v_5312_kesenangan UUID; v_5313_kecepatan_tinggi UUID; v_5314_tidak_menyenangkan UUID; v_5315_rindu UUID; v_5316_untuk_mendorong UUID; v_5317_untuk_mengambil_gambar UUID; v_5318_fotografi UUID; v_5320_untuk_mendiagnosis UUID; v_5321_bendera UUID; v_5323_bendera_nasional UUID; v_5324_latar_belakang UUID; v_5326_rehabilitasi UUID; v_5329_bantal UUID; v_5330_untuk_mengambang UUID; v_5331_ukiyo_e UUID; v_5332_mencurangi UUID; v_5333_menjadi_haus UUID; v_5334_kebocoran_air UUID; v_5335_bocor UUID; v_5336_bocor UUID; v_5338_merasa_malu UUID; v_5339_penerangan UUID; v_5340_penerbitan UUID; v_5341_hak_cipta UUID; v_5342_edisi_pertama UUID; v_5344_pencurian UUID; v_5345_plagiat UUID; v_5347_tk UUID; v_5348_tiket UUID; v_5349_sekuat_tenaga UUID; v_5350_mental UUID; v_5351_penyakit_jiwa UUID; v_5354_tata_surya UUID; v_5355_sistematis UUID; v_5356_untuk_mati UUID; v_5357_hari_berikutnya UUID; v_5358_bulan_berikutnya UUID; v_5359_pagi_berikutnya UUID; v_5360_tahun_berikutnya UUID; v_5361_tinggi UUID; v_5362_sebuah_daftar UUID; v_5363_melihat UUID; v_5364_melihat UUID; v_5368_miskin UUID; v_5369_miskin UUID; v_5370_pembelian UUID; v_5371_pembelian UUID; v_5372_berlangganan UUID; v_5373_untuk_melampauinya UUID; v_5374_melampaui_otoritas_anda UUID; v_5375_terbalik UUID; v_5376_untuk_bermain UUID; v_5377_taman_hiburan UUID; v_5378_sesuai UUID; v_5379_tidak_cocok UUID; v_5380_untuk_mendaftar UUID; v_5381_untuk_menyetor UUID; v_5382_setoran_bank UUID; v_5383_untuk_menghias UUID; v_5384_pakaian UUID; v_5385_pencahayaan_dekoratif UUID; v_5386_untuk_membuat_kebisingan UUID; v_5387_kebisingan UUID; v_5399_untuk_menyerang UUID; v_5400_beberapa_waktu_yang_lalu UUID; v_5401_birokratis UUID; v_5425_perdana_menteri UUID; v_5504_akan_digeser UUID; v_5629_untuk_menggantung_sesuatu UUID; v_5701_menjadi_takut UUID; v_5716_pemilik UUID; v_6456_untuk_dikuburkan UUID; v_7227_lampu_jalan UUID; v_7228_lampu_listrik UUID; v_7554_latar_belakang UUID; v_7659_kesenangan UUID; v_7719_menyenangkan UUID; v_7771_jadi_begitu UUID; v_7773_dorongan UUID; v_7812_beras_yang_belum_dipoles UUID; v_8685_dengan_baik UUID; v_8842_untuk_mencium UUID; v_8875_menjadi_basah UUID; v_8929_untuk_memindahkan_sesuatu_yang_dekat UUID; v_8930_untuk_menolak_sesuatu UUID; v_8934_untuk_melukai_sesuatu UUID; v_8980_pagar UUID; v_8981_pagar_besi UUID; v_8982_pagar_listrik UUID; v_9047_kita UUID; v_9080_untuk_menahan_sesuatu UUID; v_9089_ramen_tonkotsu UUID; v_9165_berbagai_sendi UUID; v_9263_untuk_mengatur_sesuatu UUID; v_9290_plat_besi UUID; v_9336_keponakan_perempuan UUID;

BEGIN

  DELETE FROM items WHERE level = 30;

  -- 1. RADICALS
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '片', 'satu-sisi', 30, 1, 'Ini terlihat seperti seorang pelayan yang berjalan ke arah Anda dengan piring di tangannya... tapi tunggu. Itu hanya setengah dari seorang pelayan. Itu adalah pelayan <radikal>satu sisi</radikal>!')
    RETURNING id INTO r_162_satu_sisi;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '監', 'mengawasi', 30, 2, 'Radikal ini sama dengan kanji. Artinya <radikal>mengawasi</radikal>.')
    RETURNING id INTO r_328_mengawasi;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '甲', 'cangkang-penyu', 30, 3, 'Penyu yang malang. Kami tidak menyukai mereka di sini. Ini adalah <radical>cangkang penyu</radikal>. Lihat cangkangnya yang hanya tersisa satu ekor? Itu satu-satunya hal yang tidak kami keluarkan dari penyu. Itu hanya cangkang yang berekor, jadi pada dasarnya itu hanyalah cangkang kura-kura.')
    RETURNING id INTO r_330_cangkang_penyu;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '冘', 'bajak-laut', 30, 4, 'Ini terlihat seperti besar (大), yang menurut saya Anda akan ingat bahwa Anda mempelajarinya dengan berpura-pura ini adalah orang besar. Namun pria besar ini mempunyai kaki yang lucu... kaki pasak. Itu membuatnya menjadi <radikal>bajak laut</radikal>. Selain itu, lengannya berada pada posisi "YARRRR".')
    RETURNING id INTO r_391_bajak_laut;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '/radicals/hills.svg', 'perbukitan', 30, 5, 'Lihat <radical>bukit</radikal> yang bergulung-gulung dengan jalan yang mengarah ke bukit lain? Itu sebabnya bukit ini radikal.')
    RETURNING id INTO r_8771_perbukitan;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_162_satu_sisi, 'Satu Sisi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_328_mengawasi, 'Mengawasi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_330_cangkang_penyu, 'Cangkang Penyu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_391_bajak_laut, 'Bajak laut', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_8771_perbukitan, 'Perbukitan', true, true);

  -- 2. KANJIS
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '魅', 'menarik', 30, 6, '<radical>iblis</radikal> di <radikal>jet</radikal> cukup <kanji>memikat</kanji>. Setan itu sendiri cukup menarik, tapi memasukkannya ke dalam jet? Itu menarik.', 'Iblis <kanji>memikat</kanji> di pesawat jet ini menginginkan satu hal dan satu hal saja. <read>Saya</reading>di (み). Daging manusia. Setan ini membutuhkan daging manusia untuk bertahan hidup jadi dia membawa jetnya ke kota untuk makan daging.')
    RETURNING id INTO k_1413_menarik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '渇', 'mengering', 30, 7, '<radikal>tsunami</radikal> menghantam <radikal>matahari</radikal>, di mana Anda berada di <radikal>penjara</radikal> dengan <radikal>sendok</radikal> mencoba menangkap sebagian sebelum <kanji>mengering</kanji>. Berada di penjara di bawah terik matahari berarti <kanji>haus</kanji> Anda sungguh luar biasa, dan sendok ini akan membantu Anda memuaskannya saat tsunami datang.', 'Cara menghilangkan <kanji>haus</kanji> ini mengingatkan Anda saat berada di <reading>ca</reading>r <reading>wa</reading>sh (かわ). Air mengalir deras ke atas Anda, dan Anda terjebak di dalam sangkar logam. Sama sekali sama dengan tempat cuci mobil, bukan?')
    RETURNING id INTO k_1414_mengering;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '婚', 'pernikahan', 30, 8, 'Anda bertemu dengan <radical>wanita</radical> dari <radical>klan</radical> lain di bawah <radical>matahari</radikal> terbit untuk mempersiapkan <kanji>pernikahan</kanji>. Klan Anda dan klannya berdiri bersama saat Anda berdua menyaksikan matahari terbit bersama.', 'Agar <kanji>pernikahan</kanji> resmi, Anda harus menunggu <reading>con</reading>dor (こん) muncul. Jika tidak muncul lagi sebelum matahari terbenam, pernikahan gagal. Anda harus mencoba lagi besok dengan wanita lain.')
    RETURNING id INTO k_1416_pernikahan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '遊', 'bermain', 30, 9, 'Pada <radical>skuter</radical> yang berjalan dalam satu <radical>arah</radical> adalah <radical>anak</radical> yang membawa <radical>senjata</radical>. Ini adalah situasi yang sangat berbahaya, namun bagi anak-anak, ini hanyalah <kanji>permainan</kanji>.', 'Semuanya <kanji>bermain</kanji> untuk <membaca>kamu</reading>mereka (ゆう), meskipun situasinya buruk, menakutkan, dan tidak baik seperti ini.')
    RETURNING id INTO k_1417_bermain;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '旗', 'bendera', 30, 10, 'Bepergian ke <radical>arah</radical> lautan, Anda mengambil <radical>pistol</radical> dan menembak <radical>kepiting</radical>, lalu menancapkan <kanji>bendera</kanji> di pantai dan mengklaimnya sebagai milik Anda. Kepiting adalah satu-satunya yang menghalangi Anda menaklukkan daerah tersebut. Sekarang setelah bendera itu berkibar di tanah, tak seorang pun dapat membantah siapa pemiliknya.', 'Untuk memastikan tidak ada yang menghapus <kanji>bendera</kanji> Anda, kuncilah bendera tersebut di salah satu pos penjaga pantai dan buang <reading>key</reading> (き). Karena tidak ada seorang pun yang memiliki kunci untuk membuka kunci bendera tersebut, tidak ada seorang pun yang dapat menghapusnya.')
    RETURNING id INTO k_1418_bendera;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '照', 'menerangi', 30, 11, '<radical>matahari</radikal> sedang <radikal>dipanggil</radikal> untuk <radikal>mendidih</radikal> bumi dengan <kanji>menerangi</kanji> itu.', 'Orang yang memanggil matahari memintanya untuk <kanji>menerangi</kanji> bumi adalah <reading>Shou</reading>gun (しょう). Secara khusus merupakan tanggung jawab Shougun untuk memastikan bumi diterangi setiap pagi.')
    RETURNING id INTO k_1419_menerangi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '快', 'menyenangkan', 30, 12, '<radikal>jiwa</radikal> dari <radikal>seseorang</radikal> memiliki <radikal>pengait</radikal> yang dapat membuat mereka <kanji>menyenangkan</kanji>. Ketika Anda melihat, mendengar, atau merasakan sesuatu yang menyenangkan, tidakkah Anda merasakan kaitan itu menekan bagian tengah tubuh Anda?', 'Jika Anda ingin merasakan perasaan <kanji>menyenangkan</kanji> ini, lihat saja <reading>kay</reading>ak (かい). Kayak adalah perahu paling menyenangkan di dunia. Rasakan perasaan menyenangkan di dada Anda hanya dengan membaca tentang kayak di mnemonik ini sekarang.')
    RETURNING id INTO k_1420_menyenangkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '版', 'edisi', 30, 13, 'Jika Anda seorang <radikal>kertas satu sisi</radikal> <radikal>anti</radikal> (seseorang yang menentang kertas satu sisi), maka Anda harus mengikat semua kertas satu sisi tersebut ke dalam sebuah <kanji>edisi</kanji>.', '<kanji>edisi</kanji> pertama yang Anda buat adalah fiksi penggemar tentang petualangan <reading>Han</reading> (はん) Solo. Anda benci betapa pendek dan sepihak ceritanya di Star Wars, dan mencoba melacak semuanya sangatlah sulit. Tapi sekarang tidak lagi!')
    RETURNING id INTO k_1421_edisi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '貧', 'miskin', 30, 14, 'Mereka yang hanya bisa makan <radical>sebagian</radikal> dari <radikal>kerang</radikal> mungkin sedikit <kanji>miskin</kanji>.', 'Dan karena mereka <kanji>miskin</kanji>, mereka mendapatkan bagian-bagian kerang ini dari <read>tempat</reading> sampah (びん). Sangat disayangkan.')
    RETURNING id INTO k_1422_miskin;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '乏', 'langka', 30, 15, 'Jika Anda mencari <radical>daun</radikal> di antara <radical>bukit</radikal> Anda akan menyadari bahwa daun tersebut <kanji>langka</kanji>. Perbukitan tidak memiliki pepohonan di sekelilingnya, sehingga tidak ada dedaunan. Daun-daunnya langka di perbukitan ini.', 'Masih mencari sehelai daun, Anda memutuskan bahwa daun tersebut terlalu <kanji>langka</kanji> untuk ditemukan di sini. Tepat sebelum Anda menyerah, Anda menemukan bola <reading>busur</reading>ling (ぼう) raksasa. Saat Anda memungutnya, pohon lain datang dengan gemuruh menuruni bukit dan menjatuhkan pohon kecil.')
    RETURNING id INTO k_1423_langka;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '適', 'sesuai', 30, 16, '<radical>skuter</radikal> dengan <radical>mohawk</radical>, itulah gaya rambut paling <kanji>cocok</kanji> yang pernah Anda pikirkan untuk skuter!', 'Anda juga menginginkan gaya rambut yang <kanji>cocok</kanji> ini untuk skuter Anda, dan untungnya Anda adalah seorang <reading>teknisi</reading> (てき), sehingga mudah bagi Anda untuk memasangnya.')
    RETURNING id INTO k_1424_sesuai;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '預', 'deposito', 30, 17, '<radical>Sebelumnya</radical>, untuk membeli <radical>geoduck</radical>, Anda harus pergi ke bank untuk <kanji>menyetor</kanji> uang secukupnya. Jika Anda tidak menyetor uang, Anda tidak akan memiliki cukup uang di akun Anda untuk membelinya! Lagipula, harganya mahal.', 'Anda pergi ke bank untuk melakukan <kanji>deposit</kanji>, dan ada seorang anak berdiri di jalan Anda bermain dengan <reading>yo</reading>-yo (よ). Anda mencoba untuk melewatinya dan dia memukul wajah Anda dengan yo-yo. Sekarang Anda bahkan tidak bisa melihat, apalagi melakukan deposit.')
    RETURNING id INTO k_1425_deposito;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '延', 'memperpanjang', 30, 18, 'Jika Anda melakukan <radical>yoga</radical> dengan <radical>benar</radical>, Anda tidak hanya akan <kanji>memperpanjang</kanji> tubuh Anda tetapi juga hidup Anda!', 'Anda dapat <kanji>memperpanjang</kanji> hidup Anda dengan teknik yoga yang benar, namun sayangnya, jika Anda berhenti melakukan yoga setelah memulai proses perpanjangan ini, hal itu akan <read>en</reading>d (えん) tiba-tiba.')
    RETURNING id INTO k_1426_memperpanjang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '翌', 'berikutnya', 30, 19, 'Setiap kali semua <radical>bulu</radical> mulai <radical>berdiri</radikal>, Anda tahu inilah waktunya untuk <kanji>keesokan</kanji> hari. Begitu hari berakhir, semua bulu mulai berdiri seperti jarum jam.', 'Menjelang <kanji>hari berikutnya</kanji> dan semua bulu berdiri, Anda bersiap untuk meminum satu liter <read>kuning telur</reading> (よく) seperti biasanya. Ya, Anda tidak salah dengar.')
    RETURNING id INTO k_1427_berikutnya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '覧', 'lihat', 30, 20, 'Seorang <radical>pelayan</radical> yang memegang <radical>senjata</radical> duduk di <radical>tanah</radical> untuk <radical>melihat</radical> apakah dia dapat menemukan sesuatu untuk <kanji>dilihat</kanji>. Pelayan itu bertugas jaga dan memiliki senjata untuk melindungi perimeter. Dia berpatroli di halaman untuk melihat jarak untuk melihat apakah ada pelanggar.', 'Anda mulai mundur, tapi kemudian Anda menyadari bahwa Anda adalah Macho Man <reading>Ran</reading>dy (らん) Savage. Randy Savage mundur tanpa perlawanan! Maksudku, <kanji>lihat</kanji> orang ini – pria pelayan ini. Singkirkan senjatanya dan dia tidak terlalu menarik untuk dilihat. Anda bisa membawanya.')
    RETURNING id INTO k_1428_lihat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '懐', 'nostalgia', 30, 21, 'Sepotong <radical>jiwa</radical> Anda tinggal di dalam <radical>salib</radical> yang Anda simpan di dalam kantong seperti <radical>jaring</radical> di dalam <radical>pakaian</radical> karena nostalgia yang dibawanya kepada Anda. Seseorang yang istimewa memberi Anda salib itu, dan Anda merasakan <kanji>nostalgia</kanji> yang luar biasa saat melihatnya. Itu sebabnya simpanlah di <kanji>kantong dada</kanji>, dekat di hatimu.', '<kanji>nostalgia</kanji> paling memukul Anda di <reading>夏</reading> (なつ). Itu adalah hari yang indah bertahun-tahun yang lalu ketika Anda diberi salib yang Anda simpan di <kanji>kantong dada</kanji> Anda.')
    RETURNING id INTO k_1429_nostalgia;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '押', 'dorongan', 30, 22, 'Ambil <radical>jari</radical> Anda, letakkan di <radical>cangkang kura-kura</radical> ini, dan <kanji>dorong</kanji> dorong dorong! Dorong kura-kura itu keluar dari sana.', 'Anda mencoba <kanji>mendorong</kanji> kura-kura ini keluar sehingga Anda dapat menggunakan cangkangnya untuk <reading>o</reading>bi (お) baru Anda. Anda terus melihat orang lain memakai pola cangkang penyu di obi mereka, tapi Anda akan melangkah lebih jauh. Anda akan MEMBUAT obi Anda dari cangkang penyu yang sebenarnya! Anda hanya perlu mendorong kura-kura sialan ini keluar terlebih dahulu.')
    RETURNING id INTO k_1430_dorongan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '枕', 'bantal', 30, 23, '<radical>pohon</radikal> <radikal>bajak laut</radikal> melompat dari pohon dan menyerang Anda dengan memukul Anda dengan <kanji>bantal</kanji>.', 'Saat dia memukulmu dengan <kanji>bantal</kanji> dia mengajukan permintaan: "Berikan <reading>pendingin Mac</reading> (まくら) milikmu. Dia menginginkan perangkat yang mendinginkan komputer Macmu.')
    RETURNING id INTO k_1432_bantal;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '浮', 'mengambang', 30, 24, '<radikal>tsunami</radikal> menjatuhkan <radikal>cleat</radikal> dari <radikal>anak</radikal> dan sepatu mulai <kanji>mengapung</kanji> di dalam air. Anak ini baru saja keluar bermain sepak bola, mengurus urusannya sendiri, ketika tsunami menerjang dan membuat sepatunya terlepas. Kini cleat tersebut hanyut bersama tsunami.', 'Saat Anda <kanji>mengambang</kanji> di dalam air, sebuah <reading>u</reading>ni (う) menusuk ke kaki Anda. “<reading>Uwa</reading>aa~ (うわ)” kamu menangis. Universitas itu sungguh menyakitkan. Semuanya berduri, menyakitkan, dan sampah. “Uwaa~”')
    RETURNING id INTO k_1433_mengambang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '漏', 'bocor', 30, 25, '<radikal>tsunami</radikal> merobek <radikal>bendera</radikal> dari rumah Anda di tengah <radikal>hujan</radikal>, menyebabkan <kanji>kebocoran</kanji> yang kemudian robek. Gabungan hujan dan tsunami hanya merobek bendera dari rumah Anda. Kekuatannya begitu kuat hingga membuat sebagian dinding terlepas, dan sekarang ada kebocoran di rumah Anda.', '<kanji>kebocoran</kanji> semakin parah dan begitu pula tsunami, ketika Anda melihat sesuatu di luar. Itu adalah sekumpulan <read>roe</reading> (ろう) yang mengambang di ombak. Dengan menggunakan keterampilan berpikir cepat, Anda mengambilnya dan memasukkannya ke celah tempat air bocor. Ini bekerja dengan sangat baik!')
    RETURNING id INTO k_1434_bocor;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '符', 'token', 30, 26, 'Anda mengambil beberapa <radical>bambu</radical> dan <radical>melampirkannya</radical> menjadi <kanji>token</kanji> penghargaan untuk teman Anda. Teman Anda sangat menghargai tanda persahabatan ini.', 'Kamu menyerahkan <kanji>token</kanji> tapi temanmu menjatuhkannya dan berteriak, "Kamu <reading>foo</reading>l (ふ)! Aku alergi bambu!"')
    RETURNING id INTO k_1435_token;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '購', 'pembelian', 30, 27, 'Anda memberikan <radical>kerang</radical> kepada <radical>penjaga pantai</radical> untuk <kanji>membeli</kanji> layanan mereka. Anda pikir penjaga pantai tertarik dengan uang biasa? Ayolah, mereka jelas di luar sana menggunakan kerang untuk pembeliannya. Itu wajar saja, mengingat habitatnya di tepi pantai.', 'Kali ini Anda <kanji>membeli</kanji> beberapa barang <reading>こう</reading>いち. Anda tahu, karena Anda adalah penggemarnya. Bagaimana lagi Anda bisa menunjukkan cinta di dunia ini, jika tidak melalui pembelian? Penjaga pantai menyerahkan sedikit boneka dan patung こういち. Bagus.')
    RETURNING id INTO k_1436_pembelian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '越', 'melampauinya', 30, 28, 'Anda <radical>berlari</radikal> setiap hari dan segera Anda <radical>menjadi</radikal> manusia yang dapat <kanji>melampaui</kanji> batas kecepatan normal manusia. Anda berlari dan Anda berlari dan Anda berlari. Pelatihan ini memungkinkan Anda menjadi manusia super. Anda melampaui batas manusia normal. Anda menjadi manusia yang bisa berlari sangat cepat.', 'Untuk memperkuat kemampuanmu <kanji>melampaui</kanji> kemampuan manusia lain, kamu <reading>menggoreskan</reading> (えつ) tanda suci ke kakimu untuk mempertahankan kemampuan berlarimu. Mengetsa rune ini memastikan bahwa keterampilan Anda tidak akan pernah menurun.')
    RETURNING id INTO k_1437_melampauinya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '飾', 'menghias', 30, 29, 'Saat Anda <radical>makan</radical> Anda ingin melihat bentuk <radical>pistol</radical> Anda dari bawah <radical>handuk</radical>, jadi Anda <kanji>dekorasi</kanji> rumah Anda dengan mereka.', 'Jika kamu benar-benar <kanji>mendekorasi</kanji> rumahmu seperti ini, itu akan membuat banyak orang <read>kejutan</reading> (しょく). Bahkan, mereka mungkin sangat terkejut hingga berlari keluar dari sana sambil berteriak.')
    RETURNING id INTO k_1438_menghias;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '騒', 'riuh', 30, 30, 'Seekor <radical>kuda</radical> terjebak dalam sebuah ruangan kecil dengan <radical>bangku</radical> dan <radical>serangga</radical>, dan bersama-sama mereka menciptakan situasi yang sangat <kanji>riuh</kanji>. Kuda dan serangga sama-sama berebut untuk keluar dari ruangan kecil itu, membuat bangkunya berserakan di mana-mana.', 'Pada puncak suara <kanji>riuh</kanji> mereka, tiba-tiba terdengar suara CRONCH(!) yang mengerikan dan Anda melihat <read>sou</reading>l (そう) serangga itu perlahan-lahan keluar dari ruangan, menembus langit-langit.')
    RETURNING id INTO k_1439_riuh;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '背', 'kembali', 30, 31, 'Anda terbang <radical>utara</radical> menuju <radical>bulan</radical> dan mematahkan <kanji>punggung</kanji> Anda ketika Anda akhirnya mendarat di sana. Anda tidak bersiap menghadapi benturan sehingga saat Anda menabrak bulan, punggung Andalah yang terkena dampaknya.', '<kanji>punggung</kanji> Anda sangat sakit sehingga satu-satunya cara untuk menjelaskan rasa sakit tersebut dengan tepat adalah dalam bentuk <read>hai</reading>ku (はい). 

Saya terbang ke bulan.
Di sanalah punggungku patah.
Punggungku sakit sekali.')
    RETURNING id INTO k_1440_kembali;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '撮', 'foto', 30, 32, 'Arahkan beberapa <radical>jari</radical> ke <radical>matahari</radical> dan letakkan beberapa jari lainnya di <radical>telinga</radical> Anda saat Anda duduk di <radical>bangku</radical> — sekarang Anda dapat mengambil <kanji>foto</kanji> Anda. Ini adalah <kanji>foto</kanji> yang glamor, jadi Anda harus melakukan salah satu pose yang aneh dan berseni agar hasilnya terlihat bagus.', 'Saat Anda mengambil <kanji>foto</kanji>, fotografer meminta Anda mengucapkan <reading>Satsu</reading>ki (さつ). Dia bilang itu seperti mengatakan keju tapi lebih efektif. Satsuki!')
    RETURNING id INTO k_1441_foto;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '盗', 'mencuri', 30, 33, 'Piring <radical>berikutnya</radikal> <radikal></radikal> adalah piring yang akan Anda <kanji>curi</kanji>. Yang ini terlalu jelas, lebih baik tunggu yang berikutnya.', 'Anda <kanji>mencuri</kanji> piring ini dari restoran <reading>とう</reading>きょう, jadi setelah Anda mencurinya, bayangkan diri Anda berlari di jalanan とうきょう saat Anda kehilangan pengejar Anda.')
    RETURNING id INTO k_1442_mencuri;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '灯', 'lampu', 30, 34, '<radical>Api</radical> yang Anda gunakan untuk menerangi <radical>jalan</radical> harus dipadamkan dalam <kanji>lampu</kanji>. Api unggun, korek api? Tidak, tidak ada satupun yang berhasil. Anda membutuhkan lampu yang terang dan aman agar jalanan tetap nyaman di malam hari.', '<kanji>lampu</kanji> jalan ini pertama kali digunakan dalam <membaca>とう</reading>きょう. Bagaimanapun, itu adalah kota paling maju. Dan lebih banyak orang yang keluar pada malam hari di とうきょう dibandingkan di tempat lain di Jepang. Jadi mereka membutuhkan lampu untuk menerangi segalanya!')
    RETURNING id INTO k_2037_lampu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '匂', 'bau', 30, 35, 'Anda terjebak di <radical>penjara</radikal> hanya dengan <radical>sendok</radikal>, dan <kanji>bau</kanji> di sini sangat buruk sehingga Anda menggunakan sendok penjara untuk membuangnya ke luar sebaik mungkin.', 'Anda tidak akan percaya betapa buruknya <kanji>bau</kanji> ini. Anda baru di penjara, jadi Anda menyebut semuanya <reading>neo</reading>-smells (にお). Mereka neo, mereka baru bagi Anda.')
    RETURNING id INTO k_8834_bau;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '濡', 'basah', 30, 36, 'Jika <radical>tsunami</radical> melanda, maka <radical>hujan</radical> sedang turun, dan Anda berada di luar mencoba menggunakan <radical>rake</radical>, Anda akan menjadi sangat <kanji>basah</kanji> dan <kanji>lembab</kanji>.', 'Anda tidak tahan betapa <kanji>basah</kanji> dan <kanji>lembab</kanji> yang Anda rasakan saat mengenakan pakaian ini sehingga Anda merobeknya dan menyapu <reading>nu</reading>de (ぬ)!')
    RETURNING id INTO k_8863_basah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '柵', 'pagar', 30, 37, 'Anda telah membuat <radical>pohon</radical> <radical>rak buku</radical> (yaitu, rak buku yang dipotong menjadi pohon), jadi Anda membuat <kanji>pagar</kanji> untuk mencegah masuknya orang-orang bodoh.', 'Di <kanji>pagar</kanji> Anda, Anda menggantungkan <reading>karung</reading> (さく) untuk menerima sumbangan.')
    RETURNING id INTO k_8965_pagar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '姪', 'keponakan-perempuan', 30, 38, 'Siapakah <radikal>wanita</radikal> <radikal>tahi lalat</radikal> ini?! Itu <kanji>keponakan</kanji>mu!', 'Tidak hanya mereka tikus tanah, semua <kanji>keponakan</kanji> Anda juga lahir di <reading>Mei</reading> (めい)!')
    RETURNING id INTO k_9335_keponakan_perempuan;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1413_menarik, 'Menarik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1414_mengering, 'Mengering', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1414_mengering, 'Haus', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1416_pernikahan, 'Pernikahan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1417_bermain, 'Bermain', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1418_bendera, 'Bendera', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1419_menerangi, 'Menerangi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1420_menyenangkan, 'Menyenangkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1421_edisi, 'Edisi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1422_miskin, 'Miskin', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1423_langka, 'Langka', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1424_sesuai, 'Sesuai', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1425_deposito, 'Deposito', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1426_memperpanjang, 'Memperpanjang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1427_berikutnya, 'Berikutnya', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1427_berikutnya, 'Berikut ini', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1428_lihat, 'Lihat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1429_nostalgia, 'Nostalgia', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1429_nostalgia, 'Saku Dada', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1430_dorongan, 'Dorongan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1432_bantal, 'Bantal', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1433_mengambang, 'Mengambang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1434_bocor, 'Bocor', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1435_token, 'Token', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1436_pembelian, 'Pembelian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1437_melampauinya, 'Melampauinya', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1438_menghias, 'Menghias', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1439_riuh, 'Riuh', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1440_kembali, 'Kembali', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1440_kembali, 'Tinggi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1441_foto, 'Foto', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1441_foto, 'Foto', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1442_mencuri, 'Mencuri', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2037_lampu, 'Lampu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_8834_bau, 'Bau', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_8834_bau, 'Aroma', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_8863_basah, 'Basah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_8863_basah, 'Lembap', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_8965_pagar, 'Pagar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_9335_keponakan_perempuan, 'Keponakan perempuan', true, true);

  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1413_menarik, 'み', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1414_mengering, 'かわ', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1414_mengering, 'かつ', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1416_pernikahan, 'こん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1417_bermain, 'ゆう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1417_bermain, 'あそ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1418_bendera, 'き', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1418_bendera, 'はた', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1419_menerangi, 'しょう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1419_menerangi, 'て', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1420_menyenangkan, 'かい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1420_menyenangkan, 'こころよ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1421_edisi, 'はん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1422_miskin, 'びん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1422_miskin, 'ひん', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1422_miskin, 'まず', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1423_langka, 'ぼう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1423_langka, 'とぼ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1424_sesuai, 'てき', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1425_deposito, 'よ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1425_deposito, 'あず', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1426_memperpanjang, 'えん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1426_memperpanjang, 'の', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1427_berikutnya, 'よく', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1428_lihat, 'らん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1429_nostalgia, 'なつ', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1429_nostalgia, 'ふところ', 'kunyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1429_nostalgia, 'かい', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1430_dorongan, 'お', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1430_dorongan, 'おう', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1432_bantal, 'まくら', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1433_mengambang, 'う', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1433_mengambang, 'うわ', 'kunyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1433_mengambang, 'ふ', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1434_bocor, 'ろう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1434_bocor, 'も', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1435_token, 'ふ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1436_pembelian, 'こう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1437_melampauinya, 'えつ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1437_melampauinya, 'こ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1438_menghias, 'しょく', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1438_menghias, 'かざ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1439_riuh, 'そう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1439_riuh, 'さわ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1440_kembali, 'はい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1440_kembali, 'せ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1440_kembali, 'そむ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1441_foto, 'さつ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1441_foto, 'と', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1442_mencuri, 'とう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1442_mencuri, 'ぬす', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_2037_lampu, 'とう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_2037_lampu, 'あかり', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_2037_lampu, 'とも', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_2037_lampu, 'どん', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_2037_lampu, 'ちん', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_2037_lampu, 'ともしび', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_2037_lampu, 'ともし', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_8834_bau, 'にお', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_8863_basah, 'ぬ', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_8863_basah, 'じゅ', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_8965_pagar, 'さく', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_8965_pagar, 'しがらみ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_9335_keponakan_perempuan, 'めい', 'kunyomi', true, true);

  -- 3. VOCABULARIES
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '主因', 'penyebab-utama', 30, 39, '<kanji>penyebab utama</kanji> <kanji>penyebab</kanji> adalah <vocabulary>penyebab utama</vocabulary> atau <vocabulary>penyebab utama</vocabulary>.

主因 adalah kata formal yang mengacu pada alasan utama di balik terjadinya sesuatu, terutama jika ada banyak penyebab. Anda akan sering melihatnya dalam penjelasan atau analisis, seperti 事件の主因 (penyebab utama suatu kejadian).', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Penyebab Utama, Penyebab Utama')
    RETURNING id INTO v_3968_penyebab_utama;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '総理', 'perdana-menteri', 30, 40, 'Ini adalah singkatan dari 総理大臣 (perdana menteri), jadi artinya <kosakata>perdana menteri</vocabulary>.

Seperti yang Anda pelajari dengan 総理大臣, kata ini hanya digunakan untuk <vocabulary>perdana menteri Jepang</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Ini juga akan membantu jika Anda mengingat versi yang lebih panjang dari kata ini, 総理大臣.', 'Perdana Menteri, Perdana Menteri Jepang')
    RETURNING id INTO v_4423_perdana_menteri;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '構え', 'pendirian', 30, 41, 'Anda tahu 構える, yang artinya mengambil sikap? Ini adalah versi kata bendanya, menjadikannya <vocabulary>stance</vocabulary>.

構え sering digunakan untuk menggambarkan sikap atau <kosakata>postur</vocabulary> tertentu, baik dalam arti harfiah maupun kiasan. Dalam hal ini, hal ini juga dapat menyampaikan gagasan kesiapan mental dan fisik untuk bertindak. Selain itu, 構え juga digunakan untuk merujuk pada <vocabulary>struktur</vocabulary> sesuatu, sering kali berfokus pada tampilan visual.', 'Bacaannya seperti 構える, asal kalian tahu pasti kalian juga mengetahuinya.', 'Pendirian, Sikap, Struktur')
    RETURNING id INTO v_5042_pendirian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '腹切り', 'harakiri', 30, 42, 'Anda tahu 腹 berarti <kanji>perut</kanji>, dan 切り berasal dari 切る, yang berarti "memotong". Nah, jika Anda memotong perut Anda sendiri, kemungkinan besar Anda melakukan <vocabulary>harakiri</vocabulary>, suatu bentuk <vocabulary>ritual bunuh diri</vocabulary>.

腹切り terdengar blak-blakan dan sehari-hari dibandingkan dengan 切腹 yang lebih formal. Sepertinya Anda baru saja mengucapkan kata "memotong perut" - tidak terlalu halus! Hal ini sering terjadi pada pasangan sinonim seperti ini: pasangan dengan bacaan kun''yomi akan terdengar lebih santai, sedangkan pasangan dengan bacaan on''yomi akan terdengar lebih formal.', 'Bacaannya berasal dari 腹 dan 切る. Anda mungkin juga sudah mengetahui kata harakiri, karena kata tersebut juga dimasukkan ke dalam bahasa Inggris.', 'Harakiri, Ritual Bunuh Diri')
    RETURNING id INTO v_5078_harakiri;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '処置', 'perlakuan', 30, 43, 'Kami akan <kanji>mengatasinya</kanji> dengan <kanji>menempatkan</kanji>mendukung masalah ini dan memberi Anda <vocabulary>perawatan</vocabulary> yang Anda perlukan. kancho!

処置 biasanya digunakan saat mengobati cedera atau penyakit. Kata ini juga bisa merujuk pada memutuskan bagaimana menangani suatu situasi atau tindakan menanganinya, namun dalam kasus ini, orang biasanya menggunakan 処理 sebagai gantinya.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Perlakuan, Ukuran, Pembuangan, Menghadapi')
    RETURNING id INTO v_5129_perlakuan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '博覧会', 'eksposisi', 30, 44, 'Sebuah <kanji>pameran</kanji> yang Anda <kanji>lihat</kanji> dan semua orang datang <kanji>bertemu</kanji> bersama. Ya, itu sepertinya deskripsi dari sebuah <vocabulary>eksposisi</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Eksposisi, Pameran, Adil')
    RETURNING id INTO v_5138_eksposisi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '微か', 'halus', 30, 45, 'Kanji berarti <kanji>halus</kanji>, begitu juga dengan kata ini. Sesuatu yang <vocabulary>halus</vocabulary> mungkin juga <vocabulary>samar</vocabulary> dan <vocabulary>tidak jelas</vocabulary>. Jadi gunakan 微か untuk menggambarkan hal-hal seperti suara samar, angin sepoi-sepoi, dan ingatan yang tidak jelas.', 'Anda harus berbicara dengan suara <vocabulary>halus</vocabulary> dan <vocabulary>lemah</vocabulary> ketika Anda <reading>makian</reading> (かす). Begitu halusnya sampai-sampai kata-kata makiannya <vocabulary>tidak jelas</vocabulary> bahkan bagi orang lain. Itu satu-satunya cara yang bisa diterima untuk mengumpat.', 'Halus, Pingsan, Kabur, Redup')
    RETURNING id INTO v_5153_halus;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '移住者', 'emigran', 30, 46, 'Jika Anda <kanji>bergeser</kanji> di tempat Anda <kanji>tinggal</kanji>, Anda adalah <kanji>seseorang</kanji> yang kami sebut sebagai <vocabulary>emigran</vocabulary>, <vocabulary>imigran</vocabulary>, atau <vocabulary>migrant</vocabulary>. Selamat datang, teman!

Anda dapat menggunakan kata ini untuk orang yang bermigrasi antar negara dan mereka yang bermigrasi dalam negara yang sama.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Emigran, Imigran, Migran')
    RETURNING id INTO v_5181_emigran;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '詰まる', 'untuk-diisi', 30, 47, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Ingat bagaimana 詰める berarti "memasukkan barang"? Nah, ini versi intransitif yang fokus pada benda yang diisi, jadi maksudnya <vocabulary>diisi dengan</vocabulary> atau <vocabulary>dijejali penuh</vocabulary>. Anda dapat mengingat ini karena bantal Anda diisi dengan まる bulu kucing. Isinya hampir penuh dengan potongan まる, membuatnya sangat lembut dan nyaman.

Seperti bantal isi まる, 詰まる digunakan ketika ada sesuatu yang benar-benar memenuhi ruangan, apakah itu dompet yang penuh dengan uang kertas (kalau Anda mau), buku berisi banyak informasi berguna, atau jadwal yang penuh dengan tugas. Ini juga bisa berarti <vocabulary>terjebak</vocabulary> atau <vocabulary>tersumbat</vocabulary>, sehingga Anda dapat menggunakannya jika ada sesuatu yang tersangkut di tenggorokan Anda, atau bahkan ketika toilet Anda tersumbat.', 'Kata ini menggunakan bacaan yang Anda pelajari dengan kanji!', 'Untuk Diisi, Dipenuhi Penuh, Terjebak, Menjadi Tersumbat')
    RETURNING id INTO v_5283_untuk_diisi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '魅力', 'daya-tarik', 30, 48, '<kanji>memikat</kanji> <kanji>kekuatan</kanji> adalah kekuatan <vocabulary>daya pikat</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Daya tarik, Pesona, Daya tarik, Menarik')
    RETURNING id INTO v_5296_daya_tarik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '並べる', 'untuk-menyejajarkan-sesuatu', 30, 49, '並ぶ adalah saat ada sesuatu yang mengantri. 並べる adalah saat Anda sedang menyusun sesuatu. Dengan kata lain, 並べる bersifat transitif. Artinya <vocabulary>menyejajarkan sesuatu</vocabulary> atau <vocabulary>menyusun sesuatu</vocabulary>. Anda mengetahui hal ini karena jika menyangkut <reading>beruang</reading> (べる), Anda harus menyusunnya sendiri, karena mereka tidak akan melakukannya untuk Anda, itu sudah pasti.', 'Pembacaan kanjinya sama dengan 並ぶ, jadi jika Anda mengetahuinya, Anda juga bisa mengetahui bacaannya.', 'Untuk Menyejajarkan Sesuatu, Untuk Menata Sesuatu')
    RETURNING id INTO v_5297_untuk_menyejajarkan_sesuatu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '乏しい', 'langka', 30, 50, 'Ini adalah kanji tunggal dengan い di akhir, artinya Anda tahu itu mungkin kata sifat. Kanji berarti <kanji>langka</kanji>, jadi tidak mengherankan jika kata ini berarti <vocabulary>langka</vocabulary>, <vocabulary>sedikit</vocabulary>, atau <vocabulary>kurang</vocabulary>.

乏しい adalah kata lanjutan yang lebih umum digunakan dalam tulisan atau ucapan sopan. Kata ini sering digunakan untuk menggambarkan kekurangan dalam kuantitas atau kualitas, seperti リソースが乏しい (langka dalam sumber daya) atau 経験が乏しい (kurang pengalaman).', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemoniknya: 

Apa yang dapat Anda andalkan ketika segala sesuatu <vocabulary>langka</vocabulary>? <read>towbo</reading>lokal Anda di (とぼ). Pada saat kelangkaan, kapal penarik muncul mengangkut makanan dan perbekalan dalam tongkang untuk melengkapi perbekalan <vocabulary>yang sedikit</vocabulary> semua orang. Terima kasih, kapal penarik.', 'Langka, Kurus, Kekurangan')
    RETURNING id INTO v_5298_langka;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '欠乏', 'kekurangan', 30, 51, 'Kita <kanji>kekurangan</kanji>dan segala sesuatunya <kanji>langka</kanji>. Kita mempunyai <vocabulary>kekurangan</vocabulary>, <vocabulary>kelangkaan</vocabulary>, atau <vocabulary>kekurangan</vocabulary> atas sesuatu yang kita butuhkan, baik itu nutrisi, oksigen, atau sumber daya lainnya.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kekurangan, Kelangkaan, Kekurangan')
    RETURNING id INTO v_5299_kekurangan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '冷やす', 'untuk-mendinginkan-sesuatu', 30, 52, '冷たい adalah "dingin." Ini adalah versi kata kerjanya, jadi Anda membuat sesuatu yang dingin. Kata ini adalah <vocabulary>mendinginkan sesuatu</vocabulary> atau <vocabulary>mendinginkan sesuatu</vocabulary>.', '<vocabulary>Untuk mendinginkan sesuatu</vocabulary>, Anda perlu mengoleskannya dingin, bukan <reading>panas</reading>t (ひ).', 'Untuk Mendinginkan Sesuatu, Untuk Mendinginkan Sesuatu')
    RETURNING id INTO v_5300_untuk_mendinginkan_sesuatu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '結婚', 'pernikahan', 30, 53, 'Mari kita <kanji>mengikat</kanji> <kanji>pernikahan</kanji> ini dengan <vocabulary>pernikahan</vocabulary>. Tidak ada cara yang lebih baik untuk mewujudkan pernikahan selain pernikahan, bukan?', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Pernikahan')
    RETURNING id INTO v_5301_pernikahan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '求婚', 'lamaran-pernikahan', 30, 54, 'Saat Anda <kanji>meminta</kanji> <kanji>menikah</kanji> dengan orang lain, Anda sedang melakukan <vocabulary>lamaran pernikahan</vocabulary>. Maukah kamu menikah denganku, Brad Pitt?', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Lamaran Pernikahan')
    RETURNING id INTO v_5302_lamaran_pernikahan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '新婚旅行', 'bulan-madu', 30, 55, 'Anda tahu bahwa 旅行 adalah <kanji>perjalanan</kanji>. Bagian lainnya adalah <kanji>baru</kanji> <kanji>pernikahan</kanji>. Apa perjalanan yang Anda lakukan setelah menikah baru? <vocabulary>bulan madu</vocabulary>!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Bulan madu')
    RETURNING id INTO v_5303_bulan_madu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '未婚', 'belum-menikah', 30, 56, '<kanji>Belum</kanji> <kanji>menikah</kanji>? Anda belum menikah. Anda <vocabulary>belum menikah</vocabulary>.

未婚 adalah istilah yang relatif formal yang sering digunakan dalam dokumen atau survei resmi. Biasanya Anda akan melihatnya dipasangkan dengan kata lain, seperti 未婚女性 (wanita yang belum menikah), sedangkan kata 独身 (lajang) dapat digunakan sendiri atau digabungkan dengan kata lain.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Belum menikah')
    RETURNING id INTO v_5304_belum_menikah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '延ばす', 'untuk-memperpanjang-sesuatu', 30, 57, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>memperpanjang</kanji> dan kata kerja ini berarti <vocabulary>memperpanjang sesuatu</vocabulary>.

延ばす menyampaikan gagasan untuk memperluas sesuatu yang sudah ada agar lebih panjang, sering kali dalam kaitannya dengan waktu atau jarak fisik. Misalnya, ini bisa merujuk pada penundaan jadwal atau perpanjangan jalur kereta api.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Apakah Anda keberatan jika saya <vocabulary>memperpanjang</vocabulary> sesuatu? Jawabannya? "<reading>Tidak</reading> (の), saya tidak keberatan."', 'Untuk Memperpanjang Sesuatu, Untuk Memperpanjang Sesuatu, Untuk Memperluas Sesuatu')
    RETURNING id INTO v_5308_untuk_memperpanjang_sesuatu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '延長', 'memperpanjang', 30, 58, '<kanji>Perpanjang</kanji> untuk <kanji>lama</kanji> sementara. Kami membutuhkan lebih banyak waktu. Kita memerlukan semacam <vocabulary>memperpanjang</vocabulary> atau <vocabulary> extension</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Memperpanjang, Perpanjangan')
    RETURNING id INTO v_5309_memperpanjang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '延期する', 'untuk-menunda', 30, 59, 'Bisakah kita <kanji>memperpanjang</kanji> <kanji>periode waktu</kanji> ini di kemudian hari? Saya ingin <vocabulary>menunda</vocabulary>, jika memungkinkan.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Untuk Menunda')
    RETURNING id INTO v_5310_untuk_menunda;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '快い', 'menyenangkan', 30, 60, 'Ini adalah kanji tunggal dengan い di akhir, artinya Anda tahu itu mungkin kata sifat. Apa bentuk kata sifat dari <kanji>menyenangkan</kanji>? Ini juga <vocabulary>menyenangkan</vocabulary>.', 'Pembacaan kata ini cukup aneh. Kami akan memikirkan kembali beberapa kata berbeda untuk menyatukannya. Kata untuk hati (心), adalah こころ. Kata kebaikan adalah よい (atau いい, tapi demi kata ini, よい). "Hati (perasaan) yang baik" adalah hati yang terasa nyaman, hangat, dan tidak jelas (secara kiasan, bukan secara harfiah. Jika secara harfiah, silakan pergi ke rumah sakit). Itu adalah perasaan <vocabulary>menyenangkan</vocabulary>. Perasaan こころよい.', 'Menyenangkan')
    RETURNING id INTO v_5311_menyenangkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '快感', 'kesenangan', 30, 61, 'Ketika Anda mempunyai <kanji>perasaan</kanji> akan <kanji>menyenangkan</kanji>, Anda mengalami <vocabulary>kesenangan</vocabulary>.

Meskipun 快感 dapat menggambarkan sensasi mencapai sesuatu yang memuaskan, 快感 sering kali dikaitkan dengan <vocabulary>perasaan menyenangkan</vocabulary> yang berasal dari pengalaman yang tabu atau tidak biasa. Misalnya, ini mungkin mengacu pada kesenangan menggoda seseorang, melakukan kebiasaan buruk seperti mengorek kotoran telinga, atau merasakan kenikmatan sensual.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kesenangan, Perasaan Menyenangkan')
    RETURNING id INTO v_5312_kesenangan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '快速', 'kecepatan-tinggi', 30, 62, '<kanji>menyenangkan</kanji> tetapi juga <kanji>cepat</kanji>. Saat naik kereta, senang rasanya menemukan kereta yang memiliki kedua hal tersebut. Apa yang membuatnya menyenangkan? Itu akan menjadi <vocabulary>kecepatan tinggi</vocabulary>. Apa yang membuatnya cepat? Juga <vocabulary>kecepatan tinggi</vocabulary>. Sungguh, jika Anda berada di dalam kereta, Anda lebih memilih tiba di tujuan lebih cepat daripada terlambat, jadi kereta 快速 berkecepatan tinggi adalah cara yang tepat.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kecepatan Tinggi, Cepat')
    RETURNING id INTO v_5313_kecepatan_tinggi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '不快', 'tidak-menyenangkan', 30, 63, 'Hal-hal yang <kanji>tidak</kanji> <kanji>menyenangkan</kanji> adalah <vocabulary>tidak menyenangkan</vocabulary> atau <vocabulary>tidak nyaman</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Tidak menyenangkan, Tidak nyaman')
    RETURNING id INTO v_5314_tidak_menyenangkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '懐かしい', 'rindu', 30, 64, 'Ini adalah kanji tunggal dengan い di akhir, artinya Anda tahu itu mungkin kata sifat. Apa bentuk kata sifat dari <kanji>nostalgia</kanji>? Ini <vocabulary>nostalgia</vocabulary>.', 'Bacaannya adalah yang Anda pelajari dengan kanji. Apakah Anda ingat melakukan itu? Ya ampun, itulah hari-harinya. Bagaimana 懐かしい.', 'Rindu, Nostalgia')
    RETURNING id INTO v_5315_rindu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '押す', 'untuk-mendorong', 30, 65, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>mendorong</kanji> sehingga versi kosakata kata kerjanya adalah <vocabulary>to push</vocabulary>.', 'Sebenarnya bacaannya adalah yang Anda pelajari dengan kanji!', 'Untuk Mendorong')
    RETURNING id INTO v_5316_untuk_mendorong;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '撮る', 'untuk-mengambil-gambar', 30, 66, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji sendiri berarti <kanji>foto</kanji>. Jika Anda mengubahnya menjadi kata kerja, maka menjadi <vocabulary>to take a picture</vocabulary>. Bisa juga berarti <vocabulary>untuk mengambil video</vocabulary>. Pada dasarnya, ini untuk segala bentuk pengambilan gambar yang Anda lakukan dengan kamera!', '<vocabulary>Untuk mengambil gambar</vocabulary>, <vocabulary>untuk mengambil video</vocabulary>… Anda "mengambil" semua hal ini. Dan bagaimana Anda mengatakan "mengambil" dalam bahasa Jepang? Itu adalah <reading>取る</reading> (とる), yang kebetulan memiliki bacaan yang sama dengan kata ini. Beda kanji tapi maknanya berkaitan, dan bacaannya sama persis!', 'Untuk Mengambil Gambar, Untuk Mengambil Video')
    RETURNING id INTO v_5317_untuk_mengambil_gambar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '撮影', 'fotografi', 30, 67, 'Jika Anda <kanji>memotret</kanji> sebuah <kanji>bayangan</kanji>, Anda jelas sedang melakukan semacam <vocabulary>fotografi</vocabulary>. (Di masa lalu, fotografi berarti menggunakan cahaya untuk membakar bayangan pada kertas khusus, namun kini semuanya serba mewah dan digital.) Namun, ini bukan sekadar fotografi diam; itu juga berarti <vocabulary>syuting</vocabulary> (seperti dalam video atau film). Pada dasarnya, jika ada hubungannya dengan pengambilan foto atau video, 撮影 adalah pilihanmu.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Fotografi, Syuting')
    RETURNING id INTO v_5318_fotografi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '診断する', 'untuk-mendiagnosis', 30, 68, '診断 adalah <kanji>diagnosis</kanji>. Jadikan ini menjadi kata kerja, dan Anda memiliki <vocabulary>untuk mendiagnosis</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Untuk Mendiagnosis')
    RETURNING id INTO v_5320_untuk_mendiagnosis;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '旗', 'bendera', 30, 69, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Karena kata ini terdiri dari satu kanji, kemungkinan besar menggunakan bacaan kun''yomi. Anda tidak mempelajari bacaan ini, jadi inilah mnemonik untuk membantu Anda: 

Yang memiliki <vocabulary>flag</vocabulary> adalah Mad <reading>Hatter</reading> (はた). Bayangkan saja melihat sekelompok orang. Anda harus menemukan Mad Hatter, dan dia harus menemukan Anda. Itu sebabnya dia menawarkan untuk memakai bendera di topinya.', 'Bendera, Spanduk')
    RETURNING id INTO v_5321_bendera;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '国旗', 'bendera-nasional', 30, 70, '<kanji>Bendera</kanji> <kanji>negara</kanji> adalah bendera yang mereka gunakan untuk negaranya. Itu adalah <vocabulary>bendera nasional</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Namun, こく disingkat menjadi こっ, jadi berhati-hatilah.', 'Bendera Nasional')
    RETURNING id INTO v_5323_bendera_nasional;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '背景', 'latar-belakang', 30, 71, '<kanji>belakang</kanji> <kanji>Adegan</kanji> adalah adegan yang terjadi di belakang. Anda tidak terlalu menyadarinya, karena itu adalah <vocabulary>latar belakang</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Latar belakang')
    RETURNING id INTO v_5324_latar_belakang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '更生', 'rehabilitasi', 30, 72, 'Mengalami <kanji>pembaruan</kanji>al <kanji>hidup</kanji> berarti menjalani proses <vocabulary>rehabilitasi</vocabulary>.

 更生 umumnya mengacu pada rehabilitasi dari berbagai masalah seperti kecanduan, kejahatan, kenakalan, atau perjuangan pribadi. Idealnya, hal ini mengarah pada <vocabulary>mereformasi diri</vocabulary> dan berintegrasi kembali ke dalam masyarakat.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Rehabilitasi, Mereformasi Diri Sendiri')
    RETURNING id INTO v_5326_rehabilitasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '枕', 'bantal', 30, 73, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan yang kamu pelajari dengan kanji, huzzah!', 'Bantal')
    RETURNING id INTO v_5329_bantal;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '浮く', 'untuk-mengambang', 30, 74, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>mengambang</kanji> sehingga versi kosakata kata kerjanya adalah <vocabulary>to float</vocabulary>.', 'Bacaannya berasal dari bacaan yang Anda pelajari dengan kanji. う!', 'Untuk Mengambang')
    RETURNING id INTO v_5330_untuk_mengambang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '浮世絵', 'ukiyo-e', 30, 75, '<kanji>lukisan</kanji> <kanji>dunia</kanji> <kanji>yang mengapung</kanji> adalah apa yang Anda sebut sebagai <vocabulary>cetakan balok kayu ukiyo-e</vocabulary> di Jepang. "Dunia terapung" mengacu pada dunia yang tidak kekal (mengambang), sama seperti keindahan dan hiburan. Dulu, jenis seni ini dibuat menjadi cetakan dan lukisan balok kayu. Sayangnya, kami tidak memiliki nama untuk ini dalam bahasa Inggris karena sangat unik dan istimewa, namun kemunculannya lebih dari yang Anda kira, jadi biasakanlah dengan ukiyo-e!', 'Pembacaannya tidak benar-benar sejajar dengan sempurna, tetapi hampir sama (walaupun tercampur dalam hal bacaan apa). Lihatlah kata itu dan uraikan semuanya. 浮 mengambil kun''yomi うき (dari 浮く), 世 juga mengambil kun''yomi よ, dan kemudian 絵 mengambil on''yomi え. Gabungkan semuanya dan Anda akan mendapatkan うきよえ! Atau jika Anda sudah mengetahui kata ukiyo-e, itu juga bisa!', 'Ukiyo-e, Cetakan Balok Kayu Ukiyo-e, Lukisan Ukiyo-e')
    RETURNING id INTO v_5331_ukiyo_e;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '浮気', 'mencurangi', 30, 76, 'Semangat <kanji>mengambang</kanji>ing <kanji></kanji>? Jika semangat Anda sedang melayang-layang (dalam urusan cinta), kemungkinan besar Anda akan <vocabulary>curang</vocabulary> pada pasangan Anda. Hati-hati — setelah dimulai, <vocabulary>kecurangan</vocabulary> Anda bisa berubah menjadi <vocabulary>affair</vocabulary> besar-besaran.

浮気 berarti selingkuh dalam suatu hubungan, baik Anda sedang berkencan atau sudah menikah. Namun rayuan yang tidak berbahaya pun kadang-kadang bisa dihitung sebagai 浮気, karena ini menunjukkan bahwa semangat Anda sedang "mengambang" dan tidak terlalu terikat dengan pasangan seperti yang mereka inginkan…', 'Kanji ini menggunakan bacaan kun''yomi untuk kanji pertama, dan bacaan on''yomi untuk kanji kedua. Anda sudah mempelajari keduanya, jadi Anda harus bisa membacanya juga.', 'Mencurangi, Curang, Perselingkuhan')
    RETURNING id INTO v_5332_mencurangi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '渇く', 'menjadi-haus', 30, 77, 'Saat Anda <kanji>haus</kanji>, Anda cenderung <vocabulary>menjadi haus</vocabulary>.

Perhatikan bahwa ini tidak berarti “haus” saja, tetapi hanya jika dikombinasikan dengan 喉, seperti dalam 喉が渇く.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji. Ambillah segelas air agar kamu tidak mengalami dehidrasi, oke?', 'Menjadi Haus, Menjadi Haus, Menjadi Kering')
    RETURNING id INTO v_5333_menjadi_haus;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '漏水', 'kebocoran-air', 30, 78, '<kanji>kebocoran</kanji> dari <kanji>air</kanji> adalah <vocabulary>kebocoran air</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kebocoran Air')
    RETURNING id INTO v_5334_kebocoran_air;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '漏出', 'bocor', 30, 79, 'Ada yang <kanji>bocor</kanji> dan apa pun yang bocor <kanji>keluar</kanji> dari sebelumnya. Inilah saatnya terjadi <vocabulary>kebocoran</vocabulary>.

漏出 adalah kata formal yang berarti <vocabulary>kebocoran</vocabulary>, <vocabulary>tumpahan</vocabulary>, atau <vocabulary>rembesan</vocabulary>. Ini sering digunakan untuk kebocoran fisik zat seperti cairan, gas, atau bahan lainnya.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Bocor, Kebocoran, Tumpahan, Rembesan')
    RETURNING id INTO v_5335_bocor;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '漏れる', 'bocor', 30, 80, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>bocor</kanji> jadi versi kosakata kata kerjanya adalah <vocabulary>bocor</vocabulary>.

漏れる dapat digunakan untuk kebocoran fisik dan abstrak, seperti kebocoran air atau gas, suara atau cahaya yang merembes keluar, atau informasi atau emosi terungkap secara tidak sengaja.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: Menyebabkan Anda <vocabulary>bocor</vocabulary> ke seluruh lantai (kita berbicara tentang darah, di sini) adalah teman Anda <reading>Moe</reading> (も). Jika Anda mengenal seseorang bernama Moe, bayangkan mereka melakukan hal ini. Jika tidak, pikirkan Moe yang terkenal.', 'Bocor, Bocor')
    RETURNING id INTO v_5336_bocor;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '照れる', 'merasa-malu', 30, 81, 'Anda merasa seolah-olah pipi Anda <kanji>menerangi</kanji>d ketika Anda mulai <vocabulary>merasa malu</vocabulary>. Mungkin menyala dengan warna merah, itulah sebabnya kata ini juga berarti <vocabulary>memerah</vocabulary>. 

照れる berarti <kosa kata>menjadi malu</vocabulary>, sering kali dalam situasi di mana rasa malu berasal dari kesopanan dan bukan ketidaknyamanan yang serius. Ini digunakan untuk menggambarkan perasaan minder dengan cara yang menawan, seperti tersipu karena pujian, perhatian, atau diejek dengan cara yang ringan.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: Hal yang paling membuat Anda malu adalah <reading>手</reading> (て). Semuanya berwarna biru dan tampak menakutkan.', 'Merasa Malu, Menjadi memerah, Menjadi Malu')
    RETURNING id INTO v_5338_merasa_malu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '照明', 'penerangan', 30, 82, '<kanji>Menerangi</kanji> dan membuat segalanya <kanji>terang</kanji>, <vocabulary>iluminasi</vocabulary> saya!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Penerangan, Penerangan')
    RETURNING id INTO v_5339_penerangan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '出版', 'penerbitan', 30, 83, 'Jika Anda <kanji>keluar</kanji> dari <kanji>edisi</kanji> itu dan keluar ke dunia nyata, Anda telah menerbitkan sesuatu! Itulah <vocabulary>penerbitan</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Penerbitan')
    RETURNING id INTO v_5340_penerbitan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '版権', 'hak-cipta', 30, 84, 'Anda memiliki <kanji>edisi</kanji> <kanji>hak</kanji> atas ini. Edisi ini milik Anda, dan siapa pun yang menyalin edisi ini akan mendapat masalah. Anda memiliki <vocabulary>hak cipta</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Hak cipta')
    RETURNING id INTO v_5341_hak_cipta;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '初版', 'edisi-pertama', 30, 85, '<kanji>pertama</kanji> <kanji>edisi</kanji> adalah <vocabulary>edisi pertama</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Edisi Pertama')
    RETURNING id INTO v_5342_edisi_pertama;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '強盗', 'pencurian', 30, 86, 'Kamu <kanji>kuat</kanji> sehingga kamu membobol rumah seseorang, menahannya, lalu <kanji>mencuri</kanji> dari mereka. Ha ha! Ambillah itu, tetangga sebelah! Ini adalah <vocabulary>perampokan</vocabulary> atau <vocabulary>perampokan</vocabulary>, tergantung seberapa gila Anda setelah menggunakan kekuatan itu untuk mendobrak pintu itu.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Namun 強 memiliki dua bacaan on''yomi, dan Anda belum benar-benar melihatnya, jadi inilah mnemonik untuk membantu Anda:

Coba pikirkan bagaimana ketika kamu melakukan <vocabulary>perampokan</vocabulary>, kamu <reading>pergi</reading> (ごう) ke rumah seseorang, lalu kamu masuk penjara juga, jika kamu tertangkap.', 'Pencurian, Perampokan, Pencuri, Perampok')
    RETURNING id INTO v_5344_pencurian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '盗作', 'plagiat', 30, 87, '<kanji>Mencuri</kanji> apa yang <kanji>buat</kanji> orang lain? Wow. Bagus sekali. Itu adalah <vocabulary>plagiarisme</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Plagiat')
    RETURNING id INTO v_5345_plagiat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '幼稚園', 'tk', 30, 88, 'Jika 幼稚 adalah <kanji>kekanak-kanakan</kanji>, maka <kanji>taman</kanji> untuk orang-orang yang kekanak-kanakan akan menjadi tempat yang penuh dengan banyak anak-anak, mungkin tumbuh dengan cara tertentu. Saat Anda membesarkan anak-anak kecil di taman, Anda memasukkan mereka ke semacam sekolah. Dalam hal ini, itu adalah <vocabulary>TK</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Akan membantu untuk mengetahui 幼稚 juga.', 'TK')
    RETURNING id INTO v_5347_tk;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '切符', 'tiket', 30, 89, '<kanji>potong</kanji> <kanji>token</kanji> adalah token yang Anda potong dari selembar kertas menjadi lembaran yang lebih kecil, dan masing-masing potongan ini adalah <vocabulary>tiket</vocabulary>.', 'Pembacaannya 切る disingkat menjadi きっ, lalu ふ rendaku menjadi ぷ. Ini kata yang agak merepotkan, jadi berkonsentrasilah pada hal ini sekarang sehingga Anda bisa mendapatkannya di ulasan.', 'Tiket')
    RETURNING id INTO v_5348_tiket;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '精一杯', 'sekuat-tenaga', 30, 90, 'Anda memasukkan <kanji>satu cangkir cairan</kanji>... bukan, satu cangkir penuh <kanji>spirit</kanji> cair ke dalam apa yang Anda lakukan. Tak satu pun dari sampah setengah cangkir ini. Yang penuh. Itu berarti Anda melakukannya <vocabulary>dengan sekuat tenaga</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Akan membantu jika Anda pernah melihat 一杯 sebelumnya.', 'Sekuat tenaga, Dengan Segenap Kekuatanmu')
    RETURNING id INTO v_5349_sekuat_tenaga;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '精神的', 'mental', 30, 91, '精神 Anda adalah roh atau pikiran Anda. Jika Anda menambahkan 的 ke dalamnya, Anda mendapatkan <vocabulary>mental</vocabulary>. Kata ini bisa berarti <vocabulary>spiritual</vocabulary> juga, tetapi kata ini lebih sering merujuk pada kondisi mental atau <vocabulary>emosional</vocabulary> seseorang.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Mental, Emosional, Rohani')
    RETURNING id INTO v_5350_mental;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '精神病', 'penyakit-jiwa', 30, 92, '精神 adalah roh atau pikiran Anda, bagian non-fisik dari diri Anda. Kalau <kanji>sakit</kanji>, itu adalah <vocabulary>penyakit mental</vocabulary> atau <vocabulary>gangguan mental</vocabulary>.

Perhatikan bahwa istilah 精神病, jika digunakan sendiri, membawa stigma dan dianggap tidak sopan dan ketinggalan jaman.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Akan membantu jika Anda sudah mengetahuinya.', 'Penyakit Jiwa, Gangguan Jiwa')
    RETURNING id INTO v_5351_penyakit_jiwa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '太陽系', 'tata-surya', 30, 93, 'Anda tahu 太陽 artinya "matahari", jadi mudah-mudahan Anda bisa menebak apa itu <kanji>sistem</kanji> matahari. Benar sekali — itulah <vocabulary>tata surya</vocabulary>!', 'Kata jukugo ini menggunakan bacaan on''yomi yang telah Anda pelajari. Anda juga pernah melihat 太陽 sebelumnya, jadi Anda akan baik-baik saja di sini.', 'Tata surya')
    RETURNING id INTO v_5354_tata_surya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '体系的', 'sistematis', 30, 94, 'Berikan <kanji>tubuh</kanji> ke <kanji>sistem</kanji> untuk menjadikannya sistem yang nyata dan terstruktur, Anda tahu? Kemudian tambahkan 的 ke dalamnya untuk membuatnya <vocabulary>sistematis</vocabulary>.

体系的 adalah kata formal untuk sesuatu yang mengikuti struktur atau kerangka kerja yang jelas, sering digunakan dalam konteks akademis. Misalnya, Anda mungkin mendengarnya ketika mendiskusikan pendekatan sistematis untuk memecahkan suatu masalah atau mengatur informasi secara sistematis.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Sistematis')
    RETURNING id INTO v_5355_sistematis;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '絶える', 'untuk-mati', 30, 95, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>mati</kanji> sehingga versi kosakata kata kerjanya adalah <vocabulary>to die out</vocabulary> atau <vocabulary>to come to end</vocabulary>.

絶える kebanyakan digunakan ketika sesuatu yang sedang berlangsung berakhir, seperti napas terhenti, tawa menghilang, pasokan terputus, atau lalu lintas pejalan kaki mereda. Kamu mengetahui hal ini karena ketika sesuatu padam, tidak ada yang tersisa kecuali udara tipis (える).', 'Bacaannya bisa berasal dari 絶つ, jadi selama kamu tahu kata itu, kamu juga pasti tahu kata ini.', 'Untuk Mati, Akan Berakhir')
    RETURNING id INTO v_5356_untuk_mati;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '翌日', 'hari-berikutnya', 30, 96, '<kanji>Hari berikutnya</kanji> <kanji>hari</kanji> hanya itu saja, <vocabulary>hari berikutnya</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Hari berikutnya, Keesokan harinya, Hari berikutnya')
    RETURNING id INTO v_5357_hari_berikutnya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '翌月', 'bulan-berikutnya', 30, 97, '<kanji>Bulan</kanji> berikutnya</kanji> adalah <vocabulary>bulan berikutnya</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Bulan Berikutnya, Bulan Depan, Bulan Berikutnya')
    RETURNING id INTO v_5358_bulan_berikutnya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '翌朝', 'pagi-berikutnya', 30, 98, '<kanji>Keesokan harinya</kanji> <kanji>pagi</kanji> adalah <vocabulary>keesokan paginya</vocabulary>.', 'Kata ini menggunakan gabungan bacaan on''yomi dan kun''yomi, namun beruntungnya Anda adalah bacaan yang Anda pelajari dengan kanji. Gunakan bacaan yang Anda pelajari, dan Anda tidak akan mendapat masalah!', 'Pagi berikutnya, Pagi berikutnya, Pagi berikutnya')
    RETURNING id INTO v_5359_pagi_berikutnya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '翌年', 'tahun-berikutnya', 30, 99, '<kanji>Tahun</kanji> berikutnya</kanji> adalah <vocabulary>tahun berikutnya</vocabulary>.', 'Pembacaannya bisa berupa on''yomi untuk 年 atau kun''yomi. Jadi, Anda bisa melakukan よくねん atau よくとし, atau sebaiknya keduanya.', 'Tahun Berikutnya, Tahun depan, Tahun Berikutnya')
    RETURNING id INTO v_5360_tahun_berikutnya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '背', 'tinggi', 30, 100, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Karena kata ini terdiri dari satu kanji, kemungkinan besar menggunakan bacaan kun''yomi. Anda tidak mempelajari bacaan ini, jadi inilah mnemonik untuk membantu Anda:

Di tempat asal Anda, setiap orang mengukur <vocabulary>tinggi badan</vocabulary> mereka dengan <reading>ce</reading>lery (せ). Tidak ada inci atau sentimeter untuk Anda, itu hanya batang seledri. Berapa tinggi batang seledri anda?', 'Tinggi, Kembali, Tulang belakang')
    RETURNING id INTO v_5361_tinggi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '一覧', 'sebuah-daftar', 30, 101, 'Hanya dengan <kanji>satu</kanji> <kanji>melihat</kanji> sesuatu, Anda dapat memperoleh semua informasi yang diperlukan, karena sesuatu itu adalah <vocabulary>daftar</vocabulary>. Daftar bagus yang memberi Anda sekilas <vocabulary>ikhtisar</vocabulary>. Sempurna untuk semua <vocabulary>melihat-lihat</vocabulary> yang harus Anda lakukan. Anda konsumen informasi yang sibuk, Anda.

一覧 biasanya mengacu pada daftar rapi yang dapat Anda baca dengan mudah untuk mendapatkan informasi yang Anda perlukan, seperti daftar tamu atau tabel data. Dengan する, ini menjadi kata kerja yang cukup formal untuk melihat sesuatu dengan cepat, seperti membaca sekilas laporan atau dengan santai memeriksa suatu tempat.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Sebuah Daftar, Sebuah Ikhtisar, Melihat ke Atas')
    RETURNING id INTO v_5362_sebuah_daftar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', 'ご覧', 'melihat', 30, 102, 'ご覧 adalah bentuk kata benda sopan dari 見る yang berarti <vocabulary>melihat</vocabulary>, <vocabulary>melihat</vocabulary>, atau <vocabulary>menonton</vocabulary>. Ini sering dipasangkan dengan 〜になる, seperti dalam ご覧になる, yang merupakan cara terhormat untuk menggambarkan tindakan 見る orang lain.

Beberapa frasa umum lainnya yang mungkin Anda dengar adalah ご覧ください (silakan lihat) atau ご覧のとおり (seperti yang Anda lihat). Kata-kata tersebut formal namun umum digunakan dalam pidato sopan, seperti dalam layanan pelanggan atau presentasi bisnis. ご覧 bahkan dapat digunakan sendiri sebagai perintah yang lembut, seperti ほら、そこをご覧 ("Hei, lihat ke sana").', 'Bacaannya sama dengan yang Anda pelajari dengan kanji. Lihatlah pelajaran selanjutnya, sekarang.', 'Melihat, Melihat, Menonton')
    RETURNING id INTO v_5363_melihat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '観覧', 'melihat', 30, 103, 'Jika Anda <kanji>melihat</kanji> dan <kanji>melihat</kanji> sesuatu, Anda sedang <vocabulary>melihat</vocabulary> benda itu, atau <vocabulary>menonton</vocabulary> itu.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Melihat, Menonton, Melihat')
    RETURNING id INTO v_5364_melihat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '貧しい', 'miskin', 30, 104, 'Ini adalah kanji tunggal dengan い di akhir, artinya Anda tahu itu mungkin kata sifat. Apa bentuk kata sifat dari <kanji>miskin</kanji>? <vocabulary>buruk</vocabulary>.', 'Anda tahu kata 先ず (まず)? Artinya adalah “pertama-tama”. Jadi, jika Anda <vocabulary>miskin</vocabulary>, <reading>pertama-tama</reading> (まず), Anda pasti ingin mendapatkan bantuan. Kedua, belajar bermain gitar dan membuat lelucon lucu.', 'Miskin')
    RETURNING id INTO v_5368_miskin;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '貧乏', 'miskin', 30, 105, 'Anda <kanji>miskin</kanji> dan uang/makanan sangat <kanji>langka</kanji> bagi Anda, sehingga membuat Anda <vocabulary>miskin</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Miskin, Kemiskinan')
    RETURNING id INTO v_5369_miskin;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '購入', 'pembelian', 30, 106, 'Ketika <kanji>pembelian</kanji> <kanji>mulai berlaku</kanji>, kamu telah melakukan <vocabulary>pembelian</vocabulary>.

購入 adalah kata yang relatif formal untuk tindakan membeli sesuatu.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Pembelian, Pembelian')
    RETURNING id INTO v_5370_pembelian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '購買', 'pembelian', 30, 107, 'Anda <kanji>membeli</kanji> <em>dan</em> <kanji>membeli</kanji> sesuatu? Itu adalah <vocabulary>pembelian</vocabulary> yang serius.

購買 adalah istilah formal untuk tindakan pembelian barang atau jasa, sebagian besar dalam konteks bisnis atau ekonomi. Ini sering digabungkan dengan kata lain, seperti 購買意欲 (selera konsumen) atau 購買力 (daya beli).

Dalam beberapa konteks, 購買 juga bisa merujuk pada <vocabulary>toko sekolah</vocabulary> atau <vocabulary>store kampus</vocabulary>, terutama di sekolah menengah atas atau universitas.', 'Pembacaannya adalah on''yomi, yang bagus untuk 購 tetapi tidak terlalu bagus untuk 買. Untungnya, bacaan untuk 買 adalah <reading>buy</reading> (ばい), yang sama dengan artinya, dan ini merupakan suatu kebetulan yang cukup menakjubkan.', 'Pembelian, Toko Sekolah, Toko Kampus')
    RETURNING id INTO v_5371_pembelian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '購読', 'berlangganan', 30, 108, 'Ini adalah <kanji>pembelian</kanji>d <kanji>dibaca</kanji> — terutama yang datang secara berkala. Dengan kata lain, <vocabulary>langganan</vocabulary>.

購読 secara khusus mengacu pada pembayaran berlangganan beberapa jenis bahan bacaan, seperti koran atau majalah, jadi pastikan untuk tidak menggunakannya untuk berlangganan gratis!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. On''yomi untuk 読 (どく) sama dengan bacaan di 読者. Jika Anda lupa, pikirkan bagaimana Anda baru saja berlangganan majalah <reading>dock</reading> (どく). Ini semua tentang dermaga dan hal-hal yang berhubungan dengan dermaga. Menarik sekali.', 'Berlangganan, Berlangganan')
    RETURNING id INTO v_5372_berlangganan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '越える', 'untuk-melampauinya', 30, 109, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri artinya <kanji>melampaui</kanji>, versi kosakata kata kerjanya adalah <vocabulary>to go beyond</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda:

<vocabulary>Untuk melampaui</vocabulary> <reading>anak-anak</reading> (こ) tahun untuk menjadi dewasa, Anda harus berusia 18 tahun di AS dan Jepang.', 'Untuk Melampauinya, Untuk Menyeberang')
    RETURNING id INTO v_5373_untuk_melampauinya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '越権', 'melampaui-otoritas-anda', 30, 110, 'Jika Anda <kanji>melampaui</kanji> <kanji>hak</kanji> Anda, Anda bertindak terlalu jauh. Anda melakukan apa yang tidak seharusnya Anda lakukan, dan Anda melampaui wewenang Anda.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Melampaui Otoritas Anda, Melampaui Kewenangan Seseorang, Melampaui Kewenangan Seseorang')
    RETURNING id INTO v_5374_melampaui_otoritas_anda;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '逆さま', 'terbalik', 30, 111, 'Ada yang <kanji>terbalik</kanji>, itu yang Anda tahu.さま berasal dari 様, yang bisa berarti <kanji>cara</kanji>. Jadi, sesuatu yang "terbalik", adalah sesuatu yang <vocabulary>terbalik</vocabulary>.', 'Bacaannya berasal dari 逆らう dan 様, disatukan. Sedikit <vocabulary>terbalik</vocabulary> jika saya sendiri yang mengatakannya, tapi lakukan saja apa yang harus Anda lakukan.', 'Terbalik')
    RETURNING id INTO v_5375_terbalik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '遊ぶ', 'untuk-bermain', 30, 112, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>bermain</kanji> dan versi kosakata kata kerjanya adalah <vocabulary>to play</vocabulary>.', 'Anda ingin <vocabulary>bermain</vocabulary> dengan semua orang, namun sesekali seseorang tidak ingin bermain dengan Anda. Anda tahu apa? Tidak apa-apa. Jika seseorang tidak ingin bermain dengan Anda, merekalah <reading>a**hole</reading> (あそ), bukan Anda.', 'Untuk Bermain')
    RETURNING id INTO v_5376_untuk_bermain;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '遊園地', 'taman-hiburan', 30, 113, '<kanji>bermain</kanji> <kanji>taman</kanji> <kanji>lapangan</kanji> adalah tempat Anda bermain. Itu menyenangkan. Ini adalah <vocabulary>taman hiburan</vocabulary>!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Taman Hiburan, Taman Hiburan')
    RETURNING id INTO v_5377_taman_hiburan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '適当', 'sesuai', 30, 114, 'Semuanya <kanji>cocok</kanji> dan <kanji>benar</kanji>. Oleh karena itu <vocabulary>pantas</vocabulary>, <vocabulary>pantas</vocabulary>, dan <vocabulary>cocok</vocabulary>. Anehnya, ini juga berarti <vocabulary>tidak bertanggung jawab</vocabulary>. Mungkin karena ketika semuanya cocok dan tepat untuk Anda, Anda mengambil terlalu banyak dan tidak menyisakan cukup untuk orang lain, sehingga membuat Anda tidak bertanggung jawab?', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Sesuai, Sesuai, Sesuai, Tidak bertanggung jawab')
    RETURNING id INTO v_5378_sesuai;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '不適', 'tidak-cocok', 30, 115, 'Sesuatu yang <kanji>tidak</kanji> <kanji>cocok</kanji> adalah <vocabulary>tidak cocok</vocabulary> dan <vocabulary>tidak pantas</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Tidak cocok, Tidak pantas')
    RETURNING id INTO v_5379_tidak_cocok;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '登録する', 'untuk-mendaftar', 30, 116, '登録 adalah <kanji>pendaftaran</kanji>. Jadikan itu menjadi kata kerja dan Anda memiliki <vocabulary>untuk mendaftar</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Untuk Mendaftar')
    RETURNING id INTO v_5380_untuk_mendaftar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '預ける', 'untuk-menyetor', 30, 117, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>menyetor</kanji> sehingga versi kosakata kata kerjanya adalah <vocabulary>to deposit</vocabulary> atau <vocabulary>to mempercayakan</vocabulary>. 

Anda menggunakan 預ける ketika Anda meninggalkan sesuatu dalam perawatan orang lain untuk sementara waktu, berharap mendapatkannya kembali. Misalnya, Anda dapat menggunakan 預ける ketika Anda menyimpan uang di bank, meninggalkan mantel Anda di ruang ganti, atau bahkan ketika Anda memarkir sepeda di tempat parkir. Anda juga dapat menggunakannya saat Anda meninggalkan anak Anda bersama kakek-nenek atau meninggalkan anjing Anda di hotel hewan peliharaan.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Dalam hal tempat di mana Anda ingin <vocabulary>menyetorkan</vocabulary> uang Anda, tempat terakhir dalam daftar Anda adalah <reading>kebun binatang</reading> (あず). Maksud saya serius, Anda tahu hewan-hewan itu akan menghabiskan semua uang Anda.', 'Untuk Menyetor, Untuk Mempercayakan, Untuk Meninggalkan Sesuatu Dengan Seseorang')
    RETURNING id INTO v_5381_untuk_menyetor;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '預金', 'setoran-bank', 30, 118, '<kanji>Setor</kanji> <kanji>emas</kanji> Anda di sini, di bank. Bila Anda melakukannya, itu adalah <vocabulary>deposit bank</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Setoran Bank, Deposito, Rekening Bank')
    RETURNING id INTO v_5382_setoran_bank;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '飾る', 'untuk-menghias', 30, 119, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri artinya <kanji>menghias</kanji>. Versi kosakata kata kerjanya adalah <kosakata>menghias</kosakata>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: <vocabulary>Untuk menghias</vocabulary> sesuatu, Anda tidak benar-benar membutuhkan <reading>penyebab</reading> (かざ). Anda sebaiknya melakukannya saja, hanya karena<reading>karena</reading>.', 'Untuk Menghias')
    RETURNING id INTO v_5383_untuk_menghias;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '服飾', 'pakaian', 30, 120, '<kanji>pakaian</kanji> yang saya <kanji>dekorasi</kanji> adalah <vocabulary>pakaian</vocabulary> atau <vocabulary>fashion</vocabulary> saya.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Pakaian, Mode, Pakaian')
    RETURNING id INTO v_5384_pakaian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '電飾', 'pencahayaan-dekoratif', 30, 121, '電 adalah yang menggerakkan benda-benda listrik. Sering kali, benda-benda listrik ini menyala (terutama di masa lalu, ketika listrik lebih sering melakukan hal ini dibandingkan benda-benda lainnya). Jadi, Anda memiliki "pencahayaan". Lalu, Anda harus <kanji>menghias</kanji>. Jadi, jika Anda mendekorasi dengan pencahayaan, Anda memiliki <vocabulary>pencahayaan dekoratif</vocabulary>.

Ini adalah kata yang cukup spesifik yang umumnya digunakan sebagai kategori produk lampu hias. Ini adalah kata yang kurang umum dibandingkan ungkapan lain, seperti デコレーションライト atau イルミネーションライト.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Pencahayaan Dekoratif')
    RETURNING id INTO v_5385_pencahayaan_dekoratif;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '騒ぐ', 'untuk-membuat-kebisingan', 30, 122, 'Kanjinya <kanji>riuh</kanji>. Versi kata kerjanya adalah <vocabulary>to make noise</vocabulary> atau <vocabulary>menjadi riuh</vocabulary>. Pada dasarnya, Anda sedang riuh ketika Anda membuat banyak kebisingan, jadi dari situlah asalnya.', 'Kamu akan selalu <vocabulary>membuat keributan</vocabulary> dan menjadi riuh saat kamu makan sesuatu yang <reading>asam</reading> (さわ). Bayangkan memasukkan irisan lemon, permen asam, dan umeboshi ke dalam mulut Anda. Sekaligus. Lihat berapa banyak kebisingan yang kamu buat? Rasanya asam sekali, dan membuatmu jadi riuh.', 'Untuk Membuat Kebisingan, Menjadi Riuh, Untuk Membuat Keributan')
    RETURNING id INTO v_5386_untuk_membuat_kebisingan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '騒音', 'kebisingan', 30, 123, '<kanji>Suara</kanji> <kanji>suara</kanji> adalah saat ada banyak <vocabulary>kebisingan</vocabulary> di sekitar Anda. Ini adalah <vocabulary>keributan</vocabulary> orang banyak atau lingkungan.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kebisingan, Keriuhan')
    RETURNING id INTO v_5387_kebisingan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '攻撃する', 'untuk-menyerang', 30, 124, '攻撃 adalah <kanji>serangan</kanji>. Jadikan itu menjadi kata kerja dan Anda memiliki <vocabulary>untuk menyerang</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Mengetahui 攻撃 juga akan membantu.', 'Untuk Menyerang')
    RETURNING id INTO v_5399_untuk_menyerang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '先程', 'beberapa-waktu-yang-lalu', 30, 125, '<kanji>sebelumnya</kanji> <kanji>jangka</kanji> waktu adalah <vocabulary>beberapa saat yang lalu</vocabulary>. Bayangkan saja beberapa waktu yang lalu, yang memang terjadi beberapa saat yang lalu. Sekarang, rekan!

先程 terbatas pada jangka waktu yang relatif singkat dalam hari yang sama. Jadi bisa digunakan untuk sesuatu yang disebutkan sebelumnya dalam pidato atau pada acara <vocabulary>di hari sebelumnya</vocabulary>, tapi tidak untuk sesuatu dari beberapa hari yang lalu. 先程 juga sopan dan formal, jadi biasanya digunakan dalam suasana profesional atau hormat.', 'Bacaannya adalah kata 先 dan 程 yang disatukan.', 'Beberapa waktu yang lalu, Sebelumnya Pada Hari Itu, Beberapa waktu yang lalu')
    RETURNING id INTO v_5400_beberapa_waktu_yang_lalu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '官僚的', 'birokratis', 30, 126, 'Jika 官僚 adalah "birokrasi", maka menambahkan 的 ke dalamnya akan menjadikannya <vocabulary>birokratis</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Mengetahui 官僚 juga akan banyak membantu.', 'Birokratis')
    RETURNING id INTO v_5401_birokratis;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '総理大臣', 'perdana-menteri', 30, 127, '<kanji>seluruh</kanji> <kanji>alasan</kanji> negara kita masih berjalan adalah karena "menteri" kita (大臣). Menteri yang mana? <vocabulary>perdana menteri</vocabulary>, tentu saja. Tanpa perdana menteri kita, saya katakan kita semua akan hancur. HANCUR!

Berbeda dengan 首相, yang bisa digunakan untuk perdana menteri mana pun, kata ini hanya digunakan untuk <vocabulary>Perdana Menteri Jepang</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri. Ini juga berisi kosakata yang Anda pelajari baru-baru ini, 大臣!', 'Perdana Menteri, Perdana Menteri Jepang')
    RETURNING id INTO v_5425_perdana_menteri;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '移る', 'akan-digeser', 30, 128, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>bergeser</kanji> dan versi kosakata kata kerjanya adalah <vocabulary>digeser</vocabulary>. Anda tahu bahwa di sinilah sesuatu digeser (dan Anda tidak melakukan pergeseran tersebut), karena sebenarnya <reading>ru</reading>de (る) harus digeser, dan Anda tidak suka kalau orang lain melakukannya kepada Anda (karena anehnya hal itu sering terjadi).', 'Bacaannya sama dengan 移す, jadi gunakanlah itu untuk mengingatnya!', 'Akan Digeser, Untuk Ditransfer')
    RETURNING id INTO v_5504_akan_digeser;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '垂らす', 'untuk-menggantung-sesuatu', 30, 129, 'Anda telah mengetahui bahwa 垂れる berarti "terkulai" atau "menetes". Nah, ini versi transitifnya, artinya mengambil objek langsung. Kali ini, Andalah yang membuat sesuatu terkulai atau menetes, itulah sebabnya kata ini berarti <vocabulary>menggantung sesuatu</vocabulary> atau <vocabulary>menggiring sesuatu</vocabulary>. Anda dapat mengingat bahwa kata tersebut bersifat transitif karena akhiran す, yang telah Anda lihat pada banyak kata kerja transitif sekarang.

垂らす menggambarkan saat Anda menjuntai sesuatu atau membiarkan sesuatu menggantung sedemikian rupa sehingga memungkinkan gravitasi bekerja padanya, seperti menggantungkan tali pancing saat memancing. Kata ini juga digunakan untuk menggambarkan membiarkan sesuatu menetes - misalnya, anak kecil membiarkan lendir menetes dari hidungnya atau orang yang sedang tidur mengeluarkan air liur dari mulutnya.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda mempelajari bacaan ini dengan 垂れる, tapi inilah mnemonik untuk berjaga-jaga jika Anda lupa:

Anda akan <vocabulary>menggantungkan sesuatu</vocabulary>, tapi apa? Anda akan menjuntai <reading>ta</reading>co (た) di depan orang yang lapar. Sejujurnya, tindakannya agak brengsek. Anda juga mungkin akan menggiring saus taco ke seluruh bajunya, yang akan memberi Anda poin brengsek ganda.', 'Untuk Menggantung Sesuatu, Untuk Menggiring Bola Sesuatu')
    RETURNING id INTO v_5629_untuk_menggantung_sesuatu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '怖がる', 'menjadi-takut', 30, 130, '怖い adalah "menakutkan." Ini adalah versi kata kerja, menjadikannya <vocabulary>menjadi takut</vocabulary> atau <vocabulary>menjadi takut</vocabulary>.', 'Bacaannya berasal dari 怖い.', 'Menjadi Takut, Takut, Takut')
    RETURNING id INTO v_5701_menjadi_takut;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '主', 'pemilik', 30, 131, '<kanji>master</kanji> adalah <vocabulary>pemilik</vocabulary> yang memiliki dominasi atau kendali atas sesuatu.

主 biasanya digunakan dengan kata lain untuk menunjukkan seseorang yang memiliki sesuatu atau yang secara prinsip terlibat dalam suatu tindakan. Ini mungkin terdengar agak kabur, jadi periksalah kolokasi dan konteks kalimatnya untuk lebih memahami kata ini!', 'Pembacaannya tentu saja berbeda dengan yang Anda pelajari dengan kanji. Pikirkan ini:

<vocabulary>pemilik</vocabulary> dari <reading>nu</reading>de <reading>shee</reading>p (ぬし) itu bahkan tidak membutuhkan wolnya, dia hanya suka memiliki domba telanjang. Jadi dia memeliharanya sebagai hewan peliharaan dan mencukurnya setiap hari. Dia tidak tertarik pada domba berbulu. Hanya domba telanjang untuk pemilik ini!', 'Pemilik')
    RETURNING id INTO v_5716_pemilik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '埋もれる', 'untuk-dikuburkan', 30, 132, 'Anda tahu bahwa 埋まる berarti "dikuburkan". Kata kerja ini juga <vocabulary>dikuburkan</vocabulary> atau <vocabulary>dikuburkan</vocabulary>. 

Namun, ada sedikit perbedaan di antara keduanya. 埋まる berfokus pada subjek itu sendiri yang terkubur atau terisi, sedangkan 埋もれる menyoroti perasaan ada sesuatu yang disembunyikan atau dikaburkan karena ditutupi. Jadi Anda bisa menggunakannya untuk menggambarkan halaman yang tertutup salju atau bakat Anda dibayangi dalam lingkungan yang kompetitif. 

Anda dapat mengingat nuansa ini karena <reading>lebih jarang</reading> (もれる) melihat sesuatu yang terkubur dan ditutupi seluruhnya.', 'Bacaannya berasal dari 埋める.', 'Untuk Dikuburkan, Untuk Dikuburkan, Untuk Dicakup')
    RETURNING id INTO v_6456_untuk_dikuburkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '街灯', 'lampu-jalan', 30, 133, '<kanji>jalanan</kanji> diterangi oleh <kanji>lampu</kanji> — <vocabulary>lampu jalan</vocabulary>, lebih spesifiknya! Dan malam hari di kota pasti akan lebih menakutkan tanpa mereka.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Lampu jalan, Lampu jalan')
    RETURNING id INTO v_7227_lampu_jalan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '電灯', 'lampu-listrik', 30, 134, '<kanji>lampu</kanji> <kanji>listrik</kanji> persis seperti namanya: <vocabulary>lampu listrik</vocabulary> atau <vocabulary>lampu listrik</vocabulary>.

電灯 adalah kata yang sedikit teknis yang secara luas mengacu pada penerangan listrik. Ini dapat mencakup berbagai jenis perangkat penerangan, seperti bola lampu, lampu neon, lampu jalan, dan senter, namun paling sering digunakan untuk lampu tetap yang menerangi ruangan atau jalan.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Lampu Listrik, Lampu Listrik')
    RETURNING id INTO v_7228_lampu_listrik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '背後', 'latar-belakang', 30, 135, 'Sesuatu yang berada <kanji>di belakang</kanji> <kanji>punggung</kanji> Anda ada di <vocabulary>latar belakang</vocabulary>. Ini mungkin juga berkomplot melawan Anda, <vocabulary>di belakang layar</vocabulary>. Licik, licik.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Selama Anda mengetahui bacaan kanji ini, Anda seharusnya bisa membaca kata ini dengan baik.', 'Latar belakang, Di belakang layar')
    RETURNING id INTO v_7554_latar_belakang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '快楽', 'kesenangan', 30, 136, '<kanji>Menyenangkan</kanji> <kanji>kenyamanan</kanji> memberi Anda banyak <vocabulary>kesenangan</vocabulary>.

快楽 lebih umum digunakan dalam tulisan dan sering kali menggambarkan kesenangan dengan rasa memanjakan, terutama kesenangan fisik atau indrawi.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Kesenangan')
    RETURNING id INTO v_7659_kesenangan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '快適', 'menyenangkan', 30, 137, 'Sesuatu yang <kanji>menyenangkan</kanji> dan <kanji>cocok</kanji> tetaplah <vocabulary>menyenangkan</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Menyenangkan, Menyenangkan, Nyaman')
    RETURNING id INTO v_7719_menyenangkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '成程', 'jadi-begitu', 30, 138, 'Jika Anda <kanji>menjadi</kanji> menyadari sesuatu sampai <kanji>sampai</kanji>, Anda akhirnya akan mengatakan <vocabulary>Saya mengerti</vocabulary> atau <vocabulary>yang masuk akal</vocabulary>! Namun Anda tidak akan melihat jika Anda tidak cukup sadar. Jadi, sejauh itulah pemahaman yang ingin Anda capai sebelum Anda dapat menjawab dengan "Ahh, <vocabulary>memang</vocabulary>."

成程 adalah ungkapan umum yang digunakan untuk menyatakan pemahaman atau menyatakan persetujuan terhadap sesuatu yang baru saja dijelaskan kepada Anda. Ini dapat digunakan dalam percakapan formal dan informal. Perlu diingat kata ini biasanya ditulis dalam huruf kana!', 'Bacaan kata ini sama-sama bacaan kun''yomi. Pembacaan 成 berasal dari 成る dan mempertahankan bagian る. Itu hanya tersembunyi di kanji. Jika Anda dapat mengingatnya, Anda pasti tahu bacaan ini!', 'Jadi begitu, Itu Masuk Akal, Memang, Itu benar')
    RETURNING id INTO v_7771_jadi_begitu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '押し', 'dorongan', 30, 139, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan kanji yang Anda pelajari, artinya Anda tahu bacaannya!', 'Dorongan, Tekanan')
    RETURNING id INTO v_7773_dorongan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '玄米', 'beras-yang-belum-dipoles', 30, 140, 'Anda telah mengetahui bahwa 玄 berarti "misterius", tetapi ingatkah Anda bahwa kata itu juga bisa berarti "gelap"? Ya, <kanji>beras</kanji> gelap</kanji> adalah <vocabulary>beras mentah</vocabulary> — alias <vocabulary>beras merah</vocabulary>. Sekilas, kamu mungkin mengira itu adalah makanan keren dan edgy yang dimakan para antihero, tapi kanji sebenarnya hanya berasal dari nasi merah yang warnanya lebih gelap dibandingkan nasi putih.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda tidak mempelajari bacaan ini untuk 米, jadi inilah mnemonik untuk membantu Anda:

Masalah terbesar saat Anda membeli <vocabulary>beras mentah</vocabulary> adalah <reading>mic</reading>e (まい)! Tikus suka makan dan tidur di <vocabulary>nasi merah</vocabulary>, jadi Anda harus berhati-hati saat membeli tas yang akan menyingkirkan semua tikus yang tertidur sebelum Anda mencoba memasaknya.', 'Beras yang belum dipoles, Beras merah')
    RETURNING id INTO v_7812_beras_yang_belum_dipoles;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '程よく', 'dengan-baik', 30, 141, 'Jika <kanji>sejauh</kanji> Anda melakukan sesuatu sudah dilakukan dengan benar (よく), maka Anda melakukannya <vocabulary>dengan benar</vocabulary> dan <vocabulary>dengan baik</vocabulary>!', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi.  Anda sudah mempelajari bacaan ini! Bagus!', 'Dengan baik, Dengan baik')
    RETURNING id INTO v_8685_dengan_baik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '匂う', 'untuk-mencium', 30, 142, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>bau</kanji> sehingga versi kata kerjanya adalah <vocabulary>mencium</vocabulary>.

Meskipun 匂う secara teknis adalah istilah netral, sering kali kata tersebut berarti <kosa kata>berbau tidak enak</vocabulary>. Untuk menekankan baunya, Anda juga bisa menggunakan kanji 臭 sebagai pengganti 匂.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda mempelajari bacaan ini dengan kanji, jadi Anda seharusnya sudah bisa membacanya!', 'Untuk Mencium, Berbau Buruk')
    RETURNING id INTO v_8842_untuk_mencium;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '濡らす', 'menjadi-basah', 30, 143, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>basah</kanji> atau <kanji>lembab</kanji>, jadi versi kata kerjanya adalah <vocabulary>to wet</vocabulary> atau <vocabulary>to dampen</vocabulary> sesuatu.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda mempelajari bacaan ini dengan kanji, jadi Anda seharusnya sudah bisa membacanya!', 'Menjadi Basah, Untuk Melembabkan, Untuk Meredam, Untuk Merendam')
    RETURNING id INTO v_8875_menjadi_basah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '寄せる', 'untuk-memindahkan-sesuatu-yang-dekat', 30, 144, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja.

Ini adalah kata kerja transitif. Artinya dibutuhkan objek langsung. Kanjinya sendiri berarti <kanji>mendekat</kanji>, dan versi kata kerjanya adalah membuat atau membiarkan sesuatu mendekat ke sesuatu yang lain. Itulah sebabnya <vocabulary>memindahkan sesuatu mendekati</vocabulary>, <vocabulary>menyingkirkan sesuatu</vocabulary>, dan juga <vocabulary>menyumbangkan sesuatu</vocabulary>.', 'Anda ingin <vocabulary>memindahkan sesuatu ke dekat</vocabulary> Anda, namun benda tersebut di luar jangkauan. Solusinya, tentu saja, adalah dengan mengeluarkan <reading>yo</reading>-yo (よ) dan laso kepercayaan Anda dan menariknya lebih dekat!', 'Untuk Memindahkan Sesuatu Yang Dekat, Untuk Menarik Sesuatu, Untuk Menyumbangkan Sesuatu')
    RETURNING id INTO v_8929_untuk_memindahkan_sesuatu_yang_dekat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '退ける', 'untuk-menolak-sesuatu', 30, 145, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. 

Kanjinya sendiri berarti <kanji>mundur</kanji>, dan versi kata kerja ini adalah saat Anda melakukan sesuatu mundur. Dengan kata lain, <vocabulary>menolak sesuatu</vocabulary>, <vocabulary>menolak sesuatu</vocabulary>, atau <vocabulary>menolak sesuatu</vocabulary>.

Ini adalah kata kerja transitif. Artinya dibutuhkan objek langsung. Anda menolak sesuatu, seperti nasib buruk. Anda menolak sesuatu, seperti lamaran.', 'Karena kata ini memiliki okurigana (hiragana yang melekat pada kanji), Anda tahu bahwa kemungkinan besar itu adalah bacaan kun''yomi. Anda mempelajarinya dengan kata kerja berpasangan intransitif 退く, namun berikut adalah mnemonik untuk berjaga-jaga:

Ingat zonasi ulang? Nah, <vocabulary>untuk mengusir</vocabulary> kesialan, <reading>dia, menata ulang (しりぞ) seluruh tempat. Nasib buruk tidak diperbolehkan masuk ke dalam zona.', 'Untuk Menolak Sesuatu, Untuk Mengabaikan Sesuatu, Untuk Menolak Sesuatu')
    RETURNING id INTO v_8930_untuk_menolak_sesuatu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '痛める', 'untuk-melukai-sesuatu', 30, 146, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. 

Kanjinya sendiri artinya <kanji>sakit</kanji>, dan kata kerja ini bersifat transitif, jadi artinya menimbulkan rasa sakit. Dengan kata lain, <vocabulary>melukai sesuatu</vocabulary> atau <vocabulary>menyakiti seseorang</vocabulary>.

Kata kerja ini berfokus pada rasa sakit yang timbul akibat suatu cedera, sehingga hanya dapat digunakan untuk benda yang merasakan sakit, seperti orang dan bagian tubuh.', 'Karena kata ini memiliki okurigana (hiragana yang melekat pada kanji), Anda tahu bahwa kemungkinan besar itu adalah bacaan kun''yomi. Anda mempelajari bacaan itu dengan kata 痛い.', 'Untuk Melukai Sesuatu, Untuk Menyakiti Sesuatu, Untuk Menyakiti Seseorang')
    RETURNING id INTO v_8934_untuk_melukai_sesuatu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '柵', 'pagar', 30, 147, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna. Bukankah itu sangat menarik?', 'Kata ini menggunakan on''yomi, yang Anda pelajari dengan kanji. Bayangkan saja tentang <reading>karung</reading> (さく) yang tergantung di <vocabulary>pagar</vocabulary>.', 'Pagar')
    RETURNING id INTO v_8980_pagar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '鉄柵', 'pagar-besi', 30, 148, 'Siap untuk yang ini? <kanji>besi</kanji> <kanji>pagar </kanji> adalah <vocabulary>pagar besi</vocabulary>. Tidakkah Anda menyukainya jika itu berterus terang?', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri. Namun berhati-hatilah, 鉄 biasanya dibaca sebagai てつ, namun dalam kasus ini disingkat menjadi てっ.', 'Pagar Besi')
    RETURNING id INTO v_8981_pagar_besi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '電気柵', 'pagar-listrik', 30, 149, 'Jika kamu menggabungkan 電気 (listrik) dengan 柵 (<kanji>pagar</kanji>), kamu mempunyai <vocabulary>pagar listrik</vocabulary>. Mengejutkan, saya tahu.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Pagar Listrik')
    RETURNING id INTO v_8982_pagar_listrik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '我が〜', 'kita', 30, 150, 'Di sini kita memiliki <kanji>I</kanji> yang diikuti oleh partikel が, yang memberi kita cara yang agak kuno dan bergaya untuk mengucapkan <vocabulary>kita</vocabulary>, <vocabulary>milik sendiri</vocabulary>, atau <vocabulary>my</vocabulary>.

Salah satu penjelasannya adalah bahwa dalam bahasa Jepang kuno, が digunakan sebagai partikel posesif, seperti halnya の dalam bahasa Jepang modern.', 'Anda belum mempelajari bacaan ini selama 我, jadi inilah mnemonik untuk membantu Anda:

Izinkan kami mempersembahkan <vocabulary>kami</vocabulary> <reading>wa</reading>lrus (わ). Sebenarnya itu <vocabulary>my</vocabulary> walrus saya, tapi saya senang membagikannya.', 'Kita, Milik sendiri, -ku')
    RETURNING id INTO v_9047_kita;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '押さえる', 'untuk-menahan-sesuatu', 30, 151, 'Kanji berarti <kanji>mendorong</kanji>, dan kata kerjanya memiliki arti seperti <vocabulary>menahan sesuatu</vocabulary> dan <vocabulary>memahami sesuatu</vocabulary>. Kata kerja ini cukup serbaguna, dan Anda dapat menggunakannya saat Anda sedang memegang selembar kertas, menempelkan kain pada luka, atau sedang memahami sebuah konsep.', 'Bacaannya sama dengan kanji yang Anda pelajari, jadi semoga Anda bisa membacanya sendiri.', 'Untuk Menahan Sesuatu, Untuk Memahami Sesuatu')
    RETURNING id INTO v_9080_untuk_menahan_sesuatu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '豚骨ラーメン', 'ramen-tonkotsu', 30, 152, '<kanji>Ramen <kanji>tulang</kanji> babi adalah <vocabulary>tonkotsu ramen</vocabulary> atau, secara logika, <vocabulary>ramen tulang babi</vocabulary>.

豚骨ラーメン adalah sejenis ramen Jepang yang dibuat dengan kaldu kental dan kental dari 豚骨 (tulang babi). Tulangnya direbus selama berjam-jam untuk mengekstrak rasa, menghasilkan sup yang beraroma dan lezat. Ini sangat lezat, Anda akan kembali lagi. nafsu makan <em>Tulang</em>!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda mengetahui kedua bacaan ini, namun jika Anda memerlukan pengingat, inilah mnemonik untuk membantu Anda:

Anda sangat menyukai <vocabulary>tonkotsu ramen</vocabulary> jadi Anda hanya memakannya <read>ton</reading> (とん) penuh. Bayangkan bagaimana perasaan Anda setelah makan banyak <vocabulary>ramen tulang babi</vocabulary>.', 'Ramen Tonkotsu, Ramen Tulang Babi')
    RETURNING id INTO v_9089_ramen_tonkotsu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '節々', 'berbagai-sendi', 30, 153, '<kanji>sendi</kanji> <kanji>sendi</kanji> Anda adalah <vocabulary>berbagai sendi</vocabulary> Anda, atau bahkan <vocabulary>setiap sendi</vocabulary> di tubuh Anda, atau bagian tubuh tertentu. Jika kita tidak berbicara tentang persendian di tubuh Anda, artinya adalah seperti <vocabulary>berbagai bagian</vocabulary>, mengacu pada berbagai bagian dari keseluruhan.', 'Ini hanyalah kun''yomi dari 節, yang Anda pelajari dengan 節目, diulang dua kali. Perlu diingat bahwa ふし kedua mendapat rendaku menjadi ぶし!', 'Berbagai Sendi, Setiap Sendi, Berbagai Bagian')
    RETURNING id INTO v_9165_berbagai_sendi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '揃える', 'untuk-mengatur-sesuatu', 30, 154, 'Ingat 揃う, "menjadi lengkap"? Ini adalah versi transitifnya, dan artinya seperti <vocabulary>menyusun sesuatu</vocabulary>, <vocabulary>mengumpulkan sesuatu</vocabulary>, dan <vocabulary>menyelaraskan sesuatu</vocabulary>.

Yang ini agak sulit untuk dipahami dan diterjemahkan dengan baik. Pada intinya, kata kerja ini menggambarkan tindakan mengatur semua hal yang diperlukan untuk sesuatu. Tapi itu juga bisa menggambarkan menyelaraskan hal-hal tertentu dengan cara yang seragam dan serasi. Jika ini masih belum jelas, perhatikan baik-baik konteks kalimat dan kolokasi kami!', 'Karena kata ini memiliki okurigana (hiragana yang melekat pada kanji), Anda tahu bahwa kemungkinan besar itu adalah bacaan kun''yomi. Anda sudah mengetahui hal ini, jadi semuanya baik-baik saja di sini!', 'Untuk Mengatur Sesuatu, Untuk Mengumpulkan Sesuatu, Untuk Menyelaraskan Sesuatu')
    RETURNING id INTO v_9263_untuk_mengatur_sesuatu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '鉄板', 'plat-besi', 30, 155, 'Nah, Anda punya <kanji>besi</kanji> dan Anda punya <kanji>papan</kanji>. Anda mungkin akan menyebutnya sebagai <vocabulary>iron plate</vocabulary>. Namun seringkali ini bukan sembarang pelat besi. Jika Anda bisa menebak dari bacaannya, ini sering digunakan dalam memasak sebagai <vocabulary>wajan besi</vocabulary>, atau <vocabulary>pemanggang teppan</vocabulary>. Pernah dengar Teppanyaki?

Secara kiasan, ini berarti <vocabulary>hal yang pasti</vocabulary> atau kesuksesan yang terjamin secara praktis. Misalnya, Anda dapat menggunakan 鉄板 untuk kuda pacuan yang hampir pasti menang, atau lelucon yang selalu mengundang tawa.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Hati-hati dengan rendaku dan kamu pasti enak!', 'Plat besi, Wajan Besi, Panggangan Teppan, Tentu saja')
    RETURNING id INTO v_9290_plat_besi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '姪', 'keponakan-perempuan', 30, 156, 'Ini hanyalah kanji <kanji>keponakan</kanji> sebagai kosakata, jadi ini juga berarti <vocabulary>keponakan</vocabulary>!', 'Sebagai kosakata yang berdiri sendiri, ini menggunakan bacaan kun''yomi. Untungnya, itulah yang Anda pelajari dengan kanji, jadi tidak ada bacaan baru di sini!', 'Keponakan perempuan')
    RETURNING id INTO v_9336_keponakan_perempuan;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3968_penyebab_utama, 'Penyebab Utama', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3968_penyebab_utama, 'Penyebab Utama', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4423_perdana_menteri, 'Perdana Menteri', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4423_perdana_menteri, 'Perdana Menteri Jepang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5042_pendirian, 'Pendirian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5042_pendirian, 'Sikap', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5042_pendirian, 'Struktur', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5078_harakiri, 'Harakiri', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5078_harakiri, 'Ritual Bunuh Diri', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5129_perlakuan, 'Perlakuan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5129_perlakuan, 'Ukuran', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5129_perlakuan, 'Pembuangan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5129_perlakuan, 'Menghadapi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5138_eksposisi, 'Eksposisi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5138_eksposisi, 'Pameran', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5138_eksposisi, 'Adil', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5153_halus, 'Halus', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5153_halus, 'Pingsan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5153_halus, 'Kabur', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5153_halus, 'Redup', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5181_emigran, 'Emigran', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5181_emigran, 'Imigran', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5181_emigran, 'Migran', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5283_untuk_diisi, 'Untuk Diisi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5283_untuk_diisi, 'Dipenuhi Penuh', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5283_untuk_diisi, 'Terjebak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5283_untuk_diisi, 'Menjadi Tersumbat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5296_daya_tarik, 'Daya tarik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5296_daya_tarik, 'Pesona', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5296_daya_tarik, 'Daya tarik', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5296_daya_tarik, 'Menarik', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5297_untuk_menyejajarkan_sesuatu, 'Untuk Menyejajarkan Sesuatu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5297_untuk_menyejajarkan_sesuatu, 'Untuk Menata Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5298_langka, 'Langka', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5298_langka, 'Kurus', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5298_langka, 'Kekurangan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5299_kekurangan, 'Kekurangan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5299_kekurangan, 'Kelangkaan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5299_kekurangan, 'Kekurangan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5300_untuk_mendinginkan_sesuatu, 'Untuk Mendinginkan Sesuatu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5300_untuk_mendinginkan_sesuatu, 'Untuk Mendinginkan Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5301_pernikahan, 'Pernikahan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5302_lamaran_pernikahan, 'Lamaran Pernikahan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5303_bulan_madu, 'Bulan madu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5304_belum_menikah, 'Belum menikah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5308_untuk_memperpanjang_sesuatu, 'Untuk Memperpanjang Sesuatu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5308_untuk_memperpanjang_sesuatu, 'Untuk Memperpanjang Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5308_untuk_memperpanjang_sesuatu, 'Untuk Memperluas Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5309_memperpanjang, 'Memperpanjang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5309_memperpanjang, 'Perpanjangan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5310_untuk_menunda, 'Untuk Menunda', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5311_menyenangkan, 'Menyenangkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5312_kesenangan, 'Kesenangan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5312_kesenangan, 'Perasaan Menyenangkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5313_kecepatan_tinggi, 'Kecepatan Tinggi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5313_kecepatan_tinggi, 'Cepat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5314_tidak_menyenangkan, 'Tidak menyenangkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5314_tidak_menyenangkan, 'Tidak nyaman', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5315_rindu, 'Rindu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5315_rindu, 'Nostalgia', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5316_untuk_mendorong, 'Untuk Mendorong', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5317_untuk_mengambil_gambar, 'Untuk Mengambil Gambar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5317_untuk_mengambil_gambar, 'Untuk Mengambil Video', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5318_fotografi, 'Fotografi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5318_fotografi, 'Syuting', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5320_untuk_mendiagnosis, 'Untuk Mendiagnosis', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5321_bendera, 'Bendera', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5321_bendera, 'Spanduk', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5323_bendera_nasional, 'Bendera Nasional', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5324_latar_belakang, 'Latar belakang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5326_rehabilitasi, 'Rehabilitasi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5326_rehabilitasi, 'Mereformasi Diri Sendiri', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5329_bantal, 'Bantal', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5330_untuk_mengambang, 'Untuk Mengambang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5331_ukiyo_e, 'Ukiyo-e', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5331_ukiyo_e, 'Cetakan Balok Kayu Ukiyo-e', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5331_ukiyo_e, 'Lukisan Ukiyo-e', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5332_mencurangi, 'Mencurangi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5332_mencurangi, 'Curang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5332_mencurangi, 'Perselingkuhan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5333_menjadi_haus, 'Menjadi Haus', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5333_menjadi_haus, 'Menjadi Haus', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5333_menjadi_haus, 'Menjadi Kering', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5334_kebocoran_air, 'Kebocoran Air', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5335_bocor, 'Bocor', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5335_bocor, 'Kebocoran', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5335_bocor, 'Tumpahan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5335_bocor, 'Rembesan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5336_bocor, 'Bocor', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5336_bocor, 'Bocor', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5338_merasa_malu, 'Merasa Malu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5338_merasa_malu, 'Menjadi memerah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5338_merasa_malu, 'Menjadi Malu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5339_penerangan, 'Penerangan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5339_penerangan, 'Penerangan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5340_penerbitan, 'Penerbitan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5341_hak_cipta, 'Hak cipta', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5342_edisi_pertama, 'Edisi Pertama', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5344_pencurian, 'Pencurian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5344_pencurian, 'Perampokan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5344_pencurian, 'Pencuri', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5344_pencurian, 'Perampok', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5345_plagiat, 'Plagiat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5347_tk, 'TK', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5348_tiket, 'Tiket', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5349_sekuat_tenaga, 'Sekuat tenaga', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5349_sekuat_tenaga, 'Dengan Segenap Kekuatanmu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5350_mental, 'Mental', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5350_mental, 'Emosional', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5350_mental, 'Rohani', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5351_penyakit_jiwa, 'Penyakit Jiwa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5351_penyakit_jiwa, 'Gangguan Jiwa', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5354_tata_surya, 'Tata surya', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5355_sistematis, 'Sistematis', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5356_untuk_mati, 'Untuk Mati', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5356_untuk_mati, 'Akan Berakhir', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5357_hari_berikutnya, 'Hari berikutnya', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5357_hari_berikutnya, 'Keesokan harinya', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5357_hari_berikutnya, 'Hari berikutnya', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5358_bulan_berikutnya, 'Bulan Berikutnya', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5358_bulan_berikutnya, 'Bulan Depan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5358_bulan_berikutnya, 'Bulan Berikutnya', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5359_pagi_berikutnya, 'Pagi berikutnya', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5359_pagi_berikutnya, 'Pagi berikutnya', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5359_pagi_berikutnya, 'Pagi berikutnya', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5360_tahun_berikutnya, 'Tahun Berikutnya', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5360_tahun_berikutnya, 'Tahun depan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5360_tahun_berikutnya, 'Tahun Berikutnya', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5361_tinggi, 'Tinggi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5361_tinggi, 'Kembali', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5361_tinggi, 'Tulang belakang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5362_sebuah_daftar, 'Sebuah Daftar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5362_sebuah_daftar, 'Sebuah Ikhtisar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5362_sebuah_daftar, 'Melihat ke Atas', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5363_melihat, 'Melihat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5363_melihat, 'Melihat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5363_melihat, 'Menonton', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5364_melihat, 'Melihat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5364_melihat, 'Menonton', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5364_melihat, 'Melihat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5368_miskin, 'Miskin', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5369_miskin, 'Miskin', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5369_miskin, 'Kemiskinan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5370_pembelian, 'Pembelian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5370_pembelian, 'Pembelian', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5371_pembelian, 'Pembelian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5371_pembelian, 'Toko Sekolah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5371_pembelian, 'Toko Kampus', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5372_berlangganan, 'Berlangganan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5372_berlangganan, 'Berlangganan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5373_untuk_melampauinya, 'Untuk Melampauinya', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5373_untuk_melampauinya, 'Untuk Menyeberang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5374_melampaui_otoritas_anda, 'Melampaui Otoritas Anda', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5374_melampaui_otoritas_anda, 'Melampaui Kewenangan Seseorang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5374_melampaui_otoritas_anda, 'Melampaui Kewenangan Seseorang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5375_terbalik, 'Terbalik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5376_untuk_bermain, 'Untuk Bermain', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5377_taman_hiburan, 'Taman Hiburan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5377_taman_hiburan, 'Taman Hiburan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5378_sesuai, 'Sesuai', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5378_sesuai, 'Sesuai', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5378_sesuai, 'Sesuai', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5378_sesuai, 'Tidak bertanggung jawab', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5379_tidak_cocok, 'Tidak cocok', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5379_tidak_cocok, 'Tidak pantas', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5380_untuk_mendaftar, 'Untuk Mendaftar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5381_untuk_menyetor, 'Untuk Menyetor', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5381_untuk_menyetor, 'Untuk Mempercayakan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5381_untuk_menyetor, 'Untuk Meninggalkan Sesuatu Dengan Seseorang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5382_setoran_bank, 'Setoran Bank', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5382_setoran_bank, 'Deposito', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5382_setoran_bank, 'Rekening Bank', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5383_untuk_menghias, 'Untuk Menghias', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5384_pakaian, 'Pakaian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5384_pakaian, 'Mode', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5384_pakaian, 'Pakaian', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5385_pencahayaan_dekoratif, 'Pencahayaan Dekoratif', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5386_untuk_membuat_kebisingan, 'Untuk Membuat Kebisingan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5386_untuk_membuat_kebisingan, 'Menjadi Riuh', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5386_untuk_membuat_kebisingan, 'Untuk Membuat Keributan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5387_kebisingan, 'Kebisingan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5387_kebisingan, 'Keriuhan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5399_untuk_menyerang, 'Untuk Menyerang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5400_beberapa_waktu_yang_lalu, 'Beberapa waktu yang lalu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5400_beberapa_waktu_yang_lalu, 'Sebelumnya Pada Hari Itu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5400_beberapa_waktu_yang_lalu, 'Beberapa waktu yang lalu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5401_birokratis, 'Birokratis', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5425_perdana_menteri, 'Perdana Menteri', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5425_perdana_menteri, 'Perdana Menteri Jepang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5504_akan_digeser, 'Akan Digeser', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5504_akan_digeser, 'Untuk Ditransfer', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5629_untuk_menggantung_sesuatu, 'Untuk Menggantung Sesuatu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5629_untuk_menggantung_sesuatu, 'Untuk Menggiring Bola Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5701_menjadi_takut, 'Menjadi Takut', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5701_menjadi_takut, 'Takut', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5701_menjadi_takut, 'Takut', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5716_pemilik, 'Pemilik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6456_untuk_dikuburkan, 'Untuk Dikuburkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6456_untuk_dikuburkan, 'Untuk Dikuburkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6456_untuk_dikuburkan, 'Untuk Dicakup', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7227_lampu_jalan, 'Lampu jalan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7227_lampu_jalan, 'Lampu jalan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7228_lampu_listrik, 'Lampu Listrik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7228_lampu_listrik, 'Lampu Listrik', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7554_latar_belakang, 'Latar belakang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7554_latar_belakang, 'Di belakang layar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7659_kesenangan, 'Kesenangan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7719_menyenangkan, 'Menyenangkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7719_menyenangkan, 'Menyenangkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7719_menyenangkan, 'Nyaman', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7771_jadi_begitu, 'Jadi begitu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7771_jadi_begitu, 'Itu Masuk Akal', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7771_jadi_begitu, 'Memang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7771_jadi_begitu, 'Itu benar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7773_dorongan, 'Dorongan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7773_dorongan, 'Tekanan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7812_beras_yang_belum_dipoles, 'Beras yang belum dipoles', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7812_beras_yang_belum_dipoles, 'Beras merah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8685_dengan_baik, 'Dengan baik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8685_dengan_baik, 'Dengan baik', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8842_untuk_mencium, 'Untuk Mencium', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8842_untuk_mencium, 'Berbau Buruk', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8875_menjadi_basah, 'Menjadi Basah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8875_menjadi_basah, 'Untuk Melembabkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8875_menjadi_basah, 'Untuk Meredam', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8875_menjadi_basah, 'Untuk Merendam', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8929_untuk_memindahkan_sesuatu_yang_dekat, 'Untuk Memindahkan Sesuatu Yang Dekat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8929_untuk_memindahkan_sesuatu_yang_dekat, 'Untuk Menarik Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8929_untuk_memindahkan_sesuatu_yang_dekat, 'Untuk Menyumbangkan Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8930_untuk_menolak_sesuatu, 'Untuk Menolak Sesuatu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8930_untuk_menolak_sesuatu, 'Untuk Mengabaikan Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8930_untuk_menolak_sesuatu, 'Untuk Menolak Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8934_untuk_melukai_sesuatu, 'Untuk Melukai Sesuatu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8934_untuk_melukai_sesuatu, 'Untuk Menyakiti Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8934_untuk_melukai_sesuatu, 'Untuk Menyakiti Seseorang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8980_pagar, 'Pagar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8981_pagar_besi, 'Pagar Besi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8982_pagar_listrik, 'Pagar Listrik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9047_kita, 'Kita', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9047_kita, 'Milik sendiri', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9047_kita, '-ku', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9080_untuk_menahan_sesuatu, 'Untuk Menahan Sesuatu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9080_untuk_menahan_sesuatu, 'Untuk Memahami Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9089_ramen_tonkotsu, 'Ramen Tonkotsu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9089_ramen_tonkotsu, 'Ramen Tulang Babi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9165_berbagai_sendi, 'Berbagai Sendi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9165_berbagai_sendi, 'Setiap Sendi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9165_berbagai_sendi, 'Berbagai Bagian', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9263_untuk_mengatur_sesuatu, 'Untuk Mengatur Sesuatu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9263_untuk_mengatur_sesuatu, 'Untuk Mengumpulkan Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9263_untuk_mengatur_sesuatu, 'Untuk Menyelaraskan Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9290_plat_besi, 'Plat besi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9290_plat_besi, 'Wajan Besi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9290_plat_besi, 'Panggangan Teppan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9290_plat_besi, 'Tentu saja', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9336_keponakan_perempuan, 'Keponakan perempuan', true, true);

  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3968_penyebab_utama, 'しゅいん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4423_perdana_menteri, 'そうり', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5042_pendirian, 'かまえ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5078_harakiri, 'はらきり', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5129_perlakuan, 'しょち', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5138_eksposisi, 'はくらんかい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5153_halus, 'かすか', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5181_emigran, 'いじゅうしゃ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5283_untuk_diisi, 'つまる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5296_daya_tarik, 'みりょく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5297_untuk_menyejajarkan_sesuatu, 'ならべる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5298_langka, 'とぼしい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5299_kekurangan, 'けつぼう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5300_untuk_mendinginkan_sesuatu, 'ひやす', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5301_pernikahan, 'けっこん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5302_lamaran_pernikahan, 'きゅうこん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5303_bulan_madu, 'しんこんりょこう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5304_belum_menikah, 'みこん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5308_untuk_memperpanjang_sesuatu, 'のばす', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5309_memperpanjang, 'えんちょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5310_untuk_menunda, 'えんきする', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5311_menyenangkan, 'こころよい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5312_kesenangan, 'かいかん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5313_kecepatan_tinggi, 'かいそく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5314_tidak_menyenangkan, 'ふかい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5315_rindu, 'なつかしい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5316_untuk_mendorong, 'おす', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5317_untuk_mengambil_gambar, 'とる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5318_fotografi, 'さつえい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5320_untuk_mendiagnosis, 'しんだんする', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5321_bendera, 'はた', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5323_bendera_nasional, 'こっき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5324_latar_belakang, 'はいけい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5326_rehabilitasi, 'こうせい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5329_bantal, 'まくら', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5330_untuk_mengambang, 'うく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5331_ukiyo_e, 'うきよえ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5332_mencurangi, 'うわき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5333_menjadi_haus, 'かわく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5334_kebocoran_air, 'ろうすい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5335_bocor, 'ろうしゅつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5336_bocor, 'もれる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5338_merasa_malu, 'てれる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5339_penerangan, 'しょうめい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5340_penerbitan, 'しゅっぱん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5341_hak_cipta, 'はんけん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5342_edisi_pertama, 'しょはん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5344_pencurian, 'ごうとう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5345_plagiat, 'とうさく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5347_tk, 'ようちえん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5348_tiket, 'きっぷ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5349_sekuat_tenaga, 'せいいっぱい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5350_mental, 'せいしんてき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5351_penyakit_jiwa, 'せいしんびょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5354_tata_surya, 'たいようけい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5355_sistematis, 'たいけいてき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5356_untuk_mati, 'たえる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5357_hari_berikutnya, 'よくじつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5358_bulan_berikutnya, 'よくげつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5359_pagi_berikutnya, 'よくあさ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5360_tahun_berikutnya, 'よくねん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5360_tahun_berikutnya, 'よくとし', NULL, false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5361_tinggi, 'せ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5362_sebuah_daftar, 'いちらん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5363_melihat, 'ごらん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5364_melihat, 'かんらん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5368_miskin, 'まずしい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5369_miskin, 'びんぼう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5370_pembelian, 'こうにゅう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5371_pembelian, 'こうばい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5372_berlangganan, 'こうどく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5373_untuk_melampauinya, 'こえる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5374_melampaui_otoritas_anda, 'えっけん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5375_terbalik, 'さかさま', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5376_untuk_bermain, 'あそぶ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5377_taman_hiburan, 'ゆうえんち', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5378_sesuai, 'てきとう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5379_tidak_cocok, 'ふてき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5380_untuk_mendaftar, 'とうろくする', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5381_untuk_menyetor, 'あずける', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5382_setoran_bank, 'よきん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5383_untuk_menghias, 'かざる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5384_pakaian, 'ふくしょく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5385_pencahayaan_dekoratif, 'でんしょく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5386_untuk_membuat_kebisingan, 'さわぐ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5387_kebisingan, 'そうおん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5399_untuk_menyerang, 'こうげきする', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5400_beberapa_waktu_yang_lalu, 'さきほど', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5401_birokratis, 'かんりょうてき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5425_perdana_menteri, 'そうりだいじん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5504_akan_digeser, 'うつる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5629_untuk_menggantung_sesuatu, 'たらす', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5701_menjadi_takut, 'こわがる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5716_pemilik, 'ぬし', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6456_untuk_dikuburkan, 'うもれる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7227_lampu_jalan, 'がいとう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7228_lampu_listrik, 'でんとう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7554_latar_belakang, 'はいご', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7659_kesenangan, 'かいらく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7719_menyenangkan, 'かいてき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7771_jadi_begitu, 'なるほど', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7773_dorongan, 'おし', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7812_beras_yang_belum_dipoles, 'げんまい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8685_dengan_baik, 'ほどよく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8842_untuk_mencium, 'におう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8875_menjadi_basah, 'ぬらす', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8929_untuk_memindahkan_sesuatu_yang_dekat, 'よせる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8930_untuk_menolak_sesuatu, 'しりぞける', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8934_untuk_melukai_sesuatu, 'いためる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8980_pagar, 'さく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8981_pagar_besi, 'てっさく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8982_pagar_listrik, 'でんきさく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9047_kita, 'わが', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9080_untuk_menahan_sesuatu, 'おさえる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9089_ramen_tonkotsu, 'とんこつらーめん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9089_ramen_tonkotsu, 'とんこつラーメン', NULL, false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9165_berbagai_sendi, 'ふしぶし', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9263_untuk_mengatur_sesuatu, 'そろえる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9290_plat_besi, 'てっぱん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9336_keponakan_perempuan, 'めい', NULL, true, true);

  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3968_penyebab_utama, 'インフレの主因って何だと思いますか？', 'Menurut Anda apa penyebab utama inflasi?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3968_penyebab_utama, '主因はウルトラプロセスフードですよ。', 'Penyebab utamanya adalah makanan ultra-olahan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3968_penyebab_utama, 'ニアミスの主因は、この電車がスピードを上げるべきではないタイミングで上げたことです。', 'Penyebab utama terjadinya nyaris celaka adalah kereta melaju pada saat yang tidak seharusnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4423_perdana_menteri, '元総理も同じ考えをもっていました。', 'Mantan perdana menteri memiliki gagasan yang sama.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4423_perdana_menteri, '森総理がおっしゃっていた通りになりましたね。', 'Ternyata seperti yang dikatakan Perdana Menteri Mori.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4423_perdana_menteri, '昨日の総理の答弁はもう聞きましたか？', 'Apakah Anda mendengar jawaban perdana menteri kemarin?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5042_pendirian, 'そのサムライは、とても美しい中段の構えをとることで有名です。', 'Samurai itu terkenal karena betapa indahnya dia mengambil posisi sebagai penjaga tengah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5042_pendirian, 'バントの構え…と見せかけてからの、なんと、ホ、ホ、ホームランです！', 'Posisi bunt...dan kemudian, ho, ho, home run!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5042_pendirian, 'うわー、ずいぶん立派な構えの家ですね。', 'Wow, rumah yang dibangun dengan sangat indah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5042_pendirian, 'ボクシングの構えは脇をしめなきゃだけど、ムエタイの構えでは逆に脇をしめちゃダメなんだって！', 'Dalam tinju, Anda harus menjaga sisi tubuh Anda tetap kencang, namun saya dengar dalam Muay Thai, yang terjadi adalah sebaliknya - Anda tidak boleh menjaga sisi tubuh Anda tetap kencang!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5042_pendirian, 'この会社は著作権侵害をしたウェブサイトに対して訴訟の構えを見せている。', 'Perusahaan ini menunjukkan sikap litigasi terhadap situs web yang melanggar hak ciptanya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5078_harakiri, '大名はその下級武士に腹切りを命じた。', 'Tuan feodal memerintahkan samurai berpangkat rendah untuk melakukan ritual bunuh diri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5078_harakiri, '外国人に「腹切り」という言葉の方が広まったのは、響きにインパクトあったからかもね。', 'Kata "harakiri" mungkin lebih menyebar di kalangan orang asing karena memiliki kesan yang berkesan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5078_harakiri, '腹切りって言葉、なんだか切腹よりも生々しい感じがするよね。', 'Kata "harakiri" terasa lebih mendalam daripada "seppuku", bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5078_harakiri, '武士の腹切りをテーマにした映画は来週公開されます。', 'Film tentang seorang samurai yang melakukan harakiri akan dirilis minggu depan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5129_perlakuan, '一時的な処置をほどこしたはいいけど、また後で同じことが起こらないか心配だ。', 'Senang rasanya memiliki tindakan sementara, tapi saya khawatir hal itu akan terjadi lagi nanti.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5129_perlakuan, 'ビエトなら、今はあそこでスコットとバグの処置をしてるよ。', 'Jika Anda mencari Viet, dia membuang bug tersebut bersama Scott di sana.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5129_perlakuan, '誰か彼に応急処置ができる人はいませんか。', 'Apakah ada orang yang bisa memberinya pertolongan pertama?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5138_eksposisi, '食の博覧会、略して「食博」に行ってきました！', 'Saya baru saja menghadiri "Food Expo", yang juga dikenal sebagai "Shoku-haku!"');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5138_eksposisi, 'この博覧会は無料で入場できます。', 'Anda dapat mengikuti pameran ini secara gratis.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5138_eksposisi, '日本を代表する博覧会の一つに、「大阪万博」があります。', 'Salah satu pameran yang mewakili Jepang adalah “Osaka Expo”.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5138_eksposisi, '「万博」って万国博覧会の略だったんですね！みんな「万博」っていうから、それが正式名称なのかと思ってました。', 'Saya baru sadar kalau ''banpaku'' (pameran dunia) adalah kependekan dari ''bankoku hakurankai''! Semua orang menyebutnya ''banpaku'', jadi kupikir itu nama resminya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5153_halus, 'あきらめないで。まだ微かな望みが残っているよ。', 'Jangan menyerah. Kami masih memiliki sedikit harapan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5153_halus, 'シンと静まり返った雪山に、微かな音が響くのが聞こえました。', 'Suara samar terdengar bergema melalui pegunungan bersalju yang sunyi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5153_halus, 'コウイチはロウソクの微かな明かりで日本語を勉強してたせいで目が悪くなってメガネを掛けているらしいですよ。', 'Kudengar Koichi belajar bahasa Jepang dengan cahaya redup lilin, yang memperburuk penglihatannya, jadi itu sebabnya dia memakai kacamata.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5181_emigran, '西海岸ぞいの町にはアジアからの移住者が多い。', 'Ada banyak imigran dari Asia di kota-kota sepanjang pantai Barat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5181_emigran, '移住者にインタビューしてみましょう。', 'Mari kita mewawancarai para emigran.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5181_emigran, '移住者支援センターで、生活や仕事の相談に乗ってもらいました。', 'Saya menerima nasihat tentang kehidupan dan pekerjaan di pusat dukungan imigran.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5181_emigran, '国外移住者になるのは容易なことではない。', 'Tidak mudah menjadi seorang imigran internasional.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5283_untuk_diisi, 'えっ「流せるトイレブラシ」って名前なのに、詰まることもあるんですか？', 'Tunggu, meski namanya "sikat toilet siram", tetap saja bisa menyumbat toilet?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5283_untuk_diisi, '今日はやることが詰まっていて、とても忙しい。', 'Hari ini penuh dengan hal yang harus dilakukan, jadi aku sangat sibuk.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5283_untuk_diisi, '外に出るとアレルギーで鼻が詰まるけど、家にいると息が詰まるんだよね。', 'Kalau keluar rumah hidungku mampet karena alergi, tapi kalau di dalam rumah rasanya sesak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5283_untuk_diisi, '魚の骨が喉に詰まっちゃった。', 'Ada tulang ikan yang tersangkut di tenggorokanku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5296_daya_tarik, '彼女の魅力を一言で表すのは難しい。', 'Sulit untuk menggambarkan pesonanya hanya dengan satu kata.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5296_daya_tarik, 'このレストランは安さと量が魅力です。味もなかなかですよ。', 'Daya tarik restoran ini terletak pada harganya yang terjangkau dan porsinya yang banyak. Rasanya juga cukup enak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5296_daya_tarik, '都会の魅力といえば、やはり便利さと刺激的な生活ですね。', 'Daya tarik kehidupan kota tentu saja adalah kenyamanan dan gaya hidup yang menyenangkan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5296_daya_tarik, '私はゴルフの魅力に取り憑かれてしまいました。', 'Saya menjadi terobsesi dengan pesona golf.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5297_untuk_menyejajarkan_sesuatu, 'ボーリングのピンを並べるのにどうしてそんなに時間がかかったんですか。', 'Mengapa Anda butuh waktu lama untuk memasang pin bowling?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5297_untuk_menyejajarkan_sesuatu, '星野さんの家にはたくさんの高級ワインボトルが並べられている。', 'Banyak botol wine mewah berjejer di rumah Tuan Hoshino.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5297_untuk_menyejajarkan_sesuatu, 'ブレインストーミングで出たアイディアを、ポストイットに書いてホワイトボードに並べました。', 'Kami bertukar pikiran tentang ide-ide, menuliskannya di post-it, dan menaruhnya di papan tulis.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5297_untuk_menyejajarkan_sesuatu, 'お皿をテーブルに並べてください。', 'Silakan letakkan piring di atas meja.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5298_langka, 'この町は緑が乏しい。', 'Tanaman hijau langka di kota ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5298_langka, '会社経営の経験に乏しい私に務まるかどうか...。', 'Saya tidak tahu apakah saya bisa menangani pekerjaan ini karena kurangnya pengalaman saya dalam manajemen perusahaan.…');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5298_langka, 'リソースが乏しい企業では、効率化が生き残りのカギです。', 'Efisiensi adalah kunci kelangsungan hidup perusahaan dengan sumber daya terbatas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5298_langka, '日本語能力だけじゃなく、対人能力も乏しいんです。', 'Bukan saja kemampuan bahasa Jepangku yang kurang, tapi kemampuan pribadiku juga.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5299_kekurangan, '検査の結果、ビタミンDが欠乏していることがわかった。', 'Hasil tes menunjukkan bahwa saya kekurangan vitamin D.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5299_kekurangan, '野菜や果物を食べない人は、ビタミン欠乏症になりやすいですよ。', 'Orang yang tidak makan sayur atau buah lebih mungkin mengalami kekurangan vitamin.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5299_kekurangan, '彼女は先天的にメラニンが欠乏している、いわゆる「アルビノ」なんだよ。', 'Dia menderita kekurangan melanin bawaan, yang umumnya dikenal sebagai "albinisme".');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5299_kekurangan, 'お医者さんに行ったら、鉄欠乏性貧血って診断されました。', 'Saat saya periksa ke dokter, saya didiagnosis menderita anemia defisiensi besi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5300_untuk_mendinginkan_sesuatu, 'ジュースを冷やすのを忘れたので、氷を入れますね。', 'Saya lupa mendinginkan jus, jadi saya akan menambahkan es.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5300_untuk_mendinginkan_sesuatu, 'ビールを冷やしてあるからそれを飲んだら？', 'Birnya sudah dingin, jadi kenapa kamu tidak meminumnya saja?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5300_untuk_mendinginkan_sesuatu, '自分が何をしたのか頭を冷やしてよく考えなさい。', 'Dinginkan kepala Anda dan pikirkan baik-baik apa yang telah Anda lakukan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5300_untuk_mendinginkan_sesuatu, '指をドアで挟んじゃって、今氷で冷やしてるの。', 'Jariku tersangkut di pintu dan sekarang aku mendinginkannya dengan es.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5301_pernikahan, '結婚についての考え方は、人によってさまざまです。', 'Pemikiran tentang pernikahan berbeda-beda pada setiap orang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5301_pernikahan, '結婚したからって、みんながすぐに子供を作りたい訳じゃないでしょう。', 'Tidak semua orang ingin punya anak setelah menikah, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5301_pernikahan, '事務所から、結婚のことは隠すように言われてるんです。', 'Agensiku memberitahuku bahwa aku harus merahasiakan pernikahanku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5301_pernikahan, '「シャーク、私がフグと結婚したってどうして分かったの？」 「ただ人づてに聞いただけさ。」', '“Hiu, bagaimana kamu tahu kalau aku menikah dengan Fugu?” "Kau tahu. Aku baru saja mendengarnya dari selentingan."');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5302_lamaran_pernikahan, '近いうちに求婚しようと思うんだ。', 'Aku sedang berpikir untuk melamar segera.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5302_lamaran_pernikahan, '私はワニカニで漢字の勉強ばかりしている漢字オタクですが、実は会社の後輩から毎日求婚されています。', 'Saya seorang kutu buku Kanji yang menghabiskan waktu saya mempelajari Kanji di WaniKani, tapi saya juga menerima lamaran pernikahan setiap hari dari seorang junior di tempat kerja.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5302_lamaran_pernikahan, '19世紀のポーランドでは、持参金のない女性にはどんなに美しく教養があっても求婚対象から外されることがありました。', 'Di Polandia pada abad ke-19, perempuan tanpa mahar terkadang tidak diikutsertakan dalam lamaran pernikahan, tidak peduli betapa cantik dan terpelajarnya mereka.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5302_lamaran_pernikahan, 'ホタルは、どの求婚者にも、結婚の条件として無理難題を突き付けた。', 'Hotaru menetapkan tugas mustahil bagi pria mana pun yang ingin menikahinya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5303_bulan_madu, '新婚旅行はいつ行くんですか？', 'Kapan kamu akan berbulan madu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5303_bulan_madu, '新婚旅行の日程はまだ決まっていません。', 'Jadwal bulan madu kami belum diputuskan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5303_bulan_madu, '新婚旅行でハワイに行ってきたんです。', 'Kami pergi ke Hawaii untuk bulan madu kami.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5304_belum_menikah, '日本では未婚の割合が年々増加しています。', 'Persentase orang yang belum menikah di Jepang meningkat dari tahun ke tahun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5304_belum_menikah, '未婚の男女を対象にした調査が行われました。', 'Sebuah survei dilakukan dengan sasaran pria dan wanita yang belum menikah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5304_belum_menikah, '未婚の友達が多いので、よく独身者同士でパーティーを開きます。', 'Karena banyak teman saya yang belum menikah, kami sering mengadakan pesta untuk para lajang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5308_untuk_memperpanjang_sesuatu, '帰国の予定を一週間延ばすことにしました。', 'Saya telah memutuskan untuk menunda kepulangan saya ke negara itu selama satu minggu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5308_untuk_memperpanjang_sesuatu, '今のところ、路線を延ばす計画はありません。', 'Saat ini belum ada rencana perpanjangan jalur kereta api tersebut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5308_untuk_memperpanjang_sesuatu, '返済期間を延ばすことはできますか？', 'Apakah mungkin untuk memperpanjang jangka waktu pembayaran?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5309_memperpanjang, 'もうカラオケ店に入ってから何回延長しているんだろうね？', 'Aku bertanya-tanya sudah berapa kali kita memperpanjang waktu sejak kita datang ke bar karaoke?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5309_memperpanjang, 'この話の延長でもう一つ新しい話が書けないかな？', 'Bisakah Anda menulis cerita lain sebagai perpanjangan dari cerita ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5309_memperpanjang, '延長コードがごちゃごちゃになっているのが許せないの。', 'Saya tidak tahan melihat kabel ekstensi menjadi kusut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5310_untuk_menunda, '悪天候のため、イベントを来週に延期することになりました。', 'Karena cuaca buruk, acara tersebut ditunda hingga minggu depan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5310_untuk_menunda, '休暇の予定を延期してまで対応したのに、必要なかったと言われ腹が立った。', 'Aku bahkan menunda rencana liburanku untuk menanggapinya, tapi aku diberitahu bahwa itu tidak perlu dan itu membuatku sangat marah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5310_untuk_menunda, '結婚式を延期するかどうか、家族と相談しています。', 'Saya sedang berdiskusi dengan keluarga saya apakah akan menunda pernikahan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5310_untuk_menunda, 'その洪水は広範囲に及ぶ被害を引き起こしたため、被害地域の高校は期末試験を一ヶ月延期した。', 'Karena banjir menyebabkan kerusakan yang luas, sekolah-sekolah menengah di daerah tersebut menunda ujian akhir mereka selama satu bulan lagi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5311_menyenangkan, '彼女の声は小川のせせらぎのように耳にとても快い。', 'Suaranya sangat enak didengar, seperti celoteh sungai.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5311_menyenangkan, '快い春風を感じながら山道を歩くのが、とても気持ちよかったです。', 'Sangat menyenangkan berjalan menyusuri jalur pegunungan sambil merasakan semilir angin musim semi yang menyenangkan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5311_menyenangkan, '上司は彼の態度を快く思っていないようです。', 'Bos sepertinya tidak memikirkan sikapnya dengan baik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5311_menyenangkan, '快く引き受けてくれる人がいて、安心しました。', 'Saya merasa lega memiliki seseorang yang bersedia mengambil tugas itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5312_kesenangan, '毛抜きで腕の毛を抜くことが快感なんだよね。', 'Sebenarnya menyenangkan bagi saya untuk mencabut bulu lengan dengan pinset.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5312_kesenangan, 'めっちゃ綺麗に鉛筆を削れたときの快感、分かる？', 'Dapatkah Anda merasakan nikmatnya mengasah pensil dengan tepat?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5312_kesenangan, '初めて万引きをした時に、そのスリルに快感を覚えてしまったんです。', 'Pertama kali saya mengutil, saya akhirnya merasakan kenikmatan sensasinya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5312_kesenangan, '人に恥をかかせることで快感を味わうような人にはなってもらいたくないわ。', 'Saya tidak ingin Anda menjadi orang yang mendapatkan kesenangan dari mempermalukan orang lain.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5313_kecepatan_tinggi, '快速電車に乗れば、目的地まで30分で着きます。', 'Jika Anda naik kereta ekspres, Anda akan mencapai tujuan Anda dalam tiga puluh menit.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5313_kecepatan_tinggi, '快速電車は、この駅には止まりませんのでご注意ください。', 'Kereta ekspres tidak berhenti di stasiun ini, jadi harap berhati-hati.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5313_kecepatan_tinggi, '快速の方が速いけど、座りたかったから各駅に乗って帰った。', 'Kereta ekspres lebih cepat, tapi saya ingin mendapat tempat duduk, jadi saya naik kereta lokal pulang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5313_kecepatan_tinggi, 'げげげ！次の快速バス、一時間後だって。', 'Astaga! Mereka bilang bus ekspres berikutnya tidak akan berangkat satu jam lagi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5314_tidak_menyenangkan, 'この服は生地がザラザラしていて不快に感じます。', 'Bahan pakaian ini terasa kasar dan menurut saya tidak nyaman.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5314_tidak_menyenangkan, 'あなたに触られるととっても不快なんです。', 'Rasanya sangat tidak menyenangkan saat kamu menyentuhku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5314_tidak_menyenangkan, 'そういうコメントが他人を不快にさせる可能性があるってこと、なんで分からないの？', 'Bagaimana Anda tidak menyadari bahwa komentar seperti itu mungkin membuat orang lain tidak nyaman?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5314_tidak_menyenangkan, '上司の不快なジョークに笑いたくもないのに笑っている自分が嫌いです。', 'Saya tidak ingin menertawakan lelucon bos saya yang tidak menyenangkan dan saya membenci diri saya sendiri ketika melakukannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5315_rindu, '懐かしい！小さいころ、よくやったよね。', 'Sungguh nostalgia! Kita sering melakukan hal itu ketika kita masih kecil, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5315_rindu, 'この味、なんだか懐かしい感じがする。', 'Rasa ini terasa seperti nostalgia.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5315_rindu, '懐かしい曲がスピーカーから流れてきました。', 'Lagu nostalgia mulai diputar dari speaker.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5316_untuk_mendorong, 'この赤いボタンを押すと、電気がつきます。', 'Jika Anda menekan tombol merah ini, lampu akan menyala.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5316_untuk_mendorong, 'ベビーカーを押して山道を歩くのは大変です。', 'Sulit untuk berjalan di jalur pegunungan sambil mendorong kereta dorong.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5316_untuk_mendorong, 'ここにハンコを押してください。', 'Silakan stempel stempel Anda di sini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5316_untuk_mendorong, 'すみません。今朝タイムカードを押し忘れちゃったんですが、どうすればいいですか？', 'Maaf, aku lupa memencet kartu absenku pagi ini. Apa yang harus saya lakukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5317_untuk_mengambil_gambar, '動画を撮るとき、手ブレしないように注意してください。', 'Saat merekam video, berhati-hatilah untuk menghindari goyangan kamera.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5317_untuk_mengambil_gambar, '子供の幼稚園の卒園式で記念写真をたくさん撮りました。', 'Saya mengambil banyak foto pada upacara wisuda taman kanak-kanak anak saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5317_untuk_mengambil_gambar, 'マイケルは自撮りを上手に撮る方法について詳しく知っているはずです。', 'Michael harusnya tahu detail cara mengambil foto selfie dengan baik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5317_untuk_mengambil_gambar, '写真を撮るために、彼は野球帽を後ろ向きに被り直した。', 'Dia memakai topi baseballnya ke belakang untuk mengambil gambar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5318_fotografi, 'その女優は映画の撮影で半年もホテルぐらしをしている。', 'Aktris ini telah tinggal di hotel selama setengah tahun saat syuting film.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5318_fotografi, 'ここでは、フラッシュを使っての撮影は禁止されています。', 'Fotografi flash dilarang di sini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5318_fotografi, 'ドローンを使って空から撮影した映像がとても美しかったです。', 'Rekaman yang diambil dari langit menggunakan drone sungguh indah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5318_fotografi, 'お待たせして申し訳ございません。それでは、撮影を始めましょうか。', 'Aku minta maaf telah membuatmu menunggu. Mari kita mulai memotret sekarang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5320_untuk_mendiagnosis, '自分で症状を診断するのは危険だよ。	', 'Mendiagnosis gejala Anda sendiri berisiko.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5320_untuk_mendiagnosis, '動物病院で犬の病気を診断してもらいました。', 'Penyakit anjing saya didiagnosis di rumah sakit hewan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5320_untuk_mendiagnosis, '関東人か関西人かを問うクイズで、東京生まれの東京育ちなのになぜか関西人と診断されました。', 'Meskipun saya lahir dan besar di Tokyo, sebuah kuis yang menilai apakah peserta berasal dari Kanto atau Kansai salah mengartikan saya sebagai seseorang dari Kansai.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5320_untuk_mendiagnosis, 'その医者が私に癌だと診断するほんの少し前に、ある看護婦さんが私の事をちらっと振り返って見たんです。', 'Tepat sebelum dokter mendiagnosis saya menderita kanker, seorang perawat melirik ke arah saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5321_bendera, '旗で合図を送る方法を学んでみたいです。', 'Saya ingin belajar cara mengirim sinyal dengan bendera.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5321_bendera, 'この旗は部族のシンボルとしてここにかかげられています。', 'Bendera ini dipasang di sini sebagai lambang suku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5321_bendera, '旗を作るイベントに参加して、オリジナルデザインを考えました。', 'Saya berpartisipasi dalam acara pembuatan bendera dan menghasilkan desain asli.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5321_bendera, '私は可愛い旗がついている爪楊枝を衝動買いしてしまいました。', 'Saya secara impulsif membeli tusuk gigi dengan bendera lucu di atasnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5323_bendera_nasional, '日本の国旗には白地に日の丸がかかれています。', 'Bendera nasional Jepang memiliki gambar matahari di atas kain putih.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5323_bendera_nasional, '世界の国旗クイズで友達と盛り上がりました！', 'Saya dan teman-teman bersenang-senang dengan kuis bendera dunia!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5323_bendera_nasional, 'オリンピックでは選手たちが国旗を背負って入場します。', 'Di Olimpiade, para atlet masuk dengan membawa bendera negaranya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5323_bendera_nasional, 'やっべーな。お前この巨大国旗を買ったのかよ？いったいどこに掲げるつもりなの？', 'Mustahil! Anda membeli bendera nasional sebesar ini? Di mana Anda berpikir untuk memasangnya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5324_latar_belakang, '背景は水色の方がいいんじゃない？', 'Bukankah lebih baik jika latar belakangnya berwarna biru muda?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5324_latar_belakang, 'この背景はきっとインスタ映えするね！', 'Latar belakang ini pasti akan terlihat bagus di Instagram!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5324_latar_belakang, 'カウンセリングでは、相談内容の背景を知ることが重要です。', 'Dalam konseling, penting untuk memahami latar belakang permasalahan yang dibicarakan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5324_latar_belakang, 'トーフグの本社を背景にして写真を撮ってもらえませんか。', 'Bisakah Anda mengambil foto saya dengan latar belakang markas Tofugu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5326_rehabilitasi, '不良少年を更生させるのは大変です。', 'Sulit untuk merehabilitasi remaja yang nakal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5326_rehabilitasi, 'ＤＶの加害者が自然に更生することは、ほとんどありません。', 'Jarang sekali pelaku kekerasan dalam rumah tangga melakukan reformasi diri secara alami.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5326_rehabilitasi, '彼女は自分の息子は更生の見込みがあると信じている。', 'Ia yakin masih ada harapan untuk rehabilitasi putranya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5326_rehabilitasi, 'その会社は、会社更生法を申請しました。 ', 'Perusahaan mengajukan reorganisasi berdasarkan Undang-Undang Resusitasi Perusahaan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5326_rehabilitasi, 'ある犯罪者がいつかする予定の犯罪を止めるには、この犯罪者を更生させるか、その犯罪者が更生するまで出所させないかの二つのオプションしかないじゃないですか？', 'Jika Anda ingin menghentikan kejahatan yang direncanakan oleh seorang penjahat suatu hari nanti, Anda hanya memiliki dua pilihan: merehabilitasi penjahat tersebut, atau memenjarakan mereka sampai mereka direhabilitasi, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5329_bantal, '新しい枕に変えたら、よく眠れるようになりました。', 'Setelah mengganti bantal baru, tidur saya menjadi lebih nyenyak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5329_bantal, '私は枕にはちょっとしたこだわりがあるんです。', 'Saya punya sedikit preferensi dalam hal bantal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5329_bantal, '結局夫のために高い枕を買うはめになりました。', 'Saya akhirnya membeli bantal mahal untuk suami saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5330_untuk_mengambang, 'スイカもカボチャも水に浮く。', 'Semangka dan labu mengapung di air.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5330_untuk_mengambang, 'お酒を飲んだら、宙に浮いているようなフワフワした感じになった。', 'Setelah minum, saya merasa ringan dan ringan, seperti melayang di udara.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5330_untuk_mengambang, 'こんなとこでおっさん二人がおままごとをしてたら、完全に浮くだろ！', 'Jika kami, dua pria paruh baya, bermain rumah-rumahan di tempat seperti ini, kami akan sangat menonjol!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5330_untuk_mengambang, '良かったら、お茶でもしない？おごるよ。ほしかったサングラスがセール中だったもんで、お金が浮いたんだよね。', 'Apakah Anda ingin minum teh? aku akan mentraktirmu. Saya punya sisa uang karena kacamata hitam yang saya inginkan sedang dijual.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5331_ukiyo_e, 'その浮世絵についてお話をしませんか？', 'Mengapa kita tidak membicarakan tentang ukiyo-e?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5331_ukiyo_e, 'これって有名な浮世絵だよね？', 'Ini ukiyo-e yang terkenal, kan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5331_ukiyo_e, '日本浮世絵協会に連絡してみましょう。', 'Mari berhubungan dengan Masyarakat Ukiyo-e Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5331_ukiyo_e, 'アヤに浮世絵スタイルのトーフグの絵を描いてもらおうよ。', 'Mengapa kita tidak meminta Aya menggambar ilustrasi Tofugu gaya cetak balok kayu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5332_mencurangi, '相手は浮気を認めて、謝罪しました。', 'Mereka mengaku berbuat curang dan meminta maaf.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5332_mencurangi, '友達が「浮気された！」って泣きながら電話してきたんだよね…。', 'Teman saya menelepon saya sambil menangis dan berkata, "Saya ditipu!"');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5332_mencurangi, '夫の浮気に、精神的なショックを受けました。', 'Saya sangat terkejut secara emosional dengan perselingkuhan suami saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5332_mencurangi, '「彼は浮気をして、それを携帯電話を持っていないあなたのせいにしたってこと？」「要約するとそんなところね。」', '"Jadi dia selingkuh lalu menyalahkanmu karena tidak punya ponsel?" "Itulah ringkasannya."');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5332_mencurangi, 'ちょっと別のバンドに浮気してたけど、やっぱりライブに行くと元のバンドが一番だなって実感したよ。', 'Saya pernah bergabung dengan band lain selama beberapa waktu, tetapi setelah menonton band favorit lama saya, saya menyadari bahwa mereka masih yang terbaik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5333_menjadi_haus, '喉が渇くからジュース買ってきて！', 'saya haus. Bisakah kamu membelikanku jus?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5333_menjadi_haus, 'まだ三分しか運動してないのに喉が渇いてきました。', 'Saya baru berolahraga tiga menit, tapi saya sudah haus.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5333_menjadi_haus, 'ええっと、喉がカラカラに渇いてたから、ビールを飲み過ぎちゃったんだよね。俺は今、ベロベロだ〜。', 'Ya, saya sangat haus jadi saya minum terlalu banyak bir. Aku mabuk sekarang~');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5333_menjadi_haus, '彼女はずっと愛に渇いているように見えました。	', 'Dia sepertinya haus akan cinta sepanjang waktu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5334_kebocoran_air, '漏水の原因は古くなったパイプでした。', 'Penyebab kebocoran air adalah pipa yang sudah tua.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5334_kebocoran_air, '漏水してるかもって管理会社に電話したら、すぐに来てくれたよ！', 'Saya menelepon perusahaan pengelola tentang kemungkinan kebocoran air, dan mereka segera datang!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5334_kebocoran_air, '漏水が原因で電気系統にトラブルが起きることもあります。', 'Kebocoran air dapat menyebabkan masalah pada sistem kelistrikan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5335_bocor, '﻿全壊したビルからガスが漏出して危険だから近寄らないように。', 'Gas bocor dari bangunan yang hancur total dan itu berbahaya, jadi jangan mendekat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5335_bocor, '化学物質の漏出が環境問題を引き起こしました。', 'Kebocoran bahan kimia menyebabkan masalah lingkungan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5335_bocor, '原油の海への漏出事故を防ぐために、どんな手段を講じていますか。', 'Tindakan apa yang diambil perusahaan Anda untuk mencegah kebocoran minyak mentah ke laut secara tidak sengaja?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5336_bocor, '音が漏れるので、カベに防音材を取り付けました。', 'Saya memasang bahan kedap suara di dinding untuk mencegah kebocoran kebisingan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5336_bocor, 'ねえ、なんかガスが漏れてる臭いがしない？', 'Hei, bukankah baunya seperti gas bocor?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5336_bocor, 'やばい！おしっこ漏れる！ウンチも漏れそう…。', 'Oh tidak! Aku akan buang air kecil sendiri! Aku mungkin akan buang air besar juga…');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5336_bocor, '今FBIが国家機密情報がどこから漏れたのか捜査しています。', 'FBI saat ini sedang menyelidiki dari mana informasi rahasia nasional tersebut bocor.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5338_merasa_malu, 'えっ、有り難う。照れるなぁ。', 'Terima kasih. Aku tersipu!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5338_merasa_malu, '照れる彼の表情がとても可愛かったんです。', 'Ekspresi malu-malunya sangat lucu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5338_merasa_malu, '友達に「お前、かっこいいな」って言われて、思わず照れちゃった。', 'Temanku berkata, "Kamu terlihat keren," dan aku hanya bisa tersipu malu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5338_merasa_malu, '週末のお見合いでは、相手が照れてばっかりいて全然会話がはずまなかった。', 'Pada pengaturan perjodohan akhir pekan ini, pihak lain sangat pemalu sehingga pembicaraan tidak mengalir.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5339_penerangan, 'この部屋の照明は明るすぎます。', 'Pencahayaan di ruangan ini terlalu terang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5339_penerangan, '野外イベントの照明設置に時間がかかりました。', 'Menyiapkan pencahayaan untuk acara outdoor membutuhkan banyak waktu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5339_penerangan, '照明デザインの展示会に行きました。', 'Saya pergi ke pameran desain iluminasi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5339_penerangan, '照明器具の周りを蠅が2-3匹ブンブン飛び交っている。', 'Beberapa lalat berdengung di sekitar peralatan penerangan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5340_penerbitan, 'この小説の出版、すごく楽しみにしてるね！	', 'Saya sangat menantikan penerbitan novel ini!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5340_penerbitan, '去年出版した本は、おかげさまでミリオンセラーの大ヒットとなりました。', 'Berkat dukungan Anda, buku yang saya rilis tahun lalu menjadi sukses besar dengan jutaan penjualan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5340_penerbitan, '長崎には、遊びではなく出版の仕事で行ったんです。', 'Saya pergi ke Nagasaki bukan untuk bersenang-senang, tapi untuk urusan penerbitan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5340_penerbitan, 'その本を出版するのに二年もかかりました。', 'Saya membutuhkan waktu dua tahun untuk menerbitkan buku itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5341_hak_cipta, '版権は出版社にあるの？', 'Apakah perusahaan penerbitan mempunyai hak cipta?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5341_hak_cipta, 'このデザインの版権は2025年に切れます。', 'Hak cipta atas desain ini akan habis masa berlakunya pada tahun 2025.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5341_hak_cipta, 'この作品の版権は誰が持っていますか？', 'Siapa yang memegang hak cipta atas karya ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5341_hak_cipta, 'この手紙には、版権に関する契約更新予定日が記載されています。', 'Surat ini menyatakan kemungkinan tanggal perpanjangan kontrak hak cipta.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5342_edisi_pertama, '初版を持ってるなんて、すごいね！', 'Wow, kamu punya cetakan pertama? Keren abis!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5342_edisi_pertama, '初版にプレミアがついてるなんて知らなかったよ。', 'Saya tidak tahu edisi pertama memiliki harga premium.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5342_edisi_pertama, '初版ならもう持ってるけど、重版も買おうかな。', 'Saya punya edisi pertama, tapi mungkin saya akan membeli cetak ulangnya juga.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5342_edisi_pertama, '彼の小説の初版は半年で売り切れた。', 'Edisi pertama novelnya terjual habis dalam enam bulan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5344_pencurian, 'あの店、強盗が入ったらしいよ！でも、幸い誰もケガはなかったって。', 'Saya mendengar toko itu dirampok, tapi untungnya tidak ada yang terluka.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5344_pencurian, 'たった今、強盗がそこの角を曲がって行きましたよ！', 'Seorang perampok baru saja berbelok di tikungan itu!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5344_pencurian, 'え、昨日強盗の罪で逮捕された人って、あなたのお母さんだったの？！', 'Apa, orang yang ditangkap karena tindak pidana perampokan kemarin adalah ibumu?!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5344_pencurian, '銀行強盗をやってみないか？今を逃がすと一生ないよ。', 'Apakah Anda ingin merampok bank? Sekarang atau tidak sama sekali.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5345_plagiat, 'あの作家の新作、なんか盗作っぽくない？', 'Bukankah karya baru penulis itu terkesan plagiarisme?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5345_plagiat, '盗作はアメリカの大学でも大きな問題になっています。', 'Plagiarisme juga merupakan masalah besar di universitas-universitas Amerika.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5345_plagiat, '盗作した話を自分が書いた小説として本を出版した小説家がニュースに出ていた。', 'Novelis yang mencuri cerita orang lain dan menerbitkannya seolah-olah cerita itu miliknya sendiri muncul di berita.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5345_plagiat, '他人の作品をパクったら、盗作で訴えられるかもしれないよ。', 'Jika Anda mencuri karya orang lain, Anda bisa dituntut karena plagiarisme.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5347_tk, '毎朝、子どもを朝8時に幼稚園に送り届けてから仕事に行きます。', 'Setiap pagi, saya mengantar anak saya ke taman kanak-kanak pada jam 8 pagi sebelum berangkat kerja.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5347_tk, '幼稚園では、運動会や遠足などの楽しいイベントがたくさんあります。', 'Taman kanak-kanak memiliki banyak acara menyenangkan seperti hari olahraga dan karyawisata.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5347_tk, '給食の量が多すぎるので、幼稚園に行きたくなかったみたいなんです。', 'Rupanya dia tak mau ke TK karena porsi makan siang di sekolah terlalu banyak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5347_tk, '幼稚園のクリスマス会のスケジュールをまた微調整しなくちゃいけないかもしれないの。', 'Kita mungkin harus melakukan sedikit penyesuaian lagi pada jadwal pesta Natal taman kanak-kanak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5348_tiket, '切符がないと電車に乗れないよ。', 'Anda tidak bisa naik kereta tanpa tiket.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5348_tiket, '切符を改札機に通してください。', 'Silakan masukkan tiket Anda ke gerbang tiket.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5348_tiket, '駅でチンチン電車の切符を購入しました。', 'Saya membeli tiket trem di stasiun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5348_tiket, 'そのツアーの切符は、現地で購入することもできます。', 'Anda dapat membeli tiket untuk tur tersebut di lokasi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5349_sekuat_tenaga, 'チームのために精一杯努力します。', 'Saya akan melakukan yang terbaik untuk tim.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5349_sekuat_tenaga, '彼は精一杯のプレゼンをしました。', 'Dia memberikan presentasi dengan seluruh usahanya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5349_sekuat_tenaga, '八月三十日午後五時の締切まで、精一杯頑張りました。', 'Saya mencoba yang terbaik hingga batas waktu jam 5 sore. pada tanggal 30 Agustus.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5349_sekuat_tenaga, '今は古い写真を捨てることが私にできる精一杯です。', 'Menyingkirkan foto-foto lama adalah hal terbaik yang bisa saya lakukan saat ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5350_mental, 'この子には、今は精神的なケアが必要だと思うんです。', 'Saya yakin anak kami membutuhkan perawatan mental saat ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5350_mental, 'トーフグのブログが、入院中の私の精神的な支えになっていました。', 'Blog Tofugu memberi saya dukungan emosional selama saya tinggal di rumah sakit.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5350_mental, '彼は精神的ストレスが原因で仕事を辞めることになりました。', 'Dia telah berhenti dari pekerjaannya karena tekanan mental.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5350_mental, '精神的に病んでいた時、毎日一人で公園をブラブラしていました。', 'Saat aku mengalami gangguan mental, aku berkeliaran tanpa tujuan di sekitar taman sendirian setiap hari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5351_penyakit_jiwa, '父は精神病をわずらって入院しています。', 'Ayah saya menderita penyakit mental dan berada di rumah sakit.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5351_penyakit_jiwa, '精神病と身体の健康は深く関係しています。', 'Penyakit mental erat kaitannya dengan kesehatan fisik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5351_penyakit_jiwa, '猫が急に変な動きをしていて、「これって精神病かな？」と思っちゃった。', 'Kucing saya mulai bertingkah aneh, dan saya bertanya-tanya, "Apakah ini penyakit mental?"');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5354_tata_surya, 'え、太陽系って、ビッグバンで出来たんじゃないんですか！？', 'Tunggu, tata surya tidak diciptakan oleh Big Bang!?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5354_tata_surya, '今日は科学のクラスで太陽系の誕生について学びました。', 'Hari ini di kelas sains, kita belajar tentang kelahiran tata surya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5354_tata_surya, '太陽系の中心にあるのは、もちろん太陽です。', 'Tentu saja, pusat tata surya adalah Matahari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5354_tata_surya, '太陽系が生まれたのは、今から約46億年前だと言われています。', 'Tata surya dikatakan lahir sekitar 4,6 miliar tahun yang lalu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5355_sistematis, '経済学の理論について、体系的にまとめた本を買いたいと思っています。', 'Saya sedang berpikir untuk membeli buku yang merangkum teori-teori ekonomi secara sistematis.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5355_sistematis, '馬場教授と森本教授はコミュニケーション理論について体系的な研究をしている。', 'Prof Baba dan Prof Morimoto sedang melakukan penelitian sistematis tentang teori komunikasi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5355_sistematis, '問題を体系的に整理することで、早期の解決につながります。', 'Pengorganisasian masalah secara sistematis mengarah pada solusi awal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5355_sistematis, '私達は、体系的な日本語学習教材を提供しています。', 'Kami menawarkan materi pembelajaran bahasa Jepang yang sistematis.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5356_untuk_mati, '電気や水が絶えることなく供給されているのはとてもありがたいことです。', 'Kami sangat bersyukur atas pasokan listrik dan air yang tidak terputus.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5356_untuk_mati, '悲しいけど、コウイチの命はここで絶えてしまったんだ。', 'Sedih sekali, tapi hidup Koichi telah berakhir di sini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5356_untuk_mati, 'トーフグメンバーが笑い茸と呼ばれるキノコを食べてからというもの、トーフグのオフィスでは、笑いが絶えることはない。', 'Sejak anggota Tofugu memakan jamur yang disebut "panaeolus papilionaceus", tawa di kantor Tofugu tidak ada habisnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5357_hari_berikutnya, 'スポーツ大会の翌日は、体中が痛くて大変でした。', 'Sehari setelah turnamen olahraga, seluruh tubuh saya terasa sakit dan itu sangat berat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5357_hari_berikutnya, '旅行から帰ってきた翌日は、何をしていたんですか？', 'Apa yang Anda lakukan sehari setelah kembali dari perjalanan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5357_hari_berikutnya, '列車は翌日平常運転にもどりました。', 'Layanan kereta api kembali normal keesokan harinya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5357_hari_berikutnya, '大雪の影響でイベントは翌日に延期されました。', 'Karena hujan salju lebat, acara tersebut ditunda ke hari berikutnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5358_bulan_berikutnya, '4月に入社し、翌月に研修が始まった。', 'Saya bergabung dengan perusahaan pada bulan April, dan pelatihan dimulai pada bulan berikutnya');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5358_bulan_berikutnya, '彼はガンで入院し、翌月に退院しました。', 'Dia dirawat di rumah sakit karena kanker dan dipulangkan pada bulan berikutnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5358_bulan_berikutnya, '事故が発生したのは8月で、その翌月に安全対策が強化されました。', 'Kecelakaan itu terjadi pada bulan Agustus, dan tindakan keselamatan diperkuat pada bulan berikutnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5359_pagi_berikutnya, '翌朝目が覚めると、二日よいで頭がガンガンしていた。', 'Ketika saya bangun keesokan paginya, saya mabuk dengan sakit kepala yang berdenyut-denyut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5359_pagi_berikutnya, '翌朝、更に八キロ北上しました。', 'Keesokan paginya, kami menempuh perjalanan delapan kilometer lagi ke utara.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5359_pagi_berikutnya, '翌朝までに報告書を完成させるように指示されたんです。', 'Saya diperintahkan untuk menyelesaikan laporan keesokan paginya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5359_pagi_berikutnya, '申し訳ありませんが、お客様の足つぼマッサージのご予約は、本日の夜9時から翌朝9時30分にご変更されております。', 'Saya khawatir jam 9 malam Anda. pijat tekanan kaki telah diundur menjadi jam 9:30 besok pagi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5360_tahun_berikutnya, '日野さんはアメリカから日本に帰国した翌年に起業しました。', 'Pak Hino memulai bisnisnya setahun setelah dia kembali ke Jepang dari Amerika.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5360_tahun_berikutnya, '彼は大学を卒業した翌年に海外で働き始めました。', 'Dia mulai bekerja di luar negeri setahun setelah lulus dari universitas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5360_tahun_berikutnya, '財団法人日本浮世絵博物館でアルバイトとして働き始めたんですが、翌年には正社員に登用されました。', 'Saya mulai bekerja di Museum Ukiyo-e Jepang hanya sebagai pekerja paruh waktu, namun saya dipromosikan menjadi pekerja penuh waktu pada tahun berikutnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5360_tahun_berikutnya, '翌年彼は起業しました。', 'Dia memulai bisnisnya pada tahun berikutnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5361_tinggi, 'しばらく見ない間に背、のびたね！', 'Anda telah tumbuh lebih tinggi selama kita tidak bertemu satu sama lain!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5361_tinggi, '背の順に並んでください。	', 'Silakan berbaris sesuai urutan tingginya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5361_tinggi, '彼はカベに背をもたれかけながら、本を読んでいました。', 'Dia sedang membaca buku sambil menyandarkan punggungnya ke dinding.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5361_tinggi, '紫色のドレスを着ている背の高い女性は、あなたのご友人ですか？', 'Apakah temanmu wanita jangkung dengan gaun ungu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5362_sebuah_daftar, '覚えたい日本語の単語の一覧を作りました。', 'Saya membuat daftar kata-kata Jepang yang ingin saya hafal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5362_sebuah_daftar, 'アフリカの歴史書をまとめて一覧できるようにしてみました。', 'Saya telah menyusun daftar buku tentang sejarah Afrika untuk memudahkan referensi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5362_sebuah_daftar, 'このキーとこのキーを同時に押したら、キーボードショートカットの一覧が出てくるよ。', 'Jika Anda menekan tombol ini dan tombol ini secara bersamaan, daftar pintasan keyboard akan muncul.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5362_sebuah_daftar, '連絡先の一覧から中々上司の名前が見つからないんだけど。', 'Saya kesulitan menemukan nama bos saya di daftar kontak saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5363_melihat, 'それではショーを楽しんでご覧ください。', 'Silakan menikmati menonton pertunjukannya!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5363_melihat, 'ご覧の通り、今はもうすっかり元気になりました。', 'Seperti yang Anda lihat, saya sudah lebih baik sekarang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5363_melihat, '今ご覧いただいたドキュメンタリーは1996年にアメリカで製作されたものです。', 'Film dokumenter yang baru saja Anda tonton dibuat di Amerika pada tahun 1996.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5363_melihat, '娘さんの試験の結果はもうご覧になられましたか。', 'Apakah Anda sudah melihat hasil pemeriksaan putri Anda?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5364_melihat, '観覧席はもう満席になりました。', 'Kursi penonton sudah penuh.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5364_melihat, '観覧中は写真撮影が禁止されています。', 'Fotografi dilarang selama menonton.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5364_melihat, 'ちゃんと投げろ！遊び球を投げるところを観覧しに来たんじゃないぞ！', 'Lemparkan dengan benar! Aku tidak datang untuk melihatmu melempar bola latihan!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5364_melihat, 'トーフグテレビの撮影現場を観覧しました。', 'Saya menonton pembuatan film TofuguTV.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5368_miskin, '大人になったら、貧しい人々を助けるために活動をしたいと思っています。', 'Ketika saya besar nanti, saya ingin bekerja membantu orang miskin.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5368_miskin, '私の日本語のボキャブラリーはまだまだ貧しいです。', 'Kosakata saya dalam bahasa Jepang masih sangat buruk.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5368_miskin, '彼女のくらしは貧しいけれど、心はとても豊かです。お金持ちだけど心が貧しい人より、彼女の方がとても好感が持てます。', 'Hidupnya mungkin miskin, tapi hatinya sangat kaya. Menurutku dia jauh lebih disukai daripada seseorang yang kaya tetapi miskin roh.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5369_miskin, '学生時代はずっと貧乏で、毎日カップラーメンばっかりだった。', 'Saya sangat miskin sebagai pelajar sehingga saya makan mie instan setiap hari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5369_miskin, '貧乏だからといって、夢をあきらめる必要はありません。', 'Menjadi miskin bukan berarti Anda harus menyerah pada impian Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5369_miskin, '貧乏が必ずしも不幸を意味するわけではありません。', 'Kemiskinan tidak selalu berarti ketidakbahagiaan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5370_pembelian, '新しいソフトウェアの購入を検討しています。', 'Saya sedang mempertimbangkan untuk membeli perangkat lunak baru.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5370_pembelian, '購入後の返品は、未使用の場合に限ります。', 'Setelah pembelian, pengembalian hanya diterima jika barang tidak terpakai.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5370_pembelian, '購入の際には、必ず領収書を受け取ってください。', 'Pastikan untuk mendapatkan tanda terima saat melakukan pembelian.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5370_pembelian, 'この店で偽のシャネルN°5を購入しました。', 'Ini adalah toko tempat saya membeli Chanel Nomor 5 palsu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5371_pembelian, 'この購買データをもとに、新しいマーケティング戦略を立てましょう。', 'Mari buat strategi pemasaran baru berdasarkan data pembelian ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5371_pembelian, '会社の購買部につとめている同僚は私の親友です。', 'Rekan saya yang bekerja di bagian pembelian adalah sahabat saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5371_pembelian, '学校の購買でパンを買うのが、毎日の楽しみなんだよね。', 'Membeli roti di toko sekolah adalah sesuatu yang saya nantikan setiap hari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5371_pembelian, '私は消費者の購買意欲について研究をしています。', 'Saya sedang meneliti selera pelanggan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5372_berlangganan, 'このオンラインニュースサイトの購読者数は年々増加しています。', 'Jumlah pelanggan situs berita online ini terus meningkat dari tahun ke tahun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5372_berlangganan, '購読してた雑誌、読まなくなったから解約しちゃった。', 'Saya membatalkan langganan majalah karena saya tidak lagi membacanya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5372_berlangganan, 'トーフグ新聞の定期購読はこちらから！', 'Dapatkan langganan Anda ke Koran Tofugu di sini!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5372_berlangganan, '全アメリカ人がトーフグのニュースレターを購読しているという噂が、日本中に広まった。', 'Rumor bahwa seluruh rakyat Amerika berlangganan buletin Tofugu menyebar ke seluruh Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5373_untuk_melampauinya, 'この山を越えるのに、二時間はかかります。', 'Setidaknya dibutuhkan waktu dua jam untuk melintasi gunung ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5373_untuk_melampauinya, '巨人がカベを越えてくるぞ！', 'Para Titan datang melewati tembok!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5373_untuk_melampauinya, 'この橋を越えてしばらく真っ直ぐ行くと、駅があります。	', 'Jika Anda lurus sebentar melewati jembatan ini, Anda akan menemukan stasiun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5374_melampaui_otoritas_anda, 'それは越権じゃないですか？そもそも法的権限がないですよね？', 'Bukankah itu melampaui wewenang Anda? Anda tidak memiliki kekuatan hukum untuk melakukan hal itu, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5374_melampaui_otoritas_anda, 'それは、越権の一種だと思われても仕方が無いと思います。', 'Saya pikir bahkan jika hal itu dianggap sebagai sesuatu yang melampaui otoritas, kita tidak bisa berbuat apa-apa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5374_melampaui_otoritas_anda, '権力のある立場についたら、どこからが越権とみなされるのか、線引きをしっかり分かっておかないと危険ですよ。', 'Jika Anda memegang posisi berkuasa, penting untuk memahami dengan jelas di mana letak batasan untuk melampaui wewenang Anda, karena jika Anda tidak melakukannya, hal tersebut bisa berbahaya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5374_melampaui_otoritas_anda, 'お巡りさん、差し出がましいようですがそれは越権行為では無いでしょうか。', 'Petugas, saya khawatir Anda melampaui batas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5375_terbalik, 'どうしてチョウチョを逆さまに描いたの？', 'Mengapa Anda menggambar kupu-kupu secara terbalik?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5375_terbalik, '地図が逆さまだったので、進む方向を間違えました。', 'Saya salah petunjuk arah karena petanya terbalik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5375_terbalik, 'あれ、この文字、左右逆さまじゃない？', 'Hah, bukankah teks ini dibalik dari kiri ke kanan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5375_terbalik, 'ビエトのデスクには、コウイチの写真が上下逆さまで飾られています。', 'Di meja Viet, foto Koichi ditampilkan terbalik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5376_untuk_bermain, '遊ぶ友達が一人もいないんです。', 'Aku tidak punya satupun teman untuk diajak bermain.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5376_untuk_bermain, 'ゲームで楽しく遊んでるだけなのに、そうムキになるなよ。', 'Kami hanya bersenang-senang dengan permainan ini. Jangan terlalu serius.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5376_untuk_bermain, '今度、俺んちで遊ばない？', 'Mau nongkrong di tempatku kapan-kapan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5376_untuk_bermain, '「宿題が済むまで、外で遊んじゃだめだからね。」「言われなくても分かってるよ！」', '"Kamu tidak bisa bermain di luar sampai kamu menyelesaikan pekerjaan rumahmu." "Kamu tidak perlu memberitahuku, aku tahu!"');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5377_taman_hiburan, 'この遊園地はデートスポットとして人気があります。', 'Taman hiburan ini populer sebagai tempat kencan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5377_taman_hiburan, '遊園地のフードコートでたこ焼きを食べました。	', 'Saya makan takoyaki di food court taman hiburan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5377_taman_hiburan, 'あの神戸の遊園地は、小さい子と遊びに行くにはいい所ですよ。', 'Taman hiburan di Kobe itu adalah tempat yang bagus untuk dikunjungi dan bermain dengan anak-anak kecil.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5377_taman_hiburan, '「スカイダイビングをして、その後遊園地に行くんだけど、一緒に行かない？」「えーっ、絶対に嫌！」', '"Aku akan terjun payung, lalu setelah itu pergi ke taman hiburan. Kamu mau bergabung denganku?" "Apa? Sama sekali tidak!"');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5378_sesuai, '適当な答えを選んでください。', 'Silakan pilih jawaban yang sesuai.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5378_sesuai, 'あいつは適当な事ばかり言っている。', 'Orang itu sering mengatakan hal-hal yang tidak bertanggung jawab.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5378_sesuai, '居酒屋で、同僚が店員に「適当にお願いします」と言って注文をしたことに驚きました。', 'Saya terkejut ketika rekan saya sedang memesan di izakaya dan berkata kepada pelayan: "Pilih apa pun yang menurut Anda terbaik".');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5379_tidak_cocok, '人には適不適がある。', 'Setiap orang mempunyai sesuatu yang cocok atau tidak cocok untuknya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5379_tidak_cocok, 'いい意味で、この仕事は君には不適だと思うよ。', 'Dalam arti positif, menurut saya pekerjaan ini tidak cocok untuk Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5379_tidak_cocok, 'あまりにも受け身すぎる人は、結婚相手には不適です。', 'Seseorang yang terlalu pasif tidak cocok dijadikan pasangan nikah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5379_tidak_cocok, 'この職が私にとって適不適かを考えているんですが、まだ答えは出ていません。', 'Aku sudah memikirkan apakah pekerjaan ini cocok untukku atau tidak, tapi aku belum menemukan jawabannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5380_untuk_mendaftar, '無料で登録することができますよ。', 'Anda dapat mendaftar secara gratis.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5380_untuk_mendaftar, '新しいアカウントを登録するにはメールアドレスが必要です。', 'Anda memerlukan alamat email untuk mendaftarkan akun baru.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5380_untuk_mendaftar, '登録するだけで特典がもらえるんだって！', 'Rupanya, Anda mendapatkan keuntungan hanya dengan mendaftar!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5380_untuk_mendaftar, '臓器提供者として登録をしたきっかけは何ですか。', 'Apa yang memotivasi Anda untuk mendaftarkan diri sebagai donor organ?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5381_untuk_menyetor, 'え？今、いくら預けたって言った？', 'Apa? Anda menyetor berapa banyak?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5381_untuk_menyetor, '旅行中は荷物をホテルのフロントに預けることができます。', 'Selama perjalanan Anda, Anda dapat menitipkan barang bawaan Anda di meja depan hotel.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5381_untuk_menyetor, '仕事をしている間は子供は保育園に預けています。', 'Saya meninggalkan anak saya di taman kanak-kanak selama saya bekerja.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5381_untuk_menyetor, '銀行にお金を預けることで、安全に管理することができます。', 'Dengan menyimpan uang di bank, Anda bisa menyimpannya dengan aman.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5382_setoran_bank, '私は給料の一部を毎月預金しています。', 'Saya menyetor sebagian gaji saya setiap bulan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5382_setoran_bank, '預金残高なら、ATMでも確認できますよ。', 'Anda juga dapat memeriksa saldo bank Anda di ATM.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5382_setoran_bank, '利率は定期預金の方が高いです。', 'Suku bunga lebih tinggi untuk deposito tetap.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5382_setoran_bank, '彼は帆立の養殖で稼いだ金は全て預金している。', 'Dia menyimpan semua uang yang dia peroleh dari beternak kerang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5383_untuk_menghias, 'リビングに絵を飾ると、部屋が明るくなりますね。', 'Mendekorasi ruang tamu dengan lukisan benar-benar mencerahkan ruangan ya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5383_untuk_menghias, '店の入り口を風船で飾ると、子供たちが喜びます。', 'Mendekorasi pintu masuk toko dengan balon membuat anak senang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5383_untuk_menghias, '教室をクラフトの作品などで飾ることで、生徒たちのモチベーションが上がることがあります。', 'Mendekorasi kelas dengan kerajinan tangan dan karya seni lainnya dapat meningkatkan motivasi siswa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5383_untuk_menghias, 'クリスマスツリーの飾り付けをするのが好きです。今年はツリーを暖炉の横に飾りました。', 'Saya suka mendekorasi pohon Natal. Saya meletakkannya di samping perapian kami tahun ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5384_pakaian, '私は服飾専門学校を卒業しました。', 'Saya lulus dari sekolah teknik mode.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5384_pakaian, '今の服飾の仕事は、遊び半分でしてるんですよ。', 'Saya bekerja di bisnis pakaian sekarang, sebagian besar untuk bersenang-senang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5384_pakaian, 'コイツ、今、服飾の専門学生と付き合ってるんだよ。', 'Pria itu berkencan dengan seorang mahasiswi mode.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5385_pencahayaan_dekoratif, 'あのトラックの電飾、すごくキラキラしててきれいだったよ！	', 'Lampu hias di truk itu sungguh berkilau dan indah!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5385_pencahayaan_dekoratif, 'トーフグでは今、フグ型の電飾看板を作るプロジェクトが持ち上がっています。', 'Sebuah proyek di mana mereka akan membuat tanda lampu hias berbentuk fugu kini sedang berlangsung di Tofugu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5385_pencahayaan_dekoratif, 'コウイチとビエトはクリスマスシーズン中、家の周りを電飾で飾って競い合います。', 'Koichi dan Viet bersaing satu sama lain dengan mendekorasi lampu di sekitar rumah mereka selama musim Natal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5385_pencahayaan_dekoratif, '省エネのために電飾にOAタップを使ってるって聞いたんだけど、タコ足配線にするのは危ないわよ。', 'Saya mendengar bahwa Anda menggunakan soket ekstensi untuk penerangan dekoratif guna menghilangkan energi yang terbuang, tetapi Anda mungkin membebani sirkuit secara berlebihan sehingga berbahaya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5386_untuk_membuat_kebisingan, '病院では静かにしてください。騒ぐと他の人に迷惑です。', 'Harap tenang di rumah sakit. Membuat kebisingan merupakan gangguan bagi orang lain.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5386_untuk_membuat_kebisingan, '子どもが騒ぐのを止めさせるために、スマホでYouTubeを観せました。', 'Agar anak saya berhenti bersuara, saya minta mereka menonton YouTube di ponsel pintar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5386_untuk_membuat_kebisingan, '深夜に騒ぐ人がいて、警察が呼ばれました。', 'Seseorang berisik pada larut malam, dan polisi dipanggil.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5386_untuk_membuat_kebisingan, '騒ぐな！死にたいのか？死にたくなけりゃ黙ってろ。', 'Jangan terlalu berisik! Apakah kamu ingin dibunuh? Kalau tidak, diam saja.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5387_kebisingan, 'この辺は工事中で毎日騒音がすごいです。', 'Daerah ini sedang dibangun sehingga ada banyak kebisingan setiap hari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5387_kebisingan, '騒音も公害の一つです。', 'Kebisingan juga merupakan salah satu bentuk polusi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5387_kebisingan, '騒音に慣れてしまうと、それが逆に落ち着くこともあります。', 'Saat Anda terbiasa dengan kebisingan, anehnya hal itu bisa menjadi menenangkan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5387_kebisingan, '騒音問題について、お隣さんにどうやって切り出したらいいんだろう。', 'Bagaimana saya harus mendekati tetangga saya mengenai masalah kebisingan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5399_untuk_menyerang, '敵の基地を攻撃する計画が進行中だ。', 'Rencana untuk menyerang markas musuh sedang dilakukan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5399_untuk_menyerang, '彼らは夜明け前に突然攻撃された。', 'Mereka tiba-tiba diserang sebelum fajar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5399_untuk_menyerang, '議論中に、個人を攻撃するのは良くないですよ。アイディアに集中しましょう。', 'Tidak baik menyerang individu saat berdiskusi. Mari fokus pada ide.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5400_beberapa_waktu_yang_lalu, 'あれ、先程コンビニでもお会いしましたよね？', 'Oh, tadi kita juga pernah bertemu di toserba, kan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5400_beberapa_waktu_yang_lalu, '先程からあそこに座っているご老人はだれですか。', 'Siapa lelaki tua yang duduk di sana beberapa saat yang lalu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5400_beberapa_waktu_yang_lalu, '先程も申しましたように、お客様の予約はキャンセルされました。', 'Seperti yang saya katakan sebelumnya, reservasi Anda dibatalkan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5400_beberapa_waktu_yang_lalu, '先程あなたからの手紙を読ませて頂きました。', 'Saya membaca surat dari Anda sebelumnya hari ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5401_birokratis, '彼の官僚的な話し方に、少しイラっとしました。', 'Cara bicaranya yang birokratis sedikit membuatku kesal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5401_birokratis, '官僚的なたらい回しにあって、イライラする人は多い。', 'Banyak orang yang frustasi menghadapi birokrasi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5401_birokratis, '世の中には官僚的なプロセスが多すぎます。', 'Ada terlalu banyak proses birokrasi di dunia.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5401_birokratis, 'この会社では官僚的な形式主義がまかり通りすぎている。', 'Ada terlalu banyak birokrasi di perusahaan ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5425_perdana_menteri, 'ぼくのおじいちゃんは昔、総理大臣だったんだって。', 'Saya mendengar bahwa kakek saya pernah menjadi perdana menteri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5425_perdana_menteri, '政治家のキャリア40年にしてようやく総理大臣にまで登りつめました。', 'Setelah empat puluh tahun berkarir di dunia politik, saya akhirnya menjadi perdana menteri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5425_perdana_menteri, 'よぉみんな！コウイチ総理大臣がここに登場だぜ！チェケラ！', 'Hai kalian semua. Perdana Menteri Koichi ada di rumah, yo! Coba lihat!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5504_akan_digeser, '来月から新しい部署に移ることになりました。', 'Saya akan pindah ke departemen baru mulai bulan depan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5504_akan_digeser, 'それでは、次の話題に移りましょう。', 'Sekarang, mari kita beralih ke pembahasan selanjutnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5504_akan_digeser, 'この町に移ってきてからまだ友達が一人もできません。', 'Saya belum bisa mendapatkan satu pun teman sejak saya pindah ke kota ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5504_akan_digeser, 'においが服に移るから、焼肉は好きじゃないの。', 'Saya tidak suka yakiniku karena baunya mengenai pakaian Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5629_untuk_menggantung_sesuatu, '最後に、こんな感じで、オリーブオイルを少し垂らすんです。', 'Terakhir, taburkan sedikit minyak zaitun di atasnya seperti ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5629_untuk_menggantung_sesuatu, '一匹のクモがベランダの上から糸を垂らしてゆっくり降りてきた。', 'Seekor laba-laba menjatuhkan sehelai sutra dari atas balkon dan perlahan turun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5629_untuk_menggantung_sesuatu, '鼻血が止まらず、血をポタポタ垂らしながら帰ってきた。', 'Mimisan saya tidak kunjung berhenti, dan saya meneteskan darah sepanjang perjalanan pulang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5629_untuk_menggantung_sesuatu, 'あの娘がよだれを垂らしながら昼寝しているブルドッグの絵をかいたんだけど、それがすっごく可愛くってさ。', 'Gadis itu menggambar seekor anjing bulldog yang ngiler sambil tidur siang dan itu sangat lucu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5701_menjadi_takut, 'うちの犬はカミナリを怖がるんだ。', 'Anjing saya takut guntur.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5701_menjadi_takut, 'ホラー映画は妹が怖がるから、家では観れないんだよね。	', 'Saya tidak bisa menonton film horor di rumah karena adik saya takut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5701_menjadi_takut, '怖がる人が多いけど、実はその虫は無害なんですよ。', 'Banyak orang yang takut, padahal serangga itu sebenarnya tidak berbahaya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5701_menjadi_takut, '私の主人は逆さ睫毛の手術を受けるのをとても怖がっていたんですよ。', 'Suami saya sangat takut menjalani operasi untuk bulu matanya yang tumbuh ke dalam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5716_pemilik, 'そのサイフの持ち主は私です。', 'Saya pemilik dompet itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5716_pemilik, '落とし主は見つかりましたか？', 'Apakah Anda menemukan pemilik yang kehilangannya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5716_pemilik, '顔を見なくても、声の主はすぐ分かりました。', 'Aku mengenali pemilik suara itu dengan mudah, bahkan tanpa melihat wajahnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5716_pemilik, 'この池には、古池の主と呼ばれる大きなトノサマガエルが住んでいます。', 'Kolam ini adalah rumah bagi katak pohon besar yang disebut Penguasa Kolam Tua.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6456_untuk_dikuburkan, '昨夜、雪が30cmも積もり、車が埋もれてしまいました。', 'Salju menumpuk sedalam tiga puluh sentimeter tadi malam dan mobil saya terkubur.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6456_untuk_dikuburkan, '友達からのLINE、通知に埋もれてて、気づかなかった！', 'Pesan LINE temanku terkubur di notifikasiku, jadi aku tidak menyadarinya!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6456_untuk_dikuburkan, 'アイツの才能が埋もれてしまわないように、俺たちが頑張らないと！', 'Kita harus bekerja keras agar bakatnya tidak terkubur!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6456_untuk_dikuburkan, '兄の部屋はいつも色んなものにあふれていて、大事なものがどこかに埋もれるのはよくあることだった。', 'Kamar kakakku selalu penuh dengan barang, dan barang-barang penting sering kali terkubur di suatu tempat di sana.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7227_lampu_jalan, '街灯が一つずつともっていった。', 'Lampu jalan menyala satu per satu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7227_lampu_jalan, '夜道には、街灯だけが静かに並んでいた。', 'Hanya lampu jalan yang berjajar dengan tenang di jalan malam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7227_lampu_jalan, '街灯が切れていて、その道は真っ暗だった。', 'Lampu jalan padam dan jalanan gelap gulita.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7227_lampu_jalan, '大量のガが、各街灯の周りを飛び回っています。', 'Ada banyak sekali ngengat yang beterbangan di sekitar setiap lampu jalan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7228_lampu_listrik, '夜になると、通りの電灯がともります。', 'Di malam hari, lampu jalan menyala.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7228_lampu_listrik, '電灯が切れてしまったんだよ。', 'Lampunya padam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7228_lampu_listrik, '最後にオフィスを出る人は、電灯を消すのを忘れないでください。', 'Siapa pun yang terakhir meninggalkan kantor, jangan lupa mematikan lampu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7228_lampu_listrik, '電灯の光に、小さな虫が集まっていた。', 'Serangga kecil berkumpul di sekitar lampu listrik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7554_latar_belakang, 'ホラー映画で、背後に何かいるパターンが一番怖い！', 'Dalam film horor, kiasan "sesuatu di belakangmu" adalah yang paling menakutkan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7554_latar_belakang, 'ちょっと！背後から急に話しかけないで、びっくりするから！', 'Hai! Jangan bicara padaku tiba-tiba dari belakang, kamu mengagetkanku!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7554_latar_belakang, 'この階段では、レッサーパンダがおそってくることがあるんで、背後に注意してくださいね。', 'Di tangga ini, panda merah mungkin akan menyerang Anda. Jadi harap berhati-hati dengan apa yang ada di belakang Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7554_latar_belakang, '背後に敵が潜んでいたことに全く気づかなかった。', 'Saya sama sekali tidak menyadari musuh mengintai di latar belakang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7659_kesenangan, '20代のころに一人ぐらしを始めて、ジャンクフードを食べる快楽に目覚めてしまったんです。', 'Ketika saya mulai hidup sendirian di usia dua puluhan, saya menemukan kenikmatan makan junk food.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7659_kesenangan, 'ワニカニで漢字をどんどん覚えるのが楽しすぎて、脳内快楽物質ドバドバの漢字学習ジャンキーになってしまった。', 'Mempelajari kanji di WaniKani menjadi sangat menyenangkan sehingga saya berubah menjadi pecandu belajar kanji, dengan otak saya dibanjiri bahan kimia kesenangan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7659_kesenangan, 'なぜ世界には悪が存在し続けるのかって？それは、人は快楽には慣れるが、苦痛には一生慣れないからだよ。そして、みんな、自分が苦痛を感じるものを悪だと定義するからさ。', 'Mengapa kejahatan terus ada di dunia? Itu karena orang bisa terbiasa dengan kesenangan, tapi tidak pernah terbiasa dengan rasa sakit. Jadi setiap orang mendefinisikan sebagai kejahatan apapun yang menyebabkan mereka kesakitan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7659_kesenangan, 'もう少しで、快楽に溺れるところだったわ。', 'Saya hampir tenggelam dalam kesenangan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7719_menyenangkan, 'エアコンのある生活は快適だ。', 'Hidup dengan AC memang menyenangkan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7719_menyenangkan, '昨日の新幹線はガラガラで、めっちゃ快適だったよ！	', 'Kereta peluru kemarin kosong, dan nyaman sekali!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7719_menyenangkan, 'リモートワークするのに快適な作業スペースを作りました。', 'Saya menyiapkan ruang kerja yang nyaman untuk pekerjaan jarak jauh.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7719_menyenangkan, 'このアプリは使いやすくて、快適に作業が進められます。', 'Aplikasi ini mudah digunakan, sehingga Anda dapat melanjutkan pekerjaan dengan nyaman.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7771_jadi_begitu, '成程、そういう理由だったんですね。', 'Saya mengerti, jadi itulah alasannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7771_jadi_begitu, '成程、それは知りませんでした。勉強になりました。', 'Begitu ya, aku tidak mengetahuinya. Saya belajar sesuatu yang baru.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7771_jadi_begitu, '成程、これなら誰にも見つからずに手紙を出すことができる。', 'Jadi begitu! Saya dapat mengirimkan surat ini tanpa ada yang mengetahuinya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7771_jadi_begitu, '成程、ビエトは鳥を撃つのも上手かった。', 'Memang Viet juga pandai menembak burung.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7773_dorongan, '俺は押しに弱いんだよなあ。', 'Saya berkemauan lemah terhadap tekanan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7773_dorongan, '前の彼女は押しが強すぎて二週間で別れてしまった。', 'Pacar terakhir saya terlalu memaksa dan kami putus setelah dua minggu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7773_dorongan, '交渉においては、押しと引きのバランスが重要です。	', 'Dalam negosiasi, keseimbangan antara tarik dan dorong adalah hal yang penting.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7773_dorongan, '彼の「もう一杯！」という押しに負けて、飲みすぎちゃいました。', 'Aku menyerah pada ucapannya, "Sekali lagi minum!" tekanan dan akhirnya minum terlalu banyak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7812_beras_yang_belum_dipoles, '玄米は体に良い。', 'Beras merah baik untuk kesehatan Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7812_beras_yang_belum_dipoles, '玄米はダイエット中の食事にピッタリです。', 'Beras merah sangat cocok untuk santapan saat sedang diet.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7812_beras_yang_belum_dipoles, '玄米にはビタミンやミネラルが多く含まれています。', 'Beras merah mengandung banyak vitamin dan mineral.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8685_dengan_baik, 'ひき肉を程よくこねます。', 'Campur daging giling dengan baik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8685_dengan_baik, '料理に塩を程よく加えると、味が引き立ちます。', 'Menambahkan jumlah garam yang tepat akan meningkatkan cita rasa hidangan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8685_dengan_baik, '程よく手を抜くことも、仕事を長く続けるコツだよ。', 'Mengambil jalan pintas dengan benar adalah kunci untuk bekerja dalam jangka panjang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8685_dengan_baik, '健康のためには、程よく運動を続けることが大切です。	', 'Untuk kesehatan Anda, penting untuk berolahraga secukupnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8842_untuk_mencium, 'この香水は、全く匂わない。', 'Parfum ini tidak berbau sama sekali.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8842_untuk_mencium, 'げ、なんかこの部屋、匂う！', 'Ugh, ada bau di ruangan ini!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8842_untuk_mencium, 'フーム、匂いますねー。事件の匂いがしますよ、ワトソン君！', 'Hmm, ada yang berbau. Baunya seperti sebuah kasus, Watson!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8875_menjadi_basah, '髪をよく濡らしてから、シャンプーをするといいですよ。', 'Ada baiknya untuk membasahi rambut sebelum keramas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8875_menjadi_basah, '大事なUSBなので、コーヒーや水で濡らさないで下さいね。', 'USB ini penting, jadi harap berhati-hati agar tidak basah oleh kopi atau air.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8875_menjadi_basah, '先輩にフラれてから、毎日涙で枕を濡らしています。', 'Sejak aku dicampakkan oleh senpaiku, setiap hari aku membasahi bantalku dengan air mata.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8929_untuk_memindahkan_sesuatu_yang_dekat, 'オモチャをカベに寄せた。', 'Saya memindahkan mainan itu ke dekat dinding.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8929_untuk_memindahkan_sesuatu_yang_dekat, '車をワキに寄せて停めた。', 'Aku menepikan mobil dan memarkirnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8929_untuk_memindahkan_sesuatu_yang_dekat, 'このポッドキャストには色んなコメントが寄せられた。', 'Segala macam komentar diposting di episode podcast ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8930_untuk_menolak_sesuatu, 'このお守りには、災いを退ける力がある。', 'Jimat ini mempunyai kekuatan untuk mengusir musibah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8930_untuk_menolak_sesuatu, '議会は全ての議案を退けた。', 'Dewan menolak semua usulan tersebut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8930_untuk_menolak_sesuatu, '日本にとってアメリカの意見を退けることは難しい。', 'Sulit bagi Jepang untuk menolak pendapat AS.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8934_untuk_melukai_sesuatu, 'ゲームのやりすぎは目を痛める。', 'Terlalu banyak bermain game akan melukai mata Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8934_untuk_melukai_sesuatu, 'スリッパでフルマラソンをしたら足首を痛めた。', 'Saya berlari maraton penuh dengan sandal dan pergelangan kaki saya cedera.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8934_untuk_melukai_sesuatu, '母は今でもそのことで心を痛めている。', 'Kejadian itu masih membuat hati ibu patah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8980_pagar, '柵に足がはさまって抜けない。', 'Kakiku tersangkut di pagar dan aku tidak bisa mengeluarkannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8980_pagar, '今日の午後は柵をペンキでぬります。', 'Saya akan mengecat pagar sore ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8980_pagar, 'その犬は柵を軽々と跳び越えてしまった。', 'Anjing itu melompati pagar dengan begitu mudahnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8981_pagar_besi, 'そこに鉄柵をめぐらすのはどうでしょう。', 'Bagaimana perasaan Anda jika menutupnya dengan pagar besi?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8981_pagar_besi, '出来るだけ早く鉄柵を修理しないといけません。', 'Saya harus memperbaiki pagar besi itu secepatnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8981_pagar_besi, '見て！鉄柵に何か引っかかっているよ。', 'Lihat! Ada yang tersangkut di pagar besi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8982_pagar_listrik, '電気柵を張りめぐらせる畑が増えている。', 'Semakin banyak ladang yang dikelilingi pagar listrik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8982_pagar_listrik, 'お父さんが電気柵を設置してくれたんです。', 'Ayah saya memasang pagar listrik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8982_pagar_listrik, 'イノシシや猿への対策として、電気柵を導入した。', 'Kami telah memasang pagar listrik sebagai tindakan pencegahan terhadap babi hutan dan monyet.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9047_kita, '我が家の今日のディナーはエビフライです。', 'Makan malam hari ini di rumah kami adalah udang goreng.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9047_kita, 'だれだって、結局我が子が一番可愛いんだよ。', 'Pada akhirnya, semua orang paling mencintai anaknya sendiri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9047_kita, '課長、あんたの受け売りをそのまま、我が物顔で言ってたよ。', 'Kepala seksi mengatakan persis apa yang Anda katakan, seolah-olah itu adalah kata-katanya sendiri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9080_untuk_menahan_sesuatu, '宇宙人は左手でガッと男の頭を押さえた。', 'Alien itu menahan kepala pria itu dengan kuat menggunakan tangan kirinya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9080_untuk_menahan_sesuatu, 'この単語は大事なので、しっかり押さえておきましょう！', 'Kata-kata ini penting, jadi pastikan untuk menguasainya!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9080_untuk_menahan_sesuatu, 'どうしたの、お腹押さえて。', 'Ada apa? Kamu memegangi perutmu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9089_ramen_tonkotsu, 'ここは豚骨ラーメンの店です。', 'Tempat ini adalah restoran ramen tonkotsu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9089_ramen_tonkotsu, 'この豚骨ラーメンを食べると懐かしい気持ちになるよ。', 'Ramen tulang babi ini membuatku bernostalgia.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9089_ramen_tonkotsu, '是非、九州に豚骨ラーメンを食べに来て下さい。', 'Silakan datang ke Kyushu untuk makan ramen tonkotsu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9165_berbagai_sendi, 'なんか体の節々がズキズキする。', 'Setiap sendi di tubuhku terasa berdenyut-denyut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9165_berbagai_sendi, 'あの人、言葉の節々にトゲがあるよね。', 'Orang itu membuat pilihan kata yang kasar, ya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9165_berbagai_sendi, '早織は節々の痛みを感じて目を覚ました。', 'Saori terbangun dengan nyeri di berbagai persendian.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9263_untuk_mengatur_sesuatu, 'しまった、会議の書類を揃えるのを忘れてた。', 'Oh tidak, saya lupa menyiapkan dokumen untuk rapat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9263_untuk_mengatur_sesuatu, 'キッチン用品は全部同じメーカーで揃えてるんです。', 'Semua perlengkapan dapur saya berasal dari produsen yang sama.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9263_untuk_mengatur_sesuatu, 'みんな口を揃えてアイツは悪くないって言ってたよ。', 'Semua orang serempak mengatakan bahwa dia tidak bersalah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9290_plat_besi, '業務用の鉄板を一枚注文した。', 'Saya memesan satu pelat besi kelas komersial.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9290_plat_besi, 'みんなで鉄板を囲んでお好み焼きを食べるのが好きだ。', 'Saya menikmati berkumpul di sekitar panggangan teppan dengan semua orang dan makan okonomiyaki.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9290_plat_besi, 'これ、オレの鉄板ネタなんだ。', 'Ini adalah salah satu lelucon saya yang pasti.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9336_keponakan_perempuan, '私には五才の姪がいます。', 'Saya memiliki seorang keponakan berusia lima tahun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9336_keponakan_perempuan, '私は姪っ子が大好きです。', 'Saya sangat mencintai keponakan saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9336_keponakan_perempuan, '先日、姪の夫に初めて会いました。', 'Saya bertemu suami keponakan saya untuk pertama kalinya beberapa hari yang lalu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9336_keponakan_perempuan, 'あっ、ややこしくてすいません。私の姪の子供の名前がメイなんです。', 'Oh, maaf, ini sangat membingungkan. Nama anak keponakan saya adalah Mei.');

  -- 4. PREREQUISITES
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1413_menarik, id FROM items WHERE type = 'radical' AND (slug = '292' OR id = '292') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1413_menarik, id FROM items WHERE type = 'radical' AND (slug = '134' OR id = '134') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1414_mengering, id FROM items WHERE type = 'radical' AND (slug = '103' OR id = '103') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1414_mengering, id FROM items WHERE type = 'radical' AND (slug = '22' OR id = '22') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1414_mengering, id FROM items WHERE type = 'radical' AND (slug = '14' OR id = '14') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1414_mengering, id FROM items WHERE type = 'radical' AND (slug = '57' OR id = '57') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1416_pernikahan, id FROM items WHERE type = 'radical' AND (slug = '19' OR id = '19') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1416_pernikahan, id FROM items WHERE type = 'radical' AND (slug = '147' OR id = '147') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1416_pernikahan, id FROM items WHERE type = 'radical' AND (slug = '22' OR id = '22') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1417_bermain, id FROM items WHERE type = 'radical' AND (slug = '114' OR id = '114') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1417_bermain, id FROM items WHERE type = 'radical' AND (slug = '66' OR id = '66') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1417_bermain, id FROM items WHERE type = 'radical' AND (slug = '8762' OR id = '8762') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1417_bermain, id FROM items WHERE type = 'radical' AND (slug = '34' OR id = '34') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1418_bendera, id FROM items WHERE type = 'radical' AND (slug = '66' OR id = '66') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1418_bendera, id FROM items WHERE type = 'radical' AND (slug = '8762' OR id = '8762') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1418_bendera, id FROM items WHERE type = 'radical' AND (slug = '205' OR id = '205') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1419_menerangi, id FROM items WHERE type = 'radical' AND (slug = '22' OR id = '22') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1419_menerangi, id FROM items WHERE type = 'radical' AND (slug = '331' OR id = '331') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1419_menerangi, id FROM items WHERE type = 'radical' AND (slug = '131' OR id = '131') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1420_menyenangkan, id FROM items WHERE type = 'radical' AND (slug = '232' OR id = '232') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1420_menyenangkan, id FROM items WHERE type = 'radical' AND (slug = '9' OR id = '9') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1420_menyenangkan, id FROM items WHERE type = 'radical' AND (slug = '157' OR id = '157') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1421_edisi, r_162_satu_sisi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1421_edisi, id FROM items WHERE type = 'radical' AND (slug = '218' OR id = '218') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1422_miskin, id FROM items WHERE type = 'radical' AND (slug = '247' OR id = '247') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1422_miskin, id FROM items WHERE type = 'radical' AND (slug = '94' OR id = '94') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1423_langka, id FROM items WHERE type = 'radical' AND (slug = '8763' OR id = '8763') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1423_langka, r_8771_perbukitan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1424_sesuai, id FROM items WHERE type = 'radical' AND (slug = '114' OR id = '114') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1424_sesuai, id FROM items WHERE type = 'radical' AND (slug = '276' OR id = '276') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1425_deposito, id FROM items WHERE type = 'radical' AND (slug = '339' OR id = '339') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1425_deposito, id FROM items WHERE type = 'radical' AND (slug = '184' OR id = '184') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1426_memperpanjang, id FROM items WHERE type = 'radical' AND (slug = '206' OR id = '206') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1426_memperpanjang, id FROM items WHERE type = 'radical' AND (slug = '229' OR id = '229') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1427_berikutnya, id FROM items WHERE type = 'radical' AND (slug = '213' OR id = '213') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1427_berikutnya, id FROM items WHERE type = 'radical' AND (slug = '55' OR id = '55') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1428_lihat, id FROM items WHERE type = 'radical' AND (slug = '323' OR id = '323') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1428_lihat, id FROM items WHERE type = 'radical' AND (slug = '8762' OR id = '8762') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1428_lihat, id FROM items WHERE type = 'radical' AND (slug = '1' OR id = '1') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1428_lihat, id FROM items WHERE type = 'radical' AND (slug = '91' OR id = '91') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1429_nostalgia, id FROM items WHERE type = 'radical' AND (slug = '232' OR id = '232') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1429_nostalgia, id FROM items WHERE type = 'radical' AND (slug = '15' OR id = '15') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1429_nostalgia, id FROM items WHERE type = 'radical' AND (slug = '163' OR id = '163') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1429_nostalgia, id FROM items WHERE type = 'radical' AND (slug = '320' OR id = '320') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1430_dorongan, id FROM items WHERE type = 'radical' AND (slug = '63' OR id = '63') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1430_dorongan, r_330_cangkang_penyu);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1432_bantal, id FROM items WHERE type = 'radical' AND (slug = '23' OR id = '23') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1432_bantal, r_391_bajak_laut);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1433_mengambang, id FROM items WHERE type = 'radical' AND (slug = '103' OR id = '103') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1433_mengambang, id FROM items WHERE type = 'radical' AND (slug = '8772' OR id = '8772') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1433_mengambang, id FROM items WHERE type = 'radical' AND (slug = '34' OR id = '34') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1434_bocor, id FROM items WHERE type = 'radical' AND (slug = '103' OR id = '103') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1434_bocor, id FROM items WHERE type = 'radical' AND (slug = '37' OR id = '37') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1434_bocor, id FROM items WHERE type = 'radical' AND (slug = '119' OR id = '119') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1435_token, id FROM items WHERE type = 'radical' AND (slug = '85' OR id = '85') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1435_token, id FROM items WHERE type = 'radical' AND (slug = '248' OR id = '248') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1436_pembelian, id FROM items WHERE type = 'radical' AND (slug = '94' OR id = '94') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1436_pembelian, id FROM items WHERE type = 'radical' AND (slug = '303' OR id = '303') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1437_melampauinya, id FROM items WHERE type = 'radical' AND (slug = '124' OR id = '124') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1437_melampauinya, id FROM items WHERE type = 'radical' AND (slug = '263' OR id = '263') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1438_menghias, id FROM items WHERE type = 'radical' AND (slug = '139' OR id = '139') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1438_menghias, id FROM items WHERE type = 'radical' AND (slug = '8762' OR id = '8762') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1438_menghias, id FROM items WHERE type = 'radical' AND (slug = '102' OR id = '102') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1439_riuh, id FROM items WHERE type = 'radical' AND (slug = '165' OR id = '165') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1439_riuh, id FROM items WHERE type = 'radical' AND (slug = '30' OR id = '30') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1439_riuh, id FROM items WHERE type = 'radical' AND (slug = '89' OR id = '89') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1440_kembali, id FROM items WHERE type = 'radical' AND (slug = '327' OR id = '327') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1440_kembali, id FROM items WHERE type = 'radical' AND (slug = '43' OR id = '43') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1441_foto, id FROM items WHERE type = 'radical' AND (slug = '63' OR id = '63') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1441_foto, id FROM items WHERE type = 'radical' AND (slug = '22' OR id = '22') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1441_foto, id FROM items WHERE type = 'radical' AND (slug = '88' OR id = '88') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1441_foto, id FROM items WHERE type = 'radical' AND (slug = '30' OR id = '30') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1442_mencuri, id FROM items WHERE type = 'radical' AND (slug = '278' OR id = '278') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1442_mencuri, id FROM items WHERE type = 'radical' AND (slug = '84' OR id = '84') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_2037_lampu, id FROM items WHERE type = 'radical' AND (slug = '46' OR id = '46') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_2037_lampu, id FROM items WHERE type = 'radical' AND (slug = '27' OR id = '27') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_8834_bau, id FROM items WHERE type = 'radical' AND (slug = '14' OR id = '14') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_8834_bau, id FROM items WHERE type = 'radical' AND (slug = '57' OR id = '57') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_8863_basah, id FROM items WHERE type = 'radical' AND (slug = '103' OR id = '103') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_8863_basah, id FROM items WHERE type = 'radical' AND (slug = '119' OR id = '119') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_8863_basah, id FROM items WHERE type = 'radical' AND (slug = '309' OR id = '309') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_8965_pagar, id FROM items WHERE type = 'radical' AND (slug = '23' OR id = '23') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_8965_pagar, id FROM items WHERE type = 'radical' AND (slug = '226' OR id = '226') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_9335_keponakan_perempuan, id FROM items WHERE type = 'radical' AND (slug = '19' OR id = '19') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_9335_keponakan_perempuan, id FROM items WHERE type = 'radical' AND (slug = '274' OR id = '274') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3968_penyebab_utama, id FROM items WHERE type = 'kanji' AND (slug = '528' OR id = '528') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3968_penyebab_utama, id FROM items WHERE type = 'kanji' AND (slug = '1010' OR id = '1010') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4423_perdana_menteri, id FROM items WHERE type = 'kanji' AND (slug = '1131' OR id = '1131') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4423_perdana_menteri, id FROM items WHERE type = 'kanji' AND (slug = '669' OR id = '669') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5042_pendirian, id FROM items WHERE type = 'kanji' AND (slug = '1263' OR id = '1263') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5078_harakiri, id FROM items WHERE type = 'kanji' AND (slug = '1317' OR id = '1317') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5078_harakiri, id FROM items WHERE type = 'kanji' AND (slug = '502' OR id = '502') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5129_perlakuan, id FROM items WHERE type = 'kanji' AND (slug = '1354' OR id = '1354') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5129_perlakuan, id FROM items WHERE type = 'kanji' AND (slug = '1164' OR id = '1164') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5138_eksposisi, id FROM items WHERE type = 'kanji' AND (slug = '1355' OR id = '1355') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5138_eksposisi, k_1428_lihat);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5138_eksposisi, id FROM items WHERE type = 'kanji' AND (slug = '566' OR id = '566') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5153_halus, id FROM items WHERE type = 'kanji' AND (slug = '1366' OR id = '1366') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5181_emigran, id FROM items WHERE type = 'kanji' AND (slug = '1368' OR id = '1368') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5181_emigran, id FROM items WHERE type = 'kanji' AND (slug = '679' OR id = '679') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5181_emigran, id FROM items WHERE type = 'kanji' AND (slug = '690' OR id = '690') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5283_untuk_diisi, id FROM items WHERE type = 'kanji' AND (slug = '1411' OR id = '1411') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5296_daya_tarik, k_1413_menarik);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5296_daya_tarik, id FROM items WHERE type = 'kanji' AND (slug = '447' OR id = '447') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5297_untuk_menyejajarkan_sesuatu, id FROM items WHERE type = 'kanji' AND (slug = '1372' OR id = '1372') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5298_langka, k_1423_langka);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5299_kekurangan, id FROM items WHERE type = 'kanji' AND (slug = '646' OR id = '646') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5299_kekurangan, k_1423_langka);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5300_untuk_mendinginkan_sesuatu, id FROM items WHERE type = 'kanji' AND (slug = '1350' OR id = '1350') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5301_pernikahan, id FROM items WHERE type = 'kanji' AND (slug = '1009' OR id = '1009') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5301_pernikahan, k_1416_pernikahan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5302_lamaran_pernikahan, id FROM items WHERE type = 'kanji' AND (slug = '913' OR id = '913') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5302_lamaran_pernikahan, k_1416_pernikahan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5303_bulan_madu, id FROM items WHERE type = 'kanji' AND (slug = '857' OR id = '857') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5303_bulan_madu, k_1416_pernikahan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5303_bulan_madu, id FROM items WHERE type = 'kanji' AND (slug = '816' OR id = '816') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5303_bulan_madu, id FROM items WHERE type = 'kanji' AND (slug = '580' OR id = '580') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5304_belum_menikah, id FROM items WHERE type = 'kanji' AND (slug = '656' OR id = '656') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5304_belum_menikah, k_1416_pernikahan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5308_untuk_memperpanjang_sesuatu, k_1426_memperpanjang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5309_memperpanjang, k_1426_memperpanjang);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5309_memperpanjang, id FROM items WHERE type = 'kanji' AND (slug = '632' OR id = '632') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5310_untuk_menunda, k_1426_memperpanjang);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5310_untuk_menunda, id FROM items WHERE type = 'kanji' AND (slug = '839' OR id = '839') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5311_menyenangkan, k_1420_menyenangkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5312_kesenangan, k_1420_menyenangkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5312_kesenangan, id FROM items WHERE type = 'kanji' AND (slug = '862' OR id = '862') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5313_kecepatan_tinggi, k_1420_menyenangkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5313_kecepatan_tinggi, id FROM items WHERE type = 'kanji' AND (slug = '741' OR id = '741') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5314_tidak_menyenangkan, id FROM items WHERE type = 'kanji' AND (slug = '563' OR id = '563') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5314_tidak_menyenangkan, k_1420_menyenangkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5315_rindu, k_1429_nostalgia);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5316_untuk_mendorong, k_1430_dorongan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5317_untuk_mengambil_gambar, k_1441_foto);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5318_fotografi, k_1441_foto);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5318_fotografi, id FROM items WHERE type = 'kanji' AND (slug = '1251' OR id = '1251') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5320_untuk_mendiagnosis, id FROM items WHERE type = 'kanji' AND (slug = '1390' OR id = '1390') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5320_untuk_mendiagnosis, id FROM items WHERE type = 'kanji' AND (slug = '1139' OR id = '1139') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5321_bendera, k_1418_bendera);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5323_bendera_nasional, id FROM items WHERE type = 'kanji' AND (slug = '621' OR id = '621') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5323_bendera_nasional, k_1418_bendera);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5324_latar_belakang, k_1440_kembali);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5324_latar_belakang, id FROM items WHERE type = 'kanji' AND (slug = '1256' OR id = '1256') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5326_rehabilitasi, id FROM items WHERE type = 'kanji' AND (slug = '1431' OR id = '1431') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5326_rehabilitasi, id FROM items WHERE type = 'kanji' AND (slug = '850' OR id = '850') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5329_bantal, k_1432_bantal);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5330_untuk_mengambang, k_1433_mengambang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5331_ukiyo_e, k_1433_mengambang);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5331_ukiyo_e, id FROM items WHERE type = 'kanji' AND (slug = '527' OR id = '527') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5331_ukiyo_e, id FROM items WHERE type = 'kanji' AND (slug = '698' OR id = '698') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5332_mencurangi, k_1433_mengambang);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5332_mencurangi, id FROM items WHERE type = 'kanji' AND (slug = '548' OR id = '548') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5333_menjadi_haus, k_1414_mengering);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5334_kebocoran_air, k_1434_bocor);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5334_kebocoran_air, id FROM items WHERE type = 'kanji' AND (slug = '479' OR id = '479') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5335_bocor, k_1434_bocor);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5335_bocor, id FROM items WHERE type = 'kanji' AND (slug = '483' OR id = '483') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5336_bocor, k_1434_bocor);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5338_merasa_malu, k_1419_menerangi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5339_penerangan, k_1419_menerangi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5339_penerangan, id FROM items WHERE type = 'kanji' AND (slug = '626' OR id = '626') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5340_penerbitan, id FROM items WHERE type = 'kanji' AND (slug = '483' OR id = '483') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5340_penerbitan, k_1421_edisi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5341_hak_cipta, k_1421_edisi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5341_hak_cipta, id FROM items WHERE type = 'kanji' AND (slug = '1134' OR id = '1134') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5342_edisi_pertama, id FROM items WHERE type = 'kanji' AND (slug = '784' OR id = '784') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5342_edisi_pertama, k_1421_edisi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5344_pencurian, id FROM items WHERE type = 'kanji' AND (slug = '667' OR id = '667') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5344_pencurian, k_1442_mencuri);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5345_plagiat, k_1442_mencuri);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5345_plagiat, id FROM items WHERE type = 'kanji' AND (slug = '584' OR id = '584') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5347_tk, id FROM items WHERE type = 'kanji' AND (slug = '1352' OR id = '1352') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5347_tk, id FROM items WHERE type = 'kanji' AND (slug = '1353' OR id = '1353') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5347_tk, id FROM items WHERE type = 'kanji' AND (slug = '960' OR id = '960') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5348_tiket, id FROM items WHERE type = 'kanji' AND (slug = '502' OR id = '502') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5348_tiket, k_1435_token);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5349_sekuat_tenaga, id FROM items WHERE type = 'kanji' AND (slug = '1370' OR id = '1370') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5349_sekuat_tenaga, id FROM items WHERE type = 'kanji' AND (slug = '440' OR id = '440') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5349_sekuat_tenaga, id FROM items WHERE type = 'kanji' AND (slug = '1380' OR id = '1380') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5350_mental, id FROM items WHERE type = 'kanji' AND (slug = '1370' OR id = '1370') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5350_mental, id FROM items WHERE type = 'kanji' AND (slug = '799' OR id = '799') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5350_mental, id FROM items WHERE type = 'kanji' AND (slug = '914' OR id = '914') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5351_penyakit_jiwa, id FROM items WHERE type = 'kanji' AND (slug = '1370' OR id = '1370') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5351_penyakit_jiwa, id FROM items WHERE type = 'kanji' AND (slug = '799' OR id = '799') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5351_penyakit_jiwa, id FROM items WHERE type = 'kanji' AND (slug = '773' OR id = '773') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5354_tata_surya, id FROM items WHERE type = 'kanji' AND (slug = '505' OR id = '505') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5354_tata_surya, id FROM items WHERE type = 'kanji' AND (slug = '834' OR id = '834') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5354_tata_surya, id FROM items WHERE type = 'kanji' AND (slug = '1415' OR id = '1415') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5355_sistematis, id FROM items WHERE type = 'kanji' AND (slug = '583' OR id = '583') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5355_sistematis, id FROM items WHERE type = 'kanji' AND (slug = '1415' OR id = '1415') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5355_sistematis, id FROM items WHERE type = 'kanji' AND (slug = '914' OR id = '914') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5356_untuk_mati, id FROM items WHERE type = 'kanji' AND (slug = '1371' OR id = '1371') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5357_hari_berikutnya, k_1427_berikutnya);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5357_hari_berikutnya, id FROM items WHERE type = 'kanji' AND (slug = '476' OR id = '476') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5358_bulan_berikutnya, k_1427_berikutnya);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5358_bulan_berikutnya, id FROM items WHERE type = 'kanji' AND (slug = '477' OR id = '477') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5359_pagi_berikutnya, k_1427_berikutnya);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5359_pagi_berikutnya, id FROM items WHERE type = 'kanji' AND (slug = '695' OR id = '695') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5360_tahun_berikutnya, k_1427_berikutnya);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5360_tahun_berikutnya, id FROM items WHERE type = 'kanji' AND (slug = '546' OR id = '546') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5361_tinggi, k_1440_kembali);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5362_sebuah_daftar, id FROM items WHERE type = 'kanji' AND (slug = '440' OR id = '440') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5362_sebuah_daftar, k_1428_lihat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5363_melihat, k_1428_lihat);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5364_melihat, id FROM items WHERE type = 'kanji' AND (slug = '1175' OR id = '1175') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5364_melihat, k_1428_lihat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5368_miskin, k_1422_miskin);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5369_miskin, k_1422_miskin);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5369_miskin, k_1423_langka);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5370_pembelian, k_1436_pembelian);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5370_pembelian, id FROM items WHERE type = 'kanji' AND (slug = '445' OR id = '445') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5371_pembelian, k_1436_pembelian);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5371_pembelian, id FROM items WHERE type = 'kanji' AND (slug = '699' OR id = '699') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5372_berlangganan, k_1436_pembelian);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5372_berlangganan, id FROM items WHERE type = 'kanji' AND (slug = '765' OR id = '765') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5373_untuk_melampauinya, k_1437_melampauinya);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5374_melampaui_otoritas_anda, k_1437_melampauinya);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5374_melampaui_otoritas_anda, id FROM items WHERE type = 'kanji' AND (slug = '1134' OR id = '1134') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5375_terbalik, id FROM items WHERE type = 'kanji' AND (slug = '1346' OR id = '1346') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5376_untuk_bermain, k_1417_bermain);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5377_taman_hiburan, k_1417_bermain);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5377_taman_hiburan, id FROM items WHERE type = 'kanji' AND (slug = '960' OR id = '960') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5377_taman_hiburan, id FROM items WHERE type = 'kanji' AND (slug = '608' OR id = '608') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5378_sesuai, k_1424_sesuai);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5378_sesuai, id FROM items WHERE type = 'kanji' AND (slug = '571' OR id = '571') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5379_tidak_cocok, id FROM items WHERE type = 'kanji' AND (slug = '563' OR id = '563') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5379_tidak_cocok, k_1424_sesuai);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5380_untuk_mendaftar, id FROM items WHERE type = 'kanji' AND (slug = '845' OR id = '845') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5380_untuk_mendaftar, id FROM items WHERE type = 'kanji' AND (slug = '1358' OR id = '1358') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5381_untuk_menyetor, k_1425_deposito);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5382_setoran_bank, k_1425_deposito);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5382_setoran_bank, id FROM items WHERE type = 'kanji' AND (slug = '602' OR id = '602') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5383_untuk_menghias, k_1438_menghias);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5384_pakaian, id FROM items WHERE type = 'kanji' AND (slug = '716' OR id = '716') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5384_pakaian, k_1438_menghias);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5385_pencahayaan_dekoratif, id FROM items WHERE type = 'kanji' AND (slug = '706' OR id = '706') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5385_pencahayaan_dekoratif, k_1438_menghias);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5386_untuk_membuat_kebisingan, k_1439_riuh);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5387_kebisingan, k_1439_riuh);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5387_kebisingan, id FROM items WHERE type = 'kanji' AND (slug = '606' OR id = '606') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5399_untuk_menyerang, id FROM items WHERE type = 'kanji' AND (slug = '1378' OR id = '1378') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5399_untuk_menyerang, id FROM items WHERE type = 'kanji' AND (slug = '1377' OR id = '1377') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5400_beberapa_waktu_yang_lalu, id FROM items WHERE type = 'kanji' AND (slug = '543' OR id = '543') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5400_beberapa_waktu_yang_lalu, id FROM items WHERE type = 'kanji' AND (slug = '1369' OR id = '1369') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5401_birokratis, id FROM items WHERE type = 'kanji' AND (slug = '1018' OR id = '1018') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5401_birokratis, id FROM items WHERE type = 'kanji' AND (slug = '1392' OR id = '1392') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5401_birokratis, id FROM items WHERE type = 'kanji' AND (slug = '914' OR id = '914') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5425_perdana_menteri, id FROM items WHERE type = 'kanji' AND (slug = '1131' OR id = '1131') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5425_perdana_menteri, id FROM items WHERE type = 'kanji' AND (slug = '669' OR id = '669') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5425_perdana_menteri, id FROM items WHERE type = 'kanji' AND (slug = '453' OR id = '453') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5425_perdana_menteri, id FROM items WHERE type = 'kanji' AND (slug = '1395' OR id = '1395') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5504_akan_digeser, id FROM items WHERE type = 'kanji' AND (slug = '1368' OR id = '1368') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5629_untuk_menggantung_sesuatu, id FROM items WHERE type = 'kanji' AND (slug = '1519' OR id = '1519') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5701_menjadi_takut, id FROM items WHERE type = 'kanji' AND (slug = '1405' OR id = '1405') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5716_pemilik, id FROM items WHERE type = 'kanji' AND (slug = '528' OR id = '528') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6456_untuk_dikuburkan, id FROM items WHERE type = 'kanji' AND (slug = '1725' OR id = '1725') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7227_lampu_jalan, id FROM items WHERE type = 'kanji' AND (slug = '1400' OR id = '1400') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7227_lampu_jalan, k_2037_lampu);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7228_lampu_listrik, id FROM items WHERE type = 'kanji' AND (slug = '706' OR id = '706') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7228_lampu_listrik, k_2037_lampu);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7554_latar_belakang, k_1440_kembali);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7554_latar_belakang, id FROM items WHERE type = 'kanji' AND (slug = '636' OR id = '636') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7659_kesenangan, k_1420_menyenangkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7659_kesenangan, id FROM items WHERE type = 'kanji' AND (slug = '704' OR id = '704') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7719_menyenangkan, k_1420_menyenangkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7719_menyenangkan, k_1424_sesuai);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7771_jadi_begitu, id FROM items WHERE type = 'kanji' AND (slug = '780' OR id = '780') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7771_jadi_begitu, id FROM items WHERE type = 'kanji' AND (slug = '1369' OR id = '1369') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7773_dorongan, k_1430_dorongan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7812_beras_yang_belum_dipoles, id FROM items WHERE type = 'kanji' AND (slug = '2145' OR id = '2145') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7812_beras_yang_belum_dipoles, id FROM items WHERE type = 'kanji' AND (slug = '574' OR id = '574') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8685_dengan_baik, id FROM items WHERE type = 'kanji' AND (slug = '1369' OR id = '1369') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8842_untuk_mencium, k_8834_bau);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8875_menjadi_basah, k_8863_basah);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8929_untuk_memindahkan_sesuatu_yang_dekat, id FROM items WHERE type = 'kanji' AND (slug = '1398' OR id = '1398') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8930_untuk_menolak_sesuatu, id FROM items WHERE type = 'kanji' AND (slug = '1319' OR id = '1319') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8934_untuk_melukai_sesuatu, id FROM items WHERE type = 'kanji' AND (slug = '1318' OR id = '1318') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8980_pagar, k_8965_pagar);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8981_pagar_besi, id FROM items WHERE type = 'kanji' AND (slug = '760' OR id = '760') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8981_pagar_besi, k_8965_pagar);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8982_pagar_listrik, id FROM items WHERE type = 'kanji' AND (slug = '706' OR id = '706') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8982_pagar_listrik, id FROM items WHERE type = 'kanji' AND (slug = '548' OR id = '548') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8982_pagar_listrik, k_8965_pagar);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9047_kita, id FROM items WHERE type = 'kanji' AND (slug = '1294' OR id = '1294') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_9080_untuk_menahan_sesuatu, k_1430_dorongan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9089_ramen_tonkotsu, id FROM items WHERE type = 'kanji' AND (slug = '1309' OR id = '1309') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9089_ramen_tonkotsu, id FROM items WHERE type = 'kanji' AND (slug = '924' OR id = '924') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9165_berbagai_sendi, id FROM items WHERE type = 'kanji' AND (slug = '1058' OR id = '1058') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9165_berbagai_sendi, id FROM items WHERE type = 'kanji' AND (slug = '856' OR id = '856') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9263_untuk_mengatur_sesuatu, id FROM items WHERE type = 'kanji' AND (slug = '9251' OR id = '9251') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9290_plat_besi, id FROM items WHERE type = 'kanji' AND (slug = '760' OR id = '760') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9290_plat_besi, id FROM items WHERE type = 'kanji' AND (slug = '1399' OR id = '1399') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_9336_keponakan_perempuan, k_9335_keponakan_perempuan);

END $$;
