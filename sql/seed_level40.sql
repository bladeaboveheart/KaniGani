-- ====================================================
-- KaniGani — Seed Data Level 40 (v2, relasional)
-- Auto-generated with Indonesian Slugs
-- ====================================================

DO $$
DECLARE
  -- ============ RADICAL IDs (Level 40) ============
  r_378_mempekerjakan UUID; r_379_setiap UUID; r_380_melestarikan UUID; r_8833_bersuka_cita UUID; r_8907_gandum UUID;

  -- ============ KANJI IDs (Level 40) ============
  k_1742_tinjauan UUID; k_1743_penduduk UUID; k_1744_mencongklang UUID; k_1745_pilar UUID; k_1746_nyanyian UUID; k_1747_kesalehan_anak UUID; k_1748_jenius UUID; k_1749_secara_bersamaan UUID; k_1750_dosis UUID; k_1751_meniup UUID; k_1752_parit UUID; k_1753_patroli UUID; k_1754_firman UUID; k_1755_memancarkan UUID; k_1756_portabel UUID; k_1757_peringatan UUID; k_1758_tajam UUID; k_1759_menyebar UUID; k_1760_tuan UUID; k_1761_pengorbanan UUID; k_1762_menangkap UUID; k_1763_subur UUID; k_1764_ditumbuhi_terlalu_banyak UUID; k_1765_sering UUID; k_1766_berkembang_biak UUID; k_1767_mencairkan UUID; k_1768_bertabrakan UUID; k_1769_menghormati UUID; k_1770_memuji UUID; k_1771_transparan UUID; k_1772_tetangga UUID; k_1773_anggun UUID; k_8835_senang UUID; k_8909_gaib UUID; k_8955_mie UUID; k_8969_menculik UUID;

  -- ============ VOCABULARY IDs (Level 40) ============
  v_6102_untuk_mendengarkan UUID; v_6117_prefektur_kagawa UUID; v_6323_melompat UUID; v_6338_salam UUID; v_6339_salam UUID; v_6340_untuk_mengulangi UUID; v_6341_mengevakuasi UUID; v_6342_untuk_bersandar_pada_sesuatu UUID; v_6343_istrimu UUID; v_6344_untuk_menolak UUID; v_6345_untuk_menggantung UUID; v_6346_sekuat_tenaga UUID; v_6347_penanganan UUID; v_6348_untuk_mengelola UUID; v_6349_untuk_memilih UUID; v_6350_untuk_memuji UUID; v_6351_pembicaraan_rahasia UUID; v_6352_untuk_melonggarkan UUID; v_6353_hadiah UUID; v_6355_prefektur_okinawa UUID; v_6356_penyuapan UUID; v_6357_untuk_nona UUID; v_6358_buronan UUID; v_6359_penasihat UUID; v_6360_untuk_melihat_kembali_sesuatu UUID; v_6361_memoar UUID; v_6362_ditempatkan_di_jepang UUID; v_6363_tempat_tinggal UUID; v_6364_tempat_parkir UUID; v_6365_pasukan_yang_ditempatkan UUID; v_6366_untuk_berlari_kencang UUID; v_6367_pilar UUID; v_6368_tiang_telepon UUID; v_6369_untuk_bernyanyi UUID; v_6370_menganjurkan UUID; v_6371_nyanyian UUID; v_6372_solo UUID; v_6373_nyanyian UUID; v_6374_paduan_suara UUID; v_6375_kesalehan_anak UUID; v_6376_ketidaktaatan_kepada_orang_tua UUID; v_6377_jenius UUID; v_6378_bisnis_sampingan UUID; v_6379_penggunaan_gabungan UUID; v_6380_untuk_menggabungkan UUID; v_6381_deterjen UUID; v_6382_obat UUID; v_6383_apoteker UUID; v_6384_pengawet UUID; v_6385_obat UUID; v_6386_untuk_meniup UUID; v_6387_parit UUID; v_6388_parit_dalam UUID; v_6389_parit_luar UUID; v_6390_kanal UUID; v_6391_patroli UUID; v_6392_ziarah UUID; v_6393_untuk_berkeliling UUID; v_6394_petugas_polisi UUID; v_6395_untuk_memperingatkan UUID; v_6396_peringatan UUID; v_6397_peringatan UUID; v_6398_kewaspadaan UUID; v_6399_knalpot UUID; v_6400_pengecualian UUID; v_6401_drainase UUID; v_6402_emisi UUID; v_6403_pengecualian UUID; v_6404_portabel UUID; v_6405_untuk_terlibat UUID; v_6406_kepekaan UUID; v_6407_sensitivitas_berlebihan UUID; v_6408_cepat UUID; v_6409_ketajaman UUID; v_6410_tajam UUID; v_6411_ketajaman UUID; v_6412_terdepan UUID; v_6413_untuk_menyebar UUID; v_6414_uang_jaminan UUID; v_6415_tempat_tinggal UUID; v_6416_ruang_tatami UUID; v_6417_tn UUID; v_6418_tuan_feodal UUID; v_6419_istana UUID; v_6420_pengorbanan_terbang UUID; v_6421_perolehan UUID; v_6422_menangkap UUID; v_6423_rampasan UUID; v_6424_menjadi_mewah UUID; v_6425_pertumbuhan_mewah UUID; v_6426_sering UUID; v_6427_pembiakan UUID; v_6428_sejahtera UUID; v_6429_frekuensi UUID; v_6430_sering_terjadi UUID; v_6431_sering UUID; v_6432_reproduksi UUID; v_6433_untuk_menggandakan UUID; v_6434_tipis UUID; v_6435_kelemahan UUID; v_6436_berhati_dingin UUID; v_6437_terkejut UUID; v_6438_tabrakan UUID; v_6439_menghormati UUID; v_6440_menghormati UUID; v_6441_untuk_memuji UUID; v_6442_hadiah UUID; v_6443_medali UUID; v_6444_menjadi_transparan UUID; v_6445_transparan UUID; v_6446_tetangga UUID; v_6447_rumah_tetangga UUID; v_6448_lingkungan UUID; v_6449_negara_tetangga UUID; v_6450_tetangga UUID; v_6451_kesenian UUID; v_6452_musik_pengadilan_jepang UUID; v_6453_keanggunan UUID; v_7758_kosong UUID; v_8730_bagian UUID; v_8843_keadaan_kenikmatan UUID; v_8844_senang UUID; v_8871_tempurung_lutut UUID; v_8914_peri UUID; v_8915_raksasa UUID; v_8916_mempesona UUID; v_8928_untuk_diencerkan UUID; v_8970_mie UUID; v_8971_penggilas_adonan UUID; v_8974_mie_cina UUID; v_8988_mentsuyu UUID; v_8989_penculikan UUID; v_9154_untuk_keluar_ke_dunia UUID; v_9454_pembengkakan UUID; v_9495_sebab_dan_akibat UUID;

BEGIN

  DELETE FROM items WHERE level = 40;

  -- 1. RADICALS
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '雇', 'mempekerjakan', 40, 1, 'Radikal ini sama dengan kanji. Artinya <radikal>mempekerjakan</radikal>.')
    RETURNING id INTO r_378_mempekerjakan;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '毎', 'setiap', 40, 2, 'Radikal ini sama dengan kanji. Artinya <radikal>setiap</radikal>.')
    RETURNING id INTO r_379_setiap;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '保', 'melestarikan', 40, 3, 'Radikal ini sama dengan kanji. Artinya <radikal>melestarikan</radikal>.')
    RETURNING id INTO r_380_melestarikan;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '喜', 'bersuka-cita', 40, 4, 'Radikal ini sama dengan kanji. Artinya <radikal>bersukacita</radikal>.')
    RETURNING id INTO r_8833_bersuka_cita;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '麦', 'gandum', 40, 5, 'Kata radikal ini sama dengan kanji, tapi Anda sudah mempelajarinya sejak lama, jadi inilah pengingat mnemoniknya, untuk berjaga-jaga:

Apa yang menempel di tulang rusuk Anda di musim dingin? <radikal>Gandum</radikal>! Roti gandum, Wheaties, dan krim gandum merupakan makanan terbaik untuk bertahan hidup di musim dingin.')
    RETURNING id INTO r_8907_gandum;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_378_mempekerjakan, 'Mempekerjakan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_379_setiap, 'Setiap', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_380_melestarikan, 'Melestarikan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_8833_bersuka_cita, 'Bersuka cita', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_8907_gandum, 'Gandum', true, true);

  -- 2. KANJIS
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '顧', 'tinjauan', 40, 6, 'Anda <radical>menggunakan</radical> <radical>geoduck</radical> untuk <kanji>meninjau</kanji> semua pekerjaan Anda.', 'Saat <kanji>meninjau</kanji> geoduck dokumen Anda, ia melihat sesuatu yang mengejutkan. Anda memiliki <reading>子</reading> (こ)!')
    RETURNING id INTO k_1742_tinjauan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '駐', 'penduduk', 40, 7, '<radikal>kuda</radikal> adalah <radikal>tuan</radikal> Anda dan Anda hanyalah <kanji>penghuni</kanji> di rumahnya. Bagaimana kuda ini menjadi tuanmu? Itu bukanlah pertanyaan yang harus ditanyakan oleh seorang penduduk! Ketahuilah tempatmu, penduduk!', 'Untuk membuktikan diri Anda sebagai <kanji>penghuni</kanji> yang layak di rumah tuan kuda, Anda harus menangkap <read>Chew</reading>bacca (ちゅう). Tuan kudamu mengoleksi makhluk langka, dan Chewbacca adalah keinginan terbarunya. Jika Anda ingin tetap menjadi penghuni rumah tersebut, Anda harus menangkap Chewbacca.')
    RETURNING id INTO k_1743_penduduk;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '駆', 'mencongklang', 40, 8, 'Seekor <radical>kuda</radical> pergi ke <radical>distrik</radical> favoritnya untuk <kanji>berpacu</kanji> berkeliling. Distrik ini memiliki banyak bangunan dan lampu yang keren untuk dilihat, sehingga kuda ini suka berlari kencang di sekitar sana.', 'Kemudian kudanya <kanji>berpacu</kanji> ke jalan dan tertabrak <reading>ca</reading>r (か). Ya ampun, ada darah dimana-mana. Kuda ini tidak akan pernah berlari kencang lagi. Mobil itu benar-benar menghancurkannya.')
    RETURNING id INTO k_1744_mencongklang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '柱', 'pilar', 40, 9, '<radical>pohon</radikal> ini adalah <radikal>master</radikal> dari sebuah <kanji>pilar</kanji>. Pilar itu tunduk pada tuan pohonnya karena pohon itu begitu besar dan mengagumkan, besar, sejuk, dan sebagainya. Pilar tersebut sangat menghormati tuan pohonnya.', 'Saat membungkuk, <kanji>pilar</kanji> secara tidak sengaja menghancurkan <reading>Chew</reading>bacca (ちゅう). Pilar merasa ngeri karena telah membunuh Chewbacca, teman terdekat tuan pohonnya. Pilar itu akan dihukum.')
    RETURNING id INTO k_1745_pilar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '唱', 'nyanyian', 40, 10, 'Saatnya melakukan <radical>mulut</radikal> <radikal>matahari</radikal> <radikal>matahari</radikal> <kanji>nyanyian</kanji>. Saat itulah engkau menggunakan mulutmu untuk melantunkan sun sun, sun sun, sun sun, berulang-ulang hingga matahari muncul.', 'Anda melakukan <kanji>nyanyian</kanji> ini karena <reading>Shou</reading>gun (しょう) memerintahkan Anda melakukannya. Matahari tidak terlalu menyinari dirinya akhir-akhir ini, dan dia merasa tidak senang. Jadi sekarang kamu harus bernyanyi untuknya.')
    RETURNING id INTO k_1746_nyanyian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '孝', 'kesalehan-anak', 40, 11, '<radical>Guru</radical> ada di sekitar kita. Mereka yang datang sebelum kita adalah guru kita, jadi penting untuk menghormati mereka. Ini adalah ide dasar dari <kanji>kesalehan anak</kanji>.', 'Dengan mempertimbangkan <kanji>kesalehan anak</kanji>, kamu memutuskan untuk pergi mengunjungi ayahmu, yang sedang <reading>こう</reading>いち.')
    RETURNING id INTO k_1747_kesalehan_anak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '俊', 'jenius', 40, 12, '<radikal>pemimpin</radikal> dari semua <radikal>laba-laba</radikal> adalah <kanji>jenius</kanji>! Laba-laba sudah cukup pintar. Mereka dapat menjalin rumah dan perangkap yang rumit dalam satu jaring. Mereka bahkan tahu di mana tidak boleh melangkah agar tidak ketahuan. Tapi pemimpin tahu segalanya. Itu membuat dirinya menjadi komputer berselaput kecil dan segalanya!', 'Saat Anda melihat laba-laba <kanji>jenius</kanji> Anda menyadari bahwa <reading>segera</reading> (しゅん) laba-laba akan mengambil alih manusia. Mereka jauh lebih pintar dari kita. Sebentar lagi kita akan menjadi serangganya.')
    RETURNING id INTO k_1748_jenius;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '兼', 'secara-bersamaan', 40, 13, '<radikal>Mona Lisa</radikal> ada di depan Anda. "Kalian semua harus melukis Mona Lisa <kanji>bersamaan</kanji>," kata guru kelas seni kalian.', 'Seluruh kelas Anda selesai <kanji>bersamaan</kanji>. Anda melihat hasil akhir Anda. Tunggu, itu bukan Mona Lisa. Anda melukis <read>Ken</reading> (けん) sang samurai.')
    RETURNING id INTO k_1749_secara_bersamaan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '剤', 'dosis', 40, 14, '<radical>Secara bersamaan</radikal>, Anda melemparkan <radical>pisau</radikal> Anda ke orang lain yang melemparkan pisau ke arah Anda dan Anda berdua mendapatkan <kanji>dosis</kanji> obat Anda sendiri. Secara harfiah, ada racun pada pisau ini dan sekarang Anda berdua telah ditusuk.', '"Aku butuh <kanji>dosis</kanji> penawarnya!" Anda berteriak, dan orang lain menatap mata Anda. Mereka perlahan-lahan mengeluarkan lofon (ざい) kecil <read>xy</reading> dari sakunya, memainkan beberapa nada, lalu memakannya. “Ah, kamu ingin satu dosis obat gambang, bukan?”')
    RETURNING id INTO k_1750_dosis;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '吹', 'meniup', 40, 15, 'Anda mencoba mengeluarkan angin dari <radical>mulut</radical> Anda tetapi <radical>kekurangan</radical> nafas untuk <kanji>meniup</kanji> apa pun. Anda menggunakan mulut Anda dan mencoba mengeluarkan udara, tetapi Anda gagal melakukannya.', 'Dasar <reading>foo</reading>l (ふ) yang konyol, alasan kamu tidak bisa <kanji>menghembuskan</kanji> udara apa pun dari mulutmu adalah karena tanganmu berada di atasnya. Anda tidak dapat mengeluarkan udara dengan cara itu. Dasar bodoh, kamu.')
    RETURNING id INTO k_1751_meniup;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '堀', 'parit', 40, 16, 'Bayangkan Anda sedang mengemudi dan ada <radical>tanah</radical> dengan <radical>bendera</radical> di dekat jalan <radical>keluar</radical>. Bendera itu menandai <kanji>parit</kanji> yang membentang di sepanjang jalan. Jangan mencoba keluar dari jalan di sini, atau Anda akan terjebak di selokan itu.', 'Jika kamu akhirnya membelok ke dalam <kanji>parit</kanji> kamu akan berteriak, "<reading>Suci</reading> (ほり) sial!" Kemudian Anda akan meluncur ke dalam parit.')
    RETURNING id INTO k_1752_parit;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '巡', 'patroli', 40, 17, 'Anda menggunakan <radical>skuter</radical> untuk menavigasi <radical>banjir</radical> karena Anda sedang <kanji>patroli</kanji>. Anda adalah salah satu dari sedikit orang yang memiliki skuter terapung, jadi tugas Anda adalah berpatroli di perairan banjir dan mencari orang dan hewan yang membutuhkan bantuan.', 'Anda harus <kanji>patroli</kanji> semua banjir di <reading>Juni</reading> (じゅん). Sayangnya, pada bulan itulah sebagian besar banjir di Jepang terjadi, jadi Anda harus sering berpatroli.')
    RETURNING id INTO k_1753_patroli;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '戒', 'firman', 40, 18, '<radikal>pemabuk</radikal> mengeluarkan <radikal>dua puluh</radikal> <kanji>perintah</kanji> kepada rakyatnya.', 'Pemabuk itu meneriakkan dua puluh <kanji>perintah</kanji>nya kepada yang lain di bar, tapi semuanya tentang <reading>kay</reading>aks (かい).')
    RETURNING id INTO k_1754_firman;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '排', 'memancarkan', 40, 19, '<radikal>jari</radikal> adalah tempat <radikal>penjahat</radikal> memancarkan atau <kanji>mengusir</kanji> semua energi buruknya.', 'Kemudian Anda menyadari apa yang sebenarnya <kanji>memancarkan</kanji>ting: mengerikan, mengerikan <reading>hai</reading>ku (はい).')
    RETURNING id INTO k_1755_memancarkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '携', 'portabel', 40, 20, 'Gunakan <radical>jari</radical> Anda untuk mengusir <radical>kalkun</radical> menuruni <radical>tangga</radical> dan masuk ke dalam wadah <kanji>portabel</kanji>. Anda telah mencoba memasukkan kalkun ini ke dalam pengangkut sehingga Anda dapat mengangkutnya selama satu jam terakhir. Anda akhirnya menyelesaikannya dengan bantuan gravitasi. Dan, tahukah Anda, memukul pantatnya sedikit dengan jari Anda.', 'Anda memerlukan kalkun yang lebih <kanji>portabel</kanji> karena Anda akan membawanya ke toko <reading>ca</reading>ke (けい) untuk diubah menjadi kue. Anda tidak memasaknya! Ya ampun, ada apa denganmu? Tidak, Anda sedang membuat kue, untuk ulang tahunnya. Pembuat roti perlu melihatnya untuk referensi.')
    RETURNING id INTO k_1756_portabel;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '敏', 'peringatan', 40, 21, '<radical>Setiap</radical> <radical>musim dingin</radical> Anda <kanji>waspada</kanji> akan bahaya. Semua orang tahu bahwa monster terburuk muncul di musim dingin jadi Anda harus waspada jika ingin bertahan hidup.', 'Menjadi orang yang <kanji>waspada</kanji>, Anda mendengar sasquatch mendekat dan menyelam ke <reading>tempat sampah</reading> (びん) untuk bersembunyi. Tempat sampahnya berbau sangat tidak enak dan Anda sangat waspada terhadap berbagai bau dan bau yang saat ini masuk ke lubang hidung Anda, tapi setidaknya Anda aman.')
    RETURNING id INTO k_1757_peringatan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '鋭', 'tajam', 40, 22, 'Jika Anda memiliki <radical>emas</radical> Anda juga memerlukan <radical>penjaga</radical> dengan pedang yang sangat <kanji>tajam</kanji> untuk melindunginya.', 'Anda memasang semua perangkap tajam di sekitar emas Anda saat Anda menginjak <kanji>tajam</kanji> <reading>a</reading>jagung (えい) yang tergeletak di lantai. Aduh! Tapi tunggu, nanti Anda mendapat ide bagus!')
    RETURNING id INTO k_1758_tajam;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '敷', 'menyebar', 40, 23, 'Mengambil <radical>salib</radical> dengan <radical>drop</radical> di atasnya, Anda berjalan melewati <radical>sawah</radical> ke <radical>arah</radical> <radical>musim dingin</radical> dan <kanji>melebarkan</kanji> tangan Anda lebar-lebar. Anda merentangkan tangan untuk menghentikan datangnya musim dingin karena padi Anda belum selesai tumbuh. Anda membawa salib itu bersama Anda untuk mendapatkan kekuatan persuasi keagamaan tambahan, dan menjatuhkannya jika ada nasi yang haus.', 'Dengan tanganmu <kanji>terbentang</kanji> seperti itu, kamu terlihat sangat <read>cantik</reading> (しき). Lengan terbuka jelas merupakan postur yang anggun, dan fakta bahwa Anda memegang salib membuatnya semakin anggun. 

Catatan tambahan: Pembacaan kun''yomi resmi hanya し, tapi karena lebih banyak kata yang menggunakan しき, kami fokus pada hal itu di sini. Meskipun bagian き secara teknis adalah okurigana, sebenarnya bagian ini digunakan dalam pembacaan sebagian besar senyawa yang menggunakan kanji ini!')
    RETURNING id INTO k_1759_menyebar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '殿', 'tuan', 40, 24, 'Di bawah <radikal>bendera</radikal> yang sama, semua orang berkumpul <radikal>bersama</radikal> untuk mempersembahkan <radikal>senjata</radikal> baru kepada <kanji>tuan</kanji> Anda. Anda semua membungkuk dan berkata, "<kanji>Tuanku</kanji>, hadiah ini untuk Anda." Karena itulah cara yang tepat untuk menyapa tuanmu.', 'Saat Anda memberikan senjatanya kepada <kanji>tuan</kanji>, Anda melihat wajahnya berubah menjadi cemberut, "Ada apa, <kanji>Tuanku</kanji>?" kamu bertanya. "ADA <read>DEN</reading>T (でん)!" dia berteriak.')
    RETURNING id INTO k_1760_tuan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '犠', 'pengorbanan', 40, 25, '<radical>sapi</radikal> <radikal>kebenaran</radikal> selalu ada untuk kita. Dialah sapi yang harus <kanji>mengorbankan</kanji> agar kita bisa bertahan hidup.', '<kanji>pengorbanan</kanji> harus dilakukan melalui <reading>gui</reading>llotine (ぎ). Saya tahu, saya tahu, kedengarannya sangat brutal, tapi itulah cara terbaik. Cepat, efektif, dan mudah-mudahan pengorbanannya—maksudnya sapi—tidak terasa apa-apa.')
    RETURNING id INTO k_1761_pengorbanan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '獲', 'menangkap', 40, 26, 'Anda melihat <radical>hewan</radikal> dengan beberapa <radikal>bunga</radikal> dan <radikal>kalkun</radikal> di <radikal>bangku</radikal> mencoba <kanji>merebut</kanji> mereka. Hewan yang memiliki bunga ini sangat tinggi sehingga kalkun harus berdiri di atas bangku untuk mencoba merebut bunga tersebut.', 'Hewan yang coba <kanji>merebut</kanji> bunganya adalah <reading>ayam</reading> (かく). Ayam jago jauh lebih besar daripada kalkun, itulah sebabnya kalkun harus berdiri di atas bangku untuk mencoba merebut bunga tersebut.')
    RETURNING id INTO k_1762_menangkap;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '茂', 'subur', 40, 27, 'Hamparan <radical>bunga</radical> yang tebal tumbuh di <radical>slide</radical> dan di <radical>pemabuk</radical> yang pingsan di sebelahnya di taman <kanji>mewah</kanji> Anda. Taman Anda begitu subur sehingga bunga-bunga benar-benar memenuhi semua yang ada di dalamnya, mulai dari tempat bermain anak-anak hingga pemabuk malang yang berkeliaran di sana tadi malam.', 'Saat Anda mencoba mengusir pemabuk itu keluar dari taman <kanji>mewah</kanji> Anda, dia mulai <read>mo</reading>an (も) dengan kesusahan. Taman Anda begitu subur sehingga bunga-bunga telah membungkus akarnya di sekelilingnya dan mulai menguras nutrisi dari tubuhnya, menyebabkan dia mengerang kesakitan.')
    RETURNING id INTO k_1763_subur;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '繁', 'ditumbuhi-terlalu-banyak', 40, 28, '<radical>Setiap</radical> <radical>musim dingin</radical> bidang <radical>thread</radical> menjadi <kanji>ditumbuhi</kanji>. Ya, benang tumbuh di ladang saat ini. Dan benangnya tumbuh paling banyak di musim dingin karena alasan. Benangnya terlalu banyak sehingga Anda bahkan tidak bisa melewatinya tanpa memotong benangnya dengan parang.', 'Alasan mengapa bidang thread ini menjadi <kanji>ditumbuhi</kanji> adalah karena kamu <reading>Han</reading> (はん) seorang diri dan kamu tidak terbiasa dengan hal-hal sederhana seperti farming thread. Han Solo terbiasa meledakkan penjahat dan mencium putri. Benang yang terlalu banyak bukanlah keahliannya. Gunakan blaster Anda untuk membersihkan jalan melalui benang ini daripada menggunakan parang itu.')
    RETURNING id INTO k_1764_ditumbuhi_terlalu_banyak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '頻', 'sering', 40, 29, 'Anda <radical>berjalan</radical> dengan <radical>geoduck</radical> dalam jumlah yang <kanji>sering</kanji>. Geoduck ini benar-benar membuat Anda penasaran, sehingga Anda pasti sering mengunjungi area di mana geoduck berada dan berjalan-jalan.', 'Rupanya umat Hindu juga menyukai geoduck karena <reading>Hin</reading>du (ひん) orang <kanji>sering</kanji> juga cukup sering mengunjungi daerah ini. Anda selalu melihat geoduck di sini, tetapi juga banyak orang Hindu.')
    RETURNING id INTO k_1765_sering;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '殖', 'berkembang-biak', 40, 30, 'Saat Anda pergi ke <radical>yakuza</radical> untuk membuat segalanya <radical>meluruskan</radical>, masalah Anda akan <kanji>berlipat ganda</kanji>.', 'Masalah Anda <kanji>berlipat ganda</kanji> dan memberi Anda <read>kejutan</reading> (しょく) yang cukup besar karena preman yakuza melakukan kejahatan setelah mengejutkan kejahatan atas nama Anda. Namun Anda tidak perlu kaget — tentu saja kejahatan akan berlipat ganda jika Anda meminta yakuza untuk "meluruskan keadaan".')
    RETURNING id INTO k_1766_berkembang_biak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '薄', 'mencairkan', 40, 31, '<radical>Bunga</radical> sedang dikerjakan oleh <radical>tsunami</radical> dengan <radical>drop</radical> <radical>spesialisasi</radical>: tsunami ini dapat <kanji>mencairkan</kanji> bunga hanya dengan satu tetes bertenaga tsunami. Itulah keistimewaannya.', 'Anda melihat bunganya <kanji>encer</kanji>d hanya dengan satu tetes, dan menyadari bahwa ini adalah <reading>hack</reading> (はく) yang bersifat alami. Anda belum pernah melihat hal seperti ini sebelumnya, jadi Anda mengira tsunami telah menemukan cara untuk merusak alam dan itulah cara alam menjadi sangat baik dalam melemahkan keadaan. Dengan meretas alam.')
    RETURNING id INTO k_1767_mencairkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '衝', 'bertabrakan', 40, 32, 'Jika Anda mencoba <radical>pergi</radikal> ke suatu tempat tetapi Anda terlalu <radikal>berat</radikal> Anda akan <kanji>bertabrakan</kanji> dengan semuanya. Mobil, orang, rumah. Anda terlalu berat untuk menghindarinya, jadi Anda bertabrakan dengan semuanya.', 'Anda sedang berkeliling kota, Anda <kanji>bertabrakan</kanji> dengan banyak benda, dan tiba-tiba Anda bertabrakan dengan <reading>Shou</reading>gun (しょう)! Oh tidak! Shogun terlihat sangat marah.')
    RETURNING id INTO k_1768_bertabrakan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '誉', 'menghormati', 40, 33, 'Ada <radical>rumput</radical> di <radical>tanah</radical> dan <radical>sirip</radical> di sana <radical>mengatakan</radical> Anda tidak memiliki <kanji>kehormatan</kanji>. Siripnya adalah sisa ikan yang Anda potong-potong dan mereka tidak percaya itu adalah tindakan terhormat. Sekarang mereka hanya duduk di tanah di atas rumput, memanggilmu karena tidak mendapat kehormatan.', 'Menjadi salah satu <kanji>kehormatan</kanji> kecil, Anda memutuskan untuk menekan sirip vokal ini dengan <reading>yo</reading>-yo (よ). Anda mengeluarkan yo-yo Anda dan mulai memukul setiap siripnya sampai mereka berhenti berbicara tentang betapa kecilnya kehormatan yang Anda miliki.')
    RETURNING id INTO k_1769_menghormati;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '褒', 'memuji', 40, 34, 'Angkat <radical>tutup</radikal> dari <radikal>cadangan</radikal> Anda, <radikal>tendang</radikal>, dan <kanji>puji</kanji> Tuhan! Makanan Anda tetap awet, tidak perlu tutupnya lagi, pujilah!', 'Anda melakukan <kanji>pujian</kanji> ini di <read>ho</reading>saya (ほう), namun, bukan di gereja. Saya rasa siapa pun di luar rumah Anda tidak akan mengerti mengapa Anda memuji benda mati.')
    RETURNING id INTO k_1770_memuji;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '透', 'transparan', 40, 35, '<radical>skuter</radical> yang Anda buat dari <radical>biji-bijian</radical>, dan akan Anda gunakan untuk menuruni <radical>tangga</radical>, sepenuhnya <kanji>transparan</kanji>. Anda menumbuk butirannya hingga halus hingga Anda bisa melihatnya! Dan kemudian Anda membuatnya menjadi skuter.', 'Anda terpeleset, skuter <kanji>transparan</kanji> meluncur menuruni tangga tanpa Anda dan memasuki jalanan <reading>とう</reading>きょう. Tidaaaak! Transpa-skutik kembali!')
    RETURNING id INTO k_1771_transparan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '隣', 'tetangga', 40, 36, 'Di dalam <radical>gedung</radical> itu seseorang sedang melakukan <radical>rice</radical> <radical>dance</radical>. Seseorang itu adalah <kanji>tetangga</kanji> Anda.', '<kanji>Tetangga</kanji> Anda memiliki <read>rin</reading>g (りん) yang luar biasa yang mereka gunakan untuk tarian nasi mereka.')
    RETURNING id INTO k_1772_tetangga;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '雅', 'anggun', 40, 37, '<radikal>taring</radikal> pada <radikal>kalkun</radikal> adalah <kanji>elegan</kanji>. Kebanyakan kalkun tidak memiliki taring, sehingga kalkun bertaring ini cukup anggun dan bermartabat. Kalkun ini istimewa.', 'Taring <kanji>elegan</kanji> ini membuat kalkun lebih mirip <reading>ga</reading>rgoyle (が) daripada kalkun. Faktanya, Anda belum pernah melihatnya bergerak sama sekali. Mungkin itu hanya gargoyle yang anggun!')
    RETURNING id INTO k_1773_anggun;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '嬉', 'senang', 40, 38, 'Seorang <radikal>wanita</radikal> sedang <radikal>bersukacita</radikal>. Dia pasti <kanji>senang</kanji> dan <kanji>senang</kanji> bersukacita dengan lantang di depan Anda seperti ini.', '"Saya sangat <kanji>senang</kanji>!" wanita itu berteriak, "Karena aku menemukan kunci <reading></reading> (き)!" Anda segera mulai bertanya-tanya apa "kunci" itu. Kunci kehidupan? Kunci belajar bahasa Jepang? Kemudian Anda melihat dia memegang beberapa kunci mobil.')
    RETURNING id INTO k_8835_senang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '妖', 'gaib', 40, 39, '<radikal>wanita</radikal> seperti apa yang turun dari <radikal>surga</radikal>? Yang <kanji>supernatural</kanji>. Dia sangat <kanji>mempesona</kanji>.', 'Wanita <kanji>supernatural</kanji> muncul di hadapan Anda dan dia sangat <kanji>mempesona</kanji> sehingga perlu beberapa saat untuk menyadari bahwa dia sepenuhnya terbuat dari <reading>yo</reading>gurt (よう).')
    RETURNING id INTO k_8909_gaib;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '麺', 'mie', 40, 40, 'Salah satu cara untuk menampilkan <radical>gandum</radical> di <radical>wajah</radical> Anda adalah dengan <kanji>mie</kanji>.', 'Setelah selesai memasukkan mie ke wajahmu, kamu bisa menggunakan sisa mie tersebut untuk membuat <kanji>mie</kanji><reading>men</reading> (めん).')
    RETURNING id INTO k_8955_mie;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '拉', 'menculik', 40, 41, '<radical>jari</radical> Anda harus <radical>berdiri</radical> tegak, untuk melindungi Anda agar tidak <kanji>diculik</kanji>, atau <kanji>ditarik</kanji> di luar keinginan Anda.', 'Tiba-tiba, seseorang benar-benar mencoba <kanji>menculik</kanji> Anda. Mereka <kanji>menarik</kanji>meninggalkan Anda. Itu adalah dewa Mesir kuno <reading>Ra</reading> (ら). Membantu!')
    RETURNING id INTO k_8969_menculik;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1742_tinjauan, 'Tinjauan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1743_penduduk, 'Penduduk', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1744_mencongklang, 'Mencongklang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1745_pilar, 'Pilar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1746_nyanyian, 'Nyanyian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1747_kesalehan_anak, 'Kesalehan Anak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1748_jenius, 'Jenius', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1749_secara_bersamaan, 'Secara bersamaan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1750_dosis, 'Dosis', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1751_meniup, 'Meniup', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1752_parit, 'Parit', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1753_patroli, 'Patroli', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1754_firman, 'Firman', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1755_memancarkan, 'Memancarkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1755_memancarkan, 'Mengeluarkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1756_portabel, 'Portabel', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1757_peringatan, 'Peringatan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1758_tajam, 'Tajam', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1759_menyebar, 'Menyebar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1760_tuan, 'Tuan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1760_tuan, 'Yang mulia', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1761_pengorbanan, 'Pengorbanan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1762_menangkap, 'Menangkap', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1763_subur, 'Subur', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1764_ditumbuhi_terlalu_banyak, 'Ditumbuhi terlalu banyak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1765_sering, 'Sering', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1766_berkembang_biak, 'Berkembang biak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1767_mencairkan, 'Mencairkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1768_bertabrakan, 'Bertabrakan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1769_menghormati, 'Menghormati', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1770_memuji, 'Memuji', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1771_transparan, 'Transparan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1772_tetangga, 'Tetangga', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1772_tetangga, 'Tetangga', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1773_anggun, 'Anggun', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_8835_senang, 'Senang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_8835_senang, 'Senang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_8909_gaib, 'Gaib', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_8909_gaib, 'Mempesona', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_8955_mie, 'mie', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_8969_menculik, 'Menculik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_8969_menculik, 'Menarik', false, true);

  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1742_tinjauan, 'こ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1742_tinjauan, 'かえり', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1743_penduduk, 'ちゅう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1744_mencongklang, 'か', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1744_mencongklang, 'く', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1745_pilar, 'ちゅう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1745_pilar, 'はしら', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1746_nyanyian, 'しょう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1746_nyanyian, 'とな', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1747_kesalehan_anak, 'こう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1748_jenius, 'しゅん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1749_secara_bersamaan, 'けん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1749_secara_bersamaan, 'か', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1750_dosis, 'ざい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1751_meniup, 'ふ', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1751_meniup, 'すい', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1752_parit, 'ほり', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1752_parit, 'くつ', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1753_patroli, 'じゅん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1753_patroli, 'めぐ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1753_patroli, 'まわ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1754_firman, 'かい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1754_firman, 'いまし', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1755_memancarkan, 'はい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1756_portabel, 'けい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1756_portabel, 'たずさ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1757_peringatan, 'びん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1758_tajam, 'えい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1758_tajam, 'するど', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1759_menyebar, 'しき', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1759_menyebar, 'し', 'kunyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1759_menyebar, 'ふ', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1760_tuan, 'でん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1760_tuan, 'との', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1760_tuan, 'どの', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1761_pengorbanan, 'ぎ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1762_menangkap, 'かく', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1762_menangkap, 'え', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1763_subur, 'も', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1763_subur, 'しげ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1764_ditumbuhi_terlalu_banyak, 'はん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1764_ditumbuhi_terlalu_banyak, 'しげ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1765_sering, 'ひん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1765_sering, 'しき', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1766_berkembang_biak, 'しょく', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1766_berkembang_biak, 'ふ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1767_mencairkan, 'はく', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1767_mencairkan, 'うす', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1768_bertabrakan, 'しょう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1768_bertabrakan, 'つ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1769_menghormati, 'よ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1769_menghormati, 'ほ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1770_memuji, 'ほう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1770_memuji, 'ほ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1771_transparan, 'とう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1771_transparan, 'す', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1772_tetangga, 'りん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1772_tetangga, 'となり', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1773_anggun, 'が', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1773_anggun, 'みや', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_8835_senang, 'き', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_8835_senang, 'うれ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_8909_gaib, 'よう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_8909_gaib, 'あや', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_8955_mie, 'めん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_8969_menculik, 'ら', 'onyomi', true, true);

  -- 3. VOCABULARIES
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '聴く', 'untuk-mendengarkan', 40, 42, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>mendengarkan</kanji> dan versi kosakata kata kerjanya adalah <vocabulary>mendengarkan</vocabulary>.

Berbeda dengan 聞く, yang bisa berarti "mendengar", 聴く mengacu pada mendengarkan sesuatu secara aktif dengan niat. Ini paling umum digunakan untuk mendengarkan musik, tetapi Anda juga dapat menggunakannya dengan orang lain ketika Anda ingin menekankan pertunangan Anda, seperti 耳を傾けて聴く (dengarkan dengan penuh perhatian).', 'Seperti kebanyakan kata kerja, kata ini menggunakan bacaan kun''yomi. Anda belum mempelajari bacaan itu, tapi untungnya kata ini memiliki bacaan yang sama dengan 聞く. Keduanya memiliki arti yang mirip, jadi masuk akal bukan?', 'Untuk Mendengarkan, Untuk Mendengarkan')
    RETURNING id INTO v_6102_untuk_mendengarkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '香川県', 'prefektur-kagawa', 40, 43, '<kanji>wewangian</kanji> <kanji>sungai</kanji> <kanji>prefektur</kanji> adalah <vocabulary>Prefektur Kagawa</vocabulary>. Mungkin membantu untuk melihat bacaannya terlebih dahulu.', 'Bacaan ini terdiri dari bacaan kun''yomi untuk 香 dan 川 (rendaku''d) dan bacaan on''yomi untuk 県. Anda belum mempelajari bacaan ini untuk 香, jadi inilah mnemonik untuk membantu:

Jika kamu ingin pergi ke <vocabulary>Prefektur Kagawa</vocabulary> kamu memerlukan <reading>ca</reading>r (か). Letaknya jauh di pulau Shikoku, dan Anda tidak akan bisa menyeberangi jembatan besar tanpa mobil yang layak!', 'Prefektur Kagawa')
    RETURNING id INTO v_6117_prefektur_kagawa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '飛躍', 'melompat', 40, 44, '<kanji>terbang</kanji> dan <kanji>melompat</kanji> berarti <vocabulary>melompat</vocabulary>.

飛躍 terutama digunakan secara kiasan untuk menyoroti kemajuan luar biasa di berbagai bidang seperti pertumbuhan pribadi atau kemajuan teknologi. Bisa juga menggambarkan logika yang melompat secara tiba-tiba dari satu titik ke titik lain tanpa koneksi yang jelas.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Melompat, Kemajuan Pesat')
    RETURNING id INTO v_6323_melompat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '宜しく', 'salam', 40, 45, 'Kanjinya adalah <kanji>salam</kanji> dan ini bisa menjadi <vocabulary>salam</vocabulary> juga. Bisa juga berarti <vocabulary>baik</vocabulary>, <vocabulary>properly</vocabulary> dan <vocabulary>sesuai</vocabulary> juga.', 'Pembacaannya berasal dari apa yang Anda pelajari dengan kanji.', 'Salam, Dengan baik, Dengan baik, Sesuai')
    RETURNING id INTO v_6338_salam;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '宜しくお願いします', 'salam', 40, 46, '<kanji>permintaan</kanji> 宜しい (baik, oke, baiklah) adalah saat Anda mengirimkan <vocabulary>salam</vocabulary> Anda kepada seseorang. Ini adalah frasa yang Anda ucapkan ketika seseorang akan membantu Anda dan Anda semua berkata "terima kasih atas bantuan Anda" atau "Saya mengandalkan Anda" atau kombinasi keduanya. Ini adalah kata yang sering Anda lihat dengan tingkat kanji dan panjangnya yang berbeda-beda.', 'Bacaannya berasal dari 宜しい dan お願いします.', 'Salam')
    RETURNING id INTO v_6339_salam;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '繰り返す', 'untuk-mengulangi', 40, 47, '繰る berarti "berputar" (jadi berputar) dan 返す berarti "kembali" (jadi kembali). Gabungkan semuanya dan Anda akan mendapatkan sesuatu yang berputar dan kembali ke tempat yang sama berulang kali. Sesuatu yang melakukan hal tersebut adalah mengulangi dirinya sendiri, membuat <vocabulary>berulang</vocabulary> atau <vocabulary>berulang-ulang</vocabulary>.', 'Bacaannya berasal dari 繰る dan 返す. Gabungkan keduanya untuk mendapatkan bacaan.', 'Untuk Mengulangi, Untuk Mengulanginya Berkali-kali')
    RETURNING id INTO v_6340_untuk_mengulangi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '避難する', 'mengevakuasi', 40, 48, 'Jika Anda tahu bahwa 避難 adalah "evakuasi" maka Anda tahu bahwa ini adalah bentuk kata kerjanya: <vocabulary>to Evakuasi</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri. Juga akan membantu untuk mengetahui bacaan kata 避難.', 'Mengevakuasi')
    RETURNING id INTO v_6341_mengevakuasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '傾ける', 'untuk-bersandar-pada-sesuatu', 40, 49, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>bersandar</kanji> dan versi kosakata kata kerjanya berarti <kosa kata>bersandar pada sesuatu</vocabulary>.', 'Anda sudah mempelajari bacaan ini dengan 傾く, jadi ingatlah itu dan Anda akan mengetahuinya juga!', 'Untuk Bersandar pada Sesuatu, Untuk Memiringkan Sesuatu')
    RETURNING id INTO v_6342_untuk_bersandar_pada_sesuatu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '奥様', 'istrimu', 40, 50, '<kanji>interior</kanji> <kanji>nama formal ender</kanji> Anda (orang) adalah orang yang menunggu di dalam, di luar gambaran (ingat, kanji dibuat sejak lama dan cukup seksis). Orang ini adalah <vocabulary>istrimu</vocabulary>.', 'Bacaannya adalah yang Anda pelajari dengan kanji.', 'Istrimu, Istri, Bu')
    RETURNING id INTO v_6343_istrimu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '遠慮する', 'untuk-menolak', 40, 51, 'Jika 遠慮 adalah "menolak" atau "menahan" maka versi kosakata kata kerjanya adalah <vocabulary>menolak</vocabulary> atau <vocabulary>menahan</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri. Juga, bacaannya berasal dari 遠慮.', 'Untuk Menolak, Untuk Menahan, Untuk menahan diri')
    RETURNING id INTO v_6344_untuk_menolak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '懸かる', 'untuk-menggantung', 40, 52, 'Jika sesuatu <kanji>ditangguhkan</kanji>, maka hal itu akan <vocabulary>hang</vocabulary> atau <vocabulary>bergantung pada</vocabulary> tindakan Anda. Kami membutuhkan Anda untuk memastikan semuanya berjalan dengan baik! Tindakan Andalah yang kami tangguhkan!', 'Kami bergantung pada Anda untuk membantu kami mendapatkan <reading>ca</reading>r (か) ini, oke?', 'Untuk Menggantung, Untuk Bergantung Pada, Dipertaruhkan')
    RETURNING id INTO v_6345_untuk_menggantung;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '一生懸命', 'sekuat-tenaga', 40, 53, 'Anda hanya memiliki <kanji>satu</kanji> <kanji>kehidupan</kanji> jadi lakukan segala sesuatunya dengan penuh <kanji>bersemangat</kanji> (懸命). Lakukan segalanya <vocabulary>dengan sekuat tenaga</vocabulary>. <vocabulary>berusaha habis-habisan</vocabulary>.', 'Semuanya kecuali 生 menggunakan bacaan yang Anda pelajari dengan kanji, dan Anda mempelajari bacaan 生 ini ketika Anda mempelajari 一生. Anda benar-benar telah <vocabulary>berusaha habis-habisan</vocabulary> untuk mempelajari bacaan ini!', 'Sekuat tenaga, Semua Keluar')
    RETURNING id INTO v_6346_sekuat_tenaga;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '扱い', 'penanganan', 40, 54, 'Jika 扱う berarti "menangani", versi kata bendanya adalah <vocabulary>handling</vocabulary> atau <vocabulary>treatment</vocabulary>.', 'Bacaannya berasal dari 扱う, jadi jika Anda tahu bahwa Anda akan menguasai <vocabulary>penanganan</vocabulary> yang satu ini dengan baik.', 'Penanganan, Perlakuan')
    RETURNING id INTO v_6347_penanganan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '取り扱う', 'untuk-mengelola', 40, 55, '<kanji>mengambil</kanji> dan kemudian <kanji>menangani</kanji> berarti Anda mengambil dan menanganinya, menyebabkan Anda <vocabulary>mengelola</vocabulary> atau <vocabulary>menangani</vocabulary> sesuatu. Anda mendapatkannya karena Anda mengambilnya.', 'Bacaannya berasal dari 取る dan 扱う.', 'Untuk Mengelola, Untuk Menangani')
    RETURNING id INTO v_6348_untuk_mengelola;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '選択する', 'untuk-memilih', 40, 56, '選択 adalah "seleksi" atau "pilihan". Jika Anda melakukan versi kata kerja ini, Anda akan <vocabulary>memilih</vocabulary> atau <vocabulary>memilih</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri. Bacaannya juga berasal dari 選択.', 'Untuk Memilih, Untuk Memilih')
    RETURNING id INTO v_6349_untuk_memilih;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '称える', 'untuk-memuji', 40, 57, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>gelar</kanji>, jadi pikirkan saja ketika seseorang memberi Anda gelar yang mengagumkan. Mereka melakukan ini <vocabulary>untuk memuji</vocabulary> atau <vocabulary>untuk memberikan pujian</vocabulary> kepada Anda.', 'Setelah mereka <vocabulary>memuji</vocabulary> Anda, Anda semua berkata, "Saya tidak butuh pujian! <reading>Ta-ta</reading> (たた)! Saya keluar dari sini."', 'Untuk Memuji, Untuk Memberikan Pujian')
    RETURNING id INTO v_6350_untuk_memuji;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '内緒話', 'pembicaraan-rahasia', 40, 58, 'Ingat bagaimana 内緒 berarti "rahasia" atau "rahasia"? Nah, itulah yang membuat ini menjadi <kanji>pembicaraan</kanji> rahasia, alias <vocabulary>pembicaraan rahasia</vocabulary> — seperti yang sering dilakukan dengan <vocabulary>berbisik</vocabulary>.', 'Kata ini menggunakan on''yomi dari 内緒 dan kun''yomi dari 話, hanya rendaku saja.', 'Pembicaraan Rahasia, Bisikan')
    RETURNING id INTO v_6351_pembicaraan_rahasia;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '緩める', 'untuk-melonggarkan', 40, 59, '緩む berarti "melonggarkan", namun berkaitan dengan melonggarkan dengan sendirinya. Kata ini adalah saat Anda melonggarkan atau mengendurkan sesuatu, artinya <vocabulary>melonggarkan</vocabulary> atau <vocabulary>melonggarkan</vocabulary>.', 'Bacaannya berasal dari 緩む, jadi kamu bisa menggunakannya!', 'Untuk Melonggarkan, Untuk Bersantai')
    RETURNING id INTO v_6352_untuk_melonggarkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '贈り物', 'hadiah', 40, 60, 'Ingat 贈る yang artinya "memberi hadiah"? Nah, <kanji>sesuatu</kanji> yang Anda berikan sebagai hadiah adalah <vocabulary>hadiah</vocabulary>.

Karena 贈り物 berasal dari kata kerja 贈る, maka kata ini mendeskripsikan <vocabulary>hadiah</vocabulary> bukan hanya sebagai sebuah benda namun sebagai sesuatu yang diberikan dengan hati-hati. Anda akan sering melihatnya dalam tulisan atau ucapan sopan ketika seseorang ingin menekankan kehangatan atau ketulusan di balik sebuah hadiah.', 'Bacaannya berasal dari 贈る dan 物.', 'Hadiah, Sebuah Hadiah')
    RETURNING id INTO v_6353_hadiah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '沖縄県', 'prefektur-okinawa', 40, 61, 'Ingat bagaimana 沖縄 adalah "Okinawa"? Ini adalah prefekturnya, <vocabulary>Prefektur Okinawa</vocabulary>.', 'Bacaannya berasal dari 沖縄 dan 県 disatukan.', 'Prefektur Okinawa')
    RETURNING id INTO v_6355_prefektur_okinawa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '贈賄', 'penyuapan', 40, 62, '<kanji>Hadiah</kanji> yang Anda berikan sebagai <kanji>suap</kanji> adalah salah satu bentuk <vocabulary>penyuapan</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Penyuapan')
    RETURNING id INTO v_6356_penyuapan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '逃す', 'untuk-nona', 40, 63, 'Anda sudah mengetahui bahwa 逃げる berarti "melarikan diri", dan kata kerja ini adalah saat Anda membiarkan sesuatu lolos, atau lolos dari jari Anda. Jadi ini berarti <vocabulary>melewatkan</vocabulary> atau <vocabulary>kehilangan</vocabulary> peluang bagus, atau <vocabulary>melepaskan</vocabulary> peluang bagus.', 'Berikut ini mnemonik untuk mengingat kun''yomi untuk kata ini:

Anda <vocabulary>melewatkan</vocabulary> peluang besar. Mengapa? Karena ada <read>no ga</reading> (のが) di mobilmu! Pikirkan tentang peluang apa yang Anda lewatkan karena lupa mengisi bahan bakar mobil Anda.', 'Untuk Nona, Kalah, Untuk Melepaskan')
    RETURNING id INTO v_6357_untuk_nona;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '逃亡者', 'buronan', 40, 64, '<kanji>Seseorang</kanji> yang <kanji>lolos</kanji>d <kanji>kematian</kanji> dengan melarikan diri adalah <vocabulary>buronan</vocabulary> atau <vocabulary>pelarian</vocabulary>. Saya pikir pernah ada film tentang itu!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Buronan, Pelarian')
    RETURNING id INTO v_6358_buronan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '顧問', 'penasihat', 40, 65, 'Orang yang akan <kanji>meninjau</kanji> suatu <kanji>masalah</kanji> adalah orang yang mengetahui lebih banyak tentang masalah tersebut. Mereka adalah <vocabulary>advisor</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Penasihat')
    RETURNING id INTO v_6359_penasihat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '顧みる', 'untuk-melihat-kembali-sesuatu', 40, 66, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji sendiri berarti <kanji>ulasan</kanji>. Apa yang Anda lakukan saat mengulas sesuatu? Anda melihatnya kembali. Artinya <vocabulary>melihat kembali sesuatu</vocabulary> atau <vocabulary>merenungkan sesuatu</vocabulary>. Ini juga bisa berarti <vocabulary>untuk memperhatikan seseorang</vocabulary>, misalnya keluarga Anda.

Ini merupakan kata kerja transitif, artinya mengambil objek langsung. Anda melihat kembali masa lalu, Anda merenungkan konsekuensi tindakan Anda, dan Anda memperhatikan keluarga Anda.', 'Untuk bacaannya, pikirkan kata lain yang mirip: 帰る. Dengan 帰る Anda kembali ke suatu tempat. Dengan kata ini, Anda kembali melihat kembali sesuatu. Mereka berbagi bacaan bagian pertama yang sama, jadi Anda harus memanfaatkannya. 帰る → かえり.', 'Untuk Melihat Kembali Sesuatu, Untuk Merenungkan Sesuatu, Untuk Memperhatikan Seseorang')
    RETURNING id INTO v_6360_untuk_melihat_kembali_sesuatu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '回顧録', 'memoar', 40, 67, 'Anda <kanji>berputar</kanji> untuk <kanji>meninjau</kanji> <kanji>catatan</kanji> masa lalu. Catatan-catatan ini adalah <vocabulary>memoar</vocabulary> atau <vocabulary>kenangan</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Memoar, Kenangan')
    RETURNING id INTO v_6361_memoar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '駐日', 'ditempatkan-di-jepang', 40, 68, 'Sesuatu atau seseorang <kanji>yang tinggal</kanji> di 日本 (Jepang) adalah <vocabulary>yang ditempatkan di Jepang</vocabulary>.

駐日 umumnya digunakan untuk menggambarkan individu dan institusi yang ditempatkan di Jepang untuk tugas resmi, seperti 駐日大使 (Duta Besar untuk Jepang) atau 駐日大使館 (kedutaan besar yang ditempatkan di Jepang).', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Ditempatkan Di Jepang')
    RETURNING id INTO v_6362_ditempatkan_di_jepang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '駐在', 'tempat-tinggal', 40, 69, 'Anda adalah <kanji>penduduk</kanji> dan Anda <kanji>ada</kanji> di tempat Anda tinggal. Itu berarti Anda memiliki <vocabulary>tempat tinggal</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Tempat tinggal, Tinggal')
    RETURNING id INTO v_6363_tempat_tinggal;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '駐車場', 'tempat-parkir', 40, 70, '<kanji>lokasi</kanji> di mana <kanji>mobil</kanji> dapat menjadi <kanji>penghuni</kanji> adalah <vocabulary>tempat parkir</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda sudah mempelajari bacaan ini, jadi Anda seharusnya bisa membacanya sendiri!', 'Tempat parkir')
    RETURNING id INTO v_6364_tempat_parkir;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '駐留軍', 'pasukan-yang-ditempatkan', 40, 71, 'Seorang <kanji>penduduk</kanji> <kanji>ditahan</kanji>yang tergabung dalam <kanji>tentara</kanji> di suatu lokasi adalah anggota <vocabulary>pasukan yang ditempatkan</vocabulary> di lokasi ini. Mereka juga bisa menjadi <vocabulary>pasukan pendudukan</vocabulary> juga.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Pasukan yang Ditempatkan, Pasukan Pendudukan')
    RETURNING id INTO v_6365_pasukan_yang_ditempatkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '駆ける', 'untuk-berlari-kencang', 40, 72, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>berpacu</kanji> dan versi kosakata kata kerjanya adalah <vocabulary>to gallop</vocabulary> atau <vocabulary>run</vocabulary>.', 'Anda mempelajari bacaan ini saat mempelajari kanji, jadi Anda seharusnya bisa membacanya sendiri.', 'Untuk berlari kencang, Untuk Berlari')
    RETURNING id INTO v_6366_untuk_berlari_kencang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '柱', 'pilar', 40, 73, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Anda harus membayangkan sebuah <vocabulary>pilar</vocabulary> berdiri tegak, dan seluruhnya terbuat dari dewa Mesir Ra dan hash browns. Ini adalah pilar <reading>hash-ra</reading> (はしら), dibuat oleh orang Mesir yang menyukai sarapan.', 'Pilar')
    RETURNING id INTO v_6367_pilar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '電柱', 'tiang-telepon', 40, 74, '<kanji>listrik</kanji> <kanji>pilar</kanji> adalah <vocabulary>tiang telepon</vocabulary>. Semua kabel dan kabel telepon menuju dan dari tiang-tiang telepon itu.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Tiang Telepon')
    RETURNING id INTO v_6368_tiang_telepon;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '唱える', 'untuk-bernyanyi', 40, 75, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>mengucapkan</kanji> jadi versi kosakata kata kerjanya adalah <vocabulary>tochant</vocabulary>.', 'Sungguh, ketika Anda akan <vocabulary>mengucapkan</vocabulary>, hal terpenting yang harus dilakukan adalah mengetahui <reading>nada</reading> (とな) Anda. Jika Anda menurunkan nadanya, sisanya akan muncul secara alami.', 'Untuk bernyanyi')
    RETURNING id INTO v_6369_untuk_bernyanyi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '主唱', 'menganjurkan', 40, 76, '<kanji>master</kanji> <kanji>pelantun</kanji>er adalah orang yang paling keras. Dia memastikan semua orang mendengar nyanyiannya. Dia adalah <vocabulary>pendukung</vocabulary> utama.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Menganjurkan')
    RETURNING id INTO v_6370_menganjurkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '唱歌', 'nyanyian', 40, 77, 'Anda <kanji>bernyanyi</kanji>dan Anda <kanji>bernyanyi</kanji>dan Anda sedang bersenang-senang. Anda <vocabulary>menyanyikan</vocabulary> semua <vocabulary>lagu</vocabulary> Anda dan bahkan nyanyiannya terdengar seperti nyanyian. Ini sangat menyenangkan.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Nyanyian, Lagu')
    RETURNING id INTO v_6371_nyanyian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '独唱', 'solo', 40, 78, '<kanji>sendirian</kanji> <kanji>nyanyian</kanji> adalah nyanyian yang Anda lakukan sendiri. Ini adalah <vocabulary>solo</vocabulary>!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Solo')
    RETURNING id INTO v_6372_solo;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '歌唱', 'nyanyian', 40, 79, 'Anda <kanji>bernyanyi</kanji>dan Anda <kanji>bernyanyi</kanji>. Ini adalah masa yang menyenangkan. Anda <vocabulary>bernyanyi</vocabulary> dan bernyanyi dan bernyanyi!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Nyanyian, Lagu')
    RETURNING id INTO v_6373_nyanyian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '合唱団', 'paduan-suara', 40, 80, 'Orang yang <kanji>bergabung</kanji> dalam <kanji>nyanyian</kanji> <kanji>grup</kanji> adalah orang yang tergabung dalam <vocabulary>chorus</vocabulary> atau <vocabulary>choir</vocabulary>.', 'Pembacaan untuk 合 cukup aneh. Itu adalah がっ bukannya ごう. Bayangkan saja sekelompok orang dalam paduan suara menyanyikan "ga ga ga ga gaaaa!"', 'Paduan suara, Paduan suara')
    RETURNING id INTO v_6374_paduan_suara;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '孝行', 'kesalehan-anak', 40, 81, 'Jika Anda <kanji>berjalan</kanji> menuju <kanji>berbakti</kanji>, Anda akan melakukan <vocabulary>berbakti</vocabulary>. Lakukan ini untuk orang tuamu.

孝行 biasanya digunakan dalam frasa 親孝行 (juga berarti "berbakti") ketika seseorang melakukan sesuatu yang baik atau penuh perhatian untuk orang tuanya, seperti sering mengunjungi, membantu, memberi hadiah, atau mengajaknya jalan-jalan. Lebih jauh lagi, kata ini juga kadang-kadang dapat menggambarkan <kosakata>menunjukkan pengabdian</vocabulary> terhadap orang-orang tercinta lainnya — merawat dan menghormati mereka hampir <em>seolah-olah</em> mereka adalah orang tua.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Kesalehan Anak, Menampilkan Pengabdian')
    RETURNING id INTO v_6375_kesalehan_anak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '不孝', 'ketidaktaatan-kepada-orang-tua', 40, 82, '<kanji>Tidak</kanji> <kanji>berbakti</kanji> adalah ketika kamu tidak mendengarkan orang tuamu. Inilah <vocabulary>ketidaktaatan kepada orang tua</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Ketidaktaatan Kepada Orang Tua, Kurangnya Kesalehan Berbakti')
    RETURNING id INTO v_6376_ketidaktaatan_kepada_orang_tua;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '俊才', 'jenius', 40, 83, 'Seseorang dengan <kanji>jenius</kanji> dan <kanji>bakat</kanji> adalah <vocabulary>jenius</vocabulary>, atau <vocabulary>orang dengan bakat luar biasa</vocabulary>. Sangat pintar!

俊才 adalah kata tingkat lanjut yang biasanya hanya terlihat dalam tulisan. Ini cenderung lebih mengacu pada jenis kejeniusan atau bakat yang dapat dikembangkan melalui usaha. Dalam hal ini, kata ini berbeda dengan 天才, yaitu jenis kejeniusan yang datang dari surga — baik Anda memilikinya atau tidak.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Jenius, Orang Dengan Bakat Luar Biasa, Orang yang Sangat Berbakat')
    RETURNING id INTO v_6377_jenius;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '兼業', 'bisnis-sampingan', 40, 84, '<kanji>Bersamaan</kanji> dengan <kanji>bisnis</kanji> saya saat ini, saya mempunyai <vocabulary>bisnis sampingan</vocabulary>. Sebenarnya ini adalah <vocabulary>pekerjaan kedua</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Bisnis Sampingan, Pekerjaan Kedua, Cahaya bulan')
    RETURNING id INTO v_6378_bisnis_sampingan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '兼用', 'penggunaan-gabungan', 40, 85, 'Jika Anda <kanji>bersamaan</kanji> <kanji>menggunakan</kanji> satu hal untuk berbagai tujuan, Anda menggunakan sesuatu dengan <vocabulary>penggunaan gabungan</vocabulary>. Sesuatu yang <vocabulary>memiliki dua tujuan</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Penggunaan Gabungan, Melayani Dua Tujuan')
    RETURNING id INTO v_6379_penggunaan_gabungan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '兼ねる', 'untuk-menggabungkan', 40, 86, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>bersamaan</kanji>, tetapi karena Anda tidak bisa "bersamaan", kita harus mencari kata lain untuk digunakan: "<vocabulary>menggabungkan</vocabulary>" atau "<vocabulary>menggandakan sebagai</vocabulary>." Karena kanji ini berkaitan dengan sesuatu yang memiliki tujuan ganda, kita dapat mengatakan bahwa sesuatu dapat digabungkan menjadi sesuatu yang lain, atau berfungsi ganda sebagai sesuatu yang lain, dari situlah kata-kata ini berasal.', 'Misalnya, <reading>ca</reading>r (か) dapat berfungsi ganda sebagai tempat tidur di malam hari ketika tidak cukup banyak orang yang menjadi anggota WaniKani.', 'Untuk Menggabungkan, Untuk Menggandakan Sebagai')
    RETURNING id INTO v_6380_untuk_menggabungkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '洗剤', 'deterjen', 40, 87, '<kanji>Cuci</kanji> pakaian Anda dengan <kanji>secukupnya</kanji> <vocabulary>deterjen</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Deterjen')
    RETURNING id INTO v_6381_deterjen;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '薬剤', 'obat', 40, 88, '<kanji>obat</kanji> <kanji>dosis</kanji> adalah <vocabulary>obat</vocabulary> atau <vocabulary>obat</vocabulary> yang Anda pakai.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Obat, Narkoba')
    RETURNING id INTO v_6382_obat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '薬剤師', 'apoteker', 40, 89, '<kanji>obat</kanji> <kanji>dosis</kanji> <kanji>ahli</kanji> adalah seseorang yang mengetahui dengan tepat berapa banyak dosis setiap obat yang harus Anda dapatkan. Orang yang ahli dalam hal ini adalah <vocabulary>apoteker</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Apoteker')
    RETURNING id INTO v_6383_apoteker;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '防腐剤', 'pengawet', 40, 90, '<kanji>mencegah</kanji> <kanji>busuk</kanji> <kanji>dosis</kanji> adalah dosis sesuatu yang Anda tempelkan pada luka atau luka Anda untuk mencegahnya membusuk (atau Anda menaruhnya pada sesuatu yang lain untuk mencegahnya membusuk). Ini adalah <vocabulary>antiseptik</vocabulary> atau <vocabulary>pengawet</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Pengawet, Antiseptik')
    RETURNING id INTO v_6384_pengawet;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '〜剤', 'obat', 40, 91, 'Jika Anda meminum <kanji>dosis</kanji> sesuatu, Anda meminum <vocabulary>dosis</vocabulary> <vocabulary>obat</vocabulary>. Ambil sirup obat batukmu, Nak!', 'Pembacaannya sama dengan yang Anda pelajari dengan kanji, mungkin karena biasanya melekat pada sesuatu, jadi diperlakukan seperti on''yomi.', 'Obat, Dosis')
    RETURNING id INTO v_6385_obat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '吹く', 'untuk-meniup', 40, 92, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>meniup</kanji> jadi versi kosakata kata kerjanya adalah <vocabulary>meniup</vocabulary>.

Kata ini bisa bersifat intransitif atau transitif. Jadi, sesuatu bisa saja bertiup dengan sendirinya, seperti dalam 風が吹く (angin bertiup), atau Anda bisa meniup sesuatu, seperti 笛を吹く (meniup peluit).', 'Bacaannya sama dengan yang Anda pelajari dengan kanji.', 'Untuk Meniup')
    RETURNING id INTO v_6386_untuk_meniup;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '堀', 'parit', 40, 93, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji.', 'Parit, Parit, Kanal')
    RETURNING id INTO v_6387_parit;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '内堀', 'parit-dalam', 40, 94, '<kanji>di dalam</kanji> <kanji>parit</kanji> adalah parit bagian dalam, atau, jika Anda membuatnya cukup keren, <vocabulary>parit dalam</vocabulary>. Kalau mereka bisa melewati parit bagian luar, setidaknya kita punya parit bagian dalam!', 'Kata ini menggunakan bacaan kun''yomi. Untuk 内 itulah bacaan yang kamu pelajari dengan kosakata, dan untuk 堀 bacaannya sama seperti biasanya — hati-hati dengan rendakunya.', 'Parit Dalam')
    RETURNING id INTO v_6388_parit_dalam;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '外堀', 'parit-luar', 40, 95, '<kanji>luar</kanji> <kanji>parit</kanji> adalah parit di sekitar kota kita yang berada di luar (bukan parit dalam, yang merupakan parit dalam). Inilah <vocabulary>parit luar</vocabulary>.', 'Kata ini menggunakan bacaan yang sama dari kosakata sebelumnya hanya saja 堀 mendapat rendaku - jangan lupa!', 'Parit Luar')
    RETURNING id INTO v_6389_parit_luar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '堀川', 'kanal', 40, 96, '<kanji>parit</kanji> <kanji>sungai</kanji> adalah <vocabulary>kanal</vocabulary>.', 'Bacaannya berasal dari kanji 堀 dan vocab 川.', 'Kanal')
    RETURNING id INTO v_6390_kanal;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '巡回', 'patroli', 40, 97, 'Anda <kanji>berpatroli</kanji> dan <kanji>berputar</kanji> di sekitar blok untuk membuat <vocabulary>patroli</vocabulary> Anda. Anda <vocabulary>berkeliling</vocabulary> berpatroli.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Patroli, Berkeliling')
    RETURNING id INTO v_6391_patroli;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '巡礼', 'ziarah', 40, 98, '<kanji>patroli</kanji> dari <kanji>terima kasih</kanji> adalah patroli yang Anda lakukan terhadap sesuatu yang Anda syukuri. Kedengarannya religius. Kedengarannya seperti <vocabulary>ziarah</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Ziarah')
    RETURNING id INTO v_6392_ziarah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '巡る', 'untuk-berkeliling', 40, 99, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>patroli</kanji>, tapi apa yang kamu lakukan saat berpatroli? Anda berkeliling, yaitu <vocabulary>berkeliling</vocabulary>.', 'Anda berkeliling berpatroli untuk melindungi rumah <reading>Meg</reading> (めぐ) Ryan. Bayangkan saja rumah Meg Ryan, dan Anda berjalan mengelilinginya. Bayangkan Meg Ryan menatap Anda.', 'Untuk Berkeliling, Untuk Kembali')
    RETURNING id INTO v_6393_untuk_berkeliling;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '巡査', 'petugas-polisi', 40, 100, 'Mereka yang <kanji>patroli</kanji> dan <kanji>memeriksa</kanji> adalah <vocabulary>petugas polisi</vocabulary> atau <vocabulary>petugas patroli</vocabulary>.

巡査 secara khusus mengacu pada petugas berpangkat paling rendah di kepolisian di Jepang, yang bertugas berpatroli atau melakukan hal-hal di sekitar 交番 (kotak polisi), atau menanggapi panggilan darurat.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Petugas Polisi, Petugas Patroli')
    RETURNING id INTO v_6394_petugas_polisi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '戒める', 'untuk-memperingatkan', 40, 101, 'Aku mengucapkan <kanji>perintah</kanji>ku untuk <vocabulary>memperingatkan</vocabulary> dan <vocabulary>mengingatkan</vocabulary> orang-orang agar tidak berbuat buruk.', 'Perintah pertama yang saya ucapkan <vocabulary>untuk memperingatkan</vocabulary> mereka agar tidak melakukan hal buruk adalah <reading>Saya menumbuk</reading> (いまし) kentang saya sendiri. Tidak ada orang lain yang menumbuk kentang saya. Mengerti?', 'Untuk Memperingatkan, Untuk Perhatian, Untuk menegur')
    RETURNING id INTO v_6395_untuk_memperingatkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '戒告', 'peringatan', 40, 102, 'Sebuah <kanji>perintah</kanji> <kanji>diumumkan</kanji> kepada Anda, namun Anda harus menganggapnya lebih sebagai <vocabulary>peringatan</vocabulary> atau <vocabulary>peringatan</vocabulary>. Lagipula kamu sudah dewasa, jadi orang tidak bisa memerintahmu.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Peringatan, Peringatan')
    RETURNING id INTO v_6396_peringatan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '訓戒', 'peringatan', 40, 103, '<kanji>instruksi</kanji> saya adalah <kanji>perintah</kanji> saya. Anda harus melakukan apa yang saya katakan dalam instruksi/perintah saya. Ini adalah <vocabulary>peringatan</vocabulary> saya. Inilah <vocabulary>peringatan</vocabulary> saya.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Peringatan, Peringatan')
    RETURNING id INTO v_6397_peringatan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '警戒', 'kewaspadaan', 40, 104, '<kanji>peringatan</kanji> <kanji>perintah</kanji> saya ada untuk memastikan Anda melakukan <vocabulary>kehati-hatian</vocabulary> dan menunjukkan <vocabulary>kewaspadaan</vocabulary> dalam hal tindakan pencegahan tersebut. Namun ini hanyalah perintah peringatan, oleh karena itu perintah ini berkaitan dengan pencegahan dan tindakan pencegahan.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Kewaspadaan, Tindakan pencegahan')
    RETURNING id INTO v_6398_kewaspadaan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '排気', 'knalpot', 40, 105, '<kanji>yang dipancarkan</kanji>energi</kanji> dari beberapa mesin adalah <vocabulary>exhaust</vocabulary>. Ini juga bisa merujuk pada <vocabulary>ventilasi</vocabulary>. Anggap saja sebagai udara (energi) yang dipancarkan sehingga udara segar dan baru dapat menggantikannya!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Knalpot, Ventilasi')
    RETURNING id INTO v_6399_knalpot;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '排他', 'pengecualian', 40, 106, 'Saat Anda <kanji>mengusir</kanji> <kanji>yang lain</kanji>, Anda sedang mempraktikkan <vocabulary>pengecualian</vocabulary>.

排他 biasanya digunakan dalam frasa 排他的 (eksklusif), yaitu kata formal yang menggambarkan kecenderungan untuk mengecualikan atau menolak mereka yang bukan bagian dari kelompok tertentu.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Pengecualian')
    RETURNING id INTO v_6400_pengecualian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '排水', 'drainase', 40, 107, '<kanji>Memancarkan <kanji>air</kanji> inilah yang kami sebut dengan <vocabulary>drainase</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Drainase')
    RETURNING id INTO v_6401_drainase;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '排出', 'emisi', 40, 108, 'Hal-hal yang <kanji>dipancarkan</kanji>dan kemudian <kanji>keluar</kanji> adalah <vocabulary>emisi</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Emisi')
    RETURNING id INTO v_6402_emisi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '排除', 'pengecualian', 40, 109, 'Jika Anda <kanji>mengusir</kanji> atau <kanji>mengecualikan</kanji> sesuatu atau seseorang, itu disebut <vocabulary>exclusion</vocabulary>. Alternatifnya, Anda juga dapat menyebutnya sebagai <vocabulary>removal</vocabulary> atau <vocabulary>elimination</vocabulary>.

排除 adalah kata yang relatif formal yang merujuk pada tindakan menghilangkan atau menghilangkan sesuatu yang tidak diinginkan atau tidak diinginkan.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Pengecualian, Pemindahan, Eliminasi')
    RETURNING id INTO v_6403_pengecualian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '携帯', 'portabel', 40, 110, '<kanji>portabel</kanji> <kanji>sabuk</kanji> adalah sesuatu yang sangat portabel sehingga Anda dapat memasangnya di ikat pinggang Anda. Ini <vocabulary>portabel</vocabulary>. Perhatikan, ini juga merupakan istilah yang sangat umum untuk <vocabulary>ponsel</vocabulary> atau <vocabulary>ponsel</vocabulary>. Anda akan mempelajari lebih lanjut tentang hal itu di level mendatang.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Portabel, Ponsel, Telepon genggam')
    RETURNING id INTO v_6404_portabel;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '携わる', 'untuk-terlibat', 40, 111, 'Entah bagaimana kanji <kanji>portabel</kanji> berubah menjadi kata kerja <vocabulary>untuk terlibat dalam</vocabulary> atau <vocabulary>untuk berpartisipasi</vocabulary> atau <vocabulary>untuk mengambil bagian dalam</vocabulary>. Saya kira jika Anda portabel, Anda dapat terlibat dalam segala macam hal, karena Anda dapat bergerak ke mana saja, berpartisipasi di mana pun Anda bisa (daripada menjadi tidak portabel dan terjebak di satu tempat).', 'Anda telah diminta <vocabulary>untuk terlibat dalam</vocabulary> berbagai aktivitas, jadi Anda membawa <reading>Taz saw</reading> (たずさ), gergaji buatan Tasmania. Anda tidak pernah tahu jenis pertukangan atau penebangan kayu apa yang akan diminta <vocabulary>untuk Anda ikuti</vocabulary>, dan gergaji Taz dikenal karena keserbagunaannya.', 'Untuk Terlibat, Untuk Berpartisipasi, Untuk Ikut serta')
    RETURNING id INTO v_6405_untuk_terlibat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '敏感', 'kepekaan', 40, 112, 'Jika Anda memiliki <kanji>peringatan</kanji> <kanji>perasaan</kanji>, Anda <vocabulary>peka terhadap</vocabulary> hal-hal yang terjadi di sekitar Anda. Itu berarti Anda memiliki banyak <vocabulary>sensitivitas</vocabulary>!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Kepekaan, Sensitif terhadap, Sensibilitas')
    RETURNING id INTO v_6406_kepekaan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '過敏', 'sensitivitas-berlebihan', 40, 113, 'Anda telah <kanji>melampaui</kanji>kewaspadaan</kanji>yang normal. Anda terlalu waspada. Anda memperhatikan segalanya. Ini adalah <vocabulary>sensitivitas berlebihan</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Sensitivitas berlebihan, Gugup')
    RETURNING id INTO v_6407_sensitivitas_berlebihan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '機敏', 'cepat', 40, 114, '<kanji>mesin</kanji> <kanji>peringatan</kanji> adalah peringatan yang diatur waktunya oleh mesin, bukan oleh manusia. Ini cukup <vocabulary>cepat</vocabulary>. Ia juga <vocabulary>cerdas</vocabulary>. Bagaimanapun, mesin bisa bergerak dan berpikir jauh lebih cepat daripada kita.

機敏 sering digunakan untuk mendeskripsikan cara seseorang merespons <kosa kata>segera</vocabulary> terhadap berbagai situasi, dan menyiratkan sikap yang sangat responsif dan adaptif.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Cepat, Cerdas, Mengingatkan')
    RETURNING id INTO v_6408_cepat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '鋭敏', 'ketajaman', 40, 115, 'Seseorang yang <kanji>tajam</kanji> <kanji>waspada</kanji> memiliki <vocabulary>ketajaman</vocabulary> tentang dirinya. Mereka <vocabulary>cerdas</vocabulary> dan memiliki <vocabulary>ketajaman</vocabulary> yang kuat terhadapnya.

Kata ini formal dan sastra.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Ketajaman, Cerdas Cepat, Ketajaman')
    RETURNING id INTO v_6409_ketajaman;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '鋭い', 'tajam', 40, 116, 'Ini adalah kanji tunggal dengan い di akhir, artinya Anda tahu itu mungkin kata sifat. Apa bentuk kata sifat dari <kanji>tajam</kanji>? <vocabulary>tajam</vocabulary>.', 'Sesuatu yang <vocabulary>tajam</vocabulary> akan menusuk seseorang, namun mereka akan menuntut Anda atas perilaku kasar Anda. Mereka <read>menuntut perilaku buruk</reading>e (するど)...', 'Tajam')
    RETURNING id INTO v_6410_tajam;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '鋭利', 'ketajaman', 40, 117, 'Sesuatu yang <kanji>tajam</kanji> akan <kanji>mendapatkan manfaat</kanji> dari <vocabulary>ketajaman</vocabulary>-nya, karena memang hanya itu yang dimilikinya.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Ketajaman')
    RETURNING id INTO v_6411_ketajaman;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '新鋭', 'terdepan', 40, 118, 'Sesuatu yang <kanji>baru</kanji> dan <kanji>tajam</kanji> (mungkin karena sangat baru) berada <vocabulary>tercanggih</vocabulary>. Ini <vocabulary>sedang naik daun</vocabulary>, hal besar berikutnya!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Terdepan, Yang Akan Datang, Tercanggih')
    RETURNING id INTO v_6412_terdepan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '敷く', 'untuk-menyebar', 40, 119, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>menyebar</kanji> dan versi kosakata kata kerjanya adalah <vocabulary>to spread out</vocabulary> atau <vocabulary>lay out</vocabulary>.

Kata ini umumnya mengacu pada meletakkan sesuatu yang datar, seperti karpet atau selimut piknik. Pemanfaatannya juga meluas pada peletakan rel kereta api atau aspal untuk pengerasan jalan. Secara metaforis, ini menggambarkan penetapan sesuatu yang mendasar, seperti menetapkan aturan atau sistem organisasi tertentu.', 'Apa yang <vocabulary>menyebar</vocabulary>? <read>Dia</reading>p (し)! Seseorang sedang berburu domba, karena Anda melihat sekumpulan tubuh domba kosong (mati) yang berserakan di tanah.', 'Untuk Menyebar, Untuk Meletakkan')
    RETURNING id INTO v_6413_untuk_menyebar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '敷金', 'uang-jaminan', 40, 120, '<kanji>Sebarkan</kanji> <kanji>emas</kanji> ke sekeliling. Bagian pertama, saya ingin Anda memasukkan <vocabulary>uang jaminan</vocabulary>.', 'Kata ini menggunakan bacaan yang Anda pelajari dengan kanji. Anda seharusnya bisa membaca ini sendiri.', 'Uang Jaminan')
    RETURNING id INTO v_6414_uang_jaminan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '屋敷', 'tempat-tinggal', 40, 121, '<kanji>Atap</kanji> Anda <kanji>tersebar</kanji> di sekitar properti Anda. Gabungkan semua atap dan area ini dan Anda akan mendapatkan <vocabulary>tempat tinggal</vocabulary> atau <vocabulary>estate</vocabulary> Anda.', 'Kata ini menggunakan bacaan yang Anda pelajari dengan kanji. Anda seharusnya bisa membaca ini sendiri.', 'Tempat tinggal, Perkebunan')
    RETURNING id INTO v_6415_tempat_tinggal;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '座敷', 'ruang-tatami', 40, 122, '<kanji>duduk</kanji>ting <kanji>sebaran</kanji> adalah hamparan tikar tatami, yang membentuk <vocabulary>ruang tatami</vocabulary> di rumah Jepang.', 'Kata ini menggunakan bacaan yang Anda pelajari dengan kanji. Anda seharusnya bisa membaca ini sendiri.', 'Ruang Tatami, Ruang Tikar Tatami')
    RETURNING id INTO v_6416_ruang_tatami;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '〜殿', 'tn', 40, 123, 'Kanjinya berarti <kanji>Tuanku</kanji>, dan kata ini dulunya merupakan akhiran nama yang mirip dengan gelar bahasa Inggris <vocabulary>Lord</vocabulary>, namun kini lebih mirip dengan <vocabulary>Mr.</vocabulary> atau <vocabulary>Ms.</vocabulary>. Kata ini jarang digunakan dalam percakapan lisan atau bahkan korespondensi tertulis saat ini, namun masih digunakan dalam dokumen resmi, dan Anda mungkin paling sering melihatnya di sertifikat. Jika ragu, lebih baik Anda memilih nama ender 様 karena lebih banyak digunakan, dan juga lebih sopan dibandingkan 殿.', 'Karena kata ini terdiri dari satu kanji, kemungkinan besar menggunakan bacaan kun''yomi. Anda tidak mempelajari bacaan ini, jadi inilah mnemonik untuk membantu Anda mengingat:

Apakah Anda mengenal <vocabulary>Tuhan</vocabulary>? Bayangkan seseorang bernama <vocabulary>Mr.</vocabulary> atau <vocabulary>Ms.</vocabulary> <reading>Don</reading> (どの). Jika Anda kenal seorang Don, bagus sekali, bayangkan orang itu. Jika tidak, pikirkan Don terkenal yang ada di luar sana.', 'Tn., MS., Yang mulia')
    RETURNING id INTO v_6417_tn;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '殿様', 'tuan-feodal', 40, 124, '<kanji>Tuanku</kanji> (Anda mengucapkannya dengan sangat formal dengan <kanji>nama formal ender</kanji>). Anda mengatakannya dengan sangat formal karena orang ini adalah seorang tuan, atau lebih khusus lagi, seorang <vocabulary>feodal lord</vocabulary>.', 'Kata ini menggunakan pembacaan kanji kun''yomi. Anda belum mempelajari bacaan ini untuk 殿, jadi inilah mnemonik untuk membantu Anda:

<vocabulary>Tuan Feodal</vocabulary> pada masa itu cukup brutal. Jika Anda melakukan kesalahan, dia akan menghukum Anda. Hukuman macam apa? Yah, dia akan memotong jari kakimu! Hal ini membuat sebagian besar orang berteriak, "<reading>toe-ku?! TIDAK</reading>!" (との). Bayangkan berteriak, "Toe no!" berulang kali saat tuan feodal semakin dekat. Memegang gunting tanaman pagar atau semacamnya. Mungkin jika Anda cukup sering meneriakkan "toe no", dia akan berubah pikiran.', 'Tuan Feodal')
    RETURNING id INTO v_6418_tuan_feodal;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '殿堂', 'istana', 40, 125, '<kanji>Aula</kanji> Tuanku</kanji> adalah tempat yang bagus. Di sanalah seorang bangsawan akan tinggal. <vocabulary>istana</vocabulary>. Lebih jauh lagi, ini juga bisa berarti <vocabulary>tempat perlindungan</vocabulary>, dan bahkan <vocabulary>hall of fame</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Istana, Suaka, Hall Ketenaran')
    RETURNING id INTO v_6419_istana;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '犠打', 'pengorbanan-terbang', 40, 126, '<kanji>pengorbanan</kanji> <kanji>pukulan</kanji> adalah yang Anda lakukan dalam bisbol, saat Anda memukul bola di udara, lalu orang yang mendapat tag ketiga naik dan mencetak skor. Dalam bisbol, ini bisa berupa <vocabulary>korban bunt</vocabulary> atau <vocabulary>kurban fly</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda telah mempelajari cara membaca kedua kanji ini, jadi Anda seharusnya sudah bisa membaca kata ini!', 'Pengorbanan Terbang, Pengorbanan Bunt')
    RETURNING id INTO v_6420_pengorbanan_terbang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '獲得', 'perolehan', 40, 127, 'Jika Anda <kanji>merebut</kanji> dan <kanji>memperoleh</kanji> Anda melakukan <vocabulary>akuisisi</vocabulary> atau <vocabulary>kepemilikan</vocabulary> atas sesuatu.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Perolehan, Milik')
    RETURNING id INTO v_6421_perolehan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '捕獲', 'menangkap', 40, 128, '<kanji>menangkap</kanji> dan <kanji>merebut</kanji> adalah <vocabulary>menangkap</vocabulary> dan <vocabulary>merebut</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Menangkap, Kejang')
    RETURNING id INTO v_6422_menangkap;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '獲物', 'rampasan', 40, 129, '<kanji>rebut</kanji>d <kanji>sesuatu</kanji> adalah sesuatu yang Anda rebut dari kemenangan Anda. Itu adalah <vocabulary>rampasan</vocabulary> Anda. Ini adalah <vocabulary>trofi</vocabulary> Anda!', 'Karena Anda tidak mempelajari kun''yomi untuk 獲 dengan kanji, berikut adalah mnemonik untuk membantu Anda. <membaca>Eh</membaca> (え)? Kami memenangkan pertandingan? Ehhhh?! Mustahil! Milik pemenang adalah rampasannya! Hore!', 'rampasan, Piala, Permainan')
    RETURNING id INTO v_6423_rampasan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '茂る', 'menjadi-mewah', 40, 130, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>mewah</kanji> dan versi kosakata kata kerjanya adalah <vocabulary>menjadi mewah</vocabulary> atau <vocabulary>tumbuh lebat</vocabulary>.', '<reading>Dia memberiku pisau cukur karena janggutku mulai <vocabulary>tumbuh tebal</vocabulary>... terlalu tebal. Tapi, aku tidak akan mencukur janggutku yang bagus tidak peduli apa yang dia berikan padaku.', 'Menjadi Mewah, Untuk Tumbuh Tebal')
    RETURNING id INTO v_6424_menjadi_mewah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '繁茂', 'pertumbuhan-mewah', 40, 131, 'Sesuatu yang <kanji>ditumbuhi terlalu banyak</kanji> dan <kanji>mewah</kanji> pasti memiliki <vocabulary>pertumbuhan yang subur</vocabulary>. Banyak sekali pertumbuhan.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Pertumbuhan Mewah')
    RETURNING id INTO v_6425_pertumbuhan_mewah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '頻繁', 'sering', 40, 132, 'Sesuatu yang <kanji>sering</kanji>sangat <kanji>ditumbuhi</kanji> adalah sesuatu yang super <vocabulary>sering</vocabulary>. Ia tidak pernah berhenti menyerang, tidak pernah berhenti datang, dan sejujurnya semakin <vocabulary>tak henti-hentinya</vocabulary> dalam seberapa sering ia berkembang pesat. Itu sialan [masukkan nama tanaman di sini].', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Sering, Tak henti-hentinya')
    RETURNING id INTO v_6426_sering;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '繁殖', 'pembiakan', 40, 133, 'Sesuatu yang <kanji>tumbuh terlalu banyak</kanji> dan akan <kanji>berkembang biak</kanji> jelas <vocabulary>berkembang biak</vocabulary> dan <vocabulary>berkembang biak</vocabulary> banyak sekali.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Pembiakan, Mengalikan')
    RETURNING id INTO v_6427_pembiakan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '繁栄', 'sejahtera', 40, 134, 'Jika Anda <kanji>ditumbuhi</kanji> dengan <kanji>kemakmuran</kanji>Anda mungkin benar-benar <vocabulary>makmur</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Sejahtera, Kemakmuran')
    RETURNING id INTO v_6428_sejahtera;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '頻度', 'frekuensi', 40, 135, '<kanji>frekuensi</kanji>sesuatu, diukur dalam <kanji>kejadian</kanji> diukur dalam <vocabulary>frekuensi</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Frekuensi')
    RETURNING id INTO v_6429_frekuensi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '頻発', 'sering-terjadi', 40, 136, 'Sesuatu yang <kanji>sering</kanji><kanji>keberangkatan</kanji> mempunyai banyak frekuensi dan merupakan <vocabulary>sering terjadi</vocabulary>. Oh itu? Ya, itu berangkat dengan frekuensi yang tinggi.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Sering Terjadi, Sering Terjadi')
    RETURNING id INTO v_6430_sering_terjadi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '頻りに', 'sering', 40, 137, 'Sesuatu yang menjadi <kanji>sering</kanji> adalah sesuatu yang <vocabulary>sering</vocabulary> terjadi.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak mempelajari cara membaca dengan kanji ini, jadi inilah mnemonik yang dapat membantu Anda: Sesuatu yang <vocabulary>sering</vocabulary> adalah sesuatu yang benar-benar populer. Orang-orang ingin sering melakukan hal ini, karena sangat <reading>cantik</reading> (しき).', 'Sering, Berulang-kali, Sering')
    RETURNING id INTO v_6431_sering;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '生殖', 'reproduksi', 40, 138, '<kanji>Kehidupan</kanji>, ketika <kanji>berkembang biak</kanji>(berkembang biak), sedang melakukan <vocabulary>reproduksi</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Reproduksi')
    RETURNING id INTO v_6432_reproduksi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '殖える', 'untuk-menggandakan', 40, 139, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>berkembang biak</kanji> dan versi kosakata kata kerjanya berarti <vocabulary>menggandakan</vocabulary> atau <vocabulary>meningkatkan</vocabulary>.', 'Apa itu mengalikan? Penggunaan kata "<reading>fu</reading>" (ふ) saat Anda tertawa. Anda biasa mengatakan "ha ha ha" seperti orang lain. Sekarang kejadian Anda mengatakan <reading>fufufu</reading> benar-benar berlipat ganda. Anda mungkin juga memperhatikan bahwa ini mirip dengan kata 増える, yang berarti "bertambah". Ini memiliki arti yang sama dan bacaan yang sama, gunakan itu untuk keuntungan Anda!', 'Untuk Menggandakan, Untuk Meningkatkan')
    RETURNING id INTO v_6433_untuk_menggandakan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '薄い', 'tipis', 40, 140, 'Ini adalah kanji tunggal dengan い di akhir, artinya Anda tahu itu mungkin kata sifat. Kata sifat apa yang menggambarkan sesuatu yang telah <kanji>diencerkan</kanji>d? <vocabulary>Tipis</vocabulary>, <vocabulary>encer</vocabulary>, atau <vocabulary>pingsan</vocabulary>.

薄い kebanyakan untuk benda datar, seperti 薄い紙 (kertas tipis) atau 薄い壁 (dinding tipis). Pada dasarnya hal-hal yang tidak memiliki kedalaman, itulah sebabnya hal ini juga meluas ke ekspresi seperti 薄い味 (rasa encer) dan 薄い色 (warna samar).', 'Anda menyesap kopi Anda dan mendapati kopinya <vocabulary>encer</vocabulary> dan <vocabulary>encer</vocabulary>, lalu Anda berkata, "<reading>Ooh, Sue</reading> (うす)… Kopi ini tidak enak." Sue-lah yang membuatkan kopimu, tapi dia bukan seorang barista. "Ooh, Sue… maafkan aku, tapi ini terlalu encer — aku ingin kamu membuatkan panci baru."', 'Tipis, Diencerkan, Pingsan')
    RETURNING id INTO v_6434_tipis;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '薄弱', 'kelemahan', 40, 141, 'Sesuatu <kanji>diencerkan</kanji>sampai ke titik <kanji>lemah</kanji>. Ia mempunyai banyak <vocabulary>kelemahan</vocabulary> dan <vocabulary>kelemahan</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Kelemahan, Kelemahan')
    RETURNING id INTO v_6435_kelemahan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '薄情', 'berhati-dingin', 40, 142, 'Jika Anda <kanji>mencairkan</kanji> <kanji>perasaan</kanji> dari seseorang, mereka tidak memiliki perasaan. Mereka menjadi <vocabulary>berhati dingin</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Berhati Dingin')
    RETURNING id INTO v_6436_berhati_dingin;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '衝撃', 'terkejut', 40, 143, 'Jika kamu <kanji>bertabrakan</kanji> dan <kanji>menyerang</kanji> apa yang kamu tabrak, kamu tidak hanya akan menyebabkan <vocabulary>kejutan</vocabulary> yang besar tetapi juga <vocabulary>crash</vocabulary> dan <vocabulary>dampak</vocabulary> pada mereka. Salah!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Terkejut, Menabrak, Dampak')
    RETURNING id INTO v_6437_terkejut;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '衝突', 'tabrakan', 40, 144, 'Ketika sesuatu <kanji>bertabrakan</kanji> dan <kanji>mendorong</kanji> satu sama lain, Anda memiliki <vocabulary>collision</vocabulary>, atau setidaknya <vocabulary>dampak</vocabulary> yang kuat.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Tabrakan, Dampak, Konflik')
    RETURNING id INTO v_6438_tabrakan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '名誉', 'menghormati', 40, 145, '<kanji>terkenal</kanji> <kanji>kehormatan</kanji> tetaplah sebuah <vocabulary>kehormatan</vocabulary>, namun juga merupakan <vocabulary>prestise</vocabulary> yang harus dimiliki, karena Anda terkenal sebagai orang terhormat. Sangat bergengsi!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Menghormati, Prestise')
    RETURNING id INTO v_6439_menghormati;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '栄誉', 'menghormati', 40, 146, 'Anda memiliki <kanji>kemakmuran</kanji>itas <kanji>kehormatan</kanji>, oleh karena itu Anda memiliki <vocabulary>kehormatan</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Menghormati')
    RETURNING id INTO v_6440_menghormati;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '褒める', 'untuk-memuji', 40, 147, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>pujian</kanji> dan versi kosakata kata kerjanya adalah <kosakata>memuji</vocabulary>.', 'Jika kamu ingin <vocabulary>memuji</vocabulary> orang ini di depanmu, itu pasti karena kemampuan <reading>hoe</reading>-using (ほ) yang luar biasa. Lihat dia pergi dengan cangkul itu.', 'Untuk Memuji, Untuk Memuji')
    RETURNING id INTO v_6441_untuk_memuji;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '褒美', 'hadiah', 40, 148, 'Saya <kanji>memuji</kanji> Anda atas <kanji>kecantikan</kanji> Anda. Aku sangat menyukai kecantikanmu, aku memberimu <vocabulary>hadiah</vocabulary>... <vocabulary>hadiah</vocabulary>, pada dasarnya.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Hadiah, Hadiah')
    RETURNING id INTO v_6442_hadiah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '褒賞', 'medali', 40, 149, 'Saya <kanji>memuji</kanji> Anda atas apa yang Anda lakukan, jadi inilah <kanji>hadiah</kanji> Anda yang sejalan dengan pujian saya, sebuah <vocabulary>medali</vocabulary>!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Medali, Hadiah, Hadiah')
    RETURNING id INTO v_6443_medali;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '透ける', 'menjadi-transparan', 40, 150, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>transparan</kanji> dan versi kosakata kata kerjanya adalah <vocabulary>to be Transparent</vocabulary> atau <vocabulary>to be see-through</vocabulary>.

透ける biasanya untuk benda yang sebagian transparan atau tembus pandang karena tipis atau tipis, seperti stoking dan tirai berenda. Kadang-kadang orang bahkan bercanda bahwa pikiran Anda yang sebenarnya adalah 透けてる (menunjukkan tembus pandang).', 'Untuk mengingat bacaannya, pikirkan saja sesuatu yang seharusnya tidak transparan, tetapi menjadi transparan setelah Anda memberikannya kepada seseorang untuk sementara waktu. Anda sangat kesal karena anjing, kucing, tanaman, mobil, dll. Anda transparan sehingga Anda <reading>menuntut</reading> orang yang seharusnya tidak membuatnya transparan.', 'Menjadi Transparan, Menjadi Tembus Pandang')
    RETURNING id INTO v_6444_menjadi_transparan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '透明', 'transparan', 40, 151, 'Sesuatu yang <kanji>transparan</kanji> dan <kanji>terang</kanji> sehingga Anda dapat melihatnya adalah <vocabulary>transparan</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Transparan, Transparansi')
    RETURNING id INTO v_6445_transparan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '隣', 'tetangga', 40, 152, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Ingat film "<reading>Tonari</reading> (となり) no Totoro"? Itu adalah Tonari.', 'Tetangga, Di sebelah, Tetangga Sebelah')
    RETURNING id INTO v_6446_tetangga;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '隣家', 'rumah-tetangga', 40, 153, '<kanji>tetangga</kanji> <kanji>rumah</kanji> adalah <vocabulary>rumah tetangga</vocabulary>. Rumah itu tepat di sebelah rumah kita!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Rumah Tetangga')
    RETURNING id INTO v_6447_rumah_tetangga;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '近隣', 'lingkungan', 40, 154, 'Semua <kanji>dekat</kanji> <kanji>tetangga</kanji> adalah orang-orang yang tinggal di sekitar Anda dan di dekat Anda. Mereka adalah bagian dari <vocabulary>lingkungan</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Lingkungan')
    RETURNING id INTO v_6448_lingkungan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '隣国', 'negara-tetangga', 40, 155, '<kanji>tetangga</kanji> <kanji>negara</kanji> adalah <vocabulary>negara tetangga</vocabulary>. Bagi kami, orang-orang kami di Amerika adalah orang-orang Kanada yang licik... selalu menunggu untuk menyerang, saya tahu...', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri. Hati-hati dengan rendaku.', 'Negara Tetangga')
    RETURNING id INTO v_6449_negara_tetangga;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '隣人', 'tetangga', 40, 156, '<kanji>tetangga</kanji> <kanji>orang</kanji> adalah <vocabulary>tetangga</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Tetangga')
    RETURNING id INTO v_6450_tetangga;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '雅致', 'kesenian', 40, 157, 'Jika semua yang <kanji>lakukan</kanji> <kanji>elegan</kanji> berarti Anda memiliki <vocabulary>kesenian</vocabulary> dan <vocabulary>selera yang bagus</vocabulary>. Begitu banyak <vocabulary>keanggunan</vocabulary>!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Kesenian, Rasanya enak, Keanggunan')
    RETURNING id INTO v_6451_kesenian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '雅楽', 'musik-pengadilan-jepang', 40, 158, 'Sangat <kanji>elegan</kanji> dan <kanji>nyaman</kanji>ing. Ini adalah <kosa kata>musik istana Jepang</vocabulary>, dan itulah yang didengarkan oleh orang-orang istana di Jepang pada masa itu. Anda juga dapat menyebutnya <vocabulary>gagaku</vocabulary> jika Anda mau.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri. Karena kata ini berhubungan dengan musik, 楽 menggunakan bacaan sekundernya がく (yang kamu pelajari dengan 音楽).', 'Musik Pengadilan Jepang, Gagaku')
    RETURNING id INTO v_6452_musik_pengadilan_jepang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '優雅', 'keanggunan', 40, 159, 'Sesuatu yang <kanji>unggul</kanji> dan <kanji>elegan</kanji> memiliki banyak <vocabulary>keanggunan</vocabulary> dan <vocabulary>keanggunan</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Keanggunan, Berkah')
    RETURNING id INTO v_6453_keanggunan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '虚しい', 'kosong', 40, 160, 'Ini adalah kanji tunggal dengan い di akhir, artinya Anda tahu itu mungkin kata sifat. Apa bentuk kata sifat dari <kanji>void</kanji>? Itu <vocabulary>kosong</vocabulary> atau <vocabulary>kosong</vocabulary>. Bayangkan saja apa yang harus terjadi untuk membuat kekosongan tersebut.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Jika segala sesuatu dalam hidup tampak <vocabulary>kosong</vocabulary> dan <vocabulary>sia-sia</vocabulary>, bahkan sapi pun akan terpengaruh. Dengarkan mereka berkata, "<reading>Moo, nah</reading> (むな), sudahlah. Apa gunanya?" Tidak ada yang membuat hidup terasa hampa seperti seekor sapi yang berkata "Moo, nah."', 'Kosong, Kosong, Sia-sia, Sia-sia')
    RETURNING id INTO v_7758_kosong;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '〜房', 'bagian', 40, 161, 'Ingatkah saat kamu belajar 房? Nah itu bisa dijadikan counter untuk tandan buah-buahan. Seperti <vocabulary>bagian</vocabulary> jeruk atau <vocabulary>seikat</vocabulary> buah anggur! enak!', 'Anda sudah mempelajari bacaan ini ketika Anda mempelajari 房!', 'Bagian, Kelompok')
    RETURNING id INTO v_8730_bagian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '嬉々', 'keadaan-kenikmatan', 40, 162, 'Anda sangat <kanji>senang</kanji>, Anda mendapatkan <kanji>senang</kanji> lagi. Apa pun yang Anda lakukan, tidak diragukan lagi itu berada dalam kondisi <vocabulary>menikmati</vocabulary>.

嬉々 sendiri mengacu pada <kosakata>keadaan gembira</vocabulary> di mana seseorang dengan senang hati melakukan sesuatu. Umumnya digunakan sebagai kata keterangan 嬉々として, yang berarti “dengan senang hati” atau “dengan senang hati.” Meskipun kurang umum, kata ini juga bisa berfungsi sebagai kata sifat jika digabungkan dengan たる.', 'Kata ini menggunakan pembacaan on''yomi dari kanji yang Anda pelajari... dua kali! Anda seharusnya bisa membaca ini sendiri.', 'Keadaan Kenikmatan, Keadaan yang Menyenangkan')
    RETURNING id INTO v_8843_keadaan_kenikmatan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '嬉しい', 'senang', 40, 163, 'Ini adalah kanji tunggal dengan い di akhir, artinya Anda tahu itu mungkin kata sifat. Apa bentuk kata sifat dari <kanji>senang</kanji>? Ini juga <vocabulary>senang</vocabulary>!', 'Kapanpun kamu benar-benar <vocabulary>senang</vocabulary> masih hidup, kamu menatap sinar matahari dan bernyanyi, "<reading>Ooh, ray</reading>s (うれ), aku sangat senang kamu ada di sini!" Lalu Paman Ray-mu datang dan menari ke dalam ruangan dan membalas nyanyiannya, "Ooh, Ray <vocabulary>senang</vocabulary> kamu bahagia!" Sinar matahari dan Paman Ray sama-sama membuatmu bahagia.', 'Senang, Senang, Menyenangkan')
    RETURNING id INTO v_8844_senang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '膝小僧', 'tempurung-lutut', 40, 164, 'Di <kanji>lutut</kanji> Anda ada <kanji>pendeta</kanji> kecil</kanji> bernama <vocabulary>tempurung lutut</vocabulary>.

Ini adalah cara yang sangat umum dan lucu untuk membicarakan tempurung lutut Anda. Biasanya digunakan oleh anak-anak dan orang dewasa, dan lebih umum digunakan dalam bahasa Jepang lisan daripada 膝頭. Mirip seperti bagaimana kita menggunakan "tempurung lutut" alih-alih menamai tulang "patela" sepanjang waktu.', 'Kata ini menggunakan bacaan kun''yomi untuk 膝 dan 小, namun bacaan on''yomi untuk 僧, yang membuat rendaku dari そう hingga ぞう, jadi berhati-hatilah! Anda telah mempelajari semua bacaan ini sebelumnya, jadi Anda harus bisa membaca ini juga.', 'tempurung lutut')
    RETURNING id INTO v_8871_tempurung_lutut;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '妖精', 'peri', 40, 165, 'Roh <kanji>supernatural</kanji> <kanji></kanji> melayang ke arah Anda. Itu adalah <vocabulary>peri</vocabulary>!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Peri')
    RETURNING id INTO v_8914_peri;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '妖怪', 'raksasa', 40, 166, 'Apa itu <kanji>supernatural</kanji> dan <kanji>mencurigakan</kanji>? <vocabulary>monster</vocabulary>, atau, jika Anda tahu istilah Jepangnya, <vocabulary>yokai</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Raksasa, Yokai')
    RETURNING id INTO v_8915_raksasa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '妖しい', 'mempesona', 40, 167, 'Anda dapat menebak ini adalah kata sifat dengan melihat い yang diakhiri dengan kata tersebut. Salah satu arti kanji, <kanji>mempesona</kanji>, sudah menjadi kata sifat. Itulah arti kata ini juga: <vocabulary>mempesona</vocabulary>. Apa yang mempesona? Pada dasarnya <vocabulary>menawan</vocabulary> dalam cara yang <vocabulary>misterius</vocabulary>.', 'Jadi perasaan <vocabulary>mempesona</vocabulary> dan <vocabulary>mempesona</vocabulary> ini adalah <vocabulary>misterius</vocabulary>... ada yang akan mengatakan 怪しい (mencurigakan). Sebenarnya bacaannya sama dengan 怪しい. Mereka juga mirip. Inilah perbedaannya:

怪しい biasanya mempunyai kesan negatif sedangkan 妖しい umumnya mempunyai kesan positif. 妖しい juga terasa lebih misterius atau memiliki sisi magis.', 'Mempesona, Menawan, Misterius')
    RETURNING id INTO v_8916_mempesona;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '薄まる', 'untuk-diencerkan', 40, 168, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji berarti <kanji>mencairkan</kanji>, dan ini merupakan kata kerja intransitif, seperti yang bisa Anda tebak dari akhiran まる. Jadi kata kerja ini berarti <vocabulary>menjadi encer</vocabulary>, <vocabulary>menjadi berkurang</vocabulary>, atau <vocabulary>menjadi lemah</vocabulary>.', 'Kata ini menggunakan bacaan kun''yomi yang tidak Anda pelajari dengan kanij, jadi inilah mnemonik untuk membantu Anda:

Anda mendapati kopi Anda <vocabulary>mencair</vocabulary>, jadi Anda berkata, "<reading>Ooh, Sue</reading> (うす)..." dan menarik napas dalam-dalam dengan jengkel. Sue membuatkanmu secangkir kopi ini, tapi seperti biasa, dia membuatnya terlalu encer dan encer. "Ooh, Sue… aku benci membocorkannya padamu, tapi ini tidak bisa diminum."', 'Untuk Diencerkan, Akan Berkurang, Menjadi Lemah')
    RETURNING id INTO v_8928_untuk_diencerkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '麺', 'mie', 40, 169, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Pembacaan kosakata ini sama dengan pembacaan yang Anda pelajari dengan kanji. Pergi makan mie untuk merayakannya!', 'mie')
    RETURNING id INTO v_8970_mie;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '麺棒', 'penggilas-adonan', 40, 170, 'Ambil <kanji>mie</kanji> <kanji>tiang</kanji> Anda dan mari kita membuat mie. Apa itu tiang mie? Ini adalah <vocabulary>rolling pin</vocabulary>!

Anda menggunakan penggilas adonan untuk meratakan adonan mie sebelum Anda mengirisnya menjadi mie. Itu sebabnya rolling pin sangat penting untuk membuat mie.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri. Jadi teruslah bergulir.', 'penggilas adonan')
    RETURNING id INTO v_8971_penggilas_adonan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '中華麺', 'mie-cina', 40, 171, 'Anda sudah tahu bahwa 中華 artinya Cina, dan <kanji>麺</kanji> artinya mie. Satukan semuanya dan apa yang Anda punya? Benar sekali, <vocabulary>mie Cina</vocabulary>! enak!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Mie Cina')
    RETURNING id INTO v_8974_mie_cina;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '麺つゆ', 'mentsuyu', 40, 172, 'Anda tahu bahwa 麺 berarti "mie", dan つゆ adalah kata lain untuk "sup" atau "kaldu". Gabungkan keduanya dan Anda akan mendapatkan <vocabulary>mentsuyu </vocabulary> yang lezat, atau <vocabulary>bahan dasar mie kuah</vocabulary>. Biasanya terbuat dari dashi, kecap, mirin, dan gula. enak!', 'Anda mempelajari bacaan 麺 ketika Anda mempelajari kanji.', 'Mentsuyu, Basis Sup Mie, Kaldu Mie')
    RETURNING id INTO v_8988_mentsuyu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '拉致', 'penculikan', 40, 173, 'Jika seseorang <kanji>menculik</kanji>, apa yang mereka <kanji>lakukan</kanji>? Itu adalah <vocabulary>penculikan</vocabulary>, <vocabulary>penculikan</vocabulary>, atau <vocabulary>menawan</vocabulary>. Kata ini cukup sering muncul di surat kabar Jepang, dan sering digunakan untuk merujuk pada penculikan yang dilakukan oleh Korea Utara pada tahun tujuh puluhan dan delapan puluhan.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Penculikan, Penculikan, Mengambil tawanan')
    RETURNING id INTO v_8989_penculikan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '世に出る', 'untuk-keluar-ke-dunia', 40, 174, 'Di sini kita memiliki <kanji>dunia</kanji> dengan partikel に, diikuti dengan kata kerja 出る (keluar). Jika digabungkan maka ini berarti <vocabulary>disebarkan ke seluruh dunia</vocabulary>, <vocabulary>diterbitkan</vocabulary> atau <vocabulary>disebarkan ke publik</vocabulary> dengan cara apa pun. Setelah dikenal di seluruh dunia, bahkan ada peluang untuk <vocabulary>menjadi terkenal</vocabulary>.', 'Ini menggunakan pembacaan kun''yomi untuk kedua kanji, yang seharusnya sudah Anda ketahui sekarang, jadi menurut saya Anda siap melakukannya!', 'Untuk Keluar Ke Dunia, Untuk Diterbitkan, Untuk Dirilis Ke Publik, Menjadi Terkenal')
    RETURNING id INTO v_9154_untuk_keluar_ke_dunia;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '腫れ', 'pembengkakan', 40, 175, 'Anda tahu bahwa 腫れる berarti "membengkak", dan ini adalah versi kata bendanya: <vocabulary>bengkak</vocabulary>.', 'Bacaannya sama dengan yang kamu pelajari dengan kanji dan 腫れる, jadi kamu seharusnya baik-baik saja di sini.', 'Pembengkakan')
    RETURNING id INTO v_9454_pembengkakan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '因果', 'sebab-dan-akibat', 40, 176, 'Anda memiliki <kanji>penyebab</kanji>, dan Anda memiliki <kanji>buah</kanji> (alias akibat) yang diciptakannya. Gabungkan semuanya dan Anda akan mendapatkan <vocabulary>sebab dan akibat</vocabulary>. Beberapa orang bahkan mungkin menyebutnya <vocabulary>karma</vocabulary>.

因果 mengacu pada hubungan satu hal yang mengarah ke hal lain. Anda akan melihatnya dalam frasa seperti 因果関係 (hubungan sebab akibat) atau 因果応報 (Anda menuai apa yang Anda tabur).', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Anda sudah mengetahui bacaan ini, jadi Anda akan baik-baik saja di sini — lihat saja rendaku pada 果 yang mengubahnya dari か menjadi が.', 'Sebab Dan Akibat, karma')
    RETURNING id INTO v_9495_sebab_dan_akibat;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6102_untuk_mendengarkan, 'Untuk Mendengarkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6102_untuk_mendengarkan, 'Untuk Mendengarkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6117_prefektur_kagawa, 'Prefektur Kagawa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6323_melompat, 'Melompat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6323_melompat, 'Kemajuan Pesat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6338_salam, 'Salam', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6338_salam, 'Dengan baik', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6338_salam, 'Dengan baik', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6338_salam, 'Sesuai', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6339_salam, 'Salam', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6340_untuk_mengulangi, 'Untuk Mengulangi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6340_untuk_mengulangi, 'Untuk Mengulanginya Berkali-kali', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6341_mengevakuasi, 'Mengevakuasi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6342_untuk_bersandar_pada_sesuatu, 'Untuk Bersandar pada Sesuatu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6342_untuk_bersandar_pada_sesuatu, 'Untuk Memiringkan Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6343_istrimu, 'Istrimu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6343_istrimu, 'Istri', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6343_istrimu, 'Bu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6344_untuk_menolak, 'Untuk Menolak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6344_untuk_menolak, 'Untuk Menahan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6344_untuk_menolak, 'Untuk menahan diri', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6345_untuk_menggantung, 'Untuk Menggantung', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6345_untuk_menggantung, 'Untuk Bergantung Pada', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6345_untuk_menggantung, 'Dipertaruhkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6346_sekuat_tenaga, 'Sekuat tenaga', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6346_sekuat_tenaga, 'Semua Keluar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6347_penanganan, 'Penanganan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6347_penanganan, 'Perlakuan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6348_untuk_mengelola, 'Untuk Mengelola', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6348_untuk_mengelola, 'Untuk Menangani', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6349_untuk_memilih, 'Untuk Memilih', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6349_untuk_memilih, 'Untuk Memilih', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6350_untuk_memuji, 'Untuk Memuji', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6350_untuk_memuji, 'Untuk Memberikan Pujian', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6351_pembicaraan_rahasia, 'Pembicaraan Rahasia', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6351_pembicaraan_rahasia, 'Bisikan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6352_untuk_melonggarkan, 'Untuk Melonggarkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6352_untuk_melonggarkan, 'Untuk Bersantai', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6353_hadiah, 'Hadiah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6353_hadiah, 'Sebuah Hadiah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6355_prefektur_okinawa, 'Prefektur Okinawa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6356_penyuapan, 'Penyuapan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6357_untuk_nona, 'Untuk Nona', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6357_untuk_nona, 'Kalah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6357_untuk_nona, 'Untuk Melepaskan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6358_buronan, 'Buronan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6358_buronan, 'Pelarian', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6359_penasihat, 'Penasihat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6360_untuk_melihat_kembali_sesuatu, 'Untuk Melihat Kembali Sesuatu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6360_untuk_melihat_kembali_sesuatu, 'Untuk Merenungkan Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6360_untuk_melihat_kembali_sesuatu, 'Untuk Memperhatikan Seseorang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6361_memoar, 'Memoar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6361_memoar, 'Kenangan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6362_ditempatkan_di_jepang, 'Ditempatkan Di Jepang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6363_tempat_tinggal, 'Tempat tinggal', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6363_tempat_tinggal, 'Tinggal', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6364_tempat_parkir, 'Tempat parkir', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6365_pasukan_yang_ditempatkan, 'Pasukan yang Ditempatkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6365_pasukan_yang_ditempatkan, 'Pasukan Pendudukan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6366_untuk_berlari_kencang, 'Untuk berlari kencang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6366_untuk_berlari_kencang, 'Untuk Berlari', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6367_pilar, 'Pilar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6368_tiang_telepon, 'Tiang Telepon', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6369_untuk_bernyanyi, 'Untuk bernyanyi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6370_menganjurkan, 'Menganjurkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6371_nyanyian, 'Nyanyian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6371_nyanyian, 'Lagu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6372_solo, 'Solo', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6373_nyanyian, 'Nyanyian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6373_nyanyian, 'Lagu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6374_paduan_suara, 'Paduan suara', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6374_paduan_suara, 'Paduan suara', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6375_kesalehan_anak, 'Kesalehan Anak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6375_kesalehan_anak, 'Menampilkan Pengabdian', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6376_ketidaktaatan_kepada_orang_tua, 'Ketidaktaatan Kepada Orang Tua', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6376_ketidaktaatan_kepada_orang_tua, 'Kurangnya Kesalehan Berbakti', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6377_jenius, 'Jenius', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6377_jenius, 'Orang Dengan Bakat Luar Biasa', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6377_jenius, 'Orang yang Sangat Berbakat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6378_bisnis_sampingan, 'Bisnis Sampingan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6378_bisnis_sampingan, 'Pekerjaan Kedua', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6378_bisnis_sampingan, 'Cahaya bulan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6379_penggunaan_gabungan, 'Penggunaan Gabungan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6379_penggunaan_gabungan, 'Melayani Dua Tujuan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6380_untuk_menggabungkan, 'Untuk Menggabungkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6380_untuk_menggabungkan, 'Untuk Menggandakan Sebagai', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6381_deterjen, 'Deterjen', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6382_obat, 'Obat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6382_obat, 'Narkoba', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6383_apoteker, 'Apoteker', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6384_pengawet, 'Pengawet', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6384_pengawet, 'Antiseptik', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6385_obat, 'Obat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6385_obat, 'Dosis', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6386_untuk_meniup, 'Untuk Meniup', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6387_parit, 'Parit', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6387_parit, 'Parit', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6387_parit, 'Kanal', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6388_parit_dalam, 'Parit Dalam', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6389_parit_luar, 'Parit Luar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6390_kanal, 'Kanal', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6391_patroli, 'Patroli', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6391_patroli, 'Berkeliling', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6392_ziarah, 'Ziarah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6393_untuk_berkeliling, 'Untuk Berkeliling', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6393_untuk_berkeliling, 'Untuk Kembali', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6394_petugas_polisi, 'Petugas Polisi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6394_petugas_polisi, 'Petugas Patroli', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6395_untuk_memperingatkan, 'Untuk Memperingatkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6395_untuk_memperingatkan, 'Untuk Perhatian', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6395_untuk_memperingatkan, 'Untuk menegur', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6396_peringatan, 'Peringatan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6396_peringatan, 'Peringatan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6397_peringatan, 'Peringatan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6397_peringatan, 'Peringatan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6398_kewaspadaan, 'Kewaspadaan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6398_kewaspadaan, 'Tindakan pencegahan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6399_knalpot, 'Knalpot', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6399_knalpot, 'Ventilasi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6400_pengecualian, 'Pengecualian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6401_drainase, 'Drainase', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6402_emisi, 'Emisi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6403_pengecualian, 'Pengecualian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6403_pengecualian, 'Pemindahan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6403_pengecualian, 'Eliminasi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6404_portabel, 'Portabel', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6404_portabel, 'Ponsel', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6404_portabel, 'Telepon genggam', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6405_untuk_terlibat, 'Untuk Terlibat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6405_untuk_terlibat, 'Untuk Berpartisipasi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6405_untuk_terlibat, 'Untuk Ikut serta', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6406_kepekaan, 'Kepekaan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6406_kepekaan, 'Sensitif terhadap', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6406_kepekaan, 'Sensibilitas', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6407_sensitivitas_berlebihan, 'Sensitivitas berlebihan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6407_sensitivitas_berlebihan, 'Gugup', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6408_cepat, 'Cepat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6408_cepat, 'Cerdas', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6408_cepat, 'Mengingatkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6409_ketajaman, 'Ketajaman', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6409_ketajaman, 'Cerdas Cepat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6409_ketajaman, 'Ketajaman', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6410_tajam, 'Tajam', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6411_ketajaman, 'Ketajaman', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6412_terdepan, 'Terdepan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6412_terdepan, 'Yang Akan Datang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6412_terdepan, 'Tercanggih', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6413_untuk_menyebar, 'Untuk Menyebar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6413_untuk_menyebar, 'Untuk Meletakkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6414_uang_jaminan, 'Uang Jaminan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6415_tempat_tinggal, 'Tempat tinggal', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6415_tempat_tinggal, 'Perkebunan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6416_ruang_tatami, 'Ruang Tatami', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6416_ruang_tatami, 'Ruang Tikar Tatami', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6417_tn, 'Tn.', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6417_tn, 'MS.', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6417_tn, 'Yang mulia', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6418_tuan_feodal, 'Tuan Feodal', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6419_istana, 'Istana', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6419_istana, 'Suaka', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6419_istana, 'Hall Ketenaran', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6420_pengorbanan_terbang, 'Pengorbanan Terbang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6420_pengorbanan_terbang, 'Pengorbanan Bunt', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6421_perolehan, 'Perolehan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6421_perolehan, 'Milik', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6422_menangkap, 'Menangkap', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6422_menangkap, 'Kejang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6423_rampasan, 'rampasan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6423_rampasan, 'Piala', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6423_rampasan, 'Permainan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6424_menjadi_mewah, 'Menjadi Mewah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6424_menjadi_mewah, 'Untuk Tumbuh Tebal', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6425_pertumbuhan_mewah, 'Pertumbuhan Mewah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6426_sering, 'Sering', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6426_sering, 'Tak henti-hentinya', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6427_pembiakan, 'Pembiakan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6427_pembiakan, 'Mengalikan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6428_sejahtera, 'Sejahtera', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6428_sejahtera, 'Kemakmuran', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6429_frekuensi, 'Frekuensi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6430_sering_terjadi, 'Sering Terjadi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6430_sering_terjadi, 'Sering Terjadi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6431_sering, 'Sering', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6431_sering, 'Berulang-kali', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6431_sering, 'Sering', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6432_reproduksi, 'Reproduksi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6433_untuk_menggandakan, 'Untuk Menggandakan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6433_untuk_menggandakan, 'Untuk Meningkatkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6434_tipis, 'Tipis', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6434_tipis, 'Diencerkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6434_tipis, 'Pingsan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6435_kelemahan, 'Kelemahan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6435_kelemahan, 'Kelemahan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6436_berhati_dingin, 'Berhati Dingin', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6437_terkejut, 'Terkejut', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6437_terkejut, 'Menabrak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6437_terkejut, 'Dampak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6438_tabrakan, 'Tabrakan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6438_tabrakan, 'Dampak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6438_tabrakan, 'Konflik', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6439_menghormati, 'Menghormati', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6439_menghormati, 'Prestise', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6440_menghormati, 'Menghormati', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6441_untuk_memuji, 'Untuk Memuji', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6441_untuk_memuji, 'Untuk Memuji', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6442_hadiah, 'Hadiah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6442_hadiah, 'Hadiah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6443_medali, 'Medali', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6443_medali, 'Hadiah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6443_medali, 'Hadiah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6444_menjadi_transparan, 'Menjadi Transparan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6444_menjadi_transparan, 'Menjadi Tembus Pandang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6445_transparan, 'Transparan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6445_transparan, 'Transparansi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6446_tetangga, 'Tetangga', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6446_tetangga, 'Di sebelah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6446_tetangga, 'Tetangga Sebelah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6447_rumah_tetangga, 'Rumah Tetangga', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6448_lingkungan, 'Lingkungan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6449_negara_tetangga, 'Negara Tetangga', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6450_tetangga, 'Tetangga', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6451_kesenian, 'Kesenian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6451_kesenian, 'Rasanya enak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6451_kesenian, 'Keanggunan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6452_musik_pengadilan_jepang, 'Musik Pengadilan Jepang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6452_musik_pengadilan_jepang, 'Gagaku', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6453_keanggunan, 'Keanggunan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6453_keanggunan, 'Berkah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7758_kosong, 'Kosong', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7758_kosong, 'Kosong', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7758_kosong, 'Sia-sia', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7758_kosong, 'Sia-sia', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8730_bagian, 'Bagian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8730_bagian, 'Kelompok', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8843_keadaan_kenikmatan, 'Keadaan Kenikmatan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8843_keadaan_kenikmatan, 'Keadaan yang Menyenangkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8844_senang, 'Senang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8844_senang, 'Senang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8844_senang, 'Menyenangkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8871_tempurung_lutut, 'tempurung lutut', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8914_peri, 'Peri', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8915_raksasa, 'Raksasa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8915_raksasa, 'Yokai', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8916_mempesona, 'Mempesona', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8916_mempesona, 'Menawan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8916_mempesona, 'Misterius', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8928_untuk_diencerkan, 'Untuk Diencerkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8928_untuk_diencerkan, 'Akan Berkurang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8928_untuk_diencerkan, 'Menjadi Lemah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8970_mie, 'mie', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8971_penggilas_adonan, 'penggilas adonan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8974_mie_cina, 'Mie Cina', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8988_mentsuyu, 'Mentsuyu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8988_mentsuyu, 'Basis Sup Mie', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8988_mentsuyu, 'Kaldu Mie', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8989_penculikan, 'Penculikan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8989_penculikan, 'Penculikan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8989_penculikan, 'Mengambil tawanan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9154_untuk_keluar_ke_dunia, 'Untuk Keluar Ke Dunia', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9154_untuk_keluar_ke_dunia, 'Untuk Diterbitkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9154_untuk_keluar_ke_dunia, 'Untuk Dirilis Ke Publik', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9154_untuk_keluar_ke_dunia, 'Menjadi Terkenal', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9454_pembengkakan, 'Pembengkakan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9495_sebab_dan_akibat, 'Sebab Dan Akibat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9495_sebab_dan_akibat, 'karma', false, true);

  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6102_untuk_mendengarkan, 'きく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6117_prefektur_kagawa, 'かがわけん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6323_melompat, 'ひやく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6338_salam, 'よろしく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6339_salam, 'よろしくおねがいします', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6340_untuk_mengulangi, 'くりかえす', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6341_mengevakuasi, 'ひなんする', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6342_untuk_bersandar_pada_sesuatu, 'かたむける', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6343_istrimu, 'おくさま', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6344_untuk_menolak, 'えんりょする', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6345_untuk_menggantung, 'かかる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6346_sekuat_tenaga, 'いっしょうけんめい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6347_penanganan, 'あつかい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6348_untuk_mengelola, 'とりあつかう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6349_untuk_memilih, 'せんたくする', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6350_untuk_memuji, 'たたえる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6351_pembicaraan_rahasia, 'ないしょばなし', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6352_untuk_melonggarkan, 'ゆるめる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6353_hadiah, 'おくりもの', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6355_prefektur_okinawa, 'おきなわけん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6356_penyuapan, 'ぞうわい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6357_untuk_nona, 'のがす', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6358_buronan, 'とうぼうしゃ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6359_penasihat, 'こもん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6360_untuk_melihat_kembali_sesuatu, 'かえりみる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6361_memoar, 'かいころく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6362_ditempatkan_di_jepang, 'ちゅうにち', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6363_tempat_tinggal, 'ちゅうざい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6364_tempat_parkir, 'ちゅうしゃじょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6365_pasukan_yang_ditempatkan, 'ちゅうりゅうぐん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6366_untuk_berlari_kencang, 'かける', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6367_pilar, 'はしら', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6368_tiang_telepon, 'でんちゅう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6369_untuk_bernyanyi, 'となえる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6370_menganjurkan, 'しゅしょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6371_nyanyian, 'しょうか', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6372_solo, 'どくしょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6373_nyanyian, 'かしょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6374_paduan_suara, 'がっしょうだん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6375_kesalehan_anak, 'こうこう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6376_ketidaktaatan_kepada_orang_tua, 'ふこう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6377_jenius, 'しゅんさい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6378_bisnis_sampingan, 'けんぎょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6379_penggunaan_gabungan, 'けんよう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6380_untuk_menggabungkan, 'かねる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6381_deterjen, 'せんざい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6382_obat, 'やくざい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6383_apoteker, 'やくざいし', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6384_pengawet, 'ぼうふざい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6385_obat, 'ざい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6386_untuk_meniup, 'ふく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6387_parit, 'ほり', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6388_parit_dalam, 'うちぼり', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6389_parit_luar, 'そとぼり', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6390_kanal, 'ほりかわ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6391_patroli, 'じゅんかい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6392_ziarah, 'じゅんれい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6393_untuk_berkeliling, 'めぐる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6394_petugas_polisi, 'じゅんさ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6395_untuk_memperingatkan, 'いましめる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6396_peringatan, 'かいこく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6397_peringatan, 'くんかい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6398_kewaspadaan, 'けいかい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6399_knalpot, 'はいき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6400_pengecualian, 'はいた', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6401_drainase, 'はいすい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6402_emisi, 'はいしゅつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6403_pengecualian, 'はいじょ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6404_portabel, 'けいたい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6405_untuk_terlibat, 'たずさわる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6406_kepekaan, 'びんかん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6407_sensitivitas_berlebihan, 'かびん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6408_cepat, 'きびん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6409_ketajaman, 'えいびん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6410_tajam, 'するどい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6411_ketajaman, 'えいり', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6412_terdepan, 'しんえい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6413_untuk_menyebar, 'しく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6414_uang_jaminan, 'しききん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6415_tempat_tinggal, 'やしき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6416_ruang_tatami, 'ざしき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6417_tn, 'どの', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6418_tuan_feodal, 'とのさま', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6419_istana, 'でんどう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6420_pengorbanan_terbang, 'ぎだ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6421_perolehan, 'かくとく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6422_menangkap, 'ほかく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6423_rampasan, 'えもの', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6424_menjadi_mewah, 'しげる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6425_pertumbuhan_mewah, 'はんも', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6426_sering, 'ひんぱん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6427_pembiakan, 'はんしょく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6428_sejahtera, 'はんえい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6429_frekuensi, 'ひんど', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6430_sering_terjadi, 'ひんぱつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6431_sering, 'しきりに', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6432_reproduksi, 'せいしょく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6433_untuk_menggandakan, 'ふえる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6434_tipis, 'うすい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6435_kelemahan, 'はくじゃく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6436_berhati_dingin, 'はくじょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6437_terkejut, 'しょうげき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6438_tabrakan, 'しょうとつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6439_menghormati, 'めいよ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6440_menghormati, 'えいよ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6441_untuk_memuji, 'ほめる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6442_hadiah, 'ほうび', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6443_medali, 'ほうしょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6444_menjadi_transparan, 'すける', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6445_transparan, 'とうめい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6446_tetangga, 'となり', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6447_rumah_tetangga, 'りんか', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6448_lingkungan, 'きんりん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6449_negara_tetangga, 'りんごく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6450_tetangga, 'りんじん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6451_kesenian, 'がち', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6452_musik_pengadilan_jepang, 'ががく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6453_keanggunan, 'ゆうが', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7758_kosong, 'むなしい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8730_bagian, 'ふさ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8843_keadaan_kenikmatan, 'きき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8844_senang, 'うれしい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8871_tempurung_lutut, 'ひざこぞう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8914_peri, 'ようせい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8915_raksasa, 'ようかい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8916_mempesona, 'あやしい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8928_untuk_diencerkan, 'うすまる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8970_mie, 'めん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8971_penggilas_adonan, 'めんぼう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8974_mie_cina, 'ちゅうかめん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8988_mentsuyu, 'めんつゆ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8989_penculikan, 'らち', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9154_untuk_keluar_ke_dunia, 'よにでる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9454_pembengkakan, 'はれ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9495_sebab_dan_akibat, 'いんが', NULL, true, true);

  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6102_untuk_mendengarkan, '森くんって、洋楽聴くの？', 'Apakah kamu mendengarkan musik Barat, Mori-kun?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6102_untuk_mendengarkan, 'ヘッドホンで音楽を聴いていたので、話しかけられたのに気づかなかったんです。', 'Saya sedang mendengarkan musik dengan headphone, jadi saya tidak memperhatikan ketika seseorang mencoba berbicara dengan saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6102_untuk_mendengarkan, '耳をすませてよく聴いてください。', 'Angkat telinga Anda dan dengarkan baik-baik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6102_untuk_mendengarkan, '私は静かな場所でベートーヴェンの第九を聴くのが好きだ。', 'Saya suka mendengarkan Simfoni No. 9 Beethoven di tempat yang tenang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6117_prefektur_kagawa, 'フグ夫妻は二人とも香川県には住んでいるが、別居中です。', 'Baik Tuan dan Nyonya Fugu tinggal di prefektur Kagawa, tetapi sekarang mereka tinggal terpisah satu sama lain.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6323_melompat, '彼は陰謀論が好きなんですが、彼の論理はよく飛躍するんですよね。', 'Dia suka konspirasi, tapi sering kali ada lompatan dalam logikanya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6338_salam, 'お母様に宜しくお伝えくださいね。', 'Tolong ucapkan terima kasih kepada ibumu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6339_salam, 'どうして日本人はいつも「宜しくお願いします」って言うの？', 'Mengapa orang Jepang selalu berkata "tolong perlakukan saya dengan baik"?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6340_untuk_mengulangi, '同じ失敗を何度も繰り返すのはやめようじゃないか。', 'Tidak bisakah kamu berhenti mengulangi kesalahan yang sama berulang kali?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6340_untuk_mengulangi, 'ストーカー行為を繰り返していると、不法行為として訴えられる可能性がありますよ。', 'Jika Anda terus melakukan perilaku menguntit, Anda dapat dituntut karena tindakan ilegal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6341_mengevakuasi, '雨が突然降り出したので、先輩と私は桜の木の下で避難しました。', 'Saya dan senior saya menemukan tempat berlindung di bawah pohon sakura ketika hujan tiba-tiba turun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6342_untuk_bersandar_pada_sesuatu, 'みんな、コウイチの話に、一心に耳を傾けた。', 'Orang-orang bergantung pada setiap kata Koichi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6343_istrimu, 'お話中恐れ入りますが、奥様がエレベーターに閉じ込められてしまったようなんです。', 'Maaf atas gangguannya, tapi sepertinya istri Anda baru saja terjebak di dalam lift.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6344_untuk_menolak, '明日、健康診断なので、できれば今日はお酒はご遠慮させてください。', 'Besok adalah pemeriksaan fisik saya, jadi saya lebih suka tidak minum alkohol hari ini, jika tidak apa-apa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6345_untuk_menggantung, '彼の安否が気に懸かります。', 'Saya khawatir apakah dia baik-baik saja.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6346_sekuat_tenaga, '合唱団で歌う娘の一生懸命な姿に感動しました。', 'Saya tersentuh melihat putri saya bernyanyi di bagian refrain dengan sekuat tenaga.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6346_sekuat_tenaga, 'ほら、みんな一生懸命がんばってるんだから、一人だけサボるなんてずるいよ。', 'Dengar, tidak adil kalau hanya kamu yang bermalas-malasan, karena semua orang bekerja sangat keras.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6346_sekuat_tenaga, '遅れを取り戻すために一生懸命働かなくてはいけないのは分かっているんですが、中々難しいです。', 'Saya tahu saya harus bekerja sekuat tenaga untuk mengejar ketertinggalan semua orang, tapi itu sulit.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6347_penanganan, 'ワイングラスの扱いに気をつけるようにと言われた直後に、案の定一つ割ってしまった。', 'Tepat setelah saya diberitahu untuk berhati-hati dengan gelas anggur, benar saja, saya memecahkannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6347_penanganan, 'フグが私にどんな扱いをしてたか考えてみると、彼がどれだけ最低男だったかが分かるわ。私は彼の家賃から電話代から食費から何から何まで払ってあげていたのに、あの男は他の女と浮気してたのよ！', 'Saat aku memikirkan cara Fugu memperlakukanku, aku sadar betapa bodohnya dia. Aku membayar sewa, tagihan telepon, belanjaan, dan segalanya, tapi si brengsek itu tetap selingkuh dengan wanita lain!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6348_untuk_mengelola, 'その話題については、次の記事で取り扱う予定です。', 'Saya akan membahas topik itu di artikel berikutnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6349_untuk_memilih, '結婚相手にどちらの女性を選択するか決めましたか？', 'Sudahkah Anda memutuskan gadis mana yang akan dipilih sebagai pasangan nikah Anda?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6350_untuk_memuji, 'ワニカニのレビューを毎日していたら、先生から勤勉だと褒め称えられた。', 'Saya mengerjakan ulasan Wanikani setiap hari dan guru memuji ketekunan saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6351_pembicaraan_rahasia, '当人達は内緒話をしているつもりのようだが、声がでかいので全部筒抜けだよ。', 'Mereka mencoba berbisik satu sama lain, tapi suara mereka begitu keras hingga aku bisa mendengar semuanya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6352_untuk_melonggarkan, 'どうぞネクタイをお緩めになってください。', 'Silakan melonggarkan dasi Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6353_hadiah, 'これは母への贈り物です。', 'Ini adalah hadiah untuk ibuku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6353_hadiah, 'それはまるで、神様からの贈り物のようでした。', 'Sepertinya itu adalah hadiah dari Tuhan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6353_hadiah, '贈り物を選ぶ時間って楽しいよね。', 'Waktu yang dihabiskan untuk memilih kado memang menyenangkan bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6353_hadiah, '「これ、君への贈り物。干しふぐだよ。気に入ってもらえるといいけど。」「有難う。聞いただけで既にとっても気に入ったわ。」', '"Ini hadiah untukmu. Ini fugu kering. Kuharap kamu menyukainya." "Terima kasih. Baru mendengarnya, aku sudah <em>sangat</em> menyukainya."');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6355_prefektur_okinawa, '我々は、人々が沖縄県から去るのを食い止めた。', 'Kami menghentikan semua orang meninggalkan Prefektur Okinawa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6356_penyuapan, 'これは、ある国では「プレゼント」と呼ばれるかもしれないが、この国では「贈賄」である。', 'Hal ini mungkin disebut sebagai "hadiah" di beberapa negara, namun di negara ini disebut sebagai "penyuapan".');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6357_untuk_nona, '恋愛のチャンスは逃さないよ！', 'Saya tidak akan pernah melewatkan kesempatan untuk jatuh cinta!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6357_untuk_nona, '主人がクシャミをしたので、シャッターチャンスを逃してしまいました。', 'Saya melewatkan bidikan sempurna ketika suami saya bersin.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6357_untuk_nona, 'ボーっとしていて、アナウンスを聞き逃してしまった。', 'Saya keluar dari situ dan melewatkan pengumumannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6358_buronan, '逃亡者は逃走中に病気の子どもに会い、自首を決意したそうです。', 'Saya mendengar bahwa buronan itu bertemu dengan seorang anak yang sakit ketika dia melarikan diri dan memutuskan untuk menyerahkan diri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6359_penasihat, '明日、部活を休んでもいいかどうか、顧問の先生に聞いてみたら？', 'Mengapa Anda tidak bertanya kepada penasihat Anda apakah Anda boleh melewatkan kegiatan klub besok?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6359_penasihat, '自分からやりたいと言ったわけではなくて、その会社の顧問をしてほしいと頼まれたんですよ。', 'Saya tidak bilang ingin melakukannya, tapi saya diminta menjadi penasihat perusahaan itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6359_penasihat, '彼は良いバスケ部の顧問だとの評判があります。', 'Rumornya, dia adalah penasihat yang baik untuk klub bola basket.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6360_untuk_melihat_kembali_sesuatu, '過去を顧みることも大切だけど、未来のことを考える方がもっと大切だと思うんだ。', 'Penting untuk merenungkan masa lalu, tapi menurut saya lebih penting lagi memikirkan masa depan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6360_untuk_melihat_kembali_sesuatu, '子どものころを顧みると、よくあんなに後先を顧みず色んなことをしたもんだと我ながら驚くよ。', 'Ketika saya mengingat kembali masa kecil saya, saya takjub melihat bagaimana saya bisa melakukan begitu banyak hal tanpa memikirkan konsekuensinya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6360_untuk_melihat_kembali_sesuatu, 'あなた、我が子のことをもう少し顧みてあげてくれませんか。', 'Sayang, tidak bisakah kamu lebih memperhatikan anakmu sendiri?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6361_memoar, 'なんてつまらない回顧録なんだ。', 'Ini adalah memoar yang membosankan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6362_ditempatkan_di_jepang, '今夜は駐日アメリカ大使主催のパーティーに行かなくちゃいけないんです。', 'Saya harus pergi ke pesta malam ini yang diselenggarakan oleh Duta Besar AS untuk Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6363_tempat_tinggal, '海外駐在員と一緒に外国に来ている妻は、駐在さんと呼ばれることがある。', 'Istri seorang pegawai ekspatriat yang datang ke luar negeri bersamanya kadang-kadang disebut Nyonya Ekspatriat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6364_tempat_parkir, 'ショッピングモールの駐車場で渋滞に巻き込まれちゃってるよ。クリスマス前の日曜日なんかに、こんなところに来るんじゃなかったよ。', 'Saya terjebak dalam kemacetan lalu lintas di tempat parkir mal. Saya seharusnya tidak datang ke sini pada hari Minggu sebelum Natal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6365_pasukan_yang_ditempatkan, '駐留軍向けの洗濯サービスとかはありますか？', 'Apakah ada layanan binatu untuk pasukan yang ditempatkan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6366_untuk_berlari_kencang, '犬が庭を駆け回っている。', 'Anjing itu berlarian di sekitar halaman.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6366_untuk_berlari_kencang, '少年は坂道を勢いよく駆け上った。', 'Anak laki-laki itu dengan cepat berlari menaiki lereng.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6366_untuk_berlari_kencang, '馬が駆けるデザインの年賀状を注文しました。', 'Saya memesan kartu Tahun Baru yang menampilkan desain kuda yang berlari kencang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6366_untuk_berlari_kencang, '先生が腕を組んだまま廊下を駆けて行くのを見て、大笑いしました。', 'Kami tertawa terbahak-bahak saat melihat guru itu berlari menyusuri lorong dengan tangan terlipat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6367_pilar, 'そのスーパーで買い物をしてる間、私は犬を柱に繋ぐんですが、いつもちゃんと大人しく待ってますよ。', 'Saat berbelanja di toko kelontong, saya menambatkan anjing saya ke tiang dan dia selalu menunggu saya dengan patuh.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6368_tiang_telepon, '今日車を電柱にぶつけちゃったんだよね。', 'Saya menabrakkan mobil saya ke tiang telepon hari ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6369_untuk_bernyanyi, '背の高い魔法使いが呪文を唱えると、辺りは一瞬真っ暗になった。', 'Saat penyihir jangkung mengucapkan kata ajaib, terjadilah momen kegelapan total.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6370_menganjurkan, 'ベーコンの平和を唱える主唱者にお会いすることはできますか？', 'Bisakah saya bertemu dengan pendukung utama Bacon Peace?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6371_nyanyian, '愛国唱歌は聴きたくないね。', 'Saya tidak ingin mendengarkan lagu sekolah patriotik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6372_solo, '花粉症なのに、発表会で独唱しなくちゃいけないんです。', 'Meskipun aku menderita demam, aku harus tampil solo di resital.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6373_nyanyian, 'あなたの歌唱力をみんなに見せつけるために、このビデオをFacebookに投稿してもいいですか？', 'Bolehkah saya memposting video ini di Facebook untuk menunjukkan kepada semua orang keahlian Anda sebagai penyanyi?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6374_paduan_suara, '合唱団員は、みんなで手を繋いで歌っています。', 'Semua anggota paduan suara bernyanyi bergandengan tangan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6375_kesalehan_anak, 'もっと親孝行したいけど、なかなか時間がないんだよね。', 'Aku ingin berbuat lebih baik kepada orang tuaku, tapi aku tidak punya waktu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6375_kesalehan_anak, '彼女は孝行娘として有名です。', 'Dia dikenal oleh semua orang sebagai putri yang berbakti.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6375_kesalehan_anak, '親は「元気でいてくれるだけで孝行」と言うけど、それが実は一番難しいかもしれない。', 'Orang tuaku bilang, "Kamu bisa menghormati kami hanya dengan tetap bahagia dan sehat," tapi itu mungkin permintaan tersulit.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6375_kesalehan_anak, '女房が死ぬ前に、もっと孝行しておくんだったな。', 'Saya berharap saya bisa lebih mengabdikan diri saya pada istri saya sebelum dia meninggal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6376_ketidaktaatan_kepada_orang_tua, '自分の家族の不孝になるようなことは、絶対にしたくない。', 'Saya tidak pernah ingin melakukan apa pun yang tidak menghormati keluarga saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6377_jenius, 'この問題集は俊才児を対象にして作られているので、あなたのお子さんには難しすぎますよ。', 'Buku teks ini dirancang untuk anak-anak jenius, sehingga akan sulit bagi anak Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6378_bisnis_sampingan, '最近では、兼業ヤクザが増えてきています。', 'Jumlah yakuza yang memiliki pekerjaan sampingan semakin meningkat akhir-akhir ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6379_penggunaan_gabungan, 'この食事は朝昼兼用にします。', 'Saya akan menyebutnya makan siang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6380_untuk_menggabungkan, 'できれば台所と居間を兼ねるような部屋がある方がいいなぁ。', 'Jika memungkinkan, saya lebih suka memiliki ruangan yang berfungsi ganda sebagai dapur dan ruang tamu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6381_deterjen, 'どうして洗剤一本買うだけで三時間もかかるの。', 'Mengapa Anda memerlukan waktu tiga jam untuk membeli satu botol deterjen?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6382_obat, '薬剤を使い終わったら、必ず薬剤入れに戻してください。', 'Pastikan Anda menyimpan obat di dalam kotak obat setelah Anda menggunakannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6383_apoteker, '薬剤師は別に白衣を着る必要はないと思うんだよな。', 'Menurut saya apoteker tidak perlu memakai jas putih.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6384_pengawet, '古い防腐剤はどこに捨てればいいですか。', 'Di mana saya harus membuang antiseptik lama?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6385_obat, '解毒剤の極秘開発を行う予定だとちょいと小耳に挟みましたよ。', 'Aku mendengarnya dari selentingan bahwa kalian akan melakukan eksperimen penawar racun diam-diam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6386_untuk_meniup, '手に息を吹きかけた。', 'Aku meniup tanganku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6386_untuk_meniup, '彼は楽しそうに口笛を吹いていた。', 'Dia bersiul dengan gembira.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6386_untuk_meniup, '熱いスープをふうふう吹きながら、飲みました。', 'Saya minum sup panas sambil meniupnya untuk mendinginkannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6386_untuk_meniup, '「追い風が吹いている」と、誰もが言った。しかし、彼だけはまだ油断していなかった。', 'Semua orang bilang ada angin di belakang mereka. Namun, dia sendiri yang tetap berhati-hati.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6387_parit, '堀があれば、ゾンビとうまく闘えると思わないか？', 'Tidakkah menurutmu jika ada parit, kita bisa bertarung dengan baik melawan zombie?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6388_parit_dalam, '私は彼を内堀に通すために道をあけた。', 'Saya menyingkir untuk membiarkannya melewati parit bagian dalam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6389_parit_luar, 'ちょっと気が変わって、外堀は必要がないようと思うようになりました。', 'Saya berubah pikiran, menurut saya kita tidak membutuhkan parit luar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6390_kanal, '私達は堀川のほとりを並んで歩きました。', 'Kami berjalan berdampingan menyusuri kanal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6391_patroli, '天気予報が外れて、巡回中に雨が降り出しました。', 'Ramalan cuaca salah dan hujan mulai turun saat saya sedang berpatroli.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6392_ziarah, '世界中の聖地を巡礼しようと決心しました。', 'Saya memutuskan untuk pergi berziarah ke tempat-tempat suci di seluruh dunia.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6393_untuk_berkeliling, '今日は五つのお寺を巡る予定です。', 'Kami telah mengatur untuk berkeliling ke lima kuil hari ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6394_petugas_polisi, 'その巡査は、スコッチを一気にゴクリと半分飲み干した。', 'Polisi itu meminum setengah scotch dalam satu tegukan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6395_untuk_memperingatkan, '誰かが彼女の無茶苦茶な運転を戒める必要があるんじゃない？', 'Seseorang perlu memperingatkan dia tentang kecerobohannya dalam mengemudi, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6396_peringatan, '彼女が私の尻を触ったことはセクハラに当たります。即刻戒告処分にしてください。', 'Menyentuh pantatku adalah pelecehan seksual. Saya ingin Anda segera menegurnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6397_peringatan, 'いつも勉強会で居眠りする同僚がいてさ、ついに上司が今日それについて訓戒を与えてたよ。', 'Rekan kerja saya selalu tertidur selama sesi belajar dan atasan kami akhirnya menegurnya hari ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6398_kewaspadaan, 'ちょっと警戒していることがあるんです。', 'Ada sesuatu yang saya agak berhati-hati.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6399_knalpot, '自動車の排気ガスの臭いが好きなのは、私達の共通点ですね。', 'Menyukai bau knalpot mobil adalah kesamaan yang kami miliki.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6400_pengecualian, '日本記者クラブはかなり排他的だよ。', 'Klub pers Jepang cukup eksklusif.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6401_drainase, '記念硬貨を排水溝に落っことしちゃった。', 'Saya menjatuhkan koin peringatan itu ke saluran pembuangan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6402_emisi, '植物は二酸化炭素を吸収し、酸素を排出します。', 'Tumbuhan menyerap karbon dioksida dan mengeluarkan oksigen.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6403_pengecualian, '各下水道施設は、下水排除規準を満たす必要があります。', 'Setiap fasilitas pembuangan limbah harus memenuhi standar pembuangan limbah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6404_portabel, '携帯の電源を入れるには、電源ボタンを五秒間長押しする必要があります。', 'Untuk menghidupkan ponsel Anda, Anda perlu menekan tombol daya selama lima detik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6405_untuk_terlibat, '同僚の評価に携わるのは嫌だったが、選択の余地はなかった。', 'Saya tidak ingin berpartisipasi dalam evaluasi rekan kerja saya, namun saya tidak punya pilihan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6406_kepekaan, '耳がすっごい敏感だから、コショコショ話はしないで。', 'Tolong jangan berbisik karena telingaku sangat sensitif.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6407_sensitivitas_berlebihan, '過敏性大腸症候群に苦しんでいます。', 'Saya menderita sindrom iritasi usus besar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6408_cepat, 'ウェイトレスってのは機敏に動くものなのに、彼女はとんでもなく鈍いんだよ。', 'Pelayan seharusnya bergerak cepat, tapi dia sangat lambat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6409_ketajaman, 'その犬の鋭敏な嗅覚は、何人もの麻薬密売人を捕らえました。', 'Hidung tajam anjing itu menarik perhatian banyak pengedar narkoba.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6410_tajam, '私は森で熊に遭遇し、鋭い爪で顔を引っ掻かれました。', 'Saya bertemu beruang di hutan dan ia mencakar wajah saya dengan cakarnya yang tajam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6411_ketajaman, '通り魔は、鋭利な刃物で私の全身を切りつけた。', 'Penyerang acak itu menebas tubuhku dengan pisau tajam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6412_terdepan, 'その会社は最新鋭のパソコンを購入することを決定しました。', 'Perusahaan memutuskan untuk membeli komputer mutakhir.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6413_untuk_menyebar, '彼に、部屋にカーペットを敷くよう説得しました。', 'Saya membujuknya untuk meletakkan karpet di kamarnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6414_uang_jaminan, '敷金を全額返金してもらいました。', 'Saya mendapat pengembalian uang penuh atas uang jaminan saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6415_tempat_tinggal, '男の妻は毎日お屋敷で何もせずただブラブラしている。', 'Istrinya tidak melakukan apa pun kecuali berkeliaran tanpa tujuan di sekitar perkebunan setiap hari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6416_ruang_tatami, 'お座敷のどこかでコオロギが鳴いている。', 'Ada kicau jangkrik di suatu tempat di ruang tatami.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6417_tn, 'この賞状は、中村コウイチ殿の優れた功績を称えて与られます。', 'Sertifikat ini diberikan kepada Tuan Nakamura Koichi sebagai pengakuan atas pencapaiannya yang luar biasa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6417_tn, '鈴木殿にお伝えください。', 'Tolong beritahu Tuan Suzuki.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6417_tn, '名前の後に「殿」を付ける用法は、現代では同列か目下の人に対しての敬称として、書面にのみ用いられる。', 'Penggunaan "dono" setelah nama saat ini hanya digunakan dalam dokumen tertulis sebagai gelar kehormatan bagi mereka yang setara atau lebih rendah dari Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6418_tuan_feodal, '暇つぶしにイケメンの殿様の絵を描きました。', 'Saya menggambar tuan feodal yang tampan untuk membuang waktu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6419_istana, 'その殿堂の屋根は、たくさんの柱で支えられています。', 'Atap istana ditopang oleh banyak tiang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6419_istana, '東大は学問の殿堂と言われています。', 'Universitas Tokyo dikatakan sebagai tempat perlindungan pembelajaran.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6419_istana, 'お前にとって、殿堂入りを果たした選手といえば、誰になる？', 'Menurut Anda, siapa pemain yang harus dilantik ke dalam hall of fame?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6420_pengorbanan_terbang, '犠打にならないか心配です。', 'Saya tidak bisa tidak khawatir tentang lalat pengorbanan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6421_perolehan, '今日ゲームをプレイすると、いつもの二倍のコインが獲得できるよ。', 'Jika Anda memainkan game ini hari ini, Anda bisa mendapatkan dua kali lipat jumlah koin biasanya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6422_menangkap, 'このメモ帳に、巨人の捕獲についての思いついたことを全部メモしています。', 'Di memo pad ini, saya mencatat semua ide saya untuk memotret para raksasa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6423_rampasan, '都会には、我々の詐欺の獲物がたくさんいるんだよ。', 'Banyak sekali mangsa yang mudah untuk kita tipu di kota ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6424_menjadi_mewah, '妖婆の庭には雑草が生い茂っていた。', 'Kebun perempuan tua itu ditumbuhi rumput liar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6425_pertumbuhan_mewah, '庭に雑草が繁茂しているので、この週末に草刈りをします。', 'Halaman kami ditumbuhi rumput liar, jadi saya akan memotongnya akhir pekan ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6426_sering, 'お前は頻繁にくだらない事を気にし過ぎなんだって。', 'Anda sering memusingkan hal-hal kecil.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6427_pembiakan, '本当に俺たちの柴犬を繁殖させることができると思う？', 'Apakah menurut Anda kita bisa membiakkan anjing Shiba kita sendiri?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6428_sejahtera, '信じられないかもしれませんが、私が生まれ育ったこの港町は、かつては繁栄していたんですよ。', 'Anda mungkin tidak percaya, tetapi kota pelabuhan tempat saya dilahirkan dan dibesarkan ini dulunya makmur.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6429_frekuensi, 'どれくらいの頻度で家に掃除機をかけますか？', 'Seberapa sering Anda menyedot debu di rumah?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6430_sering_terjadi, 'みんな、頻発する地震に、ストレスが溜まりに溜まっているんだよ。', 'Setiap orang sangat stres dengan gempa bumi yang berulang kali terjadi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6431_sering, '彼は「ライオンキングは子どもから大人まで楽しめるショーだ」ということを頻りに強調した。', 'Ia berkali-kali menegaskan, baik anak-anak maupun orang dewasa bisa menikmati pertunjukan Lion King.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6432_reproduksi, '今、生殖器が二つある女の子と付き合ってるんだよ。', 'Saya berkencan dengan seorang gadis yang memiliki dua organ reproduksi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6433_untuk_menggandakan, 'なんだか毛が殖えてるなあと思ったら、植毛手術をしたんだぁ！なるほどねぇ。', 'Kupikir rambutmu bertambah banyak, tapi kamu menjalani operasi penggantian rambut, ya? Jadi begitu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6434_tipis, 'コピー機のインクの色が薄くなってきちゃった。新しいトナーを買わなくっちゃ。', 'Mesin fotokopi saya mencetak dengan tinta yang lebih ringan. Saya harus membeli toner baru.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6435_kelemahan, 'お兄さんに言われたわ。あなたは意志薄弱だから私と別れることができないけど、本当は別れたいんだって。', 'Kakakmu memberitahuku bahwa keinginanmu terlalu lemah untuk putus denganku, tapi kamu benar-benar menginginkannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6436_berhati_dingin, '彼は薄情者だし、どっちの味方かサッパリ分からないよ。', 'Dia berhati dingin dan saya tidak tahu dia memihak siapa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6437_terkejut, 'あなたは爆発の衝撃で気絶したのよ。', 'Anda pingsan karena guncangan ledakan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6438_tabrakan, '高速道路で、車が次々と衝突しました。', 'Di jalan raya, mobil-mobil bertabrakan satu demi satu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6439_menghormati, 'あいつは名誉を得ることには興味がないなんて言ってるけど、俺は嘘だと思うね。', 'Dia bilang dia tidak tertarik untuk mendapatkan gengsi, tapi menurutku itu bohong.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6440_menghormati, 'トーフグで仕事をするという栄誉を得たとき、そのオファーに感激して言葉に詰まりました。', 'Ketika saya mendapat kehormatan bekerja untuk Tofugu, saya sangat senang dengan tawaran itu sehingga saya tersandung pada kata-kata saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6441_untuk_memuji, 'どう返答していいか分からないので、人に褒められるのは苦手です。', 'Saya buruk dalam dipuji karena saya tidak tahu bagaimana harus menanggapinya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6442_hadiah, '頑張ったご褒美がもらえることを期待しています。', 'Saya berharap mendapat imbalan atas kerja keras saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6443_medali, '褒賞を受け取るために舞台に上がろうとした時、彼女は階段につまづきました。', 'Ketika dia mencoba naik ke panggung untuk mendapatkan hadiahnya, dia tersandung tangga.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6444_menjadi_transparan, '光っている電球の上に銀色のスクラッチカードを当てると、その銀色の部分の下に何が書かれてるかが透けて見えちゃうことがあるんだよ。', 'Jika Anda meletakkan kartu gores berwarna perak di atas bola lampu yang terang, terkadang Anda dapat melihat bagian perak pada tulisan di bawahnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6445_transparan, '透明人間の男は、バスタオルで自分の体をよーく拭きました。', 'Pria tak kasat mata itu dengan hati-hati mengeringkan dirinya dengan handuk mandi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6446_tetangga, '子育ては隣町でしてたんですが、子どもたちがみんな大きくなったので主人と私はこの町に越して来たんですよ。', 'Kami membesarkan anak-anak kami di kota tetangga, kemudian saya dan suami pindah ke kota ini setelah mereka dewasa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6447_rumah_tetangga, '隣家ではどうやら窓は新聞紙で拭くようです。', 'Nampaknya orang-orang di rumah tetangga menyeka jendela mereka dengan koran.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6448_lingkungan, 'コウイチ大統領は、近隣諸国との関係をないがしろにはしなかった。', 'Presiden Koichi tidak pernah mengabaikan hubungan dengan negara tetangga.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6449_negara_tetangga, 'どうして隣国の肩を持つのさ？日本人じゃないの？', 'Mengapa Anda memihak negara tetangga? Bukankah kamu orang Jepang?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6450_tetangga, '私の隣人は、幸運を呼ぶお守りを持っていることで有名です。', 'Tetangga saya terkenal mempunyai jimat yang membawa keberuntungan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6451_kesenian, '壁の絵はとても雅致がありますね。どなたの作品ですか？', 'Gambar di dinding ini sangat menarik. Siapa yang melukis ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6452_musik_pengadilan_jepang, '雅楽の演奏会の後は、何をしましょうか。', 'Apa yang harus kita lakukan setelah konser musik istana Jepang?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6453_keanggunan, '彼女は自称「優雅なマダム」です。', 'Dia adalah "nyonya yang anggun".');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7758_kosong, '毎日泣いてばかりいるのは虚しい。', 'Percuma saja menangis setiap hari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7758_kosong, '今日は何だか虚しい気分です。', 'Aku merasa hampa hari ini, entah kenapa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7758_kosong, '毎日同じような日々の人生で、虚しくなりませんか。', 'Apakah Anda merasa hampa, menjalani kehidupan sehari-hari yang sama hari demi hari?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8730_bagian, '葡萄を三房買ってきたわよ。', 'Saya pergi membeli tiga tandan anggur.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8843_keadaan_kenikmatan, '子供ができればすぐ、嬉々として報告してくれるだろう。', 'Begitu mereka hamil, mereka dengan senang hati akan memberi tahu kami.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8843_keadaan_kenikmatan, '父は、久しぶりに旧友に会い、嬉々として近況を語り合った。', 'Ayah saya melihat teman lamanya untuk pertama kalinya setelah sekian lama dan mereka dengan gembira bertemu satu sama lain.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8843_keadaan_kenikmatan, 'コウイチが無事に帰ってきて、村には嬉々たる声が響いた。', 'Koichi kembali dengan selamat dan desa dipenuhi dengan suara gembira.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8844_senang, '今日は何だか嬉しそうですね。', 'Kamu terlihat bahagia hari ini, entah kenapa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8844_senang, '百年前の今日、あなたが生まれてくれて嬉しかった。お誕生日おめでとう。', 'Saat kamu lahir seratus tahun yang lalu hari ini, aku bahagia. Selamat ulang tahun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8844_senang, '最近、嬉しいことが全然ない。', 'Tidak ada hal bahagia yang terjadi padaku akhir-akhir ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8871_tempurung_lutut, '自転車で転んで、膝小僧が痛い。', 'Saya terjatuh dari sepeda dan tempurung lutut saya sakit.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8871_tempurung_lutut, '最近、右の膝小僧にタトゥーを入れたんです。', 'Saya baru-baru ini membuat tato di tempurung lutut kanan saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8871_tempurung_lutut, '膝小僧の調子はどうですか？', 'Bagaimana tempurung lututmu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8914_peri, 'このチューリップの花の中には妖精が住んでいるんだ。', 'Ada peri yang tinggal di dalam bunga tulip ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8914_peri, 'まさる君の親戚に妖精がいるなんて、知らなかったよ。', 'Masaru, aku tidak tahu kamu punya saudara yang peri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8914_peri, 'この情報は、特に妖精にとって役立つものです。', 'Informasi ini sangat berguna bagi peri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8915_raksasa, '妖怪さん、何か用かい？', 'Hei, Tuan Yokai. Kamu menanyakanku, ada apa?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8915_raksasa, 'この妖怪はいつも半袖のTシャツを着ています。', 'Yokai ini selalu memakai kaos lengan pendek.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8915_raksasa, '妖怪の友達がいるなんて、羨ましい！', 'Kamu punya teman yokai? aku cemburu!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8916_mempesona, '彼女には妖しい美しさがある。', 'Dia memiliki kecantikan yang mempesona.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8916_mempesona, 'その時、ジェニーの目から妖しい光が放たれた。', 'Saat itu, mata Jenny memancarkan cahaya misterius.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8916_mempesona, 'キャメロンは妖しい微笑みを浮かべてそこに立っていた。', 'Cameron hanya berdiri disana sambil tersenyum misterius.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8928_untuk_diencerkan, '効果が薄まるので、お酒と一緒には飲まないで下さい。', 'Mohon jangan meminumnya dengan alkohol karena efektivitasnya akan berkurang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8928_untuk_diencerkan, '水で薄まったピンクの絵の具がパレットに残っていた。', 'Cat merah muda yang diencerkan dengan air tertinggal di palet.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8928_untuk_diencerkan, 'たった一つの発言でせっかくの手紙のありがたみが薄まった。', 'Hanya dengan satu komentar, surat yang saya terima dengan penuh syukur tidak lagi terasa istimewa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8970_mie, '早く食べないと麺が伸びちゃうよ。', 'Makan mie Anda dengan cepat atau mie akan menjadi lunak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8970_mie, '苺味の麺を開発しました。', 'Kami telah mengembangkan mie rasa stroberi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8970_mie, '次に、麺に沸騰したお湯を注いでください。', 'Selanjutnya, tuangkan air mendidih ke atas mie.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8971_penggilas_adonan, 'その麺棒、どこで買ったの？', 'Beli rolling pinnya dimana?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8971_penggilas_adonan, '麺棒ならあそこの引き出しに入ってるよ。', 'Jika Anda mencari rolling pin, ada di laci itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8971_penggilas_adonan, '大量の麺棒が中国から持ち込まれている。', 'Rolling pin dalam jumlah besar telah didatangkan dari Tiongkok.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8974_mie_cina, '一日中、中華麺が食べたくて仕方がない。', 'Saya sudah mengidam mie Cina sepanjang hari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8974_mie_cina, '母の作る中華麺は世界で一番おいしい。', 'Mie Cina buatan ibuku adalah yang terbaik di dunia.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8974_mie_cina, 'インスタント中華麺をヨーロッパに輸出してお金持ちになりました。', 'Kami menjadi kaya dengan mengekspor mie instan Cina ke Eropa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8988_mentsuyu, 'この麺つゆが最高においしいよ。', 'Mentsuyu ini adalah yang terbaik!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8988_mentsuyu, '三つの材料で簡単に手作り麺つゆができます。', 'Hanya dengan tiga bahan saja Anda bisa dengan mudah membuat bahan dasar kuah mie buatan sendiri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8988_mentsuyu, 'この麺つゆは煮物などの料理にも使えます。', 'Kuah mie ini bisa digunakan untuk semur dan masakan lainnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8989_penculikan, '拉致被害者全員が無事に帰ってきた。', 'Semua korban penculikan telah kembali dengan selamat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8989_penculikan, '拉致問題は、なぜ進まないのでしょうか。', 'Mengapa tidak ada kemajuan dalam masalah penculikan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8989_penculikan, 'その旅行者は強盗団に拉致されたが、数日後に放れた。', 'Pelancong tersebut ditawan oleh sekelompok perampok tetapi dibebaskan beberapa hari kemudian.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9154_untuk_keluar_ke_dunia, '自分の作品が世に出るなんて、夢みたいだ。', 'Merupakan mimpi yang menjadi kenyataan untuk menerbitkan karya saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9154_untuk_keluar_ke_dunia, '一度世に出た写真やビデオは、デジタルタトゥーとなってずっとネットに残るんだよ。', 'Begitu foto atau video tersebar ke seluruh dunia, itu menjadi tato digital dan tetap ada di Internet selamanya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9154_untuk_keluar_ke_dunia, '今日のコンサートでは、今まで世に出る機会がなかった曲たちを演奏します。', 'Dalam konser hari ini, saya akan menampilkan lagu-lagu yang belum pernah dirilis ke publik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9454_pembengkakan, '腫れと痛みがひどいんです。', 'Bengkak dan nyerinya sangat parah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9454_pembengkakan, '腫れが出てきたら、冷やしてください。', 'Jika terjadi pembengkakan, silakan kompres area tersebut dengan es.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9454_pembengkakan, '腫れが目立ってきましたね。', 'Bengkaknya semakin terlihat, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9454_pembengkakan, '腫れを抑える薬を出しておきますね。', 'Saya akan meresepkan Anda obat untuk mengurangi pembengkakan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9495_sebab_dan_akibat, '因果関係を証明するのは難しいでしょうね。', 'Mungkin sulit untuk membuktikan hubungan sebab dan akibat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9495_sebab_dan_akibat, 'まったく、何の因果でこんなことになったのか…。', 'Sejujurnya… apa yang telah saya lakukan hingga pantas menerima ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9495_sebab_dan_akibat, 'それはまさに因果応報だった。', 'Itu benar-benar balasan karma.');

  -- 4. PREREQUISITES
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1742_tinjauan, r_378_mempekerjakan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1742_tinjauan, id FROM items WHERE type = 'radical' AND (slug = '184' OR id = '184') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1743_penduduk, id FROM items WHERE type = 'radical' AND (slug = '165' OR id = '165') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1743_penduduk, id FROM items WHERE type = 'radical' AND (slug = '154' OR id = '154') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1744_mencongklang, id FROM items WHERE type = 'radical' AND (slug = '165' OR id = '165') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1744_mencongklang, id FROM items WHERE type = 'radical' AND (slug = '322' OR id = '322') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1745_pilar, id FROM items WHERE type = 'radical' AND (slug = '23' OR id = '23') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1745_pilar, id FROM items WHERE type = 'radical' AND (slug = '154' OR id = '154') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1746_nyanyian, id FROM items WHERE type = 'radical' AND (slug = '16' OR id = '16') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1746_nyanyian, id FROM items WHERE type = 'radical' AND (slug = '22' OR id = '22') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1747_kesalehan_anak, id FROM items WHERE type = 'radical' AND (slug = '418' OR id = '418') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1748_jenius, id FROM items WHERE type = 'radical' AND (slug = '75' OR id = '75') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1748_jenius, id FROM items WHERE type = 'radical' AND (slug = '427' OR id = '427') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1749_secara_bersamaan, id FROM items WHERE type = 'radical' AND (slug = '271' OR id = '271') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1750_dosis, id FROM items WHERE type = 'radical' AND (slug = '277' OR id = '277') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1750_dosis, id FROM items WHERE type = 'radical' AND (slug = '128' OR id = '128') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1751_meniup, id FROM items WHERE type = 'radical' AND (slug = '16' OR id = '16') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1751_meniup, id FROM items WHERE type = 'radical' AND (slug = '142' OR id = '142') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1752_parit, id FROM items WHERE type = 'radical' AND (slug = '17' OR id = '17') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1752_parit, id FROM items WHERE type = 'radical' AND (slug = '37' OR id = '37') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1752_parit, id FROM items WHERE type = 'radical' AND (slug = '332' OR id = '332') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1753_patroli, id FROM items WHERE type = 'radical' AND (slug = '114' OR id = '114') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1753_patroli, id FROM items WHERE type = 'radical' AND (slug = '273' OR id = '273') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1754_firman, id FROM items WHERE type = 'radical' AND (slug = '194' OR id = '194') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1754_firman, id FROM items WHERE type = 'radical' AND (slug = '106' OR id = '106') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1755_memancarkan, id FROM items WHERE type = 'radical' AND (slug = '63' OR id = '63') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1755_memancarkan, id FROM items WHERE type = 'radical' AND (slug = '209' OR id = '209') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1756_portabel, id FROM items WHERE type = 'radical' AND (slug = '63' OR id = '63') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1756_portabel, id FROM items WHERE type = 'radical' AND (slug = '240' OR id = '240') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1756_portabel, id FROM items WHERE type = 'radical' AND (slug = '200' OR id = '200') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1757_peringatan, r_379_setiap);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1757_peringatan, id FROM items WHERE type = 'radical' AND (slug = '60' OR id = '60') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1758_tajam, id FROM items WHERE type = 'radical' AND (slug = '118' OR id = '118') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1758_tajam, id FROM items WHERE type = 'radical' AND (slug = '422' OR id = '422') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1759_menyebar, id FROM items WHERE type = 'radical' AND (slug = '15' OR id = '15') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1759_menyebar, id FROM items WHERE type = 'radical' AND (slug = '3' OR id = '3') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1759_menyebar, id FROM items WHERE type = 'radical' AND (slug = '51' OR id = '51') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1759_menyebar, id FROM items WHERE type = 'radical' AND (slug = '66' OR id = '66') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1759_menyebar, id FROM items WHERE type = 'radical' AND (slug = '60' OR id = '60') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1760_tuan, id FROM items WHERE type = 'radical' AND (slug = '37' OR id = '37') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1760_tuan, id FROM items WHERE type = 'radical' AND (slug = '269' OR id = '269') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1760_tuan, id FROM items WHERE type = 'radical' AND (slug = '160' OR id = '160') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1761_pengorbanan, id FROM items WHERE type = 'radical' AND (slug = '126' OR id = '126') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1761_pengorbanan, id FROM items WHERE type = 'radical' AND (slug = '383' OR id = '383') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1762_menangkap, id FROM items WHERE type = 'radical' AND (slug = '144' OR id = '144') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1762_menangkap, id FROM items WHERE type = 'radical' AND (slug = '90' OR id = '90') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1762_menangkap, id FROM items WHERE type = 'radical' AND (slug = '240' OR id = '240') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1762_menangkap, id FROM items WHERE type = 'radical' AND (slug = '30' OR id = '30') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1763_subur, id FROM items WHERE type = 'radical' AND (slug = '90' OR id = '90') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1763_subur, id FROM items WHERE type = 'radical' AND (slug = '5' OR id = '5') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1763_subur, id FROM items WHERE type = 'radical' AND (slug = '194' OR id = '194') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1764_ditumbuhi_terlalu_banyak, r_379_setiap);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1764_ditumbuhi_terlalu_banyak, id FROM items WHERE type = 'radical' AND (slug = '60' OR id = '60') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1764_ditumbuhi_terlalu_banyak, id FROM items WHERE type = 'radical' AND (slug = '86' OR id = '86') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1765_sering, id FROM items WHERE type = 'radical' AND (slug = '245' OR id = '245') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1765_sering, id FROM items WHERE type = 'radical' AND (slug = '184' OR id = '184') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1766_berkembang_biak, id FROM items WHERE type = 'radical' AND (slug = '132' OR id = '132') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1766_berkembang_biak, id FROM items WHERE type = 'radical' AND (slug = '8821' OR id = '8821') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1767_mencairkan, id FROM items WHERE type = 'radical' AND (slug = '90' OR id = '90') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1767_mencairkan, id FROM items WHERE type = 'radical' AND (slug = '103' OR id = '103') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1767_mencairkan, id FROM items WHERE type = 'radical' AND (slug = '3' OR id = '3') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1767_mencairkan, id FROM items WHERE type = 'radical' AND (slug = '317' OR id = '317') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1768_bertabrakan, id FROM items WHERE type = 'radical' AND (slug = '111' OR id = '111') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1768_bertabrakan, id FROM items WHERE type = 'radical' AND (slug = '188' OR id = '188') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1769_menghormati, id FROM items WHERE type = 'radical' AND (slug = '8783' OR id = '8783') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1769_menghormati, id FROM items WHERE type = 'radical' AND (slug = '1' OR id = '1') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1769_menghormati, id FROM items WHERE type = 'radical' AND (slug = '2' OR id = '2') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1769_menghormati, id FROM items WHERE type = 'radical' AND (slug = '117' OR id = '117') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1770_memuji, id FROM items WHERE type = 'radical' AND (slug = '8' OR id = '8') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1770_memuji, r_380_melestarikan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1770_memuji, id FROM items WHERE type = 'radical' AND (slug = '8770' OR id = '8770') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1771_transparan, id FROM items WHERE type = 'radical' AND (slug = '114' OR id = '114') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1771_transparan, id FROM items WHERE type = 'radical' AND (slug = '135' OR id = '135') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1771_transparan, id FROM items WHERE type = 'radical' AND (slug = '200' OR id = '200') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1772_tetangga, id FROM items WHERE type = 'radical' AND (slug = '176' OR id = '176') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1772_tetangga, id FROM items WHERE type = 'radical' AND (slug = '98' OR id = '98') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1772_tetangga, id FROM items WHERE type = 'radical' AND (slug = '429' OR id = '429') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1773_anggun, id FROM items WHERE type = 'radical' AND (slug = '333' OR id = '333') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1773_anggun, id FROM items WHERE type = 'radical' AND (slug = '240' OR id = '240') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_8835_senang, id FROM items WHERE type = 'radical' AND (slug = '19' OR id = '19') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_8835_senang, r_8833_bersuka_cita);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_8909_gaib, id FROM items WHERE type = 'radical' AND (slug = '19' OR id = '19') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_8909_gaib, id FROM items WHERE type = 'radical' AND (slug = '40' OR id = '40') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_8955_mie, r_8907_gandum);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_8955_mie, id FROM items WHERE type = 'radical' AND (slug = '250' OR id = '250') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_8969_menculik, id FROM items WHERE type = 'radical' AND (slug = '63' OR id = '63') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_8969_menculik, id FROM items WHERE type = 'radical' AND (slug = '55' OR id = '55') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6102_untuk_mendengarkan, id FROM items WHERE type = 'kanji' AND (slug = '1660' OR id = '1660') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6117_prefektur_kagawa, id FROM items WHERE type = 'kanji' AND (slug = '1665' OR id = '1665') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6117_prefektur_kagawa, id FROM items WHERE type = 'kanji' AND (slug = '456' OR id = '456') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6117_prefektur_kagawa, id FROM items WHERE type = 'kanji' AND (slug = '731' OR id = '731') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6323_melompat, id FROM items WHERE type = 'kanji' AND (slug = '1092' OR id = '1092') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6323_melompat, id FROM items WHERE type = 'kanji' AND (slug = '1738' OR id = '1738') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6338_salam, id FROM items WHERE type = 'kanji' AND (slug = '1677' OR id = '1677') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6339_salam, id FROM items WHERE type = 'kanji' AND (slug = '1677' OR id = '1677') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6339_salam, id FROM items WHERE type = 'kanji' AND (slug = '888' OR id = '888') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6340_untuk_mengulangi, id FROM items WHERE type = 'kanji' AND (slug = '1678' OR id = '1678') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6340_untuk_mengulangi, id FROM items WHERE type = 'kanji' AND (slug = '858' OR id = '858') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6341_mengevakuasi, id FROM items WHERE type = 'kanji' AND (slug = '1679' OR id = '1679') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6341_mengevakuasi, id FROM items WHERE type = 'kanji' AND (slug = '1095' OR id = '1095') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6342_untuk_bersandar_pada_sesuatu, id FROM items WHERE type = 'kanji' AND (slug = '1687' OR id = '1687') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6343_istrimu, id FROM items WHERE type = 'kanji' AND (slug = '1689' OR id = '1689') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6343_istrimu, id FROM items WHERE type = 'kanji' AND (slug = '865' OR id = '865') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6344_untuk_menolak, id FROM items WHERE type = 'kanji' AND (slug = '963' OR id = '963') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6344_untuk_menolak, id FROM items WHERE type = 'kanji' AND (slug = '1690' OR id = '1690') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6345_untuk_menggantung, id FROM items WHERE type = 'kanji' AND (slug = '1691' OR id = '1691') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6346_sekuat_tenaga, id FROM items WHERE type = 'kanji' AND (slug = '440' OR id = '440') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6346_sekuat_tenaga, id FROM items WHERE type = 'kanji' AND (slug = '850' OR id = '850') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6346_sekuat_tenaga, id FROM items WHERE type = 'kanji' AND (slug = '1691' OR id = '1691') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6346_sekuat_tenaga, id FROM items WHERE type = 'kanji' AND (slug = '789' OR id = '789') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6347_penanganan, id FROM items WHERE type = 'kanji' AND (slug = '1693' OR id = '1693') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6348_untuk_mengelola, id FROM items WHERE type = 'kanji' AND (slug = '966' OR id = '966') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6348_untuk_mengelola, id FROM items WHERE type = 'kanji' AND (slug = '1693' OR id = '1693') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6349_untuk_memilih, id FROM items WHERE type = 'kanji' AND (slug = '886' OR id = '886') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6349_untuk_memilih, id FROM items WHERE type = 'kanji' AND (slug = '1695' OR id = '1695') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6350_untuk_memuji, id FROM items WHERE type = 'kanji' AND (slug = '1698' OR id = '1698') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6351_pembicaraan_rahasia, id FROM items WHERE type = 'kanji' AND (slug = '500' OR id = '500') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6351_pembicaraan_rahasia, id FROM items WHERE type = 'kanji' AND (slug = '1699' OR id = '1699') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6351_pembicaraan_rahasia, id FROM items WHERE type = 'kanji' AND (slug = '705' OR id = '705') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6352_untuk_melonggarkan, id FROM items WHERE type = 'kanji' AND (slug = '1700' OR id = '1700') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6353_hadiah, id FROM items WHERE type = 'kanji' AND (slug = '1704' OR id = '1704') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6353_hadiah, id FROM items WHERE type = 'kanji' AND (slug = '718' OR id = '718') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6355_prefektur_okinawa, id FROM items WHERE type = 'kanji' AND (slug = '1627' OR id = '1627') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6355_prefektur_okinawa, id FROM items WHERE type = 'kanji' AND (slug = '1628' OR id = '1628') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6355_prefektur_okinawa, id FROM items WHERE type = 'kanji' AND (slug = '731' OR id = '731') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6356_penyuapan, id FROM items WHERE type = 'kanji' AND (slug = '1704' OR id = '1704') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6356_penyuapan, id FROM items WHERE type = 'kanji' AND (slug = '1702' OR id = '1702') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6357_untuk_nona, id FROM items WHERE type = 'kanji' AND (slug = '1705' OR id = '1705') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6358_buronan, id FROM items WHERE type = 'kanji' AND (slug = '1705' OR id = '1705') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6358_buronan, id FROM items WHERE type = 'kanji' AND (slug = '851' OR id = '851') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6358_buronan, id FROM items WHERE type = 'kanji' AND (slug = '690' OR id = '690') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6359_penasihat, k_1742_tinjauan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6359_penasihat, id FROM items WHERE type = 'kanji' AND (slug = '859' OR id = '859') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6360_untuk_melihat_kembali_sesuatu, k_1742_tinjauan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6361_memoar, id FROM items WHERE type = 'kanji' AND (slug = '569' OR id = '569') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6361_memoar, k_1742_tinjauan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6361_memoar, id FROM items WHERE type = 'kanji' AND (slug = '1358' OR id = '1358') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6362_ditempatkan_di_jepang, k_1743_penduduk);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6362_ditempatkan_di_jepang, id FROM items WHERE type = 'kanji' AND (slug = '476' OR id = '476') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6363_tempat_tinggal, k_1743_penduduk);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6363_tempat_tinggal, id FROM items WHERE type = 'kanji' AND (slug = '1107' OR id = '1107') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6364_tempat_parkir, k_1743_penduduk);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6364_tempat_parkir, id FROM items WHERE type = 'kanji' AND (slug = '562' OR id = '562') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6364_tempat_parkir, id FROM items WHERE type = 'kanji' AND (slug = '694' OR id = '694') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6365_pasukan_yang_ditempatkan, k_1743_penduduk);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6365_pasukan_yang_ditempatkan, id FROM items WHERE type = 'kanji' AND (slug = '986' OR id = '986') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6365_pasukan_yang_ditempatkan, id FROM items WHERE type = 'kanji' AND (slug = '954' OR id = '954') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6366_untuk_berlari_kencang, k_1744_mencongklang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6367_pilar, k_1745_pilar);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6368_tiang_telepon, id FROM items WHERE type = 'kanji' AND (slug = '706' OR id = '706') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6368_tiang_telepon, k_1745_pilar);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6369_untuk_bernyanyi, k_1746_nyanyian);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6370_menganjurkan, id FROM items WHERE type = 'kanji' AND (slug = '528' OR id = '528') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6370_menganjurkan, k_1746_nyanyian);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6371_nyanyian, k_1746_nyanyian);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6371_nyanyian, id FROM items WHERE type = 'kanji' AND (slug = '761' OR id = '761') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6372_solo, id FROM items WHERE type = 'kanji' AND (slug = '1312' OR id = '1312') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6372_solo, k_1746_nyanyian);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6373_nyanyian, id FROM items WHERE type = 'kanji' AND (slug = '761' OR id = '761') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6373_nyanyian, k_1746_nyanyian);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6374_paduan_suara, id FROM items WHERE type = 'kanji' AND (slug = '852' OR id = '852') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6374_paduan_suara, k_1746_nyanyian);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6374_paduan_suara, id FROM items WHERE type = 'kanji' AND (slug = '1076' OR id = '1076') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6375_kesalehan_anak, k_1747_kesalehan_anak);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6375_kesalehan_anak, id FROM items WHERE type = 'kanji' AND (slug = '580' OR id = '580') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6376_ketidaktaatan_kepada_orang_tua, id FROM items WHERE type = 'kanji' AND (slug = '563' OR id = '563') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6376_ketidaktaatan_kepada_orang_tua, k_1747_kesalehan_anak);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6377_jenius, k_1748_jenius);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6377_jenius, id FROM items WHERE type = 'kanji' AND (slug = '468' OR id = '468') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6378_bisnis_sampingan, k_1749_secara_bersamaan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6378_bisnis_sampingan, id FROM items WHERE type = 'kanji' AND (slug = '756' OR id = '756') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6379_penggunaan_gabungan, k_1749_secara_bersamaan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6379_penggunaan_gabungan, id FROM items WHERE type = 'kanji' AND (slug = '525' OR id = '525') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6380_untuk_menggabungkan, k_1749_secara_bersamaan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6381_deterjen, id FROM items WHERE type = 'kanji' AND (slug = '1043' OR id = '1043') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6381_deterjen, k_1750_dosis);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6382_obat, id FROM items WHERE type = 'kanji' AND (slug = '997' OR id = '997') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6382_obat, k_1750_dosis);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6383_apoteker, id FROM items WHERE type = 'kanji' AND (slug = '997' OR id = '997') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6383_apoteker, k_1750_dosis);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6383_apoteker, id FROM items WHERE type = 'kanji' AND (slug = '1198' OR id = '1198') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6384_pengawet, id FROM items WHERE type = 'kanji' AND (slug = '1117' OR id = '1117') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6384_pengawet, id FROM items WHERE type = 'kanji' AND (slug = '1578' OR id = '1578') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6384_pengawet, k_1750_dosis);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6385_obat, k_1750_dosis);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6386_untuk_meniup, k_1751_meniup);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6387_parit, k_1752_parit);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6388_parit_dalam, id FROM items WHERE type = 'kanji' AND (slug = '500' OR id = '500') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6388_parit_dalam, k_1752_parit);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6389_parit_luar, id FROM items WHERE type = 'kanji' AND (slug = '521' OR id = '521') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6389_parit_luar, k_1752_parit);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6390_kanal, k_1752_parit);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6390_kanal, id FROM items WHERE type = 'kanji' AND (slug = '456' OR id = '456') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6391_patroli, k_1753_patroli);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6391_patroli, id FROM items WHERE type = 'kanji' AND (slug = '569' OR id = '569') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6392_ziarah, k_1753_patroli);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6392_ziarah, id FROM items WHERE type = 'kanji' AND (slug = '541' OR id = '541') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6393_untuk_berkeliling, k_1753_patroli);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6394_petugas_polisi, k_1753_patroli);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6394_petugas_polisi, id FROM items WHERE type = 'kanji' AND (slug = '1130' OR id = '1130') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6395_untuk_memperingatkan, k_1754_firman);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6396_peringatan, k_1754_firman);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6396_peringatan, id FROM items WHERE type = 'kanji' AND (slug = '1031' OR id = '1031') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6397_peringatan, id FROM items WHERE type = 'kanji' AND (slug = '1028' OR id = '1028') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6397_peringatan, k_1754_firman);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6398_kewaspadaan, id FROM items WHERE type = 'kanji' AND (slug = '1023' OR id = '1023') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6398_kewaspadaan, k_1754_firman);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6399_knalpot, k_1755_memancarkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6399_knalpot, id FROM items WHERE type = 'kanji' AND (slug = '548' OR id = '548') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6400_pengecualian, k_1755_memancarkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6400_pengecualian, id FROM items WHERE type = 'kanji' AND (slug = '529' OR id = '529') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6401_drainase, k_1755_memancarkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6401_drainase, id FROM items WHERE type = 'kanji' AND (slug = '479' OR id = '479') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6402_emisi, k_1755_memancarkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6402_emisi, id FROM items WHERE type = 'kanji' AND (slug = '483' OR id = '483') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6403_pengecualian, k_1755_memancarkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6403_pengecualian, id FROM items WHERE type = 'kanji' AND (slug = '1451' OR id = '1451') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6404_portabel, k_1756_portabel);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6404_portabel, id FROM items WHERE type = 'kanji' AND (slug = '1463' OR id = '1463') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6405_untuk_terlibat, k_1756_portabel);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6406_kepekaan, k_1757_peringatan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6406_kepekaan, id FROM items WHERE type = 'kanji' AND (slug = '862' OR id = '862') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6407_sensitivitas_berlebihan, id FROM items WHERE type = 'kanji' AND (slug = '1158' OR id = '1158') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6407_sensitivitas_berlebihan, k_1757_peringatan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6408_cepat, id FROM items WHERE type = 'kanji' AND (slug = '1090' OR id = '1090') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6408_cepat, k_1757_peringatan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6409_ketajaman, k_1758_tajam);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6409_ketajaman, k_1757_peringatan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6410_tajam, k_1758_tajam);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6411_ketajaman, k_1758_tajam);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6411_ketajaman, id FROM items WHERE type = 'kanji' AND (slug = '786' OR id = '786') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6412_terdepan, id FROM items WHERE type = 'kanji' AND (slug = '857' OR id = '857') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6412_terdepan, k_1758_tajam);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6413_untuk_menyebar, k_1759_menyebar);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6414_uang_jaminan, k_1759_menyebar);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6414_uang_jaminan, id FROM items WHERE type = 'kanji' AND (slug = '602' OR id = '602') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6415_tempat_tinggal, id FROM items WHERE type = 'kanji' AND (slug = '724' OR id = '724') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6415_tempat_tinggal, k_1759_menyebar);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6416_ruang_tatami, id FROM items WHERE type = 'kanji' AND (slug = '1041' OR id = '1041') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6416_ruang_tatami, k_1759_menyebar);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6417_tn, k_1760_tuan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6418_tuan_feodal, k_1760_tuan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6418_tuan_feodal, id FROM items WHERE type = 'kanji' AND (slug = '865' OR id = '865') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6419_istana, k_1760_tuan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6419_istana, id FROM items WHERE type = 'kanji' AND (slug = '1001' OR id = '1001') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6420_pengorbanan_terbang, k_1761_pengorbanan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6420_pengorbanan_terbang, id FROM items WHERE type = 'kanji' AND (slug = '536' OR id = '536') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6421_perolehan, k_1762_menangkap);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6421_perolehan, id FROM items WHERE type = 'kanji' AND (slug = '1081' OR id = '1081') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6422_menangkap, id FROM items WHERE type = 'kanji' AND (slug = '1265' OR id = '1265') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6422_menangkap, k_1762_menangkap);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6423_rampasan, k_1762_menangkap);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6423_rampasan, id FROM items WHERE type = 'kanji' AND (slug = '718' OR id = '718') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6424_menjadi_mewah, k_1763_subur);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6425_pertumbuhan_mewah, k_1764_ditumbuhi_terlalu_banyak);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6425_pertumbuhan_mewah, k_1763_subur);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6426_sering, k_1765_sering);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6426_sering, k_1764_ditumbuhi_terlalu_banyak);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6427_pembiakan, k_1764_ditumbuhi_terlalu_banyak);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6427_pembiakan, k_1766_berkembang_biak);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6428_sejahtera, k_1764_ditumbuhi_terlalu_banyak);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6428_sejahtera, id FROM items WHERE type = 'kanji' AND (slug = '1006' OR id = '1006') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6429_frekuensi, k_1765_sering);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6429_frekuensi, id FROM items WHERE type = 'kanji' AND (slug = '725' OR id = '725') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6430_sering_terjadi, k_1765_sering);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6430_sering_terjadi, id FROM items WHERE type = 'kanji' AND (slug = '729' OR id = '729') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6431_sering, k_1765_sering);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6432_reproduksi, id FROM items WHERE type = 'kanji' AND (slug = '850' OR id = '850') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6432_reproduksi, k_1766_berkembang_biak);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6433_untuk_menggandakan, k_1766_berkembang_biak);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6434_tipis, k_1767_mencairkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6435_kelemahan, k_1767_mencairkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6435_kelemahan, id FROM items WHERE type = 'kanji' AND (slug = '661' OR id = '661') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6436_berhati_dingin, k_1767_mencairkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6436_berhati_dingin, id FROM items WHERE type = 'kanji' AND (slug = '891' OR id = '891') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6437_terkejut, k_1768_bertabrakan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6437_terkejut, id FROM items WHERE type = 'kanji' AND (slug = '1377' OR id = '1377') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6438_tabrakan, k_1768_bertabrakan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6438_tabrakan, id FROM items WHERE type = 'kanji' AND (slug = '1304' OR id = '1304') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6439_menghormati, id FROM items WHERE type = 'kanji' AND (slug = '544' OR id = '544') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6439_menghormati, k_1769_menghormati);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6440_menghormati, id FROM items WHERE type = 'kanji' AND (slug = '1006' OR id = '1006') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6440_menghormati, k_1769_menghormati);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6441_untuk_memuji, k_1770_memuji);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6442_hadiah, k_1770_memuji);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6442_hadiah, id FROM items WHERE type = 'kanji' AND (slug = '732' OR id = '732') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6443_medali, k_1770_memuji);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6443_medali, id FROM items WHERE type = 'kanji' AND (slug = '884' OR id = '884') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6444_menjadi_transparan, k_1771_transparan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6445_transparan, k_1771_transparan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6445_transparan, id FROM items WHERE type = 'kanji' AND (slug = '626' OR id = '626') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6446_tetangga, k_1772_tetangga);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6447_rumah_tetangga, k_1772_tetangga);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6447_rumah_tetangga, id FROM items WHERE type = 'kanji' AND (slug = '660' OR id = '660') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6448_lingkungan, id FROM items WHERE type = 'kanji' AND (slug = '596' OR id = '596') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6448_lingkungan, k_1772_tetangga);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6449_negara_tetangga, k_1772_tetangga);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6449_negara_tetangga, id FROM items WHERE type = 'kanji' AND (slug = '621' OR id = '621') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6450_tetangga, k_1772_tetangga);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6450_tetangga, id FROM items WHERE type = 'kanji' AND (slug = '444' OR id = '444') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6451_kesenian, k_1773_anggun);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6451_kesenian, id FROM items WHERE type = 'kanji' AND (slug = '1682' OR id = '1682') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6452_musik_pengadilan_jepang, k_1773_anggun);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6452_musik_pengadilan_jepang, id FROM items WHERE type = 'kanji' AND (slug = '704' OR id = '704') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6453_keanggunan, id FROM items WHERE type = 'kanji' AND (slug = '1206' OR id = '1206') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6453_keanggunan, k_1773_anggun);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7758_kosong, id FROM items WHERE type = 'kanji' AND (slug = '1017' OR id = '1017') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8730_bagian, id FROM items WHERE type = 'kanji' AND (slug = '1692' OR id = '1692') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8843_keadaan_kenikmatan, k_8835_senang);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8843_keadaan_kenikmatan, id FROM items WHERE type = 'kanji' AND (slug = '856' OR id = '856') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8844_senang, k_8835_senang);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8871_tempurung_lutut, id FROM items WHERE type = 'kanji' AND (slug = '8861' OR id = '8861') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8871_tempurung_lutut, id FROM items WHERE type = 'kanji' AND (slug = '463' OR id = '463') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8871_tempurung_lutut, id FROM items WHERE type = 'kanji' AND (slug = '1046' OR id = '1046') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8914_peri, k_8909_gaib);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8914_peri, id FROM items WHERE type = 'kanji' AND (slug = '1370' OR id = '1370') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8915_raksasa, k_8909_gaib);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8915_raksasa, id FROM items WHERE type = 'kanji' AND (slug = '1302' OR id = '1302') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8916_mempesona, k_8909_gaib);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8928_untuk_diencerkan, k_1767_mencairkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8970_mie, k_8955_mie);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8971_penggilas_adonan, k_8955_mie);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8971_penggilas_adonan, id FROM items WHERE type = 'kanji' AND (slug = '1457' OR id = '1457') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8974_mie_cina, id FROM items WHERE type = 'kanji' AND (slug = '469' OR id = '469') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8974_mie_cina, id FROM items WHERE type = 'kanji' AND (slug = '1446' OR id = '1446') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8974_mie_cina, k_8955_mie);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8988_mentsuyu, k_8955_mie);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8989_penculikan, k_8969_menculik);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8989_penculikan, id FROM items WHERE type = 'kanji' AND (slug = '1682' OR id = '1682') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9154_untuk_keluar_ke_dunia, id FROM items WHERE type = 'kanji' AND (slug = '527' OR id = '527') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9154_untuk_keluar_ke_dunia, id FROM items WHERE type = 'kanji' AND (slug = '483' OR id = '483') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9454_pembengkakan, id FROM items WHERE type = 'kanji' AND (slug = '9447' OR id = '9447') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9495_sebab_dan_akibat, id FROM items WHERE type = 'kanji' AND (slug = '1010' OR id = '1010') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9495_sebab_dan_akibat, id FROM items WHERE type = 'kanji' AND (slug = '1005' OR id = '1005') LIMIT 1;

END $$;
