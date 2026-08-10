-- ====================================================
-- KaniGani — Seed Data Level 2 (v2, relasional)
-- Auto-generated with Indonesian Slugs
-- ====================================================

DO $$
DECLARE
  -- ============ RADICAL IDs (Level 2) ============
  r_17_kotoran UUID; r_24_pedang UUID; r_26_ikan_paus UUID; r_27_jalan UUID; r_28_kaki UUID; r_29_kepala UUID; r_31_harta_karun UUID; r_32_ribu UUID; r_33_malam UUID; r_34_anak UUID; r_35_kecil UUID; r_36_busur UUID; r_37_bendera UUID; r_38_rambut UUID; r_39_lima UUID; r_40_surga UUID; r_41_tangan UUID; r_42_menulis UUID; r_43_bulan UUID; r_44_berhenti UUID; r_45_air UUID; r_46_api UUID; r_47_anjing UUID; r_48_raja UUID; r_49_tengah UUID; r_50_buku UUID; r_51_sawah UUID; r_52_putih UUID; r_53_mata UUID; r_55_berdiri UUID; r_126_sapi UUID; r_140_pribadi UUID; r_8763_daun UUID;

  -- ============ KANJI IDs (Level 2) ============
  k_458_pedang UUID; k_459_kotoran UUID; k_460_ribu UUID; k_461_malam UUID; k_462_anak UUID; k_463_kecil UUID; k_464_jalan UUID; k_467_lingkaran UUID; k_468_bakat UUID; k_469_tengah UUID; k_470_lima UUID; k_471_enam UUID; k_472_yen UUID; k_473_surga UUID; k_474_tangan UUID; k_475_menulis UUID; k_476_matahari UUID; k_477_bulan UUID; k_478_pohon UUID; k_479_air UUID; k_480_api UUID; k_481_anjing UUID; k_482_raja UUID; k_483_keluar UUID; k_484_benar UUID; k_485_empat UUID; k_486_kiri UUID; k_487_buku UUID; k_488_benar UUID; k_489_bola UUID; k_490_sawah UUID; k_491_putih UUID; k_492_mata UUID; k_494_berdiri UUID; k_856_pengulang UUID;

  -- ============ VOCABULARY IDs (Level 2) ============
  v_2492_untuk_mendaki UUID; v_2507_pedang UUID; v_2508_kotoran UUID; v_2509_ribu UUID; v_2511_tadi_malam UUID; v_2512_gadis UUID; v_2513_anak UUID; v_2514_gadis UUID; v_2515_kecil UUID; v_2517_lingkaran UUID; v_2518_bundar UUID; v_2519_bertahun_tahun UUID; v_2520_di_dalam UUID; v_2521_lebih_tepatnya UUID; v_2522_mungkin UUID; v_2523_hari_kelima UUID; v_2524_lima_puluh UUID; v_2525_lima_hal UUID; v_2526_lima UUID; v_2527_enam_hal UUID; v_2528_juni UUID; v_2529_hari_keenam UUID; v_2530_enambelas UUID; v_2531_enam UUID; v_2532_yen UUID; v_2533_seribu_yen UUID; v_2535_surga UUID; v_2536_jenius UUID; v_2537_tangan UUID; v_2538_tidak_terampil UUID; v_2539_baik_dalam UUID; v_2540_menulis UUID; v_2541_matahari UUID; v_2542_bulan UUID; v_2543_oktober UUID; v_2544_januari UUID; v_2545_februari UUID; v_2546_pohon UUID; v_2547_air UUID; v_2548_api UUID; v_2549_gunung_berapi UUID; v_2550_anjing UUID; v_2551_anak_anjing UUID; v_2552_raja UUID; v_2553_pangeran UUID; v_2554_ratu UUID; v_2555_putri UUID; v_2557_untuk_keluar UUID; v_2558_keluar UUID; v_2559_arah_benar UUID; v_2561_empat UUID; v_2562_april UUID; v_2567_arah_kiri UUID; v_2569_buku UUID; v_2570_jepang UUID; v_2571_benar UUID; v_2572_untuk_memperbaiki UUID; v_2573_bola UUID; v_2575_bawang_bombai UUID; v_2580_sawah UUID; v_2581_putih UUID; v_2582_orang_kulit_putih UUID; v_2583_mata UUID; v_2584_bola_mata UUID; v_2586_untuk_berdiri UUID; v_7515_hari_kedua UUID; v_7517_rakyat UUID; v_7561_satu_hari UUID; v_7562_hari_ketujuh UUID; v_7563_hari_ketiga UUID; v_7614_hari_kesembilan UUID; v_7615_hari_kedelapan UUID; v_7616_hari_kesepuluh UUID; v_7668_sangat UUID; v_7728_di_bawah_air UUID; v_8693_kiri_dan_kanan UUID; v_8733_masukan UUID; v_9167_sawah UUID;

BEGIN

  DELETE FROM items WHERE level = 2;

  -- 1. RADICALS
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '土', 'kotoran', 2, 1, 'Pada awalnya ini terlihat seperti sebuah salib di tanah, namun sebenarnya ini adalah sesuatu yang tumbuh di <radikal>tanah</radikal>. Sudah bertunas kecil, sudah mengayunkan tiga helai daun. Dan itu semua berkat kotoran itu! Saat Anda melihat hal radikal ini, pikirkan betapa menakjubkannya hal-hal yang tumbuh begitu saja di tanah.')
    RETURNING id INTO r_17_kotoran;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '刀', 'pedang', 2, 2, 'Inilah radikal <radikal>pedang</radikal>. Bagian ノ adalah pedang melengkung, sedangkan sisanya adalah seorang samurai yang membungkuk dalam-dalam, sekitar 90 derajat, saat dia memegang pedang itu — mungkin sebelum pertarungan pedang. Ngomong-ngomong, jangan bingung membedakannya dengan kata radikal kekuasaan (力). Lihat perbedaannya? Dalam pedang radikal (刀), ノ tidak menembus samurai yang membungkuk. (Beruntung baginya.)')
    RETURNING id INTO r_24_pedang;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', 'ナ', 'ikan-paus', 2, 3, 'Radikal ini tampak seperti <radikal>narwhal</radikal>. Lihat ekor di bawah, dan tanduk narwhal yang megah menyembul di atas? Bentuknya juga mirip dengan karakter katakana ナ (na), jadi Anda juga bisa mengingatnya seperti itu. Na-na-na-narwhal! Berhati-hatilah agar tidak bingung dengan kata radikal harta karun (メ). Garis menyampingnya lebih mengarah ke bawah, seperti huruf "X". Namun garis samping narwhal adalah horizontal (ナ).')
    RETURNING id INTO r_26_ikan_paus;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '丁', 'jalan', 2, 4, 'Bayangkan melihat yang ini dari atas — tampak seperti beberapa jalan, bukan? Mungkin ada persimpangan tiga arah di atas sana? Itulah mengapa ini disebut radikal untuk <radical>jalanan</radikal>.')
    RETURNING id INTO r_27_jalan;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '儿', 'kaki', 2, 5, 'Radikal ini sudah tampak seperti sepasang <radikal>kaki</radikal>. Bahkan ada kaki di kaki ini. Begitulah cara Anda mengetahui bahwa ini adalah kaki dan bukan sirip (atau yang lainnya).')
    RETURNING id INTO r_28_kaki;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '冂', 'kepala', 2, 6, 'Ini adalah garis besar dari <radical>kepala</radikal>. Memang benar kepalanya berbentuk persegi, tapi coba bayangkan kepalanya menghadap ke kanan. Sisi kiri adalah bagian belakang kepala, dan bagian seperti duri di sebelah kanan menunjukkan lekuk dagu. Lihat kepalanya?')
    RETURNING id INTO r_29_kepala;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', 'メ', 'harta-karun', 2, 7, 'Radikal ini adalah <radikal>harta</radikal> karena "X menandai titiknya", demikian kata mereka. Bukankah ini terlihat seperti tanda X pada peta harta karun bajak laut? Kamu ingin mencari harta karun itu sekarang, kan?!')
    RETURNING id INTO r_31_harta_karun;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '千', 'ribu', 2, 8, 'Anda memiliki perosotan yang ditopang oleh sebuah salib besar, yang membuatnya sangat kuat sehingga dapat menampung banyak orang sekaligus. Berapa banyak? <radikal>RIBUAN</radikal>! Bayangkan seribu orang menuruni perosotan ini. Anda dapat mendengar suara yang mencoba menghitungnya sambil berjalan: "SATU! DUA! TIGA RATUS! LIMA RATUS!" dan sebagainya. Akhirnya orang terakhir meluncur ke bawah dan terdengar suara: "RIBU!" Anda pikir ini sudah berakhir, tapi saat grup itu selesai, datanglah ribuan lainnya…')
    RETURNING id INTO r_32_ribu;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '夕', 'malam', 2, 9, 'Ini adalah bagian atas bulan yang terlihat saat bulan mulai terbit. Kapan itu terjadi? Di <radikal>malam</radikal>! Jangan bingung membedakan ini dengan radikal bulan 月. 夕 untuk malam hari, saat bulan masih cukup rendah sehingga sebagian tertutup (misalnya oleh gunung).')
    RETURNING id INTO r_33_malam;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '子', 'anak', 2, 10, 'Ini adalah radikal untuk <radikal>anak</radikal>. Aww, lihat bagaimana mereka memakai topi dan tangan kecilnya terentang? Anda hampir dapat mendengar mereka berkata "angkat aku!" Anak yang sangat kekanak-kanakan.')
    RETURNING id INTO r_34_anak;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '小', 'kecil', 2, 11, 'Anda melihat dua sirip di sekitar duri, tetapi ketika Anda melihat lebih dekat, Anda menyadari bahwa sirip itu sebenarnya adalah dua ikan kecil. Bayangkan betapa kecilnya sirip (dan ikan) ini agar terlihat jauh lebih kecil daripada duri yang sudah kecil. Bicara tentang ikan kecil… Ya, itu sebabnya ini adalah kata radikal untuk <radikal>kecil</radikal>.')
    RETURNING id INTO r_35_kecil;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '弓', 'busur', 2, 12, 'Radikal ini terlihat seperti <radikal>busur</radikal> komposit mewah yang digunakan orang untuk menembak sasaran dan jelas bukan hewan hidup normal. Lihat bagaimana bagian tengahnya ditarik ke belakang? Bayangkan memegang busur ini dan menembakkannya ke sasaran berbentuk monster kepiting aligator raksasa.')
    RETURNING id INTO r_36_busur;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '尸', 'bendera', 2, 13, 'Lihat <radical>bendera</radikal> di radikal ini? Ada sebuah tiang dengan bendera di ujungnya, tertiup angin. Pada dasarnya, radikal ini terlihat seperti sebuah bendera.')
    RETURNING id INTO r_37_bendera;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '彡', 'rambut', 2, 14, 'Ketiga coretan ini terlihat seperti helaian <radikal>rambut</radikal> seseorang. Cukup mudah untuk melihat dan mengingat bahwa ini adalah rambut radikal, bukan?')
    RETURNING id INTO r_38_rambut;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '五', 'lima', 2, 15, 'Jika Anda menggunakan imajinasi Anda, radikal ini sebenarnya terlihat seperti angka "5". Anda hanya perlu menghilangkan garis vertikal di kiri bawah, ditambah beberapa ujung tambahan yang menonjol di sana-sini. Setelah Anda melakukannya, Anda memiliki cara mudah untuk mengingat bahwa radikal ini berarti <radikal>lima</radikal>.')
    RETURNING id INTO r_39_lima;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '天', 'surga', 2, 16, 'Ingat pria dari radikal besar? Ini dia lagi, tapi kali ini dia begitu besar hingga kepalanya menyentuh <radical>surga</radical>. Dia mendongak dan tangannya terentang ke arah surga, dan rambut besarnya menyembul ke dalam awan surgawi itu.')
    RETURNING id INTO r_40_surga;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '手', 'tangan', 2, 17, 'Ini adalah radikal <radikal>tangan</radikal>. Jika Anda melihat telapak tangan kanan Anda, garis-garis di dalamnya mungkin terlihat seperti garis di 手. Tentu saja ini bukan pasangan yang sempurna, dan setiap orang memiliki tangan yang berbeda, tetapi pada dasarnya radikal ini terlihat seperti garis di tangan Anda. 

Anda juga bisa menganggap garis horizontal di 手 sebagai jari. Itu akan menghasilkan tangan yang terlihat sangat asing, tapi tetap saja sebuah tangan… semacam…')
    RETURNING id INTO r_41_tangan;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '文', 'menulis', 2, 18, 'Bentuknya seperti bangku dengan penutup, namun sebenarnya ini adalah meja untuk <radikal>menulis</radikal>. Apakah kamu melihatnya? Anda bahkan dapat melihat pena mencuat di tengah. Bayangkan semua tulisan indah yang dihasilkan di sini. Surat, novel, esai — segala jenis tulisan yang dapat Anda pikirkan.')
    RETURNING id INTO r_42_menulis;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '月', 'bulan', 2, 19, 'Ini adalah radikal <radikal>bulan</radikal>. Lihat tampilannya seperti bulan sabit dengan sepasang awan kecil yang melayang di dekatnya? Cobalah untuk tidak mencampuradukkannya dengan radikal malam 夕 — kali ini Anda dapat melihat seluruh bulan sabit, jadi jelas ini adalah radikal untuk bulan!')
    RETURNING id INTO r_43_bulan;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '止', 'berhenti', 2, 20, 'Ada tongkat dan jari kaki raksasa tertancap di tanah. Bayangkan berjalan dan melihat hal-hal ini di jalan Anda. Apa yang akan kamu lakukan? Kemungkinan besar akan berakhir <radikal>berhenti</radikal> total. Anda tahu, karena jari kaki. Saya kira tanda berhenti yang normal tidak cukup baik, jadi mereka juga memasang jempol kaki ini agar orang berhenti.')
    RETURNING id INTO r_44_berhenti;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '水', 'air', 2, 21, 'Ini adalah radikal untuk <radikal>air</radikal>. Ini adalah air yang radikal karena terlihat seperti air yang keluar dari keran dan terciprat ke mana-mana. Lihat bagaimana alirannya mengalir ke arah yang berbeda juga? Sangat mirip air! Betapapun radikalnya air…')
    RETURNING id INTO r_45_air;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '火', 'api', 2, 22, 'Ini adalah radikal untuk <radikal>api</radikal>. Ada tiga api kecil di atasnya dan bahkan beberapa batang kayu di bawahnya.

Namun jika membantu Anda juga bisa fokus pada orang radikal di sini. Lihat itu? Ada sesuatu yang keluar darinya... Apa itu— YA TUHAN ITU KEBAKARAN!!! Tolong tolong! Padamkan apinya! Tunggu, tidak apa-apa… Itu hanya radikal api.')
    RETURNING id INTO r_46_api;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '犬', 'anjing', 2, 23, 'Ingat orang besar yang membantu Anda menghadapi radikal besar itu? Sekarang Anda memiliki <radical>DOG</radical> yang besar! Anda tahu itu anjing karena dia berbaring, kaki terbuka lebar, dengan tulang favoritnya tepat di samping kepalanya.')
    RETURNING id INTO r_47_anjing;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '王', 'raja', 2, 24, 'Inilah <radikal>raja</radikal> radikal. Bayangkan raja ini duduk di singgasananya yang kokoh dan berbentuk persegi. Pukulan teratas adalah bagian belakang singgasana yang tinggi. Salib di tengah adalah tubuhnya, dengan tangan terentang di sandaran lengan. Pukulan paling bawah adalah tanah. Lihat dia duduk di sana sekarang, tampak bermartabat. Bicara tentang raja yang raja.')
    RETURNING id INTO r_48_raja;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '中', 'tengah', 2, 25, 'Ini adalah tongkat yang menembus bagian <radikal>tengah</radikal> mulut. Mulut seperti apa? Mulut silinder, mulut kotak, mulut manusia - apa pun jenisnya yang ingin Anda bayangkan, asalkan tongkatnya menembus bagian tengahnya, karena ini adalah kata radikal untuk "tengah".')
    RETURNING id INTO r_49_tengah;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '本', 'buku', 2, 26, 'Hal berguna apa yang bisa kamu peroleh dari sebatang pohon? Sebuah <radikal>buku</radikal>! Potong saja buku itu dari batang pohonnya. Kalau dipikir-pikir, setiap pohon mengandung potensi buku yang tidak terbatas. Sayang sekali mereka harus ditebang untuk membuat buku…')
    RETURNING id INTO r_50_buku;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '田', 'sawah', 2, 27, 'Di Jepang, sawah terdiri dari lahan persegi dengan saluran irigasi di antara keduanya. Lihat empat sawah dengan air mengalir di antara dan di sekitarnya? Itu sebabnya radikal ini adalah <radical>padi</radikal>.')
    RETURNING id INTO r_51_sawah;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '白', 'putih', 2, 28, 'Tambahkan setetes matahari pada sesuatu dan itu akan mengubahnya menjadi <radikal>putih</radikal>. Matahari sangat terik, bahkan setetes pun bisa membakar apa pun yang putih. Menurut Anda mengapa banyak pantai berwarna putih? Bahkan tetes tabir surya yang Anda gunakan untuk menahan sinar matahari pun berwarna putih. Jadi ketika Anda memikirkan tetesan matahari, pikirkanlah putih.')
    RETURNING id INTO r_52_putih;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '目', 'mata', 2, 29, 'Lihat iris di tengah bola mata? Ingatlah bahwa tidak ada benda bulat dalam kanji, jadi benda persegilah yang menggantikannya. Hal ini membuat <radical>mata</radikal> persegi ini cukup realistis. Anda hanya perlu sedikit menyipitkan mata dengan mata asli Anda.')
    RETURNING id INTO r_53_mata;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '立', 'berdiri', 2, 30, 'Ini terlihat seperti seseorang dalam posisi berdiri dengan kaki tertanam kuat di tanah, merentangkan tangan dalam posisi T untuk menjaga keseimbangan. Sehingga menjadikannya radikal untuk <radical>stand</radical>.')
    RETURNING id INTO r_55_berdiri;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '牛', 'sapi', 2, 31, 'Ini adalah radikal <radikal>sapi</radikal>. Kelihatannya seperti wajah sapi yang panjang, bukan? Anda dapat menganggap garis horizontal atas sebagai tanduknya. Sudah melihatnya? Ada sedikit rambut di kepalanya, dan semacam aksesori di tanduk di sebelah kiri Anda, jadi ini sapi yang sangat bergaya.

(Tahukah Anda, sapi jantan dan betina bisa bertanduk? Saya juga tidak punya tanduk, tapi itu benar. Jadi tolong jangan menulis surat yang memberi tahu kami bahwa kami tidak bisa menyebut makhluk ini sebagai sapi — kami tidak ingin ada daging sapi.)')
    RETURNING id INTO r_126_sapi;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', 'ム', 'pribadi', 2, 32, 'Ini adalah segitiga kecil yang hampir tertutup seluruhnya. Saat Anda ingin sendirian, Anda bersembunyi di tempat di mana Anda bisa berada dalam <radical>pribadi</radikal>. Itu sebabnya ini disebut radikal swasta. Anda menutup diri dari dunia luar, hanya dengan sedikit lubang intip.')
    RETURNING id INTO r_140_pribadi;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '丆', 'daun', 2, 33, 'Ada daun di bagian atas dan batang di bagian bawah, menjadikannya <radikal>daun</radikal> radikal. Daunnya cukup lebar dan rata, jadi jika membantu Anda bisa membayangkannya sebagai daun teratai.')
    RETURNING id INTO r_8763_daun;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_17_kotoran, 'Kotoran', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_24_pedang, 'Pedang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_26_ikan_paus, 'ikan paus', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_27_jalan, 'Jalan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_28_kaki, 'Kaki', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_29_kepala, 'Kepala', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_31_harta_karun, 'Harta karun', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_32_ribu, 'Ribu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_33_malam, 'Malam', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_34_anak, 'Anak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_35_kecil, 'Kecil', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_36_busur, 'Busur', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_37_bendera, 'Bendera', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_38_rambut, 'Rambut', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_39_lima, 'Lima', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_40_surga, 'Surga', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_41_tangan, 'Tangan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_42_menulis, 'Menulis', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_43_bulan, 'Bulan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_44_berhenti, 'Berhenti', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_45_air, 'Air', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_46_api, 'Api', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_47_anjing, 'Anjing', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_48_raja, 'Raja', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_49_tengah, 'Tengah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_50_buku, 'Buku', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_51_sawah, 'Sawah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_52_putih, 'Putih', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_53_mata, 'Mata', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_55_berdiri, 'Berdiri', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_126_sapi, 'Sapi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_140_pribadi, 'Pribadi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_8763_daun, 'Daun', true, true);

  -- 2. KANJIS
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '刀', 'pedang', 2, 34, 'Radikal dan arti kanji ini hampir sama! Kata radikalnya adalah <radical>pedang</radikal>, tapi kami sedang belajar bahasa Jepang, jadi bisakah Anda menyebutkan <kanji>pedang</kanji> Jepang? Benar sekali, yang paling umum adalah <kanji>katana</kanji>, yang juga merupakan arti dari kanji ini.', 'Jadi sekarang kamu memegang <kanji>katana</kanji> manis ini di tanganmu dan kamu mengayunkannya seperti orang bodoh. Jangan ragu untuk mengeluarkan suara mendesing saat Anda mengayunkannya. Untuk menjadi ahli pengguna katana, Anda memutuskan untuk melakukan perjalanan ke <reading>とう</reading>きょう (Tokyo). とうきょう memiliki sekolah pedang dan katana terbaik di dunia, jadi masuk akal untuk bepergian ke とうきょう.')
    RETURNING id INTO k_458_pedang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '土', 'kotoran', 2, 35, 'Kanji <radikal>kotoran</radikal> dan kanji <kanji>kotoran</kanji> adalah sama!', 'Siapa yang menghabiskan banyak waktu di <kanji>tanah</kanji>? <read>Lakukan</reading>g (ど) lakukan! Anjing menggali tanah, berguling-guling di tanah, terkadang mencoba memakan tanah (yang tidak terlalu bagus).')
    RETURNING id INTO k_459_kotoran;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '千', 'ribu', 2, 36, 'Kanji ini sama dengan radikal yang Anda pelajari, jadi artinya <kanji>seribu</kanji>.', 'Ingat ribuan orang yang terjerumus ke dalam salib di kelompok radikal 千? Ternyata masing-masing dari mereka membawa <kanji>seribu</kanji> <reading>cen</reading>ts (せん). Silakan dan coba hitung berapa hasil seribu kali seribu sen. Sebenarnya cukup banyak.')
    RETURNING id INTO k_460_ribu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '夕', 'malam', 2, 37, 'Kanji <radikal>malam</radikal> dan kanji <kanji>malam</kanji> adalah sama. Jika Anda tahu radikalnya Anda pasti tahu arti kanjinya.', '<kanji>malam</kanji> adalah saat semua <reading>kamu</reading>(ゆう) keluar untuk bermain.')
    RETURNING id INTO k_461_malam;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '子', 'anak', 2, 38, 'Kanji <radikal>anak</radikal> dan kanji <kanji>anak</kanji> sama persis.', 'Bacaan utama di sini adalah し, jadi untuk mengingatnya kita akan menggunakan mnemonik ini:

Ada <kanji>anak</kanji> berdiri di depan Anda. Anda memperhatikan anak itu dari dekat tetapi sepertinya ada yang tidak beres. Kamu menggosok matamu dan ketika kamu membukanya lagi, ada <reading>she</reading>p (し) di depanmu. Seekor domba?! Anda berteriak, berkedip lagi, dan Anda kembali menjadi anak-anak. Apakah…apakah semua anak hanyalah domba?')
    RETURNING id INTO k_462_anak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '小', 'kecil', 2, 39, 'Radikal <radikal>kecil</radikal> dan kanji <kanji>kecil</kanji> sama persis.', 'Kanji <kanji>kecil</kanji> ini akan menjadi hadiah sempurna untuk diberikan kepada <reading>Shou</reading>gun (しょう). Shougun menyukai hal-hal kecil, dan kanji <kanji>kecil</kanji> mewakili semua itu.')
    RETURNING id INTO k_463_kecil;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '丁', 'jalan', 2, 40, 'Kanji dan radikal yang terlihat seperti ini sama persis. Keduanya adalah <kanji>jalan</kanji>.', 'Jadi Anda sedang berjalan di <kanji>jalan</kanji> ini, dan di kejauhan Anda melihat siluet seseorang. Seorang wanita. Rambut keriting hitam besar dan mata merah. Itu adalah wanita jalanan, Ny. <reading>Chou</reading> (ちょう).')
    RETURNING id INTO k_464_jalan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '丸', 'lingkaran', 2, 41, 'Apa yang dimaksud dengan <radical>sembilan</radical> sisinya? Cukup tambahkan <radical>drop</radical> dan Anda akan mendapatkan sesuatu yang hampir berbentuk <kanji>lingkaran</kanji>.', 'Tahukah Anda tentang kucing menggemaskan Maru? Jika belum, Anda harus <a href="http://www.youtube.com/watch?v=z_AbfPXTKms" target="_blank">memeriksanya</a>. Mungkin tampak seperti selingan, tetapi jika Anda kembali mengetahui cara membaca kanji ini, maka itu sangat bermanfaat.

Saat Anda berpikir tentang sebuah lingkaran, pikirkan tentang <reading>Maru</reading> yang semuanya digulung dalam lingkaran kecil, menjadi sangat menggemaskan. Jangan bilang itu tidak meluluhkan hatimu hanya dengan memikirkannya.

Alternatifnya, Anda juga bisa melihat kanji ini dan memikirkan Maru di dalam kotak, dengan ekor kecilnya mencuat ke luar. Apa pun yang terbaik bagi Anda, arahkan saja ke "Maru".')
    RETURNING id INTO k_467_lingkaran;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '才', 'bakat', 2, 42, 'Di <radical>ground</radical> Anda meletakkan <radical>barb</radical> di bagian bawah <radical>slide</radical>. Ini adalah <kanji>bakat</kanji> spesial Anda. Saat Anda menuruni perosotan, Anda terbang melewati duri seperti seorang pemberani. Anak normal mana pun akan terkena duri dan terluka, tetapi Anda memiliki bakat ini.', 'Tapi kemudian orang-orang mulai mengatakan bahwa tidak ada manusia yang bisa memiliki <kanji>bakat</kanji> sebanyak itu, sehingga Anda pasti seorang <reading>cy</reading>borg (さい). Apakah Anda benar-benar seorang cyborg yang berbakat?')
    RETURNING id INTO k_468_bakat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '中', 'tengah', 2, 43, '<reading>middle</reading> radikal dan <kanji>middle</kanji> keduanya sama. Jadi jika Anda mengetahui yang satu, Anda mengetahui yang lainnya.', 'Untuk mengingat bacaan kanji ini, kita menggunakan kata Chewbacca untuk menarik ちゅう dalam ingatan kita.

Jika Anda ingat kembali ke kata radikal 中, sebatang tongkat tertancap di tengah mulut sesuatu. Katakanlah itu adalah mulut Anda, dan ketika Anda melihat ke atas untuk melihat siapa yang melakukannya, di sanalah berdiri <read>Chew</reading>bacca. Dia bahkan berteriak Chewbacca-nya. Dan itu bukanlah sebuah tongkat di mulutmu, itu adalah anak panah dari busurnya. Kebetulan bowcaster Chewbacca juga terlihat seperti kanji ini. Pergilah.')
    RETURNING id INTO k_469_tengah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '五', 'lima', 2, 44, 'Radikal <radikal>lima</radikal> dan kanji <kanji>lima</kanji> adalah sama.', '<kanji>Lima</kanji> adalah jumlah bangunan yang <reading>Go</reading>dzilla (ご) akan dirobohkan. Oh lihat! Ini dia sekarang.')
    RETURNING id INTO k_470_lima;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '六', 'enam', 2, 45, 'Bayangkan saja seekor binatang dengan <radical>kelopak</radikal> di kepalanya dan <radikal>sirip</radikal> di kakinya, berlarian dengan penampilan yang paling gila (bayangkan!). Saat ia berlari ke arah Anda, ia memperlihatkan bagian atas kepala tutupnya. Di atasnya tertulis angka 666. Kenapa? Karena itu adalah keturunan iblis, dan angka <kanji>enam</kanji> adalah angka iblis.', 'Kapanpun kita ingin mengingat bacaan ろく kita cukup menggunakan kata <reading>rock</reading>. 

Jadi, pikirkan tentang setan dan bilangan setan. Apa yang sering dikaitkan dengan hal-hal tersebut? Mengapa, <reading>rock</reading> (ろく) and roll itu. Bayangkan binatang berkaki sirip dan berkepala tutup itu tiba-tiba melantunkan musik rock di tengah kekacauannya yang merusak.')
    RETURNING id INTO k_471_enam;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '円', 'yen', 2, 46, 'Di sini kita memiliki <radical>head</radical> dengan <radical>lid</radical> di dalamnya, dekat bagian atas. Bayangkan bagian atas kepala seseorang ditutup dengan penutup. Buka tutupnya dan intip ke dalamnya... penuh dengan koin <kanji>yen</kanji>, mata uang Jepang. Jackpot! Dan semua koin yen itu tentu saja memiliki bentuk <kanji>bulat</kanji> yang bagus.', 'Seperti apa bunyi kata <kanji>yen</kanji>? Kedengarannya seperti <membaca>えん</membaca>. Mengapa? karena dahulu kala, bahasa Jepang mempunyai bunyi "kamu", namun kini tidak lagi. Sebaliknya, bunyinya adalah "e", itulah sebabnya yen = えん!')
    RETURNING id INTO k_472_yen;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '天', 'surga', 2, 47, 'Kata radikal <radikal>surga</radikal> sama dengan kanji <kanji>surga</kanji>, menjadikannya kanji yang mudah dihafal.', '<kanji>Surga</kanji>... saat ini, orang-orang tidak begitu baik. Segalanya menjadi buruk. Makanya tingkat penerimaan masuk surga hanya <reading>sepuluh</reading> (てん) persen!')
    RETURNING id INTO k_473_surga;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '手', 'tangan', 2, 48, 'Radikal <radikal>tangan</radikal> dan kanji <kanji>tangan</kanji> identik dalam tampilan dan makna! Itu seharusnya membuat segalanya menjadi mudah!', 'Untuk mengingat bacaannya て kita akan menggunakan kata "televisi". Anda memiliki tangan yang bagus. Silakan lihat mereka. ASTAGA. Anda memiliki sedikit levisi (て) <read>te</reading> di tangan Anda. Mereka juga memainkan pertunjukan paling bodoh yang dapat Anda pikirkan, dengan kedua tangan pada saat yang bersamaan.')
    RETURNING id INTO k_474_tangan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '文', 'menulis', 2, 49, 'Kanji dan radikalnya sama, jadi mengingat arti kanji ini semudah memastikan Anda mengetahui radikal untuk <radikal>menulis</radikal> terlebih dahulu! Jika Anda tahu radikalnya, Anda pasti tahu kanji ini juga berarti <kanji>tulisan</kanji>.', 'Kanji ini memiliki lebih dari satu bacaan penting yang perlu Anda pelajari! Namun jangan khawatir, berikut ini mnemonik untuk membantu Anda:

Kamu selalu membubuhkan <kanji>tulisan</kanji> pada <reading>sanggul</reading> (ぶん) agar tidak dimakan oleh <reading>mon</reading>ster (もん). Tulisan seperti apa? Biasanya itu hanya tanda X untuk menunjukkan kepada monster bahwa roti ini terlarang. (Sebenarnya, ini terlihat seperti bagian X di 文. Hmm…)')
    RETURNING id INTO k_475_menulis;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '日', 'matahari', 2, 50, 'Kanji <radical>sun</radical> dan <kanji>sun</kanji> itu sama, huzzah! Selain itu, jika Anda ingin mengingat <kanji>hari</kanji> juga, Anda bisa memikirkan bagaimana satu hari adalah waktu yang dibutuhkan matahari untuk melintasi langit.', 'Ada begitu banyak on''yomi untuk kanji ini, tetapi karena kanji ini sangat penting dan umum, pada akhirnya Anda akan mempelajari semuanya, baik Anda mau atau tidak. Untuk saat ini, kamu hanya perlu mempelajari salah satu bacaannya, yaitu にち. 

<kanji>matahari</kanji> sangat panas. Ia memfokuskan sinarnya untuk membunuh satu orang... dan orang itu adalah Friedrich <reading>Nietzsche</reading> (にち), filsuf terkenal. Dia terlalu banyak berfilsafat tentang matahari, jadi matahari memutuskan sudah waktunya dia membayar.')
    RETURNING id INTO k_476_matahari;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '月', 'bulan', 2, 51, 'Kanji <kanji>bulan</kanji> terdiri dari radikal <radikal>bulan</radikal>. Kanji ini juga digunakan untuk mengartikan <kanji>bulan</kanji>.', '<kanji>bulan</kanji> benar-benar <reading>mendapat</reading> (げつ) ke <reading>nyali</reading> (がつ) Anda. Menatap bulan terlalu lama akan membuat Anda mengalami gangguan pencernaan yang parah, jadi berhati-hatilah!')
    RETURNING id INTO k_477_bulan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '木', 'pohon', 2, 52, 'Ini adalah kanji lain yang sama dengan radikal. <radical>pohon</radikal> dan <kanji>pohon</kanji> keduanya sama dalam tampilan dan makna.', 'Anda sedang berjalan melewati pepohonan, memandanginya. Mereka terlihat tidak menyenangkan. Tiba-tiba kamu tersandung dan terjatuh. Pepohonan mulai <read>mengejek</reading> (もく) Anda. Bahkan burung yang mengejek pun mengejekmu. Ini mengerikan. Itu menyakitkan. Anda diejek saat Anda bangkit dari tanah.')
    RETURNING id INTO k_478_pohon;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '水', 'air', 2, 53, 'Radikal <radikal>air</radikal> dan kanji <kanji>air</kanji> adalah sama.', 'Saat Anda berenang, Anda meluncurkan diri Anda ke dalam <kanji>air</kanji> dengan menggunakan ban <reading>swi</reading>ng (すい). Itu salah satu kenangan musim panas yang klasik, bukan? Anak-anak berenang di danau atau kolam, terbang dari ayunan, dan menceburkan diri ke dalam air. Dalam benak Anda, cobalah mengasosiasikan air dengan ayunan itu untuk mengingat bacaan ini.')
    RETURNING id INTO k_479_air;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '火', 'api', 2, 54, 'Radikal <radikal>api</radikal> dan kanji <kanji>api</kanji> sama satu sama lain.', 'Kapanpun kita perlu mengingat か, kita menggunakan kata <reading>car</reading>.

Untuk kanji ini, ketika kita memikirkan <kanji>api</kanji>, kita harus memikirkan sesuatu yang terbakar. Apa yang terbakar? Itu jelas <reading>mobil</reading> (か) Anda sendiri! Ya Tuhan, TIDAK!')
    RETURNING id INTO k_480_api;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '犬', 'anjing', 2, 55, 'Kanji <radikal>anjing</radikal> radikal dan <kanji>anjing</kanji> sama persis!', 'Setiap <kanji>anjing</kanji> suka <reading>ea</reading>t <reading>noo</reading>dles (いぬ). Seperti film dimana anjing berbagi mie dan akhirnya berciuman, bukan? Jadi ketika Anda melihat 犬, bayangkan saja bagaimana mereka berdua makan mie.')
    RETURNING id INTO k_481_anjing;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '王', 'raja', 2, 56, 'Kanji <radikal>raja</radikal> dan kanji <kanji>raja</kanji> adalah sama!', 'Saat kamu melihat <kanji>raja</kanji> kamu perlu berkata, "<reading>Oh</reading> (おう) Raja! Oh Raja, oh tidak, oh kenapa kamu melihatku seperti itu? Oh Raja... kamu tidak akan memenggal kepalaku kan? OH TIDAK!"')
    RETURNING id INTO k_482_raja;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '出', 'keluar', 2, 57, 'Ada dua <radical>gunung</radical> di depan Anda... dan mungkin masih banyak lagi di sekitar Anda juga. Anda terjebak, dan tidak tahu cara keluar. Anda dengan panik mencari <kanji>keluar</kanji> sebelum Anda mati kedinginan. Yang paling penting adalah menemukan jalan keluar dari pegunungan ini - hidup Anda bergantung padanya.', 'Saat Anda mencoba <kanji>keluar</kanji> pegunungan ini, Anda tiba-tiba menyadari bahwa seseorang sebenarnya sedang memburu Anda. Apa? Pastikan untuk merasakan kesadaran yang tiba-tiba itu. Ini gila. Kemudian, temukan jalan keluar dan lari ke sana. Sayangnya, pemburu sedang menunggu di sana, dan dia <reading>menembakmu</reading> (しゅつ) di bagian kaki, menjatuhkanmu.')
    RETURNING id INTO k_483_keluar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '右', 'benar', 2, 58, '<radical>Narwhal</radical> <radical>mulut</radical> berada di sisi <kanji>kanan</kanji> kepalanya. Bahkan, beberapa orang mengira mereka tidak punya mulut sama sekali karena tidak melihat dari kanan narwhal. Kesalahan pemula.

Lihat bagaimana posisi radikal "mulut" di sebelah kanan radikal "narwhal"? Itu akan membantu Anda mengingat bahwa ini artinya <kanji>benar</kanji>.', 'Namun, bagaimana kita tahu untuk melihat dari <kanji>kanannya</kanji>? Karena <membaca>Anda</reading>mereka (ゆう) yang menemukan jawabannya. Kaum muda berpikir dengan cara yang biasanya tidak dilakukan oleh orang tua. Itu sebabnya mereka dapat melihat pusaran pada sereal, mendengar musik di balik kebisingan, dan tentu saja, melihat sesuatu dari sisi kanan.')
    RETURNING id INTO k_484_benar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '四', 'empat', 2, 59, 'Bayangkan memutarbalikkan diri Anda sedemikian rupa sehingga <radical>mulut</radical> Anda sekarang memiliki <radical>kaki</radical> Anda di dalamnya. Anda telah membungkukkan tubuh Anda dengan cara yang salah untuk mencapai hal ini. Faktanya, jika Anda melihat diri Anda sendiri, Anda terlihat seperti persegi sekarang... Anda hanyalah orang dengan <kanji>empat</kanji> sisi.', 'Sekarang Anda memiliki <kanji>empat</kanji> sisi, Anda terlihat seperti binatang bersisi empat: <reading>shee</reading>p (し). Lihatlah diri Anda di cermin dan lihatlah seekor domba bersisi empat yang menggemaskan menatap ke arah Anda. Bayangkan diri Anda dengan wol yang berbentuk persegi sempurna. (Anda hanya dapat melihat empat sisi karena cermin bukan 3D. Jadi, Anda adalah domba yang datar dan kartun.)')
    RETURNING id INTO k_485_empat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '左', 'kiri', 2, 60, '<radical>Narwhal</radical> melakukan <radical>konstruksi</radical> dengan tangan <kanji>kiri</kanji> mereka (atau sirip, menurut saya). Itu karena semua narwhal kidal!', 'Di tangan <kanji>kiri</kanji> mereka, semua narwhal memegang <reading>gergaji</reading> (さ). Itu karena es untuk rumahnya sudah ada, sehingga mereka hanya perlu menggergajinya untuk membuat bentuk yang mereka inginkan. Konstruksi Narwhal sebenarnya sangat sederhana.')
    RETURNING id INTO k_486_kiri;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '本', 'buku', 2, 61, 'Kanji dan radikalnya sama, jadi mengingat arti kanji ini semudah memastikan Anda mengetahui radikal untuk <radical>book</radical> terlebih dahulu! Jika Anda tahu radikalnya, Anda pasti tahu kanji ini juga berarti <kanji>buku</kanji>.

Perhatikan bahwa arti kedua, ketiga, dan keempat dari kanji ini adalah <kanji>asal</kanji>, <kanji>nyata</kanji>, dan <kanji>utama</kanji>. Anda dapat mengetahuinya dengan memikirkan bagaimana buku pada dasarnya berasal dari kehidupan nyata.', '<kanji>Buku</kanji> adalah salah satu cara terbaik untuk <reading>mengasah</reading> (ほん) kecerdasan Anda, Anda tahu?')
    RETURNING id INTO k_487_buku;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '正', 'benar', 2, 62, 'Ada garis di <radical>tanah</radikal> sehingga Anda <radikal>berhenti</radikal>, membuat tanda raksasa muncul bertuliskan <kanji>BENAR</kanji>! Anda mematuhi peraturan lalu lintas dan melakukan hal yang benar. Bagus untukmu.', 'Kamu melakukan <kanji>yang benar</kanji>, jadi inilah hadiahmu: <reading>sa</reading>ber (せい) dari <reading>Shou</reading>gun (しょう) sendiri!')
    RETURNING id INTO k_488_benar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '玉', 'bola', 2, 63, '<radikal>raja</radikal> memegang <radikal>tetesan</radikal> besar cairan di tangannya... tapi kemudian dia memantulkannya! Jatuhnya benar-benar sebuah <kanji>bola</kanji>.', 'Ketika dia selesai memainkannya, raja memberikan <kanji>bola</kanji> miliknya kepada <reading>Tama</reading>ra (たま), gadis bola yang tinggal di sana, untuk diamankan.')
    RETURNING id INTO k_489_bola;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '田', 'sawah', 2, 64, 'Radikal <radikal>sawah</radikal> dan kanji <kanji>sawah</kanji> adalah sama, membuat yang satu ini sangat mudah diingat, setidaknya dari segi makna.', 'Untuk mengingat bacaan た, kami menggunakan kata "taco".

Anda sedang berada di sawah... namun ketika Anda membungkuk untuk mengamati padi tersebut lebih dekat, Anda akan melihat bahwa yang tumbuh bukanlah padi, melainkan sekelompok <read>ta</reading>cos (た) kecil, yang tumbuh dari dalam tanah.')
    RETURNING id INTO k_490_sawah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '白', 'putih', 2, 65, 'Kata radikal <radikal>putih</radikal> dan kanji <kanji>putih</kanji> adalah sama.', 'Tim <kanji>putih</kanji> adalah tim pertama yang mampu <reading>meretas</reading> (はく) iPhone <kanji>putih</kanji>.')
    RETURNING id INTO k_491_putih;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '目', 'mata', 2, 66, 'Radikal <radikal>mata</radikal> dan kanji <kanji>mata</kanji> sama satu sama lain, jadi sekarang Anda sudah mengetahui keduanya.', '<kanji>Mata</kanji> Anda penting bagi Anda, bukan? Sedihnya, salah satu matamu hilang saat ini, karena seekor domba menyambar dan mencabutnya, dan kini berlari menjauh darimu sambil meneriakkan panggilan dombanya.... "<reading>Mehhhhh</reading> (め)!"')
    RETURNING id INTO k_492_mata;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '立', 'berdiri', 2, 67, '<radikal>berdiri</radikal> radikal dan <kanji>berdiri</kanji> kanji adalah hal yang sama, jadi sekarang Anda sudah mengetahui keduanya.', 'Bayangkan seseorang yang harus <kanji>berdiri tegak</kanji> untuk Anda. Orang-orang ini ahli dalam bidang perhotelan. Ini adalah penjaga pintu di <reading>Ritz</reading> (りつ).')
    RETURNING id INTO k_494_berdiri;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '々', 'pengulang', 2, 68, 'Ini kanji yang aneh karena tidak berarti apa-apa. Faktanya, yang dilakukannya adalah mengulangi kanji yang ada sebelumnya. Misalnya: 人々 sebenarnya adalah 人人. Kanji ini muncul setiap kali ada kanji yang berulang, karena menulis kanji seringkali lebih mudah daripada menulis kanji yang lebih rumit dua kali. Itu sebabnya kanji ini disebut <kanji>repeater</kanji>. Ia mengulangi apa yang terjadi sebelumnya.

Namun, untuk mengingat bahwa kanji ini adalah pengulangnya, bayangkan sebuah <radical>penjara</radikal> dengan <radikal>tetesan</radikal> air yang menetes berulang kali di dalamnya. Tetes tetes tetes tetes. Hal itu dilakukannya berulang kali, sehingga membuat para tahanan menjadi gila. Tapi itu tidak pernah berhenti. Itu hanya berulang-ulang.', 'Simbol ini sebenarnya tidak mempunyai nama, namun terkadang disebut のま karena terlihat seperti karakter katakana ノ dan マ yang disatukan. Jika Anda tahu katakana maka ini akan mudah dibaca. Jika tidak, pikirkan seperti ini:

Ibumu adalah <kanji>repeater</kanji>. Dia mencoba memaksa Anda memberi makan berulang kali sampai Anda meledak (secara harfiah). Kamu terus berteriak "<reading>Tidak ma</reading> (のま)!" tapi dia tidak berhenti. Dia berada di jalur yang berulang, tidak pernah berhenti, berulang selamanya.')
    RETURNING id INTO k_856_pengulang;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_458_pedang, 'Pedang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_458_pedang, 'Katana', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_459_kotoran, 'Kotoran', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_459_kotoran, 'Bumi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_459_kotoran, 'Tanah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_460_ribu, 'Ribu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_461_malam, 'Malam', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_462_anak, 'Anak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_462_anak, 'Anak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_463_kecil, 'Kecil', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_463_kecil, 'Kecil', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_464_jalan, 'Jalan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_467_lingkaran, 'Lingkaran', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_467_lingkaran, 'Bundar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_467_lingkaran, 'Bulat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_468_bakat, 'Bakat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_469_tengah, 'Tengah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_469_tengah, 'Di dalam', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_469_tengah, 'Di dalam', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_469_tengah, 'Tengah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_470_lima, 'Lima', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_471_enam, 'Enam', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_472_yen, 'Yen', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_472_yen, 'Bulat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_472_yen, 'Lingkaran', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_473_surga, 'Surga', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_474_tangan, 'Tangan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_474_tangan, 'Pelaku', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_475_menulis, 'Menulis', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_475_menulis, 'Kalimat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_476_matahari, 'Matahari', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_476_matahari, 'Hari', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_477_bulan, 'Bulan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_477_bulan, 'Bulan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_478_pohon, 'Pohon', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_478_pohon, 'Kayu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_479_air, 'Air', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_480_api, 'Api', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_481_anjing, 'Anjing', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_482_raja, 'Raja', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_483_keluar, 'KELUAR', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_484_benar, 'Benar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_485_empat, 'Empat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_486_kiri, 'Kiri', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_487_buku, 'Buku', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_487_buku, 'Asal', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_487_buku, 'Nyata', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_487_buku, 'Utama', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_488_benar, 'Benar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_489_bola, 'Bola', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_490_sawah, 'Sawah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_490_sawah, 'Sawah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_491_putih, 'Putih', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_492_mata, 'Mata', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_494_berdiri, 'Berdiri', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_856_pengulang, 'Pengulang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_856_pengulang, 'Pengulangan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_856_pengulang, 'Reduplikasi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_856_pengulang, 'Tanda Iterasi', false, true);

  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_458_pedang, 'とう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_458_pedang, 'かたな', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_459_kotoran, 'ど', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_459_kotoran, 'と', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_459_kotoran, 'つち', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_460_ribu, 'せん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_460_ribu, 'ち', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_461_malam, 'ゆう', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_462_anak, 'し', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_462_anak, 'す', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_462_anak, 'こ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_463_kecil, 'しょう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_463_kecil, 'ちい', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_463_kecil, 'こ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_463_kecil, 'お', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_464_jalan, 'ちょう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_464_jalan, 'てい', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_467_lingkaran, 'まる', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_467_lingkaran, 'がん', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_468_bakat, 'さい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_469_tengah, 'ちゅう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_469_tengah, 'なか', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_470_lima, 'ご', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_470_lima, 'いつ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_471_enam, 'ろく', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_471_enam, 'む', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_472_yen, 'えん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_472_yen, 'まる', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_473_surga, 'てん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_473_surga, 'あま', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_474_tangan, 'て', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_474_tangan, 'しゅ', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_474_tangan, 'ず', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_475_menulis, 'ぶん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_475_menulis, 'もん', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_475_menulis, 'ふみ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_476_matahari, 'にち', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_476_matahari, 'じつ', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_476_matahari, 'ひ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_476_matahari, 'か', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_476_matahari, 'び', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_477_bulan, 'げつ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_477_bulan, 'がつ', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_477_bulan, 'つき', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_478_pohon, 'もく', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_478_pohon, 'ぼく', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_478_pohon, 'き', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_478_pohon, 'こ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_479_air, 'すい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_479_air, 'みず', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_480_api, 'か', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_480_api, 'ひ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_480_api, 'ほ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_481_anjing, 'いぬ', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_481_anjing, 'けん', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_482_raja, 'おう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_483_keluar, 'しゅつ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_483_keluar, 'で', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_483_keluar, 'だ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_484_benar, 'ゆう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_484_benar, 'う', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_484_benar, 'みぎ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_485_empat, 'し', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_485_empat, 'よん', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_485_empat, 'よ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_486_kiri, 'さ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_486_kiri, 'ひだり', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_487_buku, 'ほん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_487_buku, 'もと', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_488_benar, 'せい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_488_benar, 'しょう', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_488_benar, 'ただ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_488_benar, 'まさ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_489_bola, 'たま', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_489_bola, 'ぎょく', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_490_sawah, 'た', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_490_sawah, 'でん', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_491_putih, 'はく', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_491_putih, 'しろ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_491_putih, 'しら', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_492_mata, 'め', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_492_mata, 'もく', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_494_berdiri, 'りつ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_494_berdiri, 'りゅう', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_494_berdiri, 'た', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_856_pengulang, 'のま', 'kunyomi', true, true);

  -- 3. VOCABULARIES
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '上る', 'untuk-mendaki', 2, 69, 'Kata ini berarti <vocabulary>mendaki</vocabulary>. Anda dapat mengetahui bahwa kata ini adalah kata kerja karena diakhiri dengan bunyi う (る, dalam kasus ini). Maknanya mirip dengan makna 上 kanji, yaitu "di atas". Jadi kata ini berarti bergerak "di atas" sesuatu (dengan kata lain, memanjat!)', '上る terdiri dari kanji yang dibubuhi hiragana, sehingga akan menggunakan pembacaan kanji kun''yomi. Untuk 上, ada beberapa bacaan kun''yomi, dan Anda belum mempelajarinya, jadi inilah mnemonik untuk membantu Anda: 

Kamu ingin <vocabulary>mendaki</vocabulary> gunung tersebut, namun seorang lelaki tua yang kasar meraih bahumu dan berkata, "<reading>Tidak usah</reading>y, kamu tidak akan mendaki gunung itu, tidak hari ini." Jika Anda bukan laki-laki, pikirkan betapa anehnya dia menyebut Anda laki-laki. Jika Anda sudah dewasa, pikirkan betapa Anda berharap dia memanggil Anda "dude" atau semacamnya, bukan "boy". Jika Anda laki-laki, ya... pikirkan betapa pantasnya dia mengatakan "tidak, laki-laki".', 'Untuk Mendaki, Untuk Naik')
    RETURNING id INTO v_2492_untuk_mendaki;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '刀', 'pedang', 2, 70, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna!', 'Karena kata ini terdiri dari satu kanji, maka menggunakan bacaan kun''yomi. Saya harap Anda sudah mengetahui kata ini - itu akan membuat segalanya lebih mudah. Itu <reading>かたな</reading> (Anda tahu apa itu katana, kan?).', 'Pedang, Katana')
    RETURNING id INTO v_2507_pedang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '土', 'kotoran', 2, 71, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.

土 umumnya mengacu pada <vocabulary>tanah</vocabulary> atau <vocabulary>tanah</vocabulary> atau <vocabulary>bumi</vocabulary>.', 'Karena kata ini terdiri dari satu kanji, maka menggunakan bacaan kun''yomi. Berikut ini mnemonik untuk membantu Anda mengingatnya: 

Anda melihat melalui tanah. Anda mencoba menemukan sesuatu. Saat Anda menggali dan menyaring, Anda menemukan bukan hanya satu tapi <reading>dua keju</reading>ses (つち). Tarik keluar dari tanah dan masukkan ke dalam mulut Anda. Bagaimana rasa dan perbandingan kedua keju tersebut?', 'Kotoran, Tanah, Bumi')
    RETURNING id INTO v_2508_kotoran;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '千', 'ribu', 2, 72, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Biasanya satu kanji yang menyusun kata seperti ini artinya akan menggunakan bacaan kun''yomi. Namun, angka pada umumnya merupakan pengecualian, yang berarti kata ini menggunakan bacaan on''yomi. Jika Anda mempelajari kanji, Anda pasti sudah mengetahuinya!', 'Ribu')
    RETURNING id INTO v_2509_ribu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '夕べ', 'tadi-malam', 2, 73, 'Aku menghabiskan seluruh <kanji>malam</kanji> di <reading>be</reading>(べ)d <vocabulary>tadi malam</vocabulary>. Itu adalah <vocabulary>malam</vocabulary> yang sangat dingin.', 'Ketika hiragana dilampirkan pada sebuah kanji, Anda biasanya dapat berasumsi bahwa kanji tersebut akan dibaca menggunakan pembacaan kun''yomi, dan itulah yang terjadi dengan kata ini juga. Dengan mempelajari kanji kata ini, Anda juga mempelajari cara membaca kata tersebut.', 'Tadi malam, Malam')
    RETURNING id INTO v_2511_tadi_malam;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '女の子', 'gadis', 2, 74, '<kanji>wanita</kanji> <kanji>anak</kanji> adalah <vocabulary>perempuan</vocabulary>.

Kata ini memiliki dua kanji dengan hiragana tertancap di tengahnya. Hiragana itu adalah partikel の. Kali ini, yang dimaksud hanyalah kata benda sebelum の yang memodifikasi kata benda setelahnya.

女の子 adalah kata biasa untuk gadis muda, seperti anak-anak atau remaja. Terkadang kata ini juga bisa merujuk pada wanita dewasa, tetapi hanya untuk menonjolkan sifat muda atau kekanak-kanakan mereka dengan cara yang lucu atau penuh kasih sayang.', 'Karena ada hiragana di sini, bisa dipastikan kanji ini akan menggunakan pembacaan kun''yomi. Anda sudah mengetahui bacaan kun''yomi untuk 女. Anda bahkan mungkin ingat satu kata untuk 子, tapi inilah mnemonik untuk berjaga-jaga:

Saat Anda perlu mengingat bacaan kun''yomi untuk 子, pikirkan saja bagaimana seorang anak mencuri <reading>co</reading>at (こ) Anda. Kamu memberikannya padanya karena dia terlihat kedinginan, tapi kemudian dia lari ke jalan dan meninggalkanmu sambil berteriak, "Mantel! Mantel! Itu 子 punya mantelku!"', 'Gadis, Gadis muda')
    RETURNING id INTO v_2512_gadis;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '子', 'anak', 2, 75, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Karena kata ini terdiri dari satu kanji, maka menggunakan bacaan kun''yomi. Saat mempelajari kanji, Anda tidak mempelajari bacaan tersebut, jadi inilah mnemonik untuk membantu Anda dengan kata ini:

Anda melihat <vocabulary>anak</vocabulary> dan memberinya <reading>co</reading>Anda di (こ). Anak itu terlihat kedinginan, jadi kamu memberinya mantelmu. Anak-anak tidak pernah ingin mengenakan pakaian hangat yang pantas padahal seharusnya, kemudian mereka akhirnya menggigil dan harus mengenakan mantel kebesaran milik orang tua. Untungnya Anda ada di sana untuk memberikan ini 子 mantel Anda.', 'Anak, Anak')
    RETURNING id INTO v_2513_anak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '女子', 'gadis', 2, 76, '<kanji>wanita</kanji> <kanji>anak</kanji> hanyalah <vocabulary>perempuan</vocabulary>!

女子 adalah kata yang relatif formal yang biasa digunakan dalam konteks di mana klasifikasi atau kategorisasi berdasarkan gender digunakan, seperti dalam lingkungan olahraga atau sekolah.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Gadis, Wanita, Perempuan')
    RETURNING id INTO v_2514_gadis;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '小さい', 'kecil', 2, 77, 'Kanji ini memiliki hiragana yang ditempelkan dan diakhiri dengan bunyi い. Itu berarti itu mungkin sebuah kata sifat (dan memang demikian!). Jadi, jika kamu mengambil kanji 小 dan artinya (kecil), kamu bisa mengetahui versi kata sifatnya. Apa versi kata sifat dari "kecil?" Sebenarnya sama saja: <vocabulary>kecil</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak mempelajarinya dengan kanji ini, jadi inilah mnemonik untuk membantu Anda mengingat bagian ちい:

Saat Anda memikirkan kata <vocabulary>small</vocabulary>, coba pikirkan <reading>chee</reading>se <reading>ea</reading>tery (ちい) ini. Anda masuk ke dalam, dan semua keju mereka sangat kecil. Mereka memberi Anda kaca pembesar untuk melihat semua keju. Anda melihatnya dan berseru: "Mengapa keju ini begitu kecil???"', 'Kecil, Kecil')
    RETURNING id INTO v_2515_kecil;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '丸', 'lingkaran', 2, 78, 'Kosa kata ini dan kanji yang membuatnya memiliki arti yang sama: <vocabulary>Circle</vocabulary>.', 'Bacaan yang kamu pelajari untuk kanji ini adalah kun''yomi. Karena kosakata ini terdiri dari satu kanji, maka menggunakan bacaan kun''yomi. Coba tebak? Itu artinya Anda sudah mengetahuinya!', 'Lingkaran, Bulat, Bundar')
    RETURNING id INTO v_2517_lingkaran;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '丸い', 'bundar', 2, 79, 'Dengan adanya い di akhir, Anda dapat menebak bahwa kata tersebut merupakan kata sifat い. Apa versi kata sifat dari kanji <kanji>丸</kanji>? "Lingkaran" menjadi <vocabulary>melingkar</vocabulary>, <vocabulary>spherical</vocabulary> atau <vocabulary>bulat</vocabulary>. Kata ini, dibandingkan dengan kata serupa lainnya (円), memiliki tujuan yang lebih umum dan juga dapat digunakan dengan objek bola 3D.', 'Kata ini menggunakan bacaan yang Anda pelajari untuk kanji <kanji>丸</kanji>, meskipun Anda juga harus menambahkan い di akhir.', 'Bundar, Bulat, Bulat')
    RETURNING id INTO v_2518_bundar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '〜才', 'bertahun-tahun', 2, 80, 'Meskipun kata ini terdiri dari satu kanji yang berdiri sendiri, namun maknanya tidak sama dengan kanji induknya. Namun maknanya serupa dalam beberapa hal. Kata ini berarti <vocabulary>tahun</vocabulary> atau <vocabulary>usia</vocabulary>. Dengan bertambahnya tahun, semakin banyak <kanji>bakat</kanji>, bukan? Itu sebabnya kata ini berarti "berusia bertahun-tahun" dan bukan "bakat", seperti kanji induknya.

Anda dapat menempelkan kata ini pada angka untuk mengetahui berapa usia seseorang!

Catatan khusus untuk Anda semua pembelajar tingkat lanjut di luar sana. Saat membahas usia, 〜歳 adalah kanji asli dan benar untuk digunakan. Karena 〜才 lebih mudah untuk ditulis dan memiliki bacaan yang sama, maka menjadi mainstream. Anda akan melihatnya digunakan dalam tulisan saat ini, terutama di sekolah dasar. Namun dalam penulisan formal, Anda selalu ingin menggunakan 〜歳, yang akan Anda pelajari nanti.', 'Bacaannya sama dengan yang kamu pelajari untuk kanji, artinya kamu harusnya sudah mengetahuinya! Namun jangan mencoba mengetik bagian 〜.', 'Bertahun-tahun, Usia')
    RETURNING id INTO v_2519_bertahun_tahun;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '中', 'di-dalam', 2, 81, 'Jika kanji <kanji>tengah</kanji> digunakan sebagai sebuah kata, artinya <vocabulary>di dalam</vocabulary>. Ketika Anda berada di tengah-tengah sesuatu, itu berarti Anda berada <vocabulary>di</vocabulary> hal itu!', 'Karena kata ini terdiri dari satu kanji, maka menggunakan bacaan kun''yomi. Saat mempelajari kanji, Anda tidak mempelajari bacaan tersebut, jadi inilah mnemonik untuk membantu Anda dengan kata ini:

Ada suara yang datang dari <kanji>di dalam</kanji> dinding. Kedengarannya seperti suara ketukan, ketukan, ketukan. Anda merobohkan tembok, dan ada pria menyeramkan berdiri di dalam. Dialah <read>pengetuk</reading> (なか).', 'Di dalam, Di dalam')
    RETURNING id INTO v_2520_di_dalam;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '中々', 'lebih-tepatnya', 2, 82, 'Simbol 々 hanya mengulangi kanji yang ada sebelumnya. Dengan kata lain, 中々 sama dengan 中中. Mudah! Jadi dengan 中々, Anda memiliki <kanji>tengah</kanji> x2. Jika ada sesuatu yang lebih menengah daripada tengah, itu adalah <vocabulary>agak</vocabulary>, <vocabulary>cukup</vocabulary>, atau <vocabulary>cukup</vocabulary> sesuatu. Mengapa? Saya rasa karena semua itu adalah intensifier tingkat menengah yang bagus.

中々 dapat digunakan secara positif atau negatif. Dalam arti positif, biasanya berarti ada sesuatu yang lebih baik dari yang diharapkan, seperti 中々おいしい (cukup enak). Namun kata ini sangat serbaguna dan bisa juga berarti "sedikit", "sangat", atau "sepenuhnya" bergantung pada situasinya. Ini bahkan mungkin terdengar merendahkan, jadi berhati-hatilah dalam menggunakannya! Dalam arti negatif, Anda dapat menggunakannya ketika ada sesuatu yang lebih sulit dari yang diharapkan, seperti dalam 中々できない (tidak dapat dilakukan dengan mudah).', 'Pembacaan kata ini adalah pembacaan kun''yomi, karena ini seperti menyatukan dua kanji, bukan kata jukugo yang sebenarnya. Untuk mempelajari bacaan kun''yomi, lihatlah mnemonik ini: 

Dari tengah tengah terdengar suara. Itu adalah suara ketukan. Ketukan. Ketukan. Ketukan. Anda membuka dinding di sekitar benda ini. Kemudian Anda membuka set dinding kedua (tengah dari tengah). Di dalamnya ada seorang lelaki tua, yang mengidentifikasi dirinya sebagai "si pengetuk". Anda masuk ke dalam dirinya dan menemukan pengetuk lain juga. Itu sebabnya disebut <reading>knocker knocker</reading> (なかなか).', 'Lebih tepatnya, Cukup, Lumayan')
    RETURNING id INTO v_2521_lebih_tepatnya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '五月', 'mungkin', 2, 83, 'Kanji bulan juga mewakili satu bulan, jadi jika Anda memiliki lima bulan tersebut, bulan apa dalam setahun? Itu akan menjadi <vocabulary>Mei</vocabulary>, bulan terbesar dalam setahun (karena ada hari handuk di dalamnya!).', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. 月 mempunyai dua bacaan on''yomi, tapi karena ini adalah nama bulan tertentu, maka akan menggunakan bacaan がつ. Berikut ini mnemonik untuk membantu Anda mengingatnya:

<vocabulary>Mei</vocabulary> adalah saat kamu dan temanmu berkumpul untuk makan <reading>Go</reading>dzilla <reading>nyali</reading> (ごがつ). Cuacanya selalu bagus di bulan Mei, jadi ini waktu yang tepat untuk berburu Godzilla dan mengadakan barbekyu Godzilla-nyali di luar bersama teman-teman Anda.', 'Mungkin')
    RETURNING id INTO v_2522_mungkin;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '五日', 'hari-kelima', 2, 84, '<vocabulary>Hari kelima</vocabulary> atau <vocabulary>hari kelima</vocabulary>. Tidak peduli bagaimana Anda melihatnya, kata ini sangat masuk akal.', 'Kata-kata yang menghitung hari menggunakan bacaan yang luar biasa. Meskipun ini adalah kata jukugo, namun menggunakan pembacaan kun''yomi untuk kedua kanjinya. Pikirkan tentang kata ini seperti ini:

Pada <vocabulary>hari kelima</vocabulary> saya harus <reading>makan</reading> (いつ) lima <reading>ca</reading>rs (か). Sekarang bayangkan diri Anda memakan lima mobil. Bagaimana Anda bisa melewati yang pertama? saya terkesan.', 'Hari Kelima, Hari Kelima, Lima Hari')
    RETURNING id INTO v_2523_hari_kelima;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '五十', 'lima-puluh', 2, 85, 'Apa yang terjadi jika Anda punya sepuluh lima kali? Anda mendapat <vocabulary>lima puluh</vocabulary>!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Begitu pula dengan kata ini, artinya Anda harusnya sudah tahu cara membaca kata ini.', 'Lima puluh')
    RETURNING id INTO v_2524_lima_puluh;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '五つ', 'lima-hal', 2, 86, 'Dari angka + kata つ sebelumnya, Anda mungkin bisa menebak bahwa kata ini memiliki arti <vocabulary>lima hal</vocabulary>.', 'Pembacaan kata ini merupakan pembacaan kun''yomi dari kanji <kanji>五</kanji>, artinya anda tidak mempelajarinya ketika anda mempelajari pembacaan kanji induknya. Untuk mengingat kata ini, pikirkan seperti ini:

Anda memiliki <vocabulary>lima hal</vocabulary>. Apa hubunganmu dengan mereka? Anda perlu <read>makan</reading> (いつ) mereka. Bayangkan saja ada lima makanan enak yang bisa disantap, ditempelkan masing-masing di satu jari tangan Anda, lalu dimakan satu demi satu. Dan pastikan untuk menghitung mundur dari lima saat melakukannya!', 'Lima Hal')
    RETURNING id INTO v_2525_lima_hal;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '五', 'lima', 2, 87, 'Kosakata ini dibuat dari satu kanji, artinya memiliki arti yang sama dengan kanji induknya: <vocabulary>Lima</vocabulary>.', 'Karena angka merupakan pengecualian, kata ini dibaca menggunakan bacaan on''yomi meskipun hanya dibuat dari satu kanji. Beruntungnya Anda, Anda mempelajari cara membaca kata ini saat mempelajari kanji induknya.', 'Lima')
    RETURNING id INTO v_2526_lima;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '六つ', 'enam-hal', 2, 88, 'Angka apa pun yang dilengkapi つ berarti Anda sedang menghitung jumlah benda tersebut. Dalam hal ini, <vocabulary>enam hal</vocabulary>.', 'Karena kata ini terdiri dari kanji yang dibubuhi hiragana, bisa ditebak bahwa kata ini menggunakan bacaan kun''yomi. Berikut ini mnemonik untuk membantu Anda melakukannya:

<vocabulary>enam hal</vocabulary> apa yang perlu Anda hitung? Kali ini Anda menghitung enam ekor sapi. Alasannya enam adalah karena Anda menginginkan tepat enam <reading>moo</reading> (むっ). Tidak lebih, tidak kurang. Anda sangat teliti tentang moo Anda.', 'Enam Hal')
    RETURNING id INTO v_2527_enam_hal;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '六月', 'juni', 2, 89, 'Karena kanji 月 berarti "bulan" dan "bulan", apakah bulan keenam dalam satu tahun? Januari, Februari, Maret, April, Mei, <vocabulary>Juni</vocabulary>!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. 月 mempunyai dua bacaan on''yomi, tapi karena ini adalah nama bulan tertentu, maka akan menggunakan bacaan がつ. Berikut ini mnemonik untuk membantu Anda mengingatnya:

<vocabulary>Juni</vocabulary> selalu memberimu <reading>rock</reading> <reading>nyali</reading> (ろくがつ). Bulan Juni adalah awal musim hujan di Jepang, jadi isi perut Anda menjadi keras agar tidak larut oleh semua curah hujan. Perut batu di bulan Juni adalah mekanisme bertahan hidup yang keren, tapi bisa menyebabkan gangguan pencernaan yang parah.', 'Juni')
    RETURNING id INTO v_2528_juni;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '六日', 'hari-keenam', 2, 90, 'Itu kanji untuk enam hari. Gabungkan keduanya dan Anda akan mendapatkan <vocabulary>hari keenam</vocabulary> (atau <vocabulary>hari keenam</vocabulary>).', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Namun ini merupakan pengecualian. Saat Anda menghitung hari (setidaknya satu sampai sepuluh), pembacaan kun''yomi digunakan. Jadi mari kita pikirkan tentang hari keenam itu – apa saja manfaatnya?

Pada <vocabulary>hari keenam</vocabulary> perjalanan Anda, Anda akhirnya tiba di tujuan. Anda keluar dari mobil dan berkata, "<reading>Muy</reading> (むい) bien <reading>car</reading> (か), muy bien!".', 'Hari Keenam, Hari Keenam, Enam Hari')
    RETURNING id INTO v_2529_hari_keenam;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '十六', 'enambelas', 2, 91, 'Anda punya sepuluh dan enam (jangan bingung dengan enam puluhan!). Jika kamu punya sepuluh dan enam, kamu punya total <vocabulary>enambelas</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda tahu cara membaca kanji Anda, Anda juga akan tahu cara membacanya!', 'Enambelas')
    RETURNING id INTO v_2530_enambelas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '六', 'enam', 2, 92, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Karena kata ini terdiri dari satu kanji, maka sebaiknya menggunakan bacaan kun''yomi. Angka, seperti yang Anda tahu, adalah pengecualian dari aturan ini. Mereka biasanya menggunakan bacaan on''yomi, dan bacaan on''yomi adalah bacaan yang Anda pelajari bersama dengan kanji ini, artinya Anda sebaiknya melakukannya dengan baik!', 'Enam')
    RETURNING id INTO v_2531_enam;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '〜円', 'yen', 2, 93, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji. Pastikan untuk menghilangkan 〜 dalam jawaban Anda karena ini hanya pengganti angka.', 'Yen, Yen Jepang')
    RETURNING id INTO v_2532_yen;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '千円', 'seribu-yen', 2, 94, 'Seribu yen hal ini menjadikan kata ini <vocabulary>seribu yen</vocabulary>.', 'Karena kamu sudah mengetahui bacaan on''yomi dari kedua kanji ini, maka kamu juga harus mengetahui bacaan kosakata ini!', 'Seribu Yen, Seribu Yen, Seribu Yen')
    RETURNING id INTO v_2533_seribu_yen;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '天', 'surga', 2, 95, 'Kanji dan kata-katanya… hampir sama. Kanji berarti <kanji>surga</kanji>, tetapi kata ini lebih mengacu pada <vocabulary>surga</vocabulary>. Tahukah Anda, langit besar yang terbentang tinggi di atas kita?

天 terkadang bisa merujuk pada surga yang bersifat religius (tempat yang kita semua ingin capai suatu hari nanti), namun lebih sering mengacu pada langit dan apa yang ada di baliknya, jadi Anda juga bisa menyebutnya <vocabulary>cakrawala</vocabulary>.', 'Karena kata ini terdiri dari satu kanji, biasanya menggunakan bacaan kun''yomi. Namun, kanji yang membentuk kata ini hanya memiliki satu bacaan penting, yaitu on''yomi. Sejak Anda mempelajari cara membaca on''yomi untuk kanji ini, Anda juga telah mempelajari cara membaca kata ini.', 'Surga, Cakrawala')
    RETURNING id INTO v_2535_surga;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '天才', 'jenius', 2, 96, 'Jika <kanji>surga</kanji> telah memberi Anda <kanji>bakat</kanji>, Anda harus menjadi <vocabulary>genius</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Selama Anda mengetahui bacaan kanji ini, Anda seharusnya bisa membaca kata ini dengan baik.', 'Jenius')
    RETURNING id INTO v_2536_jenius;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '手', 'tangan', 2, 97, 'Kanjinya berarti <kanji>tangan</kanji>, dan kata tersebut juga berarti <kosakata>tangan</vocabulary>! Ini juga dapat digunakan untuk merujuk ke seluruh <vocabulary>lengan</vocabulary> Anda.', 'Karena kata ini terdiri dari satu kanji, maka menggunakan bacaan kun''yomi. Karena ini bagian tubuh, pembacaan kun''yomi biasanya diprioritaskan. Artinya, Anda sudah mempelajari bacaan kun''yomi saat mempelajari kanji.', 'Tangan, Lengan')
    RETURNING id INTO v_2537_tangan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '下手', 'tidak-terampil', 2, 98, 'Bayangkan seseorang mengulurkan tangannya setinggi bahu. Apa pun di atas itu berarti “terampil”. Segala sesuatu <kanji>di bawah</kanji> yang <kanji>tangan</kanji> itu sama dengan <vocabulary>tidak terampil</vocabulary>. Itu sebabnya "di bawah tangan" berarti <vocabulary>tidak terampil</vocabulary> atau <vocabulary>buruk</vocabulary>!', 'Terkadang kanji memiliki bacaan luar biasa yang bukan on''yomi atau kun''yomi, dan ini adalah salah satunya. Jadi, inilah mnemonik untuk membantu Anda mengingat bacaan ini:

Jika Anda <vocabulary>tidak terampil</vocabulary> atau <vocabulary>buruk dalam</vocabulary> sesuatu dan Anda mengeluh tentang hal itu, maka Anda hanyalah seorang <reading>hater</reading> (へた). Jangan menjadi pembenci; menjadi lebih baik.', 'Tidak terampil, Tidak terampil, Buruk Di')
    RETURNING id INTO v_2538_tidak_terampil;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '上手', 'baik-dalam', 2, 99, 'Bayangkan seseorang mengulurkan tangannya. Ini rata-rata. Hal-hal yang dinilai di bawah kendali adalah hal-hal yang tidak Anda kuasai. Hal-hal yang diberi peringkat <kanji>di atas</kanji> <kanji>tangan</kanji> adalah hal-hal yang <vocabulary>kuasai</vocabulary> Anda.', 'Kedua kanji ini menggunakan bacaan on''yomi, meskipun 手 menggunakan bacaan on''yomi yang tidak Anda pelajari dengan kanji tersebut. Ini adalah bacaan yang langka, jadi tidak disertakan (dan kami hanya harus menangani pengecualian seperti ini seiring berjalannya waktu). Untuk mengingat bacaan kata ini, berikut mnemoniknya:

Apa yang kamu kuasai? Kamu benar-benar <vocabulary>pandai</vocabulary> mengajak <reading>Joe</reading> (じょう) ke <reading>kebun binatang</reading> (ず). Tidak ada orang lain yang bisa membawa Joe ke kebun binatang—dia marah dan melemparkan mereka ke kandang hewan. Tapi kamu? Joe mempercayaimu.', 'Baik Dalam, Mahir, Terampil Di, Terampil')
    RETURNING id INTO v_2539_baik_dalam;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '文', 'menulis', 2, 100, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.

Dengan sendirinya, 文 juga bisa berarti <vocabulary>kalimat</vocabulary>, terutama dalam konteks tata bahasa.', 'Kata ini menggunakan salah satu bacaan yang Anda pelajari untuk kanjinya: ぶん. Anda dapat mengingatnya dengan memikirkan bagaimana setiap kali Anda sedang mengerjakan tulisan Anda, memakan <reading>roti</reading> (ぶん) membantu Anda menulis kalimat yang lebih baik.', 'Menulis, Kalimat')
    RETURNING id INTO v_2540_menulis;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '日', 'matahari', 2, 101, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna. Perhatikan bahwa kata ini berarti "matahari" dan "siang". Mengapa? karena matahari membutuhkan waktu satu hari untuk berputar dan kembali!', 'Karena kata ini terdiri dari satu kanji, maka menggunakan bacaan kun''yomi. Berikut ini mnemonik untuk membantu Anda mengingatnya: 

Apa yang kamu rasakan dari matahari? Anda merasakan <read>hea</reading>t (ひ).', 'Matahari, Hari')
    RETURNING id INTO v_2541_matahari;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '月', 'bulan', 2, 102, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Karena kata ini terdiri dari satu kanji, maka sebaiknya menggunakan bacaan kun''yomi. Saat mempelajari kanji, Anda tidak mempelajari bacaan tersebut, jadi inilah mnemonik untuk membantu Anda dengan kata ini:

Lihatlah bulan yang besar dan terang itu. Anda harus membukanya dan mengambil apa yang ada di dalamnya. Untuk melakukan itu, Anda diharuskan memiliki <reading>dua kunci</reading> (つき), dan keduanya harus diputar secara bersamaan. Bayangkan Anda dan seorang teman memutar kunci di sisi berlawanan bulan untuk membuka bagian tengahnya.', 'Bulan, Bulan')
    RETURNING id INTO v_2542_bulan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '十月', 'oktober', 2, 103, 'Kanji untuk "bulan" dan "bulan" adalah sama, mungkin karena siklus bulan terjadi kira-kira satu bulan. Jadi, apa siklus bulan kesepuluh dalam setahun? Itu akan menjadi bulan yang luar biasa <vocabulary>Oktober</vocabulary>!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. 月 mempunyai dua bacaan on''yomi, tapi karena ini adalah nama bulan tertentu, maka akan menggunakan bacaan がつ. Berikut ini mnemonik untuk membantu Anda mengingatnya:

<vocabulary>Oktober</vocabulary> memberimu <reading>jew</reading>el <reading>nyali</reading> (じゅうがつ). Pada bulan Oktober, nyali Anda secara ajaib menghasilkan permata, yang Anda kumpulkan (jangan tanya bagaimana caranya) untuk membuat kostum Halloween yang cukup mengagumkan.', 'Oktober')
    RETURNING id INTO v_2543_oktober;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '一月', 'januari', 2, 104, 'Karena kanji 月 berarti bulan dan bulan (karena siklus bulan kira-kira satu bulan), berapa bulan yang nomor satu? Dalam bahasa Inggris kami mempunyai nama sebenarnya untuk itu, dan nama itu adalah <vocabulary>January</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. 月 mempunyai dua bacaan on''yomi, namun selalu menggunakan bacaan がつ pada nama bulan tertentu, jadi inilah mnemonik untuk membantumu mengingatnya:

<vocabulary>Januari</vocabulary> selalu membuatmu <reading>gatal</reading> <reading>nyali</reading> (いちがつ). Ini adalah penyakit aneh yang muncul setiap bulan Januari dan membuat perut Anda sangat gatal. Mungkin karena terlalu memanjakan diri di tahun baru.', 'Januari')
    RETURNING id INTO v_2544_januari;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '二月', 'februari', 2, 105, 'Kanji 月 berarti bulan dan bulan (karena siklus bulan mungkin memakan waktu sekitar satu bulan). Jadi, berapakah angka dua bulannya? Ini bukan bulan Januari... ini bukan bulan Maret... ini <vocabulary>Februari</vocabulary>!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. 月 mempunyai dua bacaan on''yomi, tapi karena ini adalah nama bulan tertentu, maka akan menggunakan bacaan がつ. Berikut ini mnemonik untuk membantu Anda mengingatnya:

<vocabulary>Februari</vocabulary> adalah bulan ketika seseorang membuat Anda <reading>lutut</reading> di <reading>nyali</reading> (にがつ). Orang asing datang setiap bulan Februari hanya untuk membuat Anda berlutut. Agak brengsek, tapi hei - setiap orang punya caranya sendiri untuk menghadapi kesedihan musim dingin, bukan?', 'Februari')
    RETURNING id INTO v_2545_februari;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '木', 'pohon', 2, 106, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Karena kata ini terdiri dari satu kanji, maka sebaiknya menggunakan bacaan kun''yomi. Saat mempelajari kanji, Anda tidak mempelajari bacaan tersebut, jadi inilah mnemonik untuk membantu Anda dengan kata ini:

Kamu berjalan menuju pohon itu. Anda harus masuk ke dalam, karena itu membawa Anda ke suatu tempat rahasia. Jadi, keluarkan kunci <reading></reading> (き) dan masukkan ke dalam slot, buka pintu di pohon sehingga kamu bisa masuk ke dalam.', 'Pohon, Kayu')
    RETURNING id INTO v_2546_pohon;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '水', 'air', 2, 107, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Karena kata ini terdiri dari satu kanji, maka sebaiknya menggunakan bacaan kun''yomi. Saat mempelajari kanji, Anda tidak mempelajari bacaan tersebut, jadi inilah mnemonik untuk membantu Anda dengan kata ini: 

Pastikan Anda selalu membawa air saat mengunjungi <reading>me zoo</reading> (みず). Itu kebun binatang dengan deretan kandang... aku. Dan aku haus!', 'Air')
    RETURNING id INTO v_2547_air;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '火', 'api', 2, 108, 'Kosakata ini dibuat dari satu kanji, artinya memiliki arti yang sama dengan kanji induknya: <vocabulary>api</vocabulary>.', 'Karena kata ini terdiri dari satu kanji, maka menggunakan bacaan kun''yomi. Saat mempelajari kanji, Anda tidak mempelajari bacaan tersebut, jadi inilah mnemonik untuk membantu Anda dengan kata ini:

Apa yang dihasilkan dari <vocabulary>api</vocabulary>? Banyak sekali <read>hea</reading>t (ひ). Rasakan itu keluar dari api, menyentuh dan menghangatkan wajah Anda.', 'Api')
    RETURNING id INTO v_2548_api;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '火山', 'gunung-berapi', 2, 109, 'Gunung api mungkin adalah apa yang Anda pikirkan: <vocabulary>gunung berapi</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Pembacaan 山 adalah ざん, bukan さん karena rendaku (suara berurutan).', 'Gunung berapi')
    RETURNING id INTO v_2549_gunung_berapi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '犬', 'anjing', 2, 110, 'Kosakata yang terdiri dari satu kanji ini memiliki arti yang sama dengan kanji tunggal tersebut. Artinya adalah <vocabulary>anjing</vocabulary>.', 'Karena ini adalah kata yang terdiri dari satu kanji dan tidak ada yang lain, Anda dapat berasumsi bahwa kata ini akan menggunakan bacaan kun''yomi. Pembacaan yang Anda pelajari untuk kanji ini kebetulan merupakan pembacaan kun''yomi juga. Jadi jika Anda tahu kanjinya, Anda tahu bacaannya.', 'Anjing')
    RETURNING id INTO v_2550_anjing;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '子犬', 'anak-anjing', 2, 111, '<kanji>anak</kanji> <kanji>anjing</kanji> adalah <vocabulary>anak anjing</vocabulary>!', 'Meskipun ini kata jukugo, namun tidak menggunakan bacaan on''yomi. Untungnya Anda mempelajari bacaan kun''yomi dengan kosakata 子 (こ) dan 犬 (いぬ). Anggap saja 子犬 sebagai dua kata yang digabungkan untuk mengingat kata ini.', 'Anak anjing')
    RETURNING id INTO v_2551_anak_anjing;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '王', 'raja', 2, 112, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Pembacaan kata ini sama dengan yang Anda pelajari saat mempelajari kanji.', 'Raja')
    RETURNING id INTO v_2552_raja;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '王子', 'pangeran', 2, 113, '<kanji>anak</kanji> dari <kanji>raja</kanji> adalah <vocabulary>pangeran</vocabulary>. Suatu hari nanti dia akan menjadi 王, jika dia beruntung, tapi saat ini dia hanyalah anak raja alias pangeran!

Jika Anda lebih menyukai detail tata bahasa, Anda dapat mencoba mengingat bahwa jika sebuah kata terdiri dari dua kanji, terkadang kanji pertama memiliki hubungan posesif dengan kanji kedua. Dalam hal ini, 王 memiliki 子, menjadikannya anak raja. Secara historis, anak laki-laki mempunyai prioritas dalam suksesi kerajaan, jadi saya rasa itulah mengapa kata ini berarti "pangeran".', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Perhatikan juga bahwa bacaan untuk 子 (し) diubah menjadi じ.

Meskipun demikian, bacaan ini mudah tertukar dengan kata-kata serupa lainnya, jadi inilah mnemonik yang dapat membantu Anda:

<vocabulary>Pangeran</vocabulary> selalu mengatakan "<reading>Ohh</reading>, <reading>Je</reading>sus (おうじ), tolong biarkan aku menjadi raja!" Faktanya, sang pangeran mungkin berkata "Ohh, Yesus" untuk meminta bantuan setidaknya sekali sehari.', 'Pangeran')
    RETURNING id INTO v_2553_pangeran;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '女王', 'ratu', 2, 114, '<kanji>wanita</kanji> <kanji>raja</kanji> adalah <vocabulary>ratu</vocabulary>. 

Anda mengetahui hal ini karena wanita yang datang <em>sebelum</em> raja pastilah ratu. Bayangkan wanita di depan ini, memimpin raja berkeliling. Hanya seorang ratu yang bisa melakukan itu!

Untuk penjelasan lebih teknis, ingatlah bahwa ketika sebuah kata terdiri dari dua karakter kanji, kanji pertama sering kali mengubah kanji kedua. Dalam hal ini, 女 memodifikasi 王, menjadikannya raja wanita, alias ratu!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Meskipun demikian, bacaan ini mudah tertukar dengan kata-kata serupa lainnya, jadi inilah mnemonik yang dapat membantu Anda:

<vocabulary>ratu</vocabulary> bernama <reading>Jo</reading>-Ann (じょ), atau disingkat Jo, dan dia selalu bercanda. Hei, tunggu sebentar. Jo… raja. 女… raja. Jo… おう!! bagus! Mengerti? Saat Anda memikirkan ratu, ingatlah betapa dia sangat suka bercanda (女王).', 'Ratu')
    RETURNING id INTO v_2554_ratu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '王女', 'putri', 2, 115, '<kanji>wanita</kanji> (atau gadis) dari <kanji>raja</kanji> adalah <vocabulary>putri</vocabulary>.

Anda tahu dia adalah sang putri karena dia berada <em>setelah</em> raja — dia hanyalah putrinya dan tidak memiliki kekuatan sebesar itu. Bayangkan raja dengan seorang wanita muda yang mengikutinya. Pasti sang putri!

Jika Anda lebih menyukai detail tata bahasa, Anda dapat mencoba mengingat bahwa jika sebuah kata terdiri dari dua kanji, terkadang kanji pertama memiliki hubungan posesif dengan kanji kedua. Dalam hal ini, 王 memiliki 女, menjadikannya gadis raja (hampir seperti "gadis ayah"). Dengan kata lain, sang putri!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Meskipun demikian, bacaan ini mudah tertukar dengan kata-kata serupa lainnya, jadi inilah mnemonik yang dapat membantu Anda:

<vocabulary>putri</vocabulary> bernama <reading>Jo</reading>-Ann Jr. (じょ), atau disingkat Jo, dan dia suka membuat orang berkata "Ohh, Jo!" (王女) dengan menyelinap dan menakut-nakuti mereka. Kapan pun Anda memikirkan sang putri sekarang, bayangkan berapa kali orang-orang berteriak, "Ohh, Jo!" padanya.', 'Putri')
    RETURNING id INTO v_2555_putri;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '出る', 'untuk-keluar', 2, 116, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti "keluar", lalu apa bentuk kata kerjanya? Ini <vocabulary>untuk keluar</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda:

Anda ingin <vocabulary>keluar</vocabulary> ruangan tempat Anda berada. Mengapa? Karena memiliki isi <reading>de</reading>ad (で) di dalamnya. Dengan serius. Anda harus keluar sebelum seseorang mencoba menyematkan mayat ini pada Anda. Cepat, pergi sekarang!', 'Untuk Keluar, Untuk Pergi, Untuk menghadiri, Untuk Keluar, Untuk Keluar')
    RETURNING id INTO v_2557_untuk_keluar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '出口', 'keluar', 2, 117, '<kanji>mulut</kanji> tempat Anda <kanji>keluar</kanji> hanyalah sebuah pintu (saya harap), namun cara yang lebih mudah untuk mendeskripsikan kata atau konsep ini adalah dengan menyebutnya <vocabulary>keluar</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Namun 出口 merupakan pengecualian terhadap aturan ini dan menggunakan pembacaan kun''yomi. Tidak ada alasan khusus mengapa hal ini terjadi, tetapi sering kali kata "bagian tubuh" (seperti mulut) mengubah kata menjadi menggunakan bacaan kun''yomi daripada yang on''yomi. Anda sudah mengetahui bacaan kun''yomi untuk 口 (くち) dari mempelajari kosakatanya, namun untuk mengingat bacaan untuk 出 Anda dapat memikirkan hal berikut:

Jika aku keluar dari mulut ini, aku akan berakhir di lautan (kamu ditelan ikan paus) dan aku pasti akan berakhir <read>dea</reading>d (で).

Perlu diingat juga bahwa karena rendaku, くち menjadi ぐち.', 'KELUAR')
    RETURNING id INTO v_2558_keluar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '右', 'arah-benar', 2, 118, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Karena kata ini terdiri dari satu kanji, maka menggunakan bacaan kun''yomi. Anda belum mempelajari bacaan ini, jadi inilah mnemonik untuk membantu Anda:

Lihat ke <vocabulary>kanan</vocabulary>. Ada <reading>saya</reading>di <reading>gee</reading>se (みぎ) di sana. Apa itu daging angsa, Anda bertanya? Mereka adalah angsa yang terbuat dari daging, yang duduk di sebelah kanan Anda, mencoba membuat Anda melakukan hal-hal buruk. Seperti motif setan/malaikat yang Anda lihat di film kartun. Ya, tidak ada apa pun di sebelah kirimu. Dan di sebelah kananmu? Hanya angsa daging. Mengawasimu. Menunggu. Angsa terbuat dari daging. Memberitahumu untuk tidak melakukan hal yang benar.', 'Arah Benar, Benar')
    RETURNING id INTO v_2559_arah_benar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '四', 'empat', 2, 119, 'Kata kosakata ini mempunyai arti yang sama dengan kanji induknya (kanji tunggal biasanya melakukan hal tersebut!), artinya <kosakata>empat</vocabulary>.', 'Jika kosakatanya sendirian seperti ini tanpa okurigana (hiragana yang melekat pada kanji) biasanya menggunakan bacaan kun''yomi-nya. Namun angka merupakan pengecualian, dan gunakan pembacaan on''yomi. Namun, empat dan tujuh sebenarnya menggunakan keduanya. Kami akan melanjutkan dengan pembacaan kun''yomi di sini, dan karena Anda belum mempelajari bacaan ini, berikut adalah mnemonik untuk membantu Anda:

Anda harus menghitung sampai <vocabulary>empat</vocabulary>. Tapi kamu lelah. Satu... dua... tiga... *<reading>YAWN</reading>* ... empat. Itu dia, kamu berhasil. Tapi *menguap* sekarang kamu tidak bisa berhenti menguap. Kamu sangat, sangat mengantuk. Empat adalah angka yang terlalu tinggi untuk dihitung tanpa tertidur.

Omong-omong! Baik bacaan よん maupun し cukup umum, namun karena bacaan on''yomi し terdengar seperti kata untuk "kematian", maka kata ini jarang digunakan. Umumnya ketika Anda hanya menghitung (misalnya, "1, 2, 3, 4..."), Anda akan menggunakan bacaan し. Namun saat Anda menghitung benda atau orang, Anda akan menggunakan よん. Ada pengecualian untuk hal ini, tetapi Anda akan mempelajarinya seiring bertambahnya usia.', 'Empat')
    RETURNING id INTO v_2561_empat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '四月', 'april', 2, 120, '月 dalam bahasa Jepang berarti "bulan" tetapi juga berarti "bulan". Mengapa? Mungkin karena bulan membutuhkan waktu sekitar satu bulan untuk melewati siklusnya. Jadi, apa bulan keempat dalam setahun? Ini petunjuknya, ini sama dengan bulan keempat dalam setahun: <vocabulary>April</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. 月 mempunyai dua bacaan on''yomi, tapi karena ini adalah nama bulan tertentu, maka akan menggunakan bacaan がつ. Berikut ini mnemonik untuk membantu Anda mengingatnya:

Di <vocabulary>April</vocabulary>, kamu biasanya makan <reading>shee</reading>p <reading>nyali</reading> (しがつ). April adalah waktu piknik di bawah bunga sakura di Jepang, dan tidak ada yang lebih Anda sukai selain menggelar selimut piknik dan pergi ke kota dengan semangkuk besar isi perut domba.', 'April')
    RETURNING id INTO v_2562_april;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '左', 'arah-kiri', 2, 121, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Karena kata ini terdiri dari satu kanji, maka menggunakan bacaan kun''yomi. Anda belum mempelajari bacaan ini, jadi inilah mnemonik untuk membantu Anda:

Bayangkan mendengar seseorang di <vocabulary>kiri</vocabulary> Anda berkata, "<reading>Hai Da''ri</reading>!" (ひだり) yang seharusnya menjadi "Hai," atau "Hai Sayang." Anda belok kiri dan tidak ada seorang pun di sana. Anda mendengarnya lagi, "Hai Da''ri!" Terus belok ke kiri sampai Anda menemukan orang yang menyapa Anda.', 'Arah Kiri, Kiri')
    RETURNING id INTO v_2567_arah_kiri;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '本', 'buku', 2, 122, 'Kosa kata ini sama persis dengan kanji induknya, termasuk artinya juga: <vocabulary>book</vocabulary>. Tapi itu tidak mempunyai arti lain, ketika itu hanya 本 saja, itu hanyalah sebuah buku.', 'Pembacaan kata ini sama dengan satu kanji asalnya.', 'Buku')
    RETURNING id INTO v_2569_buku;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '日本', 'jepang', 2, 123, 'Ingat arti sekunder dari 本 menjadi "asal"? Secara teknis itulah <kanji>matahari</kanji> <kanji>asal</kanji> ini. Apakah itu terdengar familier? Jepang dikenal sebagai "negeri matahari terbit", itulah sebabnya artinya <vocabulary>Jepang</vocabulary>!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji.本 dibaca sesuai cara Anda mempelajarinya, tetapi pembacaan 日 merupakan pengecualian di sini, jadi inilah mnemonik untuk membantu Anda:

Anda akhirnya tiba di <vocabulary>Jepang</vocabulary> dan langsung berlutut <reading>berlutut</reading> (に). Setelah dua penerbangan yang sangat panjang, Anda akhirnya berhasil. Anda di sini. Ini Jepang. Sekarang bangkitlah, orang-orang mulai menatap.', 'Jepang')
    RETURNING id INTO v_2570_jepang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '正しい', 'benar', 2, 124, 'Diakhiri dengan い memberitahu Anda bahwa kata ini adalah kata sifat い. Jadi, karena Anda tahu bahwa kanji <kanji>正</kanji> berarti "<kanji>benar</kanji>", apa versi kata sifatnya dari kata tersebut? Ya, itu juga <vocabulary>benar</vocabulary>.', 'Kata ini menggunakan bacaan yang tidak Anda pelajari dari kanji. Anda harus mengingat bagian ただ untuk membaca kata ini, jadi pikirkan seperti ini:

Setelah kamu mendapatkan jawaban <vocabulary>benar</vocabulary> tiba-tiba ada badut yang melompat keluar sambil berteriak "<reading>Ta-da</reading> (ただ)!!!" Bayangkan hal itu juga membuat Anda takut.', 'Benar, BENAR, Benar')
    RETURNING id INTO v_2571_benar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '正す', 'untuk-memperbaiki', 2, 125, 'Kata ini terdiri dari kanji dengan beberapa hiragana yang dilampirkan, diakhiri dengan bunyi う. Artinya, kata tersebut merupakan kata kerja. Kanji itu sendiri artinya "benar", lalu apa bentuk kata kerjanya? Ini akan menjadi <vocabulary>untuk mengoreksi</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Setelah Anda mengoreksi sesuatu untuk seseorang, Anda berteriak <reading>ta-da</reading> (ただ) dengan sangat bersemangat. Silakan bayangkan diri Anda melakukan ini beberapa kali untuk membantu Anda mengingat.', 'Untuk Memperbaiki')
    RETURNING id INTO v_2572_untuk_memperbaiki;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '玉', 'bola', 2, 126, 'Sebagai kosakata kanji tunggal, Anda pasti tahu bahwa kata kosakata ini memiliki arti yang sama dengan kanji induknya: <vocabulary>ball</vocabulary>.

玉 dapat digunakan untuk benda bulat yang secara tradisional dikenal dalam budaya Jepang, seperti manik-manik, kelereng, mutiara, bola salju, dan bola pachinko. Untuk bola yang digunakan dalam olahraga, orang biasanya menggunakan kata katakana ボール.', 'Kata ini menggunakan bacaan yang sama dengan yang Anda pelajari dengan kanji: <reading>たま</reading>.', 'Bola')
    RETURNING id INTO v_2573_bola;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '玉ねぎ', 'bawang-bombai', 2, 127, 'ねぎ berarti "bawang" dalam bahasa Jepang. Tapi, jenis bawangnya berbeda-beda kan? Ini kebetulan adalah "bola bawang", yang merupakan salah satu bawang bulat, seperti <vocabulary>Bawang</vocabulary> Walla Walla Sweet. Tahukah kamu?', 'Karena kata ini terdiri dari kanji yang dibubuhi hiragana, bisa ditebak kemungkinan besar akan menggunakan bacaan kun''yomi. Untungnya, itu adalah bacaan yang Anda pelajari dengan satu-satunya kanji di kata ini, jadi Anda harus bisa membacanya!', 'Bawang bombai')
    RETURNING id INTO v_2575_bawang_bombai;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '田', 'sawah', 2, 128, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.
Ingatlah bahwa dibandingkan dengan 田んぼ, yang Anda pelajari sebelumnya, kata ini lebih formal dan tidak terlalu bersifat sehari-hari.', 'Karena kata ini terdiri dari satu kanji, maka sebaiknya menggunakan bacaan kun''yomi. Saat kamu mempelajari kanji yang menyusun kata ini, yang kamu pelajari hanyalah pembacaan kun''yomi, jadi sebaiknya kamu mulai saja.', 'Sawah, Sawah')
    RETURNING id INTO v_2580_sawah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '白', 'putih', 2, 129, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Karena kata ini terdiri dari satu kanji, maka sebaiknya menggunakan bacaan kun''yomi. Saat mempelajari kanji, Anda tidak mempelajari bacaan tersebut, jadi inilah mnemonik untuk membantu Anda dengan kata ini:

<vocabulary>Putih</vocabulary> mengelilingi Anda. Jumlah <read>sedikit</reading> (しろ) warna putihnya sangat banyak.', 'Putih')
    RETURNING id INTO v_2581_putih;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '白人', 'orang-kulit-putih', 2, 130, 'Kata ini menggunakan <kanji>orang kulit putih</kanji> dan <kanji>orang</kanji> ... gabungkan keduanya dan Anda akan mendapatkan <vocabulary>orang kulit putih</vocabulary>, alias orang <vocabulary>caucasian</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Karena 人 memiliki dua bacaan on''yomi, berikut adalah mnemonik untuk membantu Anda mengingat mana yang harus digunakan:

Bayangkan <vocabulary>orang berkulit putih</vocabulary> yang Anda kenal baik mengenakan celana <reading>hack</reading>ed up <reading>jean</reading> (はくじん) favoritnya. Orang ini suka memakai jeans yang banyak robekan dan lubangnya. Sekarang bayangkan mereka hanya mengenakan celana jins yang sudah dipotong. Pemandangan yang luar biasa!', 'Orang Kulit Putih, Kaukasia')
    RETURNING id INTO v_2582_orang_kulit_putih;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '目', 'mata', 2, 131, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan yang kamu pelajari untuk kanji, artinya kamu harusnya sudah mengetahuinya!', 'Mata')
    RETURNING id INTO v_2583_mata;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '目玉', 'bola-mata', 2, 132, 'Apa itu <kanji>mata</kanji> <kanji>bola</kanji>? Oh tunggu, itu mudah. Ini adalah <vocabulary>bola mata</vocabulary>!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Namun <vocabulary>目玉</vocabulary> merupakan pengecualian. Mungkin karena di dalamnya terdapat bagian tubuh (mata) yang seringkali membuat sebuah kata beralih ke bacaan kun''yomi. Apapun itu, itu tidak terlalu menjadi masalah. Kedua bacaan yang kamu pelajari untuk kanji pada kata ini adalah kun''yomi, artinya kamu harus tahu cara membaca yang ini. Pastikan Anda memperhatikan rendaku.', 'Bola mata')
    RETURNING id INTO v_2584_bola_mata;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '立つ', 'untuk-berdiri', 2, 133, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri artinya "berdiri", lalu apa versi kata kerjanya? Itu adalah <vocabulary>berdiri</vocabulary>.', 'Anda harus mengingat bagian た dari kata ini untuk mempelajari cara membacanya. Pikirkan seperti ini:

Anda harus <vocabulary>berdiri</vocabulary> untuk melambaikan tangan kepada seseorang. Saat Anda berdiri, ucapkan juga <reading>ta</reading>-ta (た)!', 'Untuk Berdiri, Untuk Berdiri, Untuk Bangkit')
    RETURNING id INTO v_2586_untuk_berdiri;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '二日', 'hari-kedua', 2, 134, '<vocabulary>Hari kedua</vocabulary> atau <vocabulary>hari kedua</vocabulary>. Tidak peduli bagaimana Anda melihat kombinasi kanji ini, arti kata tersebut sangat masuk akal!', 'Kata-kata yang menghitung hari menggunakan bacaan yang luar biasa. Meskipun ini adalah kata jukugo, namun menggunakan pembacaan kun''yomi untuk kedua kanjinya. Pikirkan tentang kata ini seperti ini:

Sirkus ada di kota akhir pekan ini dan Anda tidak sabar untuk sampai ke sana. Anda ingin memamerkan <reading>kaki mobil</reading> (ふつか) baru Anda kepada semua badut sirkus. Namun Anda harus menggunakan kaki Anda untuk mencapainya dan hal itu akan memakan waktu <vocabulary>dua hari</vocabulary>! Sialan mobil kuno ini!', 'Hari Kedua, Hari Kedua, Dua Hari')
    RETURNING id INTO v_7515_hari_kedua;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '人々', 'rakyat', 2, 135, '<kanji>Orang</kanji> <kanji>orang</kanji>, wah, itu lebih dari satu orang. Itu adalah <vocabulary>orang</vocabulary>!', 'Pembacaannya adalah kosakata 人 dua kali, yang kedua diberi rendaku, diubah menjadi びと.', 'Rakyat')
    RETURNING id INTO v_7517_rakyat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '一日', 'satu-hari', 2, 136, 'Kata ini mempunyai dua arti yang berbeda. <vocabulary>Satu hari</vocabulary> dan <vocabulary>hari pertama</vocabulary>. Tidak peduli bagaimana Anda melihat kata ini, maknanya sangat masuk akal.', 'Arti yang pertama adalah <vocabulary>suatu hari</vocabulary>, dan bacaannya sama dengan kanji yang kamu pelajari, jadi kamu pasti sudah mengetahui bacaan ini.

Namun, pembacaan untuk "hari pertama" adalah pengecualian besar. Tidak memerlukan bacaan on''yomi atau kun''yomi, dan mempunyai bacaan khusus (aneh). Berikut ini mnemonik untuk membantu Anda mengingat yang satu ini:

Pada <vocabulary>hari pertama</vocabulary> sebuah hubungan baru, Anda cukup <reading>men-tweet kalimat chee</reading>sy (ついたち) satu sama lain. Kamu begitu jatuh cinta sehingga kamu tidak dapat berbicara dengan normal, jadi kamu hanya menggunakan panggilan burung dan kalimat murahan untuk berkomunikasi.', 'Satu hari, Hari Pertama, Hari Pertama')
    RETURNING id INTO v_7561_satu_hari;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '七日', 'hari-ketujuh', 2, 137, '<vocabulary>Hari ketujuh</vocabulary> atau <vocabulary>hari ketujuh</vocabulary>. Tidak peduli bagaimana Anda melihatnya, kata ini sangat masuk akal.', 'Kata-kata yang menghitung hari menggunakan bacaan yang luar biasa. Meskipun ini adalah kata jukugo, namun menggunakan pembacaan kun''yomi untuk kedua kanjinya. Pikirkan tentang kata ini seperti ini:

Anda terjebak dalam pekerjaan selama <vocabulary>tujuh hari</vocabulary> dan hari ini Anda akhirnya mendapat hari libur. Temanmu bertanya apakah kamu ingin pergi jalan-jalan tapi kamu berkata, "<reading>Tidak, tidak ada mobil</reading> hari ini" (なのか), karena kamu sudah terkurung cukup lama. Tujuh hari terlalu lama untuk berada di dalam.', 'Hari Ketujuh, Hari Ketujuh, Tujuh Hari')
    RETURNING id INTO v_7562_hari_ketujuh;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '三日', 'hari-ketiga', 2, 138, '<vocabulary>Hari ketiga</vocabulary> atau <vocabulary>hari ketiga</vocabulary>. Tidak peduli bagaimana Anda melihatnya, kata ini sangat masuk akal.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Namun, menghitung hari merupakan pengecualian (setidaknya hingga sepuluh). Anda perlu menggunakan bacaan kun''yomi untuk membaca kata ini. Anda sudah mengetahui bacaan kun''yomi untuk 三 sejak Anda mempelajari kata 三つ. Berikut cara mengingat bacaan 日:

Pada <vocabulary>hari ketiga</vocabulary> kamu harus mengantar <reading>saya</reading> (み) dengan <reading>mobil</reading> (か). Aku tidak punya mobil sendiri, jadi jangan lupakan aku, oke?', 'Hari Ketiga, Hari Ketiga, Tiga Hari')
    RETURNING id INTO v_7563_hari_ketiga;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '九日', 'hari-kesembilan', 2, 139, '<vocabulary>hari kesembilan</vocabulary> atau <vocabulary>hari kesembilan</vocabulary>. Tidak peduli bagaimana Anda melihatnya, kata ini sangat masuk akal.', 'Kata-kata yang menghitung hari menggunakan bacaan yang luar biasa. Meskipun ini adalah kata jukugo, namun menggunakan pembacaan kun''yomi untuk kedua kanjinya. Kamu mempelajari bacaan ini untuk 九 ketika kamu mempelajari 九つ, jadi kamu seharusnya bisa membaca yang ini juga!', 'Hari Kesembilan, Sembilan Hari, Hari Kesembilan')
    RETURNING id INTO v_7614_hari_kesembilan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '八日', 'hari-kedelapan', 2, 140, '<vocabulary>Hari kedelapan</vocabulary> atau <vocabulary>hari kedelapan</vocabulary>. Tidak peduli bagaimana Anda melihatnya, kata ini sangat masuk akal.', 'Kata-kata yang menghitung hari menggunakan bacaan yang luar biasa. Meskipun ini adalah kata jukugo, namun menggunakan pembacaan kun''yomi untuk kedua kanjinya. Pikirkan tentang kata ini seperti ini:

Setiap <vocabulary>hari kedelapan</vocabulary> Anda harus membeli <reading>yo</reading>gurt untuk bahan bakar <reading>ca</reading>r (ようか) Anda. Mobil Anda menggunakan yogurt, namun perlu diisi ulang setiap <vocabulary>delapan hari</vocabulary> agar tetap dapat berjalan. Sungguh merepotkan karena hanya SATU hari lebih dari seminggu. Dan seminggu terasa lebih baik. Oh baiklah.', 'Hari Kedelapan, Delapan Hari, Hari Kedelapan')
    RETURNING id INTO v_7615_hari_kedelapan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '十日', 'hari-kesepuluh', 2, 141, '<vocabulary>Hari kesepuluh</vocabulary> atau <vocabulary>hari sepuluh</vocabulary>. Tidak peduli bagaimana Anda melihatnya, kata ini sangat masuk akal.', 'Kata-kata yang menghitung hari menggunakan bacaan yang luar biasa. Meskipun ini kata jukugo, namun sebenarnya menggunakan bacaan kun''yomi. Pikirkan tentang kata ini seperti ini:

Ini menandai <vocabulary>hari kesepuluh</vocabulary> sejak <reading>pembicara</reading> (とおか) ini mulai berbicara tanpa henti. Pembicara suka berbicara, tapi yang satu ini menjadi sangat tak tertahankan… Sepuluh hari berbicara, percayakah Anda?

Perhatikan bahwa とお, umumnya diucapkan "toh" dengan bunyi "o" yang panjang, bukanlah ejaan yang umum, dan Anda hanya akan melihatnya dengan sedikit kanji dan kosa kata, seperti dalam kasus ini. Maksud saya, seberapa sering Anda bertemu dengan pembicara yang bisa berbicara tanpa henti selama sepuluh hari? Itu sangat jarang, bukan?', 'Hari Kesepuluh, Sepuluh Hari, Hari Kesepuluh')
    RETURNING id INTO v_7616_hari_kesepuluh;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '大いに', 'sangat', 2, 142, 'Kata-kata ini adalah tentang melakukan sesuatu dengan cara <kanji>besar</kanji>. Partikel に di akhir memberi tahu kita bahwa ini adalah kata keterangan, yang berarti menjelaskan <i>bagaimana</i> suatu tindakan dilakukan. Ini bisa berarti <vocabulary>sangat</vocabulary>, <vocabulary>banyak</vocabulary>, atau <vocabulary>sangat</vocabulary>, bergantung pada konteksnya.', 'Anda mempelajari bacaan ini ketika Anda mempelajari 大きい. Jika Anda bisa mengingatnya, Anda juga harus bisa mengingat yang ini!', 'Sangat, Banyak, Sangat, Banyak, Sangat banyak')
    RETURNING id INTO v_7668_sangat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '水中', 'di-bawah-air', 2, 143, 'Jika Anda berada di <kanji>tengah</kanji> sekumpulan <kanji>air</kanji>, kemungkinan besar Anda berada <vocabulary>di bawah air</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Di bawah air')
    RETURNING id INTO v_7728_di_bawah_air;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '左右', 'kiri-dan-kanan', 2, 144, 'Gabungkan <kanji>kiri</kanji> dan <kanji>kanan</kanji> dan Anda akan mendapatkan <vocabulary>kiri dan kanan</vocabulary>! Pastikan Anda mengucapkannya dalam urutan yang benar!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Kiri Dan Kanan, Kedua Cara, Pengaruh, Kontrol')
    RETURNING id INTO v_8693_kiri_dan_kanan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '入力', 'masukan', 2, 145, '<kanji>Masukkan</kanji> sesuatu dengan seluruh <kanji>kekuatan</kanji> Anda dan Anda akan melihat ke bawah untuk melihat bahwa yang Anda lakukan adalah <vocabulary>memasukkan</vocabulary>data. Anda sedang memasukkannya sekarang! Ke situs ini! Jawaban yang Anda <vocabulary>masukkan</vocabulary> ke dalam WaniKani dengan seluruh kekuatan Anda dapat diucapkan dengan kata ini. Wow. Lingkaran penuh sudah, dan Anda baru berada di level 2. Lihat, lanjutkan!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Karena 力 memiliki dua pembacaan on''yomi, berikut adalah mnemonik untuk membantu Anda mengingat mana yang akan digunakan:

Di tempat Anda bekerja, <vocabulary>memasukkan</vocabulary>menghasilkan <reading>baru</reading> <reading>lock</reading> (にゅうりょく) kepada Anda. Pekerjaan Anda tidak hanya sekedar <vocabulary>memasukkan</vocabulary>ing sesuatu ke dalam komputer, Anda juga dibayar secara eksklusif di kunci baru. Mungkin pertimbangkan perubahan karier!', 'Masukan, Memasuki, Pintu masuk')
    RETURNING id INTO v_8733_masukan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '田んぼ', 'sawah', 2, 146, 'Anda tahu bahwa kanji 田 berarti <kanji>sawah</kanji>, jadi mudah untuk mengetahui bahwa kata ini juga berarti <vocabulary>sawah</vocabulary>.

田んぼ adalah cara umum untuk mengatakan "sawah", terutama dalam percakapan santai. Anda bisa mengetahuinya karena jika Anda pernah menemukan sawah ju<reading>mbo</reading> (んぼ), Anda mungkin akan mengatakan sesuatu seperti, "Wah, itu jumbo 田んぼ!" Jika 田んぼ berukuran jumbo, kejutannya akan membuat pidato Anda secara alami lebih santai dan informal.', 'Kata ini memiliki hiragana yang melekat pada kanjinya, yang merupakan pertanda baik bahwa bacaannya adalah kun''yomi. Anda mempelajari bacaan itu ketika Anda mempelajari kanji, jadi Anda sebaiknya melakukannya dengan baik.', 'Sawah')
    RETURNING id INTO v_9167_sawah;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2492_untuk_mendaki, 'Untuk Mendaki', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2492_untuk_mendaki, 'Untuk Naik', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2507_pedang, 'Pedang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2507_pedang, 'Katana', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2508_kotoran, 'Kotoran', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2508_kotoran, 'Tanah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2508_kotoran, 'Bumi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2509_ribu, 'Ribu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2511_tadi_malam, 'Tadi malam', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2511_tadi_malam, 'Malam', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2512_gadis, 'Gadis', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2512_gadis, 'Gadis muda', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2513_anak, 'Anak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2513_anak, 'Anak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2514_gadis, 'Gadis', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2514_gadis, 'Wanita', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2514_gadis, 'Perempuan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2515_kecil, 'Kecil', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2515_kecil, 'Kecil', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2517_lingkaran, 'Lingkaran', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2517_lingkaran, 'Bulat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2517_lingkaran, 'Bundar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2518_bundar, 'Bundar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2518_bundar, 'Bulat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2518_bundar, 'Bulat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2519_bertahun_tahun, 'Bertahun-tahun', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2519_bertahun_tahun, 'Usia', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2520_di_dalam, 'Di dalam', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2520_di_dalam, 'Di dalam', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2521_lebih_tepatnya, 'Lebih tepatnya', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2521_lebih_tepatnya, 'Cukup', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2521_lebih_tepatnya, 'Lumayan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2522_mungkin, 'Mungkin', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2523_hari_kelima, 'Hari Kelima', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2523_hari_kelima, 'Hari Kelima', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2523_hari_kelima, 'Lima Hari', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2524_lima_puluh, 'Lima puluh', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2525_lima_hal, 'Lima Hal', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2526_lima, 'Lima', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2527_enam_hal, 'Enam Hal', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2528_juni, 'Juni', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2529_hari_keenam, 'Hari Keenam', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2529_hari_keenam, 'Hari Keenam', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2529_hari_keenam, 'Enam Hari', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2530_enambelas, 'Enambelas', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2531_enam, 'Enam', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2532_yen, 'Yen', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2532_yen, 'Yen Jepang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2533_seribu_yen, 'Seribu Yen', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2533_seribu_yen, 'Seribu Yen', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2533_seribu_yen, 'Seribu Yen', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2535_surga, 'Surga', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2535_surga, 'Cakrawala', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2536_jenius, 'Jenius', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2537_tangan, 'Tangan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2537_tangan, 'Lengan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2538_tidak_terampil, 'Tidak terampil', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2538_tidak_terampil, 'Tidak terampil', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2538_tidak_terampil, 'Buruk Di', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2539_baik_dalam, 'Baik Dalam', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2539_baik_dalam, 'Mahir', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2539_baik_dalam, 'Terampil Di', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2539_baik_dalam, 'Terampil', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2540_menulis, 'Menulis', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2540_menulis, 'Kalimat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2541_matahari, 'Matahari', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2541_matahari, 'Hari', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2542_bulan, 'Bulan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2542_bulan, 'Bulan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2543_oktober, 'Oktober', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2544_januari, 'Januari', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2545_februari, 'Februari', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2546_pohon, 'Pohon', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2546_pohon, 'Kayu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2547_air, 'Air', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2548_api, 'Api', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2549_gunung_berapi, 'Gunung berapi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2550_anjing, 'Anjing', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2551_anak_anjing, 'Anak anjing', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2552_raja, 'Raja', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2553_pangeran, 'Pangeran', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2554_ratu, 'Ratu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2555_putri, 'Putri', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2557_untuk_keluar, 'Untuk Keluar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2557_untuk_keluar, 'Untuk Pergi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2557_untuk_keluar, 'Untuk menghadiri', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2557_untuk_keluar, 'Untuk Keluar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2557_untuk_keluar, 'Untuk Keluar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2558_keluar, 'KELUAR', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2559_arah_benar, 'Arah Benar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2559_arah_benar, 'Benar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2561_empat, 'Empat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2562_april, 'April', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2567_arah_kiri, 'Arah Kiri', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2567_arah_kiri, 'Kiri', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2569_buku, 'Buku', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2570_jepang, 'Jepang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2571_benar, 'Benar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2571_benar, 'BENAR', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2571_benar, 'Benar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2572_untuk_memperbaiki, 'Untuk Memperbaiki', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2573_bola, 'Bola', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2575_bawang_bombai, 'Bawang bombai', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2580_sawah, 'Sawah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2580_sawah, 'Sawah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2581_putih, 'Putih', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2582_orang_kulit_putih, 'Orang Kulit Putih', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2582_orang_kulit_putih, 'Kaukasia', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2583_mata, 'Mata', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2584_bola_mata, 'Bola mata', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2586_untuk_berdiri, 'Untuk Berdiri', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2586_untuk_berdiri, 'Untuk Berdiri', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2586_untuk_berdiri, 'Untuk Bangkit', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7515_hari_kedua, 'Hari Kedua', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7515_hari_kedua, 'Hari Kedua', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7515_hari_kedua, 'Dua Hari', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7517_rakyat, 'Rakyat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7561_satu_hari, 'Satu hari', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7561_satu_hari, 'Hari Pertama', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7561_satu_hari, 'Hari Pertama', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7562_hari_ketujuh, 'Hari Ketujuh', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7562_hari_ketujuh, 'Hari Ketujuh', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7562_hari_ketujuh, 'Tujuh Hari', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7563_hari_ketiga, 'Hari Ketiga', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7563_hari_ketiga, 'Hari Ketiga', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7563_hari_ketiga, 'Tiga Hari', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7614_hari_kesembilan, 'Hari Kesembilan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7614_hari_kesembilan, 'Sembilan Hari', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7614_hari_kesembilan, 'Hari Kesembilan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7615_hari_kedelapan, 'Hari Kedelapan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7615_hari_kedelapan, 'Delapan Hari', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7615_hari_kedelapan, 'Hari Kedelapan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7616_hari_kesepuluh, 'Hari Kesepuluh', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7616_hari_kesepuluh, 'Sepuluh Hari', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7616_hari_kesepuluh, 'Hari Kesepuluh', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7668_sangat, 'Sangat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7668_sangat, 'Banyak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7668_sangat, 'Sangat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7668_sangat, 'Banyak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7668_sangat, 'Sangat banyak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7728_di_bawah_air, 'Di bawah air', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8693_kiri_dan_kanan, 'Kiri Dan Kanan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8693_kiri_dan_kanan, 'Kedua Cara', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8693_kiri_dan_kanan, 'Pengaruh', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8693_kiri_dan_kanan, 'Kontrol', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8733_masukan, 'Masukan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8733_masukan, 'Memasuki', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8733_masukan, 'Pintu masuk', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9167_sawah, 'Sawah', true, true);

  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2492_untuk_mendaki, 'のぼる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2507_pedang, 'かたな', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2508_kotoran, 'つち', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2509_ribu, 'せん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2511_tadi_malam, 'ゆうべ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2512_gadis, 'おんなのこ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2513_anak, 'こ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2514_gadis, 'じょし', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2515_kecil, 'ちいさい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2517_lingkaran, 'まる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2518_bundar, 'まるい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2519_bertahun_tahun, 'さい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2520_di_dalam, 'なか', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2521_lebih_tepatnya, 'なかなか', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2522_mungkin, 'ごがつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2523_hari_kelima, 'いつか', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2524_lima_puluh, 'ごじゅう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2525_lima_hal, 'いつつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2526_lima, 'ご', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2527_enam_hal, 'むっつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2528_juni, 'ろくがつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2529_hari_keenam, 'むいか', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2530_enambelas, 'じゅうろく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2531_enam, 'ろく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2532_yen, 'えん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2533_seribu_yen, 'せんえん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2535_surga, 'てん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2536_jenius, 'てんさい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2537_tangan, 'て', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2538_tidak_terampil, 'へた', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2539_baik_dalam, 'じょうず', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2540_menulis, 'ぶん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2541_matahari, 'ひ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2542_bulan, 'つき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2543_oktober, 'じゅうがつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2544_januari, 'いちがつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2545_februari, 'にがつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2546_pohon, 'き', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2547_air, 'みず', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2548_api, 'ひ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2549_gunung_berapi, 'かざん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2550_anjing, 'いぬ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2551_anak_anjing, 'こいぬ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2552_raja, 'おう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2553_pangeran, 'おうじ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2554_ratu, 'じょおう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2555_putri, 'おうじょ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2557_untuk_keluar, 'でる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2558_keluar, 'でぐち', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2559_arah_benar, 'みぎ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2561_empat, 'よん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2561_empat, 'し', NULL, false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2562_april, 'しがつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2567_arah_kiri, 'ひだり', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2569_buku, 'ほん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2570_jepang, 'にほん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2570_jepang, 'にっぽん', NULL, false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2571_benar, 'ただしい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2572_untuk_memperbaiki, 'ただす', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2573_bola, 'たま', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2575_bawang_bombai, 'たまねぎ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2580_sawah, 'た', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2581_putih, 'しろ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2582_orang_kulit_putih, 'はくじん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2583_mata, 'め', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2584_bola_mata, 'めだま', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2586_untuk_berdiri, 'たつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7515_hari_kedua, 'ふつか', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7517_rakyat, 'ひとびと', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7561_satu_hari, 'いちにち', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7561_satu_hari, 'ついたち', NULL, false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7562_hari_ketujuh, 'なのか', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7563_hari_ketiga, 'みっか', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7614_hari_kesembilan, 'ここのか', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7615_hari_kedelapan, 'ようか', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7616_hari_kesepuluh, 'とおか', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7668_sangat, 'おおいに', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7728_di_bawah_air, 'すいちゅう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8693_kiri_dan_kanan, 'さゆう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8733_masukan, 'にゅうりょく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9167_sawah, 'たんぼ', NULL, true, true);

  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2492_untuk_mendaki, 'ルームメイトはロフトに上る。', 'Teman sekamarku naik ke loteng.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2492_untuk_mendaki, 'エレベーターの「上る」ボタンは、ここです。', 'Tombol "naik" untuk lift ada di sini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2492_untuk_mendaki, 'サケが川を上っているのをみた。', 'Saya melihat salmon berenang di hulu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2507_pedang, 'いきなりサムライが刀を上げた。', 'Samurai itu tiba-tiba mengangkat pedangnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2507_pedang, '日本で刀をかいたいんです。', 'Saya ingin membeli pedang di Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2507_pedang, 'この小さい刀、かわいくない？', 'Bukankah pedang kecil ini lucu sekali?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2508_kotoran, 'そのトマト、土がついてるよ。', 'Tomat itu ada kotorannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2508_kotoran, 'これはふじ山の土なんだよ。', 'Ini adalah tanah dari Gunung Fuji.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2508_kotoran, 'モグラが土に入っていった。', 'Tahi lalat itu masuk ke dalam tanah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2509_ribu, '一リットルとは、千ミリリットルのことだ。', 'Satu liter sama dengan seribu mililiter.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2509_ribu, 'そのフランス人は、千に一人の天才です。', 'Orang Prancis itu adalah satu dari seribu orang jenius.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2509_ribu, '千日くらいかかりますね。', 'Dibutuhkan sekitar 1.000 hari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2511_tadi_malam, '夕べ、月をみた。', 'Aku melihat bulan tadi malam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2511_tadi_malam, '夕べのディナーは玉ねぎのカレーでした。', 'Makan malam tadi malam adalah kari bawang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2511_tadi_malam, '五月に「ワインの夕べ」というイベントがあります。', 'Ada acara bernama "Wine Evening" di bulan Mei.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2512_gadis, '白のドレスの女の子がレイチェルです。', 'Gadis berbaju putih itu adalah Rachel.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2512_gadis, 'この女の子は五才の天才プログラマーだ。', 'Gadis ini adalah seorang programmer jenius berusia lima tahun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2512_gadis, 'わたしは女の子じゃない。一人の大人の女。わかった？', 'Saya bukan seorang gadis. Saya seorang wanita dewasa. Mengerti?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2513_anak, 'そのライオンの子はシンバという。', 'Anak singa itu bernama Simba.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2513_anak, 'あなたは、わたしのほんとうの子ではないの。', 'Kamu bukan anak kandungku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2513_anak, 'わたしの子、ビヨンセににているとおもわない？', 'Tidakkah menurut Anda anak saya mirip dengan Beyonce?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2514_gadis, 'そっちは女子トイレですよ。', 'Kamar kecil wanita ada di sana.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2514_gadis, '女子プロレスのチケットをプレゼントした。', 'Saya memberikan tiket gulat profesional wanita sebagai hadiah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2514_gadis, '女子バレーボールのチームキャプテンでした。', 'Saya adalah kapten tim voli putri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2515_kecil, '小さいトマトはおいしいですよね。', 'Tomat kecil enak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2515_kecil, 'このクラスには、まだ小さい子もいれば、大人のように大きい子もいる。', 'Di kelas ini ada anak-anak yang masih kecil, ada pula anak-anak yang sudah setinggi orang dewasa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2515_kecil, 'このドレスは、わたしには小さすぎる。', 'Gaun ini terlalu kecil untukku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2517_lingkaran, 'ここに丸でチェックして下さい。', 'Tolong periksa di sini dengan lingkaran.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2517_lingkaran, '丸をかくのが上手な人がタイプです。', 'Tipeku adalah seseorang yang pandai menggambar lingkaran.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2517_lingkaran, '人はサプライズでプロポーズされると目が丸になるものなんです。', 'Orang-orang akan terbelalak ketika seseorang melamar mereka sebagai kejutan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2518_bundar, '丸いボールがほしい。', 'Saya ingin bola bundar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2518_bundar, 'このレストランには丸いフルーツしかありません。', 'Restoran ini hanya menyajikan buah berbentuk bulat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2518_bundar, 'この玉、ちょっと丸すぎませんか？', 'Bukankah bola ini terlalu bulat?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2519_bertahun_tahun, 'わたしは五才です。', 'Saya berumur lima tahun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2519_bertahun_tahun, 'ファーストキスは十六才のときでした。', 'Ciuman pertamaku adalah saat aku berumur 16 tahun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2519_bertahun_tahun, 'パパの50才のバースデープレゼントは、ポケモンカードの山でした。', 'Hadiah ayah untuk ulang tahunnya yang kelima puluh adalah segunung kartu Pokémon.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2520_di_dalam, 'はやく中に入ろう。', 'Ayo cepat masuk ke dalam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2520_di_dalam, 'このグループの中に、レイチェルはいますか？', 'Apakah Rachel ada di grup ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2520_di_dalam, '川の中からビキニの女が出てきた。', 'Seorang wanita berbikini keluar dari sungai.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2521_lebih_tepatnya, 'このカレー、中々おいしいですね。', 'Kari ini enak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2521_lebih_tepatnya, '一月のテストは中々むずかしかった。', 'Ujian di bulan Januari ini cukup sulit.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2521_lebih_tepatnya, 'このカードは中々レアなので一千ドルぐらいしますよ。', 'Kartu ini langka dan harganya sekitar 1.000 dolar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2522_mungkin, '五月一日にニューヨークへかえりました。', 'Pada tanggal 1 Mei, saya kembali ke New York.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2522_mungkin, '五月にふじ山でプロポーズするつもりなんです。', 'Saya berencana untuk melamar di Gunung Fuji pada bulan Mei.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2522_mungkin, '日本で五月といえばゴールデンウィークです。', 'Bulan Mei di Jepang dikenal dengan "Minggu Emas".');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2523_hari_kelima, 'ミーティングは五日でもだいじょうぶ？', 'Apakah tanggal 5 boleh untuk rapat?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2523_hari_kelima, 'イベントまであと五日。', 'Masih ada lima hari lagi menuju acara tersebut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2523_hari_kelima, 'ああ、あの女の子？デートして五日でフラれたよ。', 'Oh, gadis itu? Aku dicampakkan lima hari setelah kami berkencan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2524_lima_puluh, '五十メートルしかウォーキングしなかった。', 'Saya hanya berjalan lima puluh meter.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2524_lima_puluh, 'ママは八日に五十になった。', 'Ibu berusia lima puluh pada tanggal 8.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2524_lima_puluh, 'ポートランドの白人人口は五十パーセントよりも上なんです。', 'Populasi Kaukasia di Portland lebih dari 50%.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2525_lima_hal, 'バレンタインデーにチョコレートを五つもらった。', 'Saya mendapat lima coklat di Hari Valentine.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2525_lima_hal, '五つのグループにわかれましょう。', 'Mari kita bagi menjadi lima kelompok.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2525_lima_hal, '一日で目玉を五つもあつめるなんてムリですよ。', 'Tidak mungkin mengumpulkan lima bola mata dalam satu hari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2526_lima, 'このスマホのスクリーンの大きさは五インチです。', 'Ukuran layar smartphone ini lima inci.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2526_lima, '五フロアのうちの一フロアはカフェテリアです。', 'Salah satu dari lima lantai adalah kafetaria.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2526_lima, '五ゲームおわって、やっとファーストスコアが入った。', 'Setelah lima pertandingan, akhirnya ada skor pertama.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2527_enam_hal, 'スプーンが六つあります。', 'Ada enam sendok.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2527_enam_hal, 'ミーティングルームには、テーブルが一つと、オフィスチェアが六つあります。', 'Ruang rapat memiliki satu meja dan enam kursi kantor.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2527_enam_hal, 'ワイングラスは六つオーダーしておいたよ。', 'Saya memesan enam gelas anggur.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2528_juni, '六月にアメリカにいきました。', 'Saya pergi ke Amerika Serikat pada bulan Juni.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2528_juni, '六月はウェディングシーズンです。', 'Juni adalah musim pernikahan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2528_juni, 'もうすぐ六月に入りますね。', 'Kita akan segera memasuki bulan Juni.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2529_hari_keenam, 'あなたは四月六日に、どこにいましたか？', 'Dimana kamu pada tanggal 6 April?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2529_hari_keenam, '十日のバケーションのうち六日はずっとゲームをしてました。', 'Saya menghabiskan enam hari dari sepuluh hari liburan saya dengan bermain video game.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2529_hari_keenam, '六日ごとにサウナに入ってます。', 'Saya melakukan sauna setiap enam hari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2530_enambelas, 'ラーメンが十六ドルもしたよ。', 'Ramennya 16 dolar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2530_enambelas, '十六になったばかりです。', 'Aku baru saja berumur enam belas tahun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2530_enambelas, '十六メートル上にドローンがいる。', 'Ada drone enam belas meter di atas kepala.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2531_enam, 'わたしのソーシャルセキュリティナンバーには六がたくさんあります。', 'Ada banyak angka enam di nomor jaminan sosial saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2531_enam, 'このレストランには六タイプのソースがあります。', 'Restoran ini memiliki enam jenis saus.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2531_enam, 'なんで六メートルの大きなソファがいるんですか？', 'Mengapa Anda membutuhkan sofa raksasa berukuran enam meter?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2532_yen, 'このドレスは五千円でした。', 'Gaun ini berharga 5.000 yen.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2532_yen, 'こちら二つで千円になります。', 'Harganya 1.000 yen untuk dua di antaranya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2532_yen, 'このレートだと、五ドルは８００円くらいですね。', 'Pada tingkat ini, lima dolar adalah sekitar 800 yen.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2533_seribu_yen, 'このスカートは、千円です。', 'Rok ini 1000 yen.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2533_seribu_yen, '千円のランチセットにはデザートがついてますか？', 'Apakah paket makan siang seribu yen sudah termasuk hidangan penutup?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2533_seribu_yen, 'テニスにかかるコストは月に千円です。', 'Biaya tenis adalah 1.000 yen sebulan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2535_surga, 'きっと天にいるママからのメッセージだよ。', 'Itu mungkin pesan dari Ibu di surga.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2535_surga, 'きっと天には、たくさんの人がいるんでしょう。', 'Mungkin ada banyak orang di surga.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2535_surga, 'あの犬、きっと天のつかいだったんだ。', 'Anjing itu pastilah utusan surgawi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2536_jenius, 'あの女の子は天才だ。', 'Gadis itu jenius.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2536_jenius, 'いつか天才テニスプレイヤーとよばれたいです。', 'Saya ingin disebut pemain tenis jenius suatu hari nanti.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2536_jenius, 'そのゴリラは、まぎれもなく天才だ。', 'Gorila itu benar-benar jenius.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2537_tangan, '王は手を上げて「おはよう！」といった。', 'Raja mengangkat tangannya dan berkata, "Selamat pagi!"');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2537_tangan, '手をつないでもいい？', 'Bolehkah aku memegang tanganmu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2537_tangan, 'パパの手はモジャモジャだ。', 'Lengan Ayah berbulu lebat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2538_tidak_terampil, 'ギターは下手ですが、ピアノは中々上手ですよ。', 'Aku bukan yang terbaik dalam bermain gitar, tapi aku cukup pandai bermain piano.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2538_tidak_terampil, '下手なマッサージより、スパにいきたいよ。', 'Saya ingin pergi ke spa daripada mendapatkan pijatan yang buruk.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2538_tidak_terampil, 'わたし、バナナグラムが下手な人とはデートにいけないの。ごめんなさい。', 'Saya tidak bisa berkencan dengan seseorang yang tidak pandai Bananagrams. Saya minta maaf.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2539_baik_dalam, 'ジェニーさん、スキーが上手ですね。', 'Jenny, kamu pandai bermain ski.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2539_baik_dalam, 'キアヌ・リーブスのモノマネが上手な人、いませんか？', 'Adakah orang di sini yang bisa memberikan kesan baik pada Keanu Reeves?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2539_baik_dalam, '「はじめまして。」「はじめまして。にほんご上手ですね！」 ', '"Senang berkenalan dengan Anda." "Senang bertemu denganmu. Bahasa Jepangmu bagus!"');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2540_menulis, '文をかくのが上手ですね。', 'Kamu hebat dalam menulis.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2540_menulis, 'データや文を入力します。', 'Saya memasukkan data dan kalimat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2540_menulis, 'さいきんはAIのほうが人々よりも上手な文をかく。', 'AI menulis kalimat lebih baik daripada manusia saat ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2541_matahari, 'そろそろ日が出ますよ。', 'Matahari akan segera terbit.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2541_matahari, '子犬がくる日は三日です。', 'Tanggal kedatangan anak anjing adalah tanggal 3.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2541_matahari, '日本にきた日にパスポートをなくした。', 'Saya kehilangan paspor saya pada hari saya datang ke Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2542_bulan, '夕べは月がきれいでしたね。', 'Bulan tampak indah tadi malam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2542_bulan, 'その月は、日本にいないんです。ごめんなさい。', 'Saya tidak akan berada di Jepang bulan itu. Maaf.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2542_bulan, 'この山の上からみる月は、きれいです。', 'Bulan yang Anda lihat dari puncak gunung ini sungguh indah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2543_oktober, '十月に五十才になります。', 'Saya akan berusia lima puluh tahun pada bulan Oktober.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2543_oktober, '十月のシイタケはおいしいですよ。', 'Jamur shiitake di bulan Oktober enak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2543_oktober, '十月なのにまだビキニ！？', 'Masih mengenakan bikini di bulan Oktober!?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2544_januari, 'ウェディングパーティーは一月でした。', 'Resepsi pernikahannya diadakan pada bulan Januari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2544_januari, '一月は、デザイナーとのミーティングがある。', 'Pada bulan Januari, kami mengadakan pertemuan dengan desainer.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2544_januari, '一月には、このホテルを出て行くことにしたよ。', 'Saya memutuskan untuk meninggalkan hotel ini pada bulan Januari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2545_februari, 'バレンタインデーは二月だよ。', 'Hari Valentine jatuh pada bulan Februari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2545_februari, '日本の二月は中々さむいですよ。', 'Bulan Februari di Jepang cukup dingin.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2545_februari, '二月はコートとジャケットのセールがたくさんあります。', 'Banyak sekali penjualan jas dan jaket di bulan Februari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2546_pohon, 'これはサクラの木ですか？', 'Apakah ini pohon ceri?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2546_pohon, 'このテーブルは木で、できてます。', 'Meja ini terbuat dari kayu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2546_pohon, 'あの木の上にツリーハウスをつくりたい。', 'Saya ingin membangun rumah pohon di atas pohon di sana.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2547_air, '水かジュースをもらえますか。', 'Bisakah saya mendapatkan air atau jus?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2547_air, '川の水はきれいなエメラルドグリーンだった。', 'Air sungainya berwarna hijau zamrud yang indah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2547_air, 'ふつうの水じゃなくて、ふじ山の水をもらえますか？', 'Bolehkah saya mendapatkan air dari Gunung Fuji sebagai pengganti air biasa?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2548_api, 'キャンドルに火をつけた。', 'Saya menyalakan lilin.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2548_api, '火がきえるのに五日かかりました。', 'Butuh waktu lima hari untuk memadamkan api.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2548_api, 'ストーブの火をつけるのが上手ですね。', 'Anda pandai menyalakan kompor.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2549_gunung_berapi, 'ふじ山は、火山です。', 'Gunung Fuji adalah gunung berapi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2549_gunung_berapi, '火山の上から火が出ている。', 'Ada api yang keluar dari puncak gunung berapi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2549_gunung_berapi, 'ハワイには火山がたくさんありますよね。', 'Ada banyak gunung berapi di Hawaii.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2550_anjing, 'ぼくのペットは犬です。', 'Hewan peliharaan saya adalah seekor anjing.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2550_anjing, 'この犬は、チワワですか？', 'Apakah anjing ini seekor Chihuahua?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2550_anjing, 'うちの犬、ライオンくらいの大きさなんです。', 'Anjing saya seukuran singa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2551_anak_anjing, '子犬は、かわいい。', 'Anak anjing itu lucu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2551_anak_anjing, '子犬はトレーニングがたいへんです。', 'Anak anjing membutuhkan banyak pekerjaan untuk dilatih.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2551_anak_anjing, '子犬ごっこをしましょうよ。', 'Anggap saja kita anak anjing!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2552_raja, 'わたしが王だ。', 'Saya adalah raja.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2552_raja, '王と女王は力のあるカップルだ。', 'Raja dan ratu adalah pasangan yang kuat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2552_raja, 'これは王のプライベートジェットですよ。', 'Ini adalah jet pribadi raja.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2553_pangeran, '「おはよう！」と、王子がいった。', '"Selamat pagi!" kata sang pangeran.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2553_pangeran, '王子は小さいころに子犬をかってた。', 'Pangeran mempunyai anak anjing ketika dia masih kecil.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2553_pangeran, 'うちの子は王子にハグしてもらいたい、と天にいのってばかりよ。', 'Anak saya terus-menerus berdoa kepada surga meminta pelukan dari sang pangeran.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2554_ratu, 'それは、女王のネックレスです。', 'Itu adalah kalung ratu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2554_ratu, '女王の本はベストセラーになった。', 'Buku Ratu telah menjadi buku terlaris.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2554_ratu, 'エリザベス女王とは、五十年もペンパルでした。', 'Saya adalah sahabat pena Ratu Elizabeth selama lima puluh tahun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2555_putri, '王女はいつでも正しい。', 'Sang putri selalu benar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2555_putri, '王女はビンゴがすきです。', 'Sang putri menyukai bingo.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2555_putri, '日本に王女はいますか？', 'Apakah ada seorang putri di Jepang?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2557_untuk_keluar, 'あちらの出口から出てください。', 'Silakan keluar menggunakan pintu keluar itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2557_untuk_keluar, 'くしゃみが出そうで出ない。', 'Sepertinya harus bersin, tapi tidak bisa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2557_untuk_keluar, 'レストランから出よう。', 'Ayo keluar dari restoran.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2558_keluar, 'そこは出口ではありません。', 'Itu bukanlah jalan keluar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2558_keluar, '出口はあちらです。', 'Pintu keluarnya ada di sana.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2558_keluar, 'このトイレ、出口がないよ。', 'Kamar mandi ini tidak memiliki pintu keluar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2559_arah_benar, '右の木は水をあげないで下さい。', 'Tolong jangan menyirami pohon di sebelah kanan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2559_arah_benar, '右下のボタンをクリックしてね。', 'Klik tombol di kanan bawah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2559_arah_benar, '右は、日本の人口のチャートです。', 'Di sebelah kanan Anda adalah grafik yang menunjukkan populasi Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2561_empat, 'トマト四こ下さい。', 'Tolong beri saya empat tomat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2561_empat, 'わたしのインターナショナルスクールには四クラスありました。', 'Ada empat bagian kelas di sekolah internasional saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2561_empat, 'この本の四ページには、小さいメッセージがかいてあります。', 'Ada pesan singkat yang tertulis di halaman keempat buku ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2562_april, '四月一日はエイプリルフールです。', 'Tanggal 1 April adalah Hari April Mop.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2562_april, '四月まで、あと三日だ。', 'Tinggal tiga hari lagi menuju bulan April.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2562_april, '四月は、力いっぱいがんばります。', 'Pada bulan April, saya akan berusaha keras untuk melakukan yang terbaik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2567_arah_kiri, '左目のコンタクトレンズがない。', 'Lensa kontak kiri hilang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2567_arah_kiri, 'わたしは、左ききです。', 'Saya kidal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2567_arah_kiri, '入り口は左のドアですよ。', 'Pintu masuknya adalah pintu di sebelah kiri Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2569_buku, 'この本、下さい。', 'Tolong, buku ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2569_buku, 'この本にはクイズが上手になるためのヒントがかいてある。', 'Buku ini berisi petunjuk tentang cara menjadi lebih baik dalam mengikuti kuis.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2569_buku, 'うちのオーブンには本がたくさん入ってるんです。', 'Oven saya berisi banyak buku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2570_jepang, '日本のカレーはおいしいです。', 'Kari Jepang enak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2570_jepang, '十月に日本にいきます。', 'Saya akan ke Jepang pada bulan Oktober.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2570_jepang, '日本の人口は、どのくらいですか？', 'Berapa jumlah penduduk Jepang?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2571_benar, 'ママはいつも正しい。', 'Ibu selalu benar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2571_benar, 'ぼくが三日にホテルに入ったというのは正しいです。', 'Memang benar saya masuk ke hotel pada tanggal 3.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2571_benar, '入り口の正しい入り方をおしえてあげましょうか？', 'Apakah Anda ingin saya menunjukkan cara memasuki pintu masuk dengan benar?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2572_untuk_memperbaiki, 'タスクはシステムエラーを正すことです。', 'Tugas saya adalah memperbaiki kesalahan sistem.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2572_untuk_memperbaiki, '左右のロゴのポジションを正した。', 'Saya koreksi posisi logo di kiri dan kanan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2572_untuk_memperbaiki, 'あの人はエラーをひたすら正すプログラマーです。', 'Orang itu adalah seorang programmer yang berdedikasi untuk memperbaiki kesalahan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2573_bola, 'なんだ、この玉？', 'Bola apa ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2573_bola, 'ポチは、まるで丸い玉のような犬でした。', 'Pochi adalah seekor anjing yang bentuknya seperti bola bundar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2573_bola, 'この玉を力いっぱいキックして下さい。', 'Tolong tendang bola ini dengan seluruh kekuatanmu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2575_bawang_bombai, 'その丸い玉ねぎ下さい。', 'Tolong beri saya bawang bombay bulat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2575_bawang_bombai, '玉ねぎをきっていたら、なみだが出てきた。', 'Saat saya memotong bawang, saya menangis.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2575_bawang_bombai, '玉ねぎが入ってないカレーはカレーじゃない。', 'Kari tanpa bawang bukanlah kari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2580_sawah, '田にはカエルがたくさんいますよ。', 'Ada banyak katak di sawah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2580_sawah, 'この田はコウイチさんのものです。', 'Sawah ini milik Koichi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2580_sawah, 'プロポーズは田をたがやしてからにしてくれる？', 'Bisakah kamu menyelesaikan membajak sawah sebelum melamarku?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2581_putih, 'わたしのウェディングドレスは白です。', 'Gaun pengantinku berwarna putih.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2581_putih, 'この白はクリームっぽい白ですね。', 'Putih ini berwarna putih krem.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2581_putih, '白とピンクがラッキーカラーなんだって。', 'Putih dan pink rupanya adalah warna keberuntunganku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2582_orang_kulit_putih, '日本で白人のパートナーとくらしてます。', 'Saya tinggal di Jepang dengan pasangan bule.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2582_orang_kulit_putih, 'ママは白人で、パパはアジア人です。', 'Ibuku orang Kaukasia dan ayahku orang Asia.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2582_orang_kulit_putih, '白人はみんなえいごが上手なわけではないよ。', 'Tidak semua orang kulit putih pandai berbahasa Inggris.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2583_mata, 'うちのハスキーは目がブルーです。', 'Mata husky kami berwarna biru.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2583_mata, 'そのとき、犬が目に入った。', 'Pada saat itu, seekor anjing muncul.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2583_mata, '目の下にコンタクトレンズがついてるよ。', 'Ada lensa kontak di bawah matamu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2584_bola_mata, 'サーモンは目玉もおいしいですよ。', 'Bola mata salmonnya juga enak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2584_bola_mata, 'びっくりして目玉が出るかとおもった。', 'Saya sangat terkejut hingga saya pikir bola mata saya akan keluar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2584_bola_mata, 'セールの目玉はトマトです。', 'Yang paling menarik dari penjualannya adalah tomat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2586_untuk_berdiri, 'ソファから立つのが下手なんです。', 'Aku tidak pandai bangun dari sofa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2586_untuk_berdiri, 'それでは、立って下さい。', 'Tolong berdiri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2586_untuk_berdiri, 'デスクワークばっかりだと立つのがしんどい。', 'Sulit untuk berdiri ketika yang Anda lakukan hanyalah bekerja di meja.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7515_hari_kedua, '二日のミーティングは、キャンセルしました。', 'Pertemuan pada tanggal 2 dibatalkan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7515_hari_kedua, '子犬がきてから二日です。', 'Sudah dua hari sejak anak anjing itu tiba.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7515_hari_kedua, 'パリに二日しかいなかった。', 'Saya berada di Paris hanya selama beberapa hari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7517_rakyat, '出口にたくさんの人々がいた。', 'Ada banyak orang di pintu keluar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7517_rakyat, 'まわりの人々は、あまりジーンズをはきません。', 'Orang-orang di sekitar saya jarang memakai jeans.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7517_rakyat, 'なぜ人々は、もっと力いっぱい「おはよう！」といわないんでしょうか。', 'Mengapa orang tidak mengucapkan "Selamat pagi!" lebih antusias?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7561_satu_hari, 'ニューヨークまで一日かかる。', 'Dibutuhkan satu hari untuk sampai ke New York.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7561_satu_hari, '五月一日は「メーデー」ですよね？', 'Tanggal 1 Mei adalah "May Day", bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7561_satu_hari, '一日だけ女の子になりたいなあ。', 'Aku ingin menjadi seorang gadis hanya untuk sehari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7562_hari_ketujuh, '七日はコスプレのイベントあります。', 'Ada acara cosplay pada tanggal 7.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7562_hari_ketujuh, '七日でヨガはやめた。', 'Saya berhenti yoga pada hari ketujuh.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7562_hari_ketujuh, 'フロリダまでボートで七日もかかったよ。', 'Saya membutuhkan waktu tujuh hari untuk sampai ke Florida dengan perahu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7563_hari_ketiga, '日本では、三月三日は、ひなまつりという女の子のイベントです。', 'Di Jepang, tanggal 3 Maret adalah hari libur untuk anak perempuan yang disebut "hina matsuri".');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7563_hari_ketiga, '三日でピアノが上手になった。', 'Saya menjadi lebih baik di piano setelah tiga hari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7563_hari_ketiga, '三日も水をのんでいません。', 'Saya belum minum air selama tiga hari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7614_hari_kesembilan, '三月九日に、あの女の子は五才になる。', 'Pada tanggal 9 Maret, gadis itu berusia lima tahun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7614_hari_kesembilan, '九日もシャワーをあびてない。', 'Saya belum mandi selama sembilan hari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7614_hari_kesembilan, 'レッスン九日でマリオカートのマスターになれました。ありがとう。', 'Saya menjadi master Mario Kart pada pelajaran hari kesembilan. Terima kasih.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7615_hari_kedelapan, '八日からハワイでバケーションなんです。', 'Saya akan berlibur di Hawaii mulai tanggal 8.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7615_hari_kedelapan, 'とんこつラーメンをつくるのに八日もかかったよ。', 'Butuh delapan hari untuk membuat ramen tonkotsu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7615_hari_kedelapan, 'キムチダイエットは八日でおわった。', 'Diet kimchi berakhir setelah delapan hari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7616_hari_kesepuluh, '十日は刀のセールです。', 'Ada penjualan pedang pada tanggal 10.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7616_hari_kesepuluh, 'カナダのトロントへいくのに十日かかった。', 'Saya memerlukan waktu sepuluh hari untuk sampai ke Toronto, Kanada.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7616_hari_kesepuluh, '三月十日のイベントの目玉はカラオケです。', 'Puncak acara tanggal 10 Maret adalah karaoke.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7668_sangat, '大いにまなびましょう。', 'Mari belajar banyak!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7668_sangat, '王は王子と王女に、「大いにこくみんのぜいきんをつかっていいぞ」といった。', 'Raja berkata kepada pangeran dan putri, "Silakan gunakan uang pajak rakyat yang banyak."');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7668_sangat, 'きょうは大いにのみたまえ。', 'Tolong minum yang banyak hari ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7728_di_bawah_air, '水中にコイがたくさんいる。', 'Ada banyak ikan koi di dalam air.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7728_di_bawah_air, 'このカメラは、水中カメラです。', 'Kamera ini merupakan kamera bawah air.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7728_di_bawah_air, '水中マージャンやらない？', 'Apakah kamu ingin bermain mahjong bawah air denganku?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8693_kiri_dan_kanan, 'ジャケットの左右にはポケットがあります。', 'Jaket ini memiliki saku di kiri dan kanan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8693_kiri_dan_kanan, '左右をみてからUターンしてね。', 'Putar balik setelah melihat ke kiri dan ke kanan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8693_kiri_dan_kanan, 'コストは日本の人口の大きさに左右されます。', 'Biayanya tergantung pada jumlah penduduk Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8693_kiri_dan_kanan, 'それは大いにてんきに左右される。', 'Itu sangat tergantung pada cuaca.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8733_masukan, 'ここにソーシャルセキュリティナンバーを入力して下さい。', 'Silakan masukkan nomor jaminan sosial Anda di sini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8733_masukan, 'この三人はデータ入力のプロだよ。', 'Ketiganya adalah profesional entri data.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8733_masukan, '「Romaji入力」と「かな入力」ができる人ってセクシーだよね。', 'Orang yang bisa melakukan "Romaji input" dan "Kana input" itu seksi kan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9167_sawah, 'アジアには田んぼがたくさんある。', 'Ada banyak sawah di Asia.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9167_sawah, 'これはジャスミンライスの田んぼです。', 'Ini adalah sawah untuk padi melati.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9167_sawah, '田んぼにハイヒールで入らないで下さい。', 'Mohon jangan memasuki sawah dengan sepatu hak tinggi.');

  -- 4. PREREQUISITES
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_458_pedang, r_24_pedang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_459_kotoran, r_17_kotoran);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_460_ribu, r_32_ribu);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_461_malam, r_33_malam);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_462_anak, r_34_anak);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_463_kecil, r_35_kecil);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_464_jalan, r_27_jalan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_467_lingkaran, id FROM items WHERE type = 'radical' AND (slug = '11' OR id = '11') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_467_lingkaran, id FROM items WHERE type = 'radical' AND (slug = '3' OR id = '3') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_468_bakat, id FROM items WHERE type = 'radical' AND (slug = '1' OR id = '1') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_468_bakat, id FROM items WHERE type = 'radical' AND (slug = '6' OR id = '6') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_468_bakat, id FROM items WHERE type = 'radical' AND (slug = '5' OR id = '5') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_469_tengah, r_49_tengah);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_470_lima, r_39_lima);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_471_enam, id FROM items WHERE type = 'radical' AND (slug = '8' OR id = '8') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_471_enam, id FROM items WHERE type = 'radical' AND (slug = '2' OR id = '2') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_472_yen, r_29_kepala);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_472_yen, id FROM items WHERE type = 'radical' AND (slug = '8' OR id = '8') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_473_surga, r_40_surga);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_474_tangan, r_41_tangan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_475_menulis, r_42_menulis);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_476_matahari, id FROM items WHERE type = 'radical' AND (slug = '22' OR id = '22') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_477_bulan, r_43_bulan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_478_pohon, id FROM items WHERE type = 'radical' AND (slug = '23' OR id = '23') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_479_air, r_45_air);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_480_api, r_46_api);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_481_anjing, r_47_anjing);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_482_raja, r_48_raja);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_483_keluar, id FROM items WHERE type = 'radical' AND (slug = '20' OR id = '20') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_484_benar, r_26_ikan_paus);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_484_benar, id FROM items WHERE type = 'radical' AND (slug = '16' OR id = '16') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_485_empat, id FROM items WHERE type = 'radical' AND (slug = '16' OR id = '16') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_485_empat, r_28_kaki);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_486_kiri, r_26_ikan_paus);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_486_kiri, id FROM items WHERE type = 'radical' AND (slug = '25' OR id = '25') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_487_buku, r_50_buku);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_488_benar, id FROM items WHERE type = 'radical' AND (slug = '1' OR id = '1') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_488_benar, r_44_berhenti);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_489_bola, r_48_raja);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_489_bola, id FROM items WHERE type = 'radical' AND (slug = '3' OR id = '3') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_490_sawah, r_51_sawah);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_491_putih, r_52_putih);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_492_mata, r_53_mata);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_494_berdiri, r_55_berdiri);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_856_pengulang, id FROM items WHERE type = 'radical' AND (slug = '14' OR id = '14') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_856_pengulang, id FROM items WHERE type = 'radical' AND (slug = '3' OR id = '3') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2492_untuk_mendaki, id FROM items WHERE type = 'kanji' AND (slug = '450' OR id = '450') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2507_pedang, k_458_pedang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2508_kotoran, k_459_kotoran);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2509_ribu, k_460_ribu);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2511_tadi_malam, k_461_malam);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2512_gadis, id FROM items WHERE type = 'kanji' AND (slug = '454' OR id = '454') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2512_gadis, k_462_anak);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2513_anak, k_462_anak);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2514_gadis, id FROM items WHERE type = 'kanji' AND (slug = '454' OR id = '454') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2514_gadis, k_462_anak);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2515_kecil, k_463_kecil);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2517_lingkaran, k_467_lingkaran);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2518_bundar, k_467_lingkaran);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2519_bertahun_tahun, k_468_bakat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2520_di_dalam, k_469_tengah);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2521_lebih_tepatnya, k_469_tengah);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2521_lebih_tepatnya, k_856_pengulang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2522_mungkin, k_470_lima);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2522_mungkin, k_477_bulan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2523_hari_kelima, k_470_lima);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2523_hari_kelima, k_476_matahari);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2524_lima_puluh, k_470_lima);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2524_lima_puluh, id FROM items WHERE type = 'kanji' AND (slug = '448' OR id = '448') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2525_lima_hal, k_470_lima);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2526_lima, k_470_lima);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2527_enam_hal, k_471_enam);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2528_juni, k_471_enam);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2528_juni, k_477_bulan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2529_hari_keenam, k_471_enam);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2529_hari_keenam, k_476_matahari);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2530_enambelas, id FROM items WHERE type = 'kanji' AND (slug = '448' OR id = '448') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2530_enambelas, k_471_enam);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2531_enam, k_471_enam);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2532_yen, k_472_yen);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2533_seribu_yen, k_460_ribu);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2533_seribu_yen, k_472_yen);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2535_surga, k_473_surga);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2536_jenius, k_473_surga);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2536_jenius, k_468_bakat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2537_tangan, k_474_tangan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2538_tidak_terampil, id FROM items WHERE type = 'kanji' AND (slug = '451' OR id = '451') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2538_tidak_terampil, k_474_tangan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2539_baik_dalam, id FROM items WHERE type = 'kanji' AND (slug = '450' OR id = '450') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2539_baik_dalam, k_474_tangan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2540_menulis, k_475_menulis);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2541_matahari, k_476_matahari);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2542_bulan, k_477_bulan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2543_oktober, id FROM items WHERE type = 'kanji' AND (slug = '448' OR id = '448') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2543_oktober, k_477_bulan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2544_januari, id FROM items WHERE type = 'kanji' AND (slug = '440' OR id = '440') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2544_januari, k_477_bulan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2545_februari, id FROM items WHERE type = 'kanji' AND (slug = '441' OR id = '441') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2545_februari, k_477_bulan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2546_pohon, k_478_pohon);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2547_air, k_479_air);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2548_api, k_480_api);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2549_gunung_berapi, k_480_api);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2549_gunung_berapi, id FROM items WHERE type = 'kanji' AND (slug = '455' OR id = '455') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2550_anjing, k_481_anjing);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2551_anak_anjing, k_462_anak);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2551_anak_anjing, k_481_anjing);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2552_raja, k_482_raja);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2553_pangeran, k_482_raja);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2553_pangeran, k_462_anak);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2554_ratu, id FROM items WHERE type = 'kanji' AND (slug = '454' OR id = '454') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2554_ratu, k_482_raja);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2555_putri, k_482_raja);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2555_putri, id FROM items WHERE type = 'kanji' AND (slug = '454' OR id = '454') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2557_untuk_keluar, k_483_keluar);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2558_keluar, k_483_keluar);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2558_keluar, id FROM items WHERE type = 'kanji' AND (slug = '452' OR id = '452') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2559_arah_benar, k_484_benar);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2561_empat, k_485_empat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2562_april, k_485_empat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2562_april, k_477_bulan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2567_arah_kiri, k_486_kiri);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2569_buku, k_487_buku);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2570_jepang, k_476_matahari);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2570_jepang, k_487_buku);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2571_benar, k_488_benar);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2572_untuk_memperbaiki, k_488_benar);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2573_bola, k_489_bola);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2575_bawang_bombai, k_489_bola);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2580_sawah, k_490_sawah);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2581_putih, k_491_putih);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2582_orang_kulit_putih, k_491_putih);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2582_orang_kulit_putih, id FROM items WHERE type = 'kanji' AND (slug = '444' OR id = '444') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2583_mata, k_492_mata);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2584_bola_mata, k_492_mata);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2584_bola_mata, k_489_bola);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2586_untuk_berdiri, k_494_berdiri);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7515_hari_kedua, id FROM items WHERE type = 'kanji' AND (slug = '441' OR id = '441') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7515_hari_kedua, k_476_matahari);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7517_rakyat, id FROM items WHERE type = 'kanji' AND (slug = '444' OR id = '444') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7517_rakyat, k_856_pengulang);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7561_satu_hari, id FROM items WHERE type = 'kanji' AND (slug = '440' OR id = '440') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7561_satu_hari, k_476_matahari);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7562_hari_ketujuh, id FROM items WHERE type = 'kanji' AND (slug = '443' OR id = '443') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7562_hari_ketujuh, k_476_matahari);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7563_hari_ketiga, id FROM items WHERE type = 'kanji' AND (slug = '449' OR id = '449') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7563_hari_ketiga, k_476_matahari);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7614_hari_kesembilan, id FROM items WHERE type = 'kanji' AND (slug = '442' OR id = '442') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7614_hari_kesembilan, k_476_matahari);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7615_hari_kedelapan, id FROM items WHERE type = 'kanji' AND (slug = '446' OR id = '446') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7615_hari_kedelapan, k_476_matahari);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7616_hari_kesepuluh, id FROM items WHERE type = 'kanji' AND (slug = '448' OR id = '448') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7616_hari_kesepuluh, k_476_matahari);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7668_sangat, id FROM items WHERE type = 'kanji' AND (slug = '453' OR id = '453') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7728_di_bawah_air, k_479_air);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7728_di_bawah_air, k_469_tengah);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8693_kiri_dan_kanan, k_486_kiri);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8693_kiri_dan_kanan, k_484_benar);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8733_masukan, id FROM items WHERE type = 'kanji' AND (slug = '445' OR id = '445') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8733_masukan, id FROM items WHERE type = 'kanji' AND (slug = '447' OR id = '447') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_9167_sawah, k_490_sawah);

END $$;
