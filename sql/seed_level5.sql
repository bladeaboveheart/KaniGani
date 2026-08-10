-- ====================================================
-- KaniGani — Seed Data Level 5 (v2, relasional)
-- Auto-generated with Indonesian Slugs
-- ====================================================

DO $$
DECLARE
  -- ============ RADICAL IDs (Level 5) ============
  r_103_tsunami UUID; r_104_peti_mati UUID; r_105_serigala UUID; r_106_dua_puluh UUID; r_108_daging UUID; r_109_diri_sendiri UUID; r_110_warna UUID; r_111_pergi UUID; r_112_barat UUID; r_113_cincin_bibir UUID; r_114_skuter UUID; r_115_kapak UUID; r_117_mengatakan UUID; r_118_emas UUID; r_119_hujan UUID; r_120_biru UUID; r_121_kumis UUID; r_122_kunci UUID; r_124_berlari UUID; r_125_desa UUID; r_155_bertemu UUID; r_171_lentera UUID; r_213_bulu UUID; r_233_babi UUID; r_281_sudut UUID; r_342_malam UUID; r_8769_viking UUID; r_8770_menendang UUID; r_9452_sangkar_tulang_rusuk UUID;

  -- ============ KANJI IDs (Level 5) ============
  k_515_kakak UUID; k_530_pengganti UUID; k_539_kulit UUID; k_565_mencampur UUID; k_566_bertemu UUID; k_567_lampu UUID; k_568_sama UUID; k_569_kali UUID; k_570_banyak UUID; k_571_benar UUID; k_572_setiap UUID; k_574_beras UUID; k_575_bulu UUID; k_576_memikirkan UUID; k_577_daging UUID; k_578_diri_sendiri UUID; k_579_warna UUID; k_580_pergi UUID; k_581_barat UUID; k_582_apa UUID; k_583_tubuh UUID; k_584_membuat UUID; k_585_diagram UUID; k_586_suara UUID; k_588_adik UUID; k_589_membentuk UUID; k_590_datang UUID; k_591_perusahaan UUID; k_592_sudut UUID; k_593_mengatakan UUID; k_594_lembah UUID; k_595_berlari UUID; k_596_di_dekat UUID; k_597_kampung_halaman UUID; k_598_gandum UUID; k_599_belajar UUID; k_600_hutan UUID; k_601_langit UUID; k_602_emas UUID; k_603_hujan UUID; k_604_biru UUID; k_605_rumput UUID; k_606_suara UUID; k_622_malam UUID; k_1309_babi UUID; k_8884_kapak UUID;

  -- ============ VOCABULARY IDs (Level 5) ============
  v_2481_untuk_menyisipkan UUID; v_2491_untuk_naik UUID; v_2494_untuk_menjadi_lebih_rendah UUID; v_2556_untuk_mengambil UUID; v_2577_untuk_melahirkan UUID; v_2587_untuk_mempertahankan_sesuatu UUID; v_2598_untuk_memahami UUID; v_2613_untuk_berhenti UUID; v_2620_kakak UUID; v_2658_surat_tebal UUID; v_2698_agar_terlihat UUID; v_2735_kulit UUID; v_2740_untuk_mencampur_sesuatu UUID; v_2742_untuk_bertemu UUID; v_2743_lampu UUID; v_2745_sinar_bulan UUID; v_2746_sinar_matahari UUID; v_2747_sama UUID; v_2748_hari_yang_sama UUID; v_2749_kali UUID; v_2750_untuk_berputar UUID; v_2751_suatu_saat UUID; v_2752_kali_ini UUID; v_2753_setiap_saat UUID; v_2754_banyak UUID; v_2755_mungkin UUID; v_2756_menjadi_benar UUID; v_2757_sebuah_kesuksesan UUID; v_2758_setiap_bulan UUID; v_2759_setiap_hari UUID; v_2760_setiap_tahun UUID; v_2762_beras UUID; v_2763_bulu UUID; v_2765_untuk_dipikirkan UUID; v_2767_daging UUID; v_2768_daging_sapi UUID; v_2769_ironi UUID; v_2770_diri UUID; v_2771_kemerdekaan UUID; v_2772_warna UUID; v_2773_bermacam_macam UUID; v_2774_langit_biru UUID; v_2775_untuk_pergi UUID; v_2777_arah_kereta_api UUID; v_2778_barat UUID; v_2780_ribuan UUID; v_2781_apa UUID; v_2782_berapa_banyak_orang UUID; v_2783_bulan_apa UUID; v_2784_berapa_hari UUID; v_2785_tahun_berapa UUID; v_2786_berapa_kali UUID; v_2787_untuk_belajar UUID; v_2788_murid UUID; v_2789_kelas_sekolah UUID; v_2790_penerimaan_sekolah UUID; v_2791_rekayasa UUID; v_2792_universitas UUID; v_2793_absen_dari_sekolah UUID; v_2794_hutan UUID; v_2795_udara UUID; v_2796_langit UUID; v_2797_emas UUID; v_2798_testis UUID; v_2799_uang UUID; v_2800_hujan UUID; v_2801_biru UUID; v_2802_anak_muda UUID; v_2803_rumput UUID; v_2804_suara UUID; v_2805_untuk_membuat UUID; v_2806_tubuh UUID; v_2807_kekuatan_fisik UUID; v_2808_di_dalam_tubuh UUID; v_2809_komposisi UUID; v_2811_kerajinan UUID; v_2812_pekerjaan_besar UUID; v_2813_diagram UUID; v_2814_suara UUID; v_2815_suara_keras UUID; v_2820_adik UUID; v_2821_saudara_laki_laki UUID; v_2824_akan_datang UUID; v_2825_bulan_depan UUID; v_2826_tahun_depan UUID; v_2827_dari_zaman_kuno UUID; v_2829_selama_beberapa_tahun UUID; v_2830_di_dalam_perusahaan UUID; v_2831_bergabung_dengan_perusahaan UUID; v_2833_markas_besar UUID; v_2834_perusahaan UUID; v_2835_sudut UUID; v_2836_segi_tiga UUID; v_2837_persegi UUID; v_2838_mengatakan UUID; v_2839_lembah UUID; v_2840_untuk_berlari UUID; v_2841_bepergian UUID; v_2842_menutup UUID; v_2843_dalam_beberapa_hari UUID; v_2844_beberapa_tahun_terakhir UUID; v_2845_gandum UUID; v_2889_malam UUID; v_3408_anak_laki_laki UUID; v_3409_ulat UUID; v_3410_pusat_kota UUID; v_3412_pria UUID; v_3414_sampai_sekarang UUID; v_3416_benang_wol UUID; v_3417_sekaligus UUID; v_3647_kampung_halaman UUID; v_3648_rindu UUID; v_4876_realitas UUID; v_4970_babi UUID; v_5935_buka_taksi UUID; v_7568_arkeologi UUID; v_7617_seumur_hidup UUID; v_7670_sikap UUID; v_7672_membentuk UUID; v_7730_diplomasi UUID; v_7731_tempat_lahir UUID; v_8661_umumnya UUID; v_8696_literatur UUID; v_8736_semula UUID; v_8895_penghitung_roti_roti UUID; v_9088_yang_lainnya UUID; v_9158_pintu_keluar_barat UUID; v_9169_bulan_sabit UUID; v_9238_baik_dalam UUID; v_9255_seseorang_berumur_tiga_puluhan UUID; v_9256_biaya UUID; v_9453_paralel UUID; v_9456_sore_hari UUID;

BEGIN

  DELETE FROM items WHERE level = 5;

  -- 1. RADICALS
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '氵', 'tsunami', 5, 1, 'Setetes (丶) hanyalah air. Namun begitu ada tiga, yang semakin tinggi dan semakin tinggi, Anda tahu apa yang akan terjadi. <radikal>tsunami</radikal>! Bayangkan tetesan tersebut sebagai puncak gelombang. Tiga gelombang tsunami utuh, bertumpuk? Itu adalah tsunami besar.')
    RETURNING id INTO r_103_tsunami;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '耂', 'peti-mati', 5, 2, 'Lihat slidenya masuk ke tanah? Apa yang tampak seperti perosotan di sini sebenarnya adalah <radical>peti mati</radikal>, yang meluncur ke dalam tanah untuk dikuburkan.')
    RETURNING id INTO r_104_peti_mati;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', 'ヨ', 'serigala', 5, 3, 'Anda tahu <radical>Wolverine</radical> dari X-Men? Dia memiliki tiga cakar yang keluar dari tangannya kapan pun dia perlu bertarung, sama sekali tidak berbeda dengan radikal yang Anda lihat di sini.')
    RETURNING id INTO r_105_serigala;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '廾', 'dua-puluh', 5, 4, 'Kamu punya 十 plus 十 (apalagi kanji kiri agak melengkung)... Apa yang kamu dapatkan jika menjumlahkan kedua kanji ini? Anda mendapatkan <radikal>dua puluh</radikal>.')
    RETURNING id INTO r_106_dua_puluh;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '肉', 'daging', 5, 5, 'Ini adalah radikal untuk <radikal>daging</radikal>. Seperti apa rasanya daging di sini? Bayangkan sepotong daging persegi yang bagus dengan beberapa garis marmer berbentuk 人 yang indah di dalamnya. Melihatnya sekarang? Hmm, daging.')
    RETURNING id INTO r_108_daging;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '自', 'diri-sendiri', 5, 6, 'Ingat radikal mata? Bayangkan itu adalah mata Anda sekarang, dan ada setetes cat yang jatuh ke dalamnya, menjadikan warna mata Anda unik. Sekarang itulah yang menjadikanmu dirimu. Itulah yang menjadikan Anda <radikal>diri</radikal> Anda.')
    RETURNING id INTO r_109_diri_sendiri;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '色', 'warna', 5, 7, 'Di penjara, bermimpi di tempat tidur adalah satu-satunya cara untuk melihat <radikal>warna</radikal>. Bayangkan sel yang gelap dan lembap dengan empat dinding berwarna abu-abu. Sekarang bayangkan pemandangan mimpi warna-warni yang akan dibawa tempat tidur Anda setiap malam. Sungguh kontras! Itu sebabnya ranjang penjara = warna.')
    RETURNING id INTO r_110_warna;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '行', 'pergi', 5, 8, 'Anda memiliki kata radikal untuk loiter, two, dan barb. Seseorang yang menggunakan dua duri pada Anda saat Anda berkeliaran benar-benar ingin Anda <radikal>PERGI</radikal>!! Ayo, berhenti berkeliaran di luar toko serba adaku, ya, anak-anak!')
    RETURNING id INTO r_111_pergi;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '西', 'barat', 5, 9, 'Anda mempunyai kaki seekor burung dengan sayap terbentang, mendarat di mulut sarangnya untuk beristirahat. Dan kapan dia kembali beristirahat? Saat matahari terbenam di <radical>barat</radical>! Bayangkan semua burung terbang pulang saat matahari terbenam. Itu sebabnya radikal ini berarti barat.

Anda juga bisa melihat ini sebagai pi yang keluar dari mulut. Mengapa mulut berbicara tentang pi? Mungkin untuk mengetahui kelengkungan jalur matahari saat bergerak melintasi langit — ke barat, selalu ke barat!')
    RETURNING id INTO r_112_barat;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '可', 'cincin-bibir', 5, 10, 'Ini tampak seperti sesuatu yang dikaitkan di sudut mulut — ini adalah <radikal>cincin bibir</radikal>! Gunakan imajinasi Anda, karena itu bisa berupa cincin bibir raksasa atau mulut yang sangat kecil. Bentuknya bersudut karena kanji lebih menyukai garis lurus, tetapi cobalah membayangkannya sebagai jenis cincin bibir bertabur dan bersudut yang dikenakan teman trendi Anda di sekolah menengah.')
    RETURNING id INTO r_113_cincin_bibir;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '⻌', 'skuter', 5, 11, 'Radikal ini adalah <radikal>skuter</radikal>. Lihat stang dan lampu kecilnya? Dan ada platform di bagian bawah tempat Anda dapat berdiri atau duduk (jika itu salah satu skuter bermotor yang bagus).')
    RETURNING id INTO r_114_skuter;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '斤', 'kapak', 5, 12, 'Ini adalah kata radikal untuk <radical>axe</radical>, karena bentuknya seperti itu. Dua guratan mendatar adalah kepala, garis kiri panjang adalah seluruh tepi bilahnya, dan garis vertikal di tengah adalah gagang pendeknya. Saya akui, kapak itu agak aneh, tetapi kapak tetaplah kapak.')
    RETURNING id INTO r_115_kapak;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '言', 'mengatakan', 5, 13, 'Ada banyak garis yang keluar dari mulut. Anggap saja sebagai kalimat pidato dalam gelembung ucapan kecil. Garis-garis tersebut mewakili hal-hal yang Anda <radikal>ucapkan</radikal>.')
    RETURNING id INTO r_117_mengatakan;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '金', 'emas', 5, 14, 'Di bawah topi itu ada dua batang <radikal>emas</radikal>, tapi di bawahnya ada beberapa paku. Ini semacam jebakan bagi orang yang mencoba mengambil emas Anda. Dan mengapa lagi Anda membuat jebakan? Semua orang ingin melindungi emas mereka.')
    RETURNING id INTO r_118_emas;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '雨', 'hujan', 5, 15, 'Handuknya basah oleh tetesan cairan. Itu karena sedang <radikal>hujan</radikal>. Bawalah handuk dan pakaian lain ke dalam sebelum basah kuyup karena hujan ini!')
    RETURNING id INTO r_119_hujan;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '青', 'biru', 5, 16, 'Jika Anda menemukan tulang rusuk di bulan, kemungkinan warnanya <radikal>biru</radikal>. Mengapa? Karena itu pasti berasal dari salah satu penghuni bulan (Manusia Bulan), dan mereka semua berwarna biru — Anda tahu, karena suhu yang sangat dingin dan kekurangan oksigen dan sebagainya.')
    RETURNING id INTO r_120_biru;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '冋', 'kumis', 5, 17, 'Lihat <radikal>kumis</radikal> di sekitar mulut? Sobat, andai saja aku bisa menumbuhkan kumis manis seperti ini. (Tentu saja, kumisnya sangat mirip dengan kepala radikal di sini, tapi kali ini bayangkan saja kumisnya!)')
    RETURNING id INTO r_121_kumis;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '乍', 'kunci', 5, 18, 'Ini adalah <radical>kunci</radikal> yang bentuknya sangat aneh, namun tetap saja ini adalah kunci.')
    RETURNING id INTO r_122_kunci;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '走', 'berlari', 5, 19, 'Lihat orang yang berlari (ke kanan)? Itu sebabnya ini adalah radikal untuk <radikal>dijalankan</radikal>. Hanya saja, jangan bingung membedakannya dengan kaki (足). Kepala yang satu ini memiliki guratan-guratan di sekelilingnya karena orang tersebut berlari begitu cepat.')
    RETURNING id INTO r_124_berlari;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '里', 'desa', 5, 20, 'Sawah dan beberapa tanah — jalan tanah, karena ini adalah <radikal>desa</radikal>. Desa-desa kecil seperti ini sebagian besar berupa persawahan dan tanah (jalan raya) lho? Anda bahkan dapat menganggap ini sebagai pemandangan desa dari atas.')
    RETURNING id INTO r_125_desa;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '会', 'bertemu', 5, 21, 'Di bawah topi ada dua orang yang <radikal>bertemu</radikal> secara pribadi. Lihatlah mereka meringkuk di sana. Mereka pasti punya alasan ingin bertemu di tempat privat seperti itu, tapi itu bukan hak Anda untuk menilai. Mungkin lain kali Anda harus bertemu dengan seseorang, Anda juga akan bersembunyi di bawah topi bersama mereka.')
    RETURNING id INTO r_155_bertemu;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '开', 'lentera', 5, 22, 'Bayangkan <radical>lentera</radical> gaya lama. Letaknya di dalam wadah berbentuk kotak yang dilapisi kertas nasi dan diletakkan di atas empat kaki (meskipun Anda hanya dapat melihat dua dari sudut ini). Anda dapat membayangkan orang-orang menggunakan ini sebelum listrik, bukan? Itu sebabnya kaum radikal ini adalah lentera.')
    RETURNING id INTO r_171_lentera;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '羽', 'bulu', 5, 23, 'Radikal ini sudah terlihat seperti sepasang <radikal>bulu</radikal> persegi panjang, bukan? Saya kira garis-garis pendek di setiap bulu itu seperti filamen pada bulu.')
    RETURNING id INTO r_213_bulu;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '豕', 'babi', 5, 24, 'Di sini kita mempunyai dasar yang radikal, dengan sesuatu di bawahnya. Apa yang suka tergeletak di tanah, berlumuran lumpur? Seekor <radikal>babi</radikal>! Gunakan imajinasi Anda dan lihat apakah Anda dapat menemukan kepala di dekat atas, ekor babi di kanan bawah, dan anak babi kecil di sebelah kiri, meringkuk di dekat induk babi ini.')
    RETURNING id INTO r_233_babi;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '角', 'sudut', 5, 25, 'Saat Anda di penjara, satu-satunya tugas Anda adalah menghitung setiap <radikal>sudut</radikal> di sel Anda. Anda menghitung sudut dinding dan langit-langit berulang kali untuk menghabiskan waktu. Berapa banyak sudut dalam ruangan dengan empat dinding? Bayangkan dan coba hitung sudut-sudutnya sekarang.')
    RETURNING id INTO r_281_sudut;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '夜', 'malam', 5, 26, 'Lihat tutup di atasnya? Ini sebenarnya adalah piring terbang. "Bawa aku ke pemimpinmu," kata alien di dalam, yang datang dari bulan yang tampak aneh. Menurut Anda, kapan Anda akan melihat hal seperti ini? Pada <radikal>malam</radikal>. Saat orang melihat UFO atau bulan, biasanya saat itu malam hari. Itu sebabnya ini adalah malam radikal.')
    RETURNING id INTO r_342_malam;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '龸', 'viking', 5, 27, 'Pada bagian atas kepala (冂) radikal, terdapat radikal tanduk dengan satu paku tambahan di tengahnya. Ini adalah helm bertanduk dengan satu paku tambahan. Siapa yang terkenal punya helm bertanduk seperti itu? Bangsa Viking! Itu sebabnya radikal ini disebut <radikal>Viking</radikal>.')
    RETURNING id INTO r_8769_viking;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '/radicals/kick.svg', 'menendang', 5, 28, 'Ini terlihat seperti kaki berbentuk tongkat di sebelah kiri yang menendang sesuatu, yang membuatnya menjadi radikal untuk <radical>tendangan</radikal>. Lihat tulang kering dan kaki terayun ke atas untuk melakukan tendangan? Anda dapat menganggap bagian kanan itu sebagai tepi bola yang akan ditendang.')
    RETURNING id INTO r_8770_menendang;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '/radicals/rib-cage.svg', 'sangkar-tulang-rusuk', 5, 29, 'Ini terlihat seperti tulang belakang dengan beberapa tulang rusuk, bukan? Itu sebabnya ini adalah radikal untuk <radikal>tulang rusuk</radikal>.')
    RETURNING id INTO r_9452_sangkar_tulang_rusuk;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_103_tsunami, 'Tsunami', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_104_peti_mati, 'Peti mati', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_105_serigala, 'serigala', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_106_dua_puluh, 'Dua puluh', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_108_daging, 'Daging', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_109_diri_sendiri, 'Diri sendiri', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_110_warna, 'Warna', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_111_pergi, 'Pergi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_112_barat, 'Barat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_113_cincin_bibir, 'Cincin Bibir', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_114_skuter, 'Skuter', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_115_kapak, 'Kapak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_117_mengatakan, 'Mengatakan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_118_emas, 'Emas', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_119_hujan, 'Hujan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_120_biru, 'Biru', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_121_kumis, 'Kumis', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_122_kunci, 'Kunci', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_124_berlari, 'Berlari', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_125_desa, 'Desa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_155_bertemu, 'Bertemu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_171_lentera, 'Lentera', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_213_bulu, 'Bulu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_233_babi, 'Babi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_281_sudut, 'Sudut', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_342_malam, 'Malam', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_8769_viking, 'viking', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_8770_menendang, 'Menendang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_9452_sangkar_tulang_rusuk, 'Sangkar Tulang Rusuk', true, true);

  -- 2. KANJIS
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '兄', 'kakak', 5, 30, 'Siapakah seseorang yang hanya <radikal>mulut</radikal> dengan <radikal>kaki</radikal>? Itu adalah <kanji>kakak</kanji>mu yang sok tahu, yang tidak akan diam tentang apa pun.', 'Kamu berharap bisa mengurung <kanji>kakak</kanji>mu yang bermulut keras dan mengirimnya jauh ke <reading>きょう</reading>と. Lokasinya sangat jauh dari tempat tinggalmu saat ini, jadi kirimkan saja kakakmu agar dia tidak mengganggumu lagi.')
    RETURNING id INTO k_515_kakak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '代', 'pengganti', 5, 31, '<radical>pemimpin</radikal> untuk <radikal>upacara</radikal> tidak dapat datang sehingga Anda memerlukan <kanji>pengganti</kanji> untuk <kanji>menggantikan</kanji> mereka secepatnya!

Kanji ini juga mempunyai arti lain. Pemimpinnya tidak bisa datang ke upacara tersebut karena lupa <kanji>periode</kanji> waktunya. Jika mereka merasa <kanji>usia</kanji> mereka salah, mereka tidak akan datang karena mereka malah mencoba memimpin beberapa monyet dalam upacara.', 'Pemimpin <kanji>pengganti</kanji> memakai pakaian dengan warna yang salah, jadi kamu harus <read>mewarnai</reading> (だい), seperti yang mereka lakukan di <kanji>zaman</kanji> dahulu.')
    RETURNING id INTO k_530_pengganti;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '皮', 'kulit', 5, 32, 'Anda turun ke <radical>slide</radical> yang terbuat dari <radical>cabang</radical>dan <kanji>kulit</kanji> Anda langsung tergores — aduh! Beruntungnya Anda, itu hanya lapisan luar kulit lama Anda, dan sekarang Anda memiliki lapisan baru yang berkilau. Hore untuk pengelupasan kulit! Namun Anda tidak yakin apa yang harus dilakukan dengan lapisan kulit tua yang besar dan terkulai ini…', 'Tanpa <kanji>kulit</kanji> tua yang kasar untuk melindungi Anda, Anda merasakan <read>he</reading>at (ひ) penuh sinar matahari sekarang. Itu terbakar… itu terbakar! Ya, sebaiknya Anda melindungi kulit baru yang segar itu dari panas.')
    RETURNING id INTO k_539_kulit;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '交', 'mencampur', 5, 33, 'Anda menaruh <radikal>penutup</radikal> pada <radikal>ayah</radikal> Anda. Namun, rasanya tidak akan enak jika dimakan sendiri, jadi Anda <kanji>mencampur</kanji> dengan beberapa bahan lain. Mereka <kanji>berbaur</kanji> di dalam pot bersamanya.', 'Dengan <kanji>campuran</kanji> ayahmu dan bahan-bahan lain yang <kanji>bercampur</kanji> di panci masakmu, kamu angkat tutupnya... ayahmu muncul. Ayahmu adalah <reading>こう</reading>いち. Dia balas menatapmu sambil tersenyum lebar.')
    RETURNING id INTO k_565_mencampur;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '会', 'bertemu', 5, 34, 'Kanji <radikal>bertemu</radikal> dan kanji <kanji>bertemu</kanji> adalah sama!', 'Apa cara yang lebih baik untuk <kanji>bertemu</kanji> orang baru selain mulai <reading>kay</reading>aking (かい)! Naiklah ke kayak Anda dan melayanglah ke dalam air. Anda akhirnya akan bertemu orang lain di kayak dan boom, Anda bertemu orang baru!')
    RETURNING id INTO k_566_bertemu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '光', 'lampu', 5, 35, 'Anda melihat <radical>triceratops</radical> di kejauhan. Tapi, ini aneh. Bentuknya <radikal>pi</radikal> sempurna (yaitu, melingkar, seperti pai). Semacam piceratop, jika Anda mau. Alasan bentuk ini adalah karena mereka ingin menyerap <kanji>cahaya</kanji> sebanyak mungkin. Mereka berevolusi menjadi bulat sehingga tidak ada sudut yang menimbulkan bayangan.', 'Saat Anda menyaksikan binatang agung ini menyerap <kanji>cahaya</kanji>, tiba-tiba beberapa lusin <reading>こう</reading>いち liar muncul dari hutan belantara, membawa tombak di tangan. Oh tidak! Para こういち itu sedang berburu piceratop langka ini!')
    RETURNING id INTO k_567_lampu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '同', 'sama', 5, 36, 'Ada <radical>kumis</radical> di <radical>tanah</radical>. Setelah diperiksa lebih dekat, Anda akan melihat bahwa kumis di tanah <kanji>sama</kanji> persis dengan milik Anda!', 'Saat kita ingin mengingat bacaan どう, kita menggunakan kata "donat".

Meskipun ini sudah cukup aneh, Anda memperhatikan sesuatu yang aneh. Sekitar beberapa kaki jauhnya adalah <reading>dou</reading>ghnut (どう) yang juga memiliki kumis <kanji>sama</kanji> seperti Anda (dan kumis yang jatuh ke tanah). Donat itu menatap Anda sejenak, lalu berlari pergi. Donat ini pasti mutan karena biasanya donat tidak bergerak.')
    RETURNING id INTO k_568_sama;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '回', 'kali', 5, 37, 'Ada <radical>mulut</radikal> di dalam <radikal>mulut</radikal>. Namun jika Anda melihat lebih dekat (sebenarnya tidak, tetapi kami berpura-pura), Anda dapat melihat mulut lain di dalam mulut itu... dan satu lagi di dalam mulut itu! Itu terus berjalan dan berjalan. Bisakah kamu menghitung berapa <kanji>kali</kanji> ada mulut di dalam mulut? Kanji ini juga berarti <kanji>berputar</kanji> juga. Bayangkan setiap "waktu" suatu hal terjadi, hal itu berputar kembali dan kembali ke awal, berputar lagi di lain waktu.', 'Jika Anda mengalami kesulitan untuk membungkus kepala Anda dengan <kanji>kali</kanji> yang tak terhingga banyaknya <kanji>berputar</kanji> ini, bayangkan saja diri Anda berada dalam <read>kay</reading>ak (かい) kecil yang berputar-putar dan turun melalui mulut.')
    RETURNING id INTO k_569_kali;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '多', 'banyak', 5, 38, 'Ada berapa <radical>malam hari</radical>? Ada <kanji>banyak</kanji>.', 'Untuk mengingat bacaannya た kami menggunakan kata "taco".

Mari kita mulai dengan arti kanji: <kanji>banyak</kanji>. Anda pergi ke luar pada malam hari (karena kanji ini dibuat) dan terkejut saat Anda ditabrak oleh <kanji>banyak</kanji> <reading>ta</reading>cos (た) yang terbang dari langit. Entah kenapa hujan taco, dan tentu saja Anda tidak tahu kenapa.')
    RETURNING id INTO k_570_banyak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '当', 'benar', 5, 39, 'Pahlawan super manakah yang paling mirip dengan <radikal>triceratops</radikal>? …Jika Anda mengatakan <radical>Wolverine</radical>, Anda <kanji>benar</kanji>! Mengapa jawabannya <kanji>benar</kanji>? Karena triceratops memiliki tiga tanduk, dan Wolverine memiliki tiga bilah yang keluar dari tangannya. Sudah jelas, bukan? Tapi Anda tentu saja mengetahuinya.', 'Karena jawaban Anda <kanji>benar</kanji>, Anda memenangkan perjalanan gratis ke <reading>とう</reading>きょう. Selamat!')
    RETURNING id INTO k_571_benar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '毎', 'setiap', 5, 40, 'Anda memiliki <radical>senjata</radical> dan Anda melihat beberapa <radical>jendela</radical>. Menurutmu apa yang akan kamu lakukan dengan senjata ini? Tentu saja, Anda akan memotret jendelanya... <kanji>setiap</kanji> jendelanya. <kanji>Setiap</kanji> dan setiap orang.', 'Sekarang <kanji>setiap</kanji> jendela rusak, Anda merasa sangat bodoh karena <reading>mi</reading>ce (まい) mengalir masuk melalui <kanji>setiap</kanji>. Anda telah membuat jalan bagi tikus untuk masuk ke rumah Anda. Itu tidak cerdas.')
    RETURNING id INTO k_572_setiap;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '米', 'beras', 5, 41, 'Kanji <radical>rice</radical> dan <kanji>rice</kanji> memiliki tampilan dan makna yang sama. Kanji ini bisa juga berarti <kanji>Amerika</kanji>, mungkin karena Amerika tertutup sawah atau ladang atau apalah?', 'Satu ton <kanji>beras</kanji> ditanam di <kanji>Amerika</kanji>. Namun Anda tidak pernah melihat nasi dalam masakan Amerika. Jadi kemana perginya semua beras yang tidak terpakai itu? Sebenarnya, semuanya dibuang ke <reading>bay</reading> (べい) yang besar. Mereka mempunyai terlalu banyak beras dan tidak ada tempat untuk menyimpannya, jadi mereka mulai menggunakan wadah untuk menyimpannya.')
    RETURNING id INTO k_574_beras;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '羽', 'bulu', 5, 42, 'Kanji <radikal>bulu</radikal> radikal dan <kanji>bulu</kanji> memiliki tampilan dan makna yang sama.', 'Anda telah mengumpulkan <kanji>bulu</kanji> demi bulu, seperti seorang manusia burung atau wanita burung yang ingin menjadi, dan sekarang Anda siap untuk terbang. Namun begitu Anda hendak lepas landas, seseorang menumpahkan <reading>madu</reading> (はね) kepada Anda, membuat bulu Anda menjadi kusut.')
    RETURNING id INTO k_575_bulu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '考', 'memikirkan', 5, 43, 'Di dalam <radical>peti mati</radikal> ada seorang <radikal>pengemis</radikal> yang sedang mengemis. Tapi itu tidak berhasil, tidak ada yang membantunya. Jadi, dia mulai <kanji>berpikir</kanji>: Mengapa saya berada dalam situasi ini? Bagaimana saya bisa menghindarinya? Bagaimana saya bisa keluar? Pikirkan, sial, pikirkan!!', 'Apa yang <kanji>pikirkan</kanji> pengemis itu? Gelembung pikiran muncul di dekat kepalanya. Di dalamnya ada gambar <reading>こう</reading>いち! Dia berpikir jika こういち ada di sini, dia akan menyelamatkannya. Oh, andai saja こういち bisa menyelamatkan kita semua!')
    RETURNING id INTO k_576_memikirkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '肉', 'daging', 5, 44, 'Radikal <radikal>daging</radikal> dan <kanji>daging</kanji> memiliki penampilan dan makna yang sama.', 'Anda tahu siapa yang suka <kanji>daging</kanji>? <membaca>Nick</reading> (にく). Anda mungkin mengenal Nick - bayangkan dia sedang makan daging yang lezat sekarang.')
    RETURNING id INTO k_577_daging;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '自', 'diri-sendiri', 5, 45, '<radikal>diri</radikal> radikal dan <kanji>diri</kanji> sama dalam penampilan dan makna.', 'Ketika kita perlu mengingat じ kita menggunakan kata "Yesus".

Siapa bilang Anda harus selalu melihat <kanji>diri</kanji> Anda sebelum melemparkan batu (atau apa pun) ke orang lain? <reading>Ya</reading>sus (じ) yang melakukannya. Jadi, pastikan Anda melihat diri Anda sendiri sebelum menjadi brengsek.')
    RETURNING id INTO k_578_diri_sendiri;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '色', 'warna', 5, 46, 'Radikal <radikal>warna</radikal> dan <kanji>warna</kanji> memiliki tampilan dan makna yang sama.', 'Anda sudah memikirkan <kanji>warna</kanji> karena Anda tahu arti kanji ini, jadi pikirkan sesuatu yang penuh warna tentang diri Anda. Bayangkan <reading>telinga</reading> (いろ) Anda berwarna aneh... hijau, ungu, merah, apa saja. Buat saja itu sangat cerah dan menonjol.')
    RETURNING id INTO k_579_warna;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '行', 'pergi', 5, 47, 'Kata radikal <radical>go</radical> dan kanji <kanji>go</kanji> sama persis!', '"Oh, apakah dia <vocabulary>pergi</vocabulary> lagi?" Saat <reading>こう</reading>いち tidak ada, itulah yang sering dikatakan orang karena dia pergi ke restoran <reading>gyo</reading>za (ぎょう) hampir setiap hari. こういち sangat menyukai gyoza, kamu selalu tahu di mana dia berada saat dia tidak di rumah.')
    RETURNING id INTO k_580_pergi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '西', 'barat', 5, 48, 'Kanji <radikal>barat</radikal> dan kanji <kanji>barat</kanji> adalah sama. Bukankah itu bagus?', 'Anda pergi ke <vocabulary>barat</vocabulary>. Bahkan itu adalah Wild West. Tidak banyak orang di sini, sehingga mudah untuk menemukan <reading>niche</reading> (にし) untuk bisnis minyak ular Anda.')
    RETURNING id INTO k_581_barat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '何', 'apa', 5, 49, '<radikal>pemimpin</radikal> kita mempunyai <radikal>cincin bibir</radikal>. Tunggu, pemimpin kita punya cincin bibir? <kanji>APA</kanji>??', 'Pemimpin dengan cincin bibir ini menginginkan satu hal. <kanji>Apa</kanji> itu? Seorang <reading>pengasuh</reading> (なに) yang bisa membuat <reading>naan</reading> (なん). Pemimpinnya menyukai naan karena cukup lembut untuk dimakan dengan cincin bibir. Dan seorang pengasuh perlu melakukannya karena pemimpin tidak dapat melakukan apa pun sendiri.')
    RETURNING id INTO k_582_apa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '体', 'tubuh', 5, 50, '<radical>pemimpin</radikal> memiliki <radikal>buku</radikal> yang membahas tentang <kanji>tubuh</kanji> manusia. Mengetahui tentang tubuh adalah suatu kehormatan. Sesuatu yang hanya dimiliki oleh para pemimpin—ini membantu mereka mengendalikan seluruh rakyatnya, seperti Anda.', 'Buku <kanji>tubuh</kanji> sang pemimpin juga mengajarinya tentang sesuatu yang sangat spesifik tentang tubuh: cara mengikat <membaca>dasi</reading> (たい). Kau tidak boleh memakai dasi di tubuhmu, tidak, tidak. Itu untuk pemimpin dan tubuh cerdasnya.')
    RETURNING id INTO k_583_tubuh;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '作', 'membuat', 5, 51, '<radical>kunci</radikal> <radical>pemimpin</radikal> adalah kunci yang <kanji>membuat</kanji> semua kunci lainnya. Ini seperti satu cincin untuk mengatur semuanya, satu cincin untuk mengikat mereka... kecuali dengan kunci.', 'Pemimpin <kanji>membuat</kanji> semua kunci dan memasukkannya ke dalam <reading>karung</reading> (さく) untuk dibagikan kepada bawahan, yang kemudian memotongnya menjadi bentuk dengan <reading>gergaji</reading> (さ).')
    RETURNING id INTO k_584_membuat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '図', 'diagram', 5, 52, 'Anda memiliki <radical>mulut</radical> yang penuh dengan dua <radical>drop</radical> yang sangat besar dan… <radical>harta</radical>?! Setelah diperiksa lebih dekat, mereka tampak membentuk semacam <kanji>diagram</kanji>!', 'Setelah puluhan tahun menganalisis <kanji>diagram</kanji>, para ilmuwan menemukan bahwa diagram tersebut mengarah ke… <reading>kebun binatang</reading> (ず)?!')
    RETURNING id INTO k_585_diagram;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '声', 'suara', 5, 53, 'Anda memiliki <radical>samurai</radical> dengan <radical>bendera</radical> pada <radical>tongkat</radical>. Di benderanya terdapat simbol 声, kanji untuk <kanji>suara</kanji>. Kenapa dia punya itu di sana? Dia merasa shogunnya tidak memberikan suara kepada dia dan rekan samurainya, jadi dia membawa bendera dengan tulisan "suara" di atasnya untuk memprotes.', 'Anda memutuskan untuk bergabung dalam protes samurai untuk mendapatkan lebih banyak <vocabulary>suara</vocabulary> tetapi segera menyadari… semuanya <read>子, eh</reading> (こえ)?!')
    RETURNING id INTO k_586_suara;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '弟', 'adik', 5, 54, 'Ada seseorang yang memakai <radical>tanduk</radical>, memegang <radical>busur</radical>, dan menuruni <radical>slide</radical> yang dipegang dengan <radical>tongkat</radical>. Tipe orang seperti apa yang kamu bayangkan? Menurutku, seseorang adalah anak laki-laki yang belum dewasa. Itu akan menjadi <kanji>adik</kanji>mu.', '<kanji>adik</kanji>mu sangat suka berdandan sehingga dia sekarang mulai <read>mewarnai</reading>ing (だい) rambutnya dengan berbagai macam warna.')
    RETURNING id INTO k_588_adik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '形', 'membentuk', 5, 55, 'Anda sedang berjalan di malam hari dan menemukan <radical>lentera</radical> yang seluruhnya ditutupi <radical>rambut</radical>, menjadikannya <kanji>bentuk</kanji> yang sangat aneh. Faktanya, ini adalah <kanji>bentuk</kanji> yang tidak pernah Anda duga akan dimiliki oleh lentera.', 'Anda menatap <kanji>bentuk</kanji> sampai Anda akhirnya mengenalinya: <reading>ca</reading>ke (けい)! Ya, kuenya berbulu dan bercahaya, tapi bentuknya tetap seperti sepotong kue besar.')
    RETURNING id INTO k_589_membentuk;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '来', 'datang', 5, 56, '<radikal>tanah</radikal> ditaburi <radikal>beras</radikal>, yang akan menyebabkan Predator <kanji>datang</kanji> karena dia menyukai nasi. Lalu setelah dia pergi, Predator <kanji>berikutnya</kanji> akan datang untuk makan.', 'Namun ketika mereka datang, mereka semua kecewa. Ternyata itu adalah butiran <read>rye</reading> (らい), dan butiran rye rasanya tidak enak. sial.')
    RETURNING id INTO k_590_datang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '社', 'perusahaan', 5, 57, 'Tanamkan <radikal>semangat</radikal> di <radikal>tanah</radikal> sebelum Anda memulai <kanji>perusahaan</kanji> Anda dan itu akan sukses. Itulah yang dilakukan oleh semua perusahaan besar Jepang di masa lalu. Itu sebabnya perusahaan seperti Mitsubishi telah ada selama ratusan tahun. Mereka menanamkan semangat untuk membantu perusahaan mereka tumbuh, dan perusahaan itu pun berkembang!', 'Dari mana Anda mengetahui metode pertumbuhan <kanji>perusahaan</kanji> ini? Tentu saja dari seorang <reading>sha</reading>man (しゃ). Dukun tidak hanya mengutarakan omong kosong, mereka tahu apa yang mereka bicarakan. Dan roh-roh ada di gang dukun mereka.')
    RETURNING id INTO k_591_perusahaan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '角', 'sudut', 5, 58, 'Radikal <radikal>sudut</radikal> dan kanji <kanji>sudut</kanji> adalah sama!', 'Untuk melihat sudut kanji tersebut dari setiap <kanji>sudut</kanji>, <reading>miringkan</reading> (かく) kepalamu ke samping.')
    RETURNING id INTO k_592_sudut;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '言', 'mengatakan', 5, 59, 'Kanji <radikal>katakan</radikal> dan kanji <kanji>katakan</kanji> adalah sama!', 'Jika Anda tidak yakin apa yang harus <kanji>ucapkan</kanji>, pikirkan saja tentang <reading>Gen</reading>ji (げん) dan tanyakan pada diri Anda, "Apa yang akan dikatakan Genji?"')
    RETURNING id INTO k_593_mengatakan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '谷', 'lembah', 5, 60, '<radical>Sirip</radical> menghiasi <radical>topi</radical>, dengan <radical>mulut</radical> (mungkin ikan) dijahit padanya. Siapa yang memakai topi aneh seperti ini? Ternyata, orang-orang <kanji>lembah</kanji>-lah yang memakai ini. Saya sedang berbicara tentang "Valley Girls" di Los Angeles, California. Mereka menyukai mode yang gila, dan mereka akan mengenakan apa saja jika dianggap "keren" atau semacamnya.', 'Bergaul dengan semua gadis <kanji>Lembah</kanji> di daerah cerah LA juga merupakan robot. Itu adalah kerabat jauh WALL-E (dan malas, bersantai), <reading>TAN-E</reading> (たに). Dia duduk-duduk berjemur di LA bersama Valley Girls sementara sepupunya memungut sampah.')
    RETURNING id INTO k_594_lembah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '走', 'berlari', 5, 61, 'Kata <radical>run</radical> dan kanji <kanji>run</kanji> sama persis!', 'Anda <kanji>berlari</kanji> dan berlari dan berlari dan tiba-tiba Anda merasakan <reading>sou</reading>l (そう) Anda meninggalkan tubuh Anda. Masih berlari, Anda berbalik dan melihat jiwa Anda berlari beberapa langkah di belakang Anda.')
    RETURNING id INTO k_595_berlari;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '近', 'di-dekat', 5, 62, 'Seseorang yang berada di <radical>skuter</radical> memiliki <radical>kapak</radical>, dan mereka <kanji>mendekati</kanji> dengan Anda dengan sangat cepat! Oh tidak, mereka <kanji>dekat</kanji> sekarang, kamu harus keluar dari sini!', 'Saat mereka <kanji>mendekat</kanji>, Anda mengenali siapa yang mengendarai skuter: <reading>Raja</reading>g (きん) dari Inggris! Di belakangnya, sekelompok pengawalnya yang juga mengendarai skuter dan memegang kapak muncul dan bergerak <kanji>mendekati</kanji> ke arah Anda.')
    RETURNING id INTO k_596_di_dekat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '里', 'kampung-halaman', 5, 63, '<radical>Desa</radikal> yang selalu Anda pikirkan pertama kali adalah <kanji>kampung halaman</kanji> Anda.', '<kanji>kampung halaman</kanji> Anda adalah tempat Anda <reading>duduk</reading> (さと), nostalgia menarik hati sanubari Anda di tengah persawahan dan tanah yang tak berujung.')
    RETURNING id INTO k_597_kampung_halaman;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '麦', 'gandum', 5, 64, 'Tahukah Anda apa yang sebenarnya melekat pada <radical>tulang rusuk</radical> Anda di <radical>musim dingin</radical>? <kanji>Gandum</kanji>! Tidak ada yang menandingi pola makan sehat berupa roti gandum, Wheaties, dan krim gandum yang dapat membantu Anda melewati bulan-bulan musim dingin yang sulit.', 'Saat Anda mengisi rumah Anda dengan <kanji>gandum</kanji>, rumah Anda mulai menjadi <read>lembab</reading> (むぎ). Anda berada di area kecil dan tertutup yang memanggang banyak roti dan merebus banyak air untuk membuat krim gandum, jadi wajar saja jika di sana mulai menjadi sangat lembab.')
    RETURNING id INTO k_598_gandum;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '学', 'belajar', 5, 65, 'Anda memiliki <radical>viking</radical> <radical>anak</radical> liar yang harus Anda jaga. Anehnya, dia tidak akan melakukan apa pun kecuali <kanji>belajar</kanji>. Anda tidak bisa membuatnya makan, menggunakan kamar mandi, atau apa pun. Dia hanya ingin belajar.', 'Anak viking gila ini yang lebih memilih <kanji>belajar</kanji> daripada menjarah (dan aktivitas viking lainnya)... viking lainnya hanya berhenti dan <reading>melotot</reading> (がく) ke arahnya ketika mereka lewat.')
    RETURNING id INTO k_599_belajar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '林', 'hutan', 5, 66, 'Anda memiliki <radical>pohon</radikal> dan <radikal>pohon</radikal> lainnya. Pada dasarnya Anda memiliki <kanji>hutan</kanji>!', 'Jadi, sekarang Anda memiliki <kanji>hutan</kanji> ini dan Anda ingin menebangnya (banyak uang!). Tapi, Anda tidak punya alat apa pun, hanya tangan Anda. Anda pikir... Saya sudah melakukan karate cukup lama, jadi saya mungkin bisa memotongnya seperti itu. Kamu mengambil posisi memotong, lalu lakukan seruan perangmu dan pukul: "<reading>HAYA... SHI******</reading> (はやし)!"')
    RETURNING id INTO k_600_hutan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '空', 'langit', 5, 67, 'Apa <radikal>lubang</radikal> terbesar dalam <radikal>konstruksi</radikal> di dunia? <kanji>Langit</kanji>. Kalau dipikir-pikir, langit itu seperti lubang besar yang lupa diisi oleh seseorang. Itu sebabnya kanji ini juga berarti <kanji>kosong</kanji>! Masuk akal — tidak ada yang lebih kosong daripada langit.', '<kanji>Langit</kanji> biasanya kosong hingga awan melakukan <reading>kudeta</reading> (くう). Pada dasarnya Anda dapat membayangkan langit sebagai tempat terjadinya kudeta seiring perubahan cuaca.')
    RETURNING id INTO k_601_langit;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '金', 'emas', 5, 68, 'Radikal <radikal>emas</radikal> dan kanji <kanji>emas</kanji> adalah sama!', '<kanji>emas</kanji> terbanyak di negeri ini adalah milik <reading>Kerabat</reading>g (きん) Inggris. Faktanya, Anda belum pernah benar-benar bertemu seseorang yang memiliki emas, semuanya langsung ke Raja setiap kali seseorang menemukannya. Anda hanya punya beberapa sen untuk dikerjakan.')
    RETURNING id INTO k_602_emas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '雨', 'hujan', 5, 69, 'Kata radikal untuk <radical>rain</radical> dan kanji untuk <kanji>rain</kanji> adalah hal yang sama.', 'Bagaimana jika <kanji>hujan</kanji> sebenarnya mencoba <reading>membidik</reading> (あめ) untuk Anda? Seperti halnya, tetesan air akan keluar dari jalur penerbangan normalnya hanya untuk mengenai kepala Anda? Anda akan jauh lebih basah, itu sudah pasti.')
    RETURNING id INTO k_603_hujan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '青', 'biru', 5, 70, 'Radikal <radikal>biru</radikal> dan kanji <kanji>biru</kanji> sama persis.

Selain itu, ini juga bisa berarti <kanji>muda</kanji>. Hal ini bisa kamu ingat karena generasi muda mempunyai potensi yang tak terbatas bagaikan langit biru!', 'Anda merasa sangat <kanji>biru</kanji>. Terutama karena kulit, rambut, dan mata Anda semuanya membiru. Itu adalah transformasi yang tiba-tiba! Tapi sekarang seseorang meletakkan tangannya di bahu Anda dan menunjuk ke <membaca>sa</reading>ber (せい) Anda. Warnanya biru juga! Anda tidak sendirian!')
    RETURNING id INTO k_604_biru;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '草', 'rumput', 5, 71, 'Anda menanam <radical>bunga</radical> di bawah sinar matahari <radical>matahari</radikal> dalam bentuk <radical>salib</radikal>, namun cuaca terlalu panas — matahari terlalu terik — dan Anda berakhir dengan <kanji>rumput</kanji>. Bunga tidak dapat tumbuh dalam kondisi seperti ini.', '<kanji>rumput</kanji> di atasnya berwarna coklat dan terbakar sinar matahari, jadi kamu perlu mengambil <read>gergaji keren</reading> (くさ) dan memotong bagian atasnya. Gergaji sebenarnya sejuk secara fisik saat disentuh, untuk membantu menyembuhkan bagian rumput yang terbakar sinar matahari. Kebetulan terlihat keren juga.')
    RETURNING id INTO k_605_rumput;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '音', 'suara', 5, 72, 'Untuk beberapa alasan, Anda <radical>berdiri</radical>berada di atas <radical>matahari</radical>. Ini jelas sangat panas, tapi hal yang paling Anda perhatikan adalah <kanji>suara</kanji> Anda terbakar.', '<kanji>suara</kanji> ini tidak hanya keras, tapi juga familier. Akhirnya Anda menempatkannya: <read>on</reading>ions (おん)!')
    RETURNING id INTO k_606_suara;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '夜', 'malam', 5, 73, 'Kanji <radikal>malam</radikal> dan kanji <kanji>malam</kanji> sama persis.', 'Kamu menelepon temanmu di <kanji>malam</kanji> dan berkata "<reading>Yo, Lou</reading> (よる)!"')
    RETURNING id INTO k_622_malam;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '豚', 'babi', 5, 74, 'Saat <radical>bulan</radical> cerah, mudah untuk melihat bahwa <radical>babi</radical> memang <kanji>babi</kanji>.', 'Legenda mengatakan bahwa jika Anda menangkap <kanji>babi</kanji> di bawah sinar bulan, ia akan memberi tahu Anda rahasianya. Benar saja, babi ini memberitahumu bahwa itu dari <reading>Bhuta</reading>n (ぶた).')
    RETURNING id INTO k_1309_babi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '斤', 'kapak', 5, 75, 'Radikal <radical>kapak</radikal> dan kanji <kanji>kapak</kanji> sama persis, dengan satu perbedaan kecil. Kanji ini juga digunakan sebagai <kanji>penghitung roti</kanji>, mungkin karena dulu roti sangat besar dan keras sehingga harus menggunakan kapak untuk mengirisnya.', 'Kamu membayangkan kembali ke masa lalu dengan sangat baik dan sekarang kamu terjebak menggunakan <kanji>kapak</kanji> untuk menjadi <kanji>penghitung roti</kanji> untuk <reading>Kin</reading>g (きん) di Inggris. Kamu tidak yakin dia raja yang mana atau kapan waktunya tiba, tapi dia kejam dan terus memakan semua roti yang kamu potong dengan kapak.')
    RETURNING id INTO k_8884_kapak;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_515_kakak, 'Kakak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_515_kakak, 'Kakak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_515_kakak, 'Kakak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_530_pengganti, 'Pengganti', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_530_pengganti, 'Mengganti', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_530_pengganti, 'Periode', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_530_pengganti, 'Usia', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_539_kulit, 'Kulit', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_565_mencampur, 'Mencampur', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_565_mencampur, 'Membaur', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_566_bertemu, 'Bertemu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_566_bertemu, 'Pertemuan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_567_lampu, 'Lampu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_567_lampu, 'Bersinar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_568_sama, 'Sama', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_569_kali, 'Kali', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_569_kali, 'Berputar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_570_banyak, 'Banyak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_570_banyak, 'Banyak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_570_banyak, 'Banyak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_571_benar, 'Benar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_571_benar, 'Benar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_571_benar, 'Kesuksesan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_572_setiap, 'Setiap', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_572_setiap, 'Setiap', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_574_beras, 'Beras', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_574_beras, 'Amerika', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_575_bulu, 'Bulu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_575_bulu, 'Bulu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_575_bulu, 'Sayap', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_575_bulu, 'Sayap', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_576_memikirkan, 'Memikirkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_576_memikirkan, 'Mempertimbangkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_577_daging, 'Daging', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_578_diri_sendiri, 'Diri sendiri', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_578_diri_sendiri, 'Diri', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_579_warna, 'Warna', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_580_pergi, 'Pergi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_581_barat, 'Barat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_582_apa, 'Apa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_583_tubuh, 'Tubuh', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_584_membuat, 'Membuat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_585_diagram, 'Diagram', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_586_suara, 'Suara', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_588_adik, 'Adik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_588_adik, 'Adik kecil', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_589_membentuk, 'Membentuk', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_589_membentuk, 'Membentuk', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_589_membentuk, 'Penampilan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_590_datang, 'Datang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_590_datang, 'Berikutnya', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_591_perusahaan, 'Perusahaan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_592_sudut, 'Sudut', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_592_sudut, 'Sudut', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_592_sudut, 'Tanduk', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_593_mengatakan, 'Mengatakan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_594_lembah, 'Lembah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_595_berlari, 'Berlari', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_596_di_dekat, 'Di dekat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_596_di_dekat, 'Menutup', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_597_kampung_halaman, 'kampung halaman', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_597_kampung_halaman, 'Desa', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_598_gandum, 'Gandum', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_598_gandum, 'Jelai', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_599_belajar, 'Belajar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_599_belajar, 'Mempelajari', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_599_belajar, 'Sedang belajar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_600_hutan, 'Hutan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_600_hutan, 'Belukar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_601_langit, 'Langit', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_601_langit, 'Kosong', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_602_emas, 'Emas', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_603_hujan, 'Hujan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_604_biru, 'Biru', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_604_biru, 'Muda', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_605_rumput, 'Rumput', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_605_rumput, 'Gulma', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_606_suara, 'Suara', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_622_malam, 'Malam', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_622_malam, 'Malam', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1309_babi, 'Babi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_8884_kapak, 'Kapak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_8884_kapak, 'Penghitung Roti Roti', false, true);

  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_515_kakak, 'きょう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_515_kakak, 'けい', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_515_kakak, 'あに', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_515_kakak, 'にい', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_530_pengganti, 'だい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_530_pengganti, 'たい', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_530_pengganti, 'か', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_530_pengganti, 'かわ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_530_pengganti, 'よ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_530_pengganti, 'しろ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_539_kulit, 'ひ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_539_kulit, 'かわ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_565_mencampur, 'こう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_565_mencampur, 'まじ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_565_mencampur, 'ま', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_565_mencampur, 'か', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_566_bertemu, 'かい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_566_bertemu, 'あ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_567_lampu, 'こう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_567_lampu, 'ひかり', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_567_lampu, 'ひか', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_568_sama, 'どう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_568_sama, 'おな', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_569_kali, 'かい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_569_kali, 'まわ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_570_banyak, 'た', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_570_banyak, 'おお', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_571_benar, 'とう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_571_benar, 'あ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_572_setiap, 'まい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_572_setiap, 'ごと', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_574_beras, 'べい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_574_beras, 'まい', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_574_beras, 'こめ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_575_bulu, 'はね', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_575_bulu, 'は', 'kunyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_575_bulu, 'わ', 'kunyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_575_bulu, 'う', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_576_memikirkan, 'こう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_576_memikirkan, 'かんが', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_577_daging, 'にく', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_578_diri_sendiri, 'じ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_578_diri_sendiri, 'し', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_578_diri_sendiri, 'みずか', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_579_warna, 'いろ', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_579_warna, 'しき', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_579_warna, 'しょく', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_580_pergi, 'こう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_580_pergi, 'ぎょう', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_580_pergi, 'い', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_580_pergi, 'おこな', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_580_pergi, 'ゆ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_581_barat, 'にし', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_581_barat, 'せい', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_581_barat, 'さい', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_582_apa, 'なに', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_582_apa, 'なん', 'kunyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_582_apa, 'か', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_583_tubuh, 'たい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_583_tubuh, 'てい', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_583_tubuh, 'からだ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_584_membuat, 'さく', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_584_membuat, 'さ', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_584_membuat, 'つく', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_585_diagram, 'ず', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_585_diagram, 'と', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_585_diagram, 'え', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_585_diagram, 'はか', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_586_suara, 'こえ', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_586_suara, 'せい', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_588_adik, 'だい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_588_adik, 'で', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_588_adik, 'てい', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_588_adik, 'おとうと', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_589_membentuk, 'けい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_589_membentuk, 'ぎょう', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_589_membentuk, 'かた', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_589_membentuk, 'かたち', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_590_datang, 'らい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_590_datang, 'く', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_590_datang, 'き', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_591_perusahaan, 'しゃ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_591_perusahaan, 'やしろ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_592_sudut, 'かく', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_592_sudut, 'かど', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_592_sudut, 'つの', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_593_mengatakan, 'げん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_593_mengatakan, 'ごん', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_593_mengatakan, 'い', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_593_mengatakan, 'こと', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_594_lembah, 'たに', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_594_lembah, 'や', 'kunyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_594_lembah, 'こく', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_594_lembah, 'せ', 'nanori', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_595_berlari, 'そう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_595_berlari, 'はし', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_596_di_dekat, 'きん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_596_di_dekat, 'こん', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_596_di_dekat, 'ちか', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_597_kampung_halaman, 'さと', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_597_kampung_halaman, 'り', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_598_gandum, 'むぎ', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_598_gandum, 'ばく', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_599_belajar, 'がく', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_599_belajar, 'まな', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_600_hutan, 'はやし', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_600_hutan, 'りん', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_601_langit, 'くう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_601_langit, 'そら', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_601_langit, 'あ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_601_langit, 'から', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_601_langit, 'す', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_602_emas, 'きん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_602_emas, 'こん', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_602_emas, 'かね', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_602_emas, 'かな', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_603_hujan, 'あめ', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_603_hujan, 'あま', 'kunyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_603_hujan, 'う', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_604_biru, 'せい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_604_biru, 'しょう', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_604_biru, 'あお', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_605_rumput, 'くさ', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_605_rumput, 'そう', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_606_suara, 'おん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_606_suara, 'おと', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_606_suara, 'ね', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_622_malam, 'よる', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_622_malam, 'よ', 'kunyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_622_malam, 'や', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1309_babi, 'ぶた', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1309_babi, 'とん', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_8884_kapak, 'きん', 'onyomi', true, true);

  -- 3. VOCABULARIES
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '入れる', 'untuk-menyisipkan', 5, 76, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji 入 berarti "masuk", namun kata ini tidak berarti "masuk" (yang telah Anda pelajari sebagai 入る). Meski begitu, arti 入れる masih berhubungan dengan arti kanji: artinya <vocabulary>to insert</vocabulary> atau <vocabulary>to put in</vocabulary>. Itu adalah sesuatu yang Anda lakukan pada objek lain, seperti memasukkan kunci ke dalam gembok, atau tangan Anda ke dalam sarung tangan.', 'Jika kosakatanya terdiri dari satu kanji ditambah beberapa okurigana (hiragana tertempel di akhir kanji), maka hampir selalu bacaannya adalah kun''yomi. Ini adalah salah satu dari dua bacaan kun''yomi yang akan Anda pelajari untuk kanji 入. Selama Anda mengetahui bahwa kosakata ini berarti <vocabulary>to insert</vocabulary>, Anda dapat menggunakannya untuk mengingat bacaannya juga. 

Bayangkan memasukkan tangan Anda ke dalam lubang dan sebuah <reading>ea</reading>gle (い) terbang keluar sambil berteriak: "<reading>い</reading>!" Ini adalah sesuatu yang terjadi setiap kali Anda memasukkan tangan Anda ke dalam sesuatu: seekor elang keluar. Anda tidak tahu kenapa.', 'Untuk Menyisipkan, Untuk Dimasukkan')
    RETURNING id INTO v_2481_untuk_menyisipkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '上がる', 'untuk-naik', 5, 77, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji berarti <kanji>di atas</kanji>, dan kata kerja ini berarti <vocabulary>naik</vocabulary> atau <vocabulary>naik</vocabulary>.

Ini adalah kata kerja intransitif, jadi tidak menggunakan objek langsung. Misalnya: Harga naik. Suhu meningkat. Melihat? Tidak ada objek langsung. Kamu bisa mengingatnya karena harga saham sepertinya selalu naik ketika kamu melihat <reading>gadis</reading> (がる) yang satu ini. Anda tidak tahu bagaimana gadis ini membuat harga saham naik, dia hanya melakukannya. Anggap saja dia sebagai gadis beruntungmu.', 'Karena kata ini memiliki okurigana (hiragana yang melekat pada kanji), Anda dapat menebak bahwa kata tersebut menggunakan bacaan kun''yomi. Anda telah mempelajari bacaan tersebut, namun inilah mnemonik jika Anda memerlukan penyegaran:

Anda tahu kata ini berarti <vocabulary>naik</vocabulary> atau <vocabulary>naik</vocabulary>. Bayangkan saja Anda naik ke udara, seperti melayang secara tiba-tiba. Apa yang akan kamu katakan? Anda mungkin akan berteriak "<ja><reading>Ah</reading></ja> (あ)!" saat Anda mulai naik. Anda tahu, karena terkejut. Naik ke atas? Ah!', 'Untuk Naik, Untuk Bangkit, Untuk Menjadi Lebih Tinggi')
    RETURNING id INTO v_2491_untuk_naik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '下がる', 'untuk-menjadi-lebih-rendah', 5, 78, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji berarti <kanji>di bawah</kanji>, dan 下がる berarti <vocabulary>menurunkan</vocabulary> atau <vocabulary>menurunkan</vocabulary>.

Ini adalah kata kerja intransitif, jadi tidak menggunakan objek langsung. Misalnya: Harga turun. Suhu turun. Melihat? Tidak ada objek langsung. Kamu dapat mengingat hal ini karena demammu selalu turun ketika <reading>gadis</reading> (がる) tertentu merawatmu. Bayangkan seorang gadis yang baik hati dan perhatian membuatkan Anda sup ayam dan memberi Anda obat-obatan dan sebagainya — demam Anda tidak punya pilihan selain <vocabulary>turun</vocabulary>. (Juga, gadis ini mungkin adalah ibumu.)', 'Karena kata ini memiliki okurigana (hiragana yang dilampirkan pada kanji), Anda tahu bahwa kemungkinan besar kata tersebut akan menggunakan bacaan kun''yomi. Mari kita gunakan mnemonik untuk mengingat bacaan kanji:

Tadinya Anda demam, namun kini suhu tubuh Anda mulai <vocabulary>menurun</vocabulary>. Mengapa? Karena Anda menggunakan <reading>gergaji</reading> (さ). Dengan gergaji terpercaya Anda, Anda melakukan pertumpahan darah dengan cara kuno, gaya dokter abad pertengahan, dan sekarang demam Anda benar-benar mulai turun. Sebenarnya, tekanan darah dan kadar oksigenmu juga turun… um, JAUH turun. Mungkin menggunakan gergaji ini bukanlah ide yang bagus…', 'Untuk Menjadi Lebih Rendah, Untuk Turun, Untuk Turun, Untuk Menggantung')
    RETURNING id INTO v_2494_untuk_menjadi_lebih_rendah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '出す', 'untuk-mengambil', 5, 79, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Anda sudah mengetahui bahwa 出る berarti "keluar", dan ini adalah versi transitifnya. Dengan kata lain, Anda sedang melakukan tindakan yang menyebabkan sesuatu yang lain keluar, jadi kata ini berarti <vocabulary>mengambil</vocabulary>. Saat Anda mengeluarkan sesuatu, Anda membuatnya keluar dari tempatnya sebelumnya, bukan?

出す adalah kata yang sangat serbaguna yang juga bisa berarti <vocabulary>menyerahkan</vocabulary> (tugas, misalnya), <vocabulary>membuang</vocabulary> sesuatu (seperti sampah atau mendaur ulang), atau <vocabulary>mengeluarkan</vocabulary> sesuatu (desahan, suara, atau bahkan cairan tubuh). Ini juga bisa menjadi istilah biasa untuk membayar sesuatu, karena Anda <em>mengeluarkan</em> uang tunai Anda dan menyerahkannya.', 'Pembacaan だ adalah bagian yang ingin Anda ingat di sini, jadi inilah mnemonik untuk membantu Anda:

Hal favorit yang <vocabulary>untuk diambil</vocabulary> adalah kartu kredit <reading>da</reading>d (だ) Anda. Anda mengeluarkannya kapan pun waktunya berbelanja - yang pada dasarnya selalu terjadi. Ayahmu tidak keberatan dengan hal ini, meskipun terkadang kamu membuat dia <vocabulary>meraung</vocabulary> ketika dia melihat laporan bulanannya. Terima kasih, Ayah - sayang kamu!', 'Untuk Mengambil, Untuk Menyerahkan, Untuk Memadamkan, Untuk Keluar')
    RETURNING id INTO v_2556_untuk_mengambil;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '生む', 'untuk-melahirkan', 5, 80, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti “hidup” jadi apa bentuk kata kerjanya? Apakah itu berarti "menjalani hidup"? Tidak, mungkin tidak. Dalam hal ini adalah <vocabulary>melahirkan</vocabulary>, atau <vocabulary>menghasilkan</vocabulary>.

Anda juga harus membedakan yang ini dari kata 生まれる. Ingatlah bahwa ketika Anda melahirkan, Andalah yang harus benar-benar <reading>memperkuat</reading> tubuh Anda dengan menemukan posisi yang tepat dan mendorong dengan sekuat tenaga yang dapat Anda kumpulkan. Sebaliknya, saat Anda dilahirkan, Anda hanya bisa berbaring di sana dan menikmati perjalanannya.', 'Anda harus mengingat bagian う dari kata ini untuk dapat membacanya. Anda sudah mempelajari bacaan ini dengan 生まれる, tapi berikut ini mnemonik untuk Anda kalau-kalau Anda lupa: 

Bayangkan diri Anda melahirkan, tetapi bukan bayi. Sebaliknya, ini adalah <reading>u</reading>ni (う) yang Anda sampaikan. Untungnya, universitas belum sepenuhnya terbentuk dengan duri-durinya saat lahir sehingga hal ini tidak menjadi masalah. Aduh! Sungguh melegakan!', 'Untuk Melahirkan, Untuk Menghasilkan')
    RETURNING id INTO v_2577_untuk_melahirkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '立てる', 'untuk-mempertahankan-sesuatu', 5, 81, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti "berdiri" dan ini berarti <vocabulary>mendirikan sesuatu</vocabulary>. Ini juga bisa berarti <vocabulary>untuk membuat sesuatu</vocabulary>, baik secara fisik, seperti mengeluarkan suara, maupun secara mental, seperti membuat rencana. 

Jangan bingung dengan 立つ. 立てる berarti Anda sedang mempertahankan sesuatu. Seperti dalam, "Saya berdiri sebagai figur aksi" atau "Saya akan mengibarkan bendera". Anda melakukan tindakan untuk hal lain.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda sudah mempelajari pembacaan kun''yomi untuk kanji ini dengan 立つ, jadi sebaiknya Anda segera melakukannya!', 'Untuk Mempertahankan Sesuatu, Untuk Membuat Sesuatu, Untuk Mengatur Sesuatu')
    RETURNING id INTO v_2587_untuk_mempertahankan_sesuatu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '分かる', 'untuk-memahami', 5, 82, 'Kata ini berarti <vocabulary>memahami</vocabulary>, yang mungkin akan mengejutkan Anda jika Anda ingat bahwa kanji 分 berarti <kanji>bagian</kanji>. Anggap saja seperti ini: untuk memahami sesuatu, Anda harus memecahnya menjadi beberapa bagian untuk melihat cara kerjanya.

Namun hati-hati, karena dalam bahasa Inggris Anda memahami sesuatu, dalam bahasa Jepang yang Anda pahami adalah subjek gramatikalnya (yaitu melakukan tindakan). Jadi, arti yang lebih harafiahnya adalah <vocabulary>agar dapat dimengerti</vocabulary>. Dengan kata lain, tidak ada objek, dan 分かる bersifat intransitif, artinya terjadi dengan sendirinya. Akhiran かる merupakan sebuah petunjuk, karena kata kerja dengan かる sebagai okurigana (kana ditambahkan ke kanji) biasanya bersifat intransitif.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda:

Setiap kali kamu mencoba <vocabulary>untuk memahami</vocabulary> sesuatu, kamu langsung berteriak "<reading>WAAAAAAAAAAHHHH</reading>" (わ). Ini membantu Anda fokus dan berkonsentrasi pada apa yang ingin Anda pahami, yang membuat semua orang di sekitar Anda kecewa. WAAAAAAAAAAHHHH.', 'Untuk Memahami, Agar Dapat Dimengerti')
    RETURNING id INTO v_2598_untuk_memahami;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '止まる', 'untuk-berhenti', 5, 83, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji berarti <kanji>berhenti</kanji>, jadi kata kerja 止まる berarti <vocabulary>berhenti</vocabulary>. 

Namun ini versi intransitif, jadi tidak mengambil objek langsung. Kereta berhenti, atau Anda berhenti di lampu merah. Melihat? Tidak ada objek langsung. Hal ini bisa kamu ingat karena sering kali kamu harus berhenti ketika melihat 丸 (まる) alias lingkaran. Coba pikirkan — lampu merah, simbol batal, dan rambu dilarang masuk semuanya adalah 丸. Bahkan tanda berhenti pun… semacam 丸?', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda mempelajari bacaan ini ketika mempelajari 止める, jadi Anda seharusnya sudah bisa membacanya!', 'Untuk Berhenti')
    RETURNING id INTO v_2613_untuk_berhenti;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '兄', 'kakak', 5, 84, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna. Ngomong-ngomong, ini menyiratkan bahwa itu adalah kakak laki-lakimu. Bukan milik orang lain.', 'Karena kata ini terdiri dari satu kanji, maka sebaiknya menggunakan bacaan kun''yomi. Anda belum mempelajari bacaan ini, jadi inilah mnemonik untuk membantu Anda:

<kosakata>kakak</vocabulary>mu berbeda dari milik orang lain. Dia memiliki kekuatan yang aneh... beberapa orang akan mengatakan kekuatan kekuatan. Tahukah kamu siapa namanya? Itu <reading>Ani</reading> (あに), kependekan dari Anikin... tunggu sebentar, apakah itu terdengar familier?', 'Kakak, Kakak, Kakak')
    RETURNING id INTO v_2620_kakak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '太字', 'surat-tebal', 5, 85, 'Menurut Anda apa itu <kanji>gemuk</kanji> <kanji>huruf</kanji>? Jika saya harus menebak, saya akan mengucapkan <vocabulary>huruf tebal</vocabulary>. Anda tahu, seperti <vocabulary>teks tebal</vocabulary> di layar.', 'Pembacaan yang satu ini agak aneh. Ini menggabungkan kun''yomi ふと dari 太 dengan on''yomi じ dari 字. Anda mempelajari kedua bacaan ini dengan kanji, jadi Anda akan baik-baik saja di sini. Anda hanya harus ingat itu adalah campuran aneh antara kun''yomi dan on''yomi. Itu membuat kata ini menonjol… seolah-olah ditulis dengan huruf tebal.', 'Surat Tebal, Teks Tebal, Berani')
    RETURNING id INTO v_2658_surat_tebal;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '見える', 'agar-terlihat', 5, 86, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>melihat</kanji>, dan 見える adalah <vocabulary>to be seen</vocabulary>, atau <vocabulary>to be in sight</vocabulary>, meskipun sering kali lebih alami diterjemahkan ke dalam bahasa Inggris sebagai <vocabulary>can see</vocabulary>. Ini digunakan ketika Anda tidak secara aktif bermaksud untuk melihat sesuatu, itu terjadi begitu saja.

Kata kerja ini juga bisa berarti <vocabulary>tampak</vocabulary>, ketika berbicara tentang cara Anda memandang sesuatu yang dapat Anda lihat.', 'Pembacaan kata ini sama dengan yang dipelajari dengan kanji (pembacaan kun''yomi). Jadi selama Anda mengetahuinya, Anda harus bisa membaca kata ini juga.', 'Agar Terlihat, Agar Terlihat, Bisa Melihat, Tampak')
    RETURNING id INTO v_2698_agar_terlihat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '皮', 'kulit', 5, 87, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.

皮 mengacu pada <kosakata>kulit</kosakata> sebagai sesuatu yang terpisah dari tubuh. Anda dapat menggunakan 皮 ketika kulit Anda mulai terkelupas karena terbakar sinar matahari, atau untuk kulit binatang ketika kulit tersebut terkelupas atau diubah menjadi <vocabulary>hide</vocabulary>. Anda juga dapat menggunakan 皮 untuk mendeskripsikan lapisan luar buah dan sayuran, seperti kulit apel atau <vocabulary>kulit</vocabulary> pisang.', 'Karena kata ini terdiri dari satu kanji, maka sebaiknya menggunakan bacaan kun''yomi. Anda belum mempelajari bacaan ini, jadi inilah mnemonik untuk membantu Anda:

Sebagai manusia (menurut kami), Anda memiliki banyak <kosakata>kulit</vocabulary>. Namun terkadang mandi biasa tidak cukup untuk membersihkan seluruh kulit tersebut. Apa yang Anda lakukan jika Anda tidak bisa memasukkan seluruh kulit Anda ke dalam pancuran atau bak mandi? Tentu saja kulit Anda dibersihkan di <reading>ca</reading>r <reading>wa</reading>sh!', 'Kulit, Bersembunyi, Mengupas')
    RETURNING id INTO v_2735_kulit;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '交ぜる', 'untuk-mencampur-sesuatu', 5, 88, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>mencampur</kanji> jadi versi kata kerjanya adalah <vocabulary>mencampur sesuatu</vocabulary>. 

Ini transitif, jadi Anda yang melakukan mixing. Dengan kata ini, hal-hal yang Anda campur masih dapat dibedakan satu sama lain. Dua jenis ikan di akuarium Anda, buku-buku dengan genre berbeda di rak Anda — hal-hal semacam itu.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Siapa yang selalu bilang jangan mencampur kaus kaki putih dan merah saat mencuci? Itu akan menjadi <reading>Ma</reading> Anda (ま).', 'Untuk Mencampur Sesuatu')
    RETURNING id INTO v_2740_untuk_mencampur_sesuatu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '会う', 'untuk-bertemu', 5, 89, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri artinya <kanji>bertemu</kanji> jadi bentuk kata kerjanya adalah <vocabulary>to meet</vocabulary> atau <vocabulary>to face</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Anda harus mengingat bagian あ tetapi mari sertakan う juga untuk bagian ini. Siapa yang paling ingin Anda <vocabulary>temui</vocabulary> dibandingkan orang lain? Pikirkan tentang hal ini. Lalu, bayangkan bertemu mereka. Hal pertama yang mereka lakukan adalah meraih lengan Anda dan mencubitnya. Anda berteriak "<reading>OW</reading>!" (あう) dan mereka tertawa dan lari.', 'Untuk Bertemu, Untuk Bertemu')
    RETURNING id INTO v_2742_untuk_bertemu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '光', 'lampu', 5, 90, 'Sama seperti kanjinya, kata ini juga berarti <vocabulary>light</vocabulary>. Dalam beberapa kasus, ini juga bisa merujuk pada <vocabulary>kilat</vocabulary> cahaya.

Ini adalah kata yang lebih umum untuk cahaya dibandingkan dengan 明かり, itulah sebabnya kata ini juga sering digunakan untuk sinar matahari.', 'Karena kata ini terdiri dari satu kanji, maka sebaiknya menggunakan bacaan kun''yomi. Saat mempelajari kanji, Anda tidak mempelajari bacaan tersebut, jadi inilah mnemonik untuk membantu Anda dengan kata ini:

Jika Anda bisa menyinari <vocabulary>light</vocabulary> hanya pada satu hal di dunia ini, tentu saja itu adalah <reading>hickory</reading> (ひかり) daging asap! Kenapa hickory? Karena tidak ada kayu lain yang menambahkan keseimbangan sempurna antara kedalaman manis dan berasap. Bukan kayu apel. Bukan maple. Hanya jenis hickory yang diasap yang layak mendapat sorotan!', 'Lampu, Kilatan')
    RETURNING id INTO v_2743_lampu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '月光', 'sinar-bulan', 5, 91, '<kanji>bulan</kanji> <kanji>cahaya</kanji> persis seperti apa bunyinya: <vocabulary>cahaya bulan</vocabulary>! Kata ini juga bisa merujuk pada <vocabulary>moonbeam</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Karena 月 mempunyai dua bacaan on''yomi, dan bacaan di sini berubah dari げつ menjadi げっ, berikut adalah mnemonik untuk membantu Anda mengingat cara membacanya:

Legenda mengatakan bahwa <vocabulary>cahaya bulan</vocabulary> memunculkan makhluk yang dikenal sebagai <reading>Geck光</reading> (げっこう), spesies tokek yang sulit ditangkap dan bersinar di bawah sinar bulan. Anda telah menghabiskan seluruh hidup Anda mencari tokek ini. Sekarang bayangkan menghabiskan malam sepi lagi dengan merangkak di hutan belantara yang diterangi cahaya bulan. Semua orang mengira kamu gila, tapi kamu tahu kamu akan menemukan Geck光 itu suatu hari nanti!', 'Sinar bulan, Cahaya bulan')
    RETURNING id INTO v_2745_sinar_bulan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '日光', 'sinar-matahari', 5, 92, 'Anda memiliki <kanji>matahari</kanji> <kanji>cahaya</kanji>. Cahaya macam apa ini? Tentunya <vocabulary>sinar matahari</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Karena pembacaan にち dari 日 menjadi にっ di sini, kami telah membuatkan mnemonik agar Anda dapat mengingat bacaan ini:

Tempat terbaik untuk <vocabulary>sinar matahari</vocabulary> di Jepang adalah <reading>Nikkō</reading> (にっこう). Ini adalah salah satu taman nasional terindah di Jepang, dan tempat sempurna untuk menikmati sinar matahari!', 'Sinar matahari')
    RETURNING id INTO v_2746_sinar_matahari;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '同じ', 'sama', 5, 93, 'Kata ini kanjinya <kanji>sama</kanji> dengan hiragana yang ditempelkan, dan juga berarti <vocabulary>sama</vocabulary>.

Ini agak aneh di antara kata sifat bahasa Jepang, karena Anda tidak memerlukan な atau い untuk melampirkannya ke kata benda. Jadi biasanya dianggap sebagai kata sifat な yang "khusus". Lihatlah kalimat konteks untuk melihatnya beraksi!', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Ketika Anda memikirkan kata "sama", pikirkan <kosakata>sama</vocabulary> <membaca>pemilik</reading> (おな). Anda sedang melihat sebuah restoran yang memiliki tanda bertuliskan, "Pemilik baru!" Namun, ketika Anda masuk, Anda melihat itu adalah pemilik buruk yang sama yang Anda ingat sebelumnya. Benar-benar pembohong.', 'Sama')
    RETURNING id INTO v_2747_sama;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '同日', 'hari-yang-sama', 5, 94, 'Anda memiliki <kanji>yang sama</kanji> <kanji>hari</kanji>, yang keluar pada <vocabulary>hari yang sama</vocabulary>.

Perhatikan bahwa kata ini cukup formal. Untuk mengucapkan <vocabulary>hari yang sama</vocabulary> dengan lebih santai, gunakan saja 同じ日 (おなじひ)!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Karena 日 mempunyai dua pembacaan on''yomi, berikut adalah mnemonik untuk membantu Anda mengingat mana yang harus digunakan:

Pada <vocabulary>hari yang sama</vocabulary>, Anda pernah makan dua buah <reading>dou</reading>ghnut utuh. <read>Wah, dua</reading> (どうじつ) di hari yang sama? Bagaimana rasanya?', 'Hari yang sama, Hari yang Sama')
    RETURNING id INTO v_2748_hari_yang_sama;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '〜回', 'kali', 5, 95, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya adalah bacaan on''yomi yang dipelajari dengan kanji. Ini mungkin karena kata ini biasanya dilekatkan pada angka, sehingga membuatnya lebih mirip jukugo. Jadi, Anda dapat memiliki １回, ２回, ３回, atau bahkan １００回 jika Anda menyukai hal semacam itu.', 'Kali, Jumlah Kali, Waktu')
    RETURNING id INTO v_2749_kali;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '回る', 'untuk-berputar', 5, 96, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>waktu</kanji>. Tidak ada kata kerja yang tepat untuk kata "kali" tetapi Anda mungkin dapat membayangkan sesuatu melakukan sesuatu berulang kali. Kata apa yang mewakili hal ini? Itu akan menjadi <vocabulary>berputar</vocabulary>, <vocabulary>berkeliling</vocabulary>, atau <vocabulary>berputar</vocabulary>.

Perlu diingat bahwa kata kerja ini bersifat intransitif, sehingga muncul dengan sendirinya. Sesuatu berputar atau berputar, dengan sendirinya.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Anda memiliki sekantong kenari yang Anda bawa ke rumah teman tetapi Anda tersandung dan menjatuhkan semuanya ke tanah. Anda berteriak, "<reading>Mah Wa</reading>lnuts! (まわ)" saat mereka mulai <vocabulary>berputar</vocabulary> di sekitar Anda di tanah. Bayangkan kenari Anda berkeliaran di sekitar Anda dan menjadi kotor.', 'Untuk Berputar, Untuk Berkeliling, Untuk Memutar')
    RETURNING id INTO v_2750_untuk_berputar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '一回', 'suatu-saat', 5, 97, '<kanji>Satu</kanji> <kanji>kali</kanji> adalah <vocabulary>satu kali</vocabulary>. Berapa kali? Hanya satu.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Perhatikan bahwa 一 disingkat (seperti yang sering terjadi) menjadi いっ.', 'Suatu Saat, Sekali')
    RETURNING id INTO v_2751_suatu_saat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '今回', 'kali-ini', 5, 98, '<kanji>sekarang</kanji> <kanji>waktu</kanji> adalah <vocabulary>saat ini</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kali ini')
    RETURNING id INTO v_2752_kali_ini;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '毎回', 'setiap-saat', 5, 99, '<kanji>Setiap</kanji> <kanji>waktu</kanji> sebenarnya hanyalah <vocabulary>setiap waktu</vocabulary>. Apakah pembacaan kanji Anda benar 毎回?', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Setiap Saat, Setiap Saat')
    RETURNING id INTO v_2753_setiap_saat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '多い', 'banyak', 5, 100, 'Ini adalah kanji tunggal dengan い di akhir, artinya Anda tahu itu mungkin kata sifat. Apa bentuk kata sifat dari <kanji>banyak</kanji>? Itu juga <vocabulary>banyak</vocabulary> (atau bisa dibilang <vocabulary>banyak</vocabulary>). Ngomong-ngomong, ada banyak sekali kanji yang harus dipelajari ya?', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Pikirkan sesuatu yang <vocabulary>banyak</vocabulary>. Tidak masalah apa pun asalkan Anda membayangkan jumlahnya yang konyol. Banyak dari mereka. Begitu banyak sehingga mereka mulai menyerbu dan menghancurkan Anda. Hal terakhir yang Anda teriakkan adalah "<reading>おお</reading>!!!" saat kamu hancur.', 'Banyak, Banyak, Banyak')
    RETURNING id INTO v_2754_banyak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '多分', 'mungkin', 5, 101, 'Anda memiliki <kanji>banyak</kanji> <kanji>bagian</kanji>. Lihatlah semuanya. Anda harus memilih salah satu bagian. Anda tidak dapat memutuskan mana yang Anda inginkan. Yang ini? <vocabulary>Mungkin</vocabulary>. Bagaimana dengan yang ini? Hmm, <vocabulary>mungkin</vocabulary> yang itu juga.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Mungkin, Mungkin, Mungkin')
    RETURNING id INTO v_2755_mungkin;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '当たる', 'menjadi-benar', 5, 102, 'Anda tahu ini adalah kata kerja karena diakhiri dengan bunyi う. Kanji untuk kata ini adalah <kanji>benar</kanji> atau <kanji>sukses</kanji>, lalu apa bentuk kata kerjanya? Ternyata itu banyak sekali. Tapi itu sebagian besar ketika semuanya berjalan baik. Seperti <vocabulary>menjadi benar</vocabulary> atau <vocabulary>menjadi tepat sasaran</vocabulary>. 

当たる bersifat intransitif, sehingga tidak mengambil objek langsung. Jawaban Anda benar, atau tembakan Anda tepat sasaran. Melihat? Tidak ada objek langsung.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak mempelajarinya dengan kanji ini, jadi inilah mnemonik untuk membantu Anda mengingat bagian あ.

Saat tebakanmu ternyata <vocabulary>benar</vocabulary>, kamu mau tidak mau berteriak, "<reading>Ah</reading> (あ)!" Itu "Ah" adalah seruan kemenanganmu.', 'Menjadi Benar, Agar Tepat Sasaran, Untuk Menyentuh, Untuk Memukul')
    RETURNING id INTO v_2756_menjadi_benar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '当たり', 'sebuah-kesuksesan', 5, 103, 'Ini adalah versi kata benda dari kanji <kanji>kanan</kanji>. Apa yang terjadi jika Anda mendapat "hak?" Anda mendapatkan <vocabulary>sukses</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Anda harus mengingat bagian あ dari kata ini untuk membacanya. Apa jawaban yang benar yang akan membuat Anda <vocabulary>sukses</vocabulary>? Itu adalah jawaban pertama, <reading>A</reading> (あ).', 'Sebuah Kesuksesan, Kesuksesan, Memukul, Tebakan')
    RETURNING id INTO v_2757_sebuah_kesuksesan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '毎月', 'setiap-bulan', 5, 104, '<kanji>Setiap</kanji> <kanji>bulan</kanji> adalah <vocabulary>setiap bulan</vocabulary> (seperti yang Anda ketahui dari semua kosakata yang berhubungan dengan bulan). Ini juga bisa berarti <vocabulary>bulanan</vocabulary>.', 'Kata ini mempunyai bacaan on''yomi untuk 毎 ditambah bacaan kun''yomi untuk 月. Itu membuatnya まいつき. Anda tahu cara membaca まい dengan cukup baik, jadi inilah mnemonik untuk mengingat bagian つき, untuk berjaga-jaga:

<vocabulary>Setiap bulan</vocabulary>, Anda membuat <reading>dua</reading> <reading>kunci</reading> (つき). Mengapa? Bayangkan Anda adalah pembuat kunci, dan dua kunci adalah kuota <vocabulary>bulanan</vocabulary> Anda. Kuota kuncinya sangat ringan, dua kunci, tapi itulah mengapa Anda bisa mencapainya setiap bulan.', 'Setiap Bulan, Bulanan')
    RETURNING id INTO v_2758_setiap_bulan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '毎日', 'setiap-hari', 5, 105, '<kanji>Setiap</kanji> <kanji>hari</kanji> adalah <vocabulary>setiap hari</vocabulary> (atau hanya <vocabulary>setiap hari</vocabulary>).', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Karena 日 mempunyai dua pembacaan on''yomi, berikut adalah mnemonik untuk membantu Anda mengingat mana yang harus digunakan:

<vocabulary>Setiap hari</vocabulary> Anda menonton program favorit Anda, <reading>My</reading> <reading>Nietzsche</reading> (まいにち). Ini adalah kartun <vocabulary>harian</vocabulary> tentang Nietzsche dan kehidupannya, yang Anda ikuti dengan setia. Oh betapa kamu mencintai Nietzsche.', 'Setiap hari, Sehari-hari')
    RETURNING id INTO v_2759_setiap_hari;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '毎年', 'setiap-tahun', 5, 106, 'Anda memiliki <kanji>setiap</kanji> dan <kanji>tahun</kanji> untuk digabungkan menjadi <vocabulary>setiap tahun</vocabulary> (<vocabulary>yearly</vocabulary> juga bisa digunakan).', 'Pembacaan untuk 毎 adalah apa yang Anda harapkan. Namun, bacaan untuk 年 adalah bacaan kun''yomi. Jadi, gunakan pengetahuan Anda tentang kosakata 年 untuk membantu diri Anda sendiri mengingat bacaan kata ini. Anda harus ingat bahwa bacaan untuk kata ini aneh agar bisa masuk ke dalam otak Anda.', 'Setiap Tahun, Tahunan, Setiap tahun, Setiap Tahun')
    RETURNING id INTO v_2760_setiap_tahun;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '米', 'beras', 5, 107, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna. 

Perhatikan bahwa kata ini merujuk pada butiran beras lebih dari sekedar makanan. Jika Anda makan nasi saat makan, Anda akan menyebutnya ごはん. Ini seperti ketika Anda berbicara tentang padi di sawah atau bulir padi atau semacamnya.', 'Karena kata ini terdiri dari satu kanji, maka sebaiknya menggunakan bacaan kun''yomi. Saat mempelajari kanji, Anda tidak mempelajari bacaan tersebut, jadi inilah mnemonik untuk membantu Anda dengan kata ini: 

"Semuanya, kami punya nasi! <reading>Ayo</reading> (こめ) dan ambil!"', 'Beras')
    RETURNING id INTO v_2762_beras;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '羽', 'bulu', 5, 108, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Karena kata ini terdiri dari satu kanji tanpa ada yang melekat, maka kata ini menggunakan bacaan kun''yomi. Anda mempelajari bacaan ini dengan kanji, jadi Anda seharusnya bisa membaca ini.', 'Bulu, Bulu, Sayap, Sayap')
    RETURNING id INTO v_2763_bulu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '考える', 'untuk-dipikirkan', 5, 109, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>berpikir</kanji>, jadi versi kata kerjanya adalah <vocabulary>to think about</vocabulary> atau <vocabulary>to mempertimbangkan</vocabulary>. 

Perhatikan bahwa ini bukan "berpikir" yang seperti "Saya pikir dia adalah seorang power ranger." Tidak, ini lebih seperti tindakan berpikir sebenarnya. Itu sebabnya kata ini adalah "berpikir tentang" atau "mempertimbangkan" dan bukan "berpikir" yang biasa yaitu 思う.', 'Satu-satunya hal yang dapat <vocabulary>pikirkan</vocabulary> adalah <reading>kanga</reading>roos (かんが). Anda mempunyai begitu banyak pertanyaan terkait kanguru yang <vocabulary>perlu dipertimbangkan</vocabulary>: Mengapa mereka melompat ke mana-mana? Apakah mereka benar-benar pandai bertinju? Apa isi kantong itu? Begitu banyak hal yang perlu dipikirkan.', 'Untuk Dipikirkan, Untuk Dipertimbangkan, Untuk Memberikan Pemikiran')
    RETURNING id INTO v_2765_untuk_dipikirkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '肉', 'daging', 5, 110, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Beruntungnya bagi Anda, kata ini menggunakan bacaan on''yomi yang Anda pelajari meskipun hanya berupa satu kanji saja. Jadi, kamu harusnya sudah mengetahuinya!', 'Daging')
    RETURNING id INTO v_2767_daging;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '牛肉', 'daging-sapi', 5, 111, 'Apa yang Anda sebut <kanji>sapi</kanji> <kanji>daging</kanji>? Anda menyebutnya <vocabulary>daging sapi</vocabulary> (makan malamnya apa?).', 'Kedua bacaan untuk kedua kanji tersebut adalah bacaan yang kamu pelajari dengan kanji tersebut jadi kamu harus bisa membaca ini.', 'Daging sapi')
    RETURNING id INTO v_2768_daging_sapi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '皮肉', 'ironi', 5, 112, '<kanji>kulit</kanji> pada <kanji>daging</kanji> seperti kulit terluar. Itu tidak terlalu bagus, dan orang yang hanya makan kulit daging cenderung menggunakan <vocabulary>sarcasm</vocabulary> dan <vocabulary>irony</vocabulary>. Meski begitu, orang Jepang tidak terlalu memahami sarkasme. Jadi mungkin itu sebabnya "kulit daging" berarti "sarkasme". Apakah ini ironis? Sekarang aku bahkan tidak yakin.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Ironi, Sarkasme, Ironis, Sarkastik')
    RETURNING id INTO v_2769_ironi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '自分', 'diri', 5, 113, '<kanji>diri</kanji> <kanji>bagian</kanji> seseorang, bagaimanapun juga, tetaplah <vocabulary>dirinya sendiri</vocabulary>. Dan bagian dari diriku adalah, <vocabulary>diriku sendiri</vocabulary>. Setiap orang mempunyai bagian dari dirinya masing-masing. Cukup mudah.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Diri, Saya sendiri, Diri sendiri')
    RETURNING id INTO v_2770_diri;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '自立', 'kemerdekaan', 5, 114, 'Dengan<kanji>diri</kanji> Anda sendiri, Anda berhasil <kanji>berdiri</kanji>. Tidak ada yang membantumu. Anda berdiri sendiri, dan Anda benar-benar menunjukkan <kosakata>kemandirian</vocabulary> Anda dalam prosesnya!

自立 pada dasarnya mengacu pada <kosakata>kemandirian</vocabulary> dan <vocabulary>otonomi</vocabulary> seseorang — kemampuan mereka untuk berdiri sendiri, membuat keputusan, dan bertindak secara mandiri (berlawanan dengan kemandirian politik suatu negara atau sesuatu).', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kemerdekaan, Kemandirian, Otonomi')
    RETURNING id INTO v_2771_kemerdekaan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '色', 'warna', 5, 115, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Karena kata ini terdiri dari satu kanji, maka menggunakan bacaan kun''yomi. Ini adalah bacaan yang Anda pelajari dengan kanji, jadi nikmatilah.', 'Warna')
    RETURNING id INTO v_2772_warna;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '色々', 'bermacam-macam', 5, 116, 'Karakter 々 hanya mengulang kanji sebelumnya. Dengan kata lain: <kanji>warna</kanji>, <kanji>warna</kanji>! Tapi coba pikirkan secara kiasan, di sini — sesuatu dengan banyak warna berbeda seperti ini juga bisa dideskripsikan sebagai <vocabulary>berbagai</vocabulary>, dan itulah arti sebenarnya dari kata ini. 

色々 dulunya berarti berbagai macam warna, namun seiring berjalannya waktu berkembang menjadi kata yang lebih umum untuk beragam variasi sesuatu. Anda akan sering melihatnya sebagai kata sifat, seperti 色々な人 (berbagai orang), namun kata ini juga muncul ketika berbicara tentang pengalaman atau tindakan yang beragam, seperti dalam 色々あったね (banyak yang terjadi) atau 色々考えた (Saya memikirkannya dengan berbagai cara). Cocok sekali karena kata ini mempunyai kegunaan yang beragam, ya?', 'Pembacaan kanji ini hanyalah pembacaan kun''yomi sebanyak dua kali. Karena Anda sudah mempelajari bacaan kun''yomi, Anda seharusnya bisa membaca kata ini juga. Tidak ada yang rumit tentang hal itu.', 'Bermacam-macam, Beragam')
    RETURNING id INTO v_2773_bermacam_macam;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '水色', 'langit-biru', 5, 117, 'Anda mungkin mengira <kanji>air</kanji> <kanji>warna</kanji> ada hubungannya dengan cat air, namun ternyata tidak. Tidak, ini ada hubungannya dengan warna air, yang ironisnya adalah <vocabulary>sky blue</vocabulary> dalam bahasa Inggris. <vocabulary>Biru muda</vocabulary> juga bisa digunakan.', 'Bacaan kata ini terdiri atas bacaan kun''yomi <kanji>水</kanji> dan bacaan kun''yomi <kanji>色</kanji>. Untuk 水 Anda akan mengetahui bacaan ini melalui studi kosakata Anda. Untuk 色 kebetulan itu adalah bacaan yang Anda pelajari dengan kanji.', 'Langit Biru, Biru muda, Aqua Biru')
    RETURNING id INTO v_2774_langit_biru;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '行く', 'untuk-pergi', 5, 118, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>pergi</kanji> jadi bentuk kata kerjanya adalah <vocabulary>to go</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Anda harus mengingat bagian い. Untuk mengingat い kita menggunakan kata "elang". 

Anda ingin <vocabulary>pergi</vocabulary> ke suatu tempat (ke mana saja!) namun Anda tidak bisa. Sebuah <read>ea</reading>gle (い) menghalangi jalan Anda. Anda mencoba untuk maju dan ia membuka sayapnya dan menggigit Anda. Anda mencoba untuk kembali dan ia melompat ke arah Anda. Tidak ada tempat bagimu untuk pergi jika elang ini berdiri di sana.', 'Untuk Pergi')
    RETURNING id INTO v_2775_untuk_pergi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '行き', 'arah-kereta-api', 5, 119, 'Ini adalah kata yang aneh. Sebut saja itu luar biasa. Anda akan melihat ini khususnya di stasiun kereta. Anda tahu kanji artinya <kanji>pergi</kanji>. Jadi, ada sesuatu yang terjadi di suatu tempat. Sekarang gunakan saja き untuk membantumu mengingat bahwa kata ini berarti <vocabulary>arah kereta</vocabulary> (alias memberitahukan arah mana kereta pergi), karena kata ini adalah kunci (き) agar kamu mengetahui arah tujuanmu agar tidak tersesat. Anda juga dapat mengingat kata ini sebagai "<vocabulary>bound for</vocabulary>" alias "Bound for Tokyo Station".', 'Pembacaan juga merupakan pengecualian. Bisa saja いき, namun kita fokus pada pembacaan ゆき. Anda harus mengingat bagian ゆ, jadi pikirkan seperti ini: 

Coba pikirkan tentang <vocabulary>arah kereta</vocabulary> yang <reading>Anda</reading> (ゆ) harus tuju. Ini semua tentang Anda. Bukan temanmu atau orang lain. Anda. Anda adalah orang terpenting di stasiun kereta ini.', 'Arah Kereta Api, Terikat Untuk')
    RETURNING id INTO v_2777_arah_kereta_api;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '西', 'barat', 5, 120, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Karena kata ini terdiri dari satu kanji, maka sebaiknya menggunakan bacaan kun''yomi. Anda telah mempelajari cara membaca tersebut dengan kanji, namun berikut adalah penyegaran mnemonik untuk berjaga-jaga: 

Anda pergi ke <vocabulary>barat</vocabulary>. Bahkan itu adalah Wild West. Tidak banyak orang di sini, sehingga mudah untuk menemukan <reading>niche</reading> (にし) untuk bisnis minyak ular Anda.', 'Barat')
    RETURNING id INTO v_2778_barat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '何千', 'ribuan', 5, 121, '<kanji>Berapa</kanji> <kanji>seribu</kanji>? Bisa lima ribu, dua ribu, atau sepuluh ribu, sesuai permintaan Anda. Mari kita menggeneralisasi. Bagaimana cara menyebutkan semua jumlah tersebut secara bersamaan? Anda mengucapkan "<vocabulary>ribuan</vocabulary>."

Kalau ini digunakan dalam sebuah pertanyaan, bisa juga berarti <vocabulary>berapa ribu</vocabulary>?', 'Bacaannya adalah kun''yomi なん untuk 何 dan bacaan rendaku on''yomi untuk 千 (ぜん) digabungkan menjadi satu. Itu salah satu kata aneh yang memadukan bacaan on''yomi dan kun''yomi.', 'Ribuan, Beberapa Ribu, Berapa Ribuan')
    RETURNING id INTO v_2780_ribuan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '何', 'apa', 5, 122, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Pembacaan kata ini sama dengan pembacaan yang Anda pelajari dengan kanji. Apa? Ya, itulah yang terjadi.

Perhatian: Pembacaan utama untuk 何 adalah なに, namun dibaca sebagai なん dalam situasi tertentu. Pada akhirnya Anda akan terbiasa membaca mana yang akan digunakan ketika Anda lebih sering menemukan kata ini, jadi jangan terlalu khawatir tentang hal itu dan teruslah belajar!', 'Apa')
    RETURNING id INTO v_2781_apa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '何人', 'berapa-banyak-orang', 5, 123, 'Saat Anda bertanya <kanji>apa</kanji> <kanji>orang</kanji> Anda sebenarnya tidak bertanya "orang apa?" Anda menanyakan <vocabulary>berapa banyak orang</vocabulary>. Satu hal yang akan Anda perhatikan dalam bahasa Jepang dan kanji adalah bahwa 何, jika ditambahkan ke kata lain, sering kali berarti "berapa _____" daripada "apa ____". Hanya sesuatu yang harus Anda ketahui dan alami sedikit untuk dipahami, tetapi Anda akan melakukannya, saya percaya pada Anda.', 'Kata ini menggunakan bacaan kun''yomi untuk 何 dan bacaan on''yomi untuk 人. Karena 何 dan 人 keduanya memiliki dua bacaan, berikut adalah mnemonik untuk membantu Anda mengingat mana yang harus digunakan:

<vocabulary>Berapa banyak orang</vocabulary> yang makan <reading>naan</reading> di <reading>Nin</reading>tendo (なんにん)? Anda ditugaskan menghitung semua orang yang makan naan untuk makan siang di Nintendo, jadi sebaiknya Anda mulai!', 'Berapa Banyak Orang')
    RETURNING id INTO v_2782_berapa_banyak_orang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '何月', 'bulan-apa', 5, 124, 'Anda memiliki <kanji>apa</kanji> <kanji>bulan</kanji> - seperti dalam: <vocabulary>bulan apa</vocabulary> itu? Itu １０月, bodoh. Carilah pekerjaan, hippy.', 'Kata ini menggunakan bacaan kun''yomi untuk 何 dan bacaan on''yomi untuk 月. Anda mempelajari bacaan tersebut dengan kanji, tetapi karena 何 dan 月 keduanya memiliki dua bacaan, berikut ini mnemonik untuk membantu Anda:

<vocabulary>Bulan apa</vocabulary> yang akan kamu pilih untuk mendapatkan <reading>naan</reading> <reading>nyali</reading> (なんがつ)? Anda harus memilih satu bulan untuk menikmati naan sampai isi perut Anda benar-benar kenyang. Namun <vocabulary>bulan apa</vocabulary> yang akan Anda pilih? Pikirkanlah!

Catatan: 何月 bukanlah nama bulan tertentu, namun sebagai kata tanya, ia <em>menanyakan</em> bulan tertentu di kalender — itulah sebabnya がつ digunakan di sini.', 'Bulan Apa, Bulan yang mana')
    RETURNING id INTO v_2783_bulan_apa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '何日', 'berapa-hari', 5, 125, '<kanji>Apa</kanji> <kanji>hari</kanji> sama dengan terjemahan yang cukup jelas "<vocabulary>hari apa</vocabulary>." Namun, ini juga berarti <vocabulary>berapa hari</vocabulary>.', 'Ini adalah kata jukugo, yang biasanya berarti pembacaan on''yomi dari kanjinya, namun 何 sebenarnya menggunakan pembacaan kun''yomi di sini! Dan karena 日 memiliki dua bacaan on''yomi, berikut adalah mnemonik untuk membantu Anda mengingat bacaan ini:

<vocabulary>Berapa hari</vocabulary> yang Anda perlukan untuk memanggang <reading>naan</reading> <reading>Nietzsche</reading> (なんにち)? Tidak mudah untuk membuat Nietzsche seluruhnya dari naan, jadi saya bertanya-tanya berapa hari yang dibutuhkan.', 'Berapa hari, Hari apa, Hari apa')
    RETURNING id INTO v_2784_berapa_hari;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '何年', 'tahun-berapa', 5, 126, 'Anda memiliki kanji <kanji>apa</kanji> dan <kanji>tahun</kanji>, seperti dalam: "<vocabulary>tahun berapa</vocabulary> ini?" 

Ini juga berarti <vocabulary>berapa tahun</vocabulary> juga, tergantung konteksnya. Seperti dalam: "<vocabulary>Berapa tahun</vocabulary> Anda bermain sepak bola?"', 'Bacaannya sama-sama merupakan bacaan yang Anda pelajari dengan kanji terpisah, artinya Anda harus mengetahuinya. Sudah berapa tahun kamu mempelajari kanji sekarang? Anda harus bisa membaca yang ini.', 'Tahun berapa, Berapa tahun')
    RETURNING id INTO v_2785_tahun_berapa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '何回', 'berapa-kali', 5, 127, '<kanji>Jam</kanji> <kanji>jam berapa</kanji>? Ini tidak masuk akal. Satu hal yang akan Anda perhatikan dalam bahasa Jepang dan kanji adalah bahwa 何, jika ditambahkan ke kata lain, sering kali berarti "berapa _____" daripada "apa ____". Hanya sesuatu yang harus Anda ketahui dan alami sedikit untuk dipahami, tetapi Anda akan melakukannya, saya percaya pada Anda. Jadi, untuk yang ini <vocabulary>berapa kali</vocabulary>.', 'Ini merupakan kata jukugo yang bacaannya sedikit unik, dimana kanji pertama menggunakan bacaan kun''yomi dan kanji kedua menggunakan bacaan on''yomi. Anda pernah melihat bacaan ini sebelumnya, jadi Anda seharusnya bisa membacanya dengan baik.', 'Berapa kali')
    RETURNING id INTO v_2786_berapa_kali;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '学ぶ', 'untuk-belajar', 5, 128, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji sendiri berarti <kanji>belajar</kanji> atau <kanji>belajar</kanji>. Ketika Anda melakukan hal-hal ini, apa yang akhirnya terjadi? Anda belajar. Itu sebabnya kata ini berarti <vocabulary>belajar</vocabulary>. 

Ada kata lain yang berarti "belajar" yang lebih umum digunakan, yaitu 習う. Anda akan mempelajarinya nanti. 学ぶ terdengar sedikit lebih serius dibandingkan dengan 習う, jadi ingatlah hal itu saat Anda menggunakannya.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Anda harus mengingat bagian まな untuk mempelajari cara membaca kata ini. Pikirkan tentang kelas yang Anda ambil. Ini adalah kelas tata krama, dan Anda berada di sana <vocabulary>untuk mempelajari</vocabulary> <reading>manner</reading> (まな). Bayangkan pembelajaran tentang tata krama ini dan bayangkan diri Anda mempraktikkannya.', 'Untuk Belajar, Untuk Belajar Secara Mendalam, Untuk Belajar')
    RETURNING id INTO v_2787_untuk_belajar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '学生', 'murid', 5, 129, 'Siapa yang memiliki <kanji>studi</kanji> <kanji>kehidupan</kanji>? Hanya satu orang yang saya kenal, dan itu adalah <vocabulary>siswa</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Murid')
    RETURNING id INTO v_2788_murid;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '学年', 'kelas-sekolah', 5, 130, '<kanji>belajar</kanji> <kanji>tahun</kanji> Anda seperti tahun-tahun yang Anda pelajari. Dimana kamu belajar? Sekolah. Berapa tahun belajar di sekolah? Ini adalah <vocabulary>nilai sekolah</vocabulary> Anda.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kelas Sekolah, Kelas Di Sekolah, Tahun Ajaran, Tahun Di Sekolah')
    RETURNING id INTO v_2789_kelas_sekolah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '入学', 'penerimaan-sekolah', 5, 131, 'Anda <kanji>masuk</kanji> ke dalam <kanji>belajar</kanji> (tempat). Kapan ini terjadi? Itu terjadi ketika Anda diterima di suatu sekolah, alias <vocabulary>penerimaan sekolah</vocabulary>, <vocabulary>penerimaan universitas</vocabulary>, atau <vocabulary>masuk ke sekolah</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Penerimaan Sekolah, Penerimaan Universitas, Masuk Ke Sekolah, Pendaftaran')
    RETURNING id INTO v_2790_penerimaan_sekolah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '工学', 'rekayasa', 5, 132, 'Seseorang dengan <kanji>studi</kanji> tentang <kanji>industri</kanji> adalah seseorang yang menciptakan sesuatu. Itu adalah studi tentang <vocabulary>engineering</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Rekayasa')
    RETURNING id INTO v_2791_rekayasa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '大学', 'universitas', 5, 133, 'Apa <kanji>studi</kanji> besar</kanji> itu? Jika saya harus memilih, saya mungkin akan mengatakan ini adalah <vocabulary>college</vocabulary> atau <vocabulary>university</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Karena 大 mempunyai dua pembacaan on''yomi, berikut adalah mnemonik untuk membantu Anda mengingat mana yang harus digunakan:

<vocabulary>Universitas</vocabulary> Anda terkenal dengan <reading>pewarna</reading> <reading>gawk</reading>ing (だいがく). Ini adalah olahraga yang membuat Anda terpesona dengan pewarna, dan universitas Anda adalah yang terbaik dalam hal itu! Universitas lain mungkin terkenal dengan tim sepak bola atau bola basketnya, tetapi universitas Anda adalah yang terbaik dalam hal melongo.', 'Universitas, Kampus, Universitas')
    RETURNING id INTO v_2792_universitas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '休学', 'absen-dari-sekolah', 5, 134, 'Saat kamu <kanji>beristirahat</kanji> dari <kanji>sekolah</kanji> kamu mengambil <vocabulary>absen dari sekolah</vocabulary>. Ini hanya untuk ketidakhadiran yang sangat lama, bukan sehari atau seminggu, tapi berbulan-bulan atau bertahun-tahun. Anggap saja seperti mengambil cuti panjang dari sekolah.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Absen Dari Sekolah, Ketidakhadiran Sekolah')
    RETURNING id INTO v_2793_absen_dari_sekolah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '林', 'hutan', 5, 135, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Karena kata ini terdiri dari satu kanji maka menggunakan bacaan kun''yomi. Anda sudah mempelajari bacaan ini dengan kanji, jadi Anda seharusnya bisa membaca ini.', 'Hutan, Belukar')
    RETURNING id INTO v_2794_hutan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '空気', 'udara', 5, 136, '<kanji>langit</kanji> <kanji>energi</kanji>... pernah dikenal sebagai esensi mistis yang menghalangi kita terbang ke luar angkasa. Sekarang kita tahu bahwa ini adalah <vocabulary>udara</vocabulary>. Namun bisa juga berarti <vocabulary>atmosphere</vocabulary>, karena itulah yang disebut dengan sekumpulan udara antara bumi dan luar angkasa. ここの空気はいいね！

Secara kiasan, ini juga bisa merujuk pada <vocabulary>suasana hati</vocabulary> yang ada di udara atau ruangan, namun bukan suasana hati orang tertentu!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Udara, Suasana, Suasana hati')
    RETURNING id INTO v_2795_udara;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '空', 'langit', 5, 137, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Karena kata ini terdiri dari satu kanji, maka sebaiknya menggunakan bacaan kun''yomi. Saat mempelajari kanji, Anda tidak mempelajari bacaan tersebut, jadi inilah mnemonik untuk membantu Anda dengan kata ini: 

Di langit, Anda adalah penguasanya. Anda dikenal sebagai "Yang <reading>melambung</reading>!" (そら). Bayangkan lagu tema Anda dan pastikan lagu tersebut menyertakan "langit yang lebih tinggi" atau sesuatu yang mengagumkan seperti itu.', 'Langit')
    RETURNING id INTO v_2796_langit;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '金', 'emas', 5, 138, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Karena kata ini terdiri dari satu kanji, biasanya Anda mengira kata tersebut menggunakan bacaan kun''yomi. Tapi bukan kata ini. Itu masih menggunakan bacaan on''yomi, yang Anda pelajari dengan kanji. Namun, jangan bingung antara yang satu ini dengan お金. Yang itu menggunakan kun''yomi yang lho karena ada hiragana yang terpasang.', 'Emas')
    RETURNING id INTO v_2797_emas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '金玉', 'testis', 5, 139, 'Anda memiliki beberapa <kanji>emas</kanji> <kanji>bola</kanji>. Bola apa yang lebih penting daripada bola lainnya, setidaknya bagi seorang pria? Itu akan menjadi <vocabulary>testis</vocabulary> miliknya. 

Kata ini muncul karena kulit skrotum tanuki digunakan untuk menumbuk emas menjadi lembaran. Skrotum Tanuki rupanya sangat pandai dalam hal ini karena sangat kuat dan sangat fleksibel. Aneh ya? Itu sebabnya Bola Emas = testis.

Seperti yang mungkin sudah Anda duga, kata ini adalah kata slang dan Anda mungkin ingin menghindari penggunaannya di dokter! Itu adalah kata lucu yang digunakan dalam situasi santai.', 'Kata ini menggunakan on''yomi untuk 金 dan kun''yomi untuk 玉. Jika Anda tahu cara membaca kanji Anda, Anda juga akan tahu cara membacanya.', 'testis')
    RETURNING id INTO v_2798_testis;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', 'お金', 'uang', 5, 140, 'お adalah sebuah kehormatan yang membuat kata ini sedikit lebih mewah. Ketika Anda berbicara tentang uang, Anda pasti mewah. Jadi, pada dasarnya Anda mengatakan "emas" dengan cara yang lebih baik. Apa yang dimaksud dengan emas pada masa itu? Itu adalah <vocabulary>uang</vocabulary>.', 'Pembacaan 金 berbeda dengan yang Anda pelajari dengan kanji. Masuk akal karena ini adalah kanji tunggal dengan hiragana terlampir. Berikut ini mnemonik untuk membantu Anda: 

Anda telah menghemat banyak uang. Dengan itu Anda akan membeli sesuatu yang luar biasa. Lalu, tiba-tiba seseorang memukul lutut Anda dengan tongkat pemukul. Sekarang kamu harus menghabiskan seluruh <vocabulary>uang</vocabulary> kamu untuk membeli <reading>tongkat</reading> (かね). Kasian buat kamu :(', 'Uang')
    RETURNING id INTO v_2799_uang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '雨', 'hujan', 5, 141, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Karena kata ini terdiri dari satu kanji maka menggunakan bacaan kun''yomi. Beruntungnya Anda, Anda mempelajari bacaan ini dengan kanji.', 'Hujan')
    RETURNING id INTO v_2800_hujan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '青い', 'biru', 5, 142, 'Ini adalah kanji tunggal dengan い di akhir, artinya Anda tahu itu mungkin kata sifat. Apa bentuk kata sifat dari <kanji>biru</kanji>? Masih <vocabulary>biru</vocabulary>! Ini juga bisa berarti <vocabulary>mentah</vocabulary>, yang mungkin terdengar membingungkan, namun hal ini disebabkan oleh fakta bahwa dalam bahasa Jepang ada beberapa kesamaan antara biru dan hijau. Jadi meskipun dalam bahasa Inggris kita menganggap lampu lalu lintas "pergi" dan pisang mentah sebagai "hijau", dalam bahasa Jepang keduanya disebut "biru".', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Anda harus mengingat bagian あお untuk membaca kata ini. Pikirkan benda-benda <vocabulary>biru</vocabulary> di tubuh Anda. Itu adalah memar. Sentuh mereka. Apa yang akan kamu katakan? <membaca>Aduh!</membaca> (あお).', 'Biru, Mentah')
    RETURNING id INTO v_2801_biru;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '青年', 'anak-muda', 5, 143, 'Seseorang yang berada di <kanji>muda</kanji> <kanji>tahun</kanji> adalah <vocabulary>remaja</vocabulary>, atau <vocabulary>pemuda</vocabulary>. 

青年 mengacu pada <kosakata>dewasa muda</vocabulary>, biasanya di akhir masa remaja hingga awal dua puluhan. Kata ini netral gender dalam konteks hukum atau resmi, namun dalam penggunaan sehari-hari 青年 biasanya mengacu pada laki-laki muda.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Meskipun demikian, bacaan ini mudah tertukar dengan kata-kata serupa lainnya, jadi inilah mnemonik yang dapat membantu Anda:

<vocabulary>remaja</vocabulary> suka bermain dengan <reading>sa</reading>bers (せい) dan <reading>nen</reading>doroids (ねん). Coba pikirkan: saat Anda meninggalkan masa kanak-kanak dan menjadi seorang 青年, Anda menginginkan hobi yang lebih dewasa dan berbahaya, bukan? Jadi, Anda beralih dari pedang plastik dan mainan lunak ke bermain dengan pedang asli dan action figure nendoroid. Kamu sungguh keren 青年.', 'Anak muda, Anak Muda, Anak muda')
    RETURNING id INTO v_2802_anak_muda;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '草', 'rumput', 5, 144, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Karena kata ini terdiri dari satu kanji, maka menggunakan bacaan kun''yomi. Anda mempelajari bacaan ini ketika Anda mempelajari kanji.', 'Rumput, Gulma')
    RETURNING id INTO v_2803_rumput;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '音', 'suara', 5, 145, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Karena kata ini terdiri dari satu kanji, maka sebaiknya menggunakan bacaan kun''yomi. Saat mempelajari kanji, Anda tidak mempelajari bacaan tersebut, jadi inilah mnemonik untuk membantu Anda dengan kata ini: 

Apakah Anda mendengar <vocabulary>suara</vocabulary> itu? Hampir tidak <read>audi</reading>ble (おと). Silakan ucapkan kata "audible" dengan pengucapan おと untuk membantu Anda mengingatnya.', 'Suara, Kebisingan')
    RETURNING id INTO v_2804_suara;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '作る', 'untuk-membuat', 5, 146, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>membuat</kanji>. Bentuk kata kerjanya adalah <vocabulary>to make</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda:

Setiap kali kamu mencoba <vocabulary>membuat</vocabulary> sesuatu, hasilnya menjadi <reading>terlalu keren</reading> (つく). Itu tidak berlebihan. Barang-barang yang Anda buat benar-benar terlalu keren untuk dilihat masyarakat umum. Mereka mungkin akan menjadi gila dan mulai melakukan kerusuhan, dan sebelum Anda menyadarinya, masyarakat itu sendiri akan runtuh. Tidak ada yang mengatakan Anda harus berhenti membuat sesuatu, tapi tolong — sembunyikan kreasi Anda yang terlalu keren di suatu tempat. Dunia belum siap menghadapi mereka.', 'Untuk Membuat, Untuk Membangun, Untuk Membuat')
    RETURNING id INTO v_2805_untuk_membuat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '体', 'tubuh', 5, 147, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Karena kata ini terdiri dari satu kanji, maka sebaiknya menggunakan bacaan kun''yomi. Saat mempelajari kanji, Anda tidak mempelajari bacaan tersebut, jadi inilah mnemonik untuk membantu Anda dengan kata ini: 

Anda memiliki tubuh Anda. Itu bagus - terlihat bagus! Apa yang benar-benar mengacaukan tubuh Anda? Itu akan menjadi <reading>penjarah mobil</reading> (からだ). Saya sedang berbicara tentang seorang pria yang merupakan seorang perampok yang mengendarai mobil. Jika dia menabrak tubuh Anda, tamatlah Anda, jadi waspadalah terhadap perampok mobil. 

Tentu saja, mnemonik ini hanya dimaksudkan agar Anda lebih dekat dengan bacaannya. Mudah-mudahan cukup dekat untuk membawa Anda ke bacaan sebenarnya, からだ.', 'Tubuh')
    RETURNING id INTO v_2806_tubuh;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '体力', 'kekuatan-fisik', 5, 148, 'Anda memiliki <kanji>tubuh</kanji> <kanji>kekuatan</kanji> Anda. Ini hanyalah cara lain untuk mengatakan <vocabulary>kekuatan fisik</vocabulary>. Awas, jika kamu menggunakan terlalu banyak kekuatan fisik, kamu bisa kehabisan <vocabulary>stamina</vocabulary> dan <vocabulary>daya tahan</vocabulary> fisik sepenuhnya! Mereka terikat bersama, jadi pastikan untuk mengatur kecepatan Anda sendiri.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Karena 力 memiliki dua pembacaan on''yomi, berikut adalah mnemonik untuk membantu Anda mengingat mana yang akan digunakan:

<vocabulary>kekuatan fisik</vocabulary> dan <vocabulary>stamina</vocabulary> Anda diikat menjadi satu dengan <reading>dasi</reading> <reading>lock</reading> (たいりょく). Itu adalah kunci yang terbuat dari ikatan yang mengikat kekuatan dan stamina Anda, membuatnya lebih mudah untuk mengatur kecepatan Anda.', 'Kekuatan Fisik, Kekuatan Fisik, Daya tahan, Ketahanan')
    RETURNING id INTO v_2807_kekuatan_fisik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '体内', 'di-dalam-tubuh', 5, 149, '<kanji>tubuh</kanji> <kanji>di dalam</kanji> berarti <vocabulary>di dalam tubuh</vocabulary> atau <vocabulary>internal</vocabulary>.

体内 mengacu secara khusus pada bagian dalam tubuh, jadi Anda akan sering melihatnya dalam konteks medis dan ilmiah.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Di Dalam Tubuh, Intern')
    RETURNING id INTO v_2808_di_dalam_tubuh;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '作文', 'komposisi', 5, 150, 'Saat Anda <kanji>membuat</kanji> <kanji>tulisan</kanji>, apa yang Anda lakukan? Sederhananya, Anda sedang <vocabulary>menulis</vocabulary>. Jika Anda ingin lebih tertarik lagi, bisa dibilang ini adalah <vocabulary>composition</vocabulary>.

Perhatikan bahwa 作文 sering kali mengacu pada hasil akhir dari proses penulisan, seperti esai yang sudah selesai, dan bukan proses penulisan itu sendiri. Ini juga umumnya dikaitkan dengan berbagai tugas menulis yang diberikan kepada siswa di sekolah dasar atau menengah Jepang.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Karena 文 dan 作 mempunyai dua bacaan on''yomi, berikut adalah mnemonik untuk membantu Anda mengingat mana yang harus digunakan:

Anda tidak bisa berhenti menulis <vocabulary>komposisi</vocabulary> tentang <reading>sack</reading>s ''n'' <reading>bun</reading>s (さくぶん). Anda terobsesi dengan mereka. Anda telah menulis <vocabulary>esai</vocabulary> demi esai tentang sacks ''n'' buns. Berhentilah <vocabulary>menulis</vocabulary> tentang karung ''n'' roti!', 'Komposisi, Menulis, Karangan')
    RETURNING id INTO v_2809_komposisi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '工作', 'kerajinan', 5, 151, 'Apa yang dimaksud dengan "<kanji>industri</kanji> dari <kanji>buatan</kanji>"? Tentu saja, itu terjadi ketika Anda rajin membuat sesuatu. Itu hanya bisa berupa <vocabulary>handicraft</vocabulary> atau <vocabulary>crafts</vocabulary>, sering kali mengacu pada aktivitas kerajinan tangan atau proyek langsung yang dilakukan di sekolah dasar atau menengah!

Tapi tunggu dulu, 工作 bukan hanya tentang lem dan stik es krim! Ini juga bisa berarti <vocabulary>manuver</vocabulary>, dalam artian melakukan sesuatu di belakang layar. Jadi, apakah Anda sedang membuat karya agung atau merencanakan rencana cerdas, 工作 mencakup keajaiban kerajinan!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Karena 作 mempunyai dua pembacaan on''yomi, berikut adalah mnemonik untuk membantu Anda mengingat mana yang harus digunakan:

<kosakata>kerajinan tangan</vocabulary> favoritmu adalah membuat <membaca>こう</reading>いち <reading>karung</reading> (さく). Itu adalah karung yang bentuknya persis seperti こういち, dan Anda sangat pandai membuatnya. Segera, kantor Tofugu akan dihiasi seluruhnya dengan karung こういち Anda.', 'Kerajinan, kerajinan tangan, Manuver')
    RETURNING id INTO v_2811_kerajinan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '大作', 'pekerjaan-besar', 5, 152, '<kanji>besar</kanji> <kanji>buatan</kanji>! Apa penghasilan besar Anda? Lebih besar dari apa pun. Ini adalah <vocabulary>pekerjaan utama</vocabulary> Anda!

大作 berarti pekerjaan berskala besar, ambisius, atau signifikan. Tergantung pada konteksnya, kata ini dapat merujuk pada apa pun mulai dari <vocabulary>mahakarya</vocabulary> yang dicapai secara artistik hingga film <vocabulary>blockbuster</vocabulary> beranggaran besar.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Karena 大 mempunyai dua pembacaan on''yomi, berikut adalah mnemonik untuk membantu Anda mengingat mana yang harus digunakan:

Tahukah kamu bahwa ada <vocabulary>karya monumental</vocabulary> tentang <reading>dasi</reading> <reading>sack</reading> (たいさく)? Ini adalah <vocabulary>mahakarya</vocabulary> tentang karung ajaib yang menghasilkan dasi demi dasi demi dasi demi dasi... Mirip seperti Panci Bubur Ajaib, namun dengan karung dan dasi sebagai gantinya.', 'Pekerjaan Besar, Mahakarya, blockbuster')
    RETURNING id INTO v_2812_pekerjaan_besar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '図', 'diagram', 5, 153, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Kata-kata yang terdiri dari satu kanji biasanya menggunakan bacaan kun''yomi, sedangkan kata yang satu ini menggunakan bacaan on''yomi. Untungnya, bacaan ini sama dengan yang Anda pelajari dengan kanji, jadi tidak terlalu sulit untuk mengingatnya.', 'Diagram')
    RETURNING id INTO v_2813_diagram;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '声', 'suara', 5, 154, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Pembacaan kata ini sama dengan yang Anda pelajari dengan kanji sehingga mudah diingat!', 'Suara')
    RETURNING id INTO v_2814_suara;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '大声', 'suara-keras', 5, 155, '<kanji>besar</kanji> <kanji>suara</kanji> adalah <vocabulary>suara keras</vocabulary>!

大声 biasanya hanya mendeskripsikan berbicara dengan <vocabulary>suara keras</vocabulary>, tapi bisa juga merujuk pada berteriak tergantung situasinya.', 'Bacaannya 声 adalah ごえ (bacaan versi rendaku lho: こえ). Bacaan 大 adalah bacaan kun''yomi, seperti kata 大きい (おおきい). Bayangkan saja suara keras berkata "おお！."', 'Suara Keras, Suara Besar')
    RETURNING id INTO v_2815_suara_keras;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '弟', 'adik', 5, 156, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Karena kata ini terdiri dari satu kanji, maka sebaiknya menggunakan bacaan kun''yomi. Saat mempelajari kanji, Anda tidak mempelajari bacaan tersebut, jadi inilah mnemonik untuk membantu Anda dengan kata ini: 

Kamu melihat adik laki-lakimu. Dia orang yang licik. Dia tersenyum padamu. Mengapa? Karena dia menyalakan petasan di kakimu. Itu meledak, membuat jari kaki Anda terbang. Anda berteriak <reading>"OH. Toe? TOE!"</reading> (おとうと) saat Anda menyadari apa yang terjadi.', 'Adik, Adik kecil')
    RETURNING id INTO v_2820_adik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '兄弟', 'saudara-laki-laki', 5, 157, 'Anda memiliki <kanji>kakak laki-laki</kanji> dan <kanji>adik laki-laki</kanji>. Wow! Keduanya ada di sini. Ini adalah <vocabulary>saudara</vocabulary>!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Saudara laki-laki, Saudara')
    RETURNING id INTO v_2821_saudara_laki_laki;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '来る', 'akan-datang', 5, 158, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri artinya <kanji>datang</kanji> jadi kalian pasti tahu kata ini artinya <vocabulary>to come</vocabulary>.', 'Pembacaan kata ini cukup aneh. Ini berubah tergantung pada jenis bentuk kata kerja yang Anda gunakan (ini adalah kata kerja pengecualian yang mengganggu). Untuk mengingat bacaan kata ini, berikut mnemoniknya: 

"Saya ingin Anda <vocabulary>datang</vocabulary> ke sisi <reading>coo</reading>l (く), Luke," kata Darth Vader.
"Apa?" jawab Lukas.

Ganti saja baris ini dengan baris terkenal dari Star Wars. Katakan dengan lantang. Lakukan suara Vader. Ini akan membantu Anda mengingatnya.', 'Akan Datang')
    RETURNING id INTO v_2824_akan_datang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '来月', 'bulan-depan', 5, 159, '<kanji>berikutnya</kanji> <kanji>bulan</kanji> adalah <vocabulary>bulan depan</vocabulary>! Ini bukan bulan ini atau bulan sebelumnya, ini bulan berikutnya!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. 月 mempunyai dua bacaan on''yomi, tapi karena ini BUKAN nama bulan tertentu, maka akan menggunakan bacaan げつ. Berikut ini mnemonik untuk membantu Anda mengingatnya:

<vocabulary>Bulan depan</vocabulary> adalah saat <reading>rye</reading> <reading>memasukkan</reading> (らいげつ) ke dalam menu makanan Anda. Anda hanya akan makan roti gandum hitam dan hanya minum bir gandum sepanjang bulan depan. Pasti Anda tidak sabar lagi!', 'Bulan Depan')
    RETURNING id INTO v_2825_bulan_depan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '来年', 'tahun-depan', 5, 160, '<kanji>tahun</kanji> berikutnya</kanji> adalah <vocabulary>tahun depan</vocabulary>! Ini bukan tahun lalu atau tahun ini, ini tahun berikutnya!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Tahun depan')
    RETURNING id INTO v_2826_tahun_depan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '古来', 'dari-zaman-kuno', 5, 161, 'Hal-hal yang benar-benar <kanji>tua</kanji> <kanji>berasal</kanji> <vocabulary>dari zaman kuno</vocabulary>!

Ini adalah ungkapan yang relatif formal yang digunakan untuk membicarakan hal-hal <vocabulary>kuno</vocabulary>, seperti adat istiadat yang telah teruji oleh waktu.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Dari Zaman Kuno, Usia-Tua')
    RETURNING id INTO v_2827_dari_zaman_kuno;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '〜年来', 'selama-beberapa-tahun', 5, 162, 'Ketika Anda memiliki <kanji>tahun</kanji> yang datang dan pergi, Anda tahu bahwa itu adalah <vocabulary>untuk beberapa tahun</vocabulary>. Jangan bingung membedakan yang ini dengan 来年 yang artinya "tahun depan". Kanji 来 muncul setelah kanji untuk tahun, jadi alih-alih "tahun yang akan datang" yang digunakan adalah "tahun yang datang (dan pergi)". Setidaknya, Anda bisa berpikir seperti itu untuk membedakannya. 

Anda juga dapat menambahkan angka pada kata ini. Misalnya ５年来 berarti sesuatu yang mirip dengan "selama lima tahun". Tapi ini adalah kata yang cukup formal. Ingatlah hal itu.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Selama Beberapa Tahun, Selama Bertahun-tahun')
    RETURNING id INTO v_2829_selama_beberapa_tahun;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '社内', 'di-dalam-perusahaan', 5, 163, 'Saat Anda melakukan sesuatu <kanji>di dalam</kanji> <kanji>perusahaan</kanji> Anda melakukannya <vocabulary>di dalam perusahaan</vocabulary> atau <vocabulary>di dalam perusahaan</vocabulary>. Misalnya, kami mengerjakan kanji kami sendiri. Ini memberinya rasa artisan.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Di Dalam Perusahaan, Di Rumah, Di Dalam Perusahaan')
    RETURNING id INTO v_2830_di_dalam_perusahaan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '入社', 'bergabung-dengan-perusahaan', 5, 164, 'Saat Anda <kanji>memasuki</kanji> sebuah <kanji>perusahaan</kanji>, Anda sebenarnya <vocabulary>bergabung dengan sebuah perusahaan</vocabulary>. Selamat datang, rekrutan baru. Bersiaplah untuk dikaburkan!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Bergabung dengan Perusahaan, Memasuki Sebuah Perusahaan')
    RETURNING id INTO v_2831_bergabung_dengan_perusahaan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '本社', 'markas-besar', 5, 165, '<kanji>asal</kanji> <kanji>perusahaan</kanji> adalah asal segala sesuatu di perusahaan Anda. Ini adalah basis utama Anda. Ini adalah <vocabulary>kantor pusat</vocabulary> Anda.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Markas besar, Kantor pusat, Kantor Pusat Perusahaan')
    RETURNING id INTO v_2833_markas_besar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '会社', 'perusahaan', 5, 166, 'Tempat <kanji>perusahaan</kanji> <kanji>bertemu</kanji> Anda adalah <vocabulary>perusahaan</vocabulary> Anda. Sony adalah sebuah perusahaan. Nintendo adalah sebuah perusahaan. Dll.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Perusahaan, Perusahaan, Kantor')
    RETURNING id INTO v_2834_perusahaan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '角', 'sudut', 5, 167, 'Jika kanji untuk <kanji>sudut</kanji> digunakan sebagai kata yang berdiri sendiri, biasanya berarti <vocabulary>corner</vocabulary>. Anda dapat mengingat hal ini karena sudut adalah jenis sudut yang paling umum Anda lihat dalam kehidupan sehari-hari.

Dalam konteks matematika, ini juga bisa berarti <vocabulary>angle</vocabulary> — sama seperti arti kanjinya!', 'Kata ini mempunyai dua arti yang berbeda dan masing-masing mempunyai bacaan tersendiri.

Ketika digunakan untuk <vocabulary>corner</vocabulary>s, bacaannya adalah かど. Bayangkan saja setumpuk <membaca>kartu</membaca> (かど). Apa bagian terpenting dari kartu itu? Sudut! Sudut-sudutnya adalah tempat angka-angka itu berada. Sekarang rekatkan kartu-kartu itu ke seluruh sudut rumah Anda. Mengapa? Karena itu berseni!

Dan pasangan arti dan bacaan kedua itu mudah — <vocabulary>angle</vocabulary> dan かく, yang sudah Anda ketahui dari kanji!', 'Sudut, Sudut')
    RETURNING id INTO v_2835_sudut;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '三角', 'segi-tiga', 5, 168, 'Jika Anda memiliki sesuatu dengan <kanji>tiga</kanji> <kanji>sudut</kanji>, apa bentuknya? Itu adalah <vocabulary>segitiga</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Segi tiga')
    RETURNING id INTO v_2836_segi_tiga;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '四角', 'persegi', 5, 169, 'Bentuk apa yang memiliki <kanji>empat</kanji> <kanji>sudut</kanji>? Yang paling umum adalah <vocabulary>persegi</vocabulary>, tetapi bisa juga berupa <vocabulary>persegi panjang</vocabulary> atau bahkan <vocabulary>kubus</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan on''yomi untuk kanjinya. Anda sudah mempelajari keduanya, jadi Anda seharusnya bisa membaca kata ini!', 'Persegi, Persegi panjang, Kubus')
    RETURNING id INTO v_2837_persegi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '言う', 'mengatakan', 5, 170, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>mengatakan</kanji>, jadi versi kata kerjanya adalah <vocabulary>to say</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Untuk mengingat bacaan い kita menggunakan kata "elang". 

Anda mencoba <vocabulary>mengatakan</vocabulary> sesuatu, tetapi setiap kali Anda mencoba mengatakan sesuatu, seekor <reading>ea</reading>gle (い) menukik ke bawah dan mematuk wajah Anda lalu terbang menjauh. Bayangkan saja diri Anda mengucapkan sedikit kata, lalu seekor elang jatuh menimpa wajah Anda. Lalu, kamu menunggu dalam diam. Tidak ada yang terjadi. Anda mencoba mengatakan sesuatu lagi, dan elang itu menyerang Anda lagi.', 'Mengatakan')
    RETURNING id INTO v_2838_mengatakan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '谷', 'lembah', 5, 171, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Karena kata ini terdiri dari satu kanji, maka sebaiknya menggunakan bacaan kun''yomi. Ini juga merupakan bacaan yang Anda pelajari dengan kanji, jadi jangan merasa seperti Anda terjebak dalam lembah keputusasaan atau apa pun. Bersuka cita!', 'Lembah')
    RETURNING id INTO v_2839_lembah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '走る', 'untuk-berlari', 5, 172, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>berlari</kanji> jadi sekarang Anda tahu versi kata kerjanya adalah <vocabulary>to run</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Anda harus mengingat bagian はし. Bayangkan diri Anda sedang berlari. Itu bagus. Namun, saat Anda berlari, Anda melihat tanah berubah menjadi sesuatu yang aneh dan lembek. Semuanya berubah menjadi <reading>hash</reading> (はし) coklat. Anda mulai tersedot, dan tak lama kemudian Anda tidak bisa berlari lagi. Cium aroma kentang goreng dan cicipi juga. Sungguh buruk sekali perjalanan ini.', 'Untuk Berlari')
    RETURNING id INTO v_2840_untuk_berlari;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '走行', 'bepergian', 5, 173, 'Kendaraan yang <kanji>berjalan</kanji>-<kanji>pergi</kanji>es adalah <vocabulary>berjalan</vocabulary> dan <vocabulary>memindahkan</vocabulary> Anda ke tempat lain. Anda sedang <vocabulary>bepergian</vocabulary>!

Kata ini biasanya digunakan untuk menggambarkan pergerakan kendaraan seperti mobil dan kereta api. Nadanya sedikit formal atau kaku, jadi perhatikan konteks kalimat kami untuk memastikan Anda menggunakannya dengan benar!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Bepergian, Berlari, Bergerak, Penggerak')
    RETURNING id INTO v_2841_bepergian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '近い', 'menutup', 5, 174, 'Ini adalah kanji tunggal dengan い di akhir, artinya Anda tahu itu mungkin kata sifat. Apa bentuk kata sifat dari <kanji>dekat</kanji>? Itu <vocabulary>dekat</vocabulary> atau <vocabulary>dekat</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda.

Siapa yang ingin Anda tetap <vocabulary>dekat</vocabulary> setiap saat? <reading>chica</reading> Anda (ちか), tentu saja. Dia adalah pendukung terkuat Anda, jadi ketika tantangan menghadang Anda, Anda pasti ingin dia <vocabulary>dekat</vocabulary>, sedekat mungkin.', 'Menutup, Di dekat sini, Di dekat')
    RETURNING id INTO v_2842_menutup;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '近日', 'dalam-beberapa-hari', 5, 175, 'Kapan <kanji>dekat</kanji> <kanji>hari</kanji>? <vocabulary>dalam beberapa hari</vocabulary>. Ini <vocabulary>segera</vocabulary>, dengan kata lain, tidak dalam waktu dekat. Anda masih memerlukan sedikit kesabaran, namun jangan khawatir — kesabaran akan tersedia dalam <vocabulary>beberapa hari mendatang</vocabulary>.

近日 digunakan untuk waktu dekat (tidak seperti 近年, yang mengacu pada masa lalu). Anda akan melihatnya di pengumuman, tanda, dan laporan berita tentang hal-hal yang diperkirakan akan terjadi dalam beberapa hari mendatang.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Karena 日 mempunyai dua pembacaan on''yomi, berikut adalah mnemonik untuk membantu Anda mengingat mana yang harus digunakan:

<vocabulary>Dalam beberapa hari</vocabulary>, tempat tinggal Anda akan memiliki dua <reading>kerabat</reading>g. <read>Wah, dua</reading> (きんじつ) di antaranya? Ya, negara Anda adalah negara pertama yang memiliki dua raja.', 'Dalam Beberapa Hari, Segera, Hari-hari mendatang')
    RETURNING id INTO v_2843_dalam_beberapa_hari;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '近年', 'beberapa-tahun-terakhir', 5, 176, '<kanji>mendekati</kanji> <kanji>tahun</kanji> adalah tahun-tahun yang belum lama berselang. Itu adalah <vocabulary>tahun-tahun terakhir</vocabulary>.

Cobalah untuk mengingat bahwa 近年 adalah untuk masa lalu (tidak seperti 近日, yang untuk waktu dekat). Bunyinya agak formal, jadi kemungkinan besar Anda akan mendengarnya di berita atau presentasi daripada percakapan biasa.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Beberapa Tahun Terakhir')
    RETURNING id INTO v_2844_beberapa_tahun_terakhir;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '麦', 'gandum', 5, 177, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.

麦 mengacu pada sekelompok biji-bijian sereal gaya Eropa, seperti gandum dan jelai, tetapi bukan beras dan jagung. Untuk menentukan 麦 yang mana, Anda harus menggunakan senyawa seperti 小麦 (gandum) atau 大麦 (barley)!', 'Karena kata ini terdiri dari satu kanji yang menggunakan bacaan kun''yomi yaitu bacaan yang dipelajari dengan kanji tersebut.', 'Gandum, Jelai')
    RETURNING id INTO v_2845_gandum;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '夜', 'malam', 5, 178, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Karena kata ini terdiri dari satu kanji, maka sebaiknya menggunakan bacaan kun''yomi. Untungnya, ini adalah bacaan よる yang Anda pelajari dengan kanji!', 'Malam, Malam')
    RETURNING id INTO v_2889_malam;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '男の子', 'anak-laki-laki', 5, 179, '<kanji>pria</kanji> <kanji>anak</kanji> adalah <vocabulary>laki-laki</vocabulary>.

Ada partikel の yang tersangkut di tengah kata ini. Di sini artinya hanya kata benda sebelum の yang memodifikasi kata benda setelahnya. 

Namun untuk saat ini, yang harus Anda ingat hanyalah bahwa 男の子 berarti "anak laki-laki".', 'Jika Anda mengetahui pembacaan kun''yomi dari kedua kanji ini, Anda seharusnya baik-baik saja. Anda memiliki dua kata kanji tunggal terpisah yang disatukan oleh の. Itu sebabnya bacaan kun''yomi - keduanya terpisah.', 'Anak laki-laki')
    RETURNING id INTO v_3408_anak_laki_laki;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '毛虫', 'ulat', 5, 180, 'Ketika Anda memikirkan <kanji>bulu</kanji> <kanji>serangga</kanji>, apa yang Anda pikirkan? Pikiranku langsung tertuju pada <vocabulary>ulat</vocabulary>. Bayangkan ulat paling berbulu yang Anda bisa dan sentuhlah. Bagaimana rasanya? Berbulu?', 'Pembacaan kata ini aneh. Keduanya menggunakan bacaan kun''yomi - 虫 menggunakan bacaan yang Anda pelajari dengan kanji, jadi mudah saja. Bagian 毛 seperti kosakata kata 毛 yang kamu pelajari pada pelajaran sebelumnya.', 'Ulat')
    RETURNING id INTO v_3409_ulat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '下町', 'pusat-kota', 5, 181, 'Anda memiliki <kanji>di bawah</kanji> <kanji>kota</kanji>. Apakah ini terdengar familier? Kami memiliki kata lain untuk itu dalam bahasa Inggris, tetapi pada dasarnya sama: <vocabulary>downtown</vocabulary>. Ini bukan pusat kota yang biasa Anda kunjungi. Di Jepang, ini adalah kata lama yang digunakan untuk kawasan komersial secara harfiah, yang secara fisik berada di bawah (lebih rendah) dari kota utama. Jadi bayangkan sebuah kawasan perkotaan Jepang yang kuno!', 'Pembacaan kata ini semuanya kun''yomi meskipun jukugo. Bayangkan saja hal-hal samar yang terjadi di pusat kota, seperti bagaimana ada pembacaan kun''yomi yang samar-samar untuk kata ini. Anda harus mengetahui kedua bacaan kun''yomi dari level sebelumnya, jadi jika Anda mengetahuinya, Anda juga mengetahui bacaan untuk kata ini.', 'Pusat kota, Jalan belakang')
    RETURNING id INTO v_3410_pusat_kota;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '男の人', 'pria', 5, 182, '<kanji>manusia</kanji> <kanji>orang</kanji> adalah <vocabulary>manusia</vocabulary>. 

Ada partikel の yang tersangkut di tengah kata ini. Di sini artinya hanya kata benda sebelum の yang memodifikasi kata benda setelahnya. 

Namun jangan khawatir jika itu sulit untuk diingat. Ingat saja 男の人 berarti "laki-laki" (dan itu lebih sopan daripada 男 biasa).', 'Kata ini sebenarnya adalah dua kata terpisah yang digabungkan dengan sebuah partikel. Jadi, karena Anda memperlakukannya seperti kata-kata yang terpisah, Anda membacanya masing-masing dengan pembacaan kun''yomi (keduanya merupakan kata-kata kanji tunggal). Meskipun demikian, di level 4 Anda belajar tentang pembacaan kosakata untuk kata-kata terpisah ini, jadi gunakan pengetahuan itu untuk mengingat bacaan kata ini juga.', 'Pria')
    RETURNING id INTO v_3412_pria;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '今まで', 'sampai-sekarang', 5, 183, 'Anda tahu bahwa 今 berarti sekarang. Apa yang mungkin Anda tidak tahu adalah bahwa まで berarti "sampai". Jadi, kata ini berarti <vocabulary>sampai sekarang</vocabulary>.', 'Bacaan kata ini merupakan bacaan kun''yomi yang telah anda pelajari sebelumnya pada saat mempelajari vocab kata 今. Anda dapat mengetahui bahwa ini adalah bacaan kun''yomi karena terdapat hiragana di dalamnya. Jadi jika kalian mengetahuinya, kalian harusnya bisa membaca kata ini juga.', 'Sampai Sekarang, Hingga kini, Sejauh ini')
    RETURNING id INTO v_3414_sampai_sekarang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '毛糸', 'benang-wol', 5, 184, 'Ketika Anda memiliki <kanji>bulu</kanji> <kanji>tali</kanji> (alias tali yang terbuat dari bulu), apa yang Anda pikirkan? Semoga <vocabulary>benang wol</vocabulary>.', 'Bacaan kanji ini adalah bacaan kun''yomi. Dengan 毛 Anda seharusnya sudah mempelajari bacaan ini melalui kosakata di level sebelumnya. Dengan 糸 sebenarnya itu adalah bacaan utama kanji, jadi kamu pasti sudah mengetahuinya.', 'Benang wol, Benang')
    RETURNING id INTO v_3416_benang_wol;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '今すぐ', 'sekaligus', 5, 185, 'Anda harus mempelajari kata ini dalam dua bagian. Anda sudah mengetahui arti 今 karena kanjinya yang berarti "sekarang". Namun, bagian すぐ merupakan kata baru yang berarti "segera". すぐ dan "segera" bahkan dimulai dengan bunyi serupa, jadi mungkin itu bisa membantu Anda mengingatnya! Jika Anda menggabungkan 今 dan すぐ, Anda akan mendapatkan "segera". Gunakan bahasa Inggris yang lebih baik, yaitu <vocabulary>at Once</vocabulary> atau <vocabulary>now</vocabulary>.', 'Karena Anda sudah mengetahui kosakata kata 今 (baca いま), Anda seharusnya bisa membaca kata ini juga.', 'Sekaligus, Sekarang, Langsung, Segera')
    RETURNING id INTO v_3417_sekaligus;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '里', 'kampung-halaman', 5, 186, 'Ini adalah desa asalmu. Di sinilah orang tuamu tinggal. Ini adalah <vocabulary>kampung halaman</vocabulary> Anda (artinya sama dengan kanji yang Anda pelajari).

Kata ini kuno dan membangkitkan gambaran rumah yang hangat dan penuh nostalgia. Sering terlihat dalam cerita rakyat dan lagu tradisional, ini melambangkan kehidupan pastoral yang indah.', 'Bacaannya sama dengan kanji yang kamu pelajari, jadi kamu pasti merasa nyaman dan "betah" dengan kanji ini 😉', 'kampung halaman, Desa, Rumah Orang Tua Seseorang')
    RETURNING id INTO v_3647_kampung_halaman;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '里心', 'rindu', 5, 187, 'Anda memiliki <kanji>desa asal</kanji> dan <kanji>hati</kanji> Anda. Hatimu selalu bersemayam di desa asalmu, jadi ketika kamu pergi kamu merasa <vocabulary>rindu kampung halaman</vocabulary>.

Anak muda sudah tidak lagi menggunakan kata ini. Ini lebih untuk yang lama. Jika Anda sudah tua, silakan saja. Jika Anda masih muda, bicaralah dengan lebih banyak orang tua!', 'Bacaannya adalah kun''yomi ganda. Pembacaan kun''yomi sudah Anda pelajari dengan 里, meskipun Anda harus mengeluarkan bacaan 心 kosakata untuk mengingat semuanya. Tidak hanya itu, 心 yang dibuat rendaku di sini menjadikannya ごころ. Pastikan Anda berhati-hati terhadap hal itu.', 'Rindu, Kerinduan')
    RETURNING id INTO v_3648_rindu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '本当', 'realitas', 5, 188, 'Apa yang <kanji>nyata</kanji> adalah <kanji>benar</kanji>. Ini adalah <vocabulary>realitas</vocabulary>. Ini juga merupakan <vocabulary>kebenaran</vocabulary>. Jangan percaya apa pun yang tidak <vocabulary>nyata</vocabulary> dan <vocabulary>true</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Realitas, Kebenaran, Nyata, BENAR')
    RETURNING id INTO v_4876_realitas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '豚', 'babi', 5, 189, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Membaca sama dengan apa yang Anda pelajari dengan kanji.', 'Babi')
    RETURNING id INTO v_4970_babi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '空車', 'buka-taksi', 5, 190, 'Anda telah mengetahui bahwa 空 berarti "langit", namun bisa juga berarti "kosong". <kanji>kosong</kanji> <kanji>mobil</kanji> secara harfiah berarti "mobil kosong", namun dalam praktiknya, Anda biasanya akan melihat ini menyala di taksi yang berarti <vocabulary>taksi terbuka</vocabulary>. Jika Anda melihatnya, silakan sambutlah!

Anda mungkin juga melihat 空車 di tempat parkir. Dalam hal ini, berarti tersedia <vocabulary>tempat parkir kosong</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Buka Taksi, Tempat Parkir Kosong')
    RETURNING id INTO v_5935_buka_taksi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '考古学', 'arkeologi', 5, 191, 'Jika Anda sering <kanji>berpikir</kanji> tentang <kanji>mempelajari</kanji>hal-hal <kanji>lama</kanji>, itu disebut <vocabulary>arkeologi</vocabulary>. Semua arkeologi melibatkan pemikiran tentang hal-hal lama, setidaknya sedikit.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Arkeologi, Arkeologi')
    RETURNING id INTO v_7568_arkeologi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '一生', 'seumur-hidup', 5, 192, '<kanji>Hanya satu</kanji> <kanji>kehidupan</kanji> yang Anda dapatkan. Ini adalah <vocabulary>seluruh hidup</vocabulary> Anda. Ini juga bisa berarti <vocabulary>sepanjang hidup</vocabulary>, dan jika digunakan sebagai kata sifat, artinya <vocabulary>seumur hidup</vocabulary>.

一生 adalah tentang hidup sebagai rentang waktu: seluruh hidup Anda dari awal hingga akhir. Anda akan melihatnya dalam frasa seperti 一生の友人 (teman seumur hidup) atau 一生わすれない (tidak pernah melupakan sesuatu seumur hidup).', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda tidak mempelajari bacaan ini untuk 生, jadi inilah mnemonik untuk membantu Anda:

Siapa yang bertanggung jawab atas <kosakata>sepanjang hidup</vocabulary> Anda? Senapan <read>sho</reading> (しょう).', 'Seumur Hidup, Kehidupan Semua Orang, Kekal')
    RETURNING id INTO v_7617_seumur_hidup;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '仕草', 'sikap', 5, 193, 'Hal-hal yang Anda <kanji>lakukan</kanji> di <kanji>rumput</kanji> dan bukan di dalam mungkin membutuhkan banyak <vocabulary>gesture</vocabulary> dan <vocabulary>action</vocabulary> yang besar. Anda harus melakukannya di luar ruangan, di atas rumput karena jika Anda melakukannya di tempat lain, Anda mungkin akan merusak sesuatu.', 'Bacaannya merupakan gabungan on''yomi dan kun''yomi. Meskipun demikian, kedua bacaan untuk kedua kanji tersebut adalah bacaan yang Anda pelajari dengan kanji tersebut sehingga Anda harus bisa membaca ini. Awas saja karena rendaku membuat くさ menjadi ぐさ.', 'Sikap, Tindakan, Perilaku')
    RETURNING id INTO v_7670_sikap;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '〜形', 'membentuk', 5, 194, 'Kanji dan kata tersebut mempunyai arti yang sama: <vocabulary>form</vocabulary>. Ini tidak hanya berarti bentuk, tapi juga berarti <kosakata>tegang</vocabulary>. Seperti kata kerja tegang.', 'Bacaannya sama dengan kanji yang Anda pelajari, artinya Anda tahu bacaannya!', 'Membentuk, Tegang')
    RETURNING id INTO v_7672_membentuk;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '外交', 'diplomasi', 5, 195, 'Anda ingin <kanji>mencampur</kanji> opini dari <kanji>luar</kanji> negara Anda ke dalam cara Anda menangani berbagai hal. Itu disebut <vocabulary>diplomacy</vocabulary>. Jika Anda menggabungkan negara Anda dengan negara di luar negara Anda, Anda semua akan mendapat untung!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Diplomasi')
    RETURNING id INTO v_7730_diplomasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '生まれ', 'tempat-lahir', 5, 196, 'Ingat bagaimana Anda mengetahui bahwa 生まれる berarti "dilahirkan?" Nah, begitu Anda lahir, tempat kejadian itu menjadi <vocabulary>tempat lahir</vocabulary> Anda!', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda mempelajari bacaan ini ketika Anda mempelajari 生まれる. Letakkan saja る di akhir dan Anda sudah membaca!', 'Tempat lahir, Kelahiran')
    RETURNING id INTO v_7731_tempat_lahir;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '大体', 'umumnya', 5, 197, 'Jika yang bisa Anda lihat hanyalah <kanji>besar</kanji> <kanji>tubuh</kanji> dari sesuatu, maka Anda hanya akan mendapatkan gambaran <vocabulary>umum</vocabulary> tentang benda itu. Anda bisa mengatakan bahwa itu <vocabulary>umumnya</vocabulary> dengan cara tertentu, tapi itu <vocabulary>tentang</vocabulary> semuanya. Anda akan mendapatkan <vocabulary>inti</vocabulary>, tapi tidak lebih.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Karena 大 mempunyai dua pembacaan on''yomi, berikut adalah mnemonik untuk membantu Anda mengingat mana yang harus digunakan:

<vocabulary>Secara umum</vocabulary>, <reading>mewarnai</reading> <reading>dasi</reading> (だいたい) adalah ide yang buruk. Polisi berdasi bukanlah penggemar beratnya, dan Anda tidak ingin ditangkap!', 'Umumnya, Tentang, Umum, Inti')
    RETURNING id INTO v_8661_umumnya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '文学', 'literatur', 5, 198, 'Jika Anda <kanji>mempelajari</kanji> <kanji>menulis</kanji>, itu disebut <vocabulary>sastra</vocabulary>. Anda akan mempelajari banyak hal yang ditulis orang lain sebelum Anda!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Karena 文 mempunyai dua bacaan on''yomi, berikut adalah mnemonik untuk membantu Anda mengingat mana yang harus digunakan:

Semua karya besar <vocabulary>sastra</vocabulary> adalah tentang <reading>bun</reading>s (ぶん). Itulah benang halus yang ada di seluruh literatur: roti.', 'Literatur')
    RETURNING id INTO v_8696_literatur;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '本来', 'semula', 5, 199, 'Anda ingin membicarakan tentang <kanji>asal</kanji> dari mana sesuatu <kanji>berasal</kanji>. Dari situlah asal <vocabulary>aslinya</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Semula, Terutama, Intinya, Tentu saja')
    RETURNING id INTO v_8736_semula;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '〜斤', 'penghitung-roti-roti', 5, 200, 'Ini memiliki 〜 untuk penghitung, jadi bisa dipastikan ini memiliki arti <vocabulary>penghitung roti</vocabulary> yang sama dengan kanji.', 'Bacaannya sama dengan kanji yang Anda pelajari, artinya Anda tahu bacaannya!', 'Penghitung Roti Roti, Konter untuk Roti')
    RETURNING id INTO v_8895_penghitung_roti_roti;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', 'その他', 'yang-lainnya', 5, 201, 'その berarti "itu" atau "yang", dan その ditambah <kanji>lainnya</kanji> berarti <vocabulary>yang lain</vocabulary>, <vocabulary>other</vocabulary>, dan <vocabulary>selain itu</vocabulary>, bergantung pada konteksnya.', 'Ini memiliki dua bacaan, tapi untungnya Anda mempelajari salah satunya saat mempelajari kanji, dan yang lainnya saat Anda mempelajari kata 他. Kedua bacaan tersebut biasanya juga dapat dipertukarkan.', 'Yang Lainnya, Lainnya, Selain daripada itu')
    RETURNING id INTO v_9088_yang_lainnya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '西口', 'pintu-keluar-barat', 5, 202, 'Ingat 北口 dari beberapa level yang lalu, dan bagaimana 入り口 berarti "pintu masuk" dan 出口 berarti "keluar?" Gabungkan arti 口 tersebut dengan kanji untuk <kanji>barat</kanji>, dan Anda akan mendapatkan <vocabulary>pintu keluar barat</vocabulary> atau <vocabulary>pintu masuk barat</vocabulary>.', 'Ini mengikuti pola yang sama seperti 入り口, 出口, dan 北口, sehingga menggunakan pembacaan kun''yomi. Dan sama seperti itu, pastikan untuk berhati-hati terhadap rendaku yang berubah くち menjadi ぐち!', 'Pintu Keluar Barat, Pintu Masuk Barat, Gerbang Barat')
    RETURNING id INTO v_9158_pintu_keluar_barat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '三日月', 'bulan-sabit', 5, 203, 'Apa itu "bulan hari ketiga"? Itu adalah <vocabulary>bulan sabit</vocabulary>. Bulan sabit adalah bulan yang baru terlihat dan muncul pada hari ketiga setiap bulan dalam kalender lunar yang digunakan orang Jepang pada masa itu.', 'Kata ini menggabungkan kosakata 三日 dan 月, sehingga menggunakan bacaannya, hanya saja di sini sedikit berbeda: tidak ada っ kecil di 三日, dan 月 memiliki rendaku. Kedengarannya rumit, namun perubahan tersebut justru membuat kata tersebut lebih mudah diucapkan. (Cobalah sendiri — みかづき lebih mudah diucapkan daripada みっかつき, kan?) Berikut ini mnemonik untuk mengingat bagian みか dan づ, untuk berjaga-jaga:

Kamu keluar bersama temanmu Mika pada suatu malam ketika <vocabulary>bulan sabit</vocabulary> muncul. Apa yang kamu katakan padanya? "<reading>Mika</reading>, <reading>du</reading>de (みかづ)! Ini bulan sabit!" 

Petunjuk: Untuk mendapatkan karakter づ, ketik "du" pada keyboard Anda.', 'Bulan Sabit')
    RETURNING id INTO v_9169_bulan_sabit;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '上手い', 'baik-dalam', 5, 204, 'Ingat bagaimana 上手 berarti Anda <vocabulary>baik dalam</vocabulary> sesuatu? Ya, kata ini menggunakan kanji yang sama persis, dan artinya sama persis!', 'Itu い di akhir adalah petunjuk Anda bahwa bacaannya berbeda, dan Anda bisa melupakan bacaan yang Anda pelajari untuk setiap kanji. Ini adalah kata asli Jepang, dan kanjinya ditetapkan berdasarkan maknanya saja. Artinya, Anda tinggal menghafal bacaannya, berikut mnemonik yang bisa membantu Anda:

Ketika kamu melihat seseorang <vocabulary>baik dalam</vocabulary> sesuatu, kamu berkata, "<reading>Ooh</reading>, <reading>my</reading> (うまい)!" di bagian atas paru-paru Anda. Cobalah! Pikirkan sesuatu yang membuat Anda terkesan dan ucapkan "ooh!" dengan suara keras.', 'Baik Dalam, Mahir')
    RETURNING id INTO v_9238_baik_dalam;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '三十代', 'seseorang-berumur-tiga-puluhan', 5, 205, 'Anda memiliki angka "tiga puluh", dan <kanji>umur</kanji>. Jadi ini mengacu pada <kosakata>usia tiga puluhan</vocabulary>.', 'Ini menggunakan on''yomi untuk semua kanjinya, jadi sebaiknya Anda pergi ke sini!', 'Seseorang berumur tiga puluhan')
    RETURNING id INTO v_9255_seseorang_berumur_tiga_puluhan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '代金', 'biaya', 5, 206, 'Saat Anda membeli sesuatu, pada dasarnya Anda <kanji>menggantinya</kanji> dengan <kanji>uang</kanji>. Uang pengganti tersebut adalah <vocabulary>biaya</vocabulary> atau <vocabulary>harga</vocabulary> dari barang yang Anda bayar.

Ada banyak sinonim yang berhubungan dengan uang dalam bahasa Jepang, namun perlu diingat bahwa sinonim ini mengacu pada uang yang Anda bayarkan untuk mendapatkan imbalan (biasanya barang), bukan pada pengeluaran, harga, atau nilai. Lagipula itu adalah "uang pengganti"!', 'Ini adalah kata jukugo yang artinya menggunakan bacaan on''yomi untuk kedua kanjinya. Anda sudah mengetahuinya, jadi sebaiknya Anda berangkat!', 'Biaya, Harga')
    RETURNING id INTO v_9256_biaya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '平行', 'paralel', 5, 207, 'Temukan permukaan <kanji>datar</kanji> dan <kanji>jalankan</kanji> di sepanjang permukaan tersebut. Sekarang Anda menjalankan <vocabulary>parallel</vocabulary> ke sana.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Paralel')
    RETURNING id INTO v_9453_paralel;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '夕方', 'sore-hari', 5, 208, 'Kapan segala sesuatunya mulai berjalan ke arah <kanji>malam</kanji> <kanji></kanji>? Itu akan terjadi pada <vocabulary>sore</vocabulary> atau hanya <vocabulary>sore</vocabulary>.

夕方 mengacu pada periode siang hari antara sore dan malam hari, saat matahari mulai terbenam dan secara bertahap mulai menjadi lebih gelap di luar.', 'Kata ini menggunakan bacaan kun''yomi untuk kedua kanjinya. Anda mempelajari pembacaan kun''yomi 夕 dengan kanji, jadi Anda akan baik-baik saja di sana. Namun, bacaan 方 bukanlah hal utama yang dipelajari, dan ditambah lagi dengan rendaku, berikut adalah mnemonik untuk membantu Anda mengingatnya:

<vocabulary>Dini hari</vocabulary> adalah jam malammu — kamu <reading>harus</reading> (がた) sudah sampai di rumah saat itu. Jika kamu keluar lewat <vocabulary>sore</vocabulary>, kamu akan melewatkan makan malam dan mendapat masalah, jadi kamu harus pulang segera setelah hari mulai gelap. Anda HARUS!', 'Sore hari, Malam')
    RETURNING id INTO v_9456_sore_hari;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2481_untuk_menyisipkan, 'Untuk Menyisipkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2481_untuk_menyisipkan, 'Untuk Dimasukkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2491_untuk_naik, 'Untuk Naik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2491_untuk_naik, 'Untuk Bangkit', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2491_untuk_naik, 'Untuk Menjadi Lebih Tinggi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2494_untuk_menjadi_lebih_rendah, 'Untuk Menjadi Lebih Rendah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2494_untuk_menjadi_lebih_rendah, 'Untuk Turun', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2494_untuk_menjadi_lebih_rendah, 'Untuk Turun', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2494_untuk_menjadi_lebih_rendah, 'Untuk Menggantung', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2556_untuk_mengambil, 'Untuk Mengambil', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2556_untuk_mengambil, 'Untuk Menyerahkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2556_untuk_mengambil, 'Untuk Memadamkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2556_untuk_mengambil, 'Untuk Keluar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2577_untuk_melahirkan, 'Untuk Melahirkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2577_untuk_melahirkan, 'Untuk Menghasilkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2587_untuk_mempertahankan_sesuatu, 'Untuk Mempertahankan Sesuatu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2587_untuk_mempertahankan_sesuatu, 'Untuk Membuat Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2587_untuk_mempertahankan_sesuatu, 'Untuk Mengatur Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2598_untuk_memahami, 'Untuk Memahami', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2598_untuk_memahami, 'Agar Dapat Dimengerti', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2613_untuk_berhenti, 'Untuk Berhenti', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2620_kakak, 'Kakak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2620_kakak, 'Kakak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2620_kakak, 'Kakak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2658_surat_tebal, 'Surat Tebal', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2658_surat_tebal, 'Teks Tebal', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2658_surat_tebal, 'Berani', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2698_agar_terlihat, 'Agar Terlihat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2698_agar_terlihat, 'Agar Terlihat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2698_agar_terlihat, 'Bisa Melihat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2698_agar_terlihat, 'Tampak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2735_kulit, 'Kulit', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2735_kulit, 'Bersembunyi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2735_kulit, 'Mengupas', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2740_untuk_mencampur_sesuatu, 'Untuk Mencampur Sesuatu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2742_untuk_bertemu, 'Untuk Bertemu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2742_untuk_bertemu, 'Untuk Bertemu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2743_lampu, 'Lampu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2743_lampu, 'Kilatan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2745_sinar_bulan, 'Sinar bulan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2745_sinar_bulan, 'Cahaya bulan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2746_sinar_matahari, 'Sinar matahari', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2747_sama, 'Sama', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2748_hari_yang_sama, 'Hari yang sama', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2748_hari_yang_sama, 'Hari yang Sama', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2749_kali, 'Kali', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2749_kali, 'Jumlah Kali', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2749_kali, 'Waktu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2750_untuk_berputar, 'Untuk Berputar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2750_untuk_berputar, 'Untuk Berkeliling', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2750_untuk_berputar, 'Untuk Memutar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2751_suatu_saat, 'Suatu Saat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2751_suatu_saat, 'Sekali', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2752_kali_ini, 'Kali ini', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2753_setiap_saat, 'Setiap Saat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2753_setiap_saat, 'Setiap Saat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2754_banyak, 'Banyak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2754_banyak, 'Banyak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2754_banyak, 'Banyak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2755_mungkin, 'Mungkin', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2755_mungkin, 'Mungkin', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2755_mungkin, 'Mungkin', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2756_menjadi_benar, 'Menjadi Benar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2756_menjadi_benar, 'Agar Tepat Sasaran', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2756_menjadi_benar, 'Untuk Menyentuh', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2756_menjadi_benar, 'Untuk Memukul', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2757_sebuah_kesuksesan, 'Sebuah Kesuksesan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2757_sebuah_kesuksesan, 'Kesuksesan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2757_sebuah_kesuksesan, 'Memukul', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2757_sebuah_kesuksesan, 'Tebakan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2758_setiap_bulan, 'Setiap Bulan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2758_setiap_bulan, 'Bulanan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2759_setiap_hari, 'Setiap hari', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2759_setiap_hari, 'Sehari-hari', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2760_setiap_tahun, 'Setiap Tahun', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2760_setiap_tahun, 'Tahunan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2760_setiap_tahun, 'Setiap tahun', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2760_setiap_tahun, 'Setiap Tahun', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2762_beras, 'Beras', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2763_bulu, 'Bulu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2763_bulu, 'Bulu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2763_bulu, 'Sayap', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2763_bulu, 'Sayap', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2765_untuk_dipikirkan, 'Untuk Dipikirkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2765_untuk_dipikirkan, 'Untuk Dipertimbangkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2765_untuk_dipikirkan, 'Untuk Memberikan Pemikiran', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2767_daging, 'Daging', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2768_daging_sapi, 'Daging sapi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2769_ironi, 'Ironi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2769_ironi, 'Sarkasme', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2769_ironi, 'Ironis', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2769_ironi, 'Sarkastik', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2770_diri, 'Diri', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2770_diri, 'Saya sendiri', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2770_diri, 'Diri sendiri', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2771_kemerdekaan, 'Kemerdekaan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2771_kemerdekaan, 'Kemandirian', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2771_kemerdekaan, 'Otonomi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2772_warna, 'Warna', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2773_bermacam_macam, 'Bermacam-macam', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2773_bermacam_macam, 'Beragam', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2774_langit_biru, 'Langit Biru', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2774_langit_biru, 'Biru muda', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2774_langit_biru, 'Aqua Biru', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2775_untuk_pergi, 'Untuk Pergi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2777_arah_kereta_api, 'Arah Kereta Api', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2777_arah_kereta_api, 'Terikat Untuk', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2778_barat, 'Barat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2780_ribuan, 'Ribuan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2780_ribuan, 'Beberapa Ribu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2780_ribuan, 'Berapa Ribuan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2781_apa, 'Apa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2782_berapa_banyak_orang, 'Berapa Banyak Orang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2783_bulan_apa, 'Bulan Apa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2783_bulan_apa, 'Bulan yang mana', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2784_berapa_hari, 'Berapa hari', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2784_berapa_hari, 'Hari apa', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2784_berapa_hari, 'Hari apa', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2785_tahun_berapa, 'Tahun berapa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2785_tahun_berapa, 'Berapa tahun', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2786_berapa_kali, 'Berapa kali', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2787_untuk_belajar, 'Untuk Belajar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2787_untuk_belajar, 'Untuk Belajar Secara Mendalam', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2787_untuk_belajar, 'Untuk Belajar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2788_murid, 'Murid', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2789_kelas_sekolah, 'Kelas Sekolah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2789_kelas_sekolah, 'Kelas Di Sekolah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2789_kelas_sekolah, 'Tahun Ajaran', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2789_kelas_sekolah, 'Tahun Di Sekolah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2790_penerimaan_sekolah, 'Penerimaan Sekolah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2790_penerimaan_sekolah, 'Penerimaan Universitas', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2790_penerimaan_sekolah, 'Masuk Ke Sekolah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2790_penerimaan_sekolah, 'Pendaftaran', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2791_rekayasa, 'Rekayasa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2792_universitas, 'Universitas', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2792_universitas, 'Kampus', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2792_universitas, 'Universitas', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2793_absen_dari_sekolah, 'Absen Dari Sekolah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2793_absen_dari_sekolah, 'Ketidakhadiran Sekolah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2794_hutan, 'Hutan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2794_hutan, 'Belukar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2795_udara, 'Udara', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2795_udara, 'Suasana', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2795_udara, 'Suasana hati', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2796_langit, 'Langit', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2797_emas, 'Emas', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2798_testis, 'testis', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2799_uang, 'Uang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2800_hujan, 'Hujan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2801_biru, 'Biru', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2801_biru, 'Mentah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2802_anak_muda, 'Anak muda', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2802_anak_muda, 'Anak Muda', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2802_anak_muda, 'Anak muda', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2803_rumput, 'Rumput', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2803_rumput, 'Gulma', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2804_suara, 'Suara', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2804_suara, 'Kebisingan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2805_untuk_membuat, 'Untuk Membuat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2805_untuk_membuat, 'Untuk Membangun', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2805_untuk_membuat, 'Untuk Membuat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2806_tubuh, 'Tubuh', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2807_kekuatan_fisik, 'Kekuatan Fisik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2807_kekuatan_fisik, 'Kekuatan Fisik', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2807_kekuatan_fisik, 'Daya tahan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2807_kekuatan_fisik, 'Ketahanan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2808_di_dalam_tubuh, 'Di Dalam Tubuh', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2808_di_dalam_tubuh, 'Intern', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2809_komposisi, 'Komposisi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2809_komposisi, 'Menulis', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2809_komposisi, 'Karangan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2811_kerajinan, 'Kerajinan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2811_kerajinan, 'kerajinan tangan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2811_kerajinan, 'Manuver', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2812_pekerjaan_besar, 'Pekerjaan Besar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2812_pekerjaan_besar, 'Mahakarya', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2812_pekerjaan_besar, 'blockbuster', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2813_diagram, 'Diagram', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2814_suara, 'Suara', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2815_suara_keras, 'Suara Keras', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2815_suara_keras, 'Suara Besar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2820_adik, 'Adik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2820_adik, 'Adik kecil', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2821_saudara_laki_laki, 'Saudara laki-laki', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2821_saudara_laki_laki, 'Saudara', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2824_akan_datang, 'Akan Datang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2825_bulan_depan, 'Bulan Depan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2826_tahun_depan, 'Tahun depan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2827_dari_zaman_kuno, 'Dari Zaman Kuno', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2827_dari_zaman_kuno, 'Usia-Tua', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2829_selama_beberapa_tahun, 'Selama Beberapa Tahun', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2829_selama_beberapa_tahun, 'Selama Bertahun-tahun', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2830_di_dalam_perusahaan, 'Di Dalam Perusahaan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2830_di_dalam_perusahaan, 'Di Rumah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2830_di_dalam_perusahaan, 'Di Dalam Perusahaan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2831_bergabung_dengan_perusahaan, 'Bergabung dengan Perusahaan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2831_bergabung_dengan_perusahaan, 'Memasuki Sebuah Perusahaan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2833_markas_besar, 'Markas besar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2833_markas_besar, 'Kantor pusat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2833_markas_besar, 'Kantor Pusat Perusahaan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2834_perusahaan, 'Perusahaan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2834_perusahaan, 'Perusahaan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2834_perusahaan, 'Kantor', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2835_sudut, 'Sudut', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2835_sudut, 'Sudut', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2836_segi_tiga, 'Segi tiga', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2837_persegi, 'Persegi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2837_persegi, 'Persegi panjang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2837_persegi, 'Kubus', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2838_mengatakan, 'Mengatakan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2839_lembah, 'Lembah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2840_untuk_berlari, 'Untuk Berlari', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2841_bepergian, 'Bepergian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2841_bepergian, 'Berlari', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2841_bepergian, 'Bergerak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2841_bepergian, 'Penggerak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2842_menutup, 'Menutup', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2842_menutup, 'Di dekat sini', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2842_menutup, 'Di dekat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2843_dalam_beberapa_hari, 'Dalam Beberapa Hari', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2843_dalam_beberapa_hari, 'Segera', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2843_dalam_beberapa_hari, 'Hari-hari mendatang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2844_beberapa_tahun_terakhir, 'Beberapa Tahun Terakhir', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2845_gandum, 'Gandum', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2845_gandum, 'Jelai', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2889_malam, 'Malam', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2889_malam, 'Malam', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3408_anak_laki_laki, 'Anak laki-laki', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3409_ulat, 'Ulat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3410_pusat_kota, 'Pusat kota', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3410_pusat_kota, 'Jalan belakang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3412_pria, 'Pria', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3414_sampai_sekarang, 'Sampai Sekarang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3414_sampai_sekarang, 'Hingga kini', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3414_sampai_sekarang, 'Sejauh ini', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3416_benang_wol, 'Benang wol', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3416_benang_wol, 'Benang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3417_sekaligus, 'Sekaligus', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3417_sekaligus, 'Sekarang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3417_sekaligus, 'Langsung', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3417_sekaligus, 'Segera', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3647_kampung_halaman, 'kampung halaman', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3647_kampung_halaman, 'Desa', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3647_kampung_halaman, 'Rumah Orang Tua Seseorang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3648_rindu, 'Rindu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3648_rindu, 'Kerinduan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4876_realitas, 'Realitas', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4876_realitas, 'Kebenaran', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4876_realitas, 'Nyata', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4876_realitas, 'BENAR', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4970_babi, 'Babi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5935_buka_taksi, 'Buka Taksi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5935_buka_taksi, 'Tempat Parkir Kosong', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7568_arkeologi, 'Arkeologi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7568_arkeologi, 'Arkeologi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7617_seumur_hidup, 'Seumur Hidup', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7617_seumur_hidup, 'Kehidupan Semua Orang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7617_seumur_hidup, 'Kekal', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7670_sikap, 'Sikap', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7670_sikap, 'Tindakan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7670_sikap, 'Perilaku', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7672_membentuk, 'Membentuk', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7672_membentuk, 'Tegang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7730_diplomasi, 'Diplomasi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7731_tempat_lahir, 'Tempat lahir', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7731_tempat_lahir, 'Kelahiran', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8661_umumnya, 'Umumnya', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8661_umumnya, 'Tentang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8661_umumnya, 'Umum', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8661_umumnya, 'Inti', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8696_literatur, 'Literatur', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8736_semula, 'Semula', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8736_semula, 'Terutama', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8736_semula, 'Intinya', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8736_semula, 'Tentu saja', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8895_penghitung_roti_roti, 'Penghitung Roti Roti', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8895_penghitung_roti_roti, 'Konter untuk Roti', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9088_yang_lainnya, 'Yang Lainnya', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9088_yang_lainnya, 'Lainnya', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9088_yang_lainnya, 'Selain daripada itu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9158_pintu_keluar_barat, 'Pintu Keluar Barat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9158_pintu_keluar_barat, 'Pintu Masuk Barat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9158_pintu_keluar_barat, 'Gerbang Barat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9169_bulan_sabit, 'Bulan Sabit', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9238_baik_dalam, 'Baik Dalam', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9238_baik_dalam, 'Mahir', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9255_seseorang_berumur_tiga_puluhan, 'Seseorang berumur tiga puluhan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9256_biaya, 'Biaya', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9256_biaya, 'Harga', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9453_paralel, 'Paralel', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9456_sore_hari, 'Sore hari', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9456_sore_hari, 'Malam', false, true);

  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2481_untuk_menyisipkan, 'いれる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2491_untuk_naik, 'あがる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2494_untuk_menjadi_lebih_rendah, 'さがる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2556_untuk_mengambil, 'だす', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2577_untuk_melahirkan, 'うむ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2587_untuk_mempertahankan_sesuatu, 'たてる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2598_untuk_memahami, 'わかる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2613_untuk_berhenti, 'とまる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2620_kakak, 'あに', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2658_surat_tebal, 'ふとじ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2698_agar_terlihat, 'みえる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2735_kulit, 'かわ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2740_untuk_mencampur_sesuatu, 'まぜる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2742_untuk_bertemu, 'あう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2743_lampu, 'ひかり', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2745_sinar_bulan, 'げっこう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2746_sinar_matahari, 'にっこう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2747_sama, 'おなじ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2748_hari_yang_sama, 'どうじつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2749_kali, 'かい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2750_untuk_berputar, 'まわる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2751_suatu_saat, 'いっかい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2752_kali_ini, 'こんかい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2753_setiap_saat, 'まいかい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2754_banyak, 'おおい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2755_mungkin, 'たぶん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2756_menjadi_benar, 'あたる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2757_sebuah_kesuksesan, 'あたり', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2758_setiap_bulan, 'まいつき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2759_setiap_hari, 'まいにち', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2760_setiap_tahun, 'まいとし', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2762_beras, 'こめ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2763_bulu, 'はね', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2765_untuk_dipikirkan, 'かんがえる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2767_daging, 'にく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2768_daging_sapi, 'ぎゅうにく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2769_ironi, 'ひにく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2770_diri, 'じぶん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2771_kemerdekaan, 'じりつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2772_warna, 'いろ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2773_bermacam_macam, 'いろいろ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2774_langit_biru, 'みずいろ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2775_untuk_pergi, 'いく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2777_arah_kereta_api, 'ゆき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2777_arah_kereta_api, 'いき', NULL, false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2778_barat, 'にし', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2780_ribuan, 'なんぜん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2781_apa, 'なに', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2781_apa, 'なん', NULL, false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2782_berapa_banyak_orang, 'なんにん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2783_bulan_apa, 'なんがつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2784_berapa_hari, 'なんにち', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2785_tahun_berapa, 'なんねん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2786_berapa_kali, 'なんかい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2787_untuk_belajar, 'まなぶ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2788_murid, 'がくせい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2789_kelas_sekolah, 'がくねん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2790_penerimaan_sekolah, 'にゅうがく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2791_rekayasa, 'こうがく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2792_universitas, 'だいがく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2793_absen_dari_sekolah, 'きゅうがく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2794_hutan, 'はやし', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2795_udara, 'くうき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2796_langit, 'そら', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2797_emas, 'きん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2798_testis, 'きんたま', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2799_uang, 'おかね', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2800_hujan, 'あめ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2801_biru, 'あおい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2802_anak_muda, 'せいねん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2803_rumput, 'くさ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2804_suara, 'おと', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2805_untuk_membuat, 'つくる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2806_tubuh, 'からだ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2807_kekuatan_fisik, 'たいりょく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2808_di_dalam_tubuh, 'たいない', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2809_komposisi, 'さくぶん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2811_kerajinan, 'こうさく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2812_pekerjaan_besar, 'たいさく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2813_diagram, 'ず', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2814_suara, 'こえ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2815_suara_keras, 'おおごえ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2820_adik, 'おとうと', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2821_saudara_laki_laki, 'きょうだい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2824_akan_datang, 'くる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2825_bulan_depan, 'らいげつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2826_tahun_depan, 'らいねん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2827_dari_zaman_kuno, 'こらい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2829_selama_beberapa_tahun, 'ねんらい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2830_di_dalam_perusahaan, 'しゃない', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2831_bergabung_dengan_perusahaan, 'にゅうしゃ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2833_markas_besar, 'ほんしゃ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2834_perusahaan, 'かいしゃ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2835_sudut, 'かど', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2835_sudut, 'かく', NULL, false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2836_segi_tiga, 'さんかく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2837_persegi, 'しかく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2838_mengatakan, 'いう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2839_lembah, 'たに', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2840_untuk_berlari, 'はしる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2841_bepergian, 'そうこう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2842_menutup, 'ちかい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2843_dalam_beberapa_hari, 'きんじつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2844_beberapa_tahun_terakhir, 'きんねん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2845_gandum, 'むぎ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2889_malam, 'よる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3408_anak_laki_laki, 'おとこのこ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3409_ulat, 'けむし', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3410_pusat_kota, 'したまち', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3412_pria, 'おとこのひと', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3414_sampai_sekarang, 'いままで', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3416_benang_wol, 'けいと', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3417_sekaligus, 'いますぐ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3647_kampung_halaman, 'さと', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3648_rindu, 'さとごころ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4876_realitas, 'ほんとう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4970_babi, 'ぶた', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5935_buka_taksi, 'くうしゃ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7568_arkeologi, 'こうこがく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7617_seumur_hidup, 'いっしょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7670_sikap, 'しぐさ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7672_membentuk, 'けい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7730_diplomasi, 'がいこう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7731_tempat_lahir, 'うまれ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8661_umumnya, 'だいたい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8696_literatur, 'ぶんがく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8736_semula, 'ほんらい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8895_penghitung_roti_roti, 'きん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9088_yang_lainnya, 'そのほか', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9088_yang_lainnya, 'そのた', NULL, false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9158_pintu_keluar_barat, 'にしぐち', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9169_bulan_sabit, 'みかづき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9238_baik_dalam, 'うまい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9255_seseorang_berumur_tiga_puluhan, 'さんじゅうだい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9256_biaya, 'だいきん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9453_paralel, 'へいこう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9456_sore_hari, 'ゆうがた', NULL, true, true);

  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2481_untuk_menyisipkan, '毎日ボトルに水を入れる。', 'Saya memasukkan air ke dalam botol setiap hari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2481_untuk_menyisipkan, 'サンドイッチにアボカド入れた？', 'Apakah Anda memasukkan alpukat ke dalam sandwich?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2481_untuk_menyisipkan, 'ボランティアの会に入れて下さい。', 'Tolong izinkan saya bergabung dalam pertemuan sukarelawan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2491_untuk_naik, '八月に花火が上がる。', 'Kembang api dinyalakan pada bulan Agustus.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2491_untuk_naik, '三フロア上までエレベーターで上がりましょう。', 'Ayo naik lift ke tiga lantai.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2491_untuk_naik, '去年よりコレステロールが上がってしまった。', 'Kolesterol saya naik dari tahun lalu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2494_untuk_menjadi_lebih_rendah, '雨の日は気分が下がる。', 'Suasana hati saya lebih rendah pada hari-hari hujan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2494_untuk_menjadi_lebih_rendah, 'ベルトをしてなかったので、ジーンズが下がってきた。', 'Saya tidak memakai ikat pinggang, jadi celana jins saya mulai melorot.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2494_untuk_menjadi_lebih_rendah, '去年からスコアが下がった。', 'Skor telah menurun sejak tahun lalu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2556_untuk_mengambil, 'リサイクルのゴミを出す日です。', 'Ini adalah hari untuk menghentikan daur ulang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2556_untuk_mengambil, 'ノートを出して下さい。', 'Silakan keluarkan buku catatan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2556_untuk_mengambil, 'コンビニのレジで百円を出した。', 'Saya menyerahkan seratus yen di kasir toko serba ada.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2577_untuk_melahirkan, 'ナツミは元気な男の子を生んだ。', 'Natsumi melahirkan bayi laki-laki yang sehat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2577_untuk_melahirkan, 'お金は不正を生む。', 'Uang melahirkan penipuan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2577_untuk_melahirkan, 'このレストランのオーナーが、日本のイタリアンの人気を生んだシェフです。', 'Pemilik restoran ini adalah chef yang membuat masakan Italia populer di Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2587_untuk_mempertahankan_sesuatu, 'ブックスタンドは本を立てるためのものです。', 'Stand buku adalah tempat berdirinya buku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2587_untuk_mempertahankan_sesuatu, 'ここには木のボードを立てますか？', 'Maukah Anda memasang papan kayu di sini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2587_untuk_mempertahankan_sesuatu, 'ペンを立てるのに、そんなに手の力はいらないですよ。', 'Anda tidak memerlukan banyak tenaga di tangan Anda untuk membuat pena berdiri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2598_untuk_memahami, 'この人、だれか分かる？', 'Tahukah Anda siapa orang ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2598_untuk_memahami, '文で元パートナーからのメールだと、すぐに分かった。', 'Saya langsung tahu itu email dari mantan pasangan berdasarkan kalimat tersebut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2598_untuk_memahami, 'よく分からない本だった。', 'Itu adalah buku yang saya tidak begitu mengerti.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2613_untuk_berhenti, 'この白いラインで車が止まる。', 'Mobil berhenti di garis putih ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2613_untuk_berhenti, 'スケートリンクの上で、止まることができなかった。', 'Saya tidak bisa berhenti di arena skating.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2613_untuk_berhenti, 'バスは、もう少しで止まりそうでした。', 'Bus hampir berhenti.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2620_kakak, '兄が二人います。', 'Saya memiliki dua kakak laki-laki.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2620_kakak, '兄はプロジェクトマネジャーです。', 'Adikku adalah seorang manajer proyek.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2620_kakak, '兄の車でアトランタまで行きました。', 'Saya mengendarai mobil saudara laki-laki saya ke Atlanta.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2658_surat_tebal, 'この字は太字にしてください。', 'Tolong buat karakter ini berani.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2658_surat_tebal, 'これは太字のペンですか？', 'Apakah ini pena yang tebal?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2658_surat_tebal, '太字ペンでサインして下さい。', 'Tanda tangani dengan pena tebal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2698_agar_terlihat, 'ここから火山が見える。', 'Gunung berapi terlihat dari sini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2698_agar_terlihat, 'あそこの村人が見えますか？', 'Dapatkah Anda melihat penduduk desa di sana?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2698_agar_terlihat, '自分が他人からどう見えるのかがすごく気になる。', 'Aku sangat penasaran dengan penampilanku di mata orang lain.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2735_kulit, 'このカーペットは、牛の皮です。', 'Karpet ini terbuat dari kulit sapi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2735_kulit, 'ギョーザの皮と牛肉がある。', 'Ada bungkus gyoza dan daging sapi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2735_kulit, 'メロンの皮はピーラーでは中々むけませんね。', 'Kulit melon bukanlah yang paling mudah dikupas dengan alat pengupas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2740_untuk_mencampur_sesuatu, 'カードをよく交ぜて下さい。', 'Silakan kocok kartunya dengan baik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2740_untuk_mencampur_sesuatu, '男の子と女の子を交ぜたクラスでした。', 'Kelasnya adalah campuran antara laki-laki dan perempuan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2740_untuk_mencampur_sesuatu, '日本人、フランス人、イギリス人を交ぜた女子サッカーチームに入った。', 'Saya bergabung dengan tim sepak bola wanita yang terdiri dari pemain campuran Jepang, Prancis, dan Inggris.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2742_untuk_bertemu, 'アメリカで母に会う。', 'Saya akan bertemu ibu saya di Amerika.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2742_untuk_bertemu, '兄とは大体、月に一回会います。', 'Saya biasanya bertemu kakak laki-laki saya sebulan sekali.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2742_untuk_bertemu, 'トーフグのコウイチに生で会ったことある？', 'Pernahkah Anda bertemu langsung dengan Koichi dari Tofugu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2743_lampu, 'カーテンから光が入る。', 'Cahaya masuk melalui tirai.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2743_lampu, '日の出の光がまぶしい。', 'Cahaya matahari terbit sangat mempesona.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2743_lampu, '夕べの光、見た？きっとUFOだったね。', 'Apakah kamu melihat cahaya itu tadi malam? Itu mungkin UFO.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2745_sinar_bulan, '夕べは、月光がとてもきれいでした。', 'Cahaya bulan sangat indah tadi malam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2745_sinar_bulan, '白い月光がカーテンから入ってくる。', 'Cahaya bulan putih masuk melalui tirai.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2745_sinar_bulan, '月光の中に、月の王女がいた。', 'Di bawah sinar bulan, ada seorang putri bulan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2746_sinar_matahari, 'このアパートは日光がよく入る。', 'Apartemen ini mendapat sinar matahari yang baik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2746_sinar_matahari, '日光に体が当たりすぎるのも、よくないよ。', 'Tidak baik membiarkan tubuh Anda terlalu banyak terkena sinar matahari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2746_sinar_matahari, '北からは日光があまり入らないです。', 'Hanya ada sedikit sinar matahari yang datang dari utara.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2747_sama, 'この二つは同じです。', 'Keduanya sama.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2747_sama, '毎日、車内で同じ人に会います。', 'Saya melihat orang yang sama di kereta setiap hari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2747_sama, 'マミちゃんと同じクラスになれますように。', 'Kuharap aku bisa satu kelas dengan Mami-chan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2748_hari_yang_sama, 'DVDとCDが同日にリリースされた。', 'DVD dan CD dirilis pada hari yang sama.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2748_hari_yang_sama, '同日にシアトルとポートランドに行けますか？', 'Bisakah Anda pergi ke Seattle dan Portland di hari yang sama?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2748_hari_yang_sama, 'アポロ１１号が月へ行ったのは、父が三十才になった日と同日だ。', 'Apollo 11 pergi ke bulan pada hari yang sama ketika ayahku berusia tiga puluh tahun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2749_kali, '今日はテレビを一回だけ見た。', 'Saya hanya menonton TV sekali hari ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2749_kali, 'これは犬用のボール。赤ちゃんのボールじゃないって、何回言ったら分かるの？', 'Bola ini untuk anjing. Berapa kali saya harus memberitahu Anda bahwa ini bukan bola untuk bayi?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2749_kali, 'ファーストキスは人生で一回しかない大切なものなんだよ。', 'Ciuman pertama Anda adalah peristiwa penting yang hanya Anda alami sekali dalam hidup Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2750_untuk_berputar, 'テーブルの上で、コインが回る。', 'Koin itu berputar di atas meja.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2750_untuk_berputar, 'スシには、「回るスシ」と「回らないスシ」二つのタイプがあります。', 'Ada dua jenis sushi. "Sushi yang beredar" dan "sushi yang tidak beredar".');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2750_untuk_berputar, '去年のバレンタインはクラス中を回って女子からチョコレートをもらった。', 'Tahun lalu di hari Valentine saya berkeliling kelas dan mendapatkan coklat dari para gadis.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2751_suatu_saat, 'もう一回、言ってください。', 'Tolong ucapkan sekali lagi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2751_suatu_saat, '平日は一日に一回シャワーをあびます。', 'Pada hari kerja, saya mandi sekali sehari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2751_suatu_saat, '毎月、一回はラーメンをたべに町へ出かけます。', 'Setiap bulan, saya pergi ke kota untuk makan ramen setidaknya sekali.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2752_kali_ini, '今回は、やめておきます。', 'Saya memutuskan untuk melewatkan kali ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2752_kali_ini, '今回のオリンピックでは金メダルだった。', 'Saya mendapat medali emas di Olimpiade kali ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2752_kali_ini, '今回のトピックは「ロボット工学」です。', 'Topik kali ini adalah "rekayasa robot".');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2753_setiap_saat, 'あのミーティングに行くのは毎回この三人です。', 'Orang yang selalu menghadiri pertemuan itu adalah mereka bertiga.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2753_setiap_saat, 'ボストンマラソンには、毎回出ています。', 'Saya menjalankan Boston Marathon setiap saat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2753_setiap_saat, '毎回のテストでスコアが下がっていく気がする。', 'Saya merasa nilai saya turun di setiap ujian.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2754_banyak, 'ニューヨークは人が多い。', 'Ada banyak orang di New York.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2754_banyak, '「自分は正しい」と言う人は多い。', 'Ada banyak orang yang mengatakan mereka benar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2754_banyak, 'この村は、日本一人口が多い村です。', 'Desa ini merupakan desa terpadat di Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2755_mungkin, 'あの木は多分、竹です。', 'Pohon itu mungkin bambu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2755_mungkin, '八月五日は多分休みですよ。', 'Tanggal 5 Agustus mungkin adalah hari libur.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2755_mungkin, '主人は多分シンガポールに行きます。', 'Suamiku mungkin akan pergi ke Singapura.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2756_menjadi_benar, 'テレビが当たるらしいよ。', 'Rupanya Anda bisa memenangkan TV.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2756_menjadi_benar, 'やっぱりそうでしょ？当たってた！', 'Melihat? Saya benar!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2756_menjadi_benar, 'やめろよ！人に石が当たったらどうするんだ。', 'Hentikan! Bagaimana jika ada batu yang mengenai seseorang?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2757_sebuah_kesuksesan, '「当たり！」という文字が目に入った。', 'Kata "Jackpot!" menarik perhatianku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2757_sebuah_kesuksesan, '百万円の当たりが出た。', 'Saya memenangkan satu juta yen.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2757_sebuah_kesuksesan, 'インタビューした三人当たり一人は日本人でした。', 'Satu dari setiap tiga orang yang saya wawancarai adalah orang Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2758_setiap_bulan, 'このワークショップは毎月ありますか？', 'Apakah Anda mengadakan lokakarya ini setiap bulan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2758_setiap_bulan, '毎月五日は休みです。', 'Tutup pada tanggal 5 setiap bulannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2758_setiap_bulan, '毎月コンビニのアイスにかかるお金は三万円くらいです。', 'Uang yang saya keluarkan untuk membeli es krim di toko swalayan setiap bulan mencapai sekitar 30.000 yen.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2759_setiap_hari, '毎日ランニングをします。', 'Saya berlari setiap hari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2759_setiap_hari, '毎日車で会社に行きます。', 'Saya pergi bekerja dengan mobil setiap hari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2759_setiap_hari, 'アイスのためにコンビニに行くのが毎日のルーティーンです。', 'Rutinitas harian saya adalah pergi ke toko serba ada untuk membeli es krim.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2760_setiap_tahun, '毎年四月に花見をします。', 'Saya melihat bunga sakura setiap tahun di bulan April.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2760_setiap_tahun, '毎年のイベントはカレンダーにかいたよ。', 'Saya memasukkan acara tahunan ke dalam kalender.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2760_setiap_tahun, '毎年、何斤のパンをたべるんだろう？', 'Berapa banyak roti yang saya makan setiap tahun?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2762_beras, 'これはカリフォルニアの米です。', 'Ini beras dari California.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2762_beras, '米は一キロ当たり五百円です。', 'Beras berharga 500 yen per kilogram.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2762_beras, '日本で米が不足することは、あまりない。', 'Kekurangan beras jarang terjadi di Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2763_bulu, 'この虫には赤い羽がある。', 'Serangga ini mempunyai sayap berwarna merah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2763_bulu, 'これはうちのペットのエミューの羽かもしれません。', 'Ini mungkin bulu emu peliharaan kita.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2763_bulu, '父は、母がいないときは羽を広げてソファでビールをのんでいる。', 'Ayahku melebarkan sayapnya dan minum bir di sofa saat ibuku tidak ada.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2765_untuk_dipikirkan, 'アイディアを考える。', 'Saya memikirkan ide.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2765_untuk_dipikirkan, '少し考えさせてください。', 'Biarkan saya berpikir sedikit.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2765_untuk_dipikirkan, 'もっと自分について考えましょう。', 'Mari kita lebih memikirkan diri kita sendiri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2767_daging, 'このカレー、肉は入ってますか？', 'Apakah kari ini ada dagingnya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2767_daging, 'やはり日本生まれの牛の肉は、おいしいです。', 'Daging sapi dari sapi yang dipelihara di Jepang memang enak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2767_daging, 'わたしの人生にとって、お肉はとても大切です。', 'Daging sangat penting dalam hidup saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2768_daging_sapi, '牛肉は平気ですか？', 'Apakah daging sapi oke?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2768_daging_sapi, '夕べのディナーは牛肉のカレーだった。', 'Makan malam tadi malam adalah kari daging sapi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2768_daging_sapi, '日本では生の牛肉をたべますか？', 'Apakah Anda makan daging sapi mentah di Jepang?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2769_ironi, '父は、皮肉な男だ。', 'Ayah saya adalah orang yang ironis.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2769_ironi, '先生のジョークは、皮肉なのかどうか、分からなかった。', 'Aku tidak tahu apakah lelucon guruku itu ironis atau tidak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2769_ironi, '皮肉にも、日本のカタカナイングリッシュはアメリカ生まれの母には、とてもむずかしい。', 'Ironisnya, Katakana Bahasa Inggris di Jepang sangat sulit bagi ibu saya yang kelahiran Amerika.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2770_diri, '男は自分だけだった。', 'Saya satu-satunya pria di sana.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2770_diri, 'この木、自分で切ったの？', 'Apakah Anda sendiri yang menebang pohon ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2770_diri, '自分のお皿は自分で下げて下さい。', 'Silakan bersihkan piring Anda sendiri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2771_kemerdekaan, '年内のゴールは自立することです。', 'Tujuan saya pada akhir tahun ini adalah menjadi mandiri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2771_kemerdekaan, 'うちの子、中々自立できないんです。', 'Anak saya kesulitan untuk mandiri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2771_kemerdekaan, 'ホームレスの人々の自立をサポートするグループに入った。', 'Saya bergabung dengan kelompok yang mendukung para tunawisma untuk menjadi mandiri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2772_warna, 'この色はコバルトブルーです。', 'Warna ini biru kobalt.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2772_warna, '今日の日の出は、きれいなオレンジ色でした。', 'Matahari terbit hari ini berwarna oranye yang indah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2772_warna, 'このポスターは色のバランスがいいね。', 'Poster ini memiliki keseimbangan warna yang bagus.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2773_bermacam_macam, '色々なタイプの人がいます。', 'Ada berbagai tipe orang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2773_bermacam_macam, '大学では色々なクラスで学びました。', 'Saya belajar di berbagai kelas di universitas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2773_bermacam_macam, '色々考えたんですが、やはり人生で大切なものはお金だとおもいます。', 'Aku memikirkan berbagai hal, tapi pada akhirnya menurutku hal terpenting dalam hidup adalah uang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2774_langit_biru, 'あの水色のバッグがほしいんですが。', 'Saya ingin tas biru muda itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2774_langit_biru, '青いペンキと白いペンキをまぜて、水色のペンキができた。', 'Saya mendapatkan cat biru langit dengan mencampurkan cat biru dan putih.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2774_langit_biru, 'どうして今日の空は水色なんだろう？', 'Mengapa langit hari ini berwarna biru muda?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2775_untuk_pergi, '十一月に、日本に行く。', 'Saya akan ke Jepang pada bulan November.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2775_untuk_pergi, '他の用があるので、来月のパーティには多分行けません。', 'Saya punya rencana lain jadi saya mungkin tidak bisa datang ke pesta bulan depan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2775_untuk_pergi, 'タコベルがないなら月には行きたくない。', 'Saya tidak ingin pergi ke bulan jika tidak ada Taco Bell di sana.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2777_arah_kereta_api, 'このバスはシアトル行きです。', 'Bus ini menuju Seattle.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2777_arah_kereta_api, '行きのフライトでは少し休めましたか？', 'Apakah Anda bisa beristirahat pada penerbangan keberangkatan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2777_arah_kereta_api, '行きは車で行って、バスでかえるつもりです。', 'Saya akan pergi dengan mobil dan pulang dengan bus.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2778_barat, '西はどっちの方ですか？', 'Ke arah barat yang mana?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2778_barat, '西日本の生まれです。', 'Saya lahir di Jepang bagian barat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2778_barat, '会社の西にはコンビニやスーパーがたくさんあります。', 'Ada banyak toko serba ada dan supermarket di sebelah barat perusahaan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2780_ribuan, '何千回もエラーが出た。', 'Kami punya ribuan kesalahan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2780_ribuan, 'マミは人生で何千ものベーコンをたべてきた。', 'Mami telah makan ribuan potongan bacon dalam hidupnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2780_ribuan, 'この先、何千メートル行けばいいんだろう。', 'Saya bertanya-tanya berapa ribu meter lagi yang harus saya tempuh.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2780_ribuan, '何千円ですか？', 'Berapa ribu yen?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2781_apa, '何？', 'Apa?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2781_apa, 'ディナーは何がいい？', 'Apa yang kamu inginkan untuk makan malam?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2781_apa, 'これは何の花ですか？', 'Bunga apa ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2782_berapa_banyak_orang, 'スタッフは何人ですか？', 'Berapa banyak orang yang menjadi staf Anda?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2782_berapa_banyak_orang, 'そのパーティーには、何人来ましたか。', 'Berapa banyak orang yang datang ke pesta itu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2782_berapa_banyak_orang, '今まで大体何人の男の人とデートに行きましたか？', 'Tentang berapa banyak pria yang pernah kamu kencani?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2783_bulan_apa, '何月生まれですか？', 'Kamu lahir di bulan apa?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2783_bulan_apa, '何月に入学しますか？', 'Bulan apa Anda akan mendaftar?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2783_bulan_apa, 'ハワイに行くのは何月でもいいよ。', 'Tidak masalah bulan apa kita pergi ke Hawaii.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2784_berapa_hari, 'アルバイト、何日休むんですか。', 'Berapa hari Anda akan mengambil cuti dari pekerjaan paruh waktu Anda?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2784_berapa_hari, '何日がいい？', 'Hari apa yang baik untukmu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2784_berapa_hari, 'エレベーターから何日出られなかったんですか。', 'Berapa hari Anda terjebak di dalam lift?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2785_tahun_berapa, 'ご主人は、何年生まれですか？', 'Tahun berapa suamimu lahir?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2785_tahun_berapa, '何年くらいアメリカにいましたか？', 'Berapa tahun Anda berada di Amerika?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2785_tahun_berapa, '兄にはもう何年も会ってません。', 'Sudah bertahun-tahun aku tidak bertemu saudaraku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2786_berapa_kali, '先月ご主人とは何回出かけましたか？', 'Berapa kali Anda pergi keluar dengan suami Anda bulan lalu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2786_berapa_kali, 'このビデオ、おもしろすぎて何回も見てしまうわ。', 'Video ini sangat lucu sehingga saya harus menontonnya berkali-kali.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2786_berapa_kali, '日本へは何回来たことがありますか。', 'Berapa kali Anda ke Jepang?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2787_untuk_belajar, '人生は学ぶことが多いです。', 'Ada begitu banyak hal yang bisa dipelajari dalam hidup.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2787_untuk_belajar, '兄はロボット工学を学ぶ学生です。', 'Kakak saya adalah seorang mahasiswa yang mempelajari teknik robotik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2787_untuk_belajar, '学ぶことは大切だけど、多分もっと大切なのは、どのように学ぶかということ。', 'Belajar itu penting, tapi mungkin yang lebih penting adalah cara Anda belajar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2788_murid, '母はメディカルスクールの学生です。', 'Ibu saya adalah seorang siswa sekolah kedokteran.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2788_murid, '不正な学生ビザを用いて日本に来る人々もいます。', 'Beberapa orang datang ke Jepang dengan visa pelajar palsu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2788_murid, '「人生の学生です」と言えば、学生のディスカウントがうけられるっていうのは本当なんですか？', 'Benarkah jika Anda mengatakan Anda adalah "pelajar kehidupan" Anda akan mendapat diskon pelajar?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2789_kelas_sekolah, '兄は一つ上の学年です。', 'Adikku satu tahun ajaran di depanku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2789_kelas_sekolah, '学年が同じの友人もいます。', 'Beberapa teman berasal dari kelas yang sama.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2789_kelas_sekolah, '一学年分のクラスをサボって、オーストラリアに行きました。', 'Saya membolos kelas sepanjang tahun ajaran dan pergi ke Australia.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2790_penerimaan_sekolah, '入学おめでとう。', 'Selamat atas pendaftaran Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2790_penerimaan_sekolah, '兄は入学したばかりの一年生です。', 'Adikku adalah mahasiswa baru yang baru saja mendaftar sekolah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2790_penerimaan_sekolah, '入学にかかったお金は、大体十万円でした。', 'Biaya masuk sekolah sekitar 100.000 yen.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2791_rekayasa, 'ロボット工学のクラスに入りたい。', 'Saya ingin mengambil kelas teknik robot.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2791_rekayasa, '工学を学んでから今の会社に入社しました。', 'Setelah belajar teknik, saya bergabung dengan perusahaan saya saat ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2791_rekayasa, 'デザインと工学は見方によっては近いものです。', 'Desain dan teknik serupa tergantung pada perspektifnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2792_universitas, '父は、１９９１年に大学に入った。', 'Ayah saya masuk perguruan tinggi pada tahun 1991.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2792_universitas, '大学ではフランス文学を学びました。', 'Saya belajar sastra Perancis di universitas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2792_universitas, '日本の大学は、二十五才より年が下の学生が多いです。', 'Banyak mahasiswa di Jepang berusia di bawah dua puluh lima tahun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2793_absen_dari_sekolah, '休学したいなぁ。', 'Saya ingin mengambil cuti.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2793_absen_dari_sekolah, '休学中は父のアパートにいました。', 'Selama cuti saya, saya tinggal di apartemen ayah saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2793_absen_dari_sekolah, '休学してフランスにワーキングホリデーに行きたいんです。', 'Saya ingin mengambil cuti dan pergi ke Prancis untuk liburan kerja.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2794_hutan, 'あの林にはログハウスがたくさんあります。', 'Ada banyak rumah kayu di hutan itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2794_hutan, '虫がたくさんいたので、林からは早々に出ましたよ。', 'Saya meninggalkan hutan lebih awal karena ada banyak serangga.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2794_hutan, '竹の林の中で、竹の子が土から出るのを見たんです。', 'Saya melihat rebung keluar dari tanah di hutan bambu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2795_udara, '山は空気がきれいですね。', 'Udara pegunungan sangat bersih.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2795_udara, '外から、つめたい空気が入ってきた。', 'Udara sejuk masuk dari luar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2795_udara, 'ちょっとは空気をよんで下さい。', 'Tolong ambil saja petunjuknya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2796_langit, '空は広い。', 'Langitnya besar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2796_langit, '夕べ、西の空はオレンジ色だった。', 'Langit barat berwarna oranye kemarin malam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2796_langit, '雨のせいで、空には月が見えません。', 'Anda tidak dapat melihat bulan di langit karena hujan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2797_emas, '金のネックレスをプレゼントしました。', 'Aku memberinya kalung emas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2797_emas, 'これは本当の金ですか？', 'Apakah ini emas asli?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2797_emas, '日本には金でできたトイレがあるそうだ。', 'Ternyata, ada toilet yang terbuat dari emas di Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2798_testis, 'それは金玉ではありません。', 'Itu bukan testis.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2798_testis, '自分の金玉が気に入ってます。', 'Saya puas dengan testis saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2798_testis, '金玉は男の人の体の中でも大切なパーツの一つです。', 'Testis adalah salah satu bagian terpenting tubuh pria.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2799_uang, 'ウェディングリングは、お金よりも大切です。', 'Cincin kawin lebih penting daripada uang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2799_uang, '先月はギャンブルで多くのお金が入った。', 'Bulan lalu, saya mendapat banyak uang dari perjudian.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2799_uang, '本社のお金のマネジメントの仕方に不正があった。', 'Terdapat beberapa kendala dalam cara pengelolaan keuangan di kantor pusat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2800_hujan, '今日は雨だ。', 'Hari ini hujan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2800_hujan, 'ポートランドは一年の内、大体四ヶ月は雨です。', 'Hujan turun di Portland selama sekitar empat bulan dalam setahun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2800_hujan, '雨の休日は出かけないでアパートの中にこもることが多いです。', 'Saya sering tinggal di apartemen saya daripada keluar saat hujan di hari libur.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2801_biru, 'この青い花はスイートピーです。', 'Bunga biru ini adalah kacang manis.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2801_biru, 'このオレンジ、まだ青いですね。', 'Jeruk ini masih mentah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2801_biru, '青い空と白いビーチのある町はどこですか？', 'Di manakah kota dengan langit biru dan pantai putih?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2802_anak_muda, 'その青年は十八才でした。', 'Pemuda itu berusia delapan belas tahun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2802_anak_muda, 'あなたは、なんて心の広い青年だ。', 'Anda seorang pemuda yang murah hati.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2802_anak_muda, '青年は大人になったらパイロットになりたいと言っていた。', 'Pemuda itu berkata bahwa dia ingin menjadi pilot ketika besar nanti.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2803_rumput, 'ここは草ばかりだ。', 'Tidak ada apa-apa selain rumput di sekitar sini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2803_rumput, '草の手入れは中々めんどくさいです。', 'Merawat rumput memang cukup merepotkan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2803_rumput, '牛は草の他にも米などをたべますよ。', 'Selain rumput, sapi juga memakan nasi dan sejenisnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2804_suara, 'これはフェラーリのエンジンの音だ。', 'Ini adalah suara mesin Ferrari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2804_suara, '上のフロアから、大きな音がしました。', 'Terdengar suara keras dari lantai atas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2804_suara, '雨の音がうるさくて、よく休めませんでした。', 'Suara hujan begitu deras hingga aku tidak bisa beristirahat dengan baik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2805_untuk_membuat, '母は、いつもサンドイッチを作る。', 'Ibuku selalu membuat sandwich.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2805_untuk_membuat, '学生ポータルのアカウントもう作った？', 'Apakah Anda sudah membuat akun portal siswa?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2805_untuk_membuat, 'ロボットを作りたくて工学のクラスをとってます。', 'Saya mengambil kelas teknik karena saya ingin membuat robot.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2806_tubuh, 'その男は体が大きい。', 'Pria itu memiliki tubuh yang besar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2806_tubuh, '元気な体を一生大切にしてね。', 'Hargai tubuh sehat Anda seumur hidup.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2806_tubuh, 'アレルギーで体中が赤くなった。', 'Seluruh tubuh saya menjadi merah karena alergi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2807_kekuatan_fisik, 'お父さんは体力がない。', 'Ayah tidak memiliki banyak daya tahan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2807_kekuatan_fisik, '体力アップのためにランニングを一日一回してます。', 'Saya berlari sekali sehari untuk meningkatkan stamina saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2807_kekuatan_fisik, '去年の体力と今の体力は、大体同じです。', 'Kekuatan fisik saya tahun lalu dan kekuatan saya saat ini hampir sama.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2808_di_dalam_tubuh, 'どうしても水は体内から出る。', 'Air keluar dari tubuh apapun yang terjadi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2808_di_dalam_tubuh, '体内にウィルスが入ったようだ。', 'Sepertinya ada virus yang masuk ke dalam tubuh.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2808_di_dalam_tubuh, '体内のアルコール分が不足してる気がします。', 'Saya merasa kandungan alkohol dalam tubuh kurang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2809_komposisi, '七才の男の子の作文が本になった。', 'Esai seorang anak laki-laki berusia tujuh tahun menjadi sebuah buku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2809_komposisi, '一年生の作文クラスで「お花見」をテーマに作文をした。', 'Di kelas menulis kelas satu, kami menulis dengan tema "melihat bunga sakura".');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2809_komposisi, '作文のエラーは太い赤ペンで正しました。', 'Saya mengoreksi kesalahan komposisi dengan pena merah gemuk.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2811_kerajinan, 'わたし、工作が下手なんです。', 'Saya tidak pandai kerajinan tangan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2811_kerajinan, '父は工作キットでキッチンを丸ごとつくった。', 'Ayah saya membangun seluruh dapur dari peralatan kerajinan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2811_kerajinan, '先生は、夕べはバーにいたというアリバイ工作をしたのだ。', 'Guru membuat alibi bahwa dia ada di bar tadi malam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2812_pekerjaan_besar, '「サイコ」はヒッチコックの大作だ。', '"Psycho" adalah karya besar Hitchcock.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2812_pekerjaan_besar, '「スターウォーズ エピソードI」は１９９９年のアメリカ一の大作でした。', '"Star Wars: Episode I" adalah film Amerika paling epik tahun 1999.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2812_pekerjaan_besar, 'もう自分では大作のアイディアは考えられない。', 'Saya tidak dapat lagi menemukan ide untuk sebuah mahakarya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2813_diagram, '下の図を見てください。', 'Silakan lihat diagram di bawah ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2813_diagram, '村の人口不足を図にしてみた。', 'Saya membuat diagram untuk menunjukkan kekurangan penduduk di desa tersebut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2813_diagram, '図はクリックすると大きさを上げることができる。', 'Ukuran diagram dapat diperbesar dengan mengkliknya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2814_suara, 'あっ、お父さんの声だ。', 'Oh, itu suara Ayah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2814_suara, 'ついつい口から声が出てしまった。', 'Suaraku keluar dari mulutku secara tidak sengaja.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2814_suara, 'あなたの声、友人の声とそっくりです。', 'Suaramu terdengar persis seperti suara temanku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2815_suara_keras, 'つい大声が出てしまった。', 'Aku meninggikan suaraku meskipun aku sendiri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2815_suara_keras, 'コネ入社だなんて、大声では言えないよ。', 'Saya tidak bisa mengatakan terlalu keras bahwa saya bergabung dengan perusahaan melalui koneksi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2815_suara_keras, '山の方に大声で「やっほー」と言うと「やっほー」と山びこがかえってきた。', 'Ketika saya mengatakan "Yahoo" ke pegunungan, "Yahoo" bergema kembali.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2820_adik, '左の男の子がわたしの弟です。', 'Anak laki-laki di sebelah kiri adalah saudara laki-laki saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2820_adik, '弟は、テレビを見ません。', 'Adikku tidak menonton TV.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2820_adik, '弟と兄は声がそっくりです。', 'Adik laki-lakiku dan kakak laki-lakiku terdengar persis sama.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2821_saudara_laki_laki, 'あの二人は兄弟です。', 'Keduanya adalah saudara.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2821_saudara_laki_laki, 'マリオとルイージって兄弟だったの！？', 'Apa Mario dan Luigi bersaudara!?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2821_saudara_laki_laki, 'わたしには兄弟が四人います。', 'Saya mempunyai empat saudara kandung.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2824_akan_datang, 'もうすぐ先生が来る。', 'Guru akan segera datang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2824_akan_datang, 'アメリカから来ました。', 'Saya berasal dari Amerika.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2824_akan_datang, 'お母さん、おねがいだから会社には来ないで。', 'Bu, tolong jangan datang ke kantorku, aku mohon.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2825_bulan_depan, 'ピアノのコンクールは来月ですか？', 'Apakah kompetisi piano bulan depan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2825_bulan_depan, '来月、パーティーをするので、かなえさんも来て下さい。', 'Kami akan mengadakan pesta bulan depan. Silakan datang, Kanae.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2825_bulan_depan, '来月入社するスタッフは大体九十人です。', 'Jumlah staf baru yang akan bergabung dengan perusahaan bulan depan adalah sekitar sembilan puluh.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2826_tahun_depan, '来年は２０００年です。', 'Tahun depan adalah tahun 2000.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2826_tahun_depan, 'わたしは来年の九月に十八才になります。', 'Saya akan berusia delapan belas tahun pada bulan September mendatang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2826_tahun_depan, '来年のプロジェクトまでは日本にいるつもりだよ。', 'Saya akan tinggal di Jepang sampai proyek tahun depan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2827_dari_zaman_kuno, '古来から、あの山は「ふじ山」という名だ。', 'Sejak zaman kuno, gunung itu disebut "Gunung Fuji".');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2827_dari_zaman_kuno, 'カッパは、日本古来のヨウカイです。', 'Kappa adalah yokai Jepang kuno.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2827_dari_zaman_kuno, '竹を用いるのは、古来のDIYの仕方です。', 'Menggunakan bambu adalah cara kuno DIY.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2829_selama_beberapa_tahun, 'マイケルは、父の三十年来の友人です。', 'Michael adalah teman ayahku selama tiga puluh tahun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2829_selama_beberapa_tahun, 'コウイチは、ついに十年来のアメリカンドリームをかなえました。', 'Koichi akhirnya mewujudkan impian Amerikanya selama satu dekade.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2829_selama_beberapa_tahun, 'これは五十年来の大作ですよ。', 'Ini adalah mahakarya yang dibuat selama lima puluh tahun!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2830_di_dalam_perusahaan, '社内にデザイナーがいます。', 'Perusahaan ini memiliki desainer internal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2830_di_dalam_perusahaan, '社内では今、白のデスクが人気です。', 'Meja putih sedang populer di perusahaan sekarang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2830_di_dalam_perusahaan, '会社のパーティについてのメッセージが社内メールで回ってきた。', 'Pesan tentang pihak perusahaan datang sebagai email internal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2831_bergabung_dengan_perusahaan, '入社したばかりです。', 'Saya baru saja bergabung dengan sebuah perusahaan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2831_bergabung_dengan_perusahaan, 'この会社には、四月に入社しました。', 'Saya bergabung dengan perusahaan ini pada bulan April.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2831_bergabung_dengan_perusahaan, '入社テストは何日ですか？', 'Tanggal berapa tes masuk perusahaan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2833_markas_besar, '本社はポートランドにあります。', 'Kantor pusatnya berada di Portland.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2833_markas_besar, '本社にはスタッフが千人ほどいます。', 'Markas besar memiliki staf sekitar 1.000 orang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2833_markas_besar, '本社のサーバーに不正アクセスがあったらしい。', 'Sepertinya ada akses tidak sah ke server kantor pusat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2834_perusahaan, 'この会社のスタッフは五百人です。', 'Perusahaan ini memiliki lima ratus staf.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2834_perusahaan, 'グーグルは、とても大きな会社です。', 'Google adalah perusahaan yang sangat besar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2834_perusahaan, '会社に近いアパートはありますか？', 'Apakah ada apartemen yang dekat dengan perusahaan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2835_sudut, '角にコンビニがありますよ。', 'Ada toko serba ada di sudut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2835_sudut, 'テーブルの角にカバンが下がっていた。', 'Sebuah tas tergantung di sudut meja.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2835_sudut, '角が五つあるシェイプのことを、「ペンタゴン」と言うらしい。', 'Rupanya, bangun datar dengan lima sudut disebut "segi lima".');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2836_segi_tiga, 'そのチーズは三角でした。', 'Keju itu berbentuk segitiga.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2836_segi_tiga, 'パイナップルは小さく三角に切って下さい。', 'Potong nanas menjadi segitiga kecil.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2836_segi_tiga, '三角と四角の二タイプのタイルがあります。', 'Ada dua jenis ubin, segitiga dan persegi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2837_persegi, 'わたしのキーボードのキーは四角です。', 'Tombol pada keyboard saya berbentuk persegi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2837_persegi, '日本の切手は主に四角ですよ。', 'Perangko Jepang sebagian besar berbentuk persegi panjang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2837_persegi, '「口」と言う字は、ただの四角に見えませんか？', 'Bukankah karakter "kuchi" terlihat seperti persegi?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2838_mengatakan, 'スタッフは「ありがとうございました」と、言う。', 'Staf berkata, "Terima kasih."');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2838_mengatakan, 'もう少しゆっくり言って下さい。', 'Tolong ucapkan sedikit lebih lambat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2838_mengatakan, '今日はちゃんと先生に「おはようございます」言った？', 'Sudahkah Anda memberi tahu guru Anda "Selamat pagi" hari ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2839_lembah, '谷の水はきれいです。', 'Air di lembah itu bersih.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2839_lembah, 'あの谷には、ナウシカという名の少女がいますよ。', 'Ada seorang gadis bernama Nausicaa di lembah itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2839_lembah, '谷の入り口はここです。', 'Pintu masuk lembah ada di sini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2840_untuk_berlari, 'レストランまで走る？', 'Mau lari ke restoran?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2840_untuk_berlari, '町の北を走るバスがあります。', 'Ada bus yang berangkat ke utara kota.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2840_untuk_berlari, '毎日走って会社に行く人生はもうイヤなんです。', 'Saya tidak tahan lagi harus pergi ke kantor setiap hari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2841_bepergian, '走行スピードを下げてください。', 'Kurangi kecepatan mengemudi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2841_bepergian, 'バスの走行中に立ち上がらないで下さい。', 'Jangan berdiri saat bus sedang melaju.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2841_bepergian, '今日の走行ルートは北回りです。', 'Rute mengemudi hari ini adalah menuju utara.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2842_menutup, 'ここから近いコンビニはセブンイレブンです。', 'Toko serba ada di dekat sini adalah 7-Eleven.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2842_menutup, 'この村の人口は百人に近いです。', 'Populasi desa ini hampir mencapai seratus orang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2842_menutup, 'アメリカ人にとって、ビールは水に近いって本当？', 'Benarkah bir hampir seperti air bagi masyarakat Amerika?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2843_dalam_beberapa_hari, 'このレストランは近日オープンする。', 'Restoran ini akan segera dibuka.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2843_dalam_beberapa_hari, '近日、兄の本がリリースされます。', 'Buku saudaraku akan dirilis dalam beberapa hari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2843_dalam_beberapa_hari, '近日中にメールしますね。', 'Saya akan segera mengirim email kepada Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2844_beberapa_tahun_terakhir, '近年、日本のウィスキーがトレンドです。', 'Dalam beberapa tahun terakhir, wiski Jepang sedang menjadi tren.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2844_beberapa_tahun_terakhir, '近年、この村では水が不足している。', 'Dalam beberapa tahun terakhir, terjadi kekurangan air di desa ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2844_beberapa_tahun_terakhir, '近年のテクノロジーはすごいですね！', 'Teknologi dalam beberapa tahun terakhir sungguh luar biasa, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2844_beberapa_tahun_terakhir, '近年は、スマホをもつことがデフォルトになりました。', 'Saat ini, memiliki ponsel pintar sudah menjadi hal yang lumrah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2845_gandum, '麦アレルギーです。', 'Saya alergi terhadap gandum.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2845_gandum, 'うちのハムスターは麦と米を気に入ったみたいです。', 'Hamster kami sepertinya menyukai gandum dan nasi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2845_gandum, '大麦と小麦のちがいは何ですか。', 'Apa perbedaan antara jelai dan gandum?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2889_malam, '夜のパリはロマンチックだ。', 'Paris di malam hari memang romantis.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2889_malam, '今日の夜ごはんはパスタです。', 'Makan malam hari ini adalah pasta.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2889_malam, '私は夜に出かけることが多いです。', 'Saya sering keluar pada malam hari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3408_anak_laki_laki, '２０１８年に男の子が生まれました。', 'Seorang anak laki-laki lahir pada tahun 2018.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3408_anak_laki_laki, 'おめでとうございます、お母さん。かわいい男の子ですよ。', 'Selamat, ibu. Itu bayi laki-laki yang lucu!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3408_anak_laki_laki, 'あの元気な男の子は来年一年生だ。', 'Anak laki-laki energik itu akan duduk di kelas satu tahun depan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3409_ulat, 'キャベツの中に毛虫がいた。', 'Ada ulat di kubis.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3409_ulat, '土じゃなくて、毛虫のフンだった。', 'Itu bukan tanah. Itu adalah kotoran ulat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3409_ulat, 'ペットの毛虫のシャーロットです。', 'Ini Charlotte, ulat peliharaanku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3410_pusat_kota, '父は下町で生まれた。', 'Ayah saya lahir di daerah pusat kota.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3410_pusat_kota, '下町の空気や人々が気に入ったんです。', 'Saya menyukai suasana dan orang-orang di pusat kota.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3410_pusat_kota, '下町とは日本の古いスタイルのダウンタウンのことです。', 'Shitamachi adalah pusat kota gaya Jepang kuno.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3412_pria, '田中先生は男の人です。', 'Tanaka sensei adalah seorang laki-laki.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3412_pria, '男の人用のブーツは中々ありませんでした。', 'Tidak banyak sepatu bot untuk pria.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3412_pria, 'ロマンチックな男の人ってプロポーズでフラッシュモブやりがちよね。', 'Pria romantis cenderung melakukan flash mob saat melamar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3414_sampai_sekarang, '今まで、ありがとう。', 'Terima kasih untuk segalanya sejauh ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3414_sampai_sekarang, '今まで何をしていたんですか。', 'Apa yang sudah kamu lakukan sejauh ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3414_sampai_sekarang, '今までコウイチが言ってたことは本当だった。', 'Apa yang dikatakan Koichi sampai saat ini memang benar adanya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3416_benang_wol, 'ピンク色の毛糸を下さい。', 'Tolong beri saya wol merah muda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3416_benang_wol, 'おばあちゃんが自分で作った毛糸のブランケットをくれました。', 'Nenek memberiku selimut wol yang dia buat sendiri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3416_benang_wol, 'このジーンズ、本当は毛糸でできています。', 'Jeans ini sebenarnya terbuat dari wol.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3417_sekaligus, '今すぐスーパーにいってきます。', 'Aku sedang pergi ke supermarket sekarang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3417_sekaligus, '今すぐテレビのニュース見て！', 'Tonton berita di TV sekarang!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3417_sekaligus, '今すぐプライベートジェットで、むかえに行くよ。', 'Aku akan datang menjemputmu dengan jet pribadi sekarang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3647_kampung_halaman, 'あの山は、このクマの里なんです。', 'Gunung itu adalah kampung halaman beruang ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3647_kampung_halaman, '十六才で里から出て、ウェブデザイナーになりました。', 'Saya meninggalkan kampung halaman saya pada usia enam belas tahun dan menjadi seorang desainer web.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3647_kampung_halaman, '水を手に入れるため、里に下りた。', 'Saya pergi ke desa untuk mengambil air.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3648_rindu, 'ちょっと里心がついちゃったんです。', 'Saya agak rindu kampung halaman.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3648_rindu, 'なつかしいメロディーに、里心がわいた。', 'Melodi nostalgia membuatku rindu kampung halaman.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3648_rindu, 'この仔犬は里心がついて泣いているのかもしれないけど、そんなのかまうもんか。', 'Anak anjing ini mungkin menangis karena rindu kampung halaman, tapi siapa yang peduli?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4876_realitas, 'それは本当ですか？', 'Apakah itu benar?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4876_realitas, 'キャンペーンで百万円くれるって、本当かな？', 'Saya ingin tahu apakah mereka akan memberi Anda satu juta yen dari kampanye ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4876_realitas, '本当に字が下手なのです。', 'Aku sangat buruk dalam menulis tangan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4970_babi, 'あそこに豚がいるよ。', 'Ada babi di sana.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4970_babi, 'わっ、子豚だ！かわいい。', 'Wow, itu anak babi! Imut-imut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4970_babi, 'ホンモノの豚を見るのは、これがはじめてです。', 'Ini adalah pertama kalinya saya melihat babi di kehidupan nyata.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5935_buka_taksi, 'あのコインパーキング、空車あるかな？', 'Saya ingin tahu apakah parkir berbayar itu memiliki tempat yang tersedia.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5935_buka_taksi, '今日はUberもLyftも中々空車がない。', 'Tidak ada Uber atau Lyft yang tersedia saat ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5935_buka_taksi, 'ニューヨークでは、空車のタクシーを見たら手を上げて大声で「タクシー！」と言って下さい。', 'Di New York, jika Anda melihat taksi tersedia, angkat tangan dan teriakkan, "Taksi!"');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7568_arkeologi, 'これは考古学のリサーチです。', 'Ini adalah penelitian arkeologi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7568_arkeologi, '考古学の見方では正しいデータです。', 'Data tersebut benar dari sudut pandang arkeologi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7568_arkeologi, '工学と考古学、どちらにするか、まよっています。', 'Saya kesulitan memutuskan apakah saya harus mengambil jurusan teknik atau arkeologi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7617_seumur_hidup, '主人は一生のパートナーです。', 'Suamiku adalah pasangan hidupku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7617_seumur_hidup, '色々自分でやらないと、一生自立できないよ。', 'Jika Anda tidak melakukan berbagai hal sendiri, Anda akan menjalani seluruh hidup Anda tanpa kemandirian.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7617_seumur_hidup, 'あなたは一生、大学一年生でいるつもりですか？', 'Apakah Anda berniat menjadi mahasiswa baru di perguruan tinggi seumur hidup Anda?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7670_sikap, 'あの子の仕草は、まるで大人の仕草だ。', 'Sikap anak itu sama seperti orang dewasa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7670_sikap, '木を切る仕草がお父さんにそっくりです。', 'Caramu menebang pohon persis seperti cara ayahmu melakukannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7670_sikap, '先生の仕草は女の人らしい。', 'Gestur gurunya feminin.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7672_membentuk, '「出る」の「て形」は「出て」です。', 'Bentuk te dari "deru" adalah "dete."');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7672_membentuk, '会社では、です・ます形を用いてコミュニケーションをとります。', 'Di perusahaan, kami berkomunikasi menggunakan bentuk desu/masu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7672_membentuk, '「大切な人だった」？どうして今、カコ形で言ったの？', '"Kamu adalah orang penting?" Mengapa Anda mengatakannya dalam bentuk lampau?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7730_diplomasi, '日本の外交についての本はたくさんある。', 'Ada banyak buku tentang diplomasi Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7730_diplomasi, '外交力が足りないんですよ。', 'Keterampilan diplomatis saja tidak cukup.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7730_diplomasi, 'アメリカとの外交をリードする人はだれですか？', 'Siapa yang memimpin diplomasi dengan Amerika Serikat?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7731_tempat_lahir, 'わたしは日本人ですが、生まれはサンフランシスコです。', 'Saya orang Jepang, tapi saya lahir di San Francisco.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7731_tempat_lahir, '元パートナーは、アメリカ生まれの日本人なんです。', 'Mantan pasangan saya adalah orang Jepang kelahiran Amerika.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7731_tempat_lahir, 'フランス生まれです。', 'Saya lahir di Perancis.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8661_umumnya, '大体は正しいです。', 'Itu sebagian besar benar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8661_umumnya, '右手と左手の大きさは大体同じです。', 'Tangan kanan dan kiri kira-kira berukuran sama.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8661_umumnya, '大体三日かかります。', 'Dibutuhkan sekitar tiga hari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8696_literatur, '四月から文学のコースに入ります。', 'Saya memulai kursus sastra pada bulan April.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8696_literatur, 'イギリス文学とフランス文学を学びました。', 'Saya belajar sastra Inggris dan sastra Perancis.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8696_literatur, 'この本は、今までの日本文学の中でも大作です。', 'Buku ini adalah salah satu karya sastra Jepang terbesar yang pernah ditulis.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8736_semula, 'これが、本来の村の名です。', 'Ini adalah nama asli desa tersebut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8736_semula, '本来はイタリアンレストランですが、ラーメンもあります。', 'Terutama ini adalah restoran Italia, tetapi mereka juga memiliki ramen.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8736_semula, '本来はリモートワークですが、今日は本社にいます。', 'Saya biasanya bekerja jarak jauh, tetapi hari ini saya berada di kantor pusat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8895_penghitung_roti_roti, 'このパンは一斤当たり二百円です。', 'Roti ini harganya 200 yen per roti.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8895_penghitung_roti_roti, 'このパン、一斤サービスするよ。', 'Saya akan memberi Anda sepotong roti tambahan secara gratis.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8895_penghitung_roti_roti, 'ストレスで四斤のパンを一気にたべてしまった。', 'Saya makan empat potong roti sekaligus karena stres.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9088_yang_lainnya, 'その他のゴミはリサイクルして下さい。', 'Daur ulang jenis sampah lainnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9088_yang_lainnya, 'その他色々なタイプありますよ。', 'Masih banyak tipe lain selain ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9088_yang_lainnya, 'その他に元パートナーへ言いたいことはありますか？', 'Apakah ada hal lain yang ingin kamu katakan kepada mantanmu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9158_pintu_keluar_barat, 'エレベーターは西口にあります。', 'Lift terletak di pintu keluar barat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9158_pintu_keluar_barat, '西口のカフェにいますね！', 'Aku akan berada di kafe di pintu keluar barat!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9158_pintu_keluar_barat, 'いつも西口からタクシーにのります。', 'Saya selalu naik taksi dari pintu keluar barat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9169_bulan_sabit, '今日は三日月です。', 'Ada bulan sabit hari ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9169_bulan_sabit, '三日月のような目をしてますね。', 'Anda memiliki mata yang seperti bulan sabit.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9169_bulan_sabit, '山の上から三日月がよく見える。', 'Anda bisa melihat bulan sabit dengan baik dari puncak gunung.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9238_baik_dalam, 'パパはテニスが上手い。', 'Ayah pandai tenis.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9238_baik_dalam, '上手い人がチームに入った。', 'Orang yang terampil bergabung dengan tim.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9238_baik_dalam, 'この作文、なかなか上手いですね。', 'Komposisi ini ditulis dengan cukup baik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9255_seseorang_berumur_tiga_puluhan, 'あの男は三十代です。', 'Pria di sana berusia tiga puluhan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9255_seseorang_berumur_tiga_puluhan, '三十代で、この会社に入りました。', 'Saya bergabung dengan perusahaan ini pada usia tiga puluhan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9255_seseorang_berumur_tiga_puluhan, '三人の子どもが生まれたとき、父と母は三十代でした。', 'Orang tua saya berusia tiga puluhan ketika mereka memiliki ketiga anak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9256_biaya, '本の代金はカードではらいます。', 'Saya ingin membayar buku dengan kartu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9256_biaya, 'マッサージ代金は五十ドルです。', 'Pijat biayanya 50 dolar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9256_biaya, 'まだ今日のランチの代金をもらってません。', 'Kami belum menerima pembayaran untuk makan siang hari ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9453_paralel, 'ちゃんと平行にならべてね！', 'Pastikan Anda menyusunnya secara paralel!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9453_paralel, 'ベクトルAとBは平行です。', 'Vektor A dan B sejajar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9453_paralel, 'ここと平行になるように、ラインを引いてください。', 'Gambarlah sebuah garis sehingga sejajar dengan garis ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9453_paralel, '平行に見えるけど、平行じゃないんだよ。', 'Mereka mungkin terlihat paralel, namun sebenarnya tidak paralel.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9456_sore_hari, '夕方になると、少しすずしくなります。', 'Cuaca menjadi sedikit lebih sejuk di malam hari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9456_sore_hari, '夕方からバイトがあるんです。', 'Saya memiliki pekerjaan paruh waktu di malam hari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9456_sore_hari, '夕方のスーパーは人が多い。', 'Supermarket ramai di sore hari.');

  -- 4. PREREQUISITES
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_515_kakak, id FROM items WHERE type = 'radical' AND (slug = '16' OR id = '16') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_515_kakak, id FROM items WHERE type = 'radical' AND (slug = '28' OR id = '28') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_530_pengganti, id FROM items WHERE type = 'radical' AND (slug = '75' OR id = '75') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_530_pengganti, id FROM items WHERE type = 'radical' AND (slug = '79' OR id = '79') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_539_kulit, id FROM items WHERE type = 'radical' AND (slug = '5' OR id = '5') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_539_kulit, id FROM items WHERE type = 'radical' AND (slug = '81' OR id = '81') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_565_mencampur, id FROM items WHERE type = 'radical' AND (slug = '8' OR id = '8') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_565_mencampur, id FROM items WHERE type = 'radical' AND (slug = '68' OR id = '68') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_566_bertemu, r_155_bertemu);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_567_lampu, id FROM items WHERE type = 'radical' AND (slug = '8765' OR id = '8765') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_567_lampu, id FROM items WHERE type = 'radical' AND (slug = '101' OR id = '101') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_568_sama, r_121_kumis);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_568_sama, id FROM items WHERE type = 'radical' AND (slug = '1' OR id = '1') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_569_kali, id FROM items WHERE type = 'radical' AND (slug = '16' OR id = '16') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_570_banyak, id FROM items WHERE type = 'radical' AND (slug = '33' OR id = '33') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_571_benar, id FROM items WHERE type = 'radical' AND (slug = '8765' OR id = '8765') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_571_benar, r_105_serigala);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_572_setiap, id FROM items WHERE type = 'radical' AND (slug = '8762' OR id = '8762') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_572_setiap, id FROM items WHERE type = 'radical' AND (slug = '107' OR id = '107') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_574_beras, id FROM items WHERE type = 'radical' AND (slug = '98' OR id = '98') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_575_bulu, r_213_bulu);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_576_memikirkan, r_104_peti_mati);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_576_memikirkan, id FROM items WHERE type = 'radical' AND (slug = '8766' OR id = '8766') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_577_daging, r_108_daging);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_578_diri_sendiri, r_109_diri_sendiri);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_579_warna, r_110_warna);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_580_pergi, r_111_pergi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_581_barat, r_112_barat);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_582_apa, id FROM items WHERE type = 'radical' AND (slug = '75' OR id = '75') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_582_apa, r_113_cincin_bibir);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_583_tubuh, id FROM items WHERE type = 'radical' AND (slug = '75' OR id = '75') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_583_tubuh, id FROM items WHERE type = 'radical' AND (slug = '50' OR id = '50') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_584_membuat, id FROM items WHERE type = 'radical' AND (slug = '75' OR id = '75') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_584_membuat, r_122_kunci);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_585_diagram, id FROM items WHERE type = 'radical' AND (slug = '16' OR id = '16') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_585_diagram, id FROM items WHERE type = 'radical' AND (slug = '3' OR id = '3') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_585_diagram, id FROM items WHERE type = 'radical' AND (slug = '31' OR id = '31') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_586_suara, id FROM items WHERE type = 'radical' AND (slug = '97' OR id = '97') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_586_suara, id FROM items WHERE type = 'radical' AND (slug = '37' OR id = '37') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_586_suara, id FROM items WHERE type = 'radical' AND (slug = '8761' OR id = '8761') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_588_adik, id FROM items WHERE type = 'radical' AND (slug = '8767' OR id = '8767') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_588_adik, id FROM items WHERE type = 'radical' AND (slug = '36' OR id = '36') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_588_adik, id FROM items WHERE type = 'radical' AND (slug = '8761' OR id = '8761') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_588_adik, id FROM items WHERE type = 'radical' AND (slug = '5' OR id = '5') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_589_membentuk, r_171_lentera);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_589_membentuk, id FROM items WHERE type = 'radical' AND (slug = '38' OR id = '38') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_590_datang, id FROM items WHERE type = 'radical' AND (slug = '1' OR id = '1') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_590_datang, id FROM items WHERE type = 'radical' AND (slug = '98' OR id = '98') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_591_perusahaan, id FROM items WHERE type = 'radical' AND (slug = '80' OR id = '80') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_591_perusahaan, id FROM items WHERE type = 'radical' AND (slug = '17' OR id = '17') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_592_sudut, id FROM items WHERE type = 'radical' AND (slug = '14' OR id = '14') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_592_sudut, id FROM items WHERE type = 'radical' AND (slug = '71' OR id = '71') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_593_mengatakan, r_117_mengatakan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_594_lembah, id FROM items WHERE type = 'radical' AND (slug = '2' OR id = '2') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_594_lembah, id FROM items WHERE type = 'radical' AND (slug = '8764' OR id = '8764') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_594_lembah, id FROM items WHERE type = 'radical' AND (slug = '16' OR id = '16') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_595_berlari, r_124_berlari);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_596_di_dekat, r_114_skuter);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_596_di_dekat, r_115_kapak);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_597_kampung_halaman, r_125_desa);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_598_gandum, r_9452_sangkar_tulang_rusuk);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_598_gandum, id FROM items WHERE type = 'radical' AND (slug = '60' OR id = '60') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_599_belajar, r_8769_viking);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_599_belajar, id FROM items WHERE type = 'radical' AND (slug = '34' OR id = '34') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_600_hutan, id FROM items WHERE type = 'radical' AND (slug = '23' OR id = '23') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_601_langit, id FROM items WHERE type = 'radical' AND (slug = '170' OR id = '170') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_601_langit, id FROM items WHERE type = 'radical' AND (slug = '25' OR id = '25') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_602_emas, r_118_emas);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_603_hujan, r_119_hujan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_604_biru, r_120_biru);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_605_rumput, id FROM items WHERE type = 'radical' AND (slug = '90' OR id = '90') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_605_rumput, id FROM items WHERE type = 'radical' AND (slug = '22' OR id = '22') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_605_rumput, id FROM items WHERE type = 'radical' AND (slug = '15' OR id = '15') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_606_suara, id FROM items WHERE type = 'radical' AND (slug = '55' OR id = '55') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_606_suara, id FROM items WHERE type = 'radical' AND (slug = '22' OR id = '22') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_622_malam, r_342_malam);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1309_babi, id FROM items WHERE type = 'radical' AND (slug = '43' OR id = '43') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1309_babi, r_233_babi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_8884_kapak, r_115_kapak);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2481_untuk_menyisipkan, id FROM items WHERE type = 'kanji' AND (slug = '445' OR id = '445') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2491_untuk_naik, id FROM items WHERE type = 'kanji' AND (slug = '450' OR id = '450') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2494_untuk_menjadi_lebih_rendah, id FROM items WHERE type = 'kanji' AND (slug = '451' OR id = '451') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2556_untuk_mengambil, id FROM items WHERE type = 'kanji' AND (slug = '483' OR id = '483') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2577_untuk_melahirkan, id FROM items WHERE type = 'kanji' AND (slug = '850' OR id = '850') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2587_untuk_mempertahankan_sesuatu, id FROM items WHERE type = 'kanji' AND (slug = '494' OR id = '494') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2598_untuk_memahami, id FROM items WHERE type = 'kanji' AND (slug = '501' OR id = '501') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2613_untuk_berhenti, id FROM items WHERE type = 'kanji' AND (slug = '514' OR id = '514') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2620_kakak, k_515_kakak);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2658_surat_tebal, id FROM items WHERE type = 'kanji' AND (slug = '505' OR id = '505') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2658_surat_tebal, id FROM items WHERE type = 'kanji' AND (slug = '545' OR id = '545') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2698_agar_terlihat, id FROM items WHERE type = 'kanji' AND (slug = '558' OR id = '558') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2735_kulit, k_539_kulit);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2740_untuk_mencampur_sesuatu, k_565_mencampur);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2742_untuk_bertemu, k_566_bertemu);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2743_lampu, k_567_lampu);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2745_sinar_bulan, id FROM items WHERE type = 'kanji' AND (slug = '477' OR id = '477') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2745_sinar_bulan, k_567_lampu);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2746_sinar_matahari, id FROM items WHERE type = 'kanji' AND (slug = '476' OR id = '476') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2746_sinar_matahari, k_567_lampu);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2747_sama, k_568_sama);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2748_hari_yang_sama, k_568_sama);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2748_hari_yang_sama, id FROM items WHERE type = 'kanji' AND (slug = '476' OR id = '476') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2749_kali, k_569_kali);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2750_untuk_berputar, k_569_kali);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2751_suatu_saat, id FROM items WHERE type = 'kanji' AND (slug = '440' OR id = '440') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2751_suatu_saat, k_569_kali);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2752_kali_ini, id FROM items WHERE type = 'kanji' AND (slug = '497' OR id = '497') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2752_kali_ini, k_569_kali);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2753_setiap_saat, k_572_setiap);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2753_setiap_saat, k_569_kali);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2754_banyak, k_570_banyak);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2755_mungkin, k_570_banyak);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2755_mungkin, id FROM items WHERE type = 'kanji' AND (slug = '501' OR id = '501') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2756_menjadi_benar, k_571_benar);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2757_sebuah_kesuksesan, k_571_benar);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2758_setiap_bulan, k_572_setiap);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2758_setiap_bulan, id FROM items WHERE type = 'kanji' AND (slug = '477' OR id = '477') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2759_setiap_hari, k_572_setiap);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2759_setiap_hari, id FROM items WHERE type = 'kanji' AND (slug = '476' OR id = '476') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2760_setiap_tahun, k_572_setiap);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2760_setiap_tahun, id FROM items WHERE type = 'kanji' AND (slug = '546' OR id = '546') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2762_beras, k_574_beras);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2763_bulu, k_575_bulu);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2765_untuk_dipikirkan, k_576_memikirkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2767_daging, k_577_daging);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2768_daging_sapi, id FROM items WHERE type = 'kanji' AND (slug = '511' OR id = '511') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2768_daging_sapi, k_577_daging);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2769_ironi, k_539_kulit);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2769_ironi, k_577_daging);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2770_diri, k_578_diri_sendiri);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2770_diri, id FROM items WHERE type = 'kanji' AND (slug = '501' OR id = '501') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2771_kemerdekaan, k_578_diri_sendiri);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2771_kemerdekaan, id FROM items WHERE type = 'kanji' AND (slug = '494' OR id = '494') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2772_warna, k_579_warna);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2773_bermacam_macam, k_579_warna);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2773_bermacam_macam, id FROM items WHERE type = 'kanji' AND (slug = '856' OR id = '856') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2774_langit_biru, id FROM items WHERE type = 'kanji' AND (slug = '479' OR id = '479') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2774_langit_biru, k_579_warna);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2775_untuk_pergi, k_580_pergi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2777_arah_kereta_api, k_580_pergi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2778_barat, k_581_barat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2780_ribuan, k_582_apa);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2780_ribuan, id FROM items WHERE type = 'kanji' AND (slug = '460' OR id = '460') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2781_apa, k_582_apa);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2782_berapa_banyak_orang, k_582_apa);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2782_berapa_banyak_orang, id FROM items WHERE type = 'kanji' AND (slug = '444' OR id = '444') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2783_bulan_apa, k_582_apa);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2783_bulan_apa, id FROM items WHERE type = 'kanji' AND (slug = '477' OR id = '477') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2784_berapa_hari, k_582_apa);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2784_berapa_hari, id FROM items WHERE type = 'kanji' AND (slug = '476' OR id = '476') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2785_tahun_berapa, k_582_apa);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2785_tahun_berapa, id FROM items WHERE type = 'kanji' AND (slug = '546' OR id = '546') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2786_berapa_kali, k_582_apa);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2786_berapa_kali, k_569_kali);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2787_untuk_belajar, k_599_belajar);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2788_murid, k_599_belajar);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2788_murid, id FROM items WHERE type = 'kanji' AND (slug = '850' OR id = '850') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2789_kelas_sekolah, k_599_belajar);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2789_kelas_sekolah, id FROM items WHERE type = 'kanji' AND (slug = '546' OR id = '546') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2790_penerimaan_sekolah, id FROM items WHERE type = 'kanji' AND (slug = '445' OR id = '445') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2790_penerimaan_sekolah, k_599_belajar);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2791_rekayasa, id FROM items WHERE type = 'kanji' AND (slug = '457' OR id = '457') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2791_rekayasa, k_599_belajar);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2792_universitas, id FROM items WHERE type = 'kanji' AND (slug = '453' OR id = '453') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2792_universitas, k_599_belajar);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2793_absen_dari_sekolah, id FROM items WHERE type = 'kanji' AND (slug = '542' OR id = '542') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2793_absen_dari_sekolah, k_599_belajar);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2794_hutan, k_600_hutan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2795_udara, k_601_langit);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2795_udara, id FROM items WHERE type = 'kanji' AND (slug = '548' OR id = '548') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2796_langit, k_601_langit);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2797_emas, k_602_emas);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2798_testis, k_602_emas);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2798_testis, id FROM items WHERE type = 'kanji' AND (slug = '489' OR id = '489') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2799_uang, k_602_emas);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2800_hujan, k_603_hujan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2801_biru, k_604_biru);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2802_anak_muda, k_604_biru);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2802_anak_muda, id FROM items WHERE type = 'kanji' AND (slug = '546' OR id = '546') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2803_rumput, k_605_rumput);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2804_suara, k_606_suara);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2805_untuk_membuat, k_584_membuat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2806_tubuh, k_583_tubuh);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2807_kekuatan_fisik, k_583_tubuh);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2807_kekuatan_fisik, id FROM items WHERE type = 'kanji' AND (slug = '447' OR id = '447') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2808_di_dalam_tubuh, k_583_tubuh);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2808_di_dalam_tubuh, id FROM items WHERE type = 'kanji' AND (slug = '500' OR id = '500') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2809_komposisi, k_584_membuat);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2809_komposisi, id FROM items WHERE type = 'kanji' AND (slug = '475' OR id = '475') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2811_kerajinan, id FROM items WHERE type = 'kanji' AND (slug = '457' OR id = '457') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2811_kerajinan, k_584_membuat);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2812_pekerjaan_besar, id FROM items WHERE type = 'kanji' AND (slug = '453' OR id = '453') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2812_pekerjaan_besar, k_584_membuat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2813_diagram, k_585_diagram);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2814_suara, k_586_suara);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2815_suara_keras, id FROM items WHERE type = 'kanji' AND (slug = '453' OR id = '453') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2815_suara_keras, k_586_suara);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2820_adik, k_588_adik);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2821_saudara_laki_laki, k_515_kakak);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2821_saudara_laki_laki, k_588_adik);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2824_akan_datang, k_590_datang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2825_bulan_depan, k_590_datang);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2825_bulan_depan, id FROM items WHERE type = 'kanji' AND (slug = '477' OR id = '477') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2826_tahun_depan, k_590_datang);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2826_tahun_depan, id FROM items WHERE type = 'kanji' AND (slug = '546' OR id = '546') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2827_dari_zaman_kuno, id FROM items WHERE type = 'kanji' AND (slug = '519' OR id = '519') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2827_dari_zaman_kuno, k_590_datang);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2829_selama_beberapa_tahun, id FROM items WHERE type = 'kanji' AND (slug = '546' OR id = '546') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2829_selama_beberapa_tahun, k_590_datang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2830_di_dalam_perusahaan, k_591_perusahaan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2830_di_dalam_perusahaan, id FROM items WHERE type = 'kanji' AND (slug = '500' OR id = '500') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2831_bergabung_dengan_perusahaan, id FROM items WHERE type = 'kanji' AND (slug = '445' OR id = '445') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2831_bergabung_dengan_perusahaan, k_591_perusahaan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2833_markas_besar, id FROM items WHERE type = 'kanji' AND (slug = '487' OR id = '487') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2833_markas_besar, k_591_perusahaan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2834_perusahaan, k_566_bertemu);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2834_perusahaan, k_591_perusahaan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2835_sudut, k_592_sudut);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2836_segi_tiga, id FROM items WHERE type = 'kanji' AND (slug = '449' OR id = '449') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2836_segi_tiga, k_592_sudut);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2837_persegi, id FROM items WHERE type = 'kanji' AND (slug = '485' OR id = '485') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2837_persegi, k_592_sudut);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2838_mengatakan, k_593_mengatakan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2839_lembah, k_594_lembah);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2840_untuk_berlari, k_595_berlari);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2841_bepergian, k_595_berlari);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2841_bepergian, k_580_pergi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2842_menutup, k_596_di_dekat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2843_dalam_beberapa_hari, k_596_di_dekat);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2843_dalam_beberapa_hari, id FROM items WHERE type = 'kanji' AND (slug = '476' OR id = '476') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2844_beberapa_tahun_terakhir, k_596_di_dekat);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2844_beberapa_tahun_terakhir, id FROM items WHERE type = 'kanji' AND (slug = '546' OR id = '546') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2845_gandum, k_598_gandum);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2889_malam, k_622_malam);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3408_anak_laki_laki, id FROM items WHERE type = 'kanji' AND (slug = '555' OR id = '555') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3408_anak_laki_laki, id FROM items WHERE type = 'kanji' AND (slug = '462' OR id = '462') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3409_ulat, id FROM items WHERE type = 'kanji' AND (slug = '513' OR id = '513') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3409_ulat, id FROM items WHERE type = 'kanji' AND (slug = '553' OR id = '553') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3410_pusat_kota, id FROM items WHERE type = 'kanji' AND (slug = '451' OR id = '451') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3410_pusat_kota, id FROM items WHERE type = 'kanji' AND (slug = '556' OR id = '556') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3412_pria, id FROM items WHERE type = 'kanji' AND (slug = '555' OR id = '555') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3412_pria, id FROM items WHERE type = 'kanji' AND (slug = '444' OR id = '444') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3414_sampai_sekarang, id FROM items WHERE type = 'kanji' AND (slug = '497' OR id = '497') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3416_benang_wol, id FROM items WHERE type = 'kanji' AND (slug = '513' OR id = '513') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3416_benang_wol, id FROM items WHERE type = 'kanji' AND (slug = '551' OR id = '551') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3417_sekaligus, id FROM items WHERE type = 'kanji' AND (slug = '497' OR id = '497') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3647_kampung_halaman, k_597_kampung_halaman);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3648_rindu, k_597_kampung_halaman);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3648_rindu, id FROM items WHERE type = 'kanji' AND (slug = '508' OR id = '508') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4876_realitas, id FROM items WHERE type = 'kanji' AND (slug = '487' OR id = '487') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4876_realitas, k_571_benar);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4970_babi, k_1309_babi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5935_buka_taksi, k_601_langit);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5935_buka_taksi, id FROM items WHERE type = 'kanji' AND (slug = '562' OR id = '562') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7568_arkeologi, k_576_memikirkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7568_arkeologi, id FROM items WHERE type = 'kanji' AND (slug = '519' OR id = '519') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7568_arkeologi, k_599_belajar);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7617_seumur_hidup, id FROM items WHERE type = 'kanji' AND (slug = '440' OR id = '440') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7617_seumur_hidup, id FROM items WHERE type = 'kanji' AND (slug = '850' OR id = '850') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7670_sikap, id FROM items WHERE type = 'kanji' AND (slug = '564' OR id = '564') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7670_sikap, k_605_rumput);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7672_membentuk, k_589_membentuk);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7730_diplomasi, id FROM items WHERE type = 'kanji' AND (slug = '521' OR id = '521') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7730_diplomasi, k_565_mencampur);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7731_tempat_lahir, id FROM items WHERE type = 'kanji' AND (slug = '850' OR id = '850') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8661_umumnya, id FROM items WHERE type = 'kanji' AND (slug = '453' OR id = '453') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8661_umumnya, k_583_tubuh);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8696_literatur, id FROM items WHERE type = 'kanji' AND (slug = '475' OR id = '475') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8696_literatur, k_599_belajar);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8736_semula, id FROM items WHERE type = 'kanji' AND (slug = '487' OR id = '487') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8736_semula, k_590_datang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8895_penghitung_roti_roti, k_8884_kapak);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9088_yang_lainnya, id FROM items WHERE type = 'kanji' AND (slug = '529' OR id = '529') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_9158_pintu_keluar_barat, k_581_barat);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9158_pintu_keluar_barat, id FROM items WHERE type = 'kanji' AND (slug = '452' OR id = '452') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9169_bulan_sabit, id FROM items WHERE type = 'kanji' AND (slug = '449' OR id = '449') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9169_bulan_sabit, id FROM items WHERE type = 'kanji' AND (slug = '476' OR id = '476') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9169_bulan_sabit, id FROM items WHERE type = 'kanji' AND (slug = '477' OR id = '477') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9238_baik_dalam, id FROM items WHERE type = 'kanji' AND (slug = '450' OR id = '450') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9238_baik_dalam, id FROM items WHERE type = 'kanji' AND (slug = '474' OR id = '474') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9255_seseorang_berumur_tiga_puluhan, id FROM items WHERE type = 'kanji' AND (slug = '449' OR id = '449') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9255_seseorang_berumur_tiga_puluhan, id FROM items WHERE type = 'kanji' AND (slug = '448' OR id = '448') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_9255_seseorang_berumur_tiga_puluhan, k_530_pengganti);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_9256_biaya, k_530_pengganti);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_9256_biaya, k_602_emas);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9453_paralel, id FROM items WHERE type = 'kanji' AND (slug = '535' OR id = '535') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_9453_paralel, k_580_pergi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9456_sore_hari, id FROM items WHERE type = 'kanji' AND (slug = '461' OR id = '461') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9456_sore_hari, id FROM items WHERE type = 'kanji' AND (slug = '510' OR id = '510') LIMIT 1;

END $$;
