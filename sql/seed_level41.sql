-- ====================================================
-- KaniGani — Seed Data Level 41 (v2, relasional)
-- Auto-generated with Indonesian Slugs
-- ====================================================

DO $$
DECLARE
  -- ============ RADICAL IDs (Level 41) ============
  r_335_menyolok UUID; r_381_plang UUID; r_8795_trisula UUID; r_8796_kaktus UUID; r_8856_istri UUID; r_8906_menyatakan UUID;

  -- ============ KANJI IDs (Level 41) ============
  k_1774_rendah_hati UUID; k_1775_menanyakan UUID; k_1776_menembus UUID; k_1777_jeram UUID; k_1778_penarikan UUID; k_1779_menyisihkan UUID; k_1780_berdasarkan UUID; k_1781_upacara UUID; k_1782_kayu UUID; k_1783_meninggalkan UUID; k_1784_harimau UUID; k_1785_kunang_kunang UUID; k_1786_lebah UUID; k_1787_minuman_keras UUID; k_1788_sayang UUID; k_1789_reruntuhan UUID; k_1790_kapal_perang UUID; k_1791_menutupi UUID; k_1792_tinju UUID; k_1793_arang UUID; k_1794_bidang UUID; k_1795_membungkus UUID; k_1797_kemanusiaan UUID; k_1798_mineral UUID; k_1799_mencapai UUID; k_1800_kejujuran UUID; k_1801_kampung_halaman UUID; k_1802_menyerbu UUID; k_1803_palsu UUID; k_8836_berbohong UUID; k_8886_luar_biasa UUID; k_8922_bising UUID; k_8923_gaduh UUID;

  -- ============ VOCABULARY IDs (Level 41) ============
  v_4034_lemah UUID; v_6115_hongkong UUID; v_6354_pemakaman UUID; v_6454_untuk_abstain UUID; v_6455_untuk_berkelompok UUID; v_6458_kamar_kecil UUID; v_6459_prefektur_gifu UUID; v_6460_pemberi_pekerjaan UUID; v_6461_fragmen UUID; v_6462_maaf UUID; v_6463_kesejahteraan_sosial UUID; v_6464_rendah_hati UUID; v_6465_pistol UUID; v_6466_pertimbangan UUID; v_6467_bom_atom UUID; v_6468_shibuya UUID; v_6469_untuk_mengisi_baterai UUID; v_6470_kemampuan UUID; v_6471_alasan_untuk_hidup UUID; v_6472_punggung_tangan_seseorang UUID; v_6473_layak_dilakukan UUID; v_6474_melompat UUID; v_6475_untuk_bertanya UUID; v_6476_untuk_mengabdikan_diri_sendiri UUID; v_6477_sepanjang_malam UUID; v_6478_ketelitian UUID; v_6479_seto UUID; v_6480_dangkal UUID; v_6481_arus_cepat UUID; v_6482_jeram UUID; v_6483_penarikan UUID; v_6484_penarikan UUID; v_6485_penarikan_pasukan UUID; v_6486_tindakan UUID; v_6487_susunan_kata UUID; v_6488_untuk_didasarkan_pada UUID; v_6489_posisi UUID; v_6490_bukti_fisik UUID; v_6491_dasar UUID; v_6492_tata_krama UUID; v_6493_upacara UUID; v_6494_hadiah_ucapan_selamat UUID; v_6495_untuk_membungkuk UUID; v_6496_pohon_buah UUID; v_6497_kulit_kayu UUID; v_6498_penanaman_pohon UUID; v_6499_pengabaian UUID; v_6500_pembuangan UUID; v_6502_harimau UUID; v_6503_kunang_kunang UUID; v_6504_lebah UUID; v_6505_sayang UUID; v_6506_shochu UUID; v_6507_sayang UUID; v_6508_reruntuhan UUID; v_6509_kapal_perang UUID; v_6510_armada_angkatan_laut UUID; v_6511_kapal_perang UUID; v_6512_kapal_selam UUID; v_6513_kapal_induk UUID; v_6514_untuk_mengintai UUID; v_6515_kapal_selam_nuklir UUID; v_6516_menyelam UUID; v_6517_bawah_sadar UUID; v_6518_tinju UUID; v_6519_tinju_terkepal UUID; v_6520_arang UUID; v_6521_karbon UUID; v_6522_batu_bara UUID; v_6523_bidang UUID; v_6524_bidang UUID; v_6525_ladang_gandum UUID; v_6526_untuk_membungkus UUID; v_6527_pisau_dapur UUID; v_6528_pengepungan UUID; v_6532_kemanusiaan UUID; v_6533_kemanusiaan_dan_keadilan UUID; v_6534_sebuah_tambang UUID; v_6535_bijih UUID; v_6536_mineral UUID; v_6537_tambang_batu_bara UUID; v_6538_bijih_besi UUID; v_6539_industri_pertambangan UUID; v_6540_untuk_tiba_di UUID; v_6541_titik_balik_matahari_musim_panas UUID; v_6542_titik_balik_matahari_musim_dingin UUID; v_6543_tidak_bisa_dihindari UUID; v_6544_supremasi UUID; v_6545_kejujuran UUID; v_6546_kejujuran UUID; v_6547_jujur UUID; v_6548_loyalitas UUID; v_6549_kampung_halaman UUID; v_6550_kampung_halaman UUID; v_6551_untuk_kembali_ke_kampung_halaman_seseorang UUID; v_6552_invasi UUID; v_6553_intrusi UUID; v_6554_untuk_menyerang UUID; v_6555_pelanggaran UUID; v_6556_palsu UUID; v_6557_berbohong UUID; v_6558_kamuflase UUID; v_6559_pemalsuan UUID; v_8731_dengan_enggan UUID; v_8845_berbohong UUID; v_8846_pembohong UUID; v_8902_luar_biasa UUID; v_8904_sangat_mengerikan UUID; v_8924_bertarung UUID; v_8925_bising UUID;

BEGIN

  DELETE FROM items WHERE level = 41;

  -- 1. RADICALS
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '華', 'menyolok', 41, 1, 'Radikal ini sama dengan kanji. Artinya <radikal>mencolok</radikal>.')
    RETURNING id INTO r_335_menyolok;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '夆', 'plang', 41, 2, 'Ini adalah postingan dengan tanda di atasnya. Dan di atasnya ada penanda musim dingin, yang menunjukkan bahwa jika Anda pergi ke utara, di sana sedang musim dingin. Tanda-tandanya bertuliskan "Narnia ↑" dan "Meridell ←" dan "Bananaland →" jadi Anda tahu itu adalah <radical>papan penunjuk arah</radikal>.')
    RETURNING id INTO r_381_plang;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '/radicals/trident-8795.svg', 'trisula', 41, 3, '<radikal>trisula</radikal> naik, menembus ikan (atau apa pun). AQUAMANNNNN!')
    RETURNING id INTO r_8795_trisula;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '/radicals/cactus.svg', 'kaktus', 41, 4, 'Lihat <radical>kaktus</radical> muncul dari dalam tanah? Senang bertemu denganmu!')
    RETURNING id INTO r_8796_kaktus;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '妻', 'istri', 41, 5, 'Radikal ini sama dengan kanji. Artinya <radikal>istri</radikal>.')
    RETURNING id INTO r_8856_istri;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '宣', 'menyatakan', 41, 6, 'Radikal ini sama dengan kanji. Artinya <radikal>memberitakan</radikal>.')
    RETURNING id INTO r_8906_menyatakan;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_335_menyolok, 'Menyolok', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_381_plang, 'Plang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_8795_trisula, 'Trisula', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_8796_kaktus, 'Kaktus', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_8856_istri, 'Istri', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_8906_menyatakan, 'Menyatakan', true, true);

  -- 2. KANJIS
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '遜', 'rendah-hati', 41, 7, 'Di dalam <radical>skuter</radical> ini ada seorang <radical>anak</radical> yang mencoba menunjukkan bahwa <radical>silsilah</radical> miliknya adalah <kanji>rendah hati</kanji>. Anak-anak lainnya berkeliling dengan mobil mewah atau helikopter, namun anak yang satu ini ingin menjadi anak yang rendah hati, maka ia berlari dengan skuter kampungan.', 'Anak <kanji>rendah hati</kanji> ini adalah <membaca>anak</reading> Anda (そん). Anda tentu tidak ingin ada anak Anda yang memamerkan kekayaan dan reputasi baiknya di hadapan orang lain. Anda telah mengajari mereka untuk menjadi rendah hati.')
    RETURNING id INTO k_1774_rendah_hati;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '伺', 'menanyakan', 41, 8, 'Menjadi <radical>pemimpin</radikal> atau <radikal>direktur</radikal> di sebuah perusahaan berarti Anda harus <kanji>menanyakan</kanji> tentang banyak hal. Apakah Anda sudah memulainya? Apakah kamu sudah menyelesaikannya? Apakah kamu mendapatkan barang yang kukirimkan padamu? Dimana kopiku? Pada dasarnya jika Anda seorang pemimpin atau direktur, tugas utama Anda adalah menanyakan hal-hal yang sangat penting ini.', 'Ternyata pemimpin dan direktur perusahaan Anda adalah Pimpinan Kaga dari acara TV Iron Chef. Setiap kali dia mencoba <kanji>menanyakan</kanji> tentang hal-hal aneh, kamu harus mengatakan <reading>Ooh, Kaga</reading> (うかが) dengan nada tidak setuju. "Apa yang kamu lakukan untuk makan malam malam ini?" dia bertanya. Ooh, Kaga! “Apa cara terbaik untuk melunakkan terong?” dia bertanya. Ooh, Kaga!')
    RETURNING id INTO k_1775_menanyakan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '徹', 'menembus', 41, 9, 'Anda memutuskan untuk <radical>berkeliaran</radical> di samping <radical>sampah</radical> di bawah <radical>bulan</radical> di <radical>musim dingin</radical> sehingga cahaya bulan akan <kanji>menembus</kanji> Anda. Langit <kanji>paling cerah</kanji>di musim dingin, dan tempat di sebelah tempat sampah ini merupakan tempat yang paling menikmati cuaca.', 'Anda ingin cahayanya <kanji>menembus</kanji> Anda, jadi letakkan wajah Anda di jalur sinar tersebut dan cahaya itu akan <kanji>jelas</kanji> menembus Anda. Mulutmu dipenuhi dengan rasa <reading>鉄</reading> (てつ).')
    RETURNING id INTO k_1776_menembus;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '瀬', 'jeram', 41, 10, '<radical>tsunami</radical> menghantam <radical>kumpulan</radical> <radical>geoduck</radical>, berputar-putar di sekitar bentuknya yang aneh, dan menciptakan <kanji>jeram</kanji>! Arus derasnya sangat deras, beberapa geoduck keluar dari bungkusannya dan terhanyut ke <kanji>dangkal</kanji>.', 'Saat geoduck tersebut terombang-ambing di <kanji>jeram</kanji>, Anda sedang duduk di <kanji>dangkal</kanji> sambil melahap beberapa <reading>ce</reading>lery (せ).')
    RETURNING id INTO k_1777_jeram;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '撤', 'penarikan', 41, 11, 'Anda menggunakan <radical>jari</radical> Anda untuk menggali <radical>sampah</radical> dalam terang <radical>bulan</radical> di <radical>musim dingin</radical> karena di suatu tempat di sana terdapat surat <kanji>penarikan</kanji> Anda. Apa yang Anda tarik? Pengunduran diri Anda? Pasukanmu? Apa pun itu, Anda perlu menemukan buktinya, dan secepatnya.', 'Sambil mencari huruf <kanji>penarikan</kanji>, jari Anda menyentuh sepotong <reading>鉄</reading> (てつ). Aduh!')
    RETURNING id INTO k_1778_penarikan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '措', 'menyisihkan', 41, 12, 'Anda menemukan beberapa <radical>jari</radical> dari <radical>dulu</radical>. Mereka pasti <kanji>disingkirkan</kanji> oleh pemilik sebelumnya. Mereka pasti tidak dipotong atau apa pun, seseorang memutuskan mereka tidak menginginkannya lagi dan menyisihkannya.', 'Saya tahu kenapa mereka <kanji>menyingkirkan</kanji> jari mereka sejak lama, itu karena tidak ada <read>jadi</reading>ap (そ). Jika Anda tidak memiliki sabun untuk membersihkan jari Anda, Anda tidak akan ingin menyimpannya terlalu lama...')
    RETURNING id INTO k_1779_menyisihkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '拠', 'berdasarkan', 41, 13, 'Gunakan <radical>jari</radical> Anda untuk menghapus <radical>musim dingin</radical> <radical>tabel</radical> ini dan lihat apa yang <kanji>berdasarkan</kanji>. Cuaca musim dingin menutupi meja dalam cuaca beku, dan ketika Anda menyekanya, Anda dapat melihat jejak-jejak yang menjadi dasar meja itu. Semua tabel harus didasarkan pada sesuatu, meskipun hanya tabel lain yang ada sebelumnya.', 'Tabel khusus ini <kanji>berdasarkan</kanji> Little <reading>Kyo</reading>to (きょ). Bangunan-bangunan kecil dan kuil-kuil, terlihat seperti Little Kyoto. Masalahnya, itu dibuat oleh <reading>子</reading> (こ), jadi kurang bagus.')
    RETURNING id INTO k_1780_berdasarkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '儀', 'upacara', 41, 14, '<radikal>pemimpin</radikal> <radikal>kebenaran</radikal> adalah satu-satunya yang dapat menjalankan <kanji>upacara</kanji> ini. Mengapa? Karena ini adalah upacara yang sangat murni, dan hanya mereka yang memiliki pikiran sangat lurus yang dapat menjalankannya.', 'Sayangnya, alasan hanya orang benar yang bisa menjalankan <kanji>upacara</kanji> ini adalah karena ini adalah upacara hukuman, di mana dia menarik tali untuk memenggal kepala seseorang melalui <reading>gui</reading>llotine (ぎ).')
    RETURNING id INTO k_1781_upacara;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '樹', 'kayu', 41, 15, 'Setiap <radical>pohon</radical> memerlukan <radical>drum</radical> <radical>pengukuran</radical> sebelum Anda dapat mengatakan bahwa itu benar-benar terbuat dari <kanji>kayu</kanji>.', 'Jika Anda masih tidak yakin apakah pohon itu benar-benar terbuat dari <kanji>kayu</kanji>, ambil saja kotak es (じゅ) kecil dan mulailah meminumnya. Pohon kayu tidak akan tertarik sama sekali pada kotak jus.')
    RETURNING id INTO k_1782_kayu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '棄', 'meninggalkan', 41, 16, 'Di dalam <radical>sampah</radikal> ada <radikal>buah</radikal> yang tampak aneh. Seseorang memutuskan untuk <kanji>meninggalkannya</kanji> di sini.', 'Kamu merogoh tempat sampah, mengeluarkan buah <kanji>yang ditinggalkan</kanji>, dan menggigitnya. ADUH! Ada <reading>key</reading> (き) di dalamnya, dan Anda cukup menggigitnya.')
    RETURNING id INTO k_1783_meninggalkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '虎', 'harimau', 41, 17, '<radical>harimau</radical> memiliki <radical>kaki</radical> yang dimiliki oleh <kanji>harimau</kanji>. Tahukah Anda, seekor harimau memiliki kaki seekor harimau. Ini adalah pengetahuan umum. Tidak ada yang baru di sini.', '<kanji>harimau</kanji> menggunakan kakinya untuk melarikan diri dari <reading>Taurat</reading> (とら). Harimau ini sangat takut dengan agama, sehingga kitab suci seperti Taurat menyebabkan harimau tersebut melarikan diri.')
    RETURNING id INTO k_1784_harimau;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '蛍', 'kunang-kunang', 41, 18, '<radical>Viking</radical> <radical>serangga</radical> adalah <kanji>kunang-kunang</kanji>. Di dunia serangga, serangga yang paling mirip dengan Viking tidak diragukan lagi adalah kunang-kunang.', '<kanji>kunang-kunang</kanji> Viking menyerang <reading>Hotaru</reading> (ほたる) Tomoe (alter ego Sailor Saturn) karena kunang-kunang Viking membenci acara Sailor Moon dan semua orang di dalamnya. Hotaru berteriak ketakutan karena dia sangat takut pada kunang-kunang, terutama kunang-kunang Viking.')
    RETURNING id INTO k_1785_kunang_kunang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '蜂', 'lebah', 41, 19, 'Pada <radical>serangga</radikal> <radikal>plang</radikal> ada satu tanda bertuliskan <kanji>lebah</kanji>.', 'Berkat penunjuk arah serangga, Anda dapat menemukan <kanji>lebah</kanji>. Anda membuatnya tepat pada waktunya untuk melihat lebah <reading>menetas</reading> (はち) dari telurnya.')
    RETURNING id INTO k_1786_lebah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '酎', 'minuman-keras', 41, 20, '<radikal>alkohol</radikal> yang perlu <radikal>pengukuran</radikal> adalah <kanji>minuman keras</kanji>. Minum terlalu banyak minuman keras tidak baik untuk Anda, jadi Anda harus mengukurnya dalam jumlah yang tepat.', 'Tahukah Anda siapa yang sangat menikmati <kanji>minuman keras</kanji>? <read>Kunyah</reading>bacca (ちゅう). Dia selalu minum, dan ini mengkhawatirkan jika Anda memikirkan semua cara mengemudi yang dia lakukan.')
    RETURNING id INTO k_1787_minuman_keras;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '蜜', 'sayang', 41, 21, '<radical>Atap</radikal> (sarang) pada <radikal>serangga</radikal> tertentu</radikal> (lebah) adalah yang melindungi semua <kanji>madu</kanji> atau <kanji>nektar</kanji>.', 'Untuk mengeluarkan <kanji>madu</kanji>, Anda perlu mengenakan <reading>sarung</reading> (みつ) khusus agar tangan Anda tidak tersengat.')
    RETURNING id INTO k_1788_sayang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '墟', 'reruntuhan', 41, 22, 'Anda sedang menggali <radical>tanah</radical> ketika Anda menemukan <radical>harimau</radical> dan <radical>kaktus</radical>. Anda terus menggali sampai Anda menyadari bahwa ini adalah bagian dari <kanji>reruntuhan</kanji> yang besar. Itu adalah reruntuhan patung harimau dan kaktus. Sepertinya siapa pun yang dulu tinggal di sini memuja harimau dan kaktus. Atau mungkin mereka memakannya. Namun kini seluruh peradaban mereka hanyalah reruntuhan.', 'Ternyata, inilah <kanji>reruntuhan</kanji> dari <reading>Kyo</reading>to (きょ) Kecil, kota yang sudah ada sebelum zaman modern. Dan sepertinya warga Little Kyoto sudah lama menghadapi akhir hidup mereka.')
    RETURNING id INTO k_1789_reruntuhan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '艦', 'kapal-perang', 41, 23, '<radikal>Perahu</radikal> yang <radikal>mengawasi</radikal> perahu, daratan, dan manusia lainnya biasanya adalah <kanji>kapal perang</kanji>. Mereka adalah perahu besar yang mengawasi segala sesuatu di sekitar mereka. Dan jika ada yang keluar dari barisan, kapal perang dapat menanganinya.', '<kanji>kapal perang</kanji> besar ini dijalankan oleh Jenghis <reading>Khan</reading> (かん), panglima perang terkenal. Sungguh, apa yang kamu harapkan? Siapa lagi yang cukup kuat untuk menjadi kapten kapal perang selain dia?')
    RETURNING id INTO k_1790_kapal_perang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '潜', 'menutupi', 41, 24, '<radikal>tsunami</radikal> membawa dua <radikal>suami</radikal> menuju <radikal>matahari</radikal>, di mana mereka akan <kanji>menyembunyikan</kanji> sesuatu.', 'Para suami akan <kanji>menyembunyikan</kanji> hewan peliharaannya <reading>cen</reading>taur (せん) di bawah sinar matahari. Pemerintah setempat tidak terlalu senang mereka memiliki centaur peliharaan, sehingga mereka harus menyembunyikannya di bawah sinar matahari agar tidak disita.')
    RETURNING id INTO k_1791_menutupi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '拳', 'tinju', 41, 25, 'Seorang <radikal>gladiator</radikal> mengubah <radikal>tangan</radikal> menjadi <kanji>tinju</kanji>. Tinju untuk meninju gladiator lain.', '<kanji>tinju</kanji> gladiator sekarang ditujukan ke <reading>Ken</reading> (けん) sang samurai. Sedikit yang diketahui oleh gladiator, Ken mengetahui cara samurai dan gladiator. Dia perlahan mengangkat tangannya sendiri dan mengepalkannya.')
    RETURNING id INTO k_1792_tinju;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '炭', 'arang', 41, 26, 'Anda mendaki <radical>gunung</radical> dan <radical>tebing</radical> untuk mencari <radical>api</radikal>, namun yang Anda temukan hanyalah <kanji>arang</kanji>. Anda bisa membuat api dengan arang, tapi Anda berharap bisa menemukan api itu sendiri. Semua pendakian itu sia-sia.', 'Setelah menghancurkan <kanji>arang</kanji>, Anda memutuskan untuk memanfaatkan lokasi Anda saat ini dan berbaring di bawah sinar matahari sebentar untuk mendapatkan <reading>tan</reading> (たん). Alih-alih menjadi cokelat, Anda justru malah terbakar. Ups.')
    RETURNING id INTO k_1793_arang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '畑', 'bidang', 41, 27, '<radikal>api</radikal> di <radikal>sawah</radikal> membakar <kanji>ladang</kanji>. Api sawah menjalar dari sawah dan melahap lahan di sebelahnya. Kebakaran sawah ini telah menghancurkan seluruh lahan pertanian Anda!', 'Sawah dan <kanji>ladang</kanji> Anda berada di pulau karang. Pulau karang adalah pulau kecil berpasir, dan karena peternakan Anda terbakar, pulau ini berubah menjadi pulau yang panas. Atau seperti yang dikatakan Mario, itu adalah <reading>yang menarik</reading>! (はたけ) Mama mia!')
    RETURNING id INTO k_1794_bidang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '包', 'membungkus', 41, 28, 'Kanji <radical>wrap</radical> dan <kanji>wrap</kanji> adalah sama!', 'Pikirkan tentang <kanji>terbungkus</kanji>dibungkus, nyaman dan hangat serta aman di <read>ho</reading>saya (ほう) Anda. Rumah adalah tempat Anda membungkus diri Anda dengan selimut, dalam hangatnya perapian, dalam pelukan orang yang Anda cintai.')
    RETURNING id INTO k_1795_membungkus;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '仁', 'kemanusiaan', 41, 29, '<radikal>Pemimpin</radikal> ini memiliki <radikal>dua</radikal> hal yang mengingatkannya pada <kanji>kemanusiaan</kanji>: sepatunya, dan topinya. Kedua hal ini mengingatkan pemimpin akan kemanusiaannya karena hanya manusia yang memakai sepatu dan topi.', 'Hal lain yang mengingatkan Anda dan pemimpin tentang <kanji>kemanusiaan</kanji> Anda adalah mengenakan <reading>jean</reading> (じん). Jeans adalah alas kaki pilihan bagi banyak orang, dan tidak seorang pun kecuali manusia yang memakainya. Jeans adalah simbol kemanusiaan yang luar biasa.')
    RETURNING id INTO k_1797_kemanusiaan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '鉱', 'mineral', 41, 30, 'Selain <radical>emas</radical> ada <radical>berbagai</radikal> variasi <kanji>mineral</kanji> lainnya juga.', 'Satu orang mencoba mengendalikan semua <kanji>mineral</kanji> di dunia. Orang itu adalah Kaisar <reading>こう</reading>いち.')
    RETURNING id INTO k_1798_mineral;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '至', 'mencapai', 41, 31, 'Gali <radical>tahi lalat</radikal> dan Anda <kanji>mendapatkan</kanji> status tahi lalat. Anda selalu berusaha mencapai level baru untuk diri Anda sendiri dan sekarang Anda berada di level mol!', 'Mol saja tidak cukup, Anda ingin <kanji>mencapai</kanji> status <reading>shee</reading>p (し) berikutnya. Semua orang tahu itu adalah manusia > tikus tanah > domba. Sekarang Anda harus berdiri di lapangan bersama tikus tanah dan menyuruh seekor domba datang.')
    RETURNING id INTO k_1799_mencapai;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '誠', 'kejujuran', 41, 32, 'Sesuatu yang Anda <radikal>katakan</radikal> kepada seseorang yang <radikal>menjadi</radikal> Anda harus diucapkan dengan <kanji>ketulusan</kanji>. Anda perlu berbicara dengan tulus ketika Anda mengatakan sesuatu kepada seseorang yang pada akhirnya akan menjadi pasangan Anda, misalnya.', 'Ketika Anda mengatakan sesuatu dengan <kanji>ketulusan</kanji> yang lengkap dan tanpa malu-malu, <reading>sa</reading>ber (せい) spesial Anda mulai berdenyut seiring dengan detak jantung Anda. Ini menunjukkan kepada orang yang ingin Anda dekati bahwa Anda benar-benar tulus!')
    RETURNING id INTO k_1800_kejujuran;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '郷', 'kampung-halaman', 41, 33, 'Setiap orang mempunyai <radical>kotoran</radikal> <radikal>pria</radikal> dari <kanji>kampung halaman</kanji> mereka. Kamu tahu. Orang kotoran itu. Dan setiap kali Anda mencoba mengunjungi kampung halaman Anda, pria kotoran itu membuat semua orang tidak nyaman dan mengingatkan Anda mengapa Anda pergi.', '<kanji>kampung halaman</kanji> Anda ada di <reading>きょう</reading>と yang sayangnya berarti orang buangan Anda juga ada di きょうと. Sekarang, setiap kali Anda pulang ke rumah, dia selalu ada di sana dan membuat semuanya berbau busuk.')
    RETURNING id INTO k_1801_kampung_halaman;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '侵', 'menyerbu', 41, 34, 'Ada <radical>pemimpin</radikal> kecil di <radikal>dahi</radikal> Wolverine yang duduk di <radikal>bangku</radikal> dan memerintahkan pasukannya untuk <kanji>menyerang</kanji> otak Wolverine. Para prajurit kecil ini akan menyerang tubuh Wolverine dalam upaya untuk menghancurkannya. Pemimpinnya sendiri tidak akan menyerang otak Wolverine, dia hanya akan duduk di bangku dan mengawasi.', 'Segera mereka menyadari bahwa mereka tidak bisa <kanji>menyerang</kanji> Wolverine melalui kepalanya sehingga mereka turun ke kakinya dan mencoba masuk melalui <reading>tulang kering</reading> (しん). Para prajurit kecil mengambil pisau besar dan mengiris tulang kering Wolverine untuk menyerang tubuhnya.')
    RETURNING id INTO k_1802_menyerbu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '偽', 'palsu', 41, 35, '<radikal>pemimpin</radikal> mendapatkan seragam yang bagus demi <radikal>demi</radikal> agar tidak terlihat seperti <kanji>palsu</kanji>. Pemimpinnya palsu, dia hanya tidak ingin terlihat seperti itu. Dia sebenarnya bukan seorang pemimpin, tapi menurutnya dia harus mengenakan seragam resmi agar tidak terlihat palsu.', 'Yah, semua orang tahu kalau dia adalah <kanji>palsu</kanji>, dan sekarang kalian semua akan menggunakan <reading>gui</reading>llotine (ぎ) untuk memotong kepala palsunya.')
    RETURNING id INTO k_1803_palsu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '嘘', 'berbohong', 41, 36, 'Buka <radikal>mulut</radikal> Anda. Seekor <radikal>harimau</radikal> jatuh di sana karena beberapa <radikal>paku</radikal>! Itu yang kamu katakan pada semua orang, tapi ketika mereka melihat ke dalam mulutmu, tidak ada apa-apa di sana. Itu semua adalah <kanji>kebohongan</kanji> besar!', '<kanji>Berbohong</kanji> tentang duri di mulutmu dan aku akan memasukkan sabun yang mengandung duri ke dalam mulutmu untuk memberimu pelajaran. Itu sebabnya saya menggunakan <reading>u</reading>ni <reading>so</reading>ap (うそ).')
    RETURNING id INTO k_8836_berbohong;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '凄', 'luar-biasa', 41, 37, '<radical>ice</radical> <radical>istri</radical> Anda <kanji>luar biasa</kanji>. Dia juga <kanji>mengerikan</kanji>, karena dia sangat dingin dan memiliki banyak kekuatan es, tapi itu juga yang membuatnya luar biasa!', 'Dia mengalihkan pandangannya <kanji>menakjubkan</kanji> ke <reading>sa</reading>ber (せい) Anda dan memukulnya dengan balok es. Wah! Alih-alih berubah menjadi es atau pecah, ia malah mencuri kekuatan mengerikannya. Sekarang pedangmu juga luar biasa dan mengerikan!')
    RETURNING id INTO k_8886_luar_biasa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '喧', 'bising', 41, 38, '<radical>Mulut</radical> <radical>menyatakan</radical> "Saya <kanji>berisik</kanji> dan saya berisik!" Itu terus mengulangi hal ini berulang-ulang kepada semua orang yang Anda lewati.', 'Kamu sangat <kanji>berisik</kanji> dan berisik sehingga penduduk kota menyewa <reading>Ken</reading> (けん) sang Samurai untuk membungkammu.')
    RETURNING id INTO k_8922_bising;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '嘩', 'gaduh', 41, 39, '<radical>Mulut</radikal> Anda <radikal>mencolok</radikal> sehingga membuat semua orang di sekitar Anda <kanji>gaduh</kanji>.', 'Semua orang menjadi <kanji>gaduh</kanji> sehingga Anda menggunakan <reading>ca</reading>r (か) Anda untuk melarikan diri.')
    RETURNING id INTO k_8923_gaduh;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1774_rendah_hati, 'Rendah hati', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1775_menanyakan, 'Menanyakan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1776_menembus, 'Menembus', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1776_menembus, 'Jernih', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1777_jeram, 'jeram', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1777_jeram, 'Dangkal', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1778_penarikan, 'Penarikan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1779_menyisihkan, 'Menyisihkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1780_berdasarkan, 'Berdasarkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1781_upacara, 'Upacara', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1782_kayu, 'Kayu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1783_meninggalkan, 'Meninggalkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1784_harimau, 'Harimau', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1785_kunang_kunang, 'Kunang-kunang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1786_lebah, 'Lebah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1787_minuman_keras, 'Minuman Keras', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1788_sayang, 'Sayang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1788_sayang, 'Nektar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1789_reruntuhan, 'Reruntuhan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1790_kapal_perang, 'Kapal perang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1791_menutupi, 'Menutupi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1792_tinju, 'Tinju', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1793_arang, 'Arang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1794_bidang, 'Bidang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1795_membungkus, 'Membungkus', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1797_kemanusiaan, 'Kemanusiaan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1798_mineral, 'Mineral', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1799_mencapai, 'Mencapai', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1800_kejujuran, 'Kejujuran', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1801_kampung_halaman, 'kampung halaman', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1802_menyerbu, 'Menyerbu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1803_palsu, 'Palsu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_8836_berbohong, 'Berbohong', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_8886_luar_biasa, 'Luar biasa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_8886_luar_biasa, 'Luar biasa', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_8886_luar_biasa, 'Sangat buruk', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_8886_luar_biasa, 'Buruk sekali', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_8922_bising, 'Bising', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_8923_gaduh, 'Gaduh', true, true);

  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1774_rendah_hati, 'そん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1774_rendah_hati, 'したが', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1775_menanyakan, 'うかが', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1775_menanyakan, 'し', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1776_menembus, 'てつ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1777_jeram, 'せ', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1777_jeram, 'らい', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1778_penarikan, 'てつ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1779_menyisihkan, 'そ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1780_berdasarkan, 'きょ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1780_berdasarkan, 'こ', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1780_berdasarkan, 'よ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1781_upacara, 'ぎ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1782_kayu, 'じゅ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1782_kayu, 'き', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1782_kayu, 'いつき', 'nanori', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1783_meninggalkan, 'き', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1784_harimau, 'とら', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1784_harimau, 'こ', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1785_kunang_kunang, 'ほたる', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1785_kunang_kunang, 'けい', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1786_lebah, 'はち', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1786_lebah, 'ほう', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1787_minuman_keras, 'ちゅう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1787_minuman_keras, 'ちゅ', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1787_minuman_keras, 'かも', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1788_sayang, 'みつ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1789_reruntuhan, 'きょ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1790_kapal_perang, 'かん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1791_menutupi, 'せん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1791_menutupi, 'くぐ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1791_menutupi, 'ひそ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1791_menutupi, 'もぐ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1792_tinju, 'けん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1792_tinju, 'げん', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1792_tinju, 'こぶし', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1793_arang, 'たん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1793_arang, 'すみ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1794_bidang, 'はたけ', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1794_bidang, 'はた', 'kunyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1795_membungkus, 'ほう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1795_membungkus, 'つつ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1795_membungkus, 'くる', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1797_kemanusiaan, 'じん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1797_kemanusiaan, 'に', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1798_mineral, 'こう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1798_mineral, 'あらがね', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1799_mencapai, 'し', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1799_mencapai, 'いた', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1800_kejujuran, 'せい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1800_kejujuran, 'まこと', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1801_kampung_halaman, 'きょう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1801_kampung_halaman, 'ごう', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1801_kampung_halaman, 'さと', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1802_menyerbu, 'しん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1802_menyerbu, 'おか', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1803_palsu, 'ぎ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1803_palsu, 'にせ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1803_palsu, 'いつわ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_8836_berbohong, 'うそ', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_8886_luar_biasa, 'せい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_8886_luar_biasa, 'すご', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_8922_bising, 'けん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_8922_bising, 'やかま', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_8923_gaduh, 'か', 'onyomi', true, true);

  -- 3. VOCABULARIES
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '虚弱', 'lemah', 41, 40, 'Anda memiliki <kanji>kekosongan</kanji> dari <kanji>kelemahan</kanji>. Ini berarti Anda <vocabulary>lemah</vocabulary> dan <vocabulary>lemah</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Lemah, Lemah, Kelemahan, Kelemahan')
    RETURNING id INTO v_4034_lemah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '香港', 'hongkong', 41, 41, '<kanji>wewangian</kanji> <kanji>pelabuhan</kanji>, mungkin dari sinilah asal mula parfum pada masa itu. Tempat ini adalah <vocabulary>Hong Kong</vocabulary>.', 'Pembacaannya tidak mengikuti aturan apa pun yang Anda harapkan. Coba gunakan mnemonik makna untuk mendapatkan maknanya, lalu ketahuilah bahwa bunyinya mirip dengan bacaannya. "Hon(g) Kon(g)" menuju ke <reading>ほんこん</reading>. Hampir sama, bukan?', 'Hongkong')
    RETURNING id INTO v_6115_hongkong;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '葬儀', 'pemakaman', 41, 42, '<kanji>penguburan</kanji> <kanji>upacara</kanji> dikenal sebagai <vocabulary>pemakaman</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Pemakaman')
    RETURNING id INTO v_6354_pemakaman;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '控える', 'untuk-abstain', 41, 43, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>abstain</kanji> dan versi kosakata kata kerjanya adalah <vocabulary>abstain</vocabulary> juga!

控える sangat serbaguna. Hal ini dapat berarti <vocabulary>menahan diri</vocabulary> dari minuman keras, <vocabulary>menahan komentar</vocabulary>, atau <vocabulary>berdiam diri</vocabulary> (tidak mengambil tindakan). Dalam beberapa konteks, ini bahkan dapat berarti "mengambil memo" karena pengambilan memo itu seperti menyiapkan informasi!', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda sudah mempelajari bacaan ini, bagus untuk Anda!', 'Untuk abstain, Untuk menahan diri, Untuk Menahan, Untuk Bersiap')
    RETURNING id INTO v_6454_untuk_abstain;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '群れる', 'untuk-berkelompok', 41, 44, 'Ingat bagaimana 群れ adalah <kanji>kawanan</kanji>? Ini adalah versi kata kerjanya, dan berarti <vocabulary>berkumpul</vocabulary> atau <vocabulary>berkumpul</vocabulary> bersama sekelompok orang lainnya.', 'Bacaannya sama dengan 群れ, jadi jika Anda mengetahuinya Anda bisa mengumpulkan dua kenangan itu di otak Anda.', 'Untuk Berkelompok, Ke Kerumunan, Berkerumun')
    RETURNING id INTO v_6455_untuk_berkelompok;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '御手洗', 'kamar-kecil', 41, 45, 'Anda tahu 手洗い, kan? Memang seperti itu, tapi kedengarannya jauh lebih sopan. Namun maknanya tetap sama: <vocabulary>toilet</vocabulary>, <vocabulary>bathroom</vocabulary>, <vocabulary>toilet</vocabulary>.', 'Pembacaan 御 adalah お, sisanya てあらい, meskipun い tidak muncul di bagian akhir. Itu akan didorong ke dalam 洗い.', 'Kamar kecil, Kamar mandi, Toilet')
    RETURNING id INTO v_6458_kamar_kecil;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '岐阜県', 'prefektur-gifu', 41, 46, 'Anda telah melihat bagaimana 岐阜 adalah "Gifu." Sekarang jadikanlah prefektur untuk membuat <vocabulary>Prefektur Gifu</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Prefektur Gifu')
    RETURNING id INTO v_6459_prefektur_gifu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '雇用者', 'pemberi-pekerjaan', 41, 47, '<kanji>pekerjaan</kanji> (雇用) <kanji>seseorang</kanji> adalah seseorang yang memberi Anda pekerjaan, alias <vocabulary>majikan</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Pemberi pekerjaan, Karyawan')
    RETURNING id INTO v_6460_pemberi_pekerjaan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '破片', 'fragmen', 41, 48, '<kanji>Robek</kanji> bagian <kanji>satu sisi</kanji>. Itu hanya satu bagian, tidak semua bagian. Ini adalah <vocabulary>fragmen</vocabulary>.', 'Bacaan 破 adalah bacaan yang anda pelajari, bacaan 片 bukanlah bacaan yang pernah anda pelajari. Bayangkan saja bagaimana Anda merobek potongan <reading>ayam</reading> (へん), satu demi satu. Ini ayam kecil, aku ingin bulu lagi darimu. *CAW*', 'Fragmen')
    RETURNING id INTO v_6461_fragmen;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '御免なさい', 'maaf', 41, 49, 'Ingat 御免? Ini adalah cara yang sopan untuk mengatakannya. Artinya <vocabulary>maaf</vocabulary> dan <vocabulary>Saya mohon maaf</vocabulary>.', 'Bacaannya berasal dari 御免. Penambahannya semua kana.', 'Maaf, Saya Mohon Maaf')
    RETURNING id INTO v_6462_maaf;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '社会福祉', 'kesejahteraan-sosial', 41, 50, '福祉 adalah <kanji>kesejahteraan</kanji>, 社会 adalah <kanji>masyarakat</kanji>. Jadi kesejahteraan suatu masyarakat adalah <vocabulary>kesejahteraan sosial</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Kesejahteraan sosial')
    RETURNING id INTO v_6463_kesejahteraan_sosial;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '謙遜', 'rendah-hati', 41, 51, 'Jika Anda memiliki <kanji>kesopanan</kanji> dan <kanji>rendah hati</kanji>, maka Anda mungkin <vocabulary>rendah hati</vocabulary> dan memiliki <vocabulary>kerendahan hati</vocabulary> (dan saya rasa, Anda juga memiliki <vocabulary>kesopanan</vocabulary>).', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Rendah hati, Kerendahhatian, Kesopanan')
    RETURNING id INTO v_6464_rendah_hati;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '拳銃', 'pistol', 41, 52, '<kanji>tinju</kanji> <kanji>pistol</kanji> adalah senjata berukuran kepalan kecil yang memiliki beberapa pukulan (karena, tahukah Anda, tinju!). Senjata yang saya jelaskan adalah <vocabulary>revolver</vocabulary>, atau <vocabulary>pistol</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Pistol, Pistol, Pistol')
    RETURNING id INTO v_6465_pistol;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '思い遣り', 'pertimbangan', 41, 53, 'Jika Anda <kanji>menyebarkan</kanji> apa yang Anda <kanji>pikirkan</kanji> kepada orang lain, Anda memikirkan orang tersebut, dan Anda bersikap baik. Anda menunjukkan <vocabulary>pertimbangan</vocabulary>, <vocabulary>simpati</vocabulary>, dan <vocabulary>kasih sayang</vocabulary> kepada orang lain.', 'Satu bacaan berasal dari 思う, jadi semuanya bagus. 遣り memiliki bacaan alternatif yang aneh (やり). Untuk mengingatnya, pikirkan saja seberapa banyak <vocabulary>pertimbangan</vocabulary> yang selalu Anda tunjukkan. Kamu selalu berkata, "<reading>Yah</reading> (や), yah, tidak, aku sangat mengerti. SANGAT menyedihkan." /akhiri simpati/', 'Pertimbangan, Kasih sayang, Simpati')
    RETURNING id INTO v_6466_pertimbangan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '原爆', 'bom-atom', 41, 54, '原 sering dikaitkan dengan benda-benda atom, karena atom adalah asal mula segala sesuatu. Jika <kanji>atom meledak</kanji>, Anda akan mendapatkan <vocabulary>bom atom</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Bom Atom')
    RETURNING id INTO v_6467_bom_atom;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '渋谷', 'shibuya', 41, 55, '<kanji>lembah</kanji> yang pahit</kanji> adalah tempat yang dikenal sebagai <vocabulary>Shibuya</vocabulary>. Ini adalah daerah yang sangat terkenal di Tokyo. Sangat sibuk juga.', 'Bacaan 渋 berasal dari 渋い. Bacaan 谷 paling banyak muncul pada nama tempat dan nama keluarga, jadi mungkin Anda belum pernah melihatnya. Untuk mengingatnya, bayangkan saja seseorang bertanya kepada Anda apakah <vocabulary>Shibuya</vocabulary> itu keren. Jawaban Anda tentu saja adalah "<reading>yah</reading>" (や).', 'Shibuya')
    RETURNING id INTO v_6468_shibuya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '充電する', 'untuk-mengisi-baterai', 41, 56, 'Jika 充電 adalah <kanji>mengisi ulang</kanji> maka versi kata kerjanya adalah <vocabulary>mengisi ulang</vocabulary> atau <vocabulary>mengisi baterai</vocabulary>.', 'Bacaannya berasal dari 充電.', 'Untuk Mengisi Baterai, Untuk Mengisi Ulang, Untuk Mengisi Ulang Baterai')
    RETURNING id INTO v_6469_untuk_mengisi_baterai;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '甲斐性', 'kemampuan', 41, 57, 'Ingat bagaimana 甲斐 bisa berarti "bernilai"? Jika nilai ada dalam <kanji>sifat</kanji> Anda, Anda mungkin adalah orang yang memiliki <vocabulary>kemampuan</vocabulary> tertentu. Anda layak untuk diketahui dan orang-orang menghargai <vocabulary>keandalan</vocabulary> Anda.

甲斐性 berarti dapat diandalkan, bertanggung jawab, atau banyak akal, terutama dalam mendukung orang lain secara finansial atau emosional. Secara tradisional kata ini mengacu pada kemampuan seorang pria untuk menafkahi keluarganya, jadi 甲斐性がない sering digunakan untuk mengkritik seseorang karena tidak menghasilkan cukup uang.', 'Kata ini menggabungkan kata 甲斐 (yang telah Anda pelajari) dengan bacaan on''yomi sekunder untuk 性. Anda belum mempelajari cara membaca 性 ini, jadi inilah mnemonik yang bisa membantu:

Siapa yang mewujudkan <vocabulary>kemampuan</vocabulary> dan <vocabulary>ketergantungan</vocabulary>? Senjata <read>Sho</reading> (しょう), tentu saja! Dia memberi makan seluruh klan dan pasukannya, membuat rencana pertempuran, dan memerintah suatu negara — semuanya tanpa bersusah payah. Seorang pemimpin sejati, dapat diandalkan dan kuat, Shogun mendapat banyak cinta untuk 甲斐性-nya.', 'Kemampuan, Keteguhan, Kecerdasan')
    RETURNING id INTO v_6470_kemampuan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '生き甲斐', 'alasan-untuk-hidup', 41, 58, 'Anda tahu bahwa 生きる berarti "hidup" dan 甲斐 berarti "efek" atau "nilai". Sesuatu yang mempunyai pengaruh baik dalam hidup Anda dan memberikan nilai adalah <vocabulary>alasan hidup</vocabulary> Anda. Dari sudut pandang Anda, ini adalah <vocabulary>sesuatu yang layak untuk dijalani</vocabulary>.

Ingatlah bahwa 生き甲斐 sebagian besar digunakan sebagai kata benda, jadi Anda akan melihatnya dalam frasa seperti 仕事が生き甲斐 (pekerjaan saya adalah alasan saya untuk hidup) atau 生き甲斐が欲しい (Saya menginginkan sesuatu untuk hidup).', 'Bacaannya berasal dari 甲斐 dan 生き, jadi jika Anda mengetahuinya, Anda mungkin punya <vocabulary>alasan untuk hidup</vocabulary>, atau setidaknya alasan untuk mempelajari kanji Anda. Hati-hati rendaku mengubah pembacaan 甲斐 menjadi がい!', 'Alasan Untuk Hidup, Sesuatu yang Layak untuk Dijalani')
    RETURNING id INTO v_6471_alasan_untuk_hidup;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '手の甲', 'punggung-tangan-seseorang', 41, 59, '<kanji>cangkang kura-kura</kanji> di tangan Anda adalah bagian belakangnya (lihat, Anda dapat membuatnya berbentuk seperti cangkang kura-kura jika Anda berusaha keras!). Itu sebabnya ini adalah <vocabulary>punggung tangan</vocabulary>.', 'Bacaannya adalah bacaan kosakata masing-masing 手 dan 甲.', 'Punggung Tangan Seseorang')
    RETURNING id INTO v_6472_punggung_tangan_seseorang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', 'やり甲斐', 'layak-dilakukan', 41, 60, 'やり berasal dari やる yang berarti "melakukan" dan 甲斐 berarti "efek" atau "nilai". Jadi, jika hal yang Anda lakukan mempunyai pengaruh dan bernilai sesuatu, maka <vocabulary>layak dilakukan</vocabulary>.

やり甲斐 adalah kata benda, sehingga sering digunakan dalam frasa seperti やり甲斐がある (menjadi layak untuk dilakukan) atau やり甲斐を感じる (merasa berharga).', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membacanya sendiri — hati-hati dengan rendaku yang mengubah pembacaan 甲斐 menjadi がい.', 'Layak Dilakukan')
    RETURNING id INTO v_6473_layak_dilakukan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '躍り', 'melompat', 41, 61, 'Jika 躍る adalah "melompat" atau "melompat", maka versi kata benda ini akan menjadi <vocabulary>jumping</vocabulary> atau <vocabulary>melompat</vocabulary>.', 'Bacaannya berasal dari 躍る.', 'Melompat, Melompat')
    RETURNING id INTO v_6474_melompat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '伺う', 'untuk-bertanya', 41, 62, 'Kanji berarti <kanji>menanyakan</kanji>, dan versi kata kerjanya memiliki arti yang sama — <vocabulary>to inquire</vocabulary>. Tergantung pada konteksnya, kata ini juga bisa berarti <vocabulary>mendengar</vocabulary> atau <vocabulary>mengunjungi</vocabulary>. 

伺う adalah kata kerja yang sederhana, jadi kamu bisa menggunakannya pada orang dengan status lebih tinggi untuk menunjukkan rasa hormatmu pada mereka. Misalnya, jika Anda mengajukan pertanyaan kepada profesor Anda atau mendengar sesuatu dari mereka, Anda dapat mengucapkan 教授に伺う. Jika kamu mengunjunginya, kamu bisa mengucapkan 教授のところに伺う. Dan dalam layanan pelanggan, Anda akan sering mendengar お伺いします, yang merupakan cara sopan bagi anggota staf untuk mengatakan bahwa mereka siap mendengarkan dan membantu.', 'Permisi, saya ingin <vocabulary>menanyakan</vocabulary> tentang Ketua Kaga. <membaca>Ooh! Kaga</bacaan> (うかが). Sungguh mengasyikkan! Anda menanyakan pertanyaan tentang Ketua Kaga, penguasa kerajaan Iron Chef.', 'Untuk Bertanya, Untuk Mendengar, Untuk Mengunjungi')
    RETURNING id INTO v_6475_untuk_bertanya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '徹する', 'untuk-mengabdikan-diri-sendiri', 41, 63, 'Jika Anda <kanji>menembus</kanji>, tentu saja, Anda bisa <vocabulary>menembus</vocabulary>. Namun, jika Anda mendalami sesuatu, Anda benar-benar mendalaminya, misalnya, Anda akan <vocabulary>mengabdikan diri</vocabulary>.', 'Pembacaannya berasal dari apa yang Anda pelajari dengan kanji. Nantikan pemendekannya yang satu ini.', 'Untuk Mengabdikan Diri Sendiri, Untuk Tenggelam, Untuk Menembus')
    RETURNING id INTO v_6476_untuk_mengabdikan_diri_sendiri;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '徹夜', 'sepanjang-malam', 41, 64, '<kanji>Menembus</kanji> <kanji>malam</kanji> dan melanjutkan hingga pagi hari. Anda terjaga <vocabulary>sepanjang malam</vocabulary> dan mengalami <vocabulary>tidak bisa tidur</vocabulary>, alias <vocabulary>sepanjang malam</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda pernah melihat ini sebelumnya, meskipun 夜 bisa jadi sedikit rumit. Bacaannya sama dengan 今夜 dan 深夜. Berikut ini mnemonik untuk berjaga-jaga:

Anda menghabiskan <vocabulary>sepanjang malam</vocabulary> menonton <reading>Ya</reading>nkees (や). Anda mungkin seharusnya tidur, atau setidaknya melakukan ulasan atau semacamnya, namun Anda malah menghabiskan <vocabulary>malam tanpa tidur</vocabulary> menonton pertandingan bisbol Yankees. Apakah Yankees benar-benar menarik?', 'Sepanjang Malam, Malam Tanpa Tidur, Sepanjang Malam')
    RETURNING id INTO v_6477_sepanjang_malam;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '徹底', 'ketelitian', 41, 65, '<kanji>Menembus</kanji> hingga <kanji>bawah</kanji>. SEMUA jalan ke bawah. Jangan berhenti di tengah jalan. Inilah <vocabulary>ketelitian</vocabulary>. Inilah <vocabulary>kelengkapan</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda belum mempelajari bacaan ini untuk 底, jadi inilah mnemonik untuk membantu Anda:

<vocabulary>Ketelitian</vocabulary> penting ketika Anda membuat <reading>ta</reading>ter (てい) tots. Setiap tater harus dipotong dengan hati-hati menjadi potongan-potongan kecil lalu dihancurkan kembali. Jangan biarkan saya mulai dengan <vocabulary>kelengkapan</vocabulary> yang saya rasakan ketika saya selesai dan memakannya. Mm.', 'Ketelitian, Kelengkapan')
    RETURNING id INTO v_6478_ketelitian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '瀬戸', 'seto', 41, 66, '<kanji>jeram</kanji> <kanji>pintu</kanji> awalnya berarti selat atau saluran, namun kini lebih banyak digunakan sebagai nama tempat: <vocabulary>Seto</vocabulary>. Beberapa contoh yang terkenal adalah Kota Seto (瀬戸市) di Aichi, yang terkenal dengan tembikarnya, dan Laut Pedalaman Seto (瀬戸内海) antara Honshu, Shikoku, dan Kyūshū.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji kun''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Seto')
    RETURNING id INTO v_6479_seto;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '高瀬', 'dangkal', 41, 67, '<kanji>tinggi</kanji> <kanji>jeram</kanji> adalah <vocabulary>dangkal</vocabulary>. Bagaimana itu masuk akal?! Saya kira ini berarti secara geografis tinggi. Jadi lebih tinggi di sungai, dekat sumbernya, airnya cenderung cukup dangkal.

Anda akan melihat 高瀬 sebagian besar dalam nama, seperti 高瀬川 (Sungai Takase) atau 高瀬ダム (Bendungan Takase).', 'Bacaannya berasal dari 高い dan bacaan yang Anda pelajari untuk 瀬.', 'Dangkal')
    RETURNING id INTO v_6480_dangkal;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '早瀬', 'arus-cepat', 41, 68, '<kanji>cepat</kanji> <kanji>jeram</kanji> akan memiliki <vocabulary>arus yang cepat</vocabulary>.', 'Bacaannya berasal dari 早い dan bacaan yang Anda pelajari untuk 瀬.', 'Arus Cepat, jeram')
    RETURNING id INTO v_6481_arus_cepat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '瀬', 'jeram', 41, 69, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Sebenarnya bacaannya sama dengan yang kamu pelajari dengan kanji!', 'jeram, Dangkal, Saat ini')
    RETURNING id INTO v_6482_jeram;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '撤去', 'penarikan', 41, 70, '<kanji>penarikan</kanji> adalah sesuatu yang Anda lakukan untuk menghapus sesuatu dari <kanji>masa lalu</kanji>. Ini adalah <vocabulary>penarikan</vocabulary> atau <vocabulary>penghapusan</vocabulary> dari apa yang Anda lakukan atau serahkan sebelumnya.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri. Perhatikan てつ yang disingkat.', 'Penarikan, Pemindahan')
    RETURNING id INTO v_6483_penarikan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '撤回', 'penarikan', 41, 71, 'Jika Anda melakukan <kanji>penarikan</kanji> terhadap sesuatu, itu seperti Anda <kanji>berputar kembali ke keadaan semula. Ini adalah <vocabulary>penarikan</vocabulary> atau <vocabulary>pencabutan</vocabulary>. Ini <vocabulary>mengambil kembali</vocabulary> sesuatu yang Anda katakan sebelumnya.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri. Perhatikan てつ yang disingkat.', 'Penarikan, Mencabut, Mengambil Kembali')
    RETURNING id INTO v_6484_penarikan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '撤兵', 'penarikan-pasukan', 41, 72, '<kanji>penarikan</kanji> <kanji>tentara</kanji> adalah <vocabulary>penarikan pasukan</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri. Carilah titik てっ yang dipersingkat.', 'Penarikan Pasukan')
    RETURNING id INTO v_6485_penarikan_pasukan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '措置', 'tindakan', 41, 73, '<kanji>Sisihkan</kanji> dan <kanji>letakkan</kanji> apa yang Anda perlukan untuk menyelesaikan pekerjaan di sana. Ini adalah <vocabulary>tindakan</vocabulary> dan <vocabulary>langkah</vocabulary> yang kami ambil untuk memastikan segala sesuatunya dilakukan dengan benar.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Tindakan, Tangga')
    RETURNING id INTO v_6486_tindakan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '措辞', 'susunan-kata', 41, 74, 'Anda <kanji>menyisihkan</kanji> <kanji>kata-kata</kanji> ini secara spesifik sehingga Anda bisa mendapatkan <vocabulary>kata-kata</vocabulary> yang benar. Kata-kata terkadang penting, seperti saat Anda mencoba mengomunikasikan sesuatu yang sensitif, atau saat Anda sedang menulis puisi. Terkadang hanya kata-kata tertentu yang bisa digunakan.

Perhatikan bahwa 措辞 biasanya mengacu pada <kosakata>frasa</vocabulary> atau <vocabulary>diksi</vocabulary> dalam tulisan, bukan ucapan.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Susunan kata, Ungkapan, Artikulasi')
    RETURNING id INTO v_6487_susunan_kata;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '拠る', 'untuk-didasarkan-pada', 41, 75, 'Kanji berarti <kanji>berdasarkan</kanji>, dan kata kerjanya berarti <vocabulary>berdasarkan</vocabulary>. 

拠る menyiratkan hubungan mendasar atau terkadang sebab akibat. Kalau X berdasarkan Y, bisa juga dikatakan X karena Y, atau X bergantung pada Y kan? Itu sebabnya ini juga bisa berarti <vocabulary>berasal dari</vocabulary> atau <vocabulary>bergantung pada</vocabulary>. 

Perlu dicatat bahwa kata ini biasanya ditulis dalam huruf kana.', 'Mulai sekarang, semuanya akan <kosakata>didasarkan pada</vocabulary> keterampilan <membaca>yo</reading>-yo (よ) Anda. Anda ingin kenaikan gaji di tempat kerja? Ini akan <vocabulary>bergantung pada</vocabulary> performa yo-yo Anda. Pasanganmu meninggalkanmu? <Kosakata>disebabkan oleh</vocabulary> kegagalan yo-yo Anda. Lebih baik kita terbiasa dengan meritokrasi yo-yo baru yang kita jalani!', 'Untuk Didasarkan Pada, Karena, Untuk Bergantung Pada')
    RETURNING id INTO v_6488_untuk_didasarkan_pada;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '拠点', 'posisi', 41, 76, 'Sesuatu yang <kanji>berdasarkan</kanji> <kanji>poin</kanji> memiliki peringkat, artinya Anda akan mengetahui di mana <vocabulary>posisi</vocabulary> atau <vocabulary>lokasi</vocabulary> Anda, dibandingkan dengan orang lain.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Posisi, Lokasi')
    RETURNING id INTO v_6489_posisi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '証拠', 'bukti-fisik', 41, 77, '<kanji>bukti</kanji> <kanji>didasarkan pada</kanji> sesuatu. Berdasarkan apa? <vocabulary>bukti fisik</vocabulary> ini. Ha ha! Bersalah!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda hanya perlu mengingat bahwa 拠 menggunakan bacaan こ yang Anda pelajari, bukan bacaan きょ. Ingatlah bahwa Anda tidak akan pernah bisa mempercayai kata 子 (こ), jadi Anda selalu meminta mereka untuk memberikan <vocabulary>bukti fisik</vocabulary>.', 'Bukti Fisik, Bukti, Bukti')
    RETURNING id INTO v_6490_bukti_fisik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '根拠', 'dasar', 41, 78, '<kanji>akar</kanji> yang menjadi dasar <kanji></kanji> ini adalah <vocabulary>dasar</vocabulary> dan <vocabulary>landasan</vocabulary> untuk argumen saya. Lihat, semuanya sampai ke akar masalahnya!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Dasar, Alasan')
    RETURNING id INTO v_6491_dasar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '礼儀', 'tata-krama', 41, 79, '<kanji>terima kasih</kanji> <kanji>upacara</kanji> adalah tarian yang Anda lakukan dalam hidup sehubungan dengan <vocabulary>sopan santun</vocabulary> dan <vocabulary>kesopanan</vocabulary> Anda kepada orang lain. Juga berarti <vocabulary>etiket</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Tata krama, Kesopanan, Etiket')
    RETURNING id INTO v_6492_tata_krama;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '儀式', 'upacara', 41, 80, '<kanji>upacara</kanji> <kanji>upacara</kanji> adalah <vocabulary>upacara</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Upacara, Upacara')
    RETURNING id INTO v_6493_upacara;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '祝儀', 'hadiah-ucapan-selamat', 41, 81, 'Untuk <kanji>merayakan</kanji> sebuah <kanji>upacara</kanji>, Anda menawarkan <vocabulary>hadiah ucapan selamat</vocabulary>.

祝儀 umumnya mengacu pada hadiah uang untuk perayaan, seperti uang ucapan selamat untuk pernikahan. Hal ini juga dapat mencakup uang yang diberikan saat Anda melakukan hole-in-one dalam golf atau menang besar dalam perjudian.

Meskipun 祝儀 juga bisa merujuk pada perayaan itu sendiri, penggunaan ini tidak umum.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Bacaan untuk 祝 adalah bacaan alternatif yang belum pernah Anda lihat, jadi inilah mnemonik untuk membantu Anda mengingatnya:

<vocabulary>hadiah ucapan selamat</vocabulary> andalan Anda adalah sepasang <reading>sepatu</reading> (しゅう). Kebanyakan orang hanya memberi uang, tapi Anda lebih suka memberikan sesuatu yang praktis, dan tidak ada yang bisa mengalahkan sepasang sepatu yang bagus. Selamat sepatu-lasi!', 'Hadiah Ucapan Selamat, Uang Ucapan Selamat')
    RETURNING id INTO v_6494_hadiah_ucapan_selamat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '辞儀する', 'untuk-membungkuk', 41, 82, '<kanji>berhenti</kanji> <kanji>upacara</kanji> adalah saat Anda berhenti dan siap untuk pergi ke suatu tempat, jadi Anda membungkuk lalu berangkat. Itu sebabnya kata kerja ini adalah <vocabulary>to bow</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Untuk Membungkuk')
    RETURNING id INTO v_6495_untuk_membungkuk;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '果樹', 'pohon-buah', 41, 83, '<kanji>buah</kanji> <kanji>kayu</kanji> adalah tempat tumbuhnya buah (kayu dari buah adalah pohon, bodoh). Itu membuat kata ini menjadi <vocabulary>pohon buah</vocabulary>.

果樹 mengacu pada pohon yang menghasilkan buah yang dapat dimakan, seperti pohon persik, jeruk, atau kesemek. Kedengarannya lebih formal dan teknis daripada mengucapkan 果物の木, jadi Anda akan sering melihatnya dalam konteks pertanian, pertamanan, atau berkebun.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Pohon Buah')
    RETURNING id INTO v_6496_pohon_buah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '樹皮', 'kulit-kayu', 41, 84, '<kanji>kayu</kanji> <kanji>kulit</kanji> adalah <vocabulary>kulit pohon</vocabulary>. Itu adalah kulit kayu di sekitar pohon.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Kulit kayu, Kulit pohon')
    RETURNING id INTO v_6497_kulit_kayu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '植樹', 'penanaman-pohon', 41, 85, 'Jika Anda <kanji>menanam</kanji> <kanji>kayu</kanji> Anda sedang melakukan <vocabulary>penanaman pohon</vocabulary>, karena hanya pohon yang terbuat dari kayu.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Penanaman Pohon')
    RETURNING id INTO v_6498_penanaman_pohon;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '放棄', 'pengabaian', 41, 86, 'Anda <kanji>melepaskan</kanji> dan <kanji>meninggalkan</kanji> sesuatu. Ini adalah <vocabulary>pengabaian</vocabulary>.

放棄 adalah kata yang relatif formal untuk <vocabulary>meninggalkan</vocabulary> sesuatu. Hal ini dapat merujuk pada pelepasan tanggung jawab, seperti mengabaikan tugas atau kewajiban sebagai orang tua, atau <vocabulary>melepaskan</vocabulary> hak dan hak.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Pengabaian, Meninggalkan, Melepaskan')
    RETURNING id INTO v_6499_pengabaian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '廃棄', 'pembuangan', 41, 87, 'Itu <kanji>usang</kanji>, jadi Anda akan <kanji>meninggalkannya</kanji>. Ini adalah tindakan <vocabulary>pembuangan</vocabulary>. Apapun itu, Anda <vocabulary>membuang</vocabulary> atau <vocabulary>membuang</vocabulary> karena tidak diperlukan lagi.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Pembuangan, Membuang, Memotong')
    RETURNING id INTO v_6500_pembuangan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '虎', 'harimau', 41, 88, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji.', 'Harimau')
    RETURNING id INTO v_6502_harimau;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '蛍', 'kunang-kunang', 41, 89, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya adalah yang Anda pelajari dengan kanji.', 'Kunang-kunang, Serangga Petir, Cacing bercahaya')
    RETURNING id INTO v_6503_kunang_kunang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '蜂', 'lebah', 41, 90, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji.', 'Lebah, Pikat, Tawon')
    RETURNING id INTO v_6504_lebah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '蜂蜜', 'sayang', 41, 91, '<kanji>madu</kanji> seekor <kanji>lebah</kanji> adalah <vocabulary>madu</vocabulary>-nya, sayang.', 'Bacaannya adalah yang Anda pelajari dengan kanji.', 'Sayang')
    RETURNING id INTO v_6505_sayang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '焼酎', 'shochu', 41, 92, '<kanji>Panggang</kanji>d <kanji>minuman keras</kanji> sedikit lebih tinggi kandungan alkoholnya. Ini adalah <vocabulary>shochu</vocabulary>, yang menurut saya mengalami pemanasan selama produksinya.

Shochu adalah sejenis minuman keras tradisional Jepang. Ini adalah minuman beralkohol sulingan yang terbuat dari bahan-bahan seperti ubi, barley, beras, soba, dan tebu.', 'Bacaan 焼 dan 酎 merupakan bacaan on''yomi, namun kamu belum mempelajari bacaan 焼. Tidak apa-apa, karena jika Anda mengetahui kata <vocabulary>Shochu</vocabulary> (juga dalam bahasa Inggris), Anda juga akan dapat mengingat bacaannya.', 'Shochu, Shouchuu, Minuman Keras Tradisional Jepang')
    RETURNING id INTO v_6506_shochu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '蜜', 'sayang', 41, 93, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji. Itu sayang, sayang!', 'Sayang, Nektar')
    RETURNING id INTO v_6507_sayang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '廃墟', 'reruntuhan', 41, 94, '<kanji>Usang</kanji> <kanji>reruntuhan</kanji> adalah tempat yang ditinggalkan karena tidak ada yang bisa mengelolanya lagi (karena sudah usang, atau karena tidak punya uang, atau karena hal lain). Hal-hal tersebut adalah <vocabulary>reruntuhan</vocabulary> atau <vocabulary>bangunan terbengkalai</vocabulary>. Orang-orang sangat suka menjelajahinya.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Reruntuhan, Gedung Terbengkalai')
    RETURNING id INTO v_6508_reruntuhan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '艦船', 'kapal-perang', 41, 95, '<kanji>kapal perang</kanji> <kanji>kapal</kanji> adalah <vocabulary>kapal perang</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Kapal perang, Kapal Laut')
    RETURNING id INTO v_6509_kapal_perang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '艦隊', 'armada-angkatan-laut', 41, 96, '<kanji>kapal perang</kanji> <kanji>pasukan</kanji> adalah <vocabulary>armada angkatan laut</vocabulary> atau <vocabulary>armada</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Armada Angkatan Laut, Armada')
    RETURNING id INTO v_6510_armada_angkatan_laut;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '軍艦', 'kapal-perang', 41, 97, '<kanji>tentara</kanji> <kanji>kapal perang</kanji> adalah <vocabulary>kapal perang</vocabulary>. Apakah kamu menenggelamkannya? Oh oh! Anda menenggelamkan 軍艦 saya!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'kapal perang')
    RETURNING id INTO v_6511_kapal_perang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '潜水艦', 'kapal-selam', 41, 98, '<kanji>penyembunyian</kanji> di <kanji>air</kanji> <kanji>kapal perang</kanji> adalah <vocabulary>kapal selam</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Kapal selam')
    RETURNING id INTO v_6512_kapal_selam;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '航空母艦', 'kapal-induk', 41, 99, 'Sebuah <kanji>penerbangan</kanji> (航空) <kanji>ibu</kanji> <kanji>kapal perang</kanji> adalah kapal perang yang seperti ibu bagi semua benda penerbangan (pesawat terbang). Mereka pulang ke kapal induk mereka, yaitu <vocabulary>kapal induk</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Kapal induk')
    RETURNING id INTO v_6513_kapal_induk;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '潜む', 'untuk-mengintai', 41, 100, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>menyembunyikan</kanji>, jadi jika Anda menyembunyikan diri dan berjalan-jalan, Anda akan <vocabulary>mengintai</vocabulary> atau Anda akan <vocabulary>tertidur</vocabulary>.', '<read>Dia sangat</reading> (ひそ) tersembunyi. Dimana kamu berada?', 'Untuk Mengintai, Untuk Berbaring Tertidur')
    RETURNING id INTO v_6514_untuk_mengintai;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '原潜', 'kapal-selam-nuklir', 41, 101, 'Mesin <kanji>penyembunyi</kanji> <kanji>asli</kanji> (sering dikaitkan dengan atom dan teknologi nuklir) adalah <vocabulary>kapal selam nuklir</vocabulary>. Itu adalah nuklir, dan ia menyembunyikan dirinya sendiri.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Kapal Selam Nuklir')
    RETURNING id INTO v_6515_kapal_selam_nuklir;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '潜水', 'menyelam', 41, 102, 'Untuk <kanji>menyembunyikan</kanji> diri Anda di dalam <kanji>air</kanji>, sebaiknya Anda mulai <vocabulary>menyelam</vocabulary> dan masuk ke dalam air yang dapat menyembunyikan Anda!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Menyelam')
    RETURNING id INTO v_6516_menyelam;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '潜在意識', 'bawah-sadar', 41, 103, 'Ingat bagaimana 意識 berarti "kesadaran"? Ya, ini adalah jenis kesadaran yang memiliki keberadaan <kanji>yang lebih <kanji>tersembunyi</kanji>di dalam diri Anda — dengan kata lain, ini adalah <kosakata>bawah sadar</vocabulary> Anda.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Bawah sadar, Pikiran Bawah Sadar')
    RETURNING id INTO v_6517_bawah_sadar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '拳', 'tinju', 41, 104, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Karena kata ini terdiri dari satu kanji, kemungkinan besar menggunakan bacaan kun''yomi. Anda tidak mempelajari bacaan ini, jadi inilah mnemonik untuk membantu Anda mengingat: Anda mengepalkan <vocabulary>fist</vocabulary>. Mengapa? Karena dia mencuri jagung rebusmu. "<reading>Tonggol! Dia</reading> (こぶし) mencuri tongkolku!"', 'Tinju')
    RETURNING id INTO v_6518_tinju;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '拳骨', 'tinju-terkepal', 41, 105, '<kanji>tinju</kanji> yang seperti <kanji>tulang</kanji> (keras) adalah kepalan tangan yang terkepal dan siap untuk ditinju, sehingga menjadikannya <vocabulary>tinju terkepal</vocabulary> atau <vocabulary>buku-buku jari</vocabulary>, jika Anda ingin lebih keras lagi.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Namun 拳 tidak menggunakan yang telah Anda pelajari, melainkan menggunakan げん. Bayangkan saja seseorang mengepalkan tangannya ke arah Anda. Anda menelan ludah dan mengucapkan げん alih-alih けん karena takut.', 'Tinju Terkepal, Buku-buku jari')
    RETURNING id INTO v_6519_tinju_terkepal;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '炭', 'arang', 41, 106, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Aku akan memasukkan <vocabulary>arang</vocabulary> ke dalam mulutmu. Apa yang akan dilakukan? <read>Tuntut saya</reading> (すみ)?', 'Arang')
    RETURNING id INTO v_6520_arang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '炭素', 'karbon', 41, 107, 'Benda-benda dari <kanji>arang</kanji> <kanji>elemen</kanji> terdiri dari banyak <vocabulary>karbon</vocabulary>. Lihat saja jauh ke dalam arang untuk melihat semua karbon di sana.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Karbon')
    RETURNING id INTO v_6521_karbon;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '石炭', 'batu-bara', 41, 108, '<kanji>batu</kanji> <kanji>arang</kanji> adalah arang yang berbentuk seperti batu kecil. Atau mungkin sering ditemukan di batu. Itulah <vocabulary>batubara</vocabulary>.', 'Ini menggunakan on''yomi untuk kedua kanji, jadi Anda seharusnya bisa membacanya sendiri.', 'Batu bara')
    RETURNING id INTO v_6522_batu_bara;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '畑', 'bidang', 41, 109, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna. 

Anda juga dapat menempelkan ini setelah nama tanaman dan mendapatkan ____ kolom <vocabulary></vocabulary>.', 'Bacaannya adalah yang Anda pelajari dengan kanji.

Perhatikan ketika Anda menempelkan ini ke jenis tanaman yang berarti ____ <kosakata>bidang</vocabulary>, ini akan membuat rendaku menjadi ばたけ.', 'Bidang, Tanah pertanian')
    RETURNING id INTO v_6523_bidang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '田畑', 'bidang', 41, 110, 'Kita berbicara tentang <kanji>sawah</kanji> dan <kanji>ladang</kanji> lainnya tempat para petani bercocok tanam. Jadi yang dimaksud adalah <vocabulary>ladang</vocabulary>, atau lebih tepatnya <vocabulary>sawah dan tanaman</vocabulary>. Semuanya tentang <vocabulary>lahan pertanian</vocabulary>.', 'Pembacaannya berasal dari apa yang Anda pelajari dengan kanji. 畑 menggunakan bacaan はた pendek yang Anda pelajari.', 'Bidang, Sawah Dan Ladang Tanaman, Tanah pertanian')
    RETURNING id INTO v_6524_bidang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '麦畑', 'ladang-gandum', 41, 111, '<kanji>gandum</kanji> <kanji>ladang</kanji> adalah <vocabulary>ladang gandum</vocabulary> atau <vocabulary>ladang jelai</vocabulary>', 'Bacaannya adalah bacaan kun''yomi, tapi juga bacaan yang Anda pelajari dengan kanji. Hati-hati dengan rendaku.', 'Ladang Gandum, Ladang Jelai')
    RETURNING id INTO v_6525_ladang_gandum;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '包む', 'untuk-membungkus', 41, 112, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri artinya <kanji>membungkus</kanji> jadi versi kosakata kata kerjanya adalah <vocabulary>to wrap</vocabulary>. 

包む dapat digunakan secara harfiah dan kiasan, sehingga dapat digunakan untuk membungkus kado, membungkus seseorang yang sedang jatuh cinta, atau bahkan untuk kabut atau cahaya yang menyelimuti suatu area. Dalam konteks budaya, terkadang hal ini juga menyiratkan tindakan memberikan hadiah finansial, karena di Jepang sering kali barang dibungkus dengan rapi sebelum diberikan — bahkan tumpukan uang kertas.', 'Anda tidak pernah membungkus sesuatu sekali pun, Anda selalu membungkusnya dua kali. Dan kemudian Anda menggandakannya. Ini adalah teknik membungkus <reading>dua dua</reading> (つつ).

つつむ adalah bacaan yang kami ingin Anda fokuskan, tapi ada baiknya mengetahui bahwa 包む juga bisa dibaca sebagai くるむ. くるむ digunakan saat Anda membungkus sesuatu dengan hati-hati dan protektif, seperti bayi dalam selimut. つつむ di sisi lain, memiliki kegunaan yang lebih luas dan biasanya digunakan untuk membungkus sesuatu seperti hadiah.', 'Untuk Membungkus, Untuk Menyelesaikan, Untuk Menyelimuti')
    RETURNING id INTO v_6526_untuk_membungkus;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '包丁', 'pisau-dapur', 41, 113, 'Sesuatu yang harus Anda <kanji>bungkus</kanji> saat pergi ke <kanji>jalan</kanji> adalah <vocabulary>pisau dapur</vocabulary> Anda. Mengapa Anda membungkus pisau dapur Anda? Ya, tentu saja agar tidak rusak dan tidak melukai orang secara tidak sengaja.

Oke, kanjinya sepertinya tidak ada hubungannya dengan artinya di sini. Namun itu karena kata ini sebenarnya berasal dari nama seorang karakter tukang daging yang terampil dalam literatur Tiongkok kuno. Semakin banyak Anda tahu!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Pisau Dapur')
    RETURNING id INTO v_6527_pisau_dapur;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '包囲', 'pengepungan', 41, 114, '<kanji>Membungkus</kanji> dan <kanji>kelilingi</kanji>. Kami akan <vocabulary>mengepung</vocabulary> musuh. Ini adalah <vocabulary>pengepungan</vocabulary> di sekitar markas mereka!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Pengepungan, Pengepungan')
    RETURNING id INTO v_6528_pengepungan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '仁', 'kemanusiaan', 41, 115, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji!', 'Kemanusiaan')
    RETURNING id INTO v_6532_kemanusiaan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '仁義', 'kemanusiaan-dan-keadilan', 41, 116, '<kanji>Kemanusiaan</kanji> dan <kanji>kebenaran</kanji>. Ini adalah <vocabulary>tugas</vocabulary> Anda. Inilah <vocabulary>kemanusiaan dan keadilan</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Kemanusiaan dan Keadilan, Tugas')
    RETURNING id INTO v_6533_kemanusiaan_dan_keadilan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '鉱山', 'sebuah-tambang', 41, 117, '<kanji>mineral</kanji> <kanji>gunung</kanji> adalah mineral yang di dalamnya Anda harus membangun <vocabulary>tambang</vocabulary>, untuk mendapatkan semua mineral tersebut.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri. Hati-hati dengan rendaku.', 'Sebuah Tambang, Milikku')
    RETURNING id INTO v_6534_sebuah_tambang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '鉱石', 'bijih', 41, 118, '<kanji>mineral</kanji> <kanji>batu</kanji> adalah <vocabulary>ore</vocabulary> / <vocabulary>mineral</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda tahu cara membaca kanjinya, Anda juga pasti tahu cara membacanya.', 'Bijih, Mineral')
    RETURNING id INTO v_6535_bijih;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '鉱物', 'mineral', 41, 119, '<kanji>mineral</kanji> <kanji>benda</kanji> adalah <vocabulary>mineral</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Mineral')
    RETURNING id INTO v_6536_mineral;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '炭鉱', 'tambang-batu-bara', 41, 120, '<kanji>Arang</kanji> <kanji>mineral</kanji> telah ditemukan! Saatnya menggali <vocabulary>tambang batubara</vocabulary> atau <vocabulary>coal pit</vocabulary> untuk mengambilnya!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Tambang batu bara, Lubang Batubara')
    RETURNING id INTO v_6537_tambang_batu_bara;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '鉄鉱', 'bijih-besi', 41, 121, '<kanji>besi</kanji> <kanji>mineral</kanji> adalah <vocabulary>bijih besi</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Bijih besi')
    RETURNING id INTO v_6538_bijih_besi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '鉱業', 'industri-pertambangan', 41, 122, '<kanji>mineral</kanji> <kanji>Bisnis</kanji> adalah <vocabulary>industri pertambangan</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Industri Pertambangan')
    RETURNING id INTO v_6539_industri_pertambangan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '至る', 'untuk-tiba-di', 41, 123, 'Kanji berarti <kanji>mencapai</kanji> tetapi arti dari kata kerja ini adalah <vocabulary>untuk mencapai</vocabulary>. Saya kira itu karena jika Anda mencapai sesuatu seperti pencerahan, Anda juga sampai pada pencerahan itu. Jadi, <vocabulary>untuk sampai pada</vocabulary>.', 'Apa <vocabulary>kunci untuk mencapai</vocabulary> pencerahan? Menjadi seorang yang rajin <reading>eater</reading> (いた)! Menjadi pemakan segala sesuatu yang lezat akan benar-benar membuat tubuh dan pikiran Anda mencapai tingkat yang baru. Cobalah. Menjadi pemakan.', 'Untuk Tiba Di')
    RETURNING id INTO v_6540_untuk_tiba_di;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '夏至', 'titik-balik-matahari-musim-panas', 41, 124, 'Jika Anda telah <kanji>mencapai</kanji><kanji>musim panas</kanji>, itu berarti Anda telah menyelesaikan musim sebelumnya dan memasuki musim panas. Inilah <vocabulary>titik balik matahari musim panas</vocabulary>.', 'Anda tidak mempelajari pembacaan 夏 dengan kanji, jadi inilah mnemonik untuk membantu:

Bayangkan saja betapa <reading>ge</reading>cko (げ) kecil yang lucu mulai muncul ke permukaan selama titik balik matahari musim panas. Terlalu dingin bagi mereka untuk berada di tempat terbuka sebelum itu, jadi jika Anda melihat ke luar pada waktu yang tepat, Anda akan melihat tokek bermunculan dari tanah di mana-mana!', 'Titik Balik Matahari Musim Panas')
    RETURNING id INTO v_6541_titik_balik_matahari_musim_panas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '冬至', 'titik-balik-matahari-musim-dingin', 41, 125, 'Jika Anda akan <kanji>mencapai</kanji> <kanji>musim dingin</kanji>, maka itulah <vocabulary>winter solstice</vocabulary>. Selamat musim dingin, semuanya!', 'Bacaan 冬 adalah bacaan on''yomi, dan belum pernah Anda pelajari sebelumnya. Anda pasti ingin memikirkan bagaimana Anda merayakan <vocabulary>winter solstice</vocabulary> di satu tempat tertentu, yaitu <reading>とう</reading>きょう. Lihatlah landmark Tokyo di sekitar Anda, bayangkan Anda berada di sana pada titik balik matahari musim dingin, dan pikirkan juga hal-hal yang Anda lakukan untuk merayakannya, di sini di Tokyo. Juga, hati-hati dengan rendaku.', 'Titik Balik Matahari Musim Dingin')
    RETURNING id INTO v_6542_titik_balik_matahari_musim_dingin;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '必至', 'tidak-bisa-dihindari', 41, 126, 'Jika <kanji>pasti</kanji> Anda akan <kanji>mencapainya</kanji>, maka hal itu <vocabulary>tidak dapat dihindari</vocabulary>. Ini adalah kesimpulan yang <vocabulary>terlalu lama</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Tidak bisa dihindari, Diperlukan, Terdahulu')
    RETURNING id INTO v_6543_tidak_bisa_dihindari;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '至上', 'supremasi', 41, 127, 'Jika Anda <kanji>mencapai</kanji> <kanji>di atas</kanji> itu berarti Anda berada di atas semua orang, dan Anda memandang rendah mereka. Anda memiliki <vocabulary>supremasi</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Supremasi')
    RETURNING id INTO v_6544_supremasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '誠', 'kejujuran', 41, 128, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', '<vocabulary>Ketulusan</vocabulary> dan <vocabulary>kebenaran</vocabulary> sangat penting bagiku sehingga aku selalu menyimpannya di dalam <reading>mantel</reading> (まこと). Di sanalah aku menyimpan semua hal yang paling aku sayangi, dan apa yang lebih penting dari ketulusan dan kebenaran? Di mana Anda menyimpan ketulusan dan kebenaran? Saya yakin jawaban Anda adalah "mantel saya" juga.', 'Kejujuran, Kebenaran')
    RETURNING id INTO v_6545_kejujuran;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '誠意', 'kejujuran', 41, 129, '<kanji>gagasan</kanji> dari <kanji>ketulusan</kanji> adalah <vocabulary>ketulusan</vocabulary>. Hal ini juga berarti memiliki <vocabulary>itikad baik</vocabulary> pada orang lain.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Kejujuran, Itikad Baik')
    RETURNING id INTO v_6546_kejujuran;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '誠実', 'jujur', 41, 130, 'Anda memiliki <kanji>ketulusan</kanji> dan Anda memiliki <kanji>kebenaran</kanji>. Kamu sangat <vocabulary>tulus</vocabulary> dan <vocabulary>jujur</vocabulary> dan <vocabulary>setia</vocabulary>, teman baik.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Jujur, Jujur, Setia')
    RETURNING id INTO v_6547_jujur;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '忠誠', 'loyalitas', 41, 131, 'Saya memiliki <kanji>ketulusan</kanji> tentang <kanji>kesetiaan</kanji> saya. Itu menunjukkan <vocabulary>loyalitas</vocabulary>, bukan?', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Loyalitas')
    RETURNING id INTO v_6548_loyalitas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '郷里', 'kampung-halaman', 41, 132, '<kanji>kampung halaman</kanji> <kanji>desa asal</kanji> Anda adalah <vocabulary>kampung halaman</vocabulary> Anda. Ini juga merupakan <vocabulary>tempat lahir</vocabulary> Anda, tempat Anda dilahirkan.', 'Bacaan untuk 郷 adalah bacaan yang Anda pelajari, namun bacaan untuk 里 bukanlah bacaan yang Anda pelajari. Untuk mengingat bacaan ini, coba pikirkan bagaimana <vocabulary>tempat lahir</vocabulary> Anda adalah tempat di mana Anda <reading>rea</reading>merah (り), dan Anda <reading>re</reading>lly (り) merindukan tempat itu.', 'kampung halaman, Tempat lahir')
    RETURNING id INTO v_6549_kampung_halaman;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '故郷', 'kampung-halaman', 41, 133, 'Berdasarkan <kanji>keadaan</kanji> ini adalah <kanji>kampung halaman</kanji> Anda. Tidak banyak yang bisa dikatakan selain <vocabulary>kampung halaman</vocabulary> dan <vocabulary>tempat lahir</vocabulary> Anda.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.

Meskipun こきょう adalah bacaan yang lebih umum untuk kata ini, kata ini juga dapat dibaca sebagai ふるさと, yang merupakan kata asli Jepang yang aslinya tidak memiliki kanji. ふるさと juga umum di hiragana.', 'kampung halaman, Tempat lahir')
    RETURNING id INTO v_6550_kampung_halaman;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '帰郷する', 'untuk-kembali-ke-kampung-halaman-seseorang', 41, 134, 'Jika Anda <kanji>kembali</kanji> ke <kanji>kampung halaman</kanji> Anda akan <vocabulary>kembali ke kampung halaman</vocabulary>.', 'Bacaan 帰 adalah bacaan on''yomi yang belum kamu pelajari. Coba pikirkan bagaimana ketika kamu kembali ke kampung halaman, kamu akan memerlukan <reading>kunci</reading> (き) untuk masuk ke rumah lamamu, yang sudah lama tidak kamu kunjungi.', 'Untuk Kembali Ke Kampung Halaman Seseorang')
    RETURNING id INTO v_6551_untuk_kembali_ke_kampung_halaman_seseorang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '侵攻', 'invasi', 41, 135, 'Jika Anda <kanji>menyerang</kanji> dengan <kanji>agresi</kanji> itu adalah <vocabulary>invasi</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Invasi')
    RETURNING id INTO v_6552_invasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '侵入', 'intrusi', 41, 136, 'Jika Anda <kanji>menyerang</kanji> dan <kanji>memasuki</kanji> itu adalah <vocabulary>intrusi</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Intrusi, Penetrasi')
    RETURNING id INTO v_6553_intrusi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '侵す', 'untuk-menyerang', 41, 137, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>menyerang</kanji> dan versi kosakata kata kerjanya juga berarti <vocabulary>menyerang</vocabulary>!', 'Aku akan <vocabulary>menyerang</vocabulary> negaramu, <reading>oka</reading>y (おか)? Maaf mengenai hal itu, namun semuanya akan <read>baik-baik saja</reading>y setelah saya selesai.', 'Untuk Menyerang, Untuk Melanggar, Untuk Mengganggu')
    RETURNING id INTO v_6554_untuk_menyerang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '侵害', 'pelanggaran', 41, 138, 'Kamu <kanji>menyerang</kanji>dan <kanji>merusak</kanji>saya. Anda melakukan <vocabulary>pelanggaran</vocabulary> di wilayah saya. Ini adalah <vocabulary>pelanggaran</vocabulary> saya.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Pelanggaran, Pelanggaran')
    RETURNING id INTO v_6555_pelanggaran;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '偽', 'palsu', 41, 139, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Karena kata ini terdiri dari satu kanji, kemungkinan besar menggunakan bacaan kun''yomi. Anda tidak mempelajari bacaan ini, jadi inilah mnemonik untuk membantu Anda: 

Ternyata dia adalah <vocabulary>palsu</vocabulary>. <reading>Keponakan</reading> Anda (にせ) selama ini adalah robot, hanya berpura-pura menjadi keponakan Anda. Apa yang salah dengan dunia ini, dimana keponakanmu bisa menjadi keponakan <vocabulary>imitasi</vocabulary>. Seorang keponakan, jika Anda mau.', 'Palsu, Imitasi')
    RETURNING id INTO v_6556_palsu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '偽る', 'berbohong', 41, 140, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri artinya <kanji>palsu</kanji> dan versi kosakata verbanya mirip, artinya <vocabulary>berbohong</vocabulary> atau <vocabulary>menipu</vocabulary> atau <vocabulary>menipu</vocabulary>.', 'Seseorang mencoba <vocabulary>membohongi</vocabulary> kepada Anda. Anda tidak bisa mempercayainya. <read>Itu apa</reading>t (いつわ)??? Anda tidak bisa mempercayainya.', 'Berbohong, Untuk menipu, Untuk Menipu')
    RETURNING id INTO v_6557_berbohong;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '偽装', 'kamuflase', 41, 141, 'Beberapa <kanji>pakaian</kanji> palsu</kanji> tidak membuat Anda terlihat palsu, melainkan membuat Anda menghilang. Pakaian palsu ini adalah lingkungan palsu. Jadi, jika Anda berada di semak-semak, itu adalah pakaian semak. Jika Anda berada dalam kegelapan, itu adalah pakaian gelap. Ini adalah <vocabulary>kamuflase</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Kamuflase, Samaran')
    RETURNING id INTO v_6558_kamuflase;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '偽造', 'pemalsuan', 41, 142, 'Mari <kanji>membuat</kanji> sebuah <kanji>palsu</kanji>. Ini palsu yang kami buat? Itu adalah <vocabulary>pemalsuan</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Pemalsuan')
    RETURNING id INTO v_6559_pemalsuan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '渋々', 'dengan-enggan', 41, 143, 'Jika Anda menggigit sesuatu yang <kanji>pahit</kanji> (dua kali!), Anda akan menggigit <vocabulary>dengan enggan</vocabulary> berikutnya. Karena siapa yang menginginkan sesuatu yang pahit sebanyak itu? Bukan kamu.', 'Ini adalah bacaan kun''yomi dua kali. Anda mempelajari bacaan ini ketika Anda mempelajari 渋い. Jika Anda mengingatnya, Anda juga mengetahuinya!', 'Dengan enggan, Dengan enggan')
    RETURNING id INTO v_8731_dengan_enggan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '嘘', 'berbohong', 41, 144, 'Kanji dan kata-katanya sama persis. <kanji>kebohongan</kanji> adalah <vocabulary>kebohongan</vocabulary>!', 'Karena kata ini terdiri dari satu kanji, kemungkinan besar menggunakan bacaan kun''yomi. Kamu belajar membaca dengan kanji, jadi kamu seharusnya sudah bisa membacanya!', 'Berbohong')
    RETURNING id INTO v_8845_berbohong;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '嘘吐き', 'pembohong', 41, 145, 'Jika <kanji>berbohong</kanji> muntah (吐く) keluar dari mulutmu, kamu adalah <vocabulary>pembohong</vocabulary>.', 'Ini adalah kombinasi bacaan kun''yomi yang salah satunya belum pernah Anda lihat. Biasanya Anda akan melihat kata ini tanpa kanji 吐, seperti pada 嘘つき, namun untuk sekarang mari kita pelajari cara membaca kanjinya! 

Anda tidak bisa hanya mengatakan satu <vocabulary>kebohongan</vocabulary>, itu selalu berubah menjadi <reading>dua</reading> (つ). Seperti keripik atau pretzel, Anda tidak bisa hanya memilikinya. Dengan kebohongan, Anda harus membuka mulut untuk dua hal lagi. Dan kemudian dua lagi.... dan... baiklah Anda mengerti.', 'Pembohong')
    RETURNING id INTO v_8846_pembohong;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '凄い', 'luar-biasa', 41, 146, 'Ini adalah kanji tunggal dengan い di akhir, artinya Anda tahu itu mungkin kata sifat. Apa bentuk kata sifat dari <kanji>menakjubkan</kanji>? Ini juga <vocabulary>menakjubkan</vocabulary>! Atau <vocabulary>mengerikan</vocabulary>. Kata ini bisa baik dan buruk, tergantung konteksnya, karena yang menakjubkan biasanya juga sedikit buruk. Kamu tahu?', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda belum mempelajari bacaan ini, jadi inilah mnemonik untuk membantu Anda:

Hal paling <vocabulary>menakjubkan</vocabulary> dan <vocabulary>mengerikan</vocabulary> yang pernah Anda lihat adalah <reading>Su</reading>it <reading>Go</reading>dzilla (すご). Godzilla mengenakan setelan yang bagus (luar biasa!) tetapi juga menghancurkan rumah Anda, teman, dan keluarga Anda (mengerikan!).', 'Luar biasa, Luar biasa, Sangat buruk, Buruk sekali')
    RETURNING id INTO v_8902_luar_biasa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '凄絶', 'sangat-mengerikan', 41, 147, 'Sesuatu yang benar-benar <kanji>mengerikan</kanji> yang menyebabkan <kanji>kepunahan</kanji> massal akan menjadi <vocabulary>sangat mengerikan</vocabulary>. Mungkin juga <vocabulary>sangat kejam</vocabulary>, jadi jangan lihat.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda sudah mempelajarinya, jadi Anda seharusnya bisa membacanya sendiri!', 'Sangat Mengerikan, Sangat sengit, Sangat Kekerasan')
    RETURNING id INTO v_8904_sangat_mengerikan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '喧嘩', 'bertarung', 41, 148, 'Saat keadaan menjadi <kanji>berisik</kanji> dan <kanji>gaduh</kanji> ada kemungkinan besar segalanya akan berakhir dengan <vocabulary>perkelahian</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Bertarung, Pertengkaran, Argumen')
    RETURNING id INTO v_8924_bertarung;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '喧しい', 'bising', 41, 149, 'Anda bisa menebak ini adalah kata sifat dari い di akhir. Arti kanjinya adalah <kanji>berisik</kanji>, jadi versi kata sifatnya juga <vocabulary>noisy</vocabulary>.

喧しい adalah cara santai namun tegas untuk mengatakan seseorang atau sesuatu terlalu berisik. Kata ini sering digunakan dalam komedi dan variety show Jepang, jadi tergantung situasinya, akan ada kesan lucu di dalamnya. Anda bahkan dapat menggunakannya secara kiasan untuk mendeskripsikan seseorang yang terlalu pilih-pilih, cerewet, atau menyebalkan terhadap sesuatu tertentu (mereka "berisik" terhadap detail yang tidak penting). Perhatikan bahwa dalam situasi sehari-hari, Anda akan sering melihat kata ini ditulis dalam kana sebagai やかましい.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak mempelajari cara membaca やかま dengan kanji ini, jadi inilah mnemonik untuk membantu:

Ibuku yang <vocabulary>berisik</vocabulary> mendapat julukan <reading>yak-a-Ma</reading> (やかま). Dia selalu mengomel tentang pilihan hidupku. “Yakka yakka yakka,” kata Ma.', 'Bising, Pemilih')
    RETURNING id INTO v_8925_bising;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4034_lemah, 'Lemah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4034_lemah, 'Lemah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4034_lemah, 'Kelemahan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4034_lemah, 'Kelemahan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6115_hongkong, 'Hongkong', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6354_pemakaman, 'Pemakaman', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6454_untuk_abstain, 'Untuk abstain', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6454_untuk_abstain, 'Untuk menahan diri', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6454_untuk_abstain, 'Untuk Menahan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6454_untuk_abstain, 'Untuk Bersiap', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6455_untuk_berkelompok, 'Untuk Berkelompok', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6455_untuk_berkelompok, 'Ke Kerumunan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6455_untuk_berkelompok, 'Berkerumun', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6458_kamar_kecil, 'Kamar kecil', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6458_kamar_kecil, 'Kamar mandi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6458_kamar_kecil, 'Toilet', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6459_prefektur_gifu, 'Prefektur Gifu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6460_pemberi_pekerjaan, 'Pemberi pekerjaan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6460_pemberi_pekerjaan, 'Karyawan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6461_fragmen, 'Fragmen', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6462_maaf, 'Maaf', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6462_maaf, 'Saya Mohon Maaf', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6463_kesejahteraan_sosial, 'Kesejahteraan sosial', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6464_rendah_hati, 'Rendah hati', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6464_rendah_hati, 'Kerendahhatian', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6464_rendah_hati, 'Kesopanan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6465_pistol, 'Pistol', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6465_pistol, 'Pistol', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6465_pistol, 'Pistol', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6466_pertimbangan, 'Pertimbangan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6466_pertimbangan, 'Kasih sayang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6466_pertimbangan, 'Simpati', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6467_bom_atom, 'Bom Atom', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6468_shibuya, 'Shibuya', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6469_untuk_mengisi_baterai, 'Untuk Mengisi Baterai', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6469_untuk_mengisi_baterai, 'Untuk Mengisi Ulang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6469_untuk_mengisi_baterai, 'Untuk Mengisi Ulang Baterai', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6470_kemampuan, 'Kemampuan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6470_kemampuan, 'Keteguhan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6470_kemampuan, 'Kecerdasan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6471_alasan_untuk_hidup, 'Alasan Untuk Hidup', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6471_alasan_untuk_hidup, 'Sesuatu yang Layak untuk Dijalani', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6472_punggung_tangan_seseorang, 'Punggung Tangan Seseorang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6473_layak_dilakukan, 'Layak Dilakukan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6474_melompat, 'Melompat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6474_melompat, 'Melompat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6475_untuk_bertanya, 'Untuk Bertanya', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6475_untuk_bertanya, 'Untuk Mendengar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6475_untuk_bertanya, 'Untuk Mengunjungi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6476_untuk_mengabdikan_diri_sendiri, 'Untuk Mengabdikan Diri Sendiri', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6476_untuk_mengabdikan_diri_sendiri, 'Untuk Tenggelam', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6476_untuk_mengabdikan_diri_sendiri, 'Untuk Menembus', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6477_sepanjang_malam, 'Sepanjang Malam', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6477_sepanjang_malam, 'Malam Tanpa Tidur', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6477_sepanjang_malam, 'Sepanjang Malam', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6478_ketelitian, 'Ketelitian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6478_ketelitian, 'Kelengkapan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6479_seto, 'Seto', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6480_dangkal, 'Dangkal', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6481_arus_cepat, 'Arus Cepat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6481_arus_cepat, 'jeram', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6482_jeram, 'jeram', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6482_jeram, 'Dangkal', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6482_jeram, 'Saat ini', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6483_penarikan, 'Penarikan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6483_penarikan, 'Pemindahan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6484_penarikan, 'Penarikan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6484_penarikan, 'Mencabut', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6484_penarikan, 'Mengambil Kembali', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6485_penarikan_pasukan, 'Penarikan Pasukan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6486_tindakan, 'Tindakan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6486_tindakan, 'Tangga', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6487_susunan_kata, 'Susunan kata', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6487_susunan_kata, 'Ungkapan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6487_susunan_kata, 'Artikulasi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6488_untuk_didasarkan_pada, 'Untuk Didasarkan Pada', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6488_untuk_didasarkan_pada, 'Karena', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6488_untuk_didasarkan_pada, 'Untuk Bergantung Pada', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6489_posisi, 'Posisi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6489_posisi, 'Lokasi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6490_bukti_fisik, 'Bukti Fisik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6490_bukti_fisik, 'Bukti', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6490_bukti_fisik, 'Bukti', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6491_dasar, 'Dasar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6491_dasar, 'Alasan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6492_tata_krama, 'Tata krama', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6492_tata_krama, 'Kesopanan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6492_tata_krama, 'Etiket', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6493_upacara, 'Upacara', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6493_upacara, 'Upacara', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6494_hadiah_ucapan_selamat, 'Hadiah Ucapan Selamat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6494_hadiah_ucapan_selamat, 'Uang Ucapan Selamat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6495_untuk_membungkuk, 'Untuk Membungkuk', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6496_pohon_buah, 'Pohon Buah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6497_kulit_kayu, 'Kulit kayu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6497_kulit_kayu, 'Kulit pohon', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6498_penanaman_pohon, 'Penanaman Pohon', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6499_pengabaian, 'Pengabaian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6499_pengabaian, 'Meninggalkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6499_pengabaian, 'Melepaskan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6500_pembuangan, 'Pembuangan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6500_pembuangan, 'Membuang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6500_pembuangan, 'Memotong', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6502_harimau, 'Harimau', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6503_kunang_kunang, 'Kunang-kunang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6503_kunang_kunang, 'Serangga Petir', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6503_kunang_kunang, 'Cacing bercahaya', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6504_lebah, 'Lebah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6504_lebah, 'Pikat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6504_lebah, 'Tawon', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6505_sayang, 'Sayang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6506_shochu, 'Shochu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6506_shochu, 'Shouchuu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6506_shochu, 'Minuman Keras Tradisional Jepang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6507_sayang, 'Sayang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6507_sayang, 'Nektar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6508_reruntuhan, 'Reruntuhan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6508_reruntuhan, 'Gedung Terbengkalai', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6509_kapal_perang, 'Kapal perang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6509_kapal_perang, 'Kapal Laut', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6510_armada_angkatan_laut, 'Armada Angkatan Laut', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6510_armada_angkatan_laut, 'Armada', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6511_kapal_perang, 'kapal perang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6512_kapal_selam, 'Kapal selam', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6513_kapal_induk, 'Kapal induk', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6514_untuk_mengintai, 'Untuk Mengintai', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6514_untuk_mengintai, 'Untuk Berbaring Tertidur', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6515_kapal_selam_nuklir, 'Kapal Selam Nuklir', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6516_menyelam, 'Menyelam', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6517_bawah_sadar, 'Bawah sadar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6517_bawah_sadar, 'Pikiran Bawah Sadar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6518_tinju, 'Tinju', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6519_tinju_terkepal, 'Tinju Terkepal', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6519_tinju_terkepal, 'Buku-buku jari', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6520_arang, 'Arang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6521_karbon, 'Karbon', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6522_batu_bara, 'Batu bara', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6523_bidang, 'Bidang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6523_bidang, 'Tanah pertanian', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6524_bidang, 'Bidang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6524_bidang, 'Sawah Dan Ladang Tanaman', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6524_bidang, 'Tanah pertanian', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6525_ladang_gandum, 'Ladang Gandum', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6525_ladang_gandum, 'Ladang Jelai', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6526_untuk_membungkus, 'Untuk Membungkus', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6526_untuk_membungkus, 'Untuk Menyelesaikan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6526_untuk_membungkus, 'Untuk Menyelimuti', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6527_pisau_dapur, 'Pisau Dapur', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6528_pengepungan, 'Pengepungan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6528_pengepungan, 'Pengepungan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6532_kemanusiaan, 'Kemanusiaan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6533_kemanusiaan_dan_keadilan, 'Kemanusiaan dan Keadilan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6533_kemanusiaan_dan_keadilan, 'Tugas', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6534_sebuah_tambang, 'Sebuah Tambang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6534_sebuah_tambang, 'Milikku', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6535_bijih, 'Bijih', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6535_bijih, 'Mineral', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6536_mineral, 'Mineral', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6537_tambang_batu_bara, 'Tambang batu bara', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6537_tambang_batu_bara, 'Lubang Batubara', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6538_bijih_besi, 'Bijih besi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6539_industri_pertambangan, 'Industri Pertambangan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6540_untuk_tiba_di, 'Untuk Tiba Di', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6541_titik_balik_matahari_musim_panas, 'Titik Balik Matahari Musim Panas', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6542_titik_balik_matahari_musim_dingin, 'Titik Balik Matahari Musim Dingin', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6543_tidak_bisa_dihindari, 'Tidak bisa dihindari', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6543_tidak_bisa_dihindari, 'Diperlukan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6543_tidak_bisa_dihindari, 'Terdahulu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6544_supremasi, 'Supremasi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6545_kejujuran, 'Kejujuran', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6545_kejujuran, 'Kebenaran', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6546_kejujuran, 'Kejujuran', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6546_kejujuran, 'Itikad Baik', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6547_jujur, 'Jujur', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6547_jujur, 'Jujur', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6547_jujur, 'Setia', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6548_loyalitas, 'Loyalitas', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6549_kampung_halaman, 'kampung halaman', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6549_kampung_halaman, 'Tempat lahir', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6550_kampung_halaman, 'kampung halaman', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6550_kampung_halaman, 'Tempat lahir', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6551_untuk_kembali_ke_kampung_halaman_seseorang, 'Untuk Kembali Ke Kampung Halaman Seseorang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6552_invasi, 'Invasi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6553_intrusi, 'Intrusi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6553_intrusi, 'Penetrasi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6554_untuk_menyerang, 'Untuk Menyerang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6554_untuk_menyerang, 'Untuk Melanggar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6554_untuk_menyerang, 'Untuk Mengganggu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6555_pelanggaran, 'Pelanggaran', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6555_pelanggaran, 'Pelanggaran', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6556_palsu, 'Palsu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6556_palsu, 'Imitasi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6557_berbohong, 'Berbohong', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6557_berbohong, 'Untuk menipu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6557_berbohong, 'Untuk Menipu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6558_kamuflase, 'Kamuflase', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6558_kamuflase, 'Samaran', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6559_pemalsuan, 'Pemalsuan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8731_dengan_enggan, 'Dengan enggan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8731_dengan_enggan, 'Dengan enggan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8845_berbohong, 'Berbohong', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8846_pembohong, 'Pembohong', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8902_luar_biasa, 'Luar biasa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8902_luar_biasa, 'Luar biasa', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8902_luar_biasa, 'Sangat buruk', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8902_luar_biasa, 'Buruk sekali', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8904_sangat_mengerikan, 'Sangat Mengerikan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8904_sangat_mengerikan, 'Sangat sengit', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8904_sangat_mengerikan, 'Sangat Kekerasan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8924_bertarung, 'Bertarung', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8924_bertarung, 'Pertengkaran', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8924_bertarung, 'Argumen', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8925_bising, 'Bising', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8925_bising, 'Pemilih', false, true);

  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4034_lemah, 'きょじゃく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6115_hongkong, 'ほんこん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6354_pemakaman, 'そうぎ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6454_untuk_abstain, 'ひかえる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6455_untuk_berkelompok, 'むれる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6458_kamar_kecil, 'おてあらい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6459_prefektur_gifu, 'ぎふけん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6460_pemberi_pekerjaan, 'こようしゃ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6461_fragmen, 'はへん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6462_maaf, 'ごめんなさい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6463_kesejahteraan_sosial, 'しゃかいふくし', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6464_rendah_hati, 'けんそん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6465_pistol, 'けんじゅう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6466_pertimbangan, 'おもいやり', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6467_bom_atom, 'げんばく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6468_shibuya, 'しぶや', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6469_untuk_mengisi_baterai, 'じゅうでんする', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6470_kemampuan, 'かいしょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6471_alasan_untuk_hidup, 'いきがい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6472_punggung_tangan_seseorang, 'てのこう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6473_layak_dilakukan, 'やりがい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6474_melompat, 'おどり', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6475_untuk_bertanya, 'うかがう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6476_untuk_mengabdikan_diri_sendiri, 'てっする', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6477_sepanjang_malam, 'てつや', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6478_ketelitian, 'てってい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6479_seto, 'せと', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6480_dangkal, 'たかせ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6481_arus_cepat, 'はやせ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6482_jeram, 'せ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6483_penarikan, 'てっきょ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6484_penarikan, 'てっかい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6485_penarikan_pasukan, 'てっぺい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6486_tindakan, 'そち', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6487_susunan_kata, 'そじ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6488_untuk_didasarkan_pada, 'よる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6489_posisi, 'きょてん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6490_bukti_fisik, 'しょうこ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6491_dasar, 'こんきょ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6492_tata_krama, 'れいぎ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6493_upacara, 'ぎしき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6494_hadiah_ucapan_selamat, 'しゅうぎ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6495_untuk_membungkuk, 'じぎする', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6496_pohon_buah, 'かじゅ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6497_kulit_kayu, 'じゅひ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6498_penanaman_pohon, 'しょくじゅ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6499_pengabaian, 'ほうき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6500_pembuangan, 'はいき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6502_harimau, 'とら', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6503_kunang_kunang, 'ほたる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6504_lebah, 'はち', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6505_sayang, 'はちみつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6506_shochu, 'しょうちゅう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6507_sayang, 'みつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6508_reruntuhan, 'はいきょ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6509_kapal_perang, 'かんせん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6510_armada_angkatan_laut, 'かんたい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6511_kapal_perang, 'ぐんかん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6512_kapal_selam, 'せんすいかん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6513_kapal_induk, 'こうくうぼかん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6514_untuk_mengintai, 'ひそむ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6515_kapal_selam_nuklir, 'げんせん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6516_menyelam, 'せんすい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6517_bawah_sadar, 'せんざいいしき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6518_tinju, 'こぶし', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6519_tinju_terkepal, 'げんこつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6520_arang, 'すみ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6521_karbon, 'たんそ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6522_batu_bara, 'せきたん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6523_bidang, 'はたけ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6524_bidang, 'たはた', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6525_ladang_gandum, 'むぎばたけ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6526_untuk_membungkus, 'つつむ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6526_untuk_membungkus, 'くるむ', NULL, false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6527_pisau_dapur, 'ほうちょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6528_pengepungan, 'ほうい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6532_kemanusiaan, 'じん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6533_kemanusiaan_dan_keadilan, 'じんぎ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6534_sebuah_tambang, 'こうざん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6535_bijih, 'こうせき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6536_mineral, 'こうぶつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6537_tambang_batu_bara, 'たんこう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6538_bijih_besi, 'てっこう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6539_industri_pertambangan, 'こうぎょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6540_untuk_tiba_di, 'いたる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6541_titik_balik_matahari_musim_panas, 'げし', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6542_titik_balik_matahari_musim_dingin, 'とうじ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6543_tidak_bisa_dihindari, 'ひっし', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6544_supremasi, 'しじょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6545_kejujuran, 'まこと', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6546_kejujuran, 'せいい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6547_jujur, 'せいじつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6548_loyalitas, 'ちゅうせい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6549_kampung_halaman, 'きょうり', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6550_kampung_halaman, 'こきょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6550_kampung_halaman, 'ふるさと', NULL, false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6551_untuk_kembali_ke_kampung_halaman_seseorang, 'ききょうする', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6552_invasi, 'しんこう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6553_intrusi, 'しんにゅう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6554_untuk_menyerang, 'おかす', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6555_pelanggaran, 'しんがい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6556_palsu, 'にせ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6557_berbohong, 'いつわる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6558_kamuflase, 'ぎそう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6559_pemalsuan, 'ぎぞう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8731_dengan_enggan, 'しぶしぶ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8845_berbohong, 'うそ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8846_pembohong, 'うそつき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8902_luar_biasa, 'すごい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8904_sangat_mengerikan, 'せいぜつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8924_bertarung, 'けんか', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8925_bising, 'やかましい', NULL, true, true);

  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4034_lemah, '私は生前、虚弱すぎてベッドから出られなかったんです。', 'Saya terlalu lemah untuk bangun dari tempat tidur sebelum saya meninggal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4034_lemah, '私の弟は生まれつき虚弱で、運動はできません。', 'Adik laki-laki saya terlahir lemah dan tidak mampu berolahraga.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4034_lemah, 'マスク生活で何年も外気にさらされなかったせいで、気道が虚弱になってるのかもしれません。', 'Mungkin saluran pernafasan saya lemah karena sudah bertahun-tahun tidak terpapar udara luar akibat hidup menggunakan masker.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6115_hongkong, '週の前半は出張で香港にいます。', 'Saya akan berada di Hong Kong pada awal minggu untuk perjalanan bisnis.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6354_pemakaman, '中村は、葬儀に一人で行くと言って聞かなかった。', 'Nakamura bersikeras untuk pergi ke pemakaman sendirian.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6454_untuk_abstain, 'お酒を控えるなんてらしくないね。もしかして、妊娠したとか？', 'Bukan berarti Anda tidak mengonsumsi alkohol. Kecuali mungkin, apakah Anda hamil?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6455_untuk_berkelompok, 'どうして日本では、不良少年少女は、コンビニの前で群れる傾向があるんでしょうか。', 'Entah kenapa anak-anak nakal cenderung nongkrong di depan minimarket di Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6458_kamar_kecil, '何時までに御手洗からバスに戻らなくてはいけませんか？行列ができているので、遅れないか心配してるんですが。', 'Berapa lama lagi kita harus kembali ke bus dari kamar mandi? Antreannya panjang, jadi saya khawatir saya akan terlambat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6459_prefektur_gifu, '岐阜県に行くには、電車の乗り換えが必要ですか？', 'Apakah saya harus berganti kereta untuk sampai ke prefektur Gifu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6460_pemberi_pekerjaan, '雇用者に新しい電話番号を何度も教えてるのに、いっつも古い方の番号に掛けてくるんだよな。', 'Saya sudah berulang kali memberitahukan nomor telepon saya yang baru kepada majikan saya, namun dia selalu menelepon saya dengan nomor yang lama.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6461_fragmen, '地面はガラスの破片だらけなので、気をつけて下さい。', 'Tanahnya tertutup pecahan kaca, jadi berhati-hatilah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6462_maaf, '御免なさい。このＴシャツのMサイズは売り切れちゃったんです。', 'Saya minta maaf. Kami kehabisan stok ukuran medium untuk T-shirt ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6463_kesejahteraan_sosial, '明日なら、家族の墓参りをした後に、その社会福祉施設に寄れなくもないよ。', 'Saya bisa mampir ke fasilitas kesejahteraan sosial setelah mengunjungi makam keluarga saya besok.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6464_rendah_hati, 'その四十歳のGoogle社員は、自分の事を謙遜して「過去の遺物だ」なんて言っていたが、実際は全然そんなことないからね。', 'Pekerja Google berusia 40 tahun itu begitu rendah hati sehingga dia menyebut dirinya peninggalan dari zaman lain, padahal hal ini sama sekali tidak benar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6465_pistol, '私は拳銃を派手なスパンコールで飾り付けしてみました。', 'Saya menghiasi pistol saya dengan payet yang mencolok.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6466_pertimbangan, '思い遣りのつもりだったのかもしれないけど、嘘なんてついてほしくなかった。', 'Mungkin kamu melakukannya karena pertimbangan, tapi aku tidak ingin kamu berbohong.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6466_pertimbangan, '思い遣りのカケラもない奴だと思っていたが、そんなことはなかった。', 'Tadinya kukira dia pria yang tidak punya belas kasihan sedikit pun, tapi ternyata aku salah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6466_pertimbangan, 'こんなに臭い部屋でいつまでも待たせるなんて、あいつはなんて思い遣りのないやつなんだ。', 'Dia tidak terlalu perhatian jika membuat kita menunggu terlalu lama di ruangan bau seperti ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6467_bom_atom, '原爆のことを言ってるんじゃないよ。', 'Saya tidak berbicara tentang bom atom.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6468_shibuya, '私はよく渋谷駅で外国人を見ます。', 'Saya biasanya melihat orang asing di Stasiun Shibuya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6469_untuk_mengisi_baterai, '充電するのを忘れたから携帯の電源が切れて、目覚ましが鳴らなかったんだ。', 'Saya lupa mengisi baterai dan ponsel saya mati, sehingga alarm saya tidak berbunyi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6470_kemampuan, 'どうしてあの甲斐性無しが彼女の愛を復活させることができたのか、全く理解できないね。', 'Aku benar-benar tidak mengerti bagaimana pria tidak kompeten seperti itu bisa menghidupkan kembali cintanya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6471_alasan_untuk_hidup, 'ロッククライミングは私の生き甲斐です。', 'Panjat tebing adalah tujuan hidup saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6472_punggung_tangan_seseorang, 'とても綺麗な手の甲を持っていることが彼女の自慢です。', 'Dia bangga karena punggung tangannya sangat indah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6473_layak_dilakukan, 'この仕事は、誰かのために役に立つことができるので、とてもやり甲斐があります。', 'Pekerjaan ini sungguh bermanfaat karena saya bisa berguna bagi orang lain.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6474_melompat, '私は小躍りして喜びました。', 'Saya melompat kegirangan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6475_untuk_bertanya, '残って最後まで彼の話を伺いたいのは山々なんですが、残念ながらどうしても行かなくてはいけないんです。', 'Saya ingin sekali tinggal di sini dan mendengarkan seluruh pidatonya, tapi sayangnya saya harus pergi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6476_untuk_mengabdikan_diri_sendiri, 'ギャンブルに徹する覚悟を決めました。', 'Saya bertekad untuk mengabdikan diri pada perjudian.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6477_sepanjang_malam, '英語を徹夜で勉強するなんて、いかにもあの子らしいよね。', 'Seperti dia belajar bahasa Inggris sepanjang malam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6478_ketelitian, '彼女は徹底した化粧を施さないと、外出することができません。', 'Dia tidak bisa keluar sampai dia benar-benar merias wajahnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6479_seto, '瀬戸内海の魚は美味しい。', 'Ikan dari Laut Pedalaman Seto memang enak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6479_seto, '赤西仁を瀬戸市で見たよ。', 'Saya melihat Jin Akanishi di Kota Seto.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6479_seto, '今日市場ですごくいい瀬戸物を見つけたんだよ。', 'Saya menemukan peralatan Seto yang sangat bagus di pasaran saat ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6480_dangkal, 'この川はこの辺りは高瀬になってるから、きっと足が底に着くと思うよ。', 'Sungai di sekitar sini cukup dangkal, jadi saya yakin Anda akan mencapai dasarnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6481_arus_cepat, '小舟は早瀬で横転してしまいました。', 'Perahu terbalik di tengah arus deras.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6482_jeram, '「沈む瀬あれば浮かぶ瀬あり」なんていう言い回しがあるのは知ってるけど、今はマジで沈んでるわ。', 'Aku tahu ada pepatah, “hidup ada pasang surutnya,” tapi saat ini aku benar-benar terpuruk.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6483_penarikan, '瓦礫の撤去に関するニュースをネットで読みました。', 'Saya membaca berita tentang menghilangkan puing-puing di internet.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6484_penarikan, 'ごめん。前言撤回するよ。', 'Maaf, saya menarik kembali apa yang saya katakan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6484_penarikan, '部長から辞表の撤回を求められて困っています。', 'Saya agak terbebani karena manajer saya mendesak saya untuk menarik pengunduran diri saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6484_penarikan, 'スト撤回の知らせがラインで回ってきた。', 'Saya mendapat pesan yang beredar di LINE bahwa pemogokan telah dibatalkan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6485_penarikan_pasukan, '私はその撤兵を恥じた事は一度もありません。', 'Saya tidak pernah merasa malu dengan penarikan pasukan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6486_tindakan, 'その生徒の今後の措置についてはどうお考えですか。', 'Apa pendapat Anda tentang langkah selanjutnya untuk siswa tersebut?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6487_susunan_kata, '君の詩の措辞が素晴らしいことに感動しました。', 'Saya tersentuh oleh betapa indahnya kata-kata puisi Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6488_untuk_didasarkan_pada, '皆様のお力に拠って、成功することができました。感謝の気持ちをこめて、ベーコンをプレゼントさせて頂きます。', 'Saya bisa sukses karena dukungan semua orang. Aku akan memberi kalian banyak bacon sebagai ucapan terima kasih.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6489_posisi, '我々は生産拠点を海外に移します。', 'Kami akan memindahkan basis produksi kami ke luar negeri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6490_bukti_fisik, '私が不法侵入をしたという証拠はあるんですか。', 'Apakah Anda punya bukti fisik bahwa saya melakukan pelanggaran?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6491_dasar, '彼が高所恐怖症だと思ったのには何か根拠があるんですか？', 'Apa dasar yang membuat Anda berpikir bahwa dia takut ketinggian?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6492_tata_krama, '日本の礼儀作法について学んでいます。', 'Saya sedang mempelajari etika Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6493_upacara, '昨夜我が家で生贄の儀式が行われた。', 'Ritual kurban diadakan di rumah saya tadi malam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6494_hadiah_ucapan_selamat, '封筒の表には「御祝儀」と自分の名前を、裏には金額を書いたよ。', 'Saya menulis "selamat" dan nama saya di bagian depan amplop dan jumlah uang di bagian belakang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6495_untuk_membungkuk, '日本人はどうしてペコペコお辞儀ばっかりするんですか？', 'Mengapa orang Jepang sering membungkuk?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6496_pohon_buah, '庭に一本、果樹を植えました。', 'Saya menanam pohon buah-buahan di halaman.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6496_pohon_buah, '果樹の世話は思った以上に大変です。', 'Merawat pohon buah-buahan ternyata lebih sulit dari yang saya kira.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6496_pohon_buah, '果樹園での仕事は結構退屈です。', 'Pekerjaan di kebun cukup membosankan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6497_kulit_kayu, 'その樹皮は食べられますか？', 'Apakah kulit kayunya bisa dimakan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6498_penanaman_pohon, '結婚の記念として、主人と私はメープルシュガーの木を植樹しました。', 'Saya dan suami menanam pohon maple gula untuk memperingati pernikahan kami.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6499_pengabaian, '私は典型的な育児放棄をされた子どもで、孤児院で育ちました。', 'Saya adalah tipikal anak terlantar yang tumbuh di panti asuhan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6500_pembuangan, '古いテレビの廃棄に支払うお金、五千円もあれば十分なんじゃないの？', '5.000 yen seharusnya cukup untuk membuang TV lama, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6502_harimau, '恐い虎の顔が描かれたお揃いのTシャツを着たカップルが、今目の前を腕を組みながら歩いています。', 'Sepasang suami istri dengan kaus serasi bergambar harimau menakutkan sedang berjalan bergandengan tangan di depanku sekarang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6503_kunang_kunang, '蛍の光は、誰にとっても見ていて心地の良いものです。', 'Pancaran kunang-kunang memang menyenangkan bagi siapapun yang menyaksikannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6504_lebah, 'スズメ蜂に腕を刺され、大きく腫れ上がりました。', 'Seekor lebah menyengat lenganku dan menjadi sangat bengkak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6505_sayang, '彼女は私の蜂蜜プリンを一口味見しました。', 'Dia menggigit puding maduku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6506_shochu, 'この焼酎のもっと大きい瓶ってありますか。', 'Apakah Anda punya botol shochu yang lebih besar?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6507_sayang, 'その熊は、蜜の入った瓶を五本、次々飲み干しました。', 'Beruang itu menelan lima botol madu, satu demi satu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6508_reruntuhan, '昨日廃墟で鬼ごっこをしたので、筋肉痛になりました。', 'Saya mengalami nyeri otot karena saya bermain kejar-kejaran di gedung yang ditinggalkan kemarin.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6509_kapal_perang, 'いったいまたどうして艦船に住むことになったんですか？月々のお家賃はいくらぐらいですか。', 'Bagaimana Anda bisa tinggal di kapal perang? Berapa harga sewanya setiap bulan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6510_armada_angkatan_laut, '敵の艦隊からもっと激しい抵抗があると思っていたので、なんだか拍子抜けです。', 'Saya mengharapkan perlawanan yang lebih kuat dari armada angkatan laut musuh, jadi saya agak kecewa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6511_kapal_perang, '軍艦プラモの専門店を開く予定なんだよ。', 'Saya akan membuka toko khusus model kapal perang plastik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6512_kapal_selam, '多分あの潜水艦の中で片方のイヤリングを失くしてしまったの。', 'Saya mungkin kehilangan anting-anting saya yang lain saat berada di kapal selam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6513_kapal_induk, 'その航空母艦は突然視界から消えたんです。', 'Kapal induk itu tiba-tiba menghilang dari pandanganku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6514_untuk_mengintai, 'ワニカニはあなたの部屋の片隅に潜んでいるかもしれませんよ。', 'Kepiting mungkin bersembunyi di sudut kamar Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6515_kapal_selam_nuklir, '原子力潜水艦は、略して原潜と呼ばれることもある。', 'Kapal selam nuklir kadang-kadang disebut Gensen.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6516_menyelam, 'うちの妹は今年の夏に潜水士免許を取得したんだよ。', 'Adikku mendapatkan lisensi penyelamnya musim panas ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6517_bawah_sadar, '夢ってのは、僕たちの潜在意識を反映しているとよく言われるよね。', 'Mimpi seringkali dikatakan mencerminkan alam bawah sadar kita.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6518_tinju, '彼は拳についた血をハンカチで拭いました。', 'Dia membersihkan darah dari tinjunya dengan saputangannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6519_tinju_terkepal, '父は、僕に拳骨を食らわせるふりをしました。', 'Ayahku berpura-pura memukulku dengan tangan terkepal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6520_arang, '彼の口車に乗って、炭をしこたま購入してしまった。', 'Saya akhirnya membeli banyak arang karena bujukannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6521_karbon, '一酸化炭素と二酸化炭素の違いは何ですか？', 'Apa perbedaan antara karbon monoksida dan karbon dioksida?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6522_batu_bara, '彼は、石炭ビジネスでの成功を自慢しました。', 'Ia sesumbar sukses di bisnis batu bara.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6523_bidang, '私は、苺畑づたいにヨロヨロと歩いている老人を見かけました。', 'Saya melihat seorang lelaki tua tersandung di sepanjang ladang stroberi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6524_bidang, '今時田畑を機械を使わずに耕すなんて、時間の無駄だよ。', 'Saat ini membajak sawah tanpa mesin hanya membuang-buang waktu saja.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6525_ladang_gandum, '麦畑が見えてきたとたんに、くしゃみが出始めました。', 'Begitu ladang gandum terlihat, saya mulai bersin.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6526_untuk_membungkus, 'こんな形の物、どうやって包むつもりなの？', 'Bagaimana Anda akan membungkus sesuatu yang berbentuk seperti ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6526_untuk_membungkus, '店員さんがきれいに商品を包んでくれました。', 'Petugas toko membungkus barang itu dengan rapi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6526_untuk_membungkus, 'クリスマスの時のアルバイトで、プレゼントの包み方を学びました。', 'Saya belajar cara membungkus hadiah selama waktu Natal di pekerjaan paruh waktu saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6526_untuk_membungkus, '睡眠薬をビニールラップで包みました。', 'Aku membungkus obat tidurku dengan bungkus plastik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6527_pisau_dapur, '包丁を研いで二、三時間潰しました。', 'Saya menghabiskan beberapa jam dengan mengasah pisau dapur saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6528_pengepungan, 'その建物はじきに警察に包囲されるでしょう。', 'Gedung itu akan dikepung oleh polisi sebentar lagi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6532_kemanusiaan, '私の一番好きな日本の諺は、「身を殺して仁を成す」です。', 'Pepatah Jepang favorit saya adalah "mengorbankan hidup untuk berbuat baik".');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6533_kemanusiaan_dan_keadilan, '盗人には仁義はない。', 'Tidak ada kehormatan di antara pencuri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6534_sebuah_tambang, '鉱山で働いてる時は、いつも背中に痛みがありました。', 'Ketika saya bekerja di pertambangan, punggung saya selalu sakit.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6535_bijih, 'どんな鉱石でも、彼が触ると金に変わってしまうのさ。', 'Setiap mineral yang disentuhnya berubah menjadi emas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6536_mineral, 'これは今までで最高の鉱物さ。これに敵うものはないね。', 'Ini adalah mineral terbaik yang pernah saya lihat. Tidak ada yang bisa menandinginya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6537_tambang_batu_bara, 'うーん。この炭鉱が閉山するってのは、本当に残念ですね。', 'Wah, sungguh mengecewakan tambang batu bara ini ditutup.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6538_bijih_besi, 'マイクラでたくさん鉄鉱石を採掘した。', 'Saya menambang banyak bijih besi di Minecraft.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6539_industri_pertambangan, '彼は鉱業の過去十年間を振り返りました。', 'Dia melihat kembali 10 tahun terakhir industri pertambangan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6540_untuk_tiba_di, 'そういう訳で、あの化け物は今日に至るまで牢屋にぶちこまれることになったんですよ。', 'Dan begitulah monster itu berakhir di balik jeruji besi hingga hari ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6541_titik_balik_matahari_musim_panas, '父に夏至から11日目のことを何と呼ぶか知っているかと聞かれたので、得意気に「ハゲ症」って答えたんですけど、それって「ハゲ頭の症状」って意味になるみたいで。父は笑って、正しい答えは「半夏生」だよって教えてくれましたけどね。', 'Ayah saya bertanya apakah saya tahu apa yang harus saya sebut hari kesebelas setelah titik balik matahari musim panas, jadi saya menjawab dengan penuh kemenangan "hageshou", yang secara harfiah berarti "gejala kebotakan". Dia tertawa dan memberitahuku bahwa jawaban yang benar adalah "hangeshou."');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6542_titik_balik_matahari_musim_dingin, 'どうして日本では冬至の日にカボチャを食べると良いというのですか？', 'Mengapa orang mengatakan makan labu pada titik balik matahari musim dingin di Jepang adalah hal yang baik?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6543_tidak_bisa_dihindari, '子どもへの性教育はある時期では必至になると思うんですが、日本はそうした教育については通常どのように行われるんですか。', 'Saya pikir pendidikan seks pada anak-anak perlu diajarkan pada suatu saat, tapi bagaimana biasanya orang-orang di Jepang mengajarkan hal-hal tersebut?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6544_supremasi, '彼は名門大学を主席で卒業した頭のいい男性なんでしょうが、明らかに白人至上主義者なのでそこが嫌いなんですよ。', 'Dia mungkin orang pintar yang lulus dengan nilai terbaik di kelasnya dari universitas elit, tapi dia jelas seorang supremasi kulit putih dan saya benci itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6545_kejujuran, 'この映画には武士の誠の姿が描かれています。', 'Film ini menggambarkan kebenaran tentang samurai.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6545_kejujuran, '裁判官が彼の心神喪失による刑事責任能力の回避の申し立てを受け入れたことは、誠に遺憾です。', 'Saya benar-benar kesal karena hakim menerima pengakuan tidak bersalahnya dengan alasan kegilaan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6546_kejujuran, '誠意のこもった説明が聞けたので、今回は彼女の言い分を聞いて上げることにしました。', 'Setelah mendengar penjelasan tulusnya, kali ini saya memutuskan untuk memberinya manfaat dari keraguan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6547_jujur, '彼は僕の誠実な友人だから、心配する必要は無いよ。絶対に取引から手を引いたりなんかしないさ。', 'Dia adalah teman setiaku, jadi jangan khawatir. Dia tidak akan pernah mundur dari kesepakatan itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6548_loyalitas, '今振り返ってみると、ハチ公は絶対的な忠誠心を持ったいい犬だったよな。', 'Melihat ke belakang, Hachiko adalah seekor anjing yang memiliki kesetiaan mutlak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6549_kampung_halaman, '郷里を訪れるのはお金と時間の無駄です。', 'Mengunjungi kampung halaman saya hanya membuang-buang waktu dan uang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6550_kampung_halaman, '聞いたところによると、彼女、離婚後故郷に戻ったらしいぜ。', 'Dari apa yang saya dengar, dia pindah kembali ke kampung halamannya setelah perceraian.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6551_untuk_kembali_ke_kampung_halaman_seseorang, 'ほとんどの博打打ちが思っているように、彼女も自分には天分があると思っていたんだが、結局あるポーカーのゲームで全財産を失って、帰郷するはめになったんだ。', 'Seperti kebanyakan penjudi, dia percaya bahwa dia mempunyai bakat, namun pada akhirnya dia kehilangan segalanya karena permainan poker dan harus kembali ke kampung halamannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6552_invasi, '奴らが山のてっぺんにある俺たちの村を侵攻しようとした時、敵陣が全員高山病に罹ってしまったのには笑えたよ。', 'Lucu sekali ketika mereka mencoba menyerang desa kami yang berada jauh di puncak gunung, seluruh kamp musuh terkena penyakit ketinggian.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6553_intrusi, 'このコンピュータウィルスは、大晦日の夜に時計の針が12時を告げると、何千台ものパソコンに侵入をするんですよ。', 'Virus komputer ini akan menembus ribuan komputer pada tengah malam di malam Tahun Baru.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6554_untuk_menyerang, 'たくさんの人たちが、プライバシーを侵されたことに憤慨しています。', 'Banyak orang kesal karena privasi mereka dilanggar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6555_pelanggaran, '髭を禁止することは人権侵害です。', 'Melarang rambut di wajah merupakan pelanggaran hak asasi manusia.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6556_palsu, '彼は偽の身分証を使っていた。', 'Dia menggunakan ID palsu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6556_palsu, '偽アカウントに気をつけてください。アイコンが女子高生でも中身はおじさんかもしれません。', 'Hati-hati terhadap akun palsu. Meskipun ikonnya adalah seorang gadis SMA, orang di baliknya mungkin adalah seorang lelaki tua.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6556_palsu, '人間なんだから、偽の笑顔で乗り切れない日もあるよ。', 'Kita hanya manusia, jadi ada saatnya kita tidak bisa bertahan dengan senyuman palsu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6557_berbohong, '日本では「言わぬが花」だと聞いたので、日本にいる間中自分は口がきけないと偽りました。', 'Saya mendengar "diam adalah suatu kebajikan" di Jepang, jadi saya berpura-pura tidak mampu berbicara saat berada di sana.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6558_kamuflase, '伯父は、自社製品の表示を偽装して逮捕され、現在は刑務所にいます。', 'Paman saya ditangkap karena menyamarkan produknya dengan label palsu dan saat ini berada di penjara.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6559_pemalsuan, '全く同じ日に、二種類の偽造紙幣が東京で出回り出しました。', 'Dua jenis uang palsu mulai beredar di Tokyo pada hari yang sama.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8731_dengan_enggan, '渋々自分がやったことを認めました。', 'Saya dengan enggan mengakui hal-hal yang saya lakukan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8845_berbohong, '嘘ですよね？', 'Itu tidak benar, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8845_berbohong, '「嘘をつかない」は私のモットーです。', 'Motto saya adalah, "Saya tidak akan berbohong."');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8845_berbohong, '宝くじで1億円当たったなんて、嘘の話みたいで信じられない！', 'Mengatakan kamu memenangkan 100 juta yen dalam lotere terdengar seperti sebuah kebohongan, aku tidak percaya itu!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8846_pembohong, 'ウソップは嘘吐きだ。', 'Usopp adalah pembohong.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8846_pembohong, 'フグ子ちゃん、大嘘つきの彼氏がいて、よくケンカするんだって。', 'Rupanya Fuguko mempunyai pacar yang sangat pembohong dan mereka cukup sering bertengkar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8846_pembohong, 'その時代、嘘吐きは全員燃やされていた。', 'Di era itu, semua pembohong harus dibakar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8902_luar_biasa, '生後半年で話せるようになったなんて、凄い！', 'Sungguh menakjubkan dia bisa berbicara setengah tahun setelah dia lahir!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8902_luar_biasa, '雨、凄いですね。', 'Hujannya deras sekali ya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8902_luar_biasa, '東大に受かったなんて、凄いじゃないですか！', 'Sungguh luar biasa Anda diterima di Universitas Tokyo!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8904_sangat_mengerikan, '殺人現場は凄絶だった。', 'Adegan pembunuhan itu sangat mengerikan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8904_sangat_mengerikan, '私の祖母は戦争を経験し、凄絶な時代を生きました。', 'Nenek saya mengalami perang dan hidup di era yang sangat sengit.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8904_sangat_mengerikan, 'たった今、世界の凄絶さを目にした気がした。', 'Saya merasa seperti baru saja melihat kekerasan ekstrem di dunia ini dengan mata kepala sendiri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8924_bertarung, '喧嘩しないでよ。', 'Berhenti berkelahi!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8924_bertarung, '妖精同士の喧嘩って、見たことある？', 'Pernahkah Anda melihat peri berkelahi?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8924_bertarung, '夫婦喧嘩に第三者が口を挟んでくるなよ。', 'Sebagai pihak ketiga, jangan ikut campur dalam argumen pasangan kita!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8925_bising, '「ああ、喧しい！だまれ！」', '"Ahh, berisik sekali. Diam!"');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8925_bising, '喧しくてワニカニに集中できない。', 'Berisik sekali sampai aku tidak bisa fokus pada WaniKani.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8925_bising, 'あいつは妖怪について喧しく質問してくるのでうざい。', 'Orang itu menggangguku dengan begitu banyak pertanyaan terkait Yokai, dia sangat menyebalkan.');

  -- 4. PREREQUISITES
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1774_rendah_hati, id FROM items WHERE type = 'radical' AND (slug = '114' OR id = '114') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1774_rendah_hati, id FROM items WHERE type = 'radical' AND (slug = '34' OR id = '34') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1774_rendah_hati, id FROM items WHERE type = 'radical' AND (slug = '329' OR id = '329') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1775_menanyakan, id FROM items WHERE type = 'radical' AND (slug = '75' OR id = '75') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1775_menanyakan, id FROM items WHERE type = 'radical' AND (slug = '266' OR id = '266') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1776_menembus, id FROM items WHERE type = 'radical' AND (slug = '99' OR id = '99') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1776_menembus, id FROM items WHERE type = 'radical' AND (slug = '8776' OR id = '8776') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1776_menembus, id FROM items WHERE type = 'radical' AND (slug = '43' OR id = '43') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1776_menembus, id FROM items WHERE type = 'radical' AND (slug = '60' OR id = '60') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1777_jeram, id FROM items WHERE type = 'radical' AND (slug = '103' OR id = '103') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1777_jeram, id FROM items WHERE type = 'radical' AND (slug = '219' OR id = '219') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1777_jeram, id FROM items WHERE type = 'radical' AND (slug = '184' OR id = '184') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1778_penarikan, id FROM items WHERE type = 'radical' AND (slug = '63' OR id = '63') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1778_penarikan, id FROM items WHERE type = 'radical' AND (slug = '8776' OR id = '8776') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1778_penarikan, id FROM items WHERE type = 'radical' AND (slug = '43' OR id = '43') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1778_penarikan, id FROM items WHERE type = 'radical' AND (slug = '60' OR id = '60') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1779_menyisihkan, id FROM items WHERE type = 'radical' AND (slug = '63' OR id = '63') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1779_menyisihkan, id FROM items WHERE type = 'radical' AND (slug = '256' OR id = '256') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1780_berdasarkan, id FROM items WHERE type = 'radical' AND (slug = '63' OR id = '63') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1780_berdasarkan, id FROM items WHERE type = 'radical' AND (slug = '60' OR id = '60') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1780_berdasarkan, id FROM items WHERE type = 'radical' AND (slug = '177' OR id = '177') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1781_upacara, id FROM items WHERE type = 'radical' AND (slug = '75' OR id = '75') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1781_upacara, id FROM items WHERE type = 'radical' AND (slug = '383' OR id = '383') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1782_kayu, id FROM items WHERE type = 'radical' AND (slug = '23' OR id = '23') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1782_kayu, id FROM items WHERE type = 'radical' AND (slug = '421' OR id = '421') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1782_kayu, id FROM items WHERE type = 'radical' AND (slug = '74' OR id = '74') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1783_meninggalkan, id FROM items WHERE type = 'radical' AND (slug = '8776' OR id = '8776') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1783_meninggalkan, id FROM items WHERE type = 'radical' AND (slug = '235' OR id = '235') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1784_harimau, id FROM items WHERE type = 'radical' AND (slug = '254' OR id = '254') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1784_harimau, id FROM items WHERE type = 'radical' AND (slug = '28' OR id = '28') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1785_kunang_kunang, id FROM items WHERE type = 'radical' AND (slug = '8769' OR id = '8769') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1785_kunang_kunang, id FROM items WHERE type = 'radical' AND (slug = '89' OR id = '89') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1786_lebah, id FROM items WHERE type = 'radical' AND (slug = '89' OR id = '89') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1786_lebah, r_381_plang);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1787_minuman_keras, id FROM items WHERE type = 'radical' AND (slug = '182' OR id = '182') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1787_minuman_keras, id FROM items WHERE type = 'radical' AND (slug = '74' OR id = '74') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1788_sayang, id FROM items WHERE type = 'radical' AND (slug = '78' OR id = '78') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1788_sayang, id FROM items WHERE type = 'radical' AND (slug = '343' OR id = '343') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1788_sayang, id FROM items WHERE type = 'radical' AND (slug = '89' OR id = '89') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1789_reruntuhan, id FROM items WHERE type = 'radical' AND (slug = '17' OR id = '17') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1789_reruntuhan, id FROM items WHERE type = 'radical' AND (slug = '254' OR id = '254') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1789_reruntuhan, r_8796_kaktus);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1790_kapal_perang, id FROM items WHERE type = 'radical' AND (slug = '149' OR id = '149') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1790_kapal_perang, id FROM items WHERE type = 'radical' AND (slug = '328' OR id = '328') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1791_menutupi, id FROM items WHERE type = 'radical' AND (slug = '103' OR id = '103') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1791_menutupi, id FROM items WHERE type = 'radical' AND (slug = '146' OR id = '146') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1791_menutupi, id FROM items WHERE type = 'radical' AND (slug = '22' OR id = '22') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1792_tinju, id FROM items WHERE type = 'radical' AND (slug = '8819' OR id = '8819') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1792_tinju, id FROM items WHERE type = 'radical' AND (slug = '41' OR id = '41') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1793_arang, id FROM items WHERE type = 'radical' AND (slug = '20' OR id = '20') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1793_arang, id FROM items WHERE type = 'radical' AND (slug = '116' OR id = '116') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1793_arang, id FROM items WHERE type = 'radical' AND (slug = '46' OR id = '46') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1794_bidang, id FROM items WHERE type = 'radical' AND (slug = '46' OR id = '46') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1794_bidang, id FROM items WHERE type = 'radical' AND (slug = '51' OR id = '51') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1795_membungkus, id FROM items WHERE type = 'radical' AND (slug = '395' OR id = '395') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1797_kemanusiaan, id FROM items WHERE type = 'radical' AND (slug = '75' OR id = '75') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1797_kemanusiaan, id FROM items WHERE type = 'radical' AND (slug = '7' OR id = '7') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1798_mineral, id FROM items WHERE type = 'radical' AND (slug = '118' OR id = '118') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1798_mineral, id FROM items WHERE type = 'radical' AND (slug = '382' OR id = '382') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1799_mencapai, id FROM items WHERE type = 'radical' AND (slug = '274' OR id = '274') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1800_kejujuran, id FROM items WHERE type = 'radical' AND (slug = '117' OR id = '117') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1800_kejujuran, id FROM items WHERE type = 'radical' AND (slug = '263' OR id = '263') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1801_kampung_halaman, id FROM items WHERE type = 'radical' AND (slug = '87' OR id = '87') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1801_kampung_halaman, id FROM items WHERE type = 'radical' AND (slug = '8829' OR id = '8829') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1802_menyerbu, id FROM items WHERE type = 'radical' AND (slug = '75' OR id = '75') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1802_menyerbu, id FROM items WHERE type = 'radical' AND (slug = '105' OR id = '105') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1802_menyerbu, id FROM items WHERE type = 'radical' AND (slug = '76' OR id = '76') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1802_menyerbu, id FROM items WHERE type = 'radical' AND (slug = '30' OR id = '30') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1803_palsu, id FROM items WHERE type = 'radical' AND (slug = '75' OR id = '75') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1803_palsu, id FROM items WHERE type = 'radical' AND (slug = '355' OR id = '355') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_8836_berbohong, id FROM items WHERE type = 'radical' AND (slug = '16' OR id = '16') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_8836_berbohong, id FROM items WHERE type = 'radical' AND (slug = '254' OR id = '254') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_8836_berbohong, id FROM items WHERE type = 'radical' AND (slug = '8768' OR id = '8768') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_8886_luar_biasa, id FROM items WHERE type = 'radical' AND (slug = '123' OR id = '123') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_8886_luar_biasa, r_8856_istri);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_8922_bising, id FROM items WHERE type = 'radical' AND (slug = '16' OR id = '16') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_8922_bising, r_8906_menyatakan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_8923_gaduh, id FROM items WHERE type = 'radical' AND (slug = '16' OR id = '16') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_8923_gaduh, r_335_menyolok);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4034_lemah, id FROM items WHERE type = 'kanji' AND (slug = '1017' OR id = '1017') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4034_lemah, id FROM items WHERE type = 'kanji' AND (slug = '661' OR id = '661') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6115_hongkong, id FROM items WHERE type = 'kanji' AND (slug = '1665' OR id = '1665') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6115_hongkong, id FROM items WHERE type = 'kanji' AND (slug = '843' OR id = '843') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6354_pemakaman, id FROM items WHERE type = 'kanji' AND (slug = '1674' OR id = '1674') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6354_pemakaman, k_1781_upacara);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6454_untuk_abstain, id FROM items WHERE type = 'kanji' AND (slug = '1714' OR id = '1714') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6455_untuk_berkelompok, id FROM items WHERE type = 'kanji' AND (slug = '1719' OR id = '1719') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6458_kamar_kecil, id FROM items WHERE type = 'kanji' AND (slug = '1728' OR id = '1728') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6458_kamar_kecil, id FROM items WHERE type = 'kanji' AND (slug = '474' OR id = '474') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6458_kamar_kecil, id FROM items WHERE type = 'kanji' AND (slug = '1043' OR id = '1043') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6459_prefektur_gifu, id FROM items WHERE type = 'kanji' AND (slug = '1711' OR id = '1711') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6459_prefektur_gifu, id FROM items WHERE type = 'kanji' AND (slug = '1710' OR id = '1710') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6459_prefektur_gifu, id FROM items WHERE type = 'kanji' AND (slug = '731' OR id = '731') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6460_pemberi_pekerjaan, id FROM items WHERE type = 'kanji' AND (slug = '1713' OR id = '1713') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6460_pemberi_pekerjaan, id FROM items WHERE type = 'kanji' AND (slug = '525' OR id = '525') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6460_pemberi_pekerjaan, id FROM items WHERE type = 'kanji' AND (slug = '690' OR id = '690') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6461_fragmen, id FROM items WHERE type = 'kanji' AND (slug = '1582' OR id = '1582') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6461_fragmen, id FROM items WHERE type = 'kanji' AND (slug = '1718' OR id = '1718') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6462_maaf, id FROM items WHERE type = 'kanji' AND (slug = '1728' OR id = '1728') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6462_maaf, id FROM items WHERE type = 'kanji' AND (slug = '1722' OR id = '1722') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6463_kesejahteraan_sosial, id FROM items WHERE type = 'kanji' AND (slug = '591' OR id = '591') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6463_kesejahteraan_sosial, id FROM items WHERE type = 'kanji' AND (slug = '566' OR id = '566') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6463_kesejahteraan_sosial, id FROM items WHERE type = 'kanji' AND (slug = '867' OR id = '867') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6463_kesejahteraan_sosial, id FROM items WHERE type = 'kanji' AND (slug = '1734' OR id = '1734') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6464_rendah_hati, id FROM items WHERE type = 'kanji' AND (slug = '1737' OR id = '1737') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6464_rendah_hati, k_1774_rendah_hati);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6465_pistol, k_1792_tinju);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6465_pistol, id FROM items WHERE type = 'kanji' AND (slug = '1739' OR id = '1739') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6466_pertimbangan, id FROM items WHERE type = 'kanji' AND (slug = '637' OR id = '637') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6466_pertimbangan, id FROM items WHERE type = 'kanji' AND (slug = '1662' OR id = '1662') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6467_bom_atom, id FROM items WHERE type = 'kanji' AND (slug = '995' OR id = '995') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6467_bom_atom, id FROM items WHERE type = 'kanji' AND (slug = '1658' OR id = '1658') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6468_shibuya, id FROM items WHERE type = 'kanji' AND (slug = '1717' OR id = '1717') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6468_shibuya, id FROM items WHERE type = 'kanji' AND (slug = '594' OR id = '594') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6469_untuk_mengisi_baterai, id FROM items WHERE type = 'kanji' AND (slug = '1721' OR id = '1721') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6469_untuk_mengisi_baterai, id FROM items WHERE type = 'kanji' AND (slug = '706' OR id = '706') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6470_kemampuan, id FROM items WHERE type = 'kanji' AND (slug = '1732' OR id = '1732') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6470_kemampuan, id FROM items WHERE type = 'kanji' AND (slug = '1733' OR id = '1733') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6470_kemampuan, id FROM items WHERE type = 'kanji' AND (slug = '918' OR id = '918') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6471_alasan_untuk_hidup, id FROM items WHERE type = 'kanji' AND (slug = '850' OR id = '850') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6471_alasan_untuk_hidup, id FROM items WHERE type = 'kanji' AND (slug = '1732' OR id = '1732') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6471_alasan_untuk_hidup, id FROM items WHERE type = 'kanji' AND (slug = '1733' OR id = '1733') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6472_punggung_tangan_seseorang, id FROM items WHERE type = 'kanji' AND (slug = '474' OR id = '474') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6472_punggung_tangan_seseorang, id FROM items WHERE type = 'kanji' AND (slug = '1732' OR id = '1732') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6473_layak_dilakukan, id FROM items WHERE type = 'kanji' AND (slug = '1732' OR id = '1732') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6473_layak_dilakukan, id FROM items WHERE type = 'kanji' AND (slug = '1733' OR id = '1733') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6474_melompat, id FROM items WHERE type = 'kanji' AND (slug = '1738' OR id = '1738') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6475_untuk_bertanya, k_1775_menanyakan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6476_untuk_mengabdikan_diri_sendiri, k_1776_menembus);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6477_sepanjang_malam, k_1776_menembus);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6477_sepanjang_malam, id FROM items WHERE type = 'kanji' AND (slug = '622' OR id = '622') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6478_ketelitian, k_1776_menembus);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6478_ketelitian, id FROM items WHERE type = 'kanji' AND (slug = '1020' OR id = '1020') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6479_seto, k_1777_jeram);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6479_seto, id FROM items WHERE type = 'kanji' AND (slug = '509' OR id = '509') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6480_dangkal, id FROM items WHERE type = 'kanji' AND (slug = '666' OR id = '666') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6480_dangkal, k_1777_jeram);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6481_arus_cepat, id FROM items WHERE type = 'kanji' AND (slug = '547' OR id = '547') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6481_arus_cepat, k_1777_jeram);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6482_jeram, k_1777_jeram);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6483_penarikan, k_1778_penarikan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6483_penarikan, id FROM items WHERE type = 'kanji' AND (slug = '532' OR id = '532') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6484_penarikan, k_1778_penarikan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6484_penarikan, id FROM items WHERE type = 'kanji' AND (slug = '569' OR id = '569') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6485_penarikan_pasukan, k_1778_penarikan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6485_penarikan_pasukan, id FROM items WHERE type = 'kanji' AND (slug = '1000' OR id = '1000') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6486_tindakan, k_1779_menyisihkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6486_tindakan, id FROM items WHERE type = 'kanji' AND (slug = '1164' OR id = '1164') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6487_susunan_kata, k_1779_menyisihkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6487_susunan_kata, id FROM items WHERE type = 'kanji' AND (slug = '981' OR id = '981') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6488_untuk_didasarkan_pada, k_1780_berdasarkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6489_posisi, k_1780_berdasarkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6489_posisi, id FROM items WHERE type = 'kanji' AND (slug = '641' OR id = '641') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6490_bukti_fisik, id FROM items WHERE type = 'kanji' AND (slug = '987' OR id = '987') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6490_bukti_fisik, k_1780_berdasarkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6491_dasar, id FROM items WHERE type = 'kanji' AND (slug = '817' OR id = '817') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6491_dasar, k_1780_berdasarkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6492_tata_krama, id FROM items WHERE type = 'kanji' AND (slug = '541' OR id = '541') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6492_tata_krama, k_1781_upacara);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6493_upacara, k_1781_upacara);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6493_upacara, id FROM items WHERE type = 'kanji' AND (slug = '939' OR id = '939') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6494_hadiah_ucapan_selamat, id FROM items WHERE type = 'kanji' AND (slug = '1223' OR id = '1223') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6494_hadiah_ucapan_selamat, k_1781_upacara);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6495_untuk_membungkuk, id FROM items WHERE type = 'kanji' AND (slug = '981' OR id = '981') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6495_untuk_membungkuk, k_1781_upacara);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6496_pohon_buah, id FROM items WHERE type = 'kanji' AND (slug = '1005' OR id = '1005') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6496_pohon_buah, k_1782_kayu);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6497_kulit_kayu, k_1782_kayu);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6497_kulit_kayu, id FROM items WHERE type = 'kanji' AND (slug = '539' OR id = '539') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6498_penanaman_pohon, id FROM items WHERE type = 'kanji' AND (slug = '840' OR id = '840') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6498_penanaman_pohon, k_1782_kayu);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6499_pengabaian, id FROM items WHERE type = 'kanji' AND (slug = '791' OR id = '791') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6499_pengabaian, k_1783_meninggalkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6500_pembuangan, id FROM items WHERE type = 'kanji' AND (slug = '1622' OR id = '1622') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6500_pembuangan, k_1783_meninggalkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6502_harimau, k_1784_harimau);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6503_kunang_kunang, k_1785_kunang_kunang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6504_lebah, k_1786_lebah);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6505_sayang, k_1786_lebah);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6505_sayang, k_1788_sayang);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6506_shochu, id FROM items WHERE type = 'kanji' AND (slug = '1040' OR id = '1040') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6506_shochu, k_1787_minuman_keras);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6507_sayang, k_1788_sayang);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6508_reruntuhan, id FROM items WHERE type = 'kanji' AND (slug = '1622' OR id = '1622') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6508_reruntuhan, k_1789_reruntuhan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6509_kapal_perang, k_1790_kapal_perang);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6509_kapal_perang, id FROM items WHERE type = 'kanji' AND (slug = '671' OR id = '671') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6510_armada_angkatan_laut, k_1790_kapal_perang);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6510_armada_angkatan_laut, id FROM items WHERE type = 'kanji' AND (slug = '1359' OR id = '1359') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6511_kapal_perang, id FROM items WHERE type = 'kanji' AND (slug = '954' OR id = '954') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6511_kapal_perang, k_1790_kapal_perang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6512_kapal_selam, k_1791_menutupi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6512_kapal_selam, id FROM items WHERE type = 'kanji' AND (slug = '479' OR id = '479') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6512_kapal_selam, k_1790_kapal_perang);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6513_kapal_induk, id FROM items WHERE type = 'kanji' AND (slug = '1397' OR id = '1397') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6513_kapal_induk, id FROM items WHERE type = 'kanji' AND (slug = '601' OR id = '601') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6513_kapal_induk, id FROM items WHERE type = 'kanji' AND (slug = '524' OR id = '524') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6513_kapal_induk, k_1790_kapal_perang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6514_untuk_mengintai, k_1791_menutupi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6515_kapal_selam_nuklir, id FROM items WHERE type = 'kanji' AND (slug = '995' OR id = '995') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6515_kapal_selam_nuklir, k_1791_menutupi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6516_menyelam, k_1791_menutupi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6516_menyelam, id FROM items WHERE type = 'kanji' AND (slug = '479' OR id = '479') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6517_bawah_sadar, k_1791_menutupi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6517_bawah_sadar, id FROM items WHERE type = 'kanji' AND (slug = '1107' OR id = '1107') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6517_bawah_sadar, id FROM items WHERE type = 'kanji' AND (slug = '811' OR id = '811') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6517_bawah_sadar, id FROM items WHERE type = 'kanji' AND (slug = '1012' OR id = '1012') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6518_tinju, k_1792_tinju);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6519_tinju_terkepal, k_1792_tinju);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6519_tinju_terkepal, id FROM items WHERE type = 'kanji' AND (slug = '924' OR id = '924') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6520_arang, k_1793_arang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6521_karbon, k_1793_arang);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6521_karbon, id FROM items WHERE type = 'kanji' AND (slug = '1138' OR id = '1138') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6522_batu_bara, id FROM items WHERE type = 'kanji' AND (slug = '493' OR id = '493') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6522_batu_bara, k_1793_arang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6523_bidang, k_1794_bidang);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6524_bidang, id FROM items WHERE type = 'kanji' AND (slug = '490' OR id = '490') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6524_bidang, k_1794_bidang);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6525_ladang_gandum, id FROM items WHERE type = 'kanji' AND (slug = '598' OR id = '598') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6525_ladang_gandum, k_1794_bidang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6526_untuk_membungkus, k_1795_membungkus);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6527_pisau_dapur, k_1795_membungkus);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6527_pisau_dapur, id FROM items WHERE type = 'kanji' AND (slug = '464' OR id = '464') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6528_pengepungan, k_1795_membungkus);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6528_pengepungan, id FROM items WHERE type = 'kanji' AND (slug = '901' OR id = '901') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6532_kemanusiaan, k_1797_kemanusiaan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6533_kemanusiaan_dan_keadilan, k_1797_kemanusiaan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6533_kemanusiaan_dan_keadilan, id FROM items WHERE type = 'kanji' AND (slug = '1154' OR id = '1154') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6534_sebuah_tambang, k_1798_mineral);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6534_sebuah_tambang, id FROM items WHERE type = 'kanji' AND (slug = '455' OR id = '455') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6535_bijih, k_1798_mineral);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6535_bijih, id FROM items WHERE type = 'kanji' AND (slug = '493' OR id = '493') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6536_mineral, k_1798_mineral);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6536_mineral, id FROM items WHERE type = 'kanji' AND (slug = '718' OR id = '718') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6537_tambang_batu_bara, k_1793_arang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6537_tambang_batu_bara, k_1798_mineral);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6538_bijih_besi, id FROM items WHERE type = 'kanji' AND (slug = '760' OR id = '760') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6538_bijih_besi, k_1798_mineral);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6539_industri_pertambangan, k_1798_mineral);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6539_industri_pertambangan, id FROM items WHERE type = 'kanji' AND (slug = '756' OR id = '756') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6540_untuk_tiba_di, k_1799_mencapai);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6541_titik_balik_matahari_musim_panas, id FROM items WHERE type = 'kanji' AND (slug = '659' OR id = '659') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6541_titik_balik_matahari_musim_panas, k_1799_mencapai);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6542_titik_balik_matahari_musim_dingin, id FROM items WHERE type = 'kanji' AND (slug = '516' OR id = '516') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6542_titik_balik_matahari_musim_dingin, k_1799_mencapai);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6543_tidak_bisa_dihindari, id FROM items WHERE type = 'kanji' AND (slug = '655' OR id = '655') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6543_tidak_bisa_dihindari, k_1799_mencapai);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6544_supremasi, k_1799_mencapai);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6544_supremasi, id FROM items WHERE type = 'kanji' AND (slug = '450' OR id = '450') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6545_kejujuran, k_1800_kejujuran);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6546_kejujuran, k_1800_kejujuran);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6546_kejujuran, id FROM items WHERE type = 'kanji' AND (slug = '811' OR id = '811') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6547_jujur, k_1800_kejujuran);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6547_jujur, id FROM items WHERE type = 'kanji' AND (slug = '715' OR id = '715') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6548_loyalitas, id FROM items WHERE type = 'kanji' AND (slug = '1523' OR id = '1523') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6548_loyalitas, k_1800_kejujuran);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6549_kampung_halaman, k_1801_kampung_halaman);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6549_kampung_halaman, id FROM items WHERE type = 'kanji' AND (slug = '597' OR id = '597') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6550_kampung_halaman, id FROM items WHERE type = 'kanji' AND (slug = '1291' OR id = '1291') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6550_kampung_halaman, k_1801_kampung_halaman);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6551_untuk_kembali_ke_kampung_halaman_seseorang, id FROM items WHERE type = 'kanji' AND (slug = '930' OR id = '930') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6551_untuk_kembali_ke_kampung_halaman_seseorang, k_1801_kampung_halaman);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6552_invasi, k_1802_menyerbu);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6552_invasi, id FROM items WHERE type = 'kanji' AND (slug = '1378' OR id = '1378') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6553_intrusi, k_1802_menyerbu);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6553_intrusi, id FROM items WHERE type = 'kanji' AND (slug = '445' OR id = '445') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6554_untuk_menyerang, k_1802_menyerbu);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6555_pelanggaran, k_1802_menyerbu);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6555_pelanggaran, id FROM items WHERE type = 'kanji' AND (slug = '1093' OR id = '1093') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6556_palsu, k_1803_palsu);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6557_berbohong, k_1803_palsu);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6558_kamuflase, k_1803_palsu);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6558_kamuflase, id FROM items WHERE type = 'kanji' AND (slug = '1541' OR id = '1541') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6559_pemalsuan, k_1803_palsu);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6559_pemalsuan, id FROM items WHERE type = 'kanji' AND (slug = '1281' OR id = '1281') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8731_dengan_enggan, id FROM items WHERE type = 'kanji' AND (slug = '1717' OR id = '1717') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8731_dengan_enggan, id FROM items WHERE type = 'kanji' AND (slug = '856' OR id = '856') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8845_berbohong, k_8836_berbohong);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8846_pembohong, k_8836_berbohong);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8846_pembohong, id FROM items WHERE type = 'kanji' AND (slug = '1550' OR id = '1550') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8902_luar_biasa, k_8886_luar_biasa);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8904_sangat_mengerikan, k_8886_luar_biasa);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8904_sangat_mengerikan, id FROM items WHERE type = 'kanji' AND (slug = '1371' OR id = '1371') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8924_bertarung, k_8922_bising);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8924_bertarung, k_8923_gaduh);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8925_bising, k_8922_bising);

END $$;
