-- ====================================================
-- KaniGani — Seed Data Level 3 (v2, relasional)
-- Auto-generated with Indonesian Slugs
-- ====================================================

DO $$
DECLARE
  -- ============ RADICAL IDs (Level 3) ============
  r_30_bangku UUID; r_54_batu UUID; r_57_sendok UUID; r_58_ra UUID; r_59_kandang_raptor UUID; r_60_musim_dingin UUID; r_61_kering UUID; r_62_kanopi UUID; r_63_jari UUID; r_65_jantung UUID; r_66_arah UUID; r_67_bulu UUID; r_68_ayah UUID; r_69_tua UUID; r_70_laci UUID; r_71_tugas UUID; r_72_anak_panah UUID; r_73_pintu UUID; r_78_atap UUID; r_87_tinja UUID; r_102_handuk UUID; r_107_jendela UUID; r_123_es UUID; r_210_kehidupan UUID; r_238_sekarang UUID; r_327_utara UUID; r_357_terang UUID; r_411_gemuk UUID; r_8764_topi UUID; r_8765_triceratop UUID;

  -- ============ KANJI IDs (Level 3) ============
  k_495_sepuluh_ribu UUID; k_497_sekarang UUID; k_501_bagian UUID; k_502_memotong UUID; k_503_siang UUID; k_504_teman UUID; k_505_gemuk UUID; k_506_sedikit UUID; k_507_menarik UUID; k_508_jantung UUID; k_509_pintu UUID; k_510_arah UUID; k_511_sapi UUID; k_512_ayah UUID; k_513_bulu UUID; k_514_berhenti UUID; k_516_musim_dingin UUID; k_517_utara UUID; k_518_setengah UUID; k_519_tua UUID; k_520_mesin UUID; k_521_di_luar UUID; k_522_kota UUID; k_523_lebar UUID; k_524_ibu UUID; k_525_tugas UUID; k_526_anak_panah UUID; k_545_surat UUID; k_626_terang UUID; k_850_kehidupan UUID;

  -- ============ VOCABULARY IDs (Level 3) ============
  v_2478_orang_amerika UUID; v_2479_orang_perancis UUID; v_2574_marmer UUID; v_2576_untuk_dilahirkan UUID; v_2579_segar UUID; v_2588_sepuluh_ribu UUID; v_2589_dua_puluh_ribu UUID; v_2590_seratus_ribu UUID; v_2593_sekarang UUID; v_2594_hari_ini UUID; v_2595_bulan_ini UUID; v_2597_setengah UUID; v_2600_bagian UUID; v_2602_penting UUID; v_2603_untuk_memotong UUID; v_2604_teman UUID; v_2605_gemuk UUID; v_2607_sedikit UUID; v_2608_sedikit UUID; v_2609_untuk_menarik UUID; v_2610_jantung UUID; v_2611_pintu_keluar_masuk UUID; v_2612_arah UUID; v_2614_untuk_menghentikan_sesuatu UUID; v_2615_pembatalan UUID; v_2616_bulu UUID; v_2617_ayah UUID; v_2618_ayah UUID; v_2619_sapi UUID; v_2622_musim_dingin UUID; v_2623_utara UUID; v_2624_setengah UUID; v_2625_tua UUID; v_2626_bekas UUID; v_2627_satu_mesin UUID; v_2628_dua_mesin UUID; v_2629_lima_mesin UUID; v_2630_sepuluh_mesin UUID; v_2631_di_luar UUID; v_2632_orang_asing UUID; v_2635_kota UUID; v_2636_kota UUID; v_2637_seattle UUID; v_2638_lebar UUID; v_2639_ibu UUID; v_2640_ibu UUID; v_2641_untuk_memanfaatkan UUID; v_2643_anak_panah UUID; v_2657_karakter UUID; v_3407_kehidupan_seseorang UUID; v_3936_orang_inggris UUID; v_7455_penghitung_mesin_besar UUID; v_7465_jumlah_orang UUID; v_7518_gadis UUID; v_7519_sepuluh_ribu UUID; v_7564_halo UUID; v_7669_tugas UUID; v_8659_patuh UUID; v_8734_pintu UUID; v_8735_wanita UUID; v_8945_untuk_menyebarkan_sesuatu UUID; v_8957_gema UUID; v_8959_di_atas_meja UUID; v_8960_di_bawah_tempat_tidur UUID; v_9131_matahari_terbit UUID; v_9141_draf_bir UUID; v_9148_pintu_keluar_utara UUID; v_9258_lampu UUID;

BEGIN

  DELETE FROM items WHERE level = 3;

  -- 1. RADICALS
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '又', 'bangku', 3, 1, 'Ini terlihat seperti <radical>bangku</radical> lipat, benarkan?')
    RETURNING id INTO r_30_bangku;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '石', 'batu', 3, 2, 'Daun yang tumbuh dari… mulut?? Lihat lagi dan lihatlah mulutnya sebenarnya terbuat dari <radical>batu</radikal>. Daun di sini baru saja tumbuh dari celah di sampingnya. Membuat patung mulut batu ini terlihat elegan, jika Anda bertanya kepada saya. Dan tentu saja daun tidak tumbuh di mulut, jadi setiap kali Anda melihat daun di mulut, ingatlah itu pasti batu.')
    RETURNING id INTO r_54_batu;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '匕', 'sendok', 3, 3, 'Radikal ini tampak seperti <radical>sendok</radikal>! Nah, sendok yang banyak dibengkokkan oleh orang yang sedang marah atau paranormal. Ambil sendok dan coba tekuk menjadi bentuk ini. Kemudian peganglah agar Anda tidak pernah lupa bahwa ini adalah sendok radikal!')
    RETURNING id INTO r_57_sendok;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', 'ラ', 'ra', 3, 4, 'Radikal ini terlihat seperti karakter katakana "ra" (ラ). Bunyi "ra" juga terdengar seperti Dewa Mesir yang terkenal "Ra", jadi kita dapat mengatakan bahwa kata radikal ini melambangkan <radikal>Ra</radikal> Dewa Mesir.')
    RETURNING id INTO r_58_ra;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '久', 'kandang-raptor', 3, 5, 'Ini bukan kandang biasa. Ini adalah selungkup dengan penguatan tambahan (lihat itu mencuat di kanan bawah selungkup radikal?). Mengapa selungkup ini diperkuat? Karena itu adalah <radical>kandang raptor</radical>. Aku bertanya-tanya berapa lama mereka bisa menahan raptor... Itu tidak berjalan dengan baik di Jurassic Park...')
    RETURNING id INTO r_59_kandang_raptor;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '夂', 'musim-dingin', 3, 6, 'Ini adalah radikal untuk <radikal>musim dingin</radikal>. Tampak seperti seorang pemain ski sedang menuruni bukit (ke kiri), dengan alat skinya berada di depan dan tongkatnya berada di belakang. Dan kapan orang-orang bermain ski? Di musim dingin!

Anda juga dapat mengingat ini sebagai malam yang radikal tetapi dengan pukulan ekstra panjang, karena malam hari panjang di musim dingin. Hari mulai gelap di awal musim dingin, tahu?')
    RETURNING id INTO r_60_musim_dingin;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '干', 'kering', 3, 7, 'Bentuknya seperti tiang jemuran yang akan digunakan untuk <radikal>mengeringkan</radikal> pakaian. Terdapat dua tiang horizontal yang sangat lurus, untuk efisiensi pengeringan maksimum. Jika Anda akan mengeringkan pakaian Anda, Anda akan mengeringkannya dengan benda ini.')
    RETURNING id INTO r_61_kering;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '广', 'kanopi', 3, 8, 'Ini adalah <radical>kanopi</radikal>. Lihat kainnya menjuntai ke bawah dan ujung kecil di tengahnya menahannya? Anda bisa duduk di bawah sini dan menikmati hari musim panas yang cerah tanpa terkena sinar matahari!')
    RETURNING id INTO r_62_kanopi;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '扌', 'jari', 3, 9, 'Ini terlihat seperti jari telunjuk panjang yang ditekuk di bagian bawah, dengan beberapa jari gemuk lainnya tumbuh di kedua sisinya. Hal ini menjadikannya <radikal>jari</radikal> radikal. Agak menyeramkan, tapi bayangkan betapa mudahnya Anda menggenggam sesuatu atau menggaruk punggung Anda dengan jari seperti ini. Cukup bagus, bukan?

Ini juga sangat mirip dengan radikal tangan (手) tetapi lebih kecil. Dan apa saja bagian kecil dari sebuah tangan? Jari-jarinya! Anda juga dapat mengingatnya seperti itu, jika Anda mau.')
    RETURNING id INTO r_63_jari;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '心', 'jantung', 3, 10, 'Perhatikan baik-baik yang ini. Itu terlihat seperti <radikal>hati</radikal>. Bukan jenis emoji hati, tapi jantung yang berdetak kencang. Pada dasarnya terdapat benjolan di tengah (jantung), dan tiga garis yang membentuk pembuluh darah arteri. Oke, jadi ini bukan jantung yang paling benar secara anatomis, tapi lihat saja arteri floppy yang masuk dan keluar, melakukan tugasnya dan membuat Anda tetap hidup. Apa yang tidak disukai?')
    RETURNING id INTO r_65_jantung;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '方', 'arah', 3, 11, 'Radikal ini terlihat seperti pria yang lari ke kanan. Dia sedang menuju ke <radikal>arah</radikal> yang sangat berbeda. Ke arah mana lagi?')
    RETURNING id INTO r_66_arah;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '毛', 'bulu', 3, 12, 'Apakah Anda ingat radikal rambut? Begitulah, hanya saja sekarang rambutnya menempel di ekor. Hewan biasanya tidak memiliki rambut. Sebaliknya, mereka memiliki <radikal>bulu</radikal>.')
    RETURNING id INTO r_67_bulu;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '父', 'ayah', 3, 13, 'Ini adalah <radikal>ayah</radikal> radikal, karena Anda dapat melihat wajah yang sangat kebapakan di dalamnya — dua mata terkulai di bagian atas, hidung besar di tengah, dan kumis melebar di bagian bawah. Semacam wajah tipe ayah yang umum, bukan?')
    RETURNING id INTO r_68_ayah;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '古', 'tua', 3, 14, 'Beri tanda silang pada mulut wadah yang berisi semua barang <radikal>lama</radikal> yang tidak lagi Anda perlukan. Mereka semua telah memenuhi tujuannya tetapi mereka sudah tua, jadi sekarang saatnya membiarkan mereka beristirahat dengan tenang di bawah salib. Selamat tinggal, hal-hal lama!')
    RETURNING id INTO r_69_tua;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '母', 'laci', 3, 15, 'Lihat <radical>laci</radical>? Ada dua rak di dalamnya dengan pegangan nubbin kecil di masing-masing rak agar Anda dapat menariknya keluar. Bayangkan menggunakan laci ini - bentuknya sangat aneh.')
    RETURNING id INTO r_70_laci;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '用', 'tugas', 3, 16, 'Ini tampak seperti papan tulis kecil untuk mencatat <radikal>tugas</radikal> Anda pada hari itu. Ada tiga kaki kecil di bagian bawah. Dan lihat kotak kosong itu? Itu adalah catatan tempel tempat Anda dapat menulis tugas. Tugas kerja, tugas sekolah, ulasan WaniKani… Jadi apa tugasmu hari ini? Bayangkan menempatkannya di kotak-kotak kecil itu.')
    RETURNING id INTO r_71_tugas;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '矢', 'anak-panah', 3, 17, 'Ini adalah senjata di atas orang besar. Senjatanya juga besar, tentu saja. Mengapa senjata orang besar ini begitu besar? Karena ia menembakkan <radikal>panah</radikal>! Pelurunya cukup kecil, jadi senjata yang menembakkannya bisa berukuran berapa pun. Tapi Anda membutuhkan senjata yang besar jika ingin menembakkan anak panah yang besar, bukan? Itu sebabnya ini adalah radikal untuk panah.')
    RETURNING id INTO r_72_anak_panah;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '戸', 'pintu', 3, 18, 'Yang ini terlihat seperti bendera, tapi jangan tertipu - ada garis di atasnya, seperti kusen pintu. Hal ini membuat ini menjadi <radikal>pintu</radikal> kecil. Khususnya pintu ayun, dengan garis vertikal di sebelah kiri sebagai engsel pintunya. Pintunya agak aneh, memang benar, tapi Anda bisa melihatnya, bukan?')
    RETURNING id INTO r_73_pintu;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '宀', 'atap', 3, 19, 'Ini adalah <radikal>atap</radikal> ー atap datar dengan cerobong kecil yang menonjol keluar. Lucu sekali!')
    RETURNING id INTO r_78_atap;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '幺', 'tinja', 3, 20, 'Baik atau buruk, ini terlihat seperti emoji kotoran (💩) untuk menjadikannya <radikal>kotoran</radikal> radikal. Cobalah untuk mengingatnya karena garis besarnya yang berbeda. Jika membantu, Anda juga dapat mencatat radikal pribadi di bagian bawah yang satu ini, karena Anda mungkin harus berada di tempat pribadi saat buang air besar…')
    RETURNING id INTO r_87_tinja;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '巾', 'handuk', 3, 21, 'Ada sesuatu yang menutupi tongkat itu. Ini adalah <radical>handuk</radical>! Itu jenis handuk yang biasa dipakai untuk membersihkan, jadi agak tua dan berkerak, itulah sebabnya bentuknya tetap persegi meski digantung di tongkat seperti itu.')
    RETURNING id INTO r_102_handuk;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '毋', 'jendela', 3, 22, 'Lihat bentuk silang-silang yang hampir persegi? Itu adalah bingkai <radical>jendela</radical> besar yang dapat Anda lihat ke luar. Bentuknya tidak sempurna seperti sawah, lebih artistik. Itu sebabnya ini adalah jendela dan 田 bukan.')
    RETURNING id INTO r_107_jendela;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '冫', 'es', 3, 23, 'Ingat kata radikal untuk setetes (cairan)? Sepertinya di sini pecah menjadi dua bagian, artinya sekarang pasti <radikal>es</radikal>. Tahukah kamu, karena setetes air hanya bisa pecah menjadi dua setelah berubah menjadi es.')
    RETURNING id INTO r_123_es;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '生', 'kehidupan', 3, 24, 'Ingat kecambah dari kotoran radikal? Kelihatannya seperti itu, tapi tunggu sebentar… ada pertumbuhan ekstra sekarang! Benda ini penuh dengan <radikal>kehidupan</radikal>! Bahkan ada daun besar berbentuk slide yang tumbuh di kiri atas. Itu sebabnya ini adalah kehidupan yang radikal.')
    RETURNING id INTO r_210_kehidupan;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '今', 'sekarang', 3, 25, 'Inilah radikal untuk <radikal>saat ini</radikal>. Agak sulit untuk dilihat, tapi terlihat seperti jam yang mewah. Tanda 𠆢 adalah bagian atas yang tergantung pada jam.ラ menunjukkan tampilan jam berbentuk segitiga dengan kukuk kecil di atasnya, mengintip ke luar untuk memberi tahu Anda artinya sekarang — sekarang juga!')
    RETURNING id INTO r_238_sekarang;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '北', 'utara', 3, 26, 'Anda hanya mempunyai es dan tongkat untuk sendok Anda, karena Anda berada jauh di utara. Di puncak dunia, hanya ada es untuk dimakan, dan — jika Anda beruntung — sedikit tambahan rasa. Itulah <radical>utara</radical> untuk Anda.')
    RETURNING id INTO r_327_utara;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '明', 'terang', 3, 27, 'Matahari DAN bulan sedang terbit? Dengan gabungan kedua kekuatan cahayanya, di luar menjadi sangat <radikal>terang</radikal>.')
    RETURNING id INTO r_357_terang;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '太', 'gemuk', 3, 28, 'Ini terlihat seperti pria dari radikal besar, tapi dia punya sesuatu yang ekstra di perutnya. Itu adalah pusarnya yang terlihat, karena dia sekarang adalah pegulat sumo: besar dan <radikal>gemuk</radikal>. Dalam sumo, lebih banyak lemak berarti lebih banyak kekuatan, jadi bayangkan dia berlatih untuk menjadi sekuat dan segemuk mungkin.')
    RETURNING id INTO r_411_gemuk;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '𠆢', 'topi', 3, 29, 'Tahukah kamu topi sawah itu? Yang bentuknya radikal begini? Itu sebabnya radikal ini disebut <radikal>topi</radikal>.')
    RETURNING id INTO r_8764_topi;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '⺌', 'triceratop', 3, 30, 'Ketiga tanduk tersebut mewakili <radical>triceratops</radical>, salah satu dinosaurus paling mengagumkan yang pernah ada.')
    RETURNING id INTO r_8765_triceratop;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_30_bangku, 'Bangku', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_54_batu, 'Batu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_57_sendok, 'Sendok', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_58_ra, 'Ra', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_59_kandang_raptor, 'Kandang Raptor', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_60_musim_dingin, 'Musim dingin', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_61_kering, 'Kering', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_62_kanopi, 'Kanopi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_63_jari, 'Jari', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_65_jantung, 'Jantung', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_66_arah, 'Arah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_67_bulu, 'Bulu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_68_ayah, 'Ayah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_69_tua, 'Tua', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_70_laci, 'Laci', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_71_tugas, 'Tugas', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_72_anak_panah, 'Anak panah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_73_pintu, 'Pintu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_78_atap, 'Atap', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_87_tinja, 'Tinja', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_102_handuk, 'Handuk', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_107_jendela, 'Jendela', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_123_es, 'Es', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_210_kehidupan, 'Kehidupan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_238_sekarang, 'Sekarang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_327_utara, 'Utara', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_357_terang, 'Terang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_411_gemuk, 'Gemuk', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_8764_topi, 'Topi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_8765_triceratop, 'Triceratop', true, true);

  -- 2. KANJIS
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '万', 'sepuluh-ribu', 3, 31, 'Anda memotong <radical>daun</radical> dengan <radical>pedang</radical> Anda menjadi <kanji>sepuluh ribu</kanji> keping!', 'Sekarang kamu punya <kanji>sepuluh ribu</kanji> lembar kertas daun kecil, kamu putuskan untuk mengubahnya menjadi <read>man</reading>ga (まん)! Setiap potongan daun kecil akan menjadi panel.')
    RETURNING id INTO k_495_sepuluh_ribu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '今', 'sekarang', 3, 32, 'Kanji dan radikalnya sama, jadi mengingat arti kanji ini semudah memastikan Anda mengetahui radikal <radikal>saat ini</radikal> terlebih dahulu! Jika Anda tahu radikalnya, Anda pasti tahu kanji ini juga berarti <kanji>sekarang</kanji>.', 'Saat ini <kanji>sekarang</kanji> para <reading>con</reading>dor (こん) berada dalam bahaya! Bukan minggu depan, bukan tahun depan, sekarang juga! Pernahkah Anda mendengar bahwa penggundulan hutan dan polusi membunuh semua burung condor?!')
    RETURNING id INTO k_497_sekarang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '分', 'bagian', 3, 33, '<radikal>sirip</radikal> yang jatuh ke <radikal>pedang</radikal>ku diiris menjadi banyak <kanji>bagian</kanji>. Mengikuti logika ini, ini juga berarti <kanji>menit</kanji>, yang merupakan bagian dari satu jam, dan <kanji>membagi</kanji>, yang merupakan tindakan membagi sesuatu menjadi beberapa bagian.', 'Kini setelah siripnya dipotong menjadi <kanji>bagian</kanji> yang rapi, saatnya memotong yang lain: <reading>bun</reading>s (ぶん).')
    RETURNING id INTO k_501_bagian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '切', 'memotong', 3, 34, 'Jika Anda memiliki <radical>tujuh</radical> <radical>pedang</radical>, tidak banyak yang dapat Anda lakukan dengan pedang tersebut. Hal utama? Mungkin menggunakannya untuk <kanji>memotong</kanji> sesuatu.', 'Karena memiliki tujuh pedang untuk dirimu sendiri terlalu banyak, kamu memutuskan untuk mengambil pedang itu dan membaginya di antara beberapa orang. Anda <kanji>memotong</kanji> menjadi berpasangan, dan memberikan <reading>set</reading> (せつ) kepada semua orang yang membutuhkannya di desa.')
    RETURNING id INTO k_502_memotong;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '午', 'siang', 3, 35, '<radical>Slide</radical> <radical>kering</radical> pada <kanji>siang</kanji>. Matahari paling terang di siang hari, sehingga mengeringkan embun pagi dari perosotan, sehingga siang hari menjadi waktu yang tepat untuk meluncur.', '<kanji>Siang</kanji> juga merupakan waktu <reading>Go</reading>dzilla (ご) memutuskan untuk menyerang karena alasan yang sama: cuaca kering dan anak-anak menggunakan perosotan.')
    RETURNING id INTO k_503_siang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '友', 'teman', 3, 36, 'Seekor <radical>narwhal</radical> yang duduk di <radical>bangku</radical> adalah <kanji>teman</kanji> Anda.', '"Hai <kanji>teman</kanji>," sapa narwhal. "Saya harus memperingatkan Anda tentang semua <reading>Anda</reading> ini." (ゆう)')
    RETURNING id INTO k_504_teman;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '太', 'gemuk', 3, 37, 'Kanjinya sama dengan radikal, jadi artinya <kanji>gemuk</kanji>.', 'Bayangkan seseorang <kanji>gemuk</kanji> yang suka tidur di <reading>futo</reading>n (ふと).')
    RETURNING id INTO k_505_gemuk;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '少', 'sedikit', 3, 38, 'Anda memiliki <radical>kecil</radikal> <radikal>slide</radikal>. Hal yang menarik tentang slide kecil adalah <kanji>hanya sedikit</kanji> orang yang dapat menggunakannya. Tidak semua orang bisa memasukkan pantatnya ke dalam perosotan kecil — hanya sedikit orang yang bisa meluncur ke bawah.', 'Alasan lain mengapa <kanji>sedikit</kanji> orang dapat menggunakannya adalah karena <reading>Sho</reading>gun (しょう) sedang mencoba untuk meluncur ke bawah. Kita berbicara tentang seorang pria dewasa yang terlalu besar untuk perosotan kecil ini, jadi beberapa orang harus menunggu di belakangnya — ini adalah kemacetan lalu lintas perosotan.')
    RETURNING id INTO k_506_sedikit;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '引', 'menarik', 3, 39, 'Jika Anda memiliki <radical>busur</radikal> dan <radikal>tongkat</radikal> Anda perlu <kanji>menarik</kanji> keduanya kembali bersamaan untuk menembakkannya. Jika Anda tidak bisa menariknya, Anda tidak akan menembakkan apa pun.', 'Saat Anda <kanji>menarik</kanji> busurnya ke belakang, tubuh Anda menjadi tegang dan Anda merasakan <baca>dia</reading>at (ひ) yang sangat besar muncul di dalam diri Anda. Anda terus menariknya dan panasnya semakin panas.')
    RETURNING id INTO k_507_menarik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '心', 'jantung', 3, 40, '<radikal>hati</radikal> radikal dan <kanji>hati</kanji> kanji adalah sama. Bergembiralah dan biarkan hatimu bebas!', '<kanji>jantung</kanji>, di mana ia disimpan di dalam tubuh Anda? Kebanyakan orang mengira itu ada di dada, namun kenyataannya, <kanji>hati</kanji> Anda tersimpan di <read>tulang kering</reading> (しん) Anda.')
    RETURNING id INTO k_508_jantung;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '戸', 'pintu', 3, 41, 'Kata radikal dan kanji untuk <kanji>pintu</kanji> sama!', 'Anda membuka <kanji>pintu</kanji> dan segera menutupnya kembali pada <reading>jari kaki</reading> (と), yang secara harfiah menyebabkan jari kaki Anda meledak.')
    RETURNING id INTO k_509_pintu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '方', 'arah', 3, 42, 'Radikal dan kanji untuk <kanji>arah</kanji> adalah sama! Sabas!

Namun ada juga arti lain. Ini juga bisa berarti <kanji>cara</kanji>. Anggap saja seperti ini: Ketika Anda bergerak ke satu arah dalam hidup Anda, Anda mengembangkan cara Anda sendiri. "Cara [namamu di sini]."', '<kanji>arah</kanji> apa yang selalu kamu ketahui? Ke arah mana Anda selalu ingin pergi? <read>Ho</reading>saya (ほう). Sesuatu tentang rumah Anda selalu melekat pada Anda, tidak peduli seberapa jauh Anda pergi. Jadi jika Anda tersesat dan tidak tahu arah mana yang harus dituju, pikirkan saja rumah!')
    RETURNING id INTO k_510_arah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '牛', 'sapi', 3, 43, 'Kata radikal dan kanji untuk <kanji>sapi</kanji> sama persis! Itu membuatnya mudah untuk diingat, selama Anda mengenal radikal Anda dengan cukup baik.', 'Pernahkah Anda mendengar daging sapi わ<reading>ぎゅう</reading> (wagyu)?ぎゅう itu adalah ぎゅう.')
    RETURNING id INTO k_511_sapi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '父', 'ayah', 3, 44, 'Kata radikal dan kanji untuk <kanji>ayah</kanji> adalah sama.', 'Bayangkan ayahmu adalah <reading>Cheech</reading> (ちち) dari Cheech dan Chong.')
    RETURNING id INTO k_512_ayah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '毛', 'bulu', 3, 45, '<kanji>Bulu</kanji> dan <radikal>bulu</radikal> sama satu sama lain, jadi arti kanji ini seharusnya sederhana. Ini juga bisa berarti <kanji>rambut</kanji>, meskipun lebih mirip rambut berbulu.', 'Dengan <kanji>bulu</kanji>, bawa imajinasi Anda ke suatu negeri yang di sekelilingnya terdapat batang-batang bulu, seperti padang rumput yang tinggi dan luas (hanya bulu yang bukan rumput). Anda dikelilingi oleh bulu hitam, angin bertiup. Bayangkan diri Anda menyentuh bulu panjang dan menciumnya. Seperti apa rasanya dan baunya? Sekarang saatnya untuk menyingkirkannya. Terlalu banyak <kanji>rambut</kanji>! Untuk menghilangkannya, Anda harus <read>memotong</reading> (もう) dengan mesin pemotong rumput. Bayangkan diri Anda menyalakan mesin pemotong rumput, dan membawanya berkeliling, memotong rambut. Dengarkan suara mesin pemotong rumput di kepala Anda (keras dan jelas). Yang penting adalah membayangkan diri Anda sedang memotong segalanya. Kuncinya adalah memikirkan “bulu → di dalam bulu → singkirkan bulu → potong bulunya,” dalam urutan itu. Itu akan membuat Anda "memotong", yang akan membantu Anda mengingat on''yomi.')
    RETURNING id INTO k_513_bulu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '止', 'berhenti', 3, 46, 'Radikal <radikal>berhenti</radikal> sama dengan kanji <kanji>berhenti</kanji>.', 'Anda harus <kanji>berhenti</kanji> karena ada <reading>shee</reading>p (し) di depan Anda. Anda mencoba berjalan mengitari domba tersebut, tetapi domba itu bergerak berhenti di depan Anda lagi. Setiap kali domba berhenti, Anda juga berhenti.')
    RETURNING id INTO k_514_berhenti;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '冬', 'musim-dingin', 3, 47, 'Anda mengalami <radical>musim dingin</radical> dengan banyak <radical>es</radical>. Tapi bukankah setiap musim dingin memiliki banyak es? Tepat. Itu sebabnya ini hanya <kanji>musim dingin</kanji>.', '<kanji>Musim dingin</kanji> juga merupakan waktu di mana Anda membagikan hadiah: "Satu fu'' you, satu fu'' you dan… satu <reading>fu'' you</reading> (ふゆ)!"')
    RETURNING id INTO k_516_musim_dingin;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '北', 'utara', 3, 48, 'Kanjinya sama dengan radikal — artinya <kanji>utara</kanji>.', 'Di <kanji>utara</kanji>, setiap orang memiliki <reading>keytar</reading> (きた) — Anda tahu, keyboard yang dipegang dan dimainkan orang seperti gitar. Mungkin karena di utara sangat dingin. Memainkan gitar biasa praktis tidak mungkin dilakukan dengan mengenakan sarung tangan, tetapi dengan keytar? Benar-benar bisa dilakukan.')
    RETURNING id INTO k_517_utara;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '半', 'setengah', 3, 49, '<radical>triceratops</radical> berada di tempat yang <radical>kering</radical>. Tapi ukurannya sangat besar, dan letaknya miring, jadi hanya <kanji>setengah</kanji> saja yang kering.', '"Kau setengah basah dan setengah kering! Aku akan memotongmu menjadi <kanji>setengah</kanji> dengan laser blasterku agar kau bisa pulih kembali," sebuah suara terdengar. Itu adalah <read>Han</reading> Solo (はん), pria anti kemapanan yang membenci keadaan yang tidak seimbang.')
    RETURNING id INTO k_518_setengah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '古', 'tua', 3, 50, 'Kanji dan radikalnya sama, jadi mengingat arti kanji ini semudah memastikan Anda mengetahui radikal <radikal>lama</radikal> terlebih dahulu! Jika Anda tahu radikalnya, Anda pasti tahu kanji ini juga berarti <kanji>lama</kanji>.

Catatan: Kata "lama" ini tidak mengacu pada orang. Anggap saja sebagai "hal lama".', 'Hal-hal <kanji>Lama</kanji> disalahpahami oleh <reading>子</reading>s (こ) dunia.

*Catatan:* Tentukan karakter 子 yang dapat Anda gunakan untuk semua mnemonik pembacaan こ selanjutnya. Anak ini akan muncul berkali-kali sepanjang perjalanan mnemonik Anda, dan akan membantu jika Anda membayangkan karakter yang sama sepanjang waktu.')
    RETURNING id INTO k_519_tua;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '台', 'mesin', 3, 51, 'Anda memiliki <radical>pribadi</radikal> <radikal>mulut</radikal> yang merupakan <kanji>mesin</kanji>. Namun Anda harus merahasiakan mulut mesin Anda karena hal itu akan menakuti semua orang non-mesin di sekitar Anda.', 'Untuk memastikan mereka tidak bisa membedakan mana yang <kanji>mesin</kanji> dan mana yang manusia, kamu <reading>mewarnai</reading> (だい) mulutnya agar terlihat seperti kulit. Anda menemukan pewarna dengan warna yang sama dengan mulut normal Anda dan cukup mengoleskannya di sana.')
    RETURNING id INTO k_520_mesin;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '外', 'di-luar', 3, 52, 'Anda diketahui terkena penyakit <radical>malam</radikal> <radikal>jari kaki</radikal>, yaitu ketika jari kaki Anda terbakar setelah menjadi sangat-sangat panas (bayangkan hal ini terjadi, aduh!). Satu-satunya cara untuk memperbaikinya adalah dengan mendinginkan kaki Anda, dan cara terbaik untuk melakukannya adalah dengan pergi <kanji>keluar</kanji>.', 'Anda pergi <kanji>keluar</kanji> (Anda tidak seharusnya berada di luar sana pada malam hari!) dan Anda disapa oleh beberapa pria. Lalu, tiba-tiba, <reading>Guy</reading> (がい) Fawkes melompat dari atap di atasmu dan menghabisi mereka, lalu mulai berlari. "Pria Fawkes!" kamu berteriak mengejarnya!')
    RETURNING id INTO k_521_di_luar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '市', 'kota', 3, 53, 'Anda melihat <radical>penutup</radical> lubang got dan <radical>handuk</radical>, keduanya bertuliskan nama <kanji>kota</kanji>. Tutup lubang got dekoratif dan handuk suvenir — dua hal yang disukai kota-kota, terutama di Jepang.', '<kanji>kota</kanji> ini pasti mempunyai banyak <reading>she</reading>p (し) karena, selain tutup lubang got dan handuk, yang terlihat hanyalah domba. Ada domba dimana-mana. Ini adalah kota domba.')
    RETURNING id INTO k_522_kota;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '広', 'lebar', 3, 54, '<radical>kanopi</radikal> yang Anda gunakan di <radical>pribadi</radikal> sangat <kanji>lebar</kanji>.', 'Anda suka menjadi <kanji>lebar</kanji> karena itu membuat Anda merasa seperti orang yang berbeda. Tapi bukan sembarang orang, seperti <reading>pahlawan</reading> super (ひろ)!')
    RETURNING id INTO k_523_lebar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '母', 'ibu', 3, 55, 'Seseorang merusak sebagian <radical>jendela</radical> Anda. Siapa yang melakukan ini? Itu adalah <kanji>ibu</kanji>mu!', 'Tiba-tiba <kanji>ibu</kanji>mu mengarahkan jarinya yang berlumuran darah ke arahmu dan tertawa, "<reading>Haha</reading> (はは)!" Dia terus tertawa, haha ​​haha ​​haha, berulang kali. Anda merasa lebih khawatir.')
    RETURNING id INTO k_524_ibu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '用', 'tugas', 3, 56, 'Kanji dan radikalnya sama, jadi mengingat arti kanji ini semudah memastikan Anda mengetahui radikal untuk <radikal>tugas</radikal> terlebih dahulu! Jika Anda tahu radikalnya, Anda pasti tahu kanji ini juga berarti <kanji>tugas</kanji>.', 'Hari ini, <kanji>tugas</kanji>mu adalah makan <reading>yo</reading>gurt (よう). Ini bergizi, enak, dan saya menyuruh Anda melakukannya, jadi Anda harus melakukannya. Tugas pada dasarnya hanyalah sesuatu yang harus Anda lakukan, jadi begitulah maksudnya.')
    RETURNING id INTO k_525_tugas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '矢', 'anak-panah', 3, 57, 'Radikal <radikal>panah</radikal> dan kanji <kanji>panah</kanji> adalah sama. Semacam cara yang "lurus" untuk menghafal kanji ini, Anda tahu?', 'Untuk mengingat bacaan や kita menggunakan kata “Yankees” (seperti tim baseball yang jahat, gunakan M!).

Apa yang dilakukan panah ini? Ia mengikuti semua pemain bisbol <read>Ya</reading>nkee (や), menguntit mereka, menunggu untuk melakukan gerakannya (saya akan membiarkan Anda memutuskan apa "langkahnya").')
    RETURNING id INTO k_526_anak_panah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '字', 'surat', 3, 58, '<radical>atap</radikal> <radikal>anak</radikal> berdiri di atas atap, memegang satu <kanji>huruf</kanji>, satu <kanji>karakter</kanji>, satu <kanji>simbol</kanji> untuk dilihat dunia.', 'Karakter <kanji></kanji> yang ditampilkan adalah "J", yang merupakan singkatan dari <reading>Je</reading>sus (じ). Anak itu ingin semua orang melihat <kanji>huruf</kanji> dan <kanji>simbol</kanji> ini.')
    RETURNING id INTO k_545_surat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '明', 'terang', 3, 59, 'Kanji <radikal>terang</radikal> dan kanji <kanji>terang</kanji> adalah sama!', 'Apa yang Anda katakan saat melihat sesuatu yang <kanji>terang</kanji>? "<membaca>Ah</membaca> (あ)!" Seperti saat Anda membuka tirai dan sinar matahari menyinari mata Anda, atau seseorang menyorotkan senter tepat ke wajah Anda. Ahhhh, cerah sekali!')
    RETURNING id INTO k_626_terang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '生', 'kehidupan', 3, 60, 'Radikal <radikal>kehidupan</radikal> dan kanji <kanji>kehidupan</kanji> adalah sama, jadi mudah-mudahan Anda sekarang sudah mengetahui keduanya.', 'Anda dapat menyelamatkan <kanji>nyawa</kanji> atau menghilangkannya dengan <reading>sa</reading>ber (せい) baru Anda. Ini adalah pedang yang Anda dapatkan dari melakukan hal yang benar (ingat?), dan sekarang Anda perlu memikirkan cara menggunakannya dalam kehidupan ini. Jadi apa yang kamu lakukan?')
    RETURNING id INTO k_850_kehidupan;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_495_sepuluh_ribu, 'Sepuluh Ribu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_497_sekarang, 'Sekarang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_501_bagian, 'Bagian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_501_bagian, 'Menit', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_501_bagian, 'Membagi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_502_memotong, 'Memotong', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_503_siang, 'Siang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_504_teman, 'Teman', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_505_gemuk, 'Gemuk', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_506_sedikit, 'Sedikit', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_506_sedikit, 'Sedikit', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_507_menarik, 'Menarik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_508_jantung, 'Jantung', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_509_pintu, 'Pintu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_510_arah, 'Arah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_510_arah, 'Jalan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_511_sapi, 'Sapi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_512_ayah, 'Ayah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_512_ayah, 'Ayah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_513_bulu, 'Bulu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_513_bulu, 'Rambut', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_514_berhenti, 'Berhenti', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_516_musim_dingin, 'Musim dingin', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_517_utara, 'Utara', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_518_setengah, 'Setengah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_519_tua, 'Tua', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_520_mesin, 'Mesin', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_521_di_luar, 'Di luar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_522_kota, 'Kota', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_523_lebar, 'Lebar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_524_ibu, 'Ibu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_524_ibu, 'Mama', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_525_tugas, 'Tugas', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_525_tugas, 'Menggunakan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_526_anak_panah, 'Anak panah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_545_surat, 'Surat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_545_surat, 'Karakter', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_545_surat, 'Simbol', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_626_terang, 'Terang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_850_kehidupan, 'Kehidupan', true, true);

  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_495_sepuluh_ribu, 'まん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_495_sepuluh_ribu, 'ばん', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_497_sekarang, 'こん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_497_sekarang, 'いま', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_501_bagian, 'ぶん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_501_bagian, 'ふん', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_501_bagian, 'ぶ', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_501_bagian, 'わ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_502_memotong, 'せつ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_502_memotong, 'き', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_503_siang, 'ご', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_504_teman, 'ゆう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_504_teman, 'とも', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_505_gemuk, 'ふと', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_505_gemuk, 'たい', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_505_gemuk, 'た', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_505_gemuk, 'おお', 'nanori', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_506_sedikit, 'しょう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_506_sedikit, 'すこ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_506_sedikit, 'すく', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_507_menarik, 'ひ', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_507_menarik, 'いん', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_508_jantung, 'しん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_508_jantung, 'こころ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_509_pintu, 'と', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_509_pintu, 'こ', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_510_arah, 'ほう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_510_arah, 'かた', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_511_sapi, 'ぎゅう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_511_sapi, 'うし', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_512_ayah, 'ちち', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_512_ayah, 'とう', 'kunyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_512_ayah, 'ふ', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_513_bulu, 'もう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_513_bulu, 'け', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_514_berhenti, 'し', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_514_berhenti, 'と', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_514_berhenti, 'や', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_516_musim_dingin, 'ふゆ', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_516_musim_dingin, 'とう', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_517_utara, 'きた', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_517_utara, 'ほく', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_518_setengah, 'はん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_518_setengah, 'なか', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_519_tua, 'こ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_519_tua, 'ふる', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_520_mesin, 'だい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_520_mesin, 'たい', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_521_di_luar, 'がい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_521_di_luar, 'そと', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_521_di_luar, 'はず', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_521_di_luar, 'ほか', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_521_di_luar, 'と', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_521_di_luar, 'げ', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_522_kota, 'し', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_522_kota, 'いち', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_523_lebar, 'ひろ', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_523_lebar, 'こう', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_524_ibu, 'はは', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_524_ibu, 'かあ', 'kunyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_524_ibu, 'ぼ', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_525_tugas, 'よう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_525_tugas, 'もち', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_526_anak_panah, 'や', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_526_anak_panah, 'し', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_545_surat, 'じ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_626_terang, 'あ', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_626_terang, 'めい', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_626_terang, 'みょう', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_626_terang, 'あか', 'kunyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_626_terang, 'あき', 'kunyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_850_kehidupan, 'せい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_850_kehidupan, 'しょう', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_850_kehidupan, 'い', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_850_kehidupan, 'なま', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_850_kehidupan, 'う', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_850_kehidupan, 'は', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_850_kehidupan, 'き', 'kunyomi', false, false);

  -- 3. VOCABULARIES
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', 'アメリカ人', 'orang-amerika', 3, 61, 'Bagian アメリカ cukup mudah asalkan Anda tahu katakana. Itu adalah kata untuk "Amerika". Anda tahu bahwa <kanji>人</kanji> berarti "orang", sehingga Anda dapat mengetahui bahwa America + Person = <vocabulary>Orang Amerika</vocabulary> — khususnya <vocabulary>orang dari AS</vocabulary>.', 'Seringkali, ketika dua kanji bersatu membentuk gabungan kanji (atau jukugo), Anda menggunakan pembacaan on''yomi. Ini mirip dengan itu, meskipun bukan kanji lain yang digunakan adalah kata asing. Pola ini juga berlaku di hampir semua negara. Cukup tambahkan 人 ke nama negara dan Anda sudah mendeskripsikan orang-orang yang tinggal di sana. Anda akan melihat lebih banyak lagi sebelum Anda selesai di sini.

Dan karena 人 memiliki dua bacaan on''yomi, berikut adalah mnemonik untuk membantu Anda mengingat mana yang harus digunakan: 

<vocabulary>Orang Amerika</vocabulary> sangat menyukai <reading>jean</reading> (じん) mereka, itu adalah fakta yang sudah diketahui umum!', 'Orang Amerika, Orang Dari Amerika')
    RETURNING id INTO v_2478_orang_amerika;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', 'フランス人', 'orang-perancis', 3, 62, 'フランス adalah "Prancis". Jadi apa yang dimaksud dengan "orang Prancis?" Itu adalah <vocabulary>orang Perancis</vocabulary>.', 'Seringkali, ketika dua kanji bersatu membentuk gabungan kanji (atau jukugo), Anda menggunakan pembacaan on''yomi. Ini mirip dengan itu, meskipun bukan kanji lain yang digunakan adalah kata asing. Pola ini juga berlaku di hampir semua negara. Cukup tambahkan 人 ke nama negara dan Anda sudah mendeskripsikan orang-orang yang tinggal di sana. Anda akan melihat lebih banyak lagi sebelum Anda selesai di sini.

Dan karena 人 memiliki dua bacaan on''yomi, berikut adalah mnemonik untuk membantu Anda mengingat mana yang harus digunakan: 

Seperti semua kata untuk kebangsaan, 人 di sini diucapkan じん. Seperti orang-orang dari negara lain, <vocabulary>Orang Prancis</vocabulary> juga menyukai <reading>jean</reading> (じん) mereka!', 'Orang Perancis, orang Prancis')
    RETURNING id INTO v_2479_orang_perancis;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', 'ビー玉', 'marmer', 3, 63, 'Saat Anda melihat kata katakana, kemungkinan besar itu adalah kata pinjaman luar negeri yang berasal dari tempat lain. Yang ini menarik karena menggabungkan katakana dan kanji! <kosakata>marmer</vocabulary> pertama datang ke Jepang dari Portugal, jadi bagian ビー dari kata tersebut adalah kependekan dari "vidro", yang berarti "kaca" dalam bahasa Portugis. Pokoknya, jangan sampai terpesona oleh hal itu ビー. Mungkin bayangkan saja marmer favorit Anda berwarna hitam dan kuning seperti lebah.', 'Jika Anda mengetahui katakana serta cara membaca yang Anda pelajari saat mempelajari kanji <kanji>玉</kanji>, Anda seharusnya bisa membaca ini. Hati-hati dengan rendaku.', 'Marmer')
    RETURNING id INTO v_2574_marmer;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '生まれる', 'untuk-dilahirkan', 3, 64, 'Karena ini adalah kanji dengan tambahan hiragana yang diakhiri dengan bunyi う, Anda tahu bahwa kata ini adalah kata kerja. Apa versi kata kerja terakhir dari kanji 生? Itu akan menjadi <vocabulary>dilahirkan</vocabulary>, awal dari <kanji>kehidupan</kanji> yang kita kenal!', 'Anda harus mengingat bagian う dari kata ini untuk membacanya. Untuk mengingatnya, mari gunakan mnemonik: 

Sesuatu akan segera lahir, dan ketika Anda mendekat untuk melihat lebih dekat… itu adalah <reading>u</reading>ni (う). Ya, bulu babi. Anda tidak mengharapkan itu. Pejamkan mata Anda dan bayangkan seperti apa proses kelahiran sebuah universitas, untuk membantu Anda mengingat bacaan ini.', 'Untuk Dilahirkan')
    RETURNING id INTO v_2576_untuk_dilahirkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '生', 'segar', 3, 65, 'Biasanya satu kanji saja seperti ini memiliki arti yang sama dengan kanji induknya, namun dalam kasus <kanji>生</kanji> ini sedikit berbeda (tetapi tetap berhubungan). Saat Anda memikirkan sesuatu yang memiliki kehidupan, itu adalah <vocabulary>segar</vocabulary> atau <vocabulary>mentah</vocabulary>. Pikirkan sashimi atau sushi, misalnya. Anda ingin itu sedekat mungkin dengan kehidupan, jadi Anda memakannya saat masih segar dan mentah. Kata ini juga dapat digunakan untuk mendeskripsikan acara <vocabulary>langsung</vocabulary>, seperti konser atau acara olahraga. 

Anda akan melihat kata ini di awal kata lainnya. Misalnya, 生たまご adalah "telur mentah".', 'Ini menggunakan salah satu bacaan kun''yomi. Berikut ini mnemonik untuk membantu Anda mengingatnya:

Setelah makan ikan <vocabulary>mentah</vocabulary>, saya dan guru yoga mengucapkan <reading>nama</reading>ste (なま) kepada koki sushi, sambil membungkuk rendah untuk menunjukkan penghargaan kami.', 'Segar, Mentah, Hidup')
    RETURNING id INTO v_2579_segar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '一万', 'sepuluh-ribu', 3, 66, 'Ketika Anda memiliki <kanji>satu</kanji> <kanji>sepuluh ribu</kanji> Anda hanya memiliki <vocabulary>sepuluh ribu</vocabulary>. Namun dalam bahasa Jepang, Anda menentukan berapa sepuluh ribu yang Anda miliki (yang aneh dalam bahasa Inggris, tapi seharusnya masuk akal jika dipikir-pikir).', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Sepuluh Ribu')
    RETURNING id INTO v_2588_sepuluh_ribu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '二万', 'dua-puluh-ribu', 3, 67, 'Bila Anda memiliki <kanji>dua</kanji> <kanji>sepuluh ribu</kanji>, Anda memiliki <vocabulary>dua puluh ribu</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Dua Puluh Ribu')
    RETURNING id INTO v_2589_dua_puluh_ribu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '十万', 'seratus-ribu', 3, 68, '<kanji>Sepuluh</kanji> <kanji>sepuluh ribu</kanji> sama dengan <vocabulary>seratus ribu</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Seratus Ribu, Seratus Ribu')
    RETURNING id INTO v_2590_seratus_ribu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '今', 'sekarang', 3, 69, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Karena kata ini terdiri dari satu kanji, maka sebaiknya menggunakan bacaan kun''yomi. Saat mempelajari kanji, Anda tidak mempelajari bacaan tersebut, jadi inilah mnemonik untuk membantu Anda dengan kata ini: 

Apa yang akan kamu minum sekarang? Saya akan memiliki Zima, <reading>ima</reading>.

Ucapkan "ZIMA IMA" sepuluh kali dengan cepat.', 'Sekarang')
    RETURNING id INTO v_2593_sekarang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '今日', 'hari-ini', 3, 70, '<kanji>sekarang</kanji> <kanji>hari</kanji> adalah hari apa? Oh, ini <vocabulary>hari ini</vocabulary>.', 'Pembacaan kata ini merupakan pengecualian, meskipun kata itu sendiri sangat umum dan berguna. Saat Anda memikirkan "hari ini", pikirkan tentang apa yang harus Anda lakukan <vocabulary>hari ini</vocabulary> untuk bekerja.

Anda harus bekerja di salah satu <reading>kio</reading>sks (きょう) mal tersebut. Coba pikirkan betapa sedihnya Anda harus melakukan ini hari ini. Hari yang buruk. Di luar cerah dan Anda terjebak di mal yang menjaga kios kelomang ini.

Catatan: Mnemonik pembacaan ini cukup jauh dari pembacaan sebenarnya, sejauh menyangkut mnemonik membaca. Gunakan ini untuk mendekatkan diri Anda, dan kemudian gunakan otak Anda sendiri untuk melanjutkan perjalanan ke sana. Yang ini tidak akan semudah kebanyakan yang lain, tapi lakukanlah hafalan kuno yang baik dan Anda akan baik-baik saja. Untungnya, saya tidak akan meminta Anda melakukan sebanyak ini. :)', 'Hari ini')
    RETURNING id INTO v_2594_hari_ini;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '今月', 'bulan-ini', 3, 71, '<kanji>sekarang</kanji> <kanji>bulan</kanji> sebenarnya adalah <vocabulary>bulan ini</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. 月 mempunyai dua bacaan on''yomi, tapi karena ini BUKAN nama bulan tertentu, maka akan menggunakan bacaan げつ. Berikut ini mnemonik untuk membantu Anda mengingatnya:

Hanya <vocabulary>bulan ini</vocabulary>, hewan peliharaan Anda <reading>con</reading>atau <reading>dapat</reading> (こんげつ) tidur di tempat tidur Anda. Biasanya Anda menyimpannya di dalam sangkar, tapi setahun sekali, Anda membuat pengecualian. Dan itu bulan ini. Lucu sekali!', 'Bulan ini, Bulan berjalan')
    RETURNING id INTO v_2595_bulan_ini;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '半分', 'setengah', 3, 72, 'Anda memiliki <kanji>setengah</kanji> dari <kanji>bagian</kanji>. Setengah bagian tetaplah <vocabulary>setengah</vocabulary>, bukan?', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Setengah')
    RETURNING id INTO v_2597_setengah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '分', 'bagian', 3, 73, 'Kata ini memiliki arti yang sama dengan yang Anda pelajari dengan kanji: <vocabulary>part</vocabulary>, atau <vocabulary>portion</vocabulary>. Lebih jauh lagi, ini juga bisa berarti <vocabulary>content</vocabulary>, seperti dalam "kandungan alkohol" karena itulah porsi alkohol dalam minuman.

Kata ini juga digunakan untuk pecahan, seperti sepertiga atau seperempat. Sekali lagi, Anda dapat melihat bagaimana tautan ini ke "bagian" dan "bagian", bukan?', 'Kata ini biasanya digabungkan dengan kata atau frasa yang menunjukkan bagian atau porsi siapa yang Anda maksud. Mungkin karena itulah kata vocab kanji tunggal ini menggunakan bacaan on''yomi dan bukan kun''yomi. Lihat kombinasi kata umum untuk mengetahui apa yang sedang kita bicarakan!

Dan kalau yang dimaksud adalah <vocabulary>part</vocabulary> atau <vocabulary>portion</vocabulary>, dibaca ぶん. Mungkin karena roti Anda terdiri dari dua bagian. Ohoho.', 'Bagian, Bagian, Isi')
    RETURNING id INTO v_2600_bagian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '大切', 'penting', 3, 74, 'Pikirkan kembali masa lalu. Dulu ketika keputusan dibuat dengan pedang. <kanji>besar</kanji> <kanji>potongan</kanji> akan menjadi <vocabulary>penting</vocabulary>. Bayangkan saja sepasang samurai bersiap-siap, lalu menyerbu, lalu membuat satu tebasan besar. Itu adalah hal terpenting yang akan mereka lakukan dalam hidup mereka (jika mereka masih hidup!).', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Karena 大 mempunyai dua pembacaan on''yomi, berikut adalah mnemonik untuk membantu Anda mengingat mana yang harus digunakan:

Sangatlah <vocabulary>penting</vocabulary> untuk menjaga <reading>dasi</reading> Anda dalam <reading>set</reading> (たいせつ). Jika Anda tidak menyusunnya dengan rapi dalam beberapa set, polisi dasi mungkin akan datang mengetuk pintu Anda dan membawa Anda bersama mereka!', 'Penting, Berharga, Berharga')
    RETURNING id INTO v_2602_penting;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '切る', 'untuk-memotong', 3, 75, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>memotong</kanji>, dan bentuk kata kerjanya adalah <vocabulary>to cut</vocabulary>.', 'Saat Anda berpikir <vocabulary>untuk memotong</vocabulary> sesuatu, apa yang Anda pikirkan tentang memotong? Salah satunya adalah menebang pohon, yang juga dikenal sebagai <reading>木</reading> (き). Anda 切る a 木.', 'Untuk Memotong')
    RETURNING id INTO v_2603_untuk_memotong;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '友人', 'teman', 3, 76, 'Seseorang yang menjadi teman hanyalah <vocabulary>friend</vocabulary>!

Perhatikan bahwa 友人 adalah kata yang lebih formal yang sering digunakan dalam lingkungan profesional.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Karena 人 memiliki dua bacaan on''yomi, berikut adalah mnemonik untuk membantu Anda mengingat mana yang harus digunakan:

Semua <vocabulary>teman</vocabulary> Anda adalah <reading>Anda</reading> di <reading>jean</reading>s (ゆうじん)! Setiap orang. Jika ada teman Anda yang bukan remaja yang mengenakan jeans, saya khawatir mereka bukan teman Anda.', 'Teman')
    RETURNING id INTO v_2604_teman;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '太い', 'gemuk', 3, 77, 'Ini adalah kanji tunggal dengan い di akhir, artinya Anda tahu itu mungkin kata sifat. Apa bentuk kata sifat dari <kanji>lemak</kanji>? Sama saja: <vocabulary>gemuk</vocabulary>.', 'Ini adalah pembacaan kanji kun''yomi (karena kanjinya tunggal, sendirian dengan hiragana terpasang). Anda belajar membaca itu dengan kanji, jadi sebaiknya Anda melakukannya. Tapi inilah mnemonik untuk berjaga-jaga:

Kucing <vocabulary>gemuk</vocabulary> suka meringkuk di <reading>futo</reading>n (ふと) sepanjang hari.', 'Gemuk, Tebal')
    RETURNING id INTO v_2605_gemuk;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '少し', 'sedikit', 3, 78, 'Kata ini berupa kanji tunggal dengan hiragana di dalamnya, meskipun tidak ada petunjuk spesifik mengenai jenis kata tersebut. Artinya, biasanya Anda dapat menebaknya apakah itu kata benda, kata keterangan, atau kata sifat na (dalam hal ini kata benda/kata keterangan). Arti kata ini hampir sama dengan kanji, namun membuatnya cukup mudah. Arti kanji untuk <kanji>少</kanji> adalah <kanji>sedikit</kanji>, dan arti bentuk kosakatanya adalah <vocabulary>sedikit</vocabulary> atau <vocabulary>beberapa</vocabulary>.', 'Tahukah Anda bahwa kata ini menciptakan kata dalam bahasa Inggris yang mungkin sudah Anda ketahui? Pernahkah Anda mendengar seseorang berkata "hanya skosh"? Itu <vocabulary>少し</vocabulary>! Semoga Anda mengetahui kata dalam bahasa Inggris ini dan karena itu mengetahui kata dalam bahasa Jepang ini juga.', 'Sedikit, Beberapa, Sedikit, Sedikit')
    RETURNING id INTO v_2607_sedikit;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '少ない', 'sedikit', 3, 79, 'Kata ini memiliki satu kanji dengan hiragana yang ditempelkan, diakhiri dengan い. Ini berarti Anda tahu itu adalah kata sifat. Apa bentuk kata sifat dari <kanji>sedikit</kanji>? Itu juga <vocabulary>sedikit</vocabulary>, seperti dalam <vocabulary>tidak banyak</vocabulary> atau <vocabulary>tidak banyak</vocabulary> sesuatu.', 'Pembacaannya cukup sulit, karena ini adalah pembacaan kun''yomi (Anda dapat mengetahui itu kun''yomi karena semua hiragana terlampir). Anda harus mengingat bagian すく untuk mengingat bacaan kata ini. Pikirkan seperti ini:

Anda tinggal di daerah dengan <vocabulary>sedikit</vocabulary> <reading>schoo</reading>ls (すく) yang sangat sedikit. Mungkin Anda berada di pedesaan Jepang, dimana jumlah sekolah menurun dari tahun ke tahun karena menyusutnya populasi. Karena jumlah sekolah saat ini sangat sedikit, Anda harus pergi ke kota berikutnya untuk mendapatkan pendidikan. Agak merepotkan, tapi hei — beberapa sekolah lebih baik daripada tidak ada sekolah sama sekali.', 'Sedikit, Tidak Banyak, Tidak Banyak, Langka')
    RETURNING id INTO v_2608_sedikit;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '引く', 'untuk-menarik', 3, 80, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>menarik</kanji> dan vocab versi verbanya berarti <vocabulary>menarik</vocabulary>.

Kata ini bisa bersifat transitif atau intransitif. Anda menggunakan 引く secara transitif untuk mengatakan Anda menarik sesuatu, misalnya. Namun bisa juga berarti <kosa kata>menarik diri</vocabulary> ketika Anda berbicara tentang hal-hal yang membuat Anda mundur, seperti air yang surut, rasa sakit yang mereda, tentara yang mundur, atau bahkan tubuh Anda gemetar ketika ada sesuatu yang membuat Anda mundur.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Bacaan (ひ) sama dengan yang kamu pelajari untuk kanji, artinya kamu harusnya sudah mengetahuinya!', 'Untuk Menarik, Untuk Menarik')
    RETURNING id INTO v_2609_untuk_menarik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '心', 'jantung', 3, 81, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Karena kata ini terdiri dari satu kanji, maka sebaiknya menggunakan bacaan kun''yomi. Saat mempelajari kanji, Anda tidak mempelajari bacaan tersebut, jadi inilah mnemonik untuk membantu Anda dengan kata ini: 

Bayangkan <vocabulary>hati</vocabulary> raksasa duduk di perahu dayung. Itu juga minum coklat. Fokus pada ketiga bagian tersebut dan kaitkan menjadi satu cerita/ingatan. Setelah Anda selesai melakukannya, nyanyikan lagu "<reading>cocoa row</reading>" (こころ)! Saya tidak tahu lagu apa itu, tapi saya ingin Anda membuat lagunya dan menyanyikannya dengan lantang. Jika ya, saya yakin Anda tidak akan mudah melupakan bacaan kata ini.', 'Jantung, Pikiran, Merasa')
    RETURNING id INTO v_2610_jantung;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '戸口', 'pintu-keluar-masuk', 3, 82, '<kanji>mulut</kanji> dari <kanji>pintu</kanji> adalah <vocabulary>pintu</vocabulary>! 

戸口 sebagian besar digunakan untuk pintu yang mengarah ke luar. Kata ini memiliki nuansa kuno dan menjadi kurang umum akhir-akhir ini, terutama dalam bahasa Jepang lisan.

Anda mungkin memperhatikan bahwa kata ini menyerupai 出口 (keluar) dan 入り口 (pintu masuk). Seperti dalam kata-kata tersebut, karakter 口 hanya mewakili pembukaan di sini.', 'Bacaan untuk yang satu ini beragam. Anda mendapatkan pembacaan kun''yomi untuk kedua kanji tersebut, meskipun itu kanji kombo (jukugo). Karena satu-satunya bacaan 戸 adalah bacaan kun''yomi, kamu harus mengetahuinya. Selain itu, kamu juga harus mengetahui bacaan kun''yomi untuk 口 dari level 1. Itu berarti selama kamu ingat bahwa ini adalah festival kun''yomi di sini, kamu seharusnya bisa membaca kata ini. Hati-hati juga dengan rendaku (juga dikenal sebagai pengisi suara berurutan). Itu berarti く menjadi ぐ yang bersuara.', 'Pintu keluar masuk')
    RETURNING id INTO v_2611_pintu_keluar_masuk;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '方', 'arah', 3, 83, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.

Anda telah mempelajari 方 yang berarti <vocabulary>direction</vocabulary>, namun bisa juga berarti <vocabulary>way</vocabulary>, seperti dalam この方がいい (<vocabulary>cara</vocabulary> ini lebih baik) atau やり方 (<vocabulary>cara</vocabulary> dalam melakukan sesuatu). 

Menariknya, 方 juga bisa digunakan untuk menyebut orang dengan sopan, seperti こちらの方 (orang ini). Sebab, dalam bahasa Jepang tradisional, orang—terutama bangsawan—sering disebut secara tidak langsung, seolah-olah menunjukkan kehadirannya dari suatu arah.', 'Karena kata ini terdiri dari satu kanji, maka seharusnya menggunakan bacaan kun''yomi, namun sebenarnya bisa menggunakan kun''yomi atau on''yomi tergantung konteksnya. Berikut beberapa mnemonik untuk membantu Anda mengingat bacaan dan cara penggunaannya paling sering:

Anda selalu dapat mengingat <vocabulary>arah</vocabulary> mana <reading>ho</reading>saya (ほう) Anda berada. Letaknya di こっちの方 (arah ini)!

Dan <vocabulary>cara</vocabulary> terbaik untuk mencapainya adalah dengan <reading>cata</reading>pult (かた). Naik saja ketapelnya dan luncurkan diri Anda ke sana — itu yang terbaik やり方.', 'Arah, Jalan')
    RETURNING id INTO v_2612_arah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '止める', 'untuk-menghentikan-sesuatu', 3, 84, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>berhenti</kanji>, jadi versi kosakata kata kerjanya adalah <vocabulary>menghentikan sesuatu</vocabulary>. Atau, bisa juga berarti <vocabulary>berhenti melakukan sesuatu</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Kata ini mempunyai dua bacaan yang berbeda karena maknanya yang sedikit berbeda, jadi inilah beberapa mnemonik untuk membantu mengingat yang mana:

Saat kamu perlu <vocabulary>untuk menghentikan sesuatu</vocabulary> agar tidak bergerak, gunakanlah <reading>jari kaki</reading> (と). Bagi kebanyakan orang, hal ini hanya akan menyebabkan jari kaki tersandung, tetapi Anda memiliki jari kaki yang terbuat dari besi — cukup kuat untuk menghentikan lokomotif yang melaju kencang di jalurnya.

Di sisi lain, ketika Anda perlu <vocabulary>berhenti melakukan sesuatu</vocabulary> — Anda tahu, kebiasaan buruk atau apa pun — Anda memanggil <reading>Ya</reading>nkees (や). Bayangkan seluruh pasukan New York Yankees menyemangati Anda (atau mengancam Anda dengan tongkat pemukul mereka). Anda akan bisa segera berhenti.', 'Untuk Menghentikan Sesuatu, Untuk Berhenti Melakukan Sesuatu')
    RETURNING id INTO v_2614_untuk_menghentikan_sesuatu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '中止', 'pembatalan', 3, 85, 'Anda berada di <kanji>tengah</kanji> sesuatu ketika seseorang berteriak "<kanji>berhenti</kanji>!" Mereka memukul Anda dengan perintah <vocabulary>pembatalan</vocabulary> dan menuntut <vocabulary>penghentian</vocabulary> segera semua aktivitas Anda. Ya, sepertinya Anda telah dibatalkan — sebaiknya cari hal lain untuk dilakukan.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Pembatalan, Penghentian, Penangguhan')
    RETURNING id INTO v_2615_pembatalan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '毛', 'bulu', 3, 86, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Karena kata ini terdiri dari satu kanji, maka sebaiknya menggunakan bacaan kun''yomi. Saat mempelajari kanji, Anda tidak mempelajari bacaan tersebut, jadi inilah mnemonik untuk membantu Anda dengan kata ini: 

Lihat ke bawah! Anda memegang sesuatu yang ditutupi <vocabulary>bulu</vocabulary>. Ini adalah <read>ke</reading>ttle (け) yang berbulu! Ini ketel paling aneh yang pernah Anda lihat, tapi mungkin ketel ini membuat air tetap panas lebih lama.', 'Bulu, Rambut')
    RETURNING id INTO v_2616_bulu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '父', 'ayah', 3, 87, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna. Ini adalah bentuk <vocabulary>ayah</vocabulary> yang sopan dan rendah hati. Anda menggunakan ini ketika Anda berbicara tentang <vocabulary>ayah</vocabulary> Anda sendiri kepada orang lain dalam suasana formal, terutama jika Anda tidak terlalu dekat dengan mereka.', 'Pembacaan kata ini sama dengan yang Anda pelajari saat mempelajari kanji.', 'Ayah, Ayah')
    RETURNING id INTO v_2617_ayah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', 'お父さん', 'ayah', 3, 88, 'Kata ini diawali dengan sebutan kehormatan (お), sehingga kata apa pun yang muncul setelahnya menjadi lebih mulia. Lalu ada 父, yang kamu tahu artinya <kanji>ayah</kanji>. Terakhir, kita memiliki akhiran nama kehormatan <ja>さん</ja>. Jadi ini cara yang bagus untuk mengucapkan <vocabulary>ayah</vocabulary>. 

Anda sebaiknya menggunakan ini saat Anda memanggil atau memanggil <vocabulary>ayah</vocabulary> Anda sendiri, atau saat Anda berbicara tentang dia atau ayah orang lain dalam suasana santai.', 'Bagian yang harus Anda pelajari membaca adalah bagian 父. Ini menggunakan kun''yomi, tapi bukan yang pertama kali Anda pelajari dengan kanji, jadi inilah mnemonik untuk membantu Anda mengingat bacaan baru ini:

Hal yang paling disukai <vocabulary>ayah</vocabulary>mu adalah <reading>とう</reading>きょう. Dia tidak akan berhenti membicarakan とうきょう kepada Anda, dan Anda hanya perlu mendengarkannya. とうきょう ini, とうきょう itu. Untuk benar-benar mengingat gambaran ini, pastikan untuk membayangkan ayahmu terus-menerus mengoceh tentang とうきょう.', 'Ayah, Ayah, Ayah')
    RETURNING id INTO v_2618_ayah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '牛', 'sapi', 3, 89, 'Kanji dan kata-katanya sama. Kata ini sedikit lebih luas daripada <vocabulary>cow</vocabulary>, dan juga dapat digunakan untuk <vocabulary>banteng</vocabulary> dan <vocabulary>ox</vocabulary>.', 'Karena kata ini terdiri dari satu kanji, maka menggunakan bacaan kun''yomi. Berikut ini mnemonik untuk membantu Anda mengingatnya: 

Anda sedang memimpin sapi berkeliling lapangan. Untuk membuat mereka bergerak, teriakkan "<reading>USH</reading>, USH, USH!" (うし) karena kamu mempunyai gangguan bicara dan ingin mengatakan "MUSH MUSH MUSH." Silakan katakan ini dengan lantang, sambil berteriak jika Anda bisa.', 'Sapi, Banteng, Sapi')
    RETURNING id INTO v_2619_sapi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '冬', 'musim-dingin', 3, 90, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaan kata ini sama dengan bacaan kun''yomi yang kamu pelajari untuk kanjinya, artinya kamu harus mengetahui keduanya!', 'Musim dingin')
    RETURNING id INTO v_2622_musim_dingin;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '北', 'utara', 3, 91, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Karena kata ini terdiri dari satu kanji, maka menggunakan bacaan kun''yomi. Anda sudah mempelajari cara membaca dengan kanji, jadi sebaiknya Anda pergi ke sini!', 'Utara')
    RETURNING id INTO v_2623_utara;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '半', 'setengah', 3, 92, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Karena kata ini terdiri dari satu kanji, maka seharusnya menggunakan bacaan kun''yomi. Namun, tidak ada bacaan kun''yomi yang berguna untuk kanji ini, jadi bahkan versi kosakata kanji tunggal pun menggunakan bacaan on''yomi, yang sudah Anda pelajari!', 'Setengah')
    RETURNING id INTO v_2624_setengah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '古い', 'tua', 3, 93, 'Ini adalah kanji tunggal dengan い di akhir, artinya Anda tahu itu mungkin kata sifat. Apa bentuk kata sifat dari <kanji>lama</kanji>? Kata ini juga <vocabulary>lama</vocabulary>, <vocabulary>kuno</vocabulary>, atau <vocabulary>ketinggalan zaman</vocabulary>.

Kata ini digunakan untuk hal-hal seperti pakaian, makanan, dan persahabatan, tetapi tidak untuk orang! Jadi 古い友人 (teman lama) adalah seseorang yang sudah lama berteman dengan Anda, bukan teman lama.', 'Karena kata ini terdiri dari satu kanji dengan beberapa hiragana yang dilampirkan, maka akan menggunakan bacaan kun''yomi. Anda mempelajari on''yomi saat mempelajari bagian kanji, jadi mari gunakan mnemonik untuk membantu Anda membaca kata ini: 

Jika Anda <vocabulary>tua</vocabulary>, Anda juga <reading>penuh</reading> (ふる) dengan kenangan. Dan Anda mungkin penuh dengan rahasia lama. Dan kamu kenyang dengan makanan orang tua.', 'Tua, Kuno, Kedaluwarsa')
    RETURNING id INTO v_2625_tua;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '中古', 'bekas', 3, 94, 'Kombinasi kanjinya kurang masuk akal, tapi tidak apa-apa. Ambil sesuatu yang <kanji>tengah</kanji> <kanji>lama</kanji> dan Anda memiliki sesuatu yang <vocabulary>bekas</vocabulary> atau <vocabulary>bekas</vocabulary>. Belum 100% tua..masih di tengah-tengah, artinya kamu bisa memberikannya kepada orang lain untuk digunakan seperti adik-adikmu.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Bekas, Digunakan')
    RETURNING id INTO v_2626_bekas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '一台', 'satu-mesin', 3, 95, 'Selama Anda mengetahui dua kanji yang membentuk kata ini, Anda pasti bisa memahami arti kata tersebut juga.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Satu Mesin')
    RETURNING id INTO v_2627_satu_mesin;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '二台', 'dua-mesin', 3, 96, 'Saat Anda menggabungkan kedua kanji ini, Anda akan dapat melihat bagaimana kata <vocabulary>dua mesin</vocabulary> terbentuk.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Dua Mesin')
    RETURNING id INTO v_2628_dua_mesin;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '五台', 'lima-mesin', 3, 97, 'Selama Anda mengetahui kedua arti kanji masing-masing, Anda seharusnya bisa menggabungkan yang satu ini untuk mendapatkan <vocabulary>lima mesin</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Lima Mesin')
    RETURNING id INTO v_2629_lima_mesin;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '十台', 'sepuluh-mesin', 3, 98, 'Jika Anda mengetahui kedua kanji tersebut secara terpisah, Anda harus bisa menggabungkan keduanya sehingga membentuk arti dari kanji tersebut.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Sepuluh Mesin')
    RETURNING id INTO v_2630_sepuluh_mesin;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '外', 'di-luar', 3, 99, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.

Perhatikan bahwa 外 tidak selalu sekadar menunjukkan posisi fisik sesuatu. Kata ini juga dapat digunakan secara kiasan untuk merujuk pada apa yang ada di luar lingkaran dalam atau rumah seseorang.', 'Karena kata ini terdiri dari satu kanji, maka sebaiknya menggunakan bacaan kun''yomi. Saat mempelajari kanji, Anda tidak mempelajari bacaan tersebut, jadi inilah mnemonik untuk membantu Anda dengan kata ini: 

Anda melihat <vocabulary>keluar</vocabulary>, semuanya membeku. Anda membuang <reading>garam</reading> (そと) ke luar untuk mencairkan es.', 'Di luar')
    RETURNING id INTO v_2631_di_luar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '外人', 'orang-asing', 3, 100, '"Orang luar" adalah <vocabulary>orang asing</vocabulary>. Kata ini cukup umum, meski juga tidak terlalu sopan. Biasanya tidak apa-apa, tetapi dapat digunakan secara menghina tergantung situasinya. Versi yang lebih sopan adalah 外国人 (orang luar negeri) tetapi Anda tidak akan mempelajarinya sampai Anda mempelajari kanji untuk 国.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Karena 人 memiliki dua bacaan on''yomi, berikut adalah mnemonik untuk membantu Anda mengingat mana yang harus digunakan:

Siapa <vocabulary>orang asing</vocabulary> itu? Jelas sekali <reading>pria</reading> mengenakan <reading>jean</reading> (がいじん)!', 'Orang asing, Orang luar')
    RETURNING id INTO v_2632_orang_asing;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '市', 'kota', 3, 101, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Pembacaan kata ini sama dengan yang Anda pelajari saat mempelajari kanji.', 'Kota')
    RETURNING id INTO v_2635_kota;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '市立', 'kota', 3, 102, 'Ketika <kanji>kota</kanji> <kanji>berdiri</kanji> ada sesuatu, hal itu menjadi <vocabulary>kota</vocabulary>. Anda tahu, seperti perpustakaan <vocabulary>yang dikelola kota</vocabulary> atau gym yang dikelola kota atau semacamnya. Kotalah yang membuat tempat itu tetap berdiri.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kota, Jalankan Kota')
    RETURNING id INTO v_2636_kota;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', 'シアトル市', 'seattle', 3, 103, 'Nama kota (シアトル／しあとる) dengan <kanji>市</kanji> yang terlampir berarti "kota ____". Anda dapat melakukan ini di kota mana pun (cobalah di kota asal Anda!). Jadi kata ini berarti <vocabulary>Seattle</vocabulary>, atau lebih khusus lagi <vocabulary>Kota Seattle</vocabulary>.', 'Kata ini menggunakan bacaan on''yomi, yang Anda pelajari dengan kanji.', 'Seattle, Kota Seattle')
    RETURNING id INTO v_2637_seattle;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '広い', 'lebar', 3, 104, 'Ini adalah kanji tunggal dengan い di akhir, artinya Anda tahu itu mungkin kata sifat. Apa bentuk kata sifat dari <kanji>lebar</kanji>? Kata ini juga memiliki <kosakata>luas</kosakata>.', 'Bacaan untuk kata ini sama dengan bacaan yang kamu pelajari di bagian kanji: ひろ, jadikan <bacaan>ひろ</bacaan>い ini.', 'Lebar, Luas')
    RETURNING id INTO v_2638_lebar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '母', 'ibu', 3, 105, 'Kanji dan kata-katanya sama persis. Artinya keduanya berarti <vocabulary>ibu</vocabulary>.

母 adalah cara formal dan rendah hati untuk mengatakan "<vocabulary>ibuku</vocabulary>" ketika berbicara dengan orang lain. Dengan menggunakan bentuk yang polos dan menghilangkan bahasa hormat terhadap ibumu sendiri, sebenarnya kamu terdengar lebih rendah hati, sehingga memberikan kesan sopan pada lawan bicaramu.

Namun, Anda tidak akan menggunakannya ketika berbicara <em>dengan</em> ibu Anda atau ketika berbicara <em>tentang ibu orang lain</em> — itu akan terlihat terlalu blak-blakan!', 'Bacaannya adalah bacaan kun''yomi, tapi ini adalah bacaan yang dipelajari dengan kanji. Ingat saja, <vocabulary>ibu</vocabulary>mu adalah orang yang buruk dan tidak akan berhenti menertawakanmu: "<reading>HA HA</reading>! HA HA!”', 'Ibu, Ibuku')
    RETURNING id INTO v_2639_ibu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', 'お母さん', 'ibu', 3, 106, 'Kata ini diawali dengan kehormatan (お), yang umumnya menambahkan nuansa rasa hormat atau kesopanan pada kata setelahnya. Lalu ada 母, yang kamu tahu artinya <kanji>ibu</kanji>. Terakhir, kita memiliki akhiran nama kehormatan さん. Jadi ini cara yang bagus untuk mengucapkan <vocabulary>ibu</vocabulary>. Anda menggunakannya ketika berbicara tentang <vocabulary>ibu</vocabulary> dari teman atau kenalan biasa, ketika berbicara tentang ibu Anda sendiri dalam suasana sosial yang santai, atau ketika berbicara dengan ibu Anda sendiri.

Dalam situasi yang lebih formal, Anda dapat menggunakan 母 (diucapkan はは) untuk berbicara tentang ibu Anda sendiri dan お母さま yang sangat penuh hormat untuk berbicara tentang ibu orang lain.', 'Karena kata ini terdiri dari satu kanji, maka menggunakan bacaan kun''yomi. Anda harus mengingat bagian かあ. Berikut ini mnemonik untuk membantu Anda mengingatnya: 

Apa yang dilakukan <vocabulary>ibu</vocabulary>mu yang sangat baik kepadamu (inilah sebabnya kamu begitu sopan padanya!)? Dia mengantarmu berkeliling dengan <reading>mobil</reading> (かあ) yang membawamu kemana pun kamu pergi... sepak bola, kendo, apa pun. Ibumu sungguh baik!', 'Ibu, Mama')
    RETURNING id INTO v_2640_ibu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '用いる', 'untuk-memanfaatkan', 3, 107, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji sendiri berarti <kanji>tugas</kanji> atau <kanji>penggunaan</kanji>. Anda dapat menganggap kata kerja ini sebagai cara yang lebih formal untuk mengatakan <vocabulary>to use</vocabulary>, dan itu adalah <vocabulary>to use</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak mempelajari bacaan tersebut dengan kanji ini, jadi inilah mnemonik untuk membantu Anda mempelajari bagian もち dari もちいる: 

Apa yang akan Anda <vocabulary>manfaatkan</vocabulary> untuk menyelesaikan pekerjaan? Anda memiliki <reading>mochi</reading> (もち) di tangan Anda, jadi Anda akan menggunakannya. Sekarang pikirkanlah semacam tugas imajiner yang akan Anda selesaikan dengan mochi, buatlah tugas itu sekonyol mungkin.', 'Untuk Memanfaatkan, Untuk Digunakan')
    RETURNING id INTO v_2641_untuk_memanfaatkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '矢', 'anak-panah', 3, 108, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Pembacaan kata ini sama dengan yang Anda pelajari saat mempelajari kanji.', 'Anak panah')
    RETURNING id INTO v_2643_anak_panah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '字', 'karakter', 3, 109, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Anda hanya mempelajari satu bacaan untuk kanji yang menyusun kata ini, dan itu sama dengan bacaan untuk kata ini (tentu saja). Artinya, Anda seharusnya sudah mengetahui bacaannya.', 'Karakter, Karakter Kanji, Surat, Simbol')
    RETURNING id INTO v_2657_karakter;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '人生', 'kehidupan-seseorang', 3, 110, 'Gabungan kanji untuk <kanji>orang</kanji> dan <kanji>kehidupan</kanji> membuat Anda berpikir tentang kehidupan manusia. Seperti apa <vocabulary>kehidupan manusia</vocabulary> Anda?', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Karena 人 dan 生 keduanya memiliki dua bacaan on''yomi, berikut ini mnemonik untuk membantu Anda:

<vocabulary>hidup</vocabulary> Anda hanya terdiri dari dua hal: <reading>jean</reading>s dan <reading>sa</reading>ber (じんせい). Seluruh hidupmu, hanya itu yang kamu perlukan, jeans dan pedang. Siapa kamu, bajak laut Amerika?', 'Kehidupan Seseorang, Kehidupan Manusia, Kehidupan')
    RETURNING id INTO v_3407_kehidupan_seseorang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', 'イギリス人', 'orang-inggris', 3, 111, 'イギリス berarti "Inggris Raya" atau "Britania Raya". Jadi apa yang dimaksud dengan "orang Inggris Raya?" Anda dapat menebaknya — <vocabulary>Orang Inggris</vocabulary>, atau <vocabulary>Brit</vocabulary>.', 'Seringkali, ketika dua kanji bersatu membentuk gabungan kanji (atau jukugo), Anda menggunakan pembacaan on''yomi. Ini mirip dengan itu, meskipun bukan kanji lain yang digunakan adalah kata asing. Pola ini juga berlaku di hampir semua negara. Cukup tambahkan 人 ke nama negara dan Anda sudah mendeskripsikan orang-orang yang tinggal di sana. Anda akan melihat lebih banyak lagi sebelum Anda selesai di sini.

Dan karena 人 memiliki dua bacaan on''yomi, berikut adalah mnemonik untuk membantu Anda mengingat mana yang harus digunakan: 

Seperti semua kata untuk kebangsaan, 人 di sini diucapkan じん. Semua warga negara, termasuk <vocabulary>Brit</vocabulary>s, menyukai <reading>jean</reading>s (じん)!', 'Orang Inggris, Inggris')
    RETURNING id INTO v_3936_orang_inggris;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '〜台', 'penghitung-mesin-besar', 3, 112, 'Penghitung ini digunakan dengan beberapa jenis <kanji>mesin</kanji>, biasanya yang berukuran cukup besar (jadi tidak ada yang terlalu kecil). Mobil adalah contoh yang bagus untuk hal ini. Namun dapat juga digunakan untuk benda-benda seperti komputer, yang dulunya berukuran ruangan, namun kini menjadi bagus dan kecil. Terima kasih teknologi!', 'Bacaannya sama dengan yang Anda pelajari dengan kanji. Pastikan untuk menghilangkan 〜 dalam jawaban Anda karena ini hanya pengganti angka.', 'Penghitung Mesin Besar, Penghitung Mesin, Jumlah Mesin')
    RETURNING id INTO v_7455_penghitung_mesin_besar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '〜人', 'jumlah-orang', 3, 113, 'Saat Anda melihat ini pada sebuah angka, misalnya ７人 atau ３人, Anda menggunakannya untuk menghitung orang. Ingat saja, 一人 dan 二人 memiliki bacaan alternatif. Dari 3 ke atas tinggal angka plus にん, seperti ini. ５人 adalah ごにん, １０人 adalah じゅうにん, dll. Ini adalah <vocabulary>penghitung untuk orang</vocabulary>, yang membuat kata ini menjadi <vocabulary>jumlah orang</vocabulary>.', 'Ini adalah counter, yang biasanya berarti pembacaan on''yomi dari kanji. Karena 人 memiliki dua bacaan on''yomi, berikut adalah mnemonik untuk membantu Anda mengingat mana yang harus digunakan:

Coba bayangkan <vocabulary>jumlah orang</vocabulary> yang banyak di <reading>Nin</reading>tendo (にん). Ini pasti sangat besar. Ini sebenarnya hanyalah <vocabulary>counter untuk orang-orang</vocabulary> yang bekerja di Nintendo.', 'Jumlah Orang, Rakyat, Konter Untuk Orang')
    RETURNING id INTO v_7465_jumlah_orang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '少女', 'gadis', 3, 114, '<kanji>beberapa</kanji> <kanji>wanita</kanji> — apa itu? Katakanlah seseorang yang memiliki beberapa tahun dan sedikit pengalaman, yang berarti dia masih <vocabulary>cewek</vocabulary>. 

少女 adalah kata yang relatif formal yang sering digunakan secara tertulis untuk mendeskripsikan <vocabulary>gadis muda</vocabulary>, biasanya antara masa kanak-kanak dan remaja (atau antara usia sekitar lima dan delapan belas tahun).', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Gadis, Gadis muda')
    RETURNING id INTO v_7518_gadis;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '万', 'sepuluh-ribu', 3, 115, 'Jika sebuah kata vocab berbentuk kanji tunggal tanpa okurigana (hiragana yang melekat pada kanji), biasanya kata tersebut memiliki arti yang sama dengan kanji asal kata tersebut. Jika Anda mengetahui arti kanjinya, Anda juga akan mengetahui arti vocabnya. Itu <vocabulary>sepuluh ribu</vocabulary>!', 'Jika suatu kata vocab berbentuk kanji tunggal tanpa okurigana, biasanya menggunakan bacaan kun''yomi. Angka merupakan pengecualian dalam hal ini. Angka menggunakan bacaan on''yomi, yang telah Anda pelajari dengan mempelajari bacaan kanji! Bagus sekali!', 'Sepuluh Ribu')
    RETURNING id INTO v_7519_sepuluh_ribu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '今日は', 'halo', 3, 116, 'Ini adalah hal yang aneh. Ini adalah こんにちは, yang mungkin pernah Anda dengar sebelumnya, namun dieja menggunakan kanji <kanji>sekarang</kanji> dan <kanji>hari</kanji>. Jadi ketika Anda mengatakan "sekarang hari!" kamu benar-benar mengucapkan <vocabulary>halo</vocabulary>!

Peringatan! Jangan campur ini dengan きょうは! Meskipun terlihat sama, maksudnya tidak sama. Kami hanya akan menanyakan こんにちは, jadi cobalah untuk mengingatnya!

Kami biasanya tidak menggunakan kanji untuk ini, jadi jangan gunakan saat Anda menulis. Namun Anda mungkin akan menemukannya di alam liar, jadi ada baiknya Anda mengetahuinya!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri. Perlu diketahui bahwa は di akhir sebenarnya adalah partikel は sehingga diucapkan seperti わ.', 'Halo, Selamat tinggal')
    RETURNING id INTO v_7564_halo;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '用', 'tugas', 3, 117, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Yang ini menggunakan bacaan on''yomi, yang sudah Anda pelajari dari kanji!', 'Tugas, Menggunakan, Bisnis, Tujuan')
    RETURNING id INTO v_7669_tugas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '大人しい', 'patuh', 3, 118, 'Ingat bagaimana Anda mengetahui bahwa 大人 berarti "dewasa?" Ini adalah versi kata sifat dari itu. Kata sifat I (lihat akhirannya dengan い?). Kata sifat apa yang orang dewasa ingin gunakan untuk anak-anak mereka sendiri? Mereka ingin mengatakan bahwa mereka adalah anak-anak yang <vocabulary>taat</vocabulary>, <vocabulary>pendiam</vocabulary>!', 'Anda sudah mempelajari bacaan ini ketika Anda mempelajari 大人! Anda juga harus bisa membaca ini!', 'Patuh, Diam, Tenang')
    RETURNING id INTO v_8659_patuh;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '戸', 'pintu', 3, 119, '<kanji>pintu</kanji> adalah <vocabulary>pintu</vocabulary> — kanji dan kata-katanya sama persis.

戸 bisa mengacu pada jenis pintu apa pun, namun lebih sering digunakan untuk <vocabulary>pintu geser</vocabulary>, karena itulah gaya pintu tradisional di Jepang. Untuk pintu gaya Barat atau teknologi tinggi, orang cenderung hanya mengucapkan ドア.', 'Bacaannya sama dengan kanji yang Anda pelajari, artinya Anda tahu bacaannya!', 'Pintu, Pintu Geser')
    RETURNING id INTO v_8734_pintu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '女の人', 'wanita', 3, 120, '<kanji>wanita</kanji> <kanji>orang</kanji> adalah <vocabulary>wanita</vocabulary>.

Partikel の di sini berarti kata benda pertama memodifikasi kata benda kedua, jadi kamu mungkin bisa mengerti mengapa 女の人 (orang perempuan) sebenarnya berarti perempuan! Ini lebih sopan daripada mengucapkan 女 sendirian, jadi hanya itu yang harus Anda ingat.', 'Kata ini sebenarnya adalah dua kata terpisah yang digabungkan dengan sebuah partikel. Jadi, karena Anda memperlakukannya seperti kata-kata yang terpisah, Anda membacanya masing-masing dengan pembacaan kun''yomi (keduanya merupakan kata-kata kanji tunggal). Meskipun demikian, di level 1 Anda belajar tentang pembacaan kosakata untuk kata-kata terpisah ini, jadi gunakan pengetahuan itu untuk mengingat bacaan kata ini juga.', 'Wanita')
    RETURNING id INTO v_8735_wanita;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '広げる', 'untuk-menyebarkan-sesuatu', 3, 121, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. 

Kanji itu sendiri berarti <kanji>lebar</kanji>, dan versi kata kerjanya adalah apa yang terjadi ketika Anda mencoba membuat sesuatu lebih luas. Bagaimana cara membuat sesuatu lebih luas? Benar sekali, Anda harus <vocabulary>menyebarkan sesuatu</vocabulary>, <vocabulary>membuka sesuatu</vocabulary> atau <vocabulary>membuka sesuatu</vocabulary>. Semua tindakan itu akan membuat segalanya menjadi lebih luas!

Ini adalah kata kerja transitif. Artinya dibutuhkan objek langsung. Anda menyebarkan sesuatu. Seperti koran, atau kain di atas meja.', 'Karena kata ini memiliki okurigana (hiragana yang melekat pada kanji), Anda tahu bahwa kemungkinan besar itu adalah bacaan kun''yomi. Anda mempelajari bacaan ini dengan kanji, namun berikut ini mnemonik pengingat untuk membantu Anda:

Anda akan <vocabulary>menyebarkan sesuatu</vocabulary>. Apa yang akan kamu sebarkan? Bagaimana dengan lenganmu, sehingga kamu bisa terbang ke angkasa seperti <reading>pahlawan</reading> (ひろ) super! Kebanyakan pahlawan bisa terbang ketika mereka merentangkan tangannya lebar-lebar!', 'Untuk Menyebarkan Sesuatu, Untuk Mengungkap Sesuatu, Untuk Membuka Sesuatu')
    RETURNING id INTO v_8945_untuk_menyebarkan_sesuatu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '山びこ', 'gema', 3, 122, 'Anda tahu bahwa 山 artinya gunung. Tambahkan hiragana びこ di akhir dan ini memberi Anda <vocabulary>echo</vocabulary>. Itu karena anak-anak lebah (lebah 子) menyukai gema, terutama <vocabulary>gema gunung</vocabulary>! Bayangkan bayi lebah berdengung sekeras yang mereka bisa dan mendengar suara mereka bergema melalui pegunungan.

Seperti yang disarankan dalam kanji, 山びこ umumnya digunakan untuk menggambarkan gema yang Anda dapatkan jika Anda berteriak di pegunungan. Untuk mendeskripsikan jenis gema lainnya, Anda dapat menggunakan kata katakana エコー.

Ngomong-ngomong, sebenarnya ada kanji untuk bagian kedua kata ini, tapi sangat jarang yang biasanya ditulis dengan kana!', 'Anda mempelajari pembacaan kanji ini ketika Anda mempelajari kosakata 山.', 'Gema, Gema Gunung')
    RETURNING id INTO v_8957_gema;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', 'テーブルの上', 'di-atas-meja', 3, 123, 'Pertama kita memiliki kata katakana, jadi dapat diasumsikan bahwa itu adalah kata pinjaman. Seperti banyak kata pinjaman lainnya, kata ini berasal dari bahasa Inggris. Katakan dengan lantang dan apa yang Anda punya? Itu benar, "meja". Kemudian muncul partikel の, yang menggabungkan dua kata benda menjadi satu. Yang terakhir adalah 上, yang Anda pelajari berarti "naik" atau "di atas". Gabungkan semua bagian ini dan kita akan mendapatkan sebuah frase yang berarti <vocabulary>di atas meja</vocabulary> atau <vocabulary>tabletop</vocabulary>!', 'Dalam frasa ini, 上 adalah kata yang berdiri sendiri, sehingga menggunakan bacaan yang sama seperti yang Anda pelajari saat mempelajari kosakatanya. Mudah untuk tetap di atas yang satu itu, bukan?', 'Di Atas Meja, Meja')
    RETURNING id INTO v_8959_di_atas_meja;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', 'ベッドの下', 'di-bawah-tempat-tidur', 3, 124, 'Ini dimulai dengan kata katakana lain, sehingga Anda dapat berasumsi bahwa itu adalah kata pinjaman. Yang ini juga berasal dari bahasa Inggris. Bisakah Anda mengetahui apa artinya? Itu benar, "tempat tidur". Kemudian muncul partikel の, yang menggabungkan dua kata benda menjadi satu. Terakhir, ada 下, yang Anda pelajari berarti "turun" atau "di bawah". Gabungkan elemen-elemen ini dan Anda akan mendapatkan <vocabulary>di bawah tempat tidur</vocabulary>, <vocabulary>di bawah tempat tidur</vocabulary>, atau <vocabulary>di bawah tempat tidur</vocabulary>. Apa yang ada di bawah tempat tidurmu?', '下 adalah kata yang berdiri sendiri di sini, jadi kata ini menggunakan bacaan yang sama seperti yang Anda pelajari saat mempelajari kosakatanya.', 'Di Bawah Tempat Tidur, Di Bawah Tempat Tidur, Di Bawah Tempat Tidur')
    RETURNING id INTO v_8960_di_bawah_tempat_tidur;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '日の出', 'matahari-terbit', 3, 125, 'Apa yang kita sebut dengan <kanji>matahari</kanji>keluar</kanji> dari cakrawala? Itu akan menjadi <vocabulary>matahari terbit</vocabulary>. Bayangkan matahari keluar dari cakrawala dan naik ke langit.', 'Ini menggunakan pembacaan kun''yomi kanji yang telah Anda pelajari. Selama Anda mengingatnya, Anda boleh melakukannya!', 'Matahari terbit')
    RETURNING id INTO v_9131_matahari_terbit;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '生ビール', 'draf-bir', 3, 126, 'Anda baru saja mempelajari kosakata 生 yang artinya segar. Dikombinasikan dengan kata katakana untuk bir menghasilkan bir draft atau bir yang tidak dipasteurisasi.

Perhatikan bahwa meskipun di banyak negara, "draft beer" hanya mengacu pada bir yang diambil dari tong, 生ビール juga bisa merujuk pada bir kaleng atau botolan yang tidak dipasteurisasi, sehingga umur simpannya lebih pendek, tetapi juga menjaganya tetap segar.', 'Hati-hati menggunakan kun''yomi untuk 生 di sini. Selain itu, selama Anda mengetahui katakana Anda, Anda dapat melakukannya dengan baik!', 'Draf Bir, Bir yang tidak dipasteurisasi')
    RETURNING id INTO v_9141_draf_bir;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '北口', 'pintu-keluar-utara', 3, 127, 'Ingat bagaimana 入り口 berarti "pintu masuk" dan 出口 berarti "keluar"? Kosakata ini hanyalah bagian 口 yang ditambahkan petunjuk arah. Ini juga menjadikannya sebagai pintu masuk atau keluar. Jadi bila Anda memiliki kanji untuk <kanji>utara</kanji>, itu menjadikannya <vocabulary>pintu keluar utara</vocabulary> atau <vocabulary>pintu masuk utara</vocabulary>. Ini adalah kata yang bagus untuk diketahui jika Anda ingin mengetahui sisi stasiun kereta mana yang harus Anda tinggalkan untuk pergi ke suatu tempat atau bertemu seseorang!', 'Sama seperti 入り口 dan 出口, ini juga menggunakan bacaan kun''yomi. Dan sama seperti sebelumnya, hati-hati dengan rendaku yang berubah くち menjadi ぐち!', 'Pintu Keluar Utara, Pintu Masuk Utara, Gerbang Utara')
    RETURNING id INTO v_9148_pintu_keluar_utara;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '明かり', 'lampu', 3, 128, 'Apa yang membuat <kanji>terang</kanji> di sekitar sini? <vocabulary>ringan</vocabulary>!

Catatan: 明かり kebanyakan digunakan untuk cahaya yang berasal dari sumber tertentu, seperti lampu atau bola lampu. Anda akan mempelajari kata yang lebih umum untuk cahaya dalam beberapa level.', 'Karena kata ini memiliki okurigana (hiragana yang melekat pada kanji), Anda tahu bahwa kemungkinan besar itu adalah bacaan kun''yomi. Anda sudah tahu bacaan dari kanjinya!', 'Lampu')
    RETURNING id INTO v_9258_lampu;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2478_orang_amerika, 'Orang Amerika', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2478_orang_amerika, 'Orang Dari Amerika', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2479_orang_perancis, 'Orang Perancis', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2479_orang_perancis, 'orang Prancis', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2574_marmer, 'Marmer', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2576_untuk_dilahirkan, 'Untuk Dilahirkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2579_segar, 'Segar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2579_segar, 'Mentah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2579_segar, 'Hidup', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2588_sepuluh_ribu, 'Sepuluh Ribu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2589_dua_puluh_ribu, 'Dua Puluh Ribu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2590_seratus_ribu, 'Seratus Ribu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2590_seratus_ribu, 'Seratus Ribu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2593_sekarang, 'Sekarang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2594_hari_ini, 'Hari ini', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2595_bulan_ini, 'Bulan ini', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2595_bulan_ini, 'Bulan berjalan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2597_setengah, 'Setengah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2600_bagian, 'Bagian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2600_bagian, 'Bagian', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2600_bagian, 'Isi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2602_penting, 'Penting', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2602_penting, 'Berharga', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2602_penting, 'Berharga', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2603_untuk_memotong, 'Untuk Memotong', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2604_teman, 'Teman', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2605_gemuk, 'Gemuk', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2605_gemuk, 'Tebal', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2607_sedikit, 'Sedikit', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2607_sedikit, 'Beberapa', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2607_sedikit, 'Sedikit', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2607_sedikit, 'Sedikit', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2608_sedikit, 'Sedikit', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2608_sedikit, 'Tidak Banyak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2608_sedikit, 'Tidak Banyak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2608_sedikit, 'Langka', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2609_untuk_menarik, 'Untuk Menarik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2609_untuk_menarik, 'Untuk Menarik', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2610_jantung, 'Jantung', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2610_jantung, 'Pikiran', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2610_jantung, 'Merasa', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2611_pintu_keluar_masuk, 'Pintu keluar masuk', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2612_arah, 'Arah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2612_arah, 'Jalan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2614_untuk_menghentikan_sesuatu, 'Untuk Menghentikan Sesuatu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2614_untuk_menghentikan_sesuatu, 'Untuk Berhenti Melakukan Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2615_pembatalan, 'Pembatalan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2615_pembatalan, 'Penghentian', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2615_pembatalan, 'Penangguhan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2616_bulu, 'Bulu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2616_bulu, 'Rambut', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2617_ayah, 'Ayah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2617_ayah, 'Ayah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2618_ayah, 'Ayah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2618_ayah, 'Ayah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2618_ayah, 'Ayah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2619_sapi, 'Sapi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2619_sapi, 'Banteng', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2619_sapi, 'Sapi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2622_musim_dingin, 'Musim dingin', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2623_utara, 'Utara', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2624_setengah, 'Setengah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2625_tua, 'Tua', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2625_tua, 'Kuno', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2625_tua, 'Kedaluwarsa', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2626_bekas, 'Bekas', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2626_bekas, 'Digunakan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2627_satu_mesin, 'Satu Mesin', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2628_dua_mesin, 'Dua Mesin', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2629_lima_mesin, 'Lima Mesin', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2630_sepuluh_mesin, 'Sepuluh Mesin', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2631_di_luar, 'Di luar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2632_orang_asing, 'Orang asing', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2632_orang_asing, 'Orang luar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2635_kota, 'Kota', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2636_kota, 'Kota', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2636_kota, 'Jalankan Kota', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2637_seattle, 'Seattle', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2637_seattle, 'Kota Seattle', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2638_lebar, 'Lebar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2638_lebar, 'Luas', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2639_ibu, 'Ibu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2639_ibu, 'Ibuku', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2640_ibu, 'Ibu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2640_ibu, 'Mama', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2641_untuk_memanfaatkan, 'Untuk Memanfaatkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2641_untuk_memanfaatkan, 'Untuk Digunakan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2643_anak_panah, 'Anak panah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2657_karakter, 'Karakter', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2657_karakter, 'Karakter Kanji', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2657_karakter, 'Surat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2657_karakter, 'Simbol', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3407_kehidupan_seseorang, 'Kehidupan Seseorang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3407_kehidupan_seseorang, 'Kehidupan Manusia', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3407_kehidupan_seseorang, 'Kehidupan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3936_orang_inggris, 'Orang Inggris', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3936_orang_inggris, 'Inggris', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7455_penghitung_mesin_besar, 'Penghitung Mesin Besar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7455_penghitung_mesin_besar, 'Penghitung Mesin', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7455_penghitung_mesin_besar, 'Jumlah Mesin', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7465_jumlah_orang, 'Jumlah Orang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7465_jumlah_orang, 'Rakyat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7465_jumlah_orang, 'Konter Untuk Orang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7518_gadis, 'Gadis', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7518_gadis, 'Gadis muda', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7519_sepuluh_ribu, 'Sepuluh Ribu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7564_halo, 'Halo', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7564_halo, 'Selamat tinggal', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7669_tugas, 'Tugas', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7669_tugas, 'Menggunakan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7669_tugas, 'Bisnis', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7669_tugas, 'Tujuan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8659_patuh, 'Patuh', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8659_patuh, 'Diam', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8659_patuh, 'Tenang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8734_pintu, 'Pintu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8734_pintu, 'Pintu Geser', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8735_wanita, 'Wanita', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8945_untuk_menyebarkan_sesuatu, 'Untuk Menyebarkan Sesuatu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8945_untuk_menyebarkan_sesuatu, 'Untuk Mengungkap Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8945_untuk_menyebarkan_sesuatu, 'Untuk Membuka Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8957_gema, 'Gema', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8957_gema, 'Gema Gunung', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8959_di_atas_meja, 'Di Atas Meja', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8959_di_atas_meja, 'Meja', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8960_di_bawah_tempat_tidur, 'Di Bawah Tempat Tidur', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8960_di_bawah_tempat_tidur, 'Di Bawah Tempat Tidur', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8960_di_bawah_tempat_tidur, 'Di Bawah Tempat Tidur', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9131_matahari_terbit, 'Matahari terbit', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9141_draf_bir, 'Draf Bir', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9141_draf_bir, 'Bir yang tidak dipasteurisasi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9148_pintu_keluar_utara, 'Pintu Keluar Utara', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9148_pintu_keluar_utara, 'Pintu Masuk Utara', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9148_pintu_keluar_utara, 'Gerbang Utara', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9258_lampu, 'Lampu', true, true);

  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2478_orang_amerika, 'あめりかじん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2478_orang_amerika, 'アメリカじん', NULL, false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2479_orang_perancis, 'ふらんすじん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2479_orang_perancis, 'フランスじん', NULL, false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2574_marmer, 'びーだま', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2574_marmer, 'ビーだま', NULL, false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2576_untuk_dilahirkan, 'うまれる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2579_segar, 'なま', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2588_sepuluh_ribu, 'いちまん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2589_dua_puluh_ribu, 'にまん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2590_seratus_ribu, 'じゅうまん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2593_sekarang, 'いま', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2594_hari_ini, 'きょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2595_bulan_ini, 'こんげつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2597_setengah, 'はんぶん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2600_bagian, 'ぶん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2602_penting, 'たいせつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2603_untuk_memotong, 'きる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2604_teman, 'ゆうじん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2605_gemuk, 'ふとい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2607_sedikit, 'すこし', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2608_sedikit, 'すくない', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2609_untuk_menarik, 'ひく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2610_jantung, 'こころ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2611_pintu_keluar_masuk, 'とぐち', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2612_arah, 'ほう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2612_arah, 'かた', NULL, false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2614_untuk_menghentikan_sesuatu, 'とめる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2614_untuk_menghentikan_sesuatu, 'やめる', NULL, false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2615_pembatalan, 'ちゅうし', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2616_bulu, 'け', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2617_ayah, 'ちち', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2618_ayah, 'おとうさん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2619_sapi, 'うし', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2622_musim_dingin, 'ふゆ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2623_utara, 'きた', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2624_setengah, 'はん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2625_tua, 'ふるい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2626_bekas, 'ちゅうこ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2627_satu_mesin, 'いちだい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2628_dua_mesin, 'にだい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2629_lima_mesin, 'ごだい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2630_sepuluh_mesin, 'じゅうだい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2631_di_luar, 'そと', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2632_orang_asing, 'がいじん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2635_kota, 'し', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2636_kota, 'しりつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2637_seattle, 'しあとるし', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2637_seattle, 'シアトルし', NULL, false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2638_lebar, 'ひろい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2639_ibu, 'はは', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2640_ibu, 'おかあさん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2641_untuk_memanfaatkan, 'もちいる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2643_anak_panah, 'や', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2657_karakter, 'じ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3407_kehidupan_seseorang, 'じんせい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3936_orang_inggris, 'いぎりすじん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3936_orang_inggris, 'イギリスじん', NULL, false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7455_penghitung_mesin_besar, 'だい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7465_jumlah_orang, 'にん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7518_gadis, 'しょうじょ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7519_sepuluh_ribu, 'まん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7564_halo, 'こんにちは', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7669_tugas, 'よう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8659_patuh, 'おとなしい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8734_pintu, 'と', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8735_wanita, 'おんなのひと', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8945_untuk_menyebarkan_sesuatu, 'ひろげる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8957_gema, 'やまびこ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8959_di_atas_meja, 'てーぶるのうえ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8959_di_atas_meja, 'テーブルのうえ', NULL, false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8960_di_bawah_tempat_tidur, 'べっどのした', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8960_di_bawah_tempat_tidur, 'ベッドのした', NULL, false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9131_matahari_terbit, 'ひので', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9141_draf_bir, 'なまびーる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9141_draf_bir, 'なまビール', NULL, false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9148_pintu_keluar_utara, 'きたぐち', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9258_lampu, 'あかり', NULL, true, true);

  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2478_orang_amerika, 'アメリカ人ですか？', 'Apakah kamu orang Amerika?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2478_orang_amerika, 'アメリカ人が二人います。', 'Ada dua orang Amerika.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2478_orang_amerika, 'マイケルは、フレンドリーなアメリカ人だ。', 'Michael adalah orang Amerika yang ramah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2479_orang_perancis, '二人のフランス人がいる。', 'Ada dua orang Perancis.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2479_orang_perancis, 'このレストランのシェフはフランス人です。', 'Koki di restoran ini adalah orang Prancis.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2479_orang_perancis, 'ウワサによると、フランス人はビールものむらしいよ。', 'Menurut kabar yang beredar, orang Prancis rupanya juga minum bir.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2574_marmer, 'ビー玉は小さい丸い玉です。', 'Kelereng berbentuk bola bulat kecil.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2574_marmer, '二月三日に大きなビー玉のレースがあります。', 'Ada perlombaan marmer besar pada tanggal 3 Februari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2574_marmer, 'ママの目玉、ビー玉みたいできれいだね。', 'Bu, bola matamu indah seperti kelereng.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2576_untuk_dilahirkan, '今月、生まれるトイプードルをかうつもりです。', 'Saya berencana membeli mainan pudel yang akan lahir bulan ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2576_untuk_dilahirkan, '母はアメリカで生まれた。', 'Ibu saya lahir di Amerika Serikat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2576_untuk_dilahirkan, '生まれたばかりの子もミルクをのみますよ。', 'Bayi baru lahir juga minum susu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2579_segar, '生ビール、一つ下さい。', 'Tolong, satu draft bir.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2579_segar, '生のパプリカは、おいしいですか？', 'Apakah paprika mentah enak?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2579_segar, 'おばあちゃんはビートルズを生でみたことがある。', 'Nenek pernah melihat The Beatles secara langsung.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2588_sepuluh_ribu, 'ここの人口はおよそ一万人です。', 'Populasi di sini sekitar 10.000.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2588_sepuluh_ribu, 'この中古のコートは一万円でした。', 'Mantel bekas ini harganya 10.000 yen.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2588_sepuluh_ribu, '一万メートルは十キロメートルです。', '10.000 meter adalah sepuluh kilometer.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2589_dua_puluh_ribu, 'このマンゴーは二万円もしました。', 'Mangga ini harganya 20.000 yen.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2589_dua_puluh_ribu, '二万フォロワーおめでとうございます。', 'Selamat atas dua puluh ribu pengikut!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2589_dua_puluh_ribu, 'あのスニーカー、二万ドルもしたんだって！', 'Rupanya sepatu kets itu berharga 20.000 dolar!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2590_seratus_ribu, 'このアパートは月に十万円くらいです。', 'Apartemen ini berharga sekitar 100.000 yen sebulan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2590_seratus_ribu, 'ニューヨークへのフライトで十万マイルもらった。', 'Saya mendapat 100.000 mil dari penerbangan ke New York.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2590_seratus_ribu, 'あの女の子、十万人もフォロワーがいるんだって。', 'Rupanya gadis itu punya ratusan ribu pengikut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2593_sekarang, '今、日本にいます。', 'Saya di Jepang sekarang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2593_sekarang, '今、母にメールしてるところです。', 'Aku sedang mengirim pesan pada ibuku sekarang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2593_sekarang, '今の女王は、とてもやさしい。', 'Ratu sekarang sangat baik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2594_hari_ini, '今日、ひま？', 'Apakah kamu bebas hari ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2594_hari_ini, '今日のテストは、いいスコアだったよ。', 'Saya mendapat nilai bagus pada tes hari ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2594_hari_ini, 'やばい！今日、母の日じゃん！', 'Ya ampun! Hari ini adalah Hari Ibu!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2595_bulan_ini, '今月は大切なテストがあります。', 'Ada ujian penting bulan ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2595_bulan_ini, '今月の十日までにやって下さい。', 'Silakan lakukan ini paling lambat tanggal 10 bulan ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2595_bulan_ini, '今月は、シアトル市にいます。', 'Saya akan berada di Seattle bulan ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2597_setengah, 'この本を半分までよみました。', 'Saya sudah membaca setengah bagian buku ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2597_setengah, 'このクラスの半分は女子です。', 'Setengah dari kelas ini adalah perempuan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2597_setengah, 'ざっくりこのクラスの半分ぐらいはニンジャです。', 'Secara kasar, sekitar setengah dari kelas ini adalah ninja.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2600_bagian, 'それはお父さんの分のアイスクリームだよ。', 'Itu porsi es krim ayah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2600_bagian, 'このウィスキーのアルコール分は四十パーセントです。', 'Kandungan alkohol dalam wiski ini adalah empat puluh persen.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2600_bagian, 'この市はシアトル市の3分の1の大きさです。', 'Kota ini sepertiga luas Seattle.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2602_penting, '友人は大切だ。', 'Teman itu penting.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2602_penting, 'これは大切なネックレスなんです。', 'Ini adalah kalung yang berharga.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2602_penting, 'このビー玉、大切にしてね。', 'Tolong rawat marmer ini dengan baik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2603_untuk_memotong, 'マンゴーはナイフで切る。', 'Anda memotong mangga dengan pisau.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2603_untuk_memotong, 'あの大きい木、チェーンソーで切ったんですか？', 'Apakah Anda menebang pohon besar itu dengan gergaji mesin?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2603_untuk_memotong, '犬の毛を切ったら牛みたいになっちゃった。', 'Saya memotong bulu anjing saya dan sekarang terlihat seperti sapi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2604_teman, 'マイケルさんは、父の友人です。', 'Michael adalah teman ayahku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2604_teman, 'アメリカ人の友人がいます。', 'Saya punya teman Amerika.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2604_teman, '友人のハネムーンについてきました。', 'Saya ikut pada bulan madu teman saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2605_gemuk, '太い木がたくさんあった。', 'Ada banyak pohon lebat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2605_gemuk, 'このジーンズ、少し太いかな。', 'Apakah jeans ini agak tebal?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2605_gemuk, 'わたしの毛は少ないけど、太いんです。', 'Rambutku tidak banyak, tapi tebal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2607_sedikit, 'カレーが少しあるよ。', 'Ada sedikit kari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2607_sedikit, 'このアパートは三人には少し小さいですか？', 'Apakah apartemen ini agak kecil untuk tiga orang?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2607_sedikit, 'ケチャップが少しずつしか出ない。', 'Saus tomatnya hanya keluar sedikit demi sedikit.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2608_sedikit, 'このエリアには白人やアジア人は少ないです。', 'Hanya ada sedikit orang bule dan Asia di daerah ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2608_sedikit, 'のこり少ないトイレットペーパー、大切にしよう。', 'Mari kita manfaatkan tisu toilet dengan sebaik-baiknya, karena tidak banyak yang tersisa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2608_sedikit, '友人が少ないことは、わるいことじゃない。', 'Bukan hal yang buruk untuk memiliki sedikit teman.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2609_untuk_menarik, 'ビビッドピンクは人の目を引くカラーです。', 'Warna pink cerah adalah warna yang menarik perhatian.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2609_untuk_menarik, 'このレバーを力いっぱい引いて。', 'Tarik tuas ini dengan seluruh kekuatan Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2609_untuk_menarik, '十引くニは八でしょ？', 'Sepuluh dikurangi dua sama dengan delapan, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2610_jantung, 'パパは心が大きい。', 'Ayah mempunyai hati yang besar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2610_jantung, 'キューピッドの矢が心にささった。', 'Panah Cupid menusuk hatiku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2610_jantung, '「おはよう、王子」と、心の中でいった。', '“Selamat pagi, Pangeran,” kataku dalam hati.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2611_pintu_keluar_masuk, 'このアパート、戸口のデザインがかわいいですね。', 'Desain pintu apartemen ini lucu sekali.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2611_pintu_keluar_masuk, 'この戸口、少し小さいね。', 'Pintu masuk ini agak kecil.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2611_pintu_keluar_masuk, 'なんで、ずっと戸口に立ってるの？', 'Kenapa kamu selalu berdiri di ambang pintu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2612_arah, '北の方にショッピングモールがありますよ。', 'Ada pusat perbelanjaan di Utara.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2612_arah, 'チョコレートケーキのつくり方は分かりますか？', 'Tahukah Anda cara membuat kue coklat?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2612_arah, 'どっちの方がいい？', 'Mana yang lebih baik?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2614_untuk_menghentikan_sesuatu, '火を止めるボタンはこれです。', 'Ini adalah tombol untuk menghentikan api.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2614_untuk_menghentikan_sesuatu, 'いそいで水を止めた。', 'Aku bergegas menghentikan airnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2614_untuk_menghentikan_sesuatu, 'フグは「はっ？」といって、トマトを切る手を止めた。', 'Fugu berkata, "Hah?," dan menghentikan tangan mereka yang sedang memotong tomat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2615_pembatalan, '五日のカラオケコンテストは中止ですか？', 'Apakah kontes karaoke pada tanggal 5 dibatalkan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2615_pembatalan, 'コンサート、中止しないでほしいな。', 'Saya berharap konsernya tidak dibatalkan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2615_pembatalan, 'メンバーの一人にスキャンダルがあったため、ツアーはしばらく中止だ。', 'Karena skandal yang melibatkan salah satu anggota, tur tersebut dibatalkan untuk sementara waktu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2616_bulu, 'この牛、毛がたくさんですね。', 'Sapi ini mempunyai banyak bulu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2616_bulu, '生まれたときから毛がありました。', 'Saya memiliki rambut sejak saya lahir.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2616_bulu, '犬の毛のせいで白のシャツはきれないんです。', 'Saya tidak bisa memakai kemeja putih karena bulu anjing.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2617_ayah, 'わたしの父は、ドイツ人です。', 'Ayah saya orang Jerman.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2617_ayah, 'このネクタイは、父とおそろいなんです。', 'Dasi ini cocok dengan milik ayahku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2617_ayah, '父はドラマーでした。', 'Ayah saya adalah seorang drummer.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2618_ayah, 'お父さんにメールした。', 'Saya mengirim email kepada ayah saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2618_ayah, 'お父さんはリンゴがすきです。', 'Ayah suka apel.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2618_ayah, 'お父さん、分かった？', 'Ayah, apakah kamu mengerti?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2619_sapi, '牛がたくさんいますね。', 'Ada banyak sapi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2619_sapi, '牛のステーキとチキンステーキ、どっちがいい？', 'Kamu mau yang mana, steak daging sapi atau steak ayam?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2619_sapi, 'うちのペットは牛です。', 'Hewan peliharaan saya adalah seekor sapi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2622_musim_dingin, '冬はコートとジャケットをきます。', 'Saya memakai mantel dan jaket di musim dingin.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2622_musim_dingin, '冬のニューヨークは、どうですか？', 'Seperti apa New York di musim dingin?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2622_musim_dingin, '日本のニ月は冬ですよ。', 'Februari di Jepang adalah musim dingin.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2623_utara, '北はこっちですよ。', 'Utara lewat sini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2623_utara, 'カナダは北アメリカです。', 'Kanada berada di Amerika Utara.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2623_utara, 'パトカーが十台、北の方にいったよ。', 'Sepuluh mobil polisi menuju ke utara.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2624_setengah, 'JLPTまで、あと一日半しかないよ。', 'Tinggal satu setengah hari lagi menuju ujian JLPT.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2624_setengah, 'この子は三才半です。', 'Anak ini berumur tiga setengah tahun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2624_setengah, 'このキッチンの大きさは、およそ二メートル半です。', 'Ukuran dapur ini sekitar dua setengah meter.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2625_tua, 'このドレスは古いです。', 'Gaun ini sudah tua.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2625_tua, '古いタブレットが九千円でうれた。', 'Tablet lama dijual seharga 9.000 yen.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2625_tua, 'アンティークとか古いものがすきなんです。', 'Saya suka hal-hal lama seperti barang antik dan yang lainnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2626_bekas, 'このベンツは中古です。', 'Benz ini bekas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2626_bekas, '中古でジーンズをかった。', 'Saya membeli jeans bekas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2626_bekas, '中古ショップには本やマンガがたくさんありますよ。', 'Ada banyak buku dan manga di toko barang bekas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2627_satu_mesin, 'うちにはテレビが一台しかない。', 'Kami hanya punya satu TV di rumah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2627_satu_mesin, 'タクシーを一台よんで下さい。', 'Bisakah Anda memanggilkan saya taksi?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2627_satu_mesin, 'うちでは一台のゲームをめぐって、ケンカがおきます。', 'Kami berebut satu konsol game.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2628_dua_mesin, '母にスポーツカーをニ台プレゼントした。', 'Saya memberi ibu saya dua mobil sport sebagai hadiah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2628_dua_mesin, 'わたしのデスクにはモニターがニ台あります。', 'Ada dua monitor di meja saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2628_dua_mesin, 'しごととプライベートで、スマホをニ台もちしてる人はたくさんいる。', 'Ada banyak orang yang memiliki dua ponsel pintar; satu untuk bekerja dan satu pribadi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2629_lima_mesin, 'ホテルにパトカーが五台きた。', 'Lima mobil polisi datang ke hotel.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2629_lima_mesin, 'あの女の子、一人でタブレットを五台もかったんだって。', 'Gadis itu rupanya membeli lima tablet sendiri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2629_lima_mesin, 'セールの目玉は五台かぎりのコーヒーメーカーです。', 'Puncak penjualannya adalah pembuat kopi dan kami hanya memiliki lima di antaranya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2630_sepuluh_mesin, 'パソコンを十台オーダーした。', 'Saya memesan sepuluh PC.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2630_sepuluh_mesin, 'このビルにはセキュリティカメラが十台ある。', 'Ada sepuluh kamera keamanan di gedung ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2630_sepuluh_mesin, 'このエリアにはタクシーが十台しかないの。', 'Hanya ada sepuluh taksi di daerah ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2631_di_luar, '外でバーベキューしよう。', 'Ayo barbekyu di luar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2631_di_luar, '外に大きなサクラの木があります。', 'Ada pohon sakura besar di luar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2631_di_luar, '外と中、どっちがすき？', 'Mana yang lebih Anda sukai, di luar atau di dalam?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2632_orang_asing, '外人カップルとダブルデートをした。', 'Kami melakukan kencan ganda dengan pasangan asing.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2632_orang_asing, 'アフターパーティーには外人がたくさんいた。', 'Ada banyak orang asing di pesta setelahnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2632_orang_asing, 'バーにいた外人さんがウィスキーをおごってくれたんです。', 'Orang asing di bar membelikanku segelas wiski.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2635_kota, 'マニラ市の人口はどのくらいですか？', 'Berapa jumlah penduduk Kota Manila?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2635_kota, '市のウェブサイトをチェックして下さい。', 'Silakan periksa situs web kota.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2635_kota, 'ひこね市のゆるキャラは、「ひこにゃん」です。', 'Yuruchara Kota Hikone adalah "Hikonyan."');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2636_kota, '市立プールは三ドルで入れるよ。', 'Anda bisa masuk ke kolam kota dengan membayar tiga dolar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2636_kota, '市立のインターナショナルスクールはあまりない。', 'Tidak banyak sekolah internasional kota.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2636_kota, '市立のホテルはこのエリアにありますか？', 'Apakah ada hotel kota di daerah ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2637_seattle, '今はシアトル市にすんでいます。', 'Saya tinggal di Seattle sekarang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2637_seattle, 'わたしのお母さんは、シアトル市でそだちました。', 'Ibu saya dibesarkan di Seattle.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2637_seattle, 'シアトル市にはマリナーズというベースボールチームがある。', 'Seattle memiliki tim bisbol bernama Mariners.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2638_lebar, 'このキッチンカウンターすごく広いね。', 'Meja dapur ini sangat luas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2638_lebar, '友人のアパートは中々広いです。', 'Apartemen teman saya cukup luas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2638_lebar, '心が広い人になりたい。', 'Saya ingin menjadi orang yang mempunyai hati yang besar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2639_ibu, '母は六十六才です。', 'Ibu saya berusia enam puluh enam tahun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2639_ibu, '母の日は五月です。', 'Hari Ibu jatuh pada bulan Mei.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2639_ibu, '母はビーガンです。', 'Ibuku adalah vegan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2640_ibu, 'お母さんはどこ？', 'Dimana ibu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2640_ibu, 'うちのお母さん、いつもケールダイエットしてるんです。', 'Ibuku selalu diet kangkung.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2640_ibu, 'あ、お母さんからLINEだ。', 'Oh, aku mendapat pesan LINE dari ibuku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2641_untuk_memanfaatkan, 'これはフィットネストレーニングに用いるマシンです。', 'Ini adalah mesin yang digunakan untuk pelatihan kebugaran.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2641_untuk_memanfaatkan, 'スタッフがこのパソコンを用いるのにはマネジャーのサインがいります。', 'Tanda tangan manajer diperlukan agar staf dapat menggunakan komputer ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2641_untuk_memanfaatkan, '人によって用いるツールがちがうんです。', 'Tergantung pada orangnya, alat yang mereka gunakan berbeda-beda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2643_anak_panah, 'これはアーチェリーの矢です。', 'Ini adalah panah memanah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2643_anak_panah, 'このエリアの土から矢がたくさん出た。', 'Banyak anak panah yang keluar dari tanah di area ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2643_anak_panah, 'ぼくのハートにキューピッドの矢がささったんです。', 'Panah Cupid menusuk hatiku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2657_karakter, 'かわいい字ですね。', 'Itu surat yang lucu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2657_karakter, 'この字は「ン」ですか？それとも「ソ」ですか？', 'Apakah karakter ini "n"? Atau apakah itu "begitu"?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2657_karakter, '字の大きさを、もっと大きくしてください。', 'Harap tambah ukuran karakternya lebih banyak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3407_kehidupan_seseorang, '人生ってすばらしい。', 'Hidup ini luar biasa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3407_kehidupan_seseorang, '人生のパートナーになってくれませんか？', 'Maukah kamu menjadi pasanganku seumur hidup?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3407_kehidupan_seseorang, '人生はバナナのようなものさ。どれだけながいのかだれもしらないのさ。', 'Hidup itu seperti pisang, kita tidak pernah tahu sampai kapan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3936_orang_inggris, 'ジェニーさんはイギリス人です。', 'Jenny adalah orang Inggris.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3936_orang_inggris, 'この本は、イギリス人とアメリカ人のチームがつくりました。', 'Buku ini dibuat oleh tim Inggris dan Amerika.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3936_orang_inggris, 'そりゃ、イギリス人もコーヒーをのみますよ。', 'Nah, orang Inggris juga minum kopi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7455_penghitung_mesin_besar, 'ここにはトラックが五台あります。', 'Ada lima truk di sini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7455_penghitung_mesin_besar, 'バス一台に五十人も入りますか？', 'Akankah lima puluh orang muat dalam satu bus?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7455_penghitung_mesin_besar, 'うちではパソコン一台を三人でシェアしていますよ。', 'Di rumah kami, tiga orang berbagi satu komputer.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7465_jumlah_orang, 'スタッフは十人います。', 'Ada sepuluh anggota staf.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7465_jumlah_orang, 'うちは、四人ファミリーです。', 'Ada empat dari kami di keluarga saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7465_jumlah_orang, '王子のウェディングパーティーには千人のゲストがきます。', 'Seribu tamu datang ke resepsi pernikahan sang pangeran.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7518_gadis, '三人の少女が川にいた。', 'Tiga gadis berada di sungai.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7518_gadis, 'おすすめの本のジャンルは、少女マンガです。', 'Genre buku yang saya rekomendasikan adalah manga cewek.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7518_gadis, '少女のようなスマイルの四十才だ。', 'Dia berusia empat puluh tahun dengan senyuman seperti gadis muda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7519_sepuluh_ribu, '日本へのチケットは、十万円でした。', 'Tiket ke Jepang adalah 100.000 yen.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7519_sepuluh_ribu, 'このドームには五万人の人が入りますよ。', 'Kubah ini dapat menampung lima puluh ribu orang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7519_sepuluh_ribu, 'わたしのブログは月にニ万ビューほどあります。', 'Blog saya mendapat sekitar dua puluh ribu tampilan per bulan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7564_halo, '今日は、おげんきですか？', 'Halo, apa kabarmu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7564_halo, '「今日は」はひらがなでかくことの方がおおい。', '"Konnichiwa" sering ditulis dalam hiragana.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7564_halo, '大きなこえで、「今日は」といいましょう。', 'Mari kita berteriak, "halo."');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7669_tugas, '今日は、なにも用がない。', 'Tidak ada yang bisa dilakukan hari ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7669_tugas, '用もないのにラインしてくんじゃねーよ。', 'Jangan mengirimiku pesan di LINE kecuali kamu punya alasan kuat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7669_tugas, 'これは冬用のジャケットです。', 'Ini adalah jaket musim dingin.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8659_patuh, '大人しい犬ですね。', 'Itu anjing yang pendiam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8659_patuh, '女王は小さいころ、とても大人しかった。', 'Ratu sangat pendiam ketika dia masih kecil.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8659_patuh, '今日はホテルで大人しくするよ。', 'Saya akan bersantai di hotel hari ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8734_pintu, '戸をノックした。', 'Saya mengetuk pintu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8734_pintu, 'うちのネコは戸をカリカリします。', 'Kucing saya menggaruk pintu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8734_pintu, 'この戸は立てつけがわるい。', 'Pintu ini membuka dan menutup dengan keras.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8735_wanita, 'あの女の人？マミさんだよ。', 'Wanita di sana itu? Itu Mami.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8735_wanita, 'このレストランには女の人のスタッフがたくさんいます。', 'Ada banyak staf wanita di restoran ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8735_wanita, '女の人と上手にメールができるようになりたいなあ。', 'Saya ingin sekali bisa berkirim email dengan wanita dengan baik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8945_untuk_menyebarkan_sesuatu, '日本にそのウィルスを広げたのは水だった。', 'Airlah yang menyebarkan virus di Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8945_untuk_menyebarkan_sesuatu, '大人三人でブランケットを広げた。', 'Tiga orang dewasa membuka selimut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8945_untuk_menyebarkan_sesuatu, '中に入ってすぐ本を広げた。', 'Segera setelah saya masuk ke dalam, saya membuka buku itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8957_gema, '山びこだ！きこえる？', 'Itu gema gunung. Bisakah kamu mendengarnya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8957_gema, 'それは、「山びこ」というレストランでした。', 'Itu adalah restoran bernama “Mountain Echo.”');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8957_gema, '夕べは山びこがうるさくて、ねられなかったよ。', 'Gema gunung tadi malam sangat keras sehingga saya tidak bisa tidur.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8959_di_atas_meja, '本はテーブルの上にあります。', 'Buku itu ada di atas meja.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8959_di_atas_meja, 'テーブルの上にグラスを三つおいてください。', 'Tolong letakkan tiga gelas di atas meja.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8959_di_atas_meja, 'さっき、テーブルの上をきれいにしたよ。', 'Aku sudah membersihkan meja tadi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8960_di_bawah_tempat_tidur, 'ベッドの下にはマンガがたくさんあります。', 'Ada banyak manga di bawah tempat tidur.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8960_di_bawah_tempat_tidur, 'ベッドの下はモップをしないんです。', 'Saya tidak mengepel kolong tempat tidur.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8960_di_bawah_tempat_tidur, 'うわっ、ベッドの下に人がいる！', 'Woah, ada seseorang di bawah tempat tidur!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9131_matahari_terbit, 'そして、ふじ山から日の出をみました。', 'Lalu saya menyaksikan matahari terbit dari Gunung Fuji.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9131_matahari_terbit, 'もうすぐ日の出だ！', 'Ini hampir matahari terbit!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9131_matahari_terbit, 'きれいな日の出だったね。', 'Itu adalah matahari terbit yang indah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9141_draf_bir, '生ビール、一つ下さい。', 'Tolong, satu draft bir.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9141_draf_bir, 'これは生ビールのサーバーです。', 'Ini adalah dispenser bir draft.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9141_draf_bir, '生ビールはテイクアウトできますか？', 'Bolehkah saya memesan bir untuk dibawa pulang?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9148_pintu_keluar_utara, '北口にいるよ！', 'Saya di pintu keluar utara!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9148_pintu_keluar_utara, 'コンビニは北口にあります。', 'Toko serba ada terletak di pintu keluar utara.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9148_pintu_keluar_utara, '北口についたら、メールしてくれる？', 'Bisakah Anda mengirimi saya pesan ketika Anda sampai di pintu keluar utara?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9258_lampu, '女はランプの明かりの下に立った。', 'Wanita itu berdiri di bawah cahaya lampu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9258_lampu, 'この辺は明かりが少ない。', 'Tidak banyak cahaya di sekitar sini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9258_lampu, '今日は月の明かりだけで、キャンプができそうです。', 'Sepertinya kita bisa berkemah hanya dengan cahaya bulan hari ini.');

  -- 4. PREREQUISITES
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_495_sepuluh_ribu, id FROM items WHERE type = 'radical' AND (slug = '8763' OR id = '8763') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_495_sepuluh_ribu, id FROM items WHERE type = 'radical' AND (slug = '24' OR id = '24') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_497_sekarang, r_238_sekarang);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_501_bagian, id FROM items WHERE type = 'radical' AND (slug = '2' OR id = '2') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_501_bagian, id FROM items WHERE type = 'radical' AND (slug = '24' OR id = '24') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_502_memotong, id FROM items WHERE type = 'radical' AND (slug = '4' OR id = '4') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_502_memotong, id FROM items WHERE type = 'radical' AND (slug = '24' OR id = '24') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_503_siang, id FROM items WHERE type = 'radical' AND (slug = '5' OR id = '5') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_503_siang, r_61_kering);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_504_teman, id FROM items WHERE type = 'radical' AND (slug = '26' OR id = '26') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_504_teman, r_30_bangku);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_505_gemuk, r_411_gemuk);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_506_sedikit, id FROM items WHERE type = 'radical' AND (slug = '35' OR id = '35') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_506_sedikit, id FROM items WHERE type = 'radical' AND (slug = '5' OR id = '5') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_507_menarik, id FROM items WHERE type = 'radical' AND (slug = '36' OR id = '36') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_507_menarik, id FROM items WHERE type = 'radical' AND (slug = '8761' OR id = '8761') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_508_jantung, r_65_jantung);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_509_pintu, r_73_pintu);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_510_arah, r_66_arah);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_511_sapi, id FROM items WHERE type = 'radical' AND (slug = '126' OR id = '126') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_512_ayah, r_68_ayah);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_513_bulu, r_67_bulu);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_514_berhenti, id FROM items WHERE type = 'radical' AND (slug = '44' OR id = '44') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_516_musim_dingin, r_60_musim_dingin);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_516_musim_dingin, r_123_es);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_517_utara, r_327_utara);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_518_setengah, r_8765_triceratop);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_518_setengah, r_61_kering);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_519_tua, r_69_tua);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_520_mesin, id FROM items WHERE type = 'radical' AND (slug = '140' OR id = '140') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_520_mesin, id FROM items WHERE type = 'radical' AND (slug = '16' OR id = '16') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_521_di_luar, id FROM items WHERE type = 'radical' AND (slug = '33' OR id = '33') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_521_di_luar, id FROM items WHERE type = 'radical' AND (slug = '10' OR id = '10') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_522_kota, id FROM items WHERE type = 'radical' AND (slug = '8' OR id = '8') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_522_kota, r_102_handuk);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_523_lebar, r_62_kanopi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_523_lebar, id FROM items WHERE type = 'radical' AND (slug = '140' OR id = '140') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_524_ibu, r_107_jendela);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_525_tugas, r_71_tugas);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_526_anak_panah, r_72_anak_panah);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_545_surat, r_78_atap);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_545_surat, id FROM items WHERE type = 'radical' AND (slug = '34' OR id = '34') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_626_terang, r_357_terang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_850_kehidupan, r_210_kehidupan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2478_orang_amerika, id FROM items WHERE type = 'kanji' AND (slug = '444' OR id = '444') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2479_orang_perancis, id FROM items WHERE type = 'kanji' AND (slug = '444' OR id = '444') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2574_marmer, id FROM items WHERE type = 'kanji' AND (slug = '489' OR id = '489') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2576_untuk_dilahirkan, k_850_kehidupan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2579_segar, k_850_kehidupan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2588_sepuluh_ribu, id FROM items WHERE type = 'kanji' AND (slug = '440' OR id = '440') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2588_sepuluh_ribu, k_495_sepuluh_ribu);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2589_dua_puluh_ribu, id FROM items WHERE type = 'kanji' AND (slug = '441' OR id = '441') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2589_dua_puluh_ribu, k_495_sepuluh_ribu);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2590_seratus_ribu, id FROM items WHERE type = 'kanji' AND (slug = '448' OR id = '448') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2590_seratus_ribu, k_495_sepuluh_ribu);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2593_sekarang, k_497_sekarang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2594_hari_ini, k_497_sekarang);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2594_hari_ini, id FROM items WHERE type = 'kanji' AND (slug = '476' OR id = '476') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2595_bulan_ini, k_497_sekarang);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2595_bulan_ini, id FROM items WHERE type = 'kanji' AND (slug = '477' OR id = '477') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2597_setengah, k_518_setengah);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2597_setengah, k_501_bagian);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2600_bagian, k_501_bagian);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2602_penting, id FROM items WHERE type = 'kanji' AND (slug = '453' OR id = '453') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2602_penting, k_502_memotong);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2603_untuk_memotong, k_502_memotong);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2604_teman, k_504_teman);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2604_teman, id FROM items WHERE type = 'kanji' AND (slug = '444' OR id = '444') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2605_gemuk, k_505_gemuk);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2607_sedikit, k_506_sedikit);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2608_sedikit, k_506_sedikit);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2609_untuk_menarik, k_507_menarik);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2610_jantung, k_508_jantung);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2611_pintu_keluar_masuk, k_509_pintu);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2611_pintu_keluar_masuk, id FROM items WHERE type = 'kanji' AND (slug = '452' OR id = '452') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2612_arah, k_510_arah);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2614_untuk_menghentikan_sesuatu, k_514_berhenti);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2615_pembatalan, id FROM items WHERE type = 'kanji' AND (slug = '469' OR id = '469') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2615_pembatalan, k_514_berhenti);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2616_bulu, k_513_bulu);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2617_ayah, k_512_ayah);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2618_ayah, k_512_ayah);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2619_sapi, k_511_sapi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2622_musim_dingin, k_516_musim_dingin);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2623_utara, k_517_utara);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2624_setengah, k_518_setengah);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2625_tua, k_519_tua);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2626_bekas, id FROM items WHERE type = 'kanji' AND (slug = '469' OR id = '469') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2626_bekas, k_519_tua);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2627_satu_mesin, id FROM items WHERE type = 'kanji' AND (slug = '440' OR id = '440') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2627_satu_mesin, k_520_mesin);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2628_dua_mesin, id FROM items WHERE type = 'kanji' AND (slug = '441' OR id = '441') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2628_dua_mesin, k_520_mesin);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2629_lima_mesin, id FROM items WHERE type = 'kanji' AND (slug = '470' OR id = '470') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2629_lima_mesin, k_520_mesin);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2630_sepuluh_mesin, id FROM items WHERE type = 'kanji' AND (slug = '448' OR id = '448') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2630_sepuluh_mesin, k_520_mesin);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2631_di_luar, k_521_di_luar);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2632_orang_asing, k_521_di_luar);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2632_orang_asing, id FROM items WHERE type = 'kanji' AND (slug = '444' OR id = '444') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2635_kota, k_522_kota);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2636_kota, k_522_kota);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2636_kota, id FROM items WHERE type = 'kanji' AND (slug = '494' OR id = '494') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2637_seattle, k_522_kota);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2638_lebar, k_523_lebar);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2639_ibu, k_524_ibu);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2640_ibu, k_524_ibu);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2641_untuk_memanfaatkan, k_525_tugas);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2643_anak_panah, k_526_anak_panah);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2657_karakter, k_545_surat);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3407_kehidupan_seseorang, id FROM items WHERE type = 'kanji' AND (slug = '444' OR id = '444') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3407_kehidupan_seseorang, k_850_kehidupan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3936_orang_inggris, id FROM items WHERE type = 'kanji' AND (slug = '444' OR id = '444') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7455_penghitung_mesin_besar, k_520_mesin);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7465_jumlah_orang, id FROM items WHERE type = 'kanji' AND (slug = '444' OR id = '444') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7518_gadis, k_506_sedikit);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7518_gadis, id FROM items WHERE type = 'kanji' AND (slug = '454' OR id = '454') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7519_sepuluh_ribu, k_495_sepuluh_ribu);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7564_halo, k_497_sekarang);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7564_halo, id FROM items WHERE type = 'kanji' AND (slug = '476' OR id = '476') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7669_tugas, k_525_tugas);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8659_patuh, id FROM items WHERE type = 'kanji' AND (slug = '453' OR id = '453') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8659_patuh, id FROM items WHERE type = 'kanji' AND (slug = '444' OR id = '444') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8734_pintu, k_509_pintu);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8735_wanita, id FROM items WHERE type = 'kanji' AND (slug = '454' OR id = '454') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8735_wanita, id FROM items WHERE type = 'kanji' AND (slug = '444' OR id = '444') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8945_untuk_menyebarkan_sesuatu, k_523_lebar);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8957_gema, id FROM items WHERE type = 'kanji' AND (slug = '455' OR id = '455') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8959_di_atas_meja, id FROM items WHERE type = 'kanji' AND (slug = '450' OR id = '450') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8960_di_bawah_tempat_tidur, id FROM items WHERE type = 'kanji' AND (slug = '451' OR id = '451') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9131_matahari_terbit, id FROM items WHERE type = 'kanji' AND (slug = '476' OR id = '476') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9131_matahari_terbit, id FROM items WHERE type = 'kanji' AND (slug = '483' OR id = '483') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_9141_draf_bir, k_850_kehidupan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_9148_pintu_keluar_utara, k_517_utara);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9148_pintu_keluar_utara, id FROM items WHERE type = 'kanji' AND (slug = '452' OR id = '452') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_9258_lampu, k_626_terang);

END $$;
