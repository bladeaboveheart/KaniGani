-- ====================================================
-- KaniGani — Seed Data Level 4 (v2, relasional)
-- Auto-generated with Indonesian Slugs
-- ====================================================

DO $$
DECLARE
  -- ============ RADICAL IDs (Level 4) ============
  r_64_asal UUID; r_74_pengukuran UUID; r_75_pemimpin UUID; r_76_dahi UUID; r_77_buaya UUID; r_79_upacara UUID; r_80_roh UUID; r_81_cabang UUID; r_82_energi UUID; r_83_dunia UUID; r_84_piring UUID; r_85_bambu UUID; r_86_benang UUID; r_88_telinga UUID; r_89_serangga UUID; r_90_bunga UUID; r_91_melihat UUID; r_92_merah UUID; r_93_mobil UUID; r_94_kerang UUID; r_95_kaki UUID; r_96_bukan UUID; r_97_samurai UUID; r_98_beras UUID; r_99_berkeliaran UUID; r_100_tempat_tidur UUID; r_101_pi UUID; r_116_jurang UUID; r_154_menguasai UUID; r_170_lubang UUID; r_211_payung UUID; r_231_tengah UUID; r_243_pria UUID; r_346_di_dalam UUID; r_8766_pengemis UUID; r_8767_tanduk UUID; r_8768_sepatu_berduri UUID;

  -- ============ KANJI IDs (Level 4) ============
  k_493_batu UUID; k_498_asal UUID; k_500_di_dalam UUID; k_527_dunia UUID; k_528_menguasai UUID; k_529_lainnya UUID; k_531_menyalin UUID; k_532_masa_lalu UUID; k_533_nomor UUID; k_534_tengah UUID; k_535_datar UUID; k_536_memukul UUID; k_537_es UUID; k_538_ucapkan_dengan_rendah_hati UUID; k_540_piring UUID; k_541_terima_kasih UUID; k_542_istirahat UUID; k_543_sebelumnya UUID; k_544_nama UUID; k_546_tahun UUID; k_547_lebih_awal UUID; k_548_energi UUID; k_549_ratus UUID; k_550_bambu UUID; k_551_benang UUID; k_552_telinga UUID; k_553_serangga UUID; k_554_desa UUID; k_555_pria UUID; k_556_kota UUID; k_557_bunga UUID; k_558_melihat UUID; k_559_kerang UUID; k_560_merah UUID; k_561_kaki UUID; k_562_mobil UUID; k_563_bukan UUID; k_564_sedang_mengerjakan UUID; k_1118_lubang UUID; k_1520_harta_karun UUID;

  -- ============ VOCABULARY IDs (Level 4) ============
  v_2560_tangan_kanan UUID; v_2563_hari_keempat UUID; v_2564_empat_hal UUID; v_2565_empat_ribu UUID; v_2566_empat_puluh UUID; v_2568_tangan_kiri UUID; v_2578_untuk_hidup UUID; v_2585_batu UUID; v_2606_menjadi_gemuk UUID; v_2644_istirahat UUID; v_2645_untuk_beristirahat UUID; v_2646_berhenti_sebentar UUID; v_2647_hari_libur UUID; v_2648_pertama UUID; v_2649_tip UUID; v_2650_bulan_sebelum_terakhir UUID; v_2651_bulan_lalu UUID; v_2652_suatu_hari_nanti UUID; v_2653_guru UUID; v_2655_pakar UUID; v_2656_nama_belakang UUID; v_2659_surat_dari_alfabet UUID; v_2660_garis_lurus UUID; v_2662_tahun_2011 UUID; v_2663_pada_akhir_tahun UUID; v_2664_sepanjang_tahun UUID; v_2665_siswa_tahun_pertama UUID; v_2666_anak_laki_laki UUID; v_2667_tahun_lalu UUID; v_2668_lebih_awal UUID; v_2669_segera_setelah UUID; v_2670_energi UUID; v_2671_untuk_menyukai UUID; v_2672_dalam_sekali_jalan UUID; v_2673_suasana_hati UUID; v_2674_populer UUID; v_2675_energi UUID; v_2676_cuaca UUID; v_2677_serius UUID; v_2678_tenang UUID; v_2679_pikiran_satu_jalur UUID; v_2680_juta UUID; v_2681_empat_ratus UUID; v_2682_lima_ratus UUID; v_2683_dua_ratus UUID; v_2684_rebung_bambu UUID; v_2685_bambu UUID; v_2686_benang UUID; v_2687_telinga UUID; v_2689_serangga UUID; v_2690_desa UUID; v_2691_orang_desa UUID; v_2692_pria UUID; v_2693_kota UUID; v_2694_bunga UUID; v_2695_kembang_api UUID; v_2696_melihat_bunga_sakura UUID; v_2697_untuk_melihat UUID; v_2699_untuk_ditunjukkan UUID; v_2701_cara_melihat UUID; v_2702_melihat_bulan UUID; v_2703_kerang UUID; v_2704_merah UUID; v_2705_bayi UUID; v_2706_menjadi_cukup UUID; v_2707_kaki UUID; v_2708_kekurangan UUID; v_2709_mobil UUID; v_2710_di_dalam_mobil UUID; v_2712_generasi_kedua UUID; v_2713_generasi_ketiga UUID; v_2714_terutama UUID; v_2715_kepala_rumah_tangga UUID; v_2716_metode UUID; v_2718_lainnya UUID; v_2719_orang_lain UUID; v_2723_untuk_menyalin UUID; v_2725_nomor UUID; v_2726_tengah UUID; v_2727_datar UUID; v_2728_hari_kerja UUID; v_2729_untuk_memukul_sesuatu UUID; v_2730_satu_pukulan UUID; v_2731_es UUID; v_2732_es_serut UUID; v_2733_mengatakan_dengan_rendah_hati UUID; v_2736_piring UUID; v_2737_piring_kecil UUID; v_2738_terima_kasih UUID; v_2739_pelanggaran UUID; v_2895_terang UUID; v_3403_anak_sapi UUID; v_3404_perangko UUID; v_3413_tahun UUID; v_3501_nama UUID; v_4313_lubang UUID; v_5631_harta_karun UUID; v_5632_permata UUID; v_7520_merah UUID; v_7521_putih UUID; v_7522_ratus UUID; v_7565_hari_kedua_puluh UUID; v_7729_secara_keseluruhan UUID; v_8660_untuk_keluar UUID; v_8694_suasana UUID; v_8961_untuk_disebutkan UUID; v_9147_amerika_utara UUID;

BEGIN

  DELETE FROM items WHERE level = 4;

  -- 1. RADICALS
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '元', 'asal', 4, 1, 'Anda memiliki dua garis dengan kaki di bawahnya. Dan apa yang ada di atas kaki itu? Ya, dari situlah Anda berasal — <radikal>asal</radikal> Anda. Yap, di antara dua kaki adalah tempat asalmu, tidak peduli bagaimana kamu melihatnya.')
    RETURNING id INTO r_64_asal;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '寸', 'pengukuran', 4, 2, 'Pernahkah Anda menggunakan salah satu penggaris segitiga tersebut? Ini terlihat seperti salah satunya, karena ini adalah radikal <radikal>pengukuran</radikal>. Bayangkan saja semua sudut yang dapat Anda ukur dengan benda ini!')
    RETURNING id INTO r_74_pengukuran;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', 'ｲ', 'pemimpin', 4, 3, 'Kata radikal ini secara teknis berarti orang (seperti 人), namun kita akan mengubah maknanya sedikit. Ini seperti orang radikal, tapi lebih tinggi dan lebih kurus, berdiri di atas yang lain dan mengangkat tinjunya untuk memimpin mereka. Itu sebabnya dia adalah <radikal>pemimpin</radikal>, bukan orang biasa.')
    RETURNING id INTO r_75_pemimpin;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '冖', 'dahi', 4, 4, 'Tentu saja, <radikal>dahi</radikal> ini agak persegi, tapi itu karena bagian atas kepala (冂) radikal. Ini hanya bagian dahi saja! Anda bahkan dapat membayangkan ini sebagai dahi monster Frankenstein, karena dahinya juga cukup persegi.

Juga, jangan bingung membedakan ini dengan atap. Anda tahu ini dahi dan bukan atap karena tidak ada cerobong kecil lucu yang mencuat dari atasnya. Dahinya pasti tidak punya cerobong asap.')
    RETURNING id INTO r_76_dahi;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '也', 'buaya', 4, 5, 'Lihat mulut dan gigi panjang mirip taring <radical>buaya</radikal> ini, yang menghadap ke kanan? Anda tidak ingin tangan Anda tersangkut di sana, itu sudah pasti.')
    RETURNING id INTO r_77_buaya;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '弋', 'upacara', 4, 6, 'Radikal ini terlihat seperti orang dengan gaun panjang di belakangnya. Itu karena mereka semua berdandan untuk pergi ke <radikal>upacara</radikal>. Biasanya Anda harus mengenakan gaun panjang (atau sesuatu yang formal) jika Anda akan menghadiri upacara besar, bukan? Jadi ketika Anda melihat hal radikal ini, pikirkan semua upacara berbeda yang mungkin harus Anda hadiri dalam hidup Anda dan apa yang perlu Anda kenakan.')
    RETURNING id INTO r_79_upacara;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', 'ネ', 'roh', 4, 7, 'Radikal ini terlihat seperti semacam <radikal>semangat</radikal>. Ia menghadap ke kiri dengan tudung besar menutupi kepalanya, dan lengan menyeramkan miring ke bawah di samping. Bisakah Anda membayangkannya?

Jika tidak, anggap saja ini sebagai karakter katakana untuk "ne". Ne untuk ahli nujum, membawa kembali roh dari kubur! OooooOOooooOoo!')
    RETURNING id INTO r_80_roh;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '支', 'cabang', 4, 8, 'Ada percabangan silang dari bangku ini. Karena sudah bercabang, kita sebut saja <radical>cabang</radikal> radikal. Saya kira pohon tempat bangku ini dibuat hidup kembali dalam bentuk dahan.')
    RETURNING id INTO r_81_cabang;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '气', 'energi', 4, 9, 'Ini adalah radikal untuk <radikal>energi</radikal>. Jika Anda membayangkan kereta api di bawah radikal ini, maka garis-garisnya akan berupa uap yang keluar, mengalir kembali dari depan kereta (di sebelah kiri) seiring berjalannya kereta. Uap adalah cara terbaik untuk menghasilkan energi pada masa itu, Anda tahu? Itu sebabnya ini adalah radikal untuk energi.')
    RETURNING id INTO r_82_energi;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '世', 'dunia', 4, 10, 'Gunakan imajinasi Anda untuk menggambar lingkaran di luar bentuk ini. Grid dari awal yang radikal terlihat seperti garis bujur dan lintang pada bola bumi, bukan? Itu sebabnya inilah <radikal>dunia</radikal>.')
    RETURNING id INTO r_83_dunia;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '皿', 'piring', 4, 11, 'Ini adalah beberapa piring yang dikeringkan di rak. Mereka ditumpuk dalam satu baris. Bayangkan mengulurkan tangan dan mengambil salah satu piring itu untuk Anda sendiri. Dan Anda hanya memerlukan satu, jadi sebut saja ini <radikal>piring</radikal>.')
    RETURNING id INTO r_84_piring;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '竹', 'bambu', 4, 12, 'Lihat seberapa tinggi batangnya dengan tanaman kecil yang lebat di bagian atasnya? Ini terlihat seperti <radical>bambu</radical>, jika Anda menggunakan imajinasi Anda.')
    RETURNING id INTO r_85_bambu;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '糸', 'benang', 4, 13, 'Di beberapa kotoran Anda menemukan sesuatu yang kecil. Anda mencondongkan tubuh ke dalam, menariknya keluar dengan hati-hati, dan menyadari bahwa itu adalah <radikal>utas</radikal>. Apa yang dilakukannya di sana? Ya, itu berasal dari kucing, dan kucing suka memakan benang saat Anda tidak melihatnya. Dan benang benang, tali hoodie, dan ekor tikus… Tapi kali ini, hanya benang saja.')
    RETURNING id INTO r_86_benang;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '耳', 'telinga', 4, 14, 'Ini adalah radikal <radikal>telinga</radikal>, karena bentuknya seperti telinga. Bagaimanapun, sebanyak yang bisa dilakukan oleh seorang radikal. Kedua garis tengah tersebut merupakan tonjolan yang mengarahkan suara ke telinga, dan garis yang menonjol ke kanan merupakan tempat menempelnya telinga ke kepala.

Kalau dipikir-pikir, telinga hanyalah mata yang melihat suara. Wah, kawan… Itu menjelaskan kemiripan yang sangat mendasar antara mata (目) dan telinga (耳). Ingat saja yang ini "telinga" karena telinganya menonjol, seperti garis yang mencuat di samping radikal ini.')
    RETURNING id INTO r_88_telinga;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '虫', 'serangga', 4, 15, 'Ini terlihat seperti radikal tengah di atas daun yang menyamping. Apa yang sering kamu temukan duduk di tengah-tengah daun? <radikal>serangga</radikal>. Serangga senang duduk tepat di tengah-tengah dedaunan. Itu sebabnya ini disebut radikal serangga.')
    RETURNING id INTO r_89_serangga;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '艹', 'bunga', 4, 16, 'Lihat hal-hal kecil yang mencuat dari tanah? Hal-hal kecil itu adalah <radikal>bunga</radikal> yang cantik.

Anda juga dapat melihatnya sebagai mahkota bunga kecil, terutama karena radikal ini hampir selalu muncul di bagian atas kanji.')
    RETURNING id INTO r_90_bunga;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '見', 'melihat', 4, 17, 'Mata ini mempunyai kaki, karena Anda harus membiarkan mata Anda melihat sesuatu untuk <radikal>melihat</radikal> itu. Itu sebabnya mata itu membutuhkan kaki – untuk melihat. Mata mereka mengembara, mereka ingin melihat dunia!!')
    RETURNING id INTO r_91_melihat;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '赤', 'merah', 4, 18, 'Setumpuk tanah menimpa Anda dan sekarang kaki dan sirip (scuba) Anda menonjol dari bawahnya, berubah menjadi <radikal>merah</radikal>. Anda tahu, karena Anda terlalu lama terjebak di bawah sinar matahari. Semuanya terbakar matahari dan merah. Apakah sirip scuba bisa terbakar sinar matahari? Ya, saat cuaca di luar sangat panas. Itu sebabnya artinya "merah".')
    RETURNING id INTO r_92_merah;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '車', 'mobil', 4, 19, 'Bukankah ini terlihat seperti tampilan bingkai <radical>mobil</radical> dari atas ke bawah? Ada as roda di bagian atas dan bawah, serta bodi di tengah-tengahnya. Itu sebabnya mobil ini radikal.')
    RETURNING id INTO r_93_mobil;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '貝', 'kerang', 4, 20, 'Radikal ini tampak seperti <radikal>kerang</radikal>. Apa yang tampak seperti mata radikal adalah cangkang spiralnya yang panjang. Bagian bawah yang terlihat seperti sirip adalah kaki-kaki kecilnya yang menonjol keluar, membantu kerang bergerak.')
    RETURNING id INTO r_94_kerang;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '足', 'kaki', 4, 21, 'Ini adalah radikal <radikal>kaki</radikal>. Lihat orang yang melakukan tendangan naga terbang ke kanan? Dengan apa mereka mencapai target? Jelas sekali kaki mereka. Bayangkan kaki itu mengarah tepat ke wajah Anda. Pada saat itu, satu-satunya harapan Anda adalah kebersihannya. Tidak ada seorang pun yang menginginkan kaki bersentuhan dengan wajah, apalagi kaki yang kotor.')
    RETURNING id INTO r_95_kaki;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '不', 'bukan', 4, 22, 'Ini tampak seperti panah biasa, namun <radikal>bukan</radikal>. Sebut saja "bukan panah". Ia <em>tidak</em> dapat bergerak maju, karena telah dihentikan oleh semacam garis di atasnya. Setiap anak panah ingin terbang, namun anak panah ini <em>tidak</em> akan kemana-mana. Lihatlah, semuanya dinegasikan seperti itu. Ya, itulah yang dilakukan kaum radikal ini. Itu <em>bukan</em> banyak hal.')
    RETURNING id INTO r_96_bukan;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '士', 'samurai', 4, 23, 'Radikal <radikal>samurai</radikal> sangat mirip dengan radikal tanah. Bedanya yang ini garis horizontal atasnya lebih panjang, yaitu untuk bahu prajurit yang lebar. Intinya juga lebih pendek, karena ini adalah bantal kecil tempat samurai duduk. Samurai tidak hanya sekedar bertarung lho. Mereka duduk di atas bantal dan menulis puisi dan sebagainya juga. Ini adalah samurai yang sangat sensitif.')
    RETURNING id INTO r_97_samurai;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '米', 'beras', 4, 24, 'Ini adalah radikal untuk <radikal>beras</radikal>. Khususnya beras mentah, seperti bulir yang tumbuh dari tanah saat beras masih mentah dan segar. Jika nasi sudah sangat matang, bagian atas batangnya akan terlihat seperti ini. Lihat daunnya yang panjang dan jumbai kecil di atasnya? Itu sebabnya radikal ini disebut "beras".')
    RETURNING id INTO r_98_beras;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '彳', 'berkeliaran', 4, 25, 'Leader (ｲ) yang radikal punya sesuatu yang ekstra — dia mengenakan topi santai karena ini hari liburnya. Dan apa yang dia suka lakukan di hari liburnya? Dia suka <radikal>berkeliaran</radikal>. Lihat dia hanya berkeliaran. Dasar gelandangan.')
    RETURNING id INTO r_99_berkeliaran;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '巴', 'tempat-tidur', 4, 26, 'Anda harus menyelesaikan garis di sisi kanan dalam pikiran Anda, tetapi lihat <radical>tempat tidur</radikal> persegi panjang dan bantal? Ini benar-benar sebuah tempat tidur. Garis yang hilang itu adalah tempat Anda menarik kembali selimut saat Anda bangun pagi ini.')
    RETURNING id INTO r_100_tempat_tidur;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '兀', 'pi', 4, 27, 'Tentu saja, ini tampak seperti sesuatu yang bagus di versi 3.14, sesuatu yang seharusnya dipelajari oleh semua orang. Itu adalah simbol matematika yang ada hubungannya dengan lingkaran... <radical>pi</radical>!')
    RETURNING id INTO r_101_pi;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '厂', 'jurang', 4, 28, 'Lihat <radical>tebing</radical>? Itu menghadap ke kiri. Menurut Anda apa yang menonjol dari tebing ini? Mungkin lautan, atau lembah? Cliffs suka menonjolkan hal-hal seperti itu.')
    RETURNING id INTO r_116_jurang;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '主', 'menguasai', 4, 29, 'Raja menaruh setetes air di atas kepalanya. Dia memperoleh kemampuan untuk memanipulasi air sesuka hati, menjadikannya <radikal>penguasa</radikal> semua air! Jika Anda berpikir tentang bagaimana semua kehidupan bergantung pada air, itu benar-benar menjadikannya penguasa segalanya…')
    RETURNING id INTO r_154_menguasai;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '穴', 'lubang', 4, 30, 'Anda memiliki atap di atas sesuatu yang tampak seperti gunung berapi. Apa penutup atapnya? Ini pasti menutupi <radical>lubang</radical> di bagian atas. Saya kira seseorang mengira jika mereka membangun atap di atas lubang tersebut, tidak ada lahar yang bisa keluar. Tapi bukankah ada lubang di cerobong asapnya? Sepertinya teori mereka memiliki <em>lubang</em> di dalamnya… Oh tidak, sekarang lava keluar melalui lubang tersebut. BERLARI!!! BERLARI!!!!!!!!')
    RETURNING id INTO r_170_lubang;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '乚', 'payung', 4, 31, 'Radikal ini terlihat seperti <radical>payung</radikal>, khususnya bagian pegangannya saja. Gagang payung tua yang melengkung dan bagus, jadi Anda bisa menggantung payung itu di lengan Anda saat hujan berhenti.')
    RETURNING id INTO r_211_payung;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '央', 'tengah', 4, 32, 'Ingat pria dari radikal besar? Di sini dia menekuk lengannya pada siku untuk mengencangkan semacam ikat pinggang, tepat di seberang <radikal>tengah</radikal> tubuhnya. Ini adalah salah satu ikat pinggang yang melingkari pinggang Anda, yang sebenarnya cocok untuk pria bertubuh besar, karena dia benar-benar perlu mengamankan pusatnya (gravitasi).')
    RETURNING id INTO r_231_tengah;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '男', 'pria', 4, 33, 'Sawah membutuhkan tenaga, dan tenaga itu berasal dari <manusia>radikal</radikal>. Bayangkan sebuah sawah yang penuh lumpur basah dan kental. Ini bukanlah bidang yang mudah untuk dikerjakan, namun orang yang kuat ini akan berusaha menyapu dan mencangkul tanpa kenal lelah untuk memastikan bidang tersebut tumbuh subur. Sungguh laki-laki!')
    RETURNING id INTO r_243_pria;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '内', 'di-dalam', 4, 34, 'Ini adalah radikal <radikal>di dalam</radikal>, karena terlihat seperti seseorang (人) di dalam… kepala (冂)? Saya kira jika Anda memikirkannya, setiap orang terjebak di dalam kepalanya sendiri. Bayangkan versi kedua yang lebih kecil dari diri Anda yang duduk di dalam kepala Anda, seperti pilot mecha. Ya, itulah dirimu yang sebenarnya. Anda <em>di dalam</em>.')
    RETURNING id INTO r_346_di_dalam;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '/radicals/beggar.svg', 'pengemis', 4, 35, 'Bukankah ini terlihat seperti seseorang yang berlutut, mengulurkan tangan dan memohon sesuatu (pengampunan, nyawanya, promosi, dll.)? Itu sebabnya kaum radikal ini dikenal dengan sebutan <radikal>pengemis</radikal>.')
    RETURNING id INTO r_8766_pengemis;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '丷', 'tanduk', 4, 36, 'Dapatkah Anda melihat <radical>tanduk</radical>? Anda bisa memasang tanduk ini pada apa saja. Keledai, manusia, monyet, dan sebagainya. Itulah tepatnya yang akan kita lakukan saat mempelajari kanji yang juga bertanduk.')
    RETURNING id INTO r_8767_tanduk;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '业', 'sepatu-berduri', 4, 37, 'Di tanah ada banyak <radical>paku</radikal> yang keluar. Anda tidak ingin menginjaknya, bukan?')
    RETURNING id INTO r_8768_sepatu_berduri;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_64_asal, 'Asal', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_74_pengukuran, 'Pengukuran', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_75_pemimpin, 'Pemimpin', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_76_dahi, 'Dahi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_77_buaya, 'Buaya', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_79_upacara, 'Upacara', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_80_roh, 'Roh', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_81_cabang, 'Cabang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_82_energi, 'Energi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_83_dunia, 'Dunia', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_84_piring, 'Piring', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_85_bambu, 'Bambu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_86_benang, 'Benang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_88_telinga, 'Telinga', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_89_serangga, 'Serangga', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_90_bunga, 'Bunga', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_91_melihat, 'Melihat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_92_merah, 'Merah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_93_mobil, 'Mobil', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_94_kerang, 'Kerang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_95_kaki, 'Kaki', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_96_bukan, 'Bukan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_97_samurai, 'Samurai', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_98_beras, 'Beras', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_99_berkeliaran, 'Berkeliaran', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_100_tempat_tidur, 'Tempat tidur', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_101_pi, 'pi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_116_jurang, 'Jurang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_154_menguasai, 'Menguasai', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_170_lubang, 'Lubang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_211_payung, 'Payung', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_231_tengah, 'Tengah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_243_pria, 'Pria', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_346_di_dalam, 'Di dalam', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_8766_pengemis, 'Pengemis', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_8767_tanduk, 'Tanduk', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_8768_sepatu_berduri, 'Sepatu berduri', true, true);

  -- 2. KANJIS
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '石', 'batu', 4, 38, 'Kanji <radikal>batu</radikal> dan kanji <kanji>batu</kanji> adalah hal yang sama!', 'Anda melempar <kanji>batu</kanji> melalui jendela... dan sekarang, Anda dapat melihat sesuatu yang sangat <read>seksi</reading> (せき).')
    RETURNING id INTO k_493_batu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '元', 'asal', 4, 39, 'Radikal <radikal>asal</radikal> dan kanji <kanji>asal</kanji> adalah sama!', '<kanji>Asal usul</kanji> segala sesuatu dapat ditemukan di <reading>Gen</reading>ji (げん). Genji adalah nama tokoh utama dalam novel pertama di dunia, "The Tale of Genji." 

Bayangkan dia sebagai pria kaya dan cantik yang sangat peduli dengan penampilannya dan bisa bergaul dengan baik dengan semua wanita. Dia juga sangat hebat dalam puisi, yang membantu situasi wanita itu.')
    RETURNING id INTO k_498_asal;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '内', 'di-dalam', 4, 40, 'Kanji <radical>inside</radical> dan kanji <kanji>inside</kanji> sama persis yay. Tapi apakah radikal di dalam kanji ada di sini, atau kanji di dalam radikal? Saya tidak tahu, itu hanya persepsi orang dalam.', 'Jika Anda perlu memasukkan <kanji>ke dalam</kanji> sesuatu, cara tercepat adalah menggunakan <reading>kni</reading>fe (ない). Dengan pisau, Anda dapat membelah sesuatu dan melihat apa yang ada di dalamnya dan <kanji>di dalamnya</kanji>.')
    RETURNING id INTO k_500_di_dalam;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '世', 'dunia', 4, 41, 'Kanji <radikal>dunia</radikal> dan kanji <kanji>dunia</kanji> adalah sama, namun ada arti lain yang sangat penting yang perlu Anda ketahui: <kanji>generasi</kanji>. 

Anggap saja seperti ini: dunia ini terdiri dari banyak generasi manusia, tumbuhan, dan hewan yang hidup bersama-sama.', 'Tugas Anda adalah melindungi <kanji>dunia</kanji> dan setiap <kanji>generasi</kanji> dengan <reading>sa</reading>ber (せい) spesial Anda. Itu diberikan kepada Anda untuk menjunjung kebenaran, dan Anda akan meneruskannya kepada generasi berikutnya ketika tiba waktunya. Lalu mereka akan mengawasi dunia saat Anda pergi.')
    RETURNING id INTO k_527_dunia;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '主', 'menguasai', 4, 42, '<radikal>master</radikal> radikal dan <kanji>master</kanji> kanji memiliki arti yang sama!

Kanji ini juga berarti <kanji>utama</kanji> karena master adalah orang utama dalam sebuah dojo atau rumah tangga atau bisnis.', 'Apakah Anda ingat kembali ke mnemonik radikal, di mana <kanji>master</kanji> melayangkan setetes air di atas kepalanya? Bayangkan kembali ke sana. Begitu Anda melakukannya, hal yang paling menakjubkan terjadi. Sang master mengirimkan setetes air ke dalam <reading>chu</reading>te (しゅ) dan air itu mengalir melewati serangkaian rumit.')
    RETURNING id INTO k_528_menguasai;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '他', 'lainnya', 4, 43, '<radikal>pemimpin</radikal> dari <radikal>buaya</radikal>... dia bukan pemimpin biasa, itu sudah pasti. Dia bukan politisi, dia bukan ratu... Dia adalah salah satu dari <kanji>Lainnya</kanji>, sekelompok orang aneh dan eksentrik yang menjadi pemimpin binatang.', 'Untuk mengingat bacaan た, kami menggunakan kata "taco":

Lalu ada <kanji>yang lain</kanji> dari yang lainnya. Ini adalah para penyembah <read>ta</reading>co (た). Mereka sungguh aneh.')
    RETURNING id INTO k_529_lainnya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '写', 'menyalin', 4, 44, '<radikal>dahi</radikal> dari <radikal>pengemis</radikal> ini berada di <radikal>tanah</radikal>. Hanya saja, itu bukan tanah, itu adalah mesin <kanji>salinan</kanji> raksasa, dan dia membuat salinan dahinya!', 'Mesin <kanji>salin</kanji> darat ini hanya dapat dibuat oleh satu orang: seorang <reading>sha</reading>man (しゃ)!')
    RETURNING id INTO k_531_menyalin;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '去', 'masa-lalu', 4, 45, 'Jika seseorang mencoba menggali <radical>kotoran</radikal> dalam kehidupan <radikal>pribadi</radikal> Anda, katakan tidak, terima kasih, hal itu sudah <kanji>masa lalu</kanji>. Beberapa hal harus tetap menjadi masa lalu. Tidak semua orang perlu mengetahui segalanya tentang kehidupan dan masa lalu Anda.', 'Untuk mengingat bacaan きょ, kita akan menggunakan "Kyoto Kecil". Ini akan membedakan きょ dari きょう, yang merupakan Kyoto berukuran biasa. Mengerti? Anda memutuskan untuk mengubur semua kotoran pribadi dari <kanji>masa lalu</kanji> Anda di <reading>Kyo</reading>to (きょ) Kecil. Hal itu berasal dari saat Anda masih kecil <membaca>子</reading> (こ) dan Anda tidak suka memikirkannya.')
    RETURNING id INTO k_532_masa_lalu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '号', 'nomor', 4, 46, 'Ada <radical>mulut</radical> di <radical>tanah</radical> (dalam kasus kami, ini adalah lubang palka), dan di dalamnya ada semacam <radical>penjara</radical> yang tidak dapat Anda masuki. Jika Anda pernah melihat Lost, ini pasti terdengar familier... di palka, sebenarnya ada serangkaian <kanji>angka</kanji> yang tidak Anda mengerti.', '"Kamu ingin tahu <kanji>nomor</kanji> di palka?" teriak suara tua dari dalam. Anda mengatakan "ya", dan suara itu memberi Anda nomornya dan Anda masuk! Anda turun ke penjara, di mana ada satu tahanan: Kakek <reading>ごう</reading>いち.

Catatan: Untuk mnemonik pembacaan ごう, kami menggunakan Kakek ごういち karena こういち digunakan untuk pembacaan こう. Jadi ingatlah bahwa ごう berasal dari kakek Koichi ごういち.')
    RETURNING id INTO k_533_nomor;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '央', 'tengah', 4, 47, 'Kata radikal untuk <radical>center</radical> dan kanji untuk <kanji>center</kanji> sama persis.', 'Ingat pria dari 央 radikal yang mengikat ikat pinggangnya di <kanji>pusat</kanji> tubuhnya? Orang ini selalu mengencangkan ikat pinggangnya di tengah — tidak sedikit ke kiri, tidak sedikit ke kanan, tetapi tepat di tengah. Ketepatannya sangat menakjubkan sehingga setiap orang yang menonton pasti berkata, "<reading>Ohh</reading>!"(おう).')
    RETURNING id INTO k_534_tengah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '平', 'datar', 4, 48, 'Jika Anda ingin <radical>mengeringkan</radical> <radical>tanduk</radical> Anda, Anda perlu meletakkannya <kanji>datar</kanji>. Jika tidak datar maka akan selalu lembab di suatu tempat dan Anda tidak akan pernah mendapatkan <kanji>kedamaian</kanji> sesaat pun.', 'Menjadi <kanji>datar</kanji> saja tidak cukup, jadi Anda menutupi semuanya dalam <reading>jerami</reading> (へい). Hay menyerap air, jadi tambahkan lapisan yang rata.')
    RETURNING id INTO k_535_datar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '打', 'memukul', 4, 49, 'Gerakkan <radical>jari</radical> Anda ke <radical>jalan</radical> untuk <kanji>memukul</kanji> beberapa orang! Jari-jari jalanan digunakan untuk mengepal. Dan tinju jalanan itu ingin melakukan pukulan!', 'Saat Anda <kanji>memukul</kanji> satu demi satu, tiba-tiba <reading>da</reading>d (だ) Anda datang keluar dari rumah Anda. Uh oh. Ayah memergokimu sedang memukul, dan sejujurnya, itu bukan tindakan yang baik, jadi dia berhak menghentikanmu.')
    RETURNING id INTO k_536_memukul;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '氷', 'es', 4, 50, 'Tambahkan <radical>setetes</radikal> sesuatu yang ajaib ke <radikal>air</radikal> dan tiba-tiba benda itu berubah menjadi <kanji>es</kanji> besar, begitu saja.', 'Saat Anda memikirkan <kanji>es</kanji>, saya ingin Anda memikirkan seseorang yang dibekukan oleh es. Apakah Anda mengenal seseorang bernama <reading>Corey</reading> (こおり)? Adakah yang terkenal bernama Corey, mungkin Corey Feldman? Bayangkan orang Corey ini membeku karena es.')
    RETURNING id INTO k_537_es;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '申', 'ucapkan-dengan-rendah-hati', 4, 51, 'Ada <radikal>salib</radikal> di dalam <radikal>mulut</radikal> Anda, jadi apa yang Anda ucapkan sangatlah saleh. Semua yang Anda katakan, Anda <kanji>ucapkan dengan rendah hati</kanji>.', 'Saat Anda mengatakan semua hal sederhana ini, Anda juga <read>memotong</reading>ing (もう) halaman rumput tetangga Anda. Tetangga Anda sangat menyayangi Anda, karena Anda sangat rendah hati, dan Anda memotong rumput untuk mereka.')
    RETURNING id INTO k_538_ucapkan_dengan_rendah_hati;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '皿', 'piring', 4, 52, 'Kanji <kanji>pelat</kanji> dan radikal <radikal>pelat</radikal> sama persis, seperti dua buah porselen yang serasi.', 'Orang yang mencuci semua <kanji>piring</kanji> bernama <reading>Sarah</reading> (さら). Dinamakan demikian karena kepalanya yang besar, berbentuk seperti kepala Sarah Jessica Parker (sangat besar).')
    RETURNING id INTO k_540_piring;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '礼', 'terima-kasih', 4, 53, 'Apa yang Anda dapatkan jika Anda meminjamkan <radical>spirit</radical> <radical>payung</radical> Anda? <kanji>Terima kasih</kanji>, tentu saja! Apalagi kalau roh itu adalah Totoro, roh hutan.', 'Jadi, apa yang Anda terima sebagai <kanji>terima kasih</kanji>? Anda membukanya, dan ada pistol <reading>ray</reading> (れい) di dalamnya!')
    RETURNING id INTO k_541_terima_kasih;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '休', 'istirahat', 4, 54, '<radical>pemimpin</radikal> berada di sebelah <radikal>pohon</radikal>. Apa yang dia lakukan? Dia bersandar padanya, <kanji>beristirahat</kanji>ing.', 'Saat dia <kanji>beristirahat</kanji>, dia tiba-tiba merasa lapar dan menarik <reading>cu</reading>cumber (きゅう) dari pohon dan menggigitnya. Istirahat yang baik belum lengkap tanpa mentimun pohon yang renyah.')
    RETURNING id INTO k_542_istirahat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '先', 'sebelumnya', 4, 55, 'Kalau kamu turun <radical>slide</radical> dan mendapat <radical>kotoran</radical> di <radical>kaki</radical> kamu, itu pasti kesalahan orang <kanji>sebelum</kanji>, alias orang yang turun slide <kanji>di depan</kanji> kamu. Mereka seharusnya membersihkan kaki mereka yang kotor <kanji>sebelum</kanji> menuruni perosotan, namun mereka tidak melakukannya, dan sekarang kaki Anda juga terkena kotoran.', 'Kemudian Anda menyadari: orang <kanji>sebelumnya</kanji> di slide itu pastilah seorang <reading>cen</reading>taur (せん). Centaur melacak tanah di mana-mana karena mereka selalu berlari kencang di hutan belantara.')
    RETURNING id INTO k_543_sebelumnya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '名', 'nama', 4, 56, 'Apa yang dimaksud dengan <radical>malam</radikal> <radikal>mulut</radikal>? Bayangkan sebuah mulut yang ada di langit malam. Ia hanya ada di sana, berbicara, dan hanya keluar pada malam hari. Itu hanya muncul di satu wilayah di dunia. (Area mana yang akan Anda pilih? Bayangkan diri Anda pergi ke tempat itu untuk melihat "mulut malam".) Dan tempat itu hanya muncul satu bulan dalam setahun (lebih lanjut tentang ini sebentar lagi). "Mulut malam" adalah yang paling terkenal di area _____ (ini adalah area yang Anda pilih). Dia sangat <kanji>terkenal</kanji> sehingga semua orang tahu <kanji>namanya</kanji> ("Mulut Sore").', 'Jadi, kapan “Evening Mouth” muncul? Ternyata, “Evening Mouth” hanya dirilis pada bulan <reading>Mei</reading> (めい). Anda mengetahui hal ini karena ini baru saja mulai musim semi, dan ketika Anda melihat sekeliling (Anda menonton “Evening Mouth” lagi) Anda melihat beberapa bunga musim semi bermunculan.')
    RETURNING id INTO k_544_nama;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '年', 'tahun', 4, 57, 'Anda memiliki <radical>pistol</radikal> dan <radikal>sapi</radikal>, yang berarti ini adalah waktu <kanji>tahun</kanji>! Setiap tahun pada Malam Tahun Baru, Anda diminta untuk menembak seekor sapi, sesuai tradisi. Padahal kamu sebenarnya tidak mau, jadi kamu sengaja melewatkannya setiap saat.', 'Tampaknya semua orang telah menyadari fakta bahwa kamu sengaja melewatkan setiap <kanji>tahun</kanji>, jadi tahun ini kamu membuat umpan <reading>nen</reading>doroid (ねん) berbentuk sapi.')
    RETURNING id INTO k_546_tahun;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '早', 'lebih-awal', 4, 58, 'Ketika <radical>matahari</radikal> berada di atas <radikal>salib</radikal>, inilah saatnya bagi sebagian orang untuk pergi ke gereja — yang mana selalu terlalu <kanji>pagi</kanji> pada hari Minggu, bukan? Dan jika Anda ingin datang ke gereja lebih awal, Anda harus <kanji>cepat</kanji>, jika tidak, Anda akan terlambat.', 'Untuk mengingat bacaan そう kita menggunakan kata "jiwa".

Saat Anda dipaksa untuk bangun <kanji>cepat</kanji> dan <kanji>pagi</kanji> Anda bisa merasakannya di <reading>sou</reading>l (そう) Anda. Kamu sangat lelah dan ini masih pagi sekali, jiwamu berteriak, "Tolong jangan paksa aku pergi secepat ini. Aku akan meninggalkan tubuhmu jika kamu terus melakukan ini!"')
    RETURNING id INTO k_547_lebih_awal;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '気', 'energi', 4, 59, 'Saat ini <radikal>energi</radikal> adalah <radikal>harta</radikal> terbesar. Bukan emas, uang, atau semacamnya. Bayangkan menemukan beberapa di dalam peti harta karun. Segera setelah Anda membukanya, keluarlah <kanji>energi</kanji> dalam semacam bola <kanji>spirit</kanji>.', 'Saat Anda mencapai bagian dalam bola <kanji>energi</kanji> <kanji>spirit</kanji>, Anda merasakan sesuatu yang keras di dalam. Ini adalah <read>key</reading> (き) besar yang memberi Anda akses ke harta karun lainnya.')
    RETURNING id INTO k_548_energi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '百', 'ratus', 4, 60, 'Ada <radical>daun</radical> yang tumbuh dari <radical>matahari</radical>! Anda terbang ke luar angkasa untuk memeriksanya dan ketika Anda mendekat, Anda melihat bahwa itu bukan hanya satu daun, melainkan <kanji>seratus</kanji>! Masuk akal, Anda tidak akan bisa melihat satu daun pun di matahari dari tempat Anda berada di bumi.', 'Anda terbang mendekat, menghitung <kanji>seratus</kanji> daun ketika Anda mendengar suara aneh. Anda melepas helm luar angkasa Anda dan mendengar, "GUH <reading>HYUCK</reading> (ひゃく)!" Anda tahu tawa itu... itu Gufi! Di atas daun keseratus ada Gufi yang tertawa dan melambai. Dia pasti membangun menara daun ini untuk menarik perhatian Anda.')
    RETURNING id INTO k_549_ratus;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '竹', 'bambu', 4, 61, 'Kanji <radikal>bambu</radikal> dan kanji <kanji>bambu</kanji> sama persis!', 'Hari ini adalah hari <kanji>bambu</kanji> gratis, jadi <reading>ambil</reading> (たけ) semua bambu yang kamu inginkan.')
    RETURNING id INTO k_550_bambu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '糸', 'benang', 4, 62, '<radikal>utas</radikal> radikal dan <kanji>utas</kanji> memiliki tampilan dan makna yang sama.', 'Anda mempunyai <kanji>utas</kanji>... apa hal pertama yang Anda lakukan dengannya? Anda mengambilnya dan memasukkannya ke dalam mulut Anda, dan mulai menghisapnya seperti spageti. Anda telah memutuskan untuk <reading>makan</reading> (いと) threadnya.')
    RETURNING id INTO k_551_benang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '耳', 'telinga', 4, 63, 'Kanji <radikal>telinga</radikal> dan kanji <kanji>telinga</kanji> memiliki tampilan dan makna yang sama.', 'Letakkan tanganmu di <kanji>telinga</kanji>mu dan nyanyikan... "<reading>Mimi</reading>mimimimiiiii!" (みみ) dan dengarkan nada Anda dengan telinga Anda.')
    RETURNING id INTO k_552_telinga;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '虫', 'serangga', 4, 64, 'Radikal <radikal>serangga</radikal> dan <kanji>serangga</kanji> memiliki tampilan dan makna yang sama.', 'Itu adalah <kanji>serangga</kanji>! Dapatkan itu! Anda menekannya dengan kaki Anda - suara apa yang dihasilkannya? Suara <read>bubur</reading> (むし).')
    RETURNING id INTO k_553_serangga;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '村', 'desa', 4, 65, 'Seseorang sedang melakukan <radical>pengukuran</radikal> pohon</radikal>… Mengapa mereka melakukan pengukuran pohon? Karena mereka berencana menebangnya untuk dijadikan <kanji>desa</kanji> mereka.', 'Mereka membawa semua kayunya kembali ke tempat mereka membangun <kanji>desa</kanji> mereka, dan setelah mereka membangun pusat desa mereka mengecat <reading>mura</reading>l (むら) di sampingnya. Mural tersebut menggambarkan hutan tempat mereka mendapatkan pepohonan, untuk menghormati asal muasal desa tersebut.')
    RETURNING id INTO k_554_desa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '男', 'pria', 4, 66, 'Kata radikal untuk <radical>man</radical> dan kanji untuk <kanji>man</kanji> sama persis.', 'Saat memikirkan <kanji>pria</kanji>, pikirkan <reading>fajar</reading> (だん), karena pria tersebut harus bangun saat fajar untuk memberi makan padinya setiap hari.')
    RETURNING id INTO k_555_pria;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '町', 'kota', 4, 67, 'Saat Anda melihat <radical>sawah</radikal> dan <radikal>jalan</radikal> di tempat yang sama, Anda akan mendapatkan <kanji>kota</kanji> yang utuh!', 'Anda pergi mengunjungi <kanji>kota</kanji> kecil yang menyenangkan ini. Tapi kemudian, itu dia... Setiap kali kamu berjalan di jalan, wanita jalanan Ny. <reading>Chou</reading> (ちょう) datang untuk merusak harimu.')
    RETURNING id INTO k_556_kota;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '花', 'bunga', 4, 68, 'Semua <radical>bunga</radical> ini ditanam oleh <radical>pemimpin</radical> Anda hanya dengan <radical>sendok</radical>. Sekarang seluruh tempat itu penuh dengan <kanji>bunga</kanji> yang indah. Bunga dimana-mana.', 'Diam-diam, sang pemimpin sebenarnya menanam semua <kanji>bunga</kanji> ini untuk <reading>Hannah</reading> (はな), seorang gadis yang sangat dia sukai. Semua orang berpikir pemimpinnya adalah pria yang baik dan tidak mementingkan diri sendiri, tapi sebenarnya dia hanya berusaha membuat Hannah terkesan.')
    RETURNING id INTO k_557_bunga;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '見', 'melihat', 4, 69, 'Kata radikal <radikal>lihat</radikal> dan kanji <kanji>lihat</kanji> sama persis!', 'Anda melihat sesuatu. Ia berjalan ke arah Anda, tetapi Anda perlu melihat lebih baik. Ketika orang tersebut mendekat, Anda menyadari, "Orang itu adalah <reading>saya</reading> (み)!"')
    RETURNING id INTO k_558_melihat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '貝', 'kerang', 4, 70, 'Kanji <radikal>kerang</radikal> dan kanji <kanji>kerang</kanji> adalah sama! Bisa juga hanya bagian <kanji>shell</kanji> saja.', 'Untuk mendapatkan <kanji>kerang</kanji>, yang harus kamu lakukan hanyalah naik <reading>kay</reading>ak (かい) dan mengambilnya. Kerang hidup di air.')
    RETURNING id INTO k_559_kerang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '赤', 'merah', 4, 71, 'Kata radikal untuk <radical>merah</radikal> dan kanji untuk <kanji>merah</kanji> adalah hal yang sama!', 'Kanji ini berarti <kanji>merah</kanji>, <reading>AKA</reading>, juga dikenal sebagai, あか.')
    RETURNING id INTO k_560_merah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '足', 'kaki', 4, 72, 'Kata radikal untuk <radical>kaki</radikal> dan kanji untuk <kanji>kaki</kanji> sama persis.

Meskipun demikian, ada arti lain yang harus Anda ingat, yaitu <kanji>cukup</kanji>. Jika dipikir-pikir, satu kaki seharusnya cukup untuk berjalan-jalan. Anda harus melompat, tetapi satu kaki masih cukup.', 'Apa yang Anda kenakan di <kanji>kaki</kanji> Anda? Anda memakai <reading>kaus kaki</reading> (そく).')
    RETURNING id INTO k_561_kaki;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '車', 'mobil', 4, 73, '<radikal>mobil</radikal> radikal dan <kanji>mobil</kanji> kanji sama persis.', 'Saat kita perlu mengingat bacaan しゃ, kita menggunakan "dukun".

Ada <kanji>mobil</kanji>. Itu mobil terindah yang pernah Anda lihat. Indah, indah. Tidakkah Anda akan terkejut mengetahui bahwa itu milik seorang <reading>sha</reading>man (しゃ)? Memang benar. Dukun ini mengenakan tarif mahal atas jasa dukunnya sehingga ia mampu membeli mobil mewah seperti ini.')
    RETURNING id INTO k_562_mobil;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '不', 'bukan', 4, 74, 'Kata radikal <radikal>tidak</radikal> dan kanji <kanji>tidak</kanji> adalah hal yang sama! Itu membuatnya mudah... Tidak!', 'Untuk mengingat ふ kita akan menggunakan kata "bodoh".

Bayangkan lelucon tersebut, di mana seseorang mengatakan sesuatu, lalu diakhiri dengan ucapan "<kanji>NOTTTT</kanji>!" Seseorang melakukan itu padamu, berulang kali. Apa orang itu? Orang itu adalah <reading>foo</reading>l (ふ).')
    RETURNING id INTO k_563_bukan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '仕', 'sedang-mengerjakan', 4, 75, '<radikal>pemimpin</radikal> <radikal>samurai</radikal> tidak menjadi pemimpin hanya dengan duduk diam dan tidak mengambil tindakan. Dia mencapai tempatnya sekarang dengan <kanji>melakukan</kanji>.', 'Dia <kanji>melakukan</kanji> sesuatu dengan <reading>shee</reading>p (し). Dia adalah pemimpin klan domba, dan dia mampu berbuat lebih banyak dengan domba dibandingkan orang lain. Itu sebabnya dia adalah pemimpinnya.')
    RETURNING id INTO k_564_sedang_mengerjakan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '穴', 'lubang', 4, 76, 'Radikal <radikal>lubang</radikal> dan kanji <kanji>lubang</kanji> sama persis! Spektakuler!', '<read>Ana</reading> (あな) jatuh ke dalam <kanji>lubang</kanji>. Menertawakan Ana dan kesialannya karena terjatuh ke dalam lubang seperti ninny. Haha, Ana – kamu bodoh dan kikuk!')
    RETURNING id INTO k_1118_lubang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '宝', 'harta-karun', 4, 77, 'Di bawah <radical>atap</radikal> miliknya, <radikal>raja</radikal> menatap ke dalam <radikal>tetesan</radikal> air yang berisi <kanji>harta</kanji> terbesarnya. Cuma bercanda, raja memiliki harta yang jauh lebih banyak dari itu. Tetesan air tersebut hanya mencerminkan apa yang ada di sekelilingnya: gundukan dan gundukan harta karun, bertumpuk hingga ke atap.', 'Semua <kanji>harta</kanji> ini disimpan di <read>ho</reading>saya (ほう) raja. Dia tidak bisa membiarkan orang lain melihat berapa banyak harta yang dimilikinya, atau mereka akan marah. Atau lebih buruk lagi, minta dia membaginya dengan rakyatnya. sial. Harta karun itu tetap di rumah.')
    RETURNING id INTO k_1520_harta_karun;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_493_batu, 'Batu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_498_asal, 'Asal', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_500_di_dalam, 'Di dalam', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_500_di_dalam, 'Di dalam', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_527_dunia, 'Dunia', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_527_dunia, 'Generasi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_528_menguasai, 'Menguasai', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_528_menguasai, 'Utama', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_529_lainnya, 'Lainnya', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_531_menyalin, 'Menyalin', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_532_masa_lalu, 'Masa lalu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_533_nomor, 'Nomor', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_534_tengah, 'Tengah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_535_datar, 'Datar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_535_datar, 'Perdamaian', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_536_memukul, 'Memukul', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_537_es, 'Es', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_538_ucapkan_dengan_rendah_hati, 'Ucapkan dengan rendah hati', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_540_piring, 'Piring', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_540_piring, 'Piring', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_541_terima_kasih, 'Terima kasih', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_541_terima_kasih, 'Etiket', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_542_istirahat, 'Istirahat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_543_sebelumnya, 'Sebelumnya', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_543_sebelumnya, 'Di depan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_543_sebelumnya, 'Sebelum', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_544_nama, 'Nama', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_544_nama, 'Terkenal', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_546_tahun, 'Tahun', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_547_lebih_awal, 'Lebih awal', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_547_lebih_awal, 'Cepat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_547_lebih_awal, 'Cepat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_548_energi, 'Energi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_548_energi, 'Roh', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_549_ratus, 'Ratus', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_550_bambu, 'Bambu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_551_benang, 'Benang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_552_telinga, 'Telinga', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_552_telinga, 'Telinga', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_553_serangga, 'Serangga', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_553_serangga, 'Serangga', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_554_desa, 'Desa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_555_pria, 'Pria', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_556_kota, 'Kota', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_557_bunga, 'Bunga', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_558_melihat, 'Melihat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_559_kerang, 'Kerang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_559_kerang, 'Kerang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_560_merah, 'Merah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_561_kaki, 'Kaki', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_561_kaki, 'Memadai', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_561_kaki, 'Kaki', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_562_mobil, 'Mobil', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_563_bukan, 'Bukan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_564_sedang_mengerjakan, 'Sedang mengerjakan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_564_sedang_mengerjakan, 'Melakukan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1118_lubang, 'Lubang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1118_lubang, 'Gua', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1520_harta_karun, 'Harta karun', true, true);

  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_493_batu, 'せき', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_493_batu, 'いし', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_498_asal, 'げん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_498_asal, 'がん', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_498_asal, 'もと', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_500_di_dalam, 'ない', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_500_di_dalam, 'うち', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_527_dunia, 'せい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_527_dunia, 'せ', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_527_dunia, 'よ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_528_menguasai, 'しゅ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_528_menguasai, 'おも', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_528_menguasai, 'ぬし', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_528_menguasai, 'あるじ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_529_lainnya, 'た', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_529_lainnya, 'ほか', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_531_menyalin, 'しゃ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_531_menyalin, 'うつ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_532_masa_lalu, 'きょ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_532_masa_lalu, 'こ', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_532_masa_lalu, 'さ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_533_nomor, 'ごう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_534_tengah, 'おう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_535_datar, 'へい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_535_datar, 'ひょう', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_535_datar, 'びょう', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_535_datar, 'たい', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_535_datar, 'ひら', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_536_memukul, 'だ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_536_memukul, 'う', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_536_memukul, 'ぶ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_537_es, 'こおり', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_537_es, 'ひょう', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_538_ucapkan_dengan_rendah_hati, 'もう', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_538_ucapkan_dengan_rendah_hati, 'しん', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_540_piring, 'さら', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_541_terima_kasih, 'れい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_542_istirahat, 'きゅう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_542_istirahat, 'やす', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_543_sebelumnya, 'せん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_543_sebelumnya, 'さき', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_543_sebelumnya, 'ま', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_544_nama, 'めい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_544_nama, 'みょう', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_544_nama, 'な', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_546_tahun, 'ねん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_546_tahun, 'とし', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_547_lebih_awal, 'そう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_547_lebih_awal, 'はや', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_547_lebih_awal, 'さ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_548_energi, 'き', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_548_energi, 'け', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_549_ratus, 'ひゃく', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_549_ratus, 'もも', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_550_bambu, 'たけ', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_550_bambu, 'ちく', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_551_benang, 'いと', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_551_benang, 'し', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_552_telinga, 'みみ', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_552_telinga, 'じ', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_553_serangga, 'むし', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_553_serangga, 'ちゅう', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_553_serangga, 'き', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_554_desa, 'むら', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_554_desa, 'そん', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_555_pria, 'だん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_555_pria, 'なん', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_555_pria, 'おとこ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_556_kota, 'ちょう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_556_kota, 'まち', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_557_bunga, 'はな', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_557_bunga, 'か', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_557_bunga, 'け', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_558_melihat, 'み', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_558_melihat, 'けん', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_559_kerang, 'かい', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_559_kerang, 'ばい', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_560_merah, 'あか', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_560_merah, 'せき', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_561_kaki, 'そく', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_561_kaki, 'あし', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_561_kaki, 'た', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_562_mobil, 'しゃ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_562_mobil, 'くるま', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_563_bukan, 'ふ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_563_bukan, 'ぶ', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_564_sedang_mengerjakan, 'し', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_564_sedang_mengerjakan, 'つか', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1118_lubang, 'あな', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1118_lubang, 'けつ', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1520_harta_karun, 'ほう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1520_harta_karun, 'たから', 'kunyomi', false, false);

  -- 3. VOCABULARIES
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '右手', 'tangan-kanan', 4, 78, '<kanji>kanan</kanji> <kanji>tangan</kanji> Anda adalah <vocabulary>tangan kanan</vocabulary> Anda! Kata ini juga dapat digunakan untuk mengartikan <vocabulary>lengan kanan</vocabulary>, dan <vocabulary>sisi kanan</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Namun kata ini menggunakan bacaan kun''yomi. Hal ini mungkin karena 手, karena bagian tubuh sering menggunakan kun''yomi. Anda mempelajari kedua bacaan dengan kata-katanya masing-masing, jadi Anda seharusnya bisa membaca ini.', 'Tangan kanan, Lengan Kanan, Sisi Kanan')
    RETURNING id INTO v_2560_tangan_kanan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '四日', 'hari-keempat', 4, 79, '<vocabulary>Hari keempat</vocabulary> atau <vocabulary>hari keempat</vocabulary>. Tidak peduli bagaimana Anda melihat kombinasi kanji ini, arti kata tersebut sangat masuk akal!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Namun, menghitung hari merupakan pengecualian (setidaknya hingga sepuluh). Anda perlu menggunakan bacaan kun''yomi untuk membaca kata ini. Anda sudah tahu cara membaca kun''yomi untuk 四, jadi tidak apa-apa (meskipun ん diubah menjadi っ kecil). Pikirkan seperti ini:

Pada <vocabulary>hari keempat</vocabulary> tersesat di hutan belantara, Anda mulai berteriak "<reading>Yo</reading>, <reading>ca</reading>r (よっか)!" karena putus asa, tidak pernah mendapat jawaban. Anda terus berjalan, sesekali berteriak "Yo, mobil!", tetapi tidak ada mobil yang datang membantu Anda.', 'Hari Keempat, Hari Keempat, Empat Hari')
    RETURNING id INTO v_2563_hari_keempat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '四つ', 'empat-hal', 4, 80, 'Nomor apa pun yang dilengkapi つ adalah kata yang berarti "NOMOR Benda". Dalam hal ini, yang dimaksud adalah <vocabulary>empat hal</vocabulary>.', 'Karena kata ini terdiri dari kanji yang dibubuhi hiragana, bisa diasumsikan menggunakan bacaan kun''yomi. Namun, bagian ん dari よん diubah menjadi っ kecil, jadi berhati-hatilah.', 'Empat Hal')
    RETURNING id INTO v_2564_empat_hal;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '四千', 'empat-ribu', 4, 81, 'Anda punya empat dan Anda punya seribu. Lipat gandakan semuanya dan Anda akan mendapatkan <vocabulary>empat ribu</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Itu benar untuk bagian 千, tapi bacaan 四nya adalah kun''yomi. Anda harus tahu cara membaca kata ini selama Anda telah mempelajari kanji Anda!', 'Empat Ribu')
    RETURNING id INTO v_2565_empat_ribu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '四十', 'empat-puluh', 4, 82, 'Apa yang Anda dapatkan jika Anda memiliki empat puluhan? Anda mendapatkan <vocabulary>empat puluh</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Satu-satunya pengecualian untuk ini adalah 四, yang menggunakan bacaan kun''yomi, karena bacaan on''yomi terdengar sangat mirip dengan kata "kematian". Untungnya Anda sudah mengetahui bacaan ini, jadi tidak ada hal baru yang perlu dipelajari!', 'Empat puluh')
    RETURNING id INTO v_2566_empat_puluh;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '左手', 'tangan-kiri', 4, 83, '<kanji>tangan</kanji> kiri</kanji> Anda adalah <vocabulary>tangan kiri</vocabulary> Anda! Kata ini juga dapat digunakan untuk mengartikan <vocabulary>lengan kiri</vocabulary>, dan <vocabulary>sisi kiri</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Namun kata ini menggunakan bacaan kun''yomi. Hal ini mungkin karena 手, karena bagian tubuh sering menggunakan kun''yomi. Anda mempelajari kedua bacaan dengan kata-katanya masing-masing, jadi Anda seharusnya bisa membaca ini.', 'Tangan kiri, Lengan Kiri, Sisi Kiri')
    RETURNING id INTO v_2568_tangan_kiri;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '生きる', 'untuk-hidup', 4, 84, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti "hidup", sehingga kata ini berarti "<vocabulary>hidup</vocabulary>."', 'Karena kata ini terdiri dari kanji dengan hiragana di dalamnya, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak mempelajari cara membaca い dengan kanji ini, jadi inilah mnemonik yang dapat membantu Anda:

Apa artinya <vocabulary>hidup</vocabulary>? Hidup ini cukup <read>menjijikkan</reading> (いき ... き berasal dari bagian hiragana), tetapi Anda harus menerima rasa menjijikkan itu dan terus melakukannya jika Anda ingin memiliki kehidupan yang baik... jika Anda ingin hidup!', 'Untuk Hidup, Menjadi Hidup, Untuk Ada')
    RETURNING id INTO v_2578_untuk_hidup;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '石', 'batu', 4, 85, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Anda mengambil <vocabulary>batu.</vocabulary> Anda melemparkannya melalui jendela. Hah. Ternyata <membaca>mudah</read>.

Lakukan lagi. Lempar batu itu lagi. Gampang sekali, lakukan saja.', 'Batu, Batu')
    RETURNING id INTO v_2585_batu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '太る', 'menjadi-gemuk', 4, 86, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri artinya <kanji>gemuk</kanji> jadi bentuk kata kerjanya adalah <vocabulary>to get fat</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda belajar membaca itu dengan kanji, jadi sebaiknya Anda melakukannya. Tapi inilah mnemonik untuk berjaga-jaga:

<vocabulary>menjadi gemuk</vocabulary> mudah jika Anda selalu berada di <reading>futo</reading>n (ふと).', 'Menjadi Gemuk, Untuk Menambah Berat Badan')
    RETURNING id INTO v_2606_menjadi_gemuk;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '休み', 'istirahat', 4, 87, 'Kanji <kanji>rest</kanji> memiliki sedikit hiragana yang melekat, tapi tidak ada yang menunjukkan bahwa itu hanyalah kata benda (itu!). Artinya sama dengan kanji, <vocabulary>rest</vocabulary>.', 'Karena kata ini terdiri dari satu kanji dengan beberapa hiragana, maka sebaiknya menggunakan bacaan kun''yomi. Saat mempelajari kanji, Anda tidak mempelajari bacaan tersebut, jadi inilah mnemonik untuk membantu Anda dengan kata ini: 

Jadi, apakah Anda ingin <vocabulary>istirahat</vocabulary> dari pekerjaan atau sekolah? Anda harus mengatakan "<reading>YAASS</reading> (やす)!"', 'Istirahat, Merusak, Liburan, Hari libur')
    RETURNING id INTO v_2644_istirahat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '休む', 'untuk-beristirahat', 4, 88, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji 休 berarti <kanji>istirahat</kanji>, jadi apa versi kata kerjanya? Itu adalah <vocabulary>beristirahat</vocabulary> atau <vocabulary>mengambil cuti</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Anda perlu <vocabulary>beristirahat</vocabulary>, bukan? Jangan hanya menjawab dengan "ya", ini layak mendapat "<reading>YAASS</reading>" (やす)! YAAASSS ayo RESSST!!!', 'Untuk Beristirahat, Untuk Mengambil Waktu Istirahat')
    RETURNING id INTO v_2645_untuk_beristirahat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '休止', 'berhenti-sebentar', 4, 89, '<kanji>berhenti</kanji> yang hanya <kanji>beristirahat</kanji> (alias tidak permanen) bukanlah perhentian langsung. Anda berencana untuk melanjutkan lagi. Itu sebabnya ini disebut <vocabulary>pause</vocabulary>, <vocabulary>suspension</vocabulary>, atau <vocabulary>hiatus</vocabulary>.

Ini adalah kata yang cukup formal, dan sering digunakan ketika suatu aktivitas atau layanan dihentikan sementara. Misalnya, Anda dapat menggunakannya untuk berbicara tentang kelas yang ditangguhkan, mesin yang ditangguhkan operasinya, atau band pop yang sedang dalam masa jeda. Lihat bagian konteks untuk contoh penggunaan lainnya.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Berhenti sebentar, Penangguhan, Hiatus')
    RETURNING id INTO v_2646_berhenti_sebentar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '休日', 'hari-libur', 4, 90, 'Ini adalah <kanji>istirahat</kanji> <kanji>hari</kanji>, alias <vocabulary>hari libur</vocabulary>. Tergantung dari mana Anda berasal, Anda mungkin juga menyebutnya sebagai <vocabulary>liburan</vocabulary>. Pada dasarnya ini adalah hari apa pun Anda libur kerja atau sekolah.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Anda tahu on''yomi untuk 休, tetapi karena 日 memiliki dua bacaan on''yomi, berikut adalah mnemonik untuk membantu Anda mengingat mana yang harus digunakan:

Pada setiap <vocabulary>hari libur</vocabulary>, Anda makan bukan hanya satu, tapi dua 休-cumbers. <read>Wah, dua</reading> (じつ)? Tenang saja!', 'Hari libur, Hari libur')
    RETURNING id INTO v_2647_hari_libur;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '先ず', 'pertama', 4, 91, 'Kanji berarti <kanji>sebelumnya</kanji>. Ini adalah versi kata keterangan dari kata itu. Ini adalah hal kecil yang bisa Anda gunakan untuk memulai kalimat. Anda tidak dapat memulai kalimat Anda dengan "sebelumnya" tetapi Anda dapat memulainya dengan "<vocabulary>Pertama-tama</vocabulary>" atau "<vocabulary>memulai dengan</vocabulary>."

Ini biasanya ditulis tanpa kanji, jadi ingatlah itu.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Faktanya, pembacaan kata ini sangat jarang, dan merupakan pengecualian. Kita akan menggunakan mnemonik yang menggunakan bagian kanji dan bagian lampiran hiragana. 

<vocabulary>Pertama-tama</vocabulary> dan <vocabulary>untuk memulai</vocabulary>, Anda harus berhasil melewati <reading>labirin</reading> (まず) ini.', 'Pertama, Untuk Memulainya, Pertama, Untuk Memulainya')
    RETURNING id INTO v_2648_pertama;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '先', 'tip', 4, 92, 'Segala sesuatu yang terjadi pada Anda <kanji>sebelumnya</kanji>hanyalah <vocabulary>puncak</vocabulary> dari gunung es, dan hal-hal penting <vocabulary>di depan</vocabulary> Anda, di <vocabulary>masa depan</vocabulary> Anda. Jadi pastikan Anda mengutamakan hal itu <vocabulary>first</vocabulary>!

Arti asli kata ini adalah ujung suatu benda, misalnya pena atau jari. Dari makna tersebut, kata tersebut diperluas menjadi berbagai arti, seperti "depan", "pertama", dan "masa depan", bergantung pada konteks dan lokasinya dalam kalimat. Ini juga bisa berarti "sebelumnya" dalam konteks formal (dan kami akan menerima arti itu juga, tapi kami tidak mengajarkannya di sini karena ini lebih maju).', 'Karena kata ini terdiri dari satu kanji, maka menggunakan bacaan kun''yomi. Anda tidak mempelajari cara membaca dengan kanji, jadi inilah mnemonik untuk membantu Anda:

Tepat <vocabulary>di depan</vocabulary> Anda adalah <vocabulary>tip</vocabulary> dari <reading>gergaji</reading> dan <reading>key</reading> (さき). Anda tidak tahu apa yang mereka lakukan di sana, tetapi gergaji dan kunci memiliki ujung yang sangat tajam, jadi berhati-hatilah agar tidak melukai diri sendiri. Bayangkan diri Anda berjalan dengan hati-hati melewati gergaji dan tip-tip penting tersebut.

P.S. Anda dapat membedakan ini dari 先ず (まず) karena tidak ada hiragana di akhir.', 'Tip, Di depan, Pertama, Masa depan')
    RETURNING id INTO v_2649_tip;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '先々月', 'bulan-sebelum-terakhir', 4, 93, '<kanji>sebelumnya</kanji> <kanji>sebelumnya</kanji> <kanji>bulan</kanji> (ingat bahwa 々 hanya mengulangi kanji sebelumnya) adalah <vocabulary>bulan sebelum terakhir</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Ingat saja — ini BUKAN nama bulan tertentu, jadi ini akan menggunakan pembacaan げつ dari 月.', 'Bulan Sebelum Terakhir, Bulan Sebelumnya Terakhir')
    RETURNING id INTO v_2650_bulan_sebelum_terakhir;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '先月', 'bulan-lalu', 4, 94, '<kanji>sebelumnya</kanji> <kanji>bulan</kanji> adalah <vocabulary>bulan lalu</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. 月 mempunyai dua bacaan on''yomi, tapi karena ini BUKAN nama bulan tertentu, maka akan menggunakan bacaan げつ. Berikut ini mnemonik untuk membantu Anda mengingatnya:

Sejak <vocabulary>bulan lalu</vocabulary>, <reading>cen</reading>taur <reading>Anda bangun</reading> (せんげつ) setiap malam dan tidur di tempat tidur Anda. Dia mengalami mimpi buruk yang sangat buruk sejak bulan lalu, tapi… kenapa? Apakah sesuatu yang traumatis terjadi pada centaurmu bulan lalu? Cobalah untuk mengingat.', 'Bulan Lalu')
    RETURNING id INTO v_2651_bulan_lalu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '先日', 'suatu-hari-nanti', 4, 95, '<kanji>hari</kanji> sebelumnya</kanji> belum tentu kemarin. Bisa saja hari apa saja, itulah sebabnya kata ini berarti <vocabulary>hari yang lain</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Karena 日 mempunyai dua pembacaan on''yomi, berikut adalah mnemonik untuk membantu Anda mengingat mana yang harus digunakan:

<vocabulary>Suatu hari</vocabulary>, kamu melihat dua <reading>cen</reading>taur! <read>Wah, dua</reading> (せんじつ) di antaranya?! Anda beruntung Anda masih hidup!', 'Suatu hari nanti, Beberapa Hari Yang Lalu, Hari lain')
    RETURNING id INTO v_2652_suatu_hari_nanti;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '先生', 'guru', 4, 96, '<kanji>Sebelumnya</kanji> <kanji>kehidupan</kanji>... Jadi kita berbicara tentang seseorang yang memiliki kehidupan sebelumnya, atau mungkin pengalaman hidup sebelumnya? Bila Anda memiliki pengalaman hidup sebelumnya, Anda bisa mengajari orang lain tentang hal itu, sehingga membuat Anda memenuhi syarat untuk menjadi semacam <vocabulary>guru</vocabulary>.

先生 sering digunakan untuk guru sekolah, tetapi juga digunakan untuk menunjukkan rasa hormat kepada dokter, pengacara, penulis, dan pakar terhormat lainnya. Ini digunakan sebagai kata yang berdiri sendiri, atau sebagai akhiran nama seperti di トム先生 (Tom-sensei).', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Guru, Sensei')
    RETURNING id INTO v_2653_guru;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '名人', 'pakar', 4, 97, '<kanji>nama</kanji> dari <kanji>orang</kanji> ini sudah terkenal, tapi kenapa? Itu karena mereka adalah <vocabulary>pakar</vocabulary> di bidangnya, atau <vocabulary>master</vocabulary> dalam sesuatu. Jika Anda seorang ahli atau ahli dalam suatu hal, orang-orang akan mengetahui nama Anda - meskipun Anda hanya ahli dalam bersikap idiot.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Karena 人 memiliki dua bacaan on''yomi, berikut adalah mnemonik untuk membantu Anda mengingat mana yang harus digunakan:

Tahukah Anda bahwa setiap <vocabulary>pakar</vocabulary> memiliki sepasang <reading>May</reading> <reading>jean</reading> (めいじん) masing-masing? Seorang <vocabulary>master</vocabulary> sejati dalam segala hal memiliki celana jeans khusus yang hanya mereka kenakan di bulan Mei. Itulah yang membuat mereka begitu baik dalam apa yang mereka lakukan.', 'Pakar, Menguasai')
    RETURNING id INTO v_2655_pakar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '名字', 'nama-belakang', 4, 98, '<kanji>nama</kanji> yang ditulis dengan <kanji>huruf</kanji> adalah <vocabulary>nama belakang</vocabulary>. Dulu, nama keluarga Anda adalah nama yang penting (bagaimanapun juga itu adalah nama keluarga Anda, dan keluarga adalah raja pada masa itu). Ini adalah nama yang akan kamu tulis dalam kanji... alias dalam huruf. Jadi itulah mengapa kombinasi kanji ini berarti "nama keluarga".', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. 名 menggunakan bacaan on''yomi alternatif di sini yang belum Anda pelajari, jadi inilah mnemonik untuk membantu Anda:

Bayangkan Anda dan pasangan Anda akan segera menikah, dan Anda mencoba memutuskan <vocabulary>nama belakang</vocabulary> masa depan Anda. "Mari kita gabungkan ''aku'' dan ''kamu'' dan gunakan <reading>Myou</reading> (みょう)," katamu. Ya, mulai sekarang kalian berdua akan berbagi nama belakang Myou.', 'Nama belakang, Nama Belakang, Nama keluarga')
    RETURNING id INTO v_2656_nama_belakang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '文字', 'surat-dari-alfabet', 4, 99, '<kanji>menulis</kanji> <kanji>surat</kanji> lebih sederhana dari kedengarannya. Itu sebenarnya hanya sebuah <vocabulary>surat</vocabulary>, kan? Faktanya, Anda sedang membaca 文字 sekarang!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Pembacaan 文 merupakan pengecualian di sini. Ia menggunakan versi singkat dari on''yomi もん, yaitu も. Berikut ini mnemonik untuk mengingatnya:

Anda mengetahui semua <vocabulary>huruf alfabet</vocabulary> hanya karena <reading>Mo</reading>e (も). Jika bukan karena temanmu Moe yang mengajarimu semua huruf, kamu mungkin tidak akan bisa membaca hari ini. Terima kasih Moe!', 'Surat (Dari Alfabet), Karakter, Surat, Teks')
    RETURNING id INTO v_2659_surat_dari_alfabet;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '一文字', 'garis-lurus', 4, 100, 'Anda mempelajari 文字 berarti "huruf (dari alfabet)" atau "karakter". Dan seperti apa karakter kanji untuk <kanji>one</kanji> dalam bahasa Jepang? <vocabulary>garis lurus</vocabulary>!

Anggaplah kata ini berarti "karakter 一". Dalam bahasa Jepang, kata ini paling sering digunakan untuk menggambarkan garis lurus yang dibuat bibir seseorang ketika mereka dirapatkan dalam konsentrasi, frustrasi, atau keheningan.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Karena 文 mempunyai dua bacaan on''yomi, berikut adalah mnemonik untuk membantu Anda mengingat mana yang harus digunakan:

Siapapun yang berjalan dengan mulut <vocabulary>garis lurus</vocabulary> mungkin adalah <reading>mon</reading>ster (もん). Bagaimana orang bisa berjalan-jalan dengan ekspresi wajah yang tidak menarik? Pada dasarnya, siapa pun yang tidak selalu tersenyum adalah monster, menurut Anda. Dan itu termasuk monster dengan mulut berbentuk 一文字.', 'Garis lurus')
    RETURNING id INTO v_2660_garis_lurus;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '２０１１年', 'tahun-2011', 4, 101, 'Ini adalah <kanji>tahun</kanji> 2011. Menurut saya maknanya cukup jelas. Artinya <vocabulary>year 2011</vocabulary> atau sederhananya <vocabulary>2011</vocabulary>.', 'Pembacaannya sedikit lebih rumit. Anda memulai dengan dua ribu (二千／にせん), lalu Anda perlu menambahkan sebelas ke dalamnya (十一／じゅういち). Kemudian, Anda cukup menambahkan bacaan untuk 年 yang sudah Anda ketahui. Anda dapat berasumsi bahwa itu adalah bacaan on''yomi karena dikaitkan dengan sesuatu yang lain, seperti jukugo. Dari sana, Anda mendapatkan keseluruhan bacaan.', 'Tahun 2011, 2011, Tahun 2011')
    RETURNING id INTO v_2662_tahun_2011;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '年内', 'pada-akhir-tahun', 4, 102, '<kanji>Di dalam</kanji> <kanji>tahun</kanji> berarti <vocabulary>di akhir tahun</vocabulary>, atau <vocabulary>di dalam tahun</vocabulary>.

年内 digunakan untuk membicarakan hal-hal yang terjadi sebelum tahun berjalan berakhir. Kata ini juga dapat digunakan untuk membicarakan rencana seseorang untuk <vocabulary>sisa tahun ini</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Pada Akhir Tahun, Dalam Tahun Ini, Sisa Tahun Ini')
    RETURNING id INTO v_2663_pada_akhir_tahun;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '年中', 'sepanjang-tahun', 4, 103, '<kanji>tahun</kanji> <kanji>tengah</kanji> terdengar seperti "pertengahan tahun", padahal sebenarnya bukan. Pikirkan sesuatu yang terjadi di pertengahan tahun dan kemudian di semua bagian lain tahun ini. Ini hanya mengacu pada segala sesuatu dalam tahun ini, yang merupakan cara kita <vocabulary>sepanjang tahun</vocabulary>.', 'Ini adalah kata jukugo, yang biasanya berarti pembacaan kanji on''yomi. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Namun, 中 memiliki bacaan yang aneh, yaitu じゅう. Ini pada dasarnya hanya ちゅう yang berubah menjadi ぢゅう, tetapi karena ぢ sangat jarang, maka hanya beralih ke じ dan Anda berakhir dengan じゅう. Itu namanya rendaku.', 'Sepanjang Tahun, Sepanjang Tahun, Sepanjang Tahun, Sepanjang Tahun')
    RETURNING id INTO v_2664_sepanjang_tahun;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '一年生', 'siswa-tahun-pertama', 4, 104, 'Anda mungkin berpikir ini hanya berarti <kanji>satu</kanji> <kanji>tahun</kanji> dari <kanji>kehidupan</kanji>, namun sebenarnya itu berarti <vocabulary>siswa tahun pertama</vocabulary>. Siswa tahun kedua adalah 二年生, dan seterusnya. Coba bayangkan betapa gilanya orang Jepang terhadap sekolah. Anda dapat melihat mengapa sekolah adalah kehidupan, dan bukan kehidupan itu sendiri, dengan menjadikan kosakata ini sebagai "siswa tahun pertama".', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Siswa Tahun Pertama')
    RETURNING id INTO v_2665_siswa_tahun_pertama;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '少年', 'anak-laki-laki', 4, 105, 'Seseorang yang berusia <kanji>sedikit</kanji> <kanji>tahun</kanji> adalah seseorang yang masih muda. Karena kita sudah mempunyai 少女 untuk anak perempuan, 少年 berarti <vocabulary>cowok</vocabulary>.

少年 adalah istilah formal yang sering mengacu pada <vocabulary>anak laki-laki</vocabulary>, biasanya antara masa kanak-kanak dan remaja, atau terkadang <vocabulary>remaja</vocabulary> secara umum.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Anak laki-laki, Anak Muda, Anak muda')
    RETURNING id INTO v_2666_anak_laki_laki;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '去年', 'tahun-lalu', 4, 106, '<kanji>masa lalu</kanji> <kanji>tahun</kanji> hanyalah <vocabulary>tahun lalu</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Tahun Lalu')
    RETURNING id INTO v_2667_tahun_lalu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '早い', 'lebih-awal', 4, 107, 'Ini adalah kanji tunggal dengan い di akhir, artinya Anda tahu itu mungkin kata sifat. Apa bentuk kata sifat dari <kanji>awal</kanji>? Ini juga <vocabulary>awal</vocabulary>.', 'Bacaan kata ini adalah bacaan kun''yomi, yang tidak anda pelajari saat mempelajari kanji. Anda harus mengingat bagian はや untuk dapat membaca kata ini. Untuk melakukan itu, inilah mnemoniknya: 

Anda <kanji>cepat</kanji>! Anda <kanji>lebih awal</kanji>! Pukulanmu jatuh ke leher lawan dengan sangat cepat! Saat Anda memotongnya, Anda berteriak "<reading>HAYA</reading>!" (はや)', 'Lebih awal, Cepat, Cepat')
    RETURNING id INTO v_2668_lebih_awal;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '早々', 'segera-setelah', 4, 108, 'Intinya Anda memiliki kanji 早 dua kali, karena 々 adalah kanji pengulang. Ketika Anda melakukan sesuatu dua kali lipat <kanji>lebih awal</kanji>, pasti ada semacam urgensinya, bukan? Jadi, Anda perlu mengambil tindakan <vocabulary>segera setelah</vocabulary> Anda menyelesaikan apa pun yang sedang Anda lakukan.', 'Kata ini memiliki dua kemungkinan bacaan, masing-masing dengan nuansa berbeda, jadi berikut beberapa mnemonik yang dapat Anda gunakan untuk mengingatnya:

そうそう adalah saat kamu melakukan sesuatu dengan cepat atau segera setelah melakukan hal lain, seperti 早々にホテルを出る (segera meninggalkan hotel) atau オープン早々 (segera setelah toko buka). Anda dapat mengingat hal ini karena <vocabulary>segera</vocabulary> Anda mulai bekerja, Anda melakukan semuanya dengan sangat <vocabulary>cepat</vocabulary>, sehingga performa kerja Anda hanya <reading>biasa saja</reading> (そうそう).

はやばや adalah saat Anda melakukan sesuatu lebih awal dari biasanya, seperti tidur atau menutup toko sebelum waktu biasanya. Anda dapat mengingat hal ini karena ketika Anda ingin menutup toko <vocabulary>lebih awal</vocabulary>, Anda mengatakan "<reading>Hai… bye-ya</reading>!" (はやばや) kepada semua pelanggan yang datang. Mengucapkan hai dan selamat tinggal saat mereka masuk adalah cara terbaik untuk memberi isyarat bahwa Anda mencoba mendekat lebih awal. Hai, sampai jumpa! Ya, mereka mengerti petunjuknya. Bagaimanapun, biasanya muncul sebagai 早々と, jadi jika Anda melihatnya と itu adalah petunjuk bahwa bacaannya mungkin はやばや!', 'Segera setelah, Dengan cepat, Lebih awal, Segera Setelahnya')
    RETURNING id INTO v_2669_segera_setelah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '気', 'energi', 4, 109, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan kanji yang menyusun kata ini. Beruntungnya kamu!', 'Energi, Roh')
    RETURNING id INTO v_2670_energi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '気に入る', 'untuk-menyukai', 4, 110, 'Anda <kanji>masuk</kanji> ke dalam <kanji>energi</kanji>. Saat memasuki energi (positif), Anda akan <vocabulary>menyukai</vocabulary> pada sesuatu dan <vocabulary>merasa senang</vocabulary> dan <vocabulary>membahagiakan</vocabulary> dengannya. Bayangkan saja diri Anda memasuki energi bahagia ketika Anda menyukai sesuatu.', 'Bagian 気 cukup lurus ke depan. Pembacaan 入る sama dengan yang Anda pelajari dengan kosakata 入り口. Bayangkan saja Anda benar-benar sangat senang dengan <reading>ea</reading>gle (い) hewan peliharaan baru Anda yang cantik! Anda sangat puas dan senang dengan itu. Rasakan energi baik yang diberikan elang Anda.', 'Untuk Menyukai, Menjadi Senang, Menjadi Bahagia')
    RETURNING id INTO v_2671_untuk_menyukai;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '一気に', 'dalam-sekali-jalan', 4, 111, 'Jika Anda melakukan sesuatu dalam <kanji>satu</kanji> ledakan <kanji>energi</kanji>, Anda melakukannya <vocabulary>sekali jalan</vocabulary>. Baik Anda membaca seluruh buku dalam sekali duduk atau menenggak bir utuh dalam sekali teguk, hal yang Anda lakukan ini terjadi <vocabulary>sekaligus</vocabulary> — dalam satu kali kejadian.

一気に mengacu pada satu dorongan terus menerus tanpa jeda. Gambarannya adalah momentum: melakukan sesuatu dalam satu ledakan, bukan sesuatu yang terjadi secara instan.', 'Pembacaannya sama dengan yang Anda pelajari dengan kanji individu, meskipun いち dari 一 disingkat menjadi いっ.', 'Dalam Sekali Jalan, Sekaligus, Dalam Satu Nafas')
    RETURNING id INTO v_2672_dalam_sekali_jalan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '気分', 'suasana-hati', 4, 112, '<kanji>energi</kanji> yang merupakan <kanji>bagian</kanji> dari diri Anda pada waktu tertentu tercermin dalam <vocabulary>mood</vocabulary> Anda, alias <vocabulary>perasaan</vocabulary> Anda. Jenis energi apa yang menjadi bagian dari diri Anda saat ini? Energi suasana hati yang baik, atau energi perasaan buruk? 

気分 mengacu pada suasana hati atau keadaan emosi seseorang, dan terkadang bagaimana perasaannya secara fisik. Anda akan mendengarnya ketika orang menggambarkan keadaan mereka saat ini, seperti 気分がいい (Saya merasa baik), 気分がわるい (Saya merasa tidak enak badan), atau 気分がのらない (Saya sedang tidak mood).', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Suasana hati, Merasa')
    RETURNING id INTO v_2673_suasana_hati;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '人気', 'populer', 4, 113, 'Jika <kanji>seseorang</kanji> memiliki banyak <kanji>energi</kanji> maka mereka sangat karismatik dan menyenangkan! Apa ciri lain dari orang yang karismatik dan menyenangkan? Kemungkinan besar kata-kata tersebut adalah <vocabulary>populer</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Karena 人 dan 気 masing-masing memiliki dua kemungkinan pembacaan on''yomi, berikut ini mnemonik untuk membantu Anda:

Kamu begitu <vocabulary>populer</vocabulary> sehingga kamu diberi <reading>Nin</reading>tendo <reading>key</reading> (にんき). Benar, Nintendo memberi Anda kunci utama seluruh kantor mereka. Sama seperti itu.

Ini adalah tanggung jawab yang besar bahkan untuk tingkat popularitas Anda, jadi berhati-hatilah agar tidak kehilangan kunci ini!', 'Populer, Kepopuleran')
    RETURNING id INTO v_2674_populer;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '元気', 'energi', 4, 114, 'Apa <kanji>asal</kanji> dari <kanji>energi</kanji> Anda? Ini adalah <vocabulary>kesehatan</vocabulary> Anda. Kata ini juga berarti <vocabulary>energi</vocabulary>, dan jika digunakan sebagai kata sifat, artinya <vocabulary>sehat</vocabulary> atau <vocabulary>energik</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Energi, Kesehatan, Energik, Sehat')
    RETURNING id INTO v_2675_energi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '天気', 'cuaca', 4, 115, 'Apa itu <kanji>surga</kanji> <kanji>energi</kanji>? Jika dipikir-pikir, itulah semua benda yang jatuh ke atas kita dari langit. Petir, hujan, salju, hujan es... Apa semua itu? Itu adalah <vocabulary>cuaca</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Cuaca')
    RETURNING id INTO v_2676_cuaca;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '本気', 'serius', 4, 116, 'Apa itu <kanji>buku</kanji> <kanji>energi</kanji>? Ini adalah energi yang Anda keluarkan untuk membaca - itulah studi Anda! Namun, untuk memiliki energi buku, Anda harus sangat <kosakata>serius</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Serius, Keseriusan')
    RETURNING id INTO v_2677_serius;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '平気', 'tenang', 4, 117, 'Anda memiliki <kanji>energi</kanji> datar</kanji>. Jenis energi apa yang termasuk energi datar? Mungkin yang <vocabulary>keren</vocabulary> atau <vocabulary>tenang</vocabulary>. Anda juga dapat memberi tahu orang lain tentang energi datar ini dengan mengatakan bahwa Anda <vocabulary>baik-baik saja</vocabulary> atau hanya <vocabulary>oke</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Tenang, Dingin, Baiklah, Oke')
    RETURNING id INTO v_2678_tenang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '一本気', 'pikiran-satu-jalur', 4, 118, 'Anda hanya memiliki <kanji>satu</kanji> <kanji>buku</kanji> <kanji>energi</kanji>. Tidak ada buku lain yang terlintas dalam pikiran Anda. Hanya satu buku ini. Mengapa? Karena Anda memiliki <kosakata>pikiran satu arah</vocabulary>.', 'Pembacaannya didasarkan pada pembacaan on''yomi untuk semuanya, meskipun setiap pembacaan sedikit diubah. いち disingkat menjadi いっ, ほん berubah menjadi ぽん, dan き diubah menjadi ぎ. Namun, mereka didasarkan pada pembacaan yang sudah Anda ketahui, jadi melakukan perubahan ini seharusnya tidak terlalu sulit... yaitu, kecuali Anda memiliki 一本気, oke?', 'Pikiran Satu Jalur, Pikiran Tunggal')
    RETURNING id INTO v_2679_pikiran_satu_jalur;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '百万', 'juta', 4, 119, '<kanji>seratus</kanji> <kanji>sepuluh ribu</kanji> berapa harganya? Lipat gandakan keduanya dan Anda mendapatkan <vocabulary>juta</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Juta, Satu Juta')
    RETURNING id INTO v_2680_juta;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '四百', 'empat-ratus', 4, 120, 'Jika Anda memiliki <kanji>empat</kanji> <kanji>ratusan</kanji>, Anda memiliki <vocabulary>empat ratus</vocabulary>.', 'Kata ini memiliki nomor empat di dalamnya, dan menggunakan bacaan kun''yomi untuk kanji tersebut (よん). Namun bacaan untuk 百 adalah bacaan on''yomi (ひゃく). Ini cukup normal jika menyangkut kata yang mengandung empat dalam bahasa Jepang. Anda sudah mengetahui kedua bacaan ini. Hore!', 'Empat Ratus')
    RETURNING id INTO v_2681_empat_ratus;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '五百', 'lima-ratus', 4, 121, 'Jika Anda memiliki <kanji>lima</kanji> <kanji>ratusan</kanji>, Anda juga memiliki <vocabulary>lima ratus</vocabulary>.', 'Kata ini menggunakan bacaan on''yomi untuk kedua kanjinya, jadi kamu pasti sudah bisa membacanya!', 'Lima ratus')
    RETURNING id INTO v_2682_lima_ratus;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '二百', 'dua-ratus', 4, 122, 'Jika Anda memiliki <kanji>dua</kanji> <kanji>ratusan</kanji>, Anda memiliki <vocabulary>dua ratus</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Dua Ratus')
    RETURNING id INTO v_2683_dua_ratus;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '竹の子', 'rebung-bambu', 4, 123, 'Apa itu <kanji>anak</kanji> dari <kanji>bambu</kanji>? Itu akan menjadi bayi bambu. Karena "bayi bambu" tidak masuk akal, kami akan menyebutnya dengan kata <vocabulary>bambu</vocabulary>s. 

Jika ditulis 竹の子, kemungkinan besar rebung tersebut masih tumbuh di dalam tanah. Kalau sudah dipetik, dimasak, dan siap disantap, pengucapannya sama, tapi biasanya ditulis dalam bentuk lain, seperti タケノコ.', 'Jika Anda mengetahui pembacaan kanji untuk 竹 dan kosakata untuk 子, Anda seharusnya bisa membaca kata ini juga.', 'Rebung Bambu, Tunas Bambu')
    RETURNING id INTO v_2684_rebung_bambu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '竹', 'bambu', 4, 124, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna!', 'Karena kata ini terdiri dari satu kanji, maka sebaiknya menggunakan bacaan kun''yomi yang juga merupakan bacaan yang Anda kaitkan dengan kanji tadi.', 'Bambu')
    RETURNING id INTO v_2685_bambu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '糸', 'benang', 4, 125, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Karena kata ini terdiri dari satu kanji, maka sebaiknya menggunakan bacaan kun''yomi (yaitu bacaan yang Anda pelajari dengan kanji).', 'Benang')
    RETURNING id INTO v_2686_benang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '耳', 'telinga', 4, 126, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Karena kata ini terdiri dari satu kanji, maka sebaiknya menggunakan bacaan kun''yomi yaitu bacaan yang Anda pelajari dengan kanji. Jadi, Anda seharusnya sudah bisa membaca kata ini.', 'Telinga, Telinga')
    RETURNING id INTO v_2687_telinga;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '虫', 'serangga', 4, 127, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna. Kata ini sebenarnya lebih umum daripada kata bahasa Inggris <vocabulary>insect</vocabulary> dan <vocabulary>bug</vocabulary>. Ini juga mencakup hal-hal seperti cacing dan laba-laba, jadi dalam hal ini lebih seperti <vocabulary>menyeramkan-merangkak</vocabulary>.', 'Karena kata ini terdiri dari satu kanji, maka sebaiknya menggunakan bacaan kun''yomi, yang juga merupakan bacaan yang Anda pelajari saat mempelajari kanji ini!', 'Serangga, Serangga, Perayapan yang menyeramkan')
    RETURNING id INTO v_2689_serangga;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '村', 'desa', 4, 128, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Karena kata ini terdiri dari satu kanji, maka sebaiknya menggunakan bacaan kun''yomi. Ini adalah bacaan yang sudah Anda pelajari dengan kanji. Sabas!', 'Desa, Kota Pedesaan')
    RETURNING id INTO v_2690_desa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '村人', 'orang-desa', 4, 129, 'Anda memiliki <kanji>desa</kanji> <kanji>orang</kanji>. Itu bukanlah seseorang yang menari sambil mengenakan pakaian pekerja konstruksi, itu adalah <vocabulary>penduduk desa</vocabulary>.', 'Kata ini menggunakan kun''yomi ganda dalam bacaannya, mungkin karena seperti dua kata terpisah (desa dan orang) yang disatukan menjadi satu kata besar. Anda harus mengetahui dua bacaan kun''yomi ini (ini adalah bacaan utama untuk 村 yang Anda pelajari dan Anda seharusnya sudah mengetahui 人 sekarang), meskipun Anda perlu memperhatikan bacaan rendaku びと.', 'Orang desa')
    RETURNING id INTO v_2691_orang_desa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '男', 'pria', 4, 130, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.

Sadarilah bahwa kata yang digunakan sendiri mungkin terdengar agak kasar. Anda akan segera mempelajari opsi yang lebih netral.', 'Karena kata ini terdiri dari satu kanji, maka menggunakan bacaan kun''yomi. Berikut ini mnemonik untuk membantu Anda mengingatnya: 

Ada <vocabulary>manusia</vocabulary>. Pikirkan pria paling jantan yang Anda bisa. Dia bekerja di bengkel mobil. Sebagai seorang anak, dia adalah seorang <reading>auto 子</reading> (おとこ), bekerja di bengkel mobil sejak usia dini. Ini mengubahnya menjadi seorang pria dengan sangat cepat. 

Seperti mnemonik lain yang tidak tersusun sempurna, tujuan Anda di sini adalah berada cukup dekat untuk mengingat bacaan sebenarnya. Langkah, langkah, langkah, lompat!', 'Pria')
    RETURNING id INTO v_2692_pria;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '町', 'kota', 4, 131, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Karena kata ini terdiri dari satu kanji, maka sebaiknya menggunakan bacaan kun''yomi. Saat mempelajari kanji, Anda tidak mempelajari bacaan tersebut, jadi inilah mnemonik untuk membantu Anda dengan kata ini: 

Anda berjalan ke kota ini. Anda membencinya (karena itu kosakata, dan siapa yang tidak membenci kosakata?). Jadi apa yang kamu lakukan? Anda mengeluarkan <reading>korek api</reading> (まち) dan membakar kota ini hingga rata dengan tanah. Wah, kamu semacam psikopat?', 'Kota')
    RETURNING id INTO v_2693_kota;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '花', 'bunga', 4, 132, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Karena kata ini terdiri dari satu kanji, maka sebaiknya menggunakan bacaan kun''yomi. Ini adalah bacaan yang Anda pelajari saat mempelajari kanji, jadi Anda siap melakukannya. Namun, jangan lupa untuk berhenti dan mencium bunga mawar di perjalanan.', 'Bunga')
    RETURNING id INTO v_2694_bunga;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '花火', 'kembang-api', 4, 133, '<kanji>bunga</kanji> <kanji>api</kanji>... seperti apa bunga yang terbakar? Itu akan menjadi <vocabulary>kembang api</vocabulary>. Sangat masuk akal, bukan?', 'Bacaan kanji pembentuk kata ini adalah bacaan kun''yomi, dimana ひ api berubah menjadi び. Anda sudah mempelajari pembacaan kun''yomi untuk 花 ketika Anda mempelajari kanji, jadi yang penting hanyalah mengingat untuk menggunakan kun''yomi untuk 火. Jika ya, Anda seharusnya bisa membaca kata ini.', 'Kembang api')
    RETURNING id INTO v_2695_kembang_api;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '花見', 'melihat-bunga-sakura', 4, 134, 'Bila Anda memiliki <kanji>bunga</kanji> yang dapat <kanji>dilihat</kanji>, Anda sedang melihat bunga. Tapi bukan sembarang bunga. Bunga apa yang suka dilihat orang Jepang? Benar sekali, kata ini merujuk pada <vocabulary>melihat bunga sakura</vocabulary>.

Fokus 花見 adalah pada tindakan mengapresiasi pohon yang sedang mekar, sering kali disertai dengan pertemuan di luar ruangan, piknik, atau pesta. Meskipun bunga sakura adalah bunga yang paling sering diasosiasikan, istilah ini juga dapat mencakup pengalaman melihat bunga lainnya.', 'Pembacaan kosakata ini semuanya kun''yomi, tetapi Anda mempelajari pembacaan kun''yomi keduanya saat Anda mempelajari kanjinya. Jadi jangan khawatir. Anda dapat menghabiskan waktu ekstra untuk melihat bunga sakura.', 'Melihat Bunga Sakura, Melihat Sakura, Melihat Bunga Sakura')
    RETURNING id INTO v_2696_melihat_bunga_sakura;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '見る', 'untuk-melihat', 4, 135, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>melihat</kanji> jadi kosakata di sini berarti <vocabulary>melihat</vocabulary>, <vocabulary>melihat</vocabulary>, atau <vocabulary>melihat</vocabulary>.

Melihat, melihat, menonton — 見る tidak peduli. Tidak perlu memicingkan mata pada pilihan kata di sini.', 'Pembacaan kata ini sama dengan pembacaan yang kamu pelajari dengan kanji (kun''yomi) jadi kamu harus bisa membaca ini.', 'Untuk Melihat, Untuk Melihat, Untuk Menonton')
    RETURNING id INTO v_2697_untuk_melihat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '見せる', 'untuk-ditunjukkan', 4, 136, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Ini terkait dengan arti kanji 見 "melihat", tapi kanji ini tentang membuat orang lain melihat sesuatu. Dengan kata lain, artinya <vocabulary>to show</vocabulary>.', 'Pembacaan kata ini sama dengan yang kamu pelajari dengan kanji, jadi kamu harus bisa membacanya.', 'Untuk Ditunjukkan')
    RETURNING id INTO v_2699_untuk_ditunjukkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '見方', 'cara-melihat', 4, 137, '<kanji>melihat</kanji>cara <kanji></kanji> Anda adalah <vocabulary>cara Anda melihat</vocabulary> sesuatu. Ini seperti ketika seseorang mempunyai opini bodoh dan Anda berkata, "Oh, oke, jadi itu salah satu cara untuk melihatnya..."

Perhatikan bahwa meskipun 見方 sering merujuk pada <vocabulary>sudut pandang</vocabulary> atau <vocabulary>perspektif</vocabulary> seseorang, 見方 juga dapat digunakan untuk sekadar membicarakan tentang <vocabulary>cara memandang</vocabulary> sesuatu — bagan atau peta, misalnya.', 'Bacaan vocab ini semuanya kun''yomi. Anda mempelajari bacaan kun''yomi 見 ketika Anda mempelajari kanji, tetapi karena bacaan 方 bukanlah bacaan utama yang Anda pelajari, berikut adalah mnemonik untuk membantu agar tetap melekat:

Kamu telah diberi tahu bahwa cara <vocabulary>memandang</vocabulary>mu agak sempit, jadi untuk mendapatkan <vocabulary>perspektif</vocabulary> yang lebih luas, kamu memutuskan untuk <reading>cata</reading>mengangkat (かた) dirimu ke udara. Hal ini tentu akan memberi Anda <vocabulary>sudut pandang</vocabulary> yang baru dan menarik.', 'Cara Melihat, Sudut Pandang, Perspektif, Cara Melihat')
    RETURNING id INTO v_2701_cara_melihat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '月見', 'melihat-bulan', 4, 138, 'Saat Anda <kanji>berbulan</kanji> <kanji>melihat</kanji> sesuatu, Anda sedang melakukan <vocabulary>melihat bulan</vocabulary>.

月見 adalah acara musim gugur tradisional di Asia Timur di mana orang-orang mengagumi bulan purnama dan menikmati camilan musiman, yang di Jepang meliputi pangsit berbentuk bulan, ubi jalar, dan kacang kastanye. 月見 juga sering muncul pada nama makanan yang menyerupai bulan dalam beberapa hal, seperti 月見バーガー — hamburger yang topping telur gorengnya lebih lucu dibandingkan dengan Harvest Moon penuh.', 'Kata ini menggunakan bacaan kun''yomi untuk kedua kanjinya. Anda mempelajari pembacaan つき dengan kosakata 月, dan pembacaan み dengan kanji 見 (dan dengan beberapa kosakatanya, seperti 見る). Anda mungkin tidak akan kesulitan mengingat bagian み, jadi inilah mnemonik hanya untuk bagian つき:

Setiap tahun saat waktu <vocabulary>melihat bulan</vocabulary>, Anda mengeluarkan <reading>dua kunci</reading> (つき). Kunci pertama memungkinkan Anda keluar ke beranda, tempat Anda melihat bulan secara sebenarnya, dan kunci kedua membuka dapur Anda yang penuh dengan makanan ringan untuk melihat bulan. Kedua kunci ini adalah <em>kunci</em> menikmati pemandangan bulan di rumah Anda.', 'Melihat Bulan')
    RETURNING id INTO v_2702_melihat_bulan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '貝', 'kerang', 4, 139, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Pembacaan kata ini sama dengan yang Anda pelajari dengan kanji, artinya Anda seharusnya sudah bisa membacanya.', 'Kerang, Kerang, Kerang')
    RETURNING id INTO v_2703_kerang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '赤', 'merah', 4, 140, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan kanji yang Anda pelajari, artinya Anda tahu bacaannya!', 'Merah')
    RETURNING id INTO v_2704_merah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '赤ちゃん', 'bayi', 4, 141, 'ちゃん adalah sebutan kehormatan yang Anda berikan pada nama anak. Jadi, siapakah anak misterius yang kamu panggil <kanji>merah</kanji> ini? Saat bayi lahir, apa warnanya? Anda mengerti, semuanya berwarna merah. Dan, karena kamu ingin menjadi baik dan imut, kamu menambahkan ちゃん ke dalamnya. Itu sebabnya あかちゃん adalah <vocabulary>bayi</vocabulary>.', 'Jika Anda mengetahui bacaan kanji <kanji>赤</kanji> Anda harus mengetahui bacaan ini juga.', 'Bayi')
    RETURNING id INTO v_2705_bayi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '足りる', 'menjadi-cukup', 4, 142, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>kaki</kanji> atau <kanji>cukup</kanji>, dan kita akan menggunakan arti "cukup" untuk kata ini! Kata ini berarti <vocabulary>menjadi cukup</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda mengingat bagian た. Kapanpun kita perlu mengingat た kita menggunakan kata "taco". 

Apa yang kamu punya cukup? Apa yang cukup? Ternyata itu <read>ta</reading>cos (た). Bunkermu penuh dengan mereka dan <vocabulary>akan cukup</vocabulary> untuk bertahan di musim dingin.', 'Menjadi Cukup, Menjadi Cukup, Cukup')
    RETURNING id INTO v_2706_menjadi_cukup;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '足', 'kaki', 4, 143, 'Kanji dan kata-katanya hampir persis sama. Itu berarti mereka juga berbagi makna. <kanji>kaki</kanji> adalah <vocabulary>kaki</vocabulary>, tahu?

Meskipun kata ini lebih umum digunakan untuk kaki, terkadang kata ini juga merujuk pada <kosakata>kaki</vocabulary>. Sekarang Anda sudah memahami 足!', 'Karena kata ini terdiri dari satu kanji, maka sebaiknya menggunakan bacaan kun''yomi. Saat mempelajari kanji, Anda tidak mempelajari bacaan tersebut, jadi inilah mnemonik untuk membantu Anda dengan kata ini: 

Jika Anda ingat dalam mnemonik radikal/kanji, Anda menendang seseorang dengan kaki Anda. Tapi apa yang terjadi setelah Anda menendangnya? Ternyata itu terbuat dari api, dan kamu baru saja membakar kakimu, mengubahnya menjadi <reading>abu</reading>es (あし). Bayangkan ini terjadi.', 'Kaki, Kaki')
    RETURNING id INTO v_2707_kaki;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '不足', 'kekurangan', 4, 144, 'Anda memiliki sesuatu yang <kanji>tidak</kanji> <kanji>cukup</kanji>. Ketika ada sesuatu yang tidak mencukupi, Anda mengalami <vocabulary>ketidakcukupan</vocabulary> atau <vocabulary>kekurangan</vocabulary>.

Kata ini lebih umum digunakan dalam konteks formal. Dalam percakapan sehari-hari yang lebih santai, 足りない sering kali digunakan untuk menyatakan sesuatu yang kurang.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kekurangan, Ketidakcukupan')
    RETURNING id INTO v_2708_kekurangan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '車', 'mobil', 4, 145, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Karena kata ini terdiri dari satu kanji, maka sebaiknya menggunakan bacaan kun''yomi. Saat mempelajari kanji, Anda tidak mempelajari bacaan tersebut, jadi inilah mnemonik untuk membantu Anda dengan kata ini: 

Kamu mengunjungi ibumu yang tinggal di dalam <kanji>mobil</kanji>. Ini menyedihkan, dan Anda merasa tidak enak. Hal pertama yang keluar dari mulutmu adalah: "<vocabulary>Cool Room, Ma</vocabulary> (くるま) karena kamu tidak tahu harus berkata apa lagi tentang situasi kehidupan ibumu. 

Pastikan untuk memotong huruf terakhir dari dua kata pertama... sesuatu seperti "coo'' roo'' ma!" Sedihnya, hanya ada satu ruangan di mobil ini yang disebut ibumu sebagai rumah.', 'Mobil')
    RETURNING id INTO v_2709_mobil;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '車内', 'di-dalam-mobil', 4, 146, '<kanji>mobil</kanji> <kanji>di dalam</kanji> adalah <vocabulary>di dalam mobil</vocabulary>. Kata ini juga bisa digunakan untuk alat transportasi lain, jadi bisa juga berarti <vocabulary>di dalam kereta</vocabulary> atau <vocabulary>di dalam bus</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Di dalam Mobil, Di dalam Kereta, Di dalam Bus')
    RETURNING id INTO v_2710_di_dalam_mobil;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '二世', 'generasi-kedua', 4, 147, '<kanji>dua</kanji> <kanji>generasi</kanji> adalah <vocabulary>generasi kedua</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Generasi Kedua')
    RETURNING id INTO v_2712_generasi_kedua;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '三世', 'generasi-ketiga', 4, 148, '<kanji>tiga</kanji> <kanji>generasi</kanji> adalah <vocabulary>generasi ketiga</vocabulary>. Tergantung pada konteksnya, terkadang Anda dapat menggunakan kata ini untuk mengatakan bahwa Anda adalah generasi ketiga Jepang. Namun biasanya, Anda ingin menentukan apakah Anda generasi ketiga Jepang atau berkewarganegaraan lain.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Generasi Ketiga')
    RETURNING id INTO v_2713_generasi_ketiga;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '主に', 'terutama', 4, 149, '主 artinya <kanji>main</kanji> sehingga ketika ditambahkan に menjadi kata keterangan <vocabulary>mainly</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Anda <vocabulary>terutama</vocabulary> menghabiskan waktu Anda berbicara dengan master Anda, Moe. Namun Anda biasanya memanggilnya seperti, "<reading>Oh Moe</reading> Yang Hebat!" (おも). Itu karena dia lebih tinggi darimu. Bayangkan diri Anda berkata "OH MOE YANG HEBAT!" saat Anda masuk ke kamarnya, membungkuk rendah.', 'Terutama, Terutama')
    RETURNING id INTO v_2714_terutama;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '主人', 'kepala-rumah-tangga', 4, 150, '<kanji>master</kanji> <kanji>orang</kanji> bukan hanya seorang master. Anda harus mengingat kembali saat mereka membuat kanji ini. Siapa masternya? Itu adalah <vocabulary>kepala rumah tangga</vocabulary>. Kepala rumah tangga ini mungkin menyuruh pelayannya apa yang harus dilakukan dan dia suka memerintah dan sebagainya. Dia adalah orang yang ahli. 

Selain itu, kata ini juga sering berarti <vocabulary>suami</vocabulary>. Sebab, menurut saya, kepala rumah tangga pada masa itu adalah suami. Orang-orang kuno yang seksis itu!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Karena 人 memiliki dua bacaan on''yomi, berikut adalah mnemonik untuk membantu Anda mengingat mana yang harus digunakan:

Di Jepang, tradisi mengatakan kepala rumah tangga harus mengenakan <reading>chu</reading>te hanya dengan <reading>jean</reading> (しゅじん). Kapan pun Anda perlu berbicara dengan kepala rumah tangga, mereka akan turun dari saluran hanya dengan mengenakan celana jins. Pemandangan yang luar biasa!', 'Kepala Rumah Tangga, Suami, Menguasai')
    RETURNING id INTO v_2715_kepala_rumah_tangga;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '仕方', 'metode', 4, 151, 'Jika Anda <kanji>melakukan</kanji> sesuatu dengan <kanji>cara</kanji> tertentu, itu karena Anda mengetahui <vocabulary>metode</vocabulary>. Mungkin Anda bisa membagikan <vocabulary>cara melakukan</vocabulary> ini kepada kita semua, sehingga kita bisa mempelajari <vocabulary>bagaimana melakukan</vocabulary> juga?', 'Kata ini menggunakan bacaan on''yomi untuk 仕 (tidak mengherankan), tetapi bacaan kun''yomi untuk 方. Anda tidak mempelajari kun''yomi 方 dengan kanji, jadi inilah mnemonik untuk membantu Anda mengingatnya:

<vocabulary>metode</vocabulary> Anda dalam <reading>cata</reading>mendorong (かた) apa pun yang tidak Anda sukai ke udara jelas merupakan <vocabulary>cara terbaik dalam melakukan</vocabulary> sesuatu.', 'Metode, Cara Melakukannya, Bagaimana Melakukannya')
    RETURNING id INTO v_2716_metode;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '他', 'lainnya', 4, 152, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Karena kata ini terdiri dari satu kanji, maka sebaiknya menggunakan bacaan kun''yomi. Saat mempelajari kanji, Anda tidak mempelajari bacaan tersebut, jadi inilah mnemonik untuk membantu Anda dengan kata ini: 

Anda perlu berkendara ke taman umum, namun Anda tidak akan mendapatkan mobil biasa, Anda akan mendapatkan mobil <kanji>yang lain</kanji>. <reading>mobil cangkul</reading> Anda (ほか)! Itu adalah mobil yang seluruhnya terbuat dari cangkul taman. Anda dapat mengendarainya dan mencangkulnya secara bersamaan! Mobil Anda yang lain tidak bisa melakukan itu.', 'Lainnya')
    RETURNING id INTO v_2718_lainnya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '他人', 'orang-lain', 4, 153, 'Ketika Anda memiliki <kanji>orang</kanji> lainnya</kanji>, Anda benar-benar memiliki <vocabulary>orang lain</vocabulary>.

他人 mempunyai kesan asing atau jarak, dan menunjukkan bahwa orang tersebut tidak terkenal, atau berbeda dari Anda atau sekelompok orang tertentu. Biasanya ini tidak berarti "orang lain" dalam artian orang tambahan, atau orang lain yang berbeda dari orang yang Anda bicarakan.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Karena 人 memiliki dua bacaan on''yomi, berikut adalah mnemonik untuk membantu Anda mengingat mana yang harus digunakan:

<vocabulary>Orang lain</vocabulary> baru saja mencuri <reading>ta</reading>co dan <reading>Nin</reading>tendo (たにん) Anda. <kosakata>orang asing</vocabulary> yang lengkap ini baru saja berjalan dan mengambil taco dan konsol Nintendo Anda langsung dari tangan Anda. Yoink.', 'Orang Lain, Orang Lain, Lebih aneh')
    RETURNING id INTO v_2719_orang_lain;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '写す', 'untuk-menyalin', 4, 154, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri artinya <kanji>menyalin</kanji> jadi kalian pasti tahu kalau ini artinya <vocabulary>menyalin</vocabulary>. Anda tahu kata ini berarti "menyalin" karena diakhiri dengan す. Anda menyalin dokumen yang Anda perlukan untuk <reading>menuntut</reading> (す) seseorang yang telah menipu Anda.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Anda harus mengingat bagian うつ. Untuk mengingatnya, anggaplah diri Anda sebagai seorang beatboxer. Anda mengucapkan <reading>うつ</reading>うつうつ berulang kali. Masalahnya, beatboxer lain akan <vocabulary>menyalin</vocabulary> semua yang Anda lakukan. Itu sebabnya Anda menuntutnya.', 'Untuk Menyalin, Untuk Memotret, Untuk Mengambil Gambar')
    RETURNING id INTO v_2723_untuk_menyalin;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '号', 'nomor', 4, 155, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.

Kata ini umumnya ditambahkan di akhir angka, seperti pada 三号 ("angka 3"). Bisa juga digabungkan dengan kata lain untuk memberikan hal seperti nomor gerbong kereta, seperti pada ２号車 ("gerbong 2"), dan nomor kamar. Bila digunakan sendiri, ini menunjukkan nomor edisi majalah dan sejenisnya.', 'Kata ini terdiri dari satu kanji saja, tetapi menggunakan bacaan on''yomi. Ini mungkin karena Anda biasanya melihat kata ini melekat pada hal lain, seperti angka. Ini menunjukkan edisi atau nomor suatu item. Jadi walaupun sendirian biasanya digunakan seperti jukugo, oleh karena itu bacaan yang satu ini sama dengan bacaan yang dipelajari saat mempelajari kanji.', 'Nomor, Edisi, Model')
    RETURNING id INTO v_2725_nomor;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '中央', 'tengah', 4, 156, '<kanji>tengah</kanji> dari <kanji>pusat</kanji>... yang benar-benar berada di <vocabulary>center</vocabulary> jika Anda bertanya kepada saya (dan juga sangat <vocabulary>central</vocabulary>). Ini adalah salah satu kata yang "berlebihan dalam arti".', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Tengah, Pusat, Tengah')
    RETURNING id INTO v_2726_tengah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '平ら', 'datar', 4, 157, 'Kanji dan kata-katanya sama persis dengan sedikit hiragana yang menonjol. Karena hiragana tidak benar-benar menunjukkan apa yang dimaksud, boleh saja diasumsikan bahwa hiragana juga mempunyai arti yang sama.', 'Karena kata ini terdiri dari kanji ditambah beberapa hiragana, maka sebaiknya menggunakan bacaan kun''yomi. Saat mempelajari kanji, Anda tidak mempelajari bacaan tersebut, jadi inilah mnemonik untuk membantu Anda dengan kata ini: 

Ada yang sangat, sangat <vocabulary>datar</vocabulary>. Mungkin seseorang yang tidak makan banyak, seperti model? Model yang mana? Mari kita bayangkan itu adalah <read>Tyra</reading> (たいら) Banks.', 'Datar')
    RETURNING id INTO v_2727_datar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '平日', 'hari-kerja', 4, 158, 'Hari-hari <kanji>flat</kanji> <kanji>membosankan. Mereka sama. Hari demi hari. Itu jelas bukan akhir pekan Anda yang menyenangkan... itu <vocabulary>hari kerja</vocabulary> Anda yang membosankan dan datar.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Karena 日 mempunyai dua pembacaan on''yomi, berikut adalah mnemonik untuk membantu Anda mengingat mana yang harus digunakan:

<vocabulary>Hari kerja</vocabulary> datar, tapi Anda setidaknya mendapatkan dua bal <reading>jerami</reading>. <read>Wah, dua</reading> (へいじつ) di antaranya! Betapa pekerja kerasnya Anda.', 'hari kerja')
    RETURNING id INTO v_2728_hari_kerja;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '打つ', 'untuk-memukul-sesuatu', 4, 159, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>memukul</kanji> sehingga kosakatanya adalah <vocabulary>memukul sesuatu</vocabulary> atau <vocabulary>menabrak sesuatu</vocabulary>. Bisa juga berarti <vocabulary>mengetik</vocabulary>.

Anda dapat menggunakan kata ini untuk mendeskripsikan bagian tubuh Anda yang terbentur sesuatu, memukul bola atau paku, atau mengetik di keyboard. Kata ini juga bisa digunakan untuk mendeskripsikan memukul seseorang, tetapi penggunaannya kurang umum dan terdengar agak sastra.', 'Kata ini menggunakan bacaan kun''yomi yang belum kamu pelajari, tapi jangan pernah takut! Sebuah mnemonik ada di sini:

Jika kamu berencana <vocabulary>untuk memukul</vocabulary> sebuah <reading>u</reading>ni (う), kamu memerlukan pemukul atau palu khusus. Saya tidak tahu mengapa Anda ingin menabrak bulu babi, tetapi pastikan Anda memiliki peralatan yang tepat jika melakukannya, karena benda tersebut runcing!', 'Untuk Memukul Sesuatu, Untuk Menyerang Sesuatu, Untuk Mengetik')
    RETURNING id INTO v_2729_untuk_memukul_sesuatu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '一打', 'satu-pukulan', 4, 160, '<kanji>Satu</kanji> <kanji>pukulan</kanji> hanyalah… <vocabulary>satu pukulan</vocabulary>!

一打 mengacu pada satu serangan yang berdampak. Ini sering kali merupakan pukulan dalam olahraga bola, namun bisa juga berupa pukulan dalam tinju atau ketukan tombol dalam video game.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Satu Pukulan')
    RETURNING id INTO v_2730_satu_pukulan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '氷', 'es', 4, 161, 'Kanji <kanji>ice</kanji> dan kosakata <vocabulary>ice</vocabulary> sama persis.', 'Karena kata ini terdiri dari satu kanji, maka harus menggunakan bacaan kun''yomi. Itu kebetulan yang kamu pelajari dengan kanji!', 'Es')
    RETURNING id INTO v_2731_es;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', 'かき氷', 'es-serut', 4, 162, 'Ini adalah かき <kanji>es</kanji>, yaitu <vocabulary>es serut</vocabulary>.', 'Pembacaan 氷 sama dengan yang kamu pelajari (こおり) hanya saja diubah menjadi ごおり karena muncul setelah かき, jadi itu rendaku.', 'Es Serut')
    RETURNING id INTO v_2732_es_serut;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '申す', 'mengatakan-dengan-rendah-hati', 4, 163, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>mengatakan dengan rendah hati</kanji>, dan ini hanyalah bentuk kata kerja, <vocabulary>mengatakan dengan rendah hati</vocabulary>. Anda juga dapat menyebutnya <vocabulary>to say</vocabulary> — ingatlah bahwa ini sederhana!

Ini adalah cara yang sangat sederhana untuk mengatakan "mengatakan", jadi ini digunakan terutama dalam situasi formal, dan hanya untuk berbicara tentang diri Anda atau rekan Anda. Karena formalitasnya, hampir selalu dalam bentuk ます, yaitu 申します.', 'Bacaan kanji ini adalah bacaan kun''yomi, tapi itulah bacaan yang dipelajari dengan kanji. Tos.', 'Mengatakan dengan Rendah Hati, Mengatakan')
    RETURNING id INTO v_2733_mengatakan_dengan_rendah_hati;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '皿', 'piring', 4, 164, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Karena kata ini terdiri dari satu kanji, maka sebaiknya menggunakan bacaan kun''yomi yang juga merupakan bacaan yang Anda pelajari saat mempelajari kanji.', 'Piring, Piring')
    RETURNING id INTO v_2736_piring;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '小皿', 'piring-kecil', 4, 165, 'Anda memiliki <kanji>kecil</kanji> <kanji>piring</kanji>. Tunggu, apakah itu? Ya, itu saja.', 'Kata ini menggunakan bacaan kun''yomi. 皿 menggunakan bacaan さら yang sama dengan yang Anda pelajari dengan kanji, hanya saja sekarang menjadi ざら karena rendaku. Namun 小 menggunakan bacaan kun''yomi alternatif (こ) yang mungkin belum pernah Anda lihat, jadi inilah mnemonik untuk mengingatnya:

Siapa yang menggunakan <vocabulary>piring kecil</vocabulary>? <reading>子</reading> (こ) lakukan. Wajar jika anak-anak menggunakan piring kecil saat makan, karena mereka sendiri kecil, makanan yang mereka makan juga kecil, dan muat di piring kecil. Jika membantu, Anda juga dapat menganggap 小皿 sebagai piring versi anak-anak: 子ざら, jika Anda mau.', 'Piring Kecil, Piring Kecil, Piring Kecil, Hidangan Kecil')
    RETURNING id INTO v_2737_piring_kecil;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', 'お礼', 'terima-kasih', 4, 166, 'Arti kata ini sama dengan kanji, hanya saja ada tanda お di depannya, yang membuat ucapan Anda lebih meninggikan orang lain. Pada dasarnya, ini lebih sopan dan mengagumkan.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji.', 'Terima kasih, Rasa syukur')
    RETURNING id INTO v_2738_terima_kasih;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '不正', 'pelanggaran', 4, 167, 'Jika apa yang Anda lakukan <kanji>tidak</kanji> <kanji>benar</kanji> secara moral atau hukum, Anda terlibat dalam <vocabulary>pelanggaran</vocabulary>.

不正 adalah kata formal yang digunakan untuk tindakan tidak jujur. Hal ini bisa berarti tindakan <vocabulary>penipuan</vocabulary> yang terang-terangan — menyalahgunakan dana publik atau mengakses rekening bank seseorang tanpa izin mereka — atau bisa juga merujuk pada <vocabulary>pelanggaran aturan</vocabulary> yang disengaja, seperti menyontek saat ujian atau pertandingan olahraga.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Pelanggaran, Curang, Melanggar Aturan')
    RETURNING id INTO v_2739_pelanggaran;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '明るい', 'terang', 4, 168, 'Ini adalah kanji tunggal ditambah hiragana るい. Kata-kata yang diakhiri dengan い biasanya merupakan kata sifat, tidak terkecuali kata ini. Apa bentuk kata sifat dari <kanji>terang</kanji>? Ini juga <vocabulary>cerah</vocabulary>.', 'Kata ini mempunyai bacaan yang mirip dengan 明かり, namun di sini kanjinya dibaca sebagai あか, bukan hanya あ. Berikut ini mnemonik untuk membantu Anda mengingat hal ini:

Apa yang dimaksud dengan warna <vocabulary>cerah</vocabulary>? <reading>赤</reading> (あか), alias "merah", tentu saja. Bayangkan warna あか yang sangat cerah saat Anda melihat 明るい.', 'Terang, Ceria')
    RETURNING id INTO v_2895_terang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '子牛', 'anak-sapi', 4, 169, 'Anda mempunyai <kanji>anak</kanji> <kanji>sapi</kanji>. Menurutmu anak sapi itu apa? Mungkin <vocabulary>anak sapi</vocabulary> atau <vocabulary>bayi sapi</vocabulary>.', 'Karena kamu harusnya mengetahui bacaan kata 子 dan 牛 dari level sebelumnya, kamu juga harus bisa membaca kata ini meskipun menggunakan bacaan kun''yomi untuk kanjinya.', 'Anak sapi, Bayi Sapi')
    RETURNING id INTO v_3403_anak_sapi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '切手', 'perangko', 4, 170, 'Ini adalah kata yang cukup kuno, dan di masa lalu, segala sesuatunya <kanji>dipotong</kanji> dengan <kanji>tangan</kanji>, termasuk <vocabulary>prangko</vocabulary>. Memotong ribuan prangko setiap hari dengan tangan terdengar sangat melelahkan, jadi mungkin itulah sebabnya kata ini dikaitkan secara khusus dengan prangko.', 'Anda mungkin mengira bacaan ini terdiri dari bacaan on''yomi, tetapi bagian tubuh manusia (tangan) melakukan hal-hal lucu pada kata-kata. Dalam hal ini, pembacaan kun''yomi dari kedua kanji tersebut. Anda harus mengetahui bacaan kun''yomi untuk <kanji>切</kanji> dan <kanji>手</kanji> dari level sebelumnya, artinya Anda harus dapat mengingat bacaan kata ini dengan cukup mudah. Hati-hati dengan っ yang kecil.', 'Perangko, Perangko')
    RETURNING id INTO v_3404_perangko;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '年', 'tahun', 4, 171, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna. Anda juga dapat menggunakan kata ini untuk membicarakan <vocabulary>usia</vocabulary> seseorang.', 'Karena kata ini terdiri dari satu kanji, maka sebaiknya menggunakan bacaan kun''yomi. Saat mempelajari kanji, Anda tidak mempelajari bacaan tersebut, jadi inilah mnemonik untuk membantu Anda dengan kata ini: 

<vocabulary>tahun</vocabulary> ini Anda berencana untuk <reading>membuang</reading>ng (とし) semua barang lama Anda sebagai resolusi Tahun Baru. Anda mengucapkannya "toshing", karena kekuatannya lebih besar.', 'Tahun, Usia')
    RETURNING id INTO v_3413_tahun;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '名', 'nama', 4, 172, 'Kosakata ini sama dengan arti ''nama'' dalam kanji. Jika Anda bisa mengingatnya, Anda tidak akan kesulitan mengingat kata ini juga.', 'Karena kata ini terdiri dari satu kanji, kemungkinan besar menggunakan bacaan kun''yomi. Anda tidak mempelajari bacaan ini, jadi inilah mnemonik untuk membantu Anda mengingat: Coba pikirkan bagian pertama dari kata bahasa Inggris <vocabulary>name</vocabulary>. Apa itu? Itu <reading>na</reading> (な), seperti kata ini!', 'Nama, Reputasi')
    RETURNING id INTO v_3501_nama;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '穴', 'lubang', 4, 173, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Pembacaan yang Anda pelajari dengan kanji sama dengan pembacaan kata ini. Tidak ada <vocabulary>celah</vocabulary> dalam pengetahuan Anda!', 'Lubang')
    RETURNING id INTO v_4313_lubang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '宝', 'harta-karun', 4, 174, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', '<vocabulary>harta</vocabulary> Anda memiliki <reading>tackler</reading> (たから) yang menjaganya setiap saat. Dia menangani siapa pun yang mendekat. Jika seseorang menginginkan harta Anda, mereka harus melalui tekel!', 'Harta karun')
    RETURNING id INTO v_5631_harta_karun;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '宝石', 'permata', 4, 175, '<kanji>harta</kanji> <kanji>batu</kanji> adalah batu yang sangat berharga. Jenis batu apa yang dianggap harta karun? Bagaimana dengan <vocabulary>permata</vocabulary>, atau <vocabulary>permata</vocabulary>?', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Permata, Permata')
    RETURNING id INTO v_5632_permata;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '赤い', 'merah', 4, 176, 'Ini adalah kanji tunggal dengan い di akhir, artinya Anda tahu itu mungkin kata sifat. Apa bentuk kata sifat dari <kanji>merah</kanji>? Wah, warnanya <vocabulary>merah</vocabulary>!', 'Bacaannya sama dengan kanji yang Anda pelajari, artinya Anda tahu bacaannya!', 'Merah')
    RETURNING id INTO v_7520_merah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '白い', 'putih', 4, 177, 'Ini adalah kanji tunggal dengan い di akhir, artinya Anda tahu itu mungkin kata sifat. Apa bentuk kata sifat dari <kanji>putih</kanji>? <vocabulary>Putih</vocabulary>, tentu saja!', 'Bacaannya sama dengan vocab 白 yang anda pelajari, jadi anda sudah mengetahui bacaannya. Pergilah kamu!', 'Putih')
    RETURNING id INTO v_7521_putih;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '百', 'ratus', 4, 178, 'Jika sebuah kata vocab berbentuk kanji tunggal tanpa okurigana (hiragana yang melekat pada kanji), biasanya kata tersebut memiliki arti yang sama dengan kanji asal kata tersebut. Jika Anda mengetahui arti kanjinya, Anda juga akan mengetahui arti vocabnya. Ini <vocabulary>seratus</vocabulary>!', 'Jika suatu kata vocab berbentuk kanji tunggal tanpa okurigana, biasanya menggunakan bacaan kun''yomi. Angka merupakan pengecualian dalam hal ini. Angka menggunakan bacaan on''yomi, yang telah Anda pelajari dengan mempelajari bacaan kanji! Bagus sekali!', 'Ratus, Seratus')
    RETURNING id INTO v_7522_ratus;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '二十日', 'hari-kedua-puluh', 4, 179, '<kanji>Dua</kanji> kali <kanji>sepuluh</kanji> <kanji>hari</kanji> adalah <vocabulary>dua puluh hari</vocabulary>.', 'Kata-kata yang menghitung hari menggunakan bacaan yang luar biasa. Pembacaan untuk 二十 merupakan pengecualian, dan 日 menggunakan pembacaan kun''yomi. Berikut ini mnemonik untuk membantu hal tersebut:

Jika kamu membuat satu topi untuk <vocabulary>dua puluh hari</vocabulary> kamu akan memiliki cukup <reading>topi</reading> (はつ) untuk mengisi <reading>mobil</reading> (か) kamu hingga penuh! Itu banyak hari dan banyak topi.', 'Hari Kedua Puluh, Hari Kedua Puluh, Dua Puluh Hari')
    RETURNING id INTO v_7565_hari_kedua_puluh;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '丸ごと', 'secara-keseluruhan', 4, 180, 'Jika Anda pergi ke (ごと) sebuah <kanji>lingkaran</kanji>, Anda harus mengunjunginya <vocabulary>secara keseluruhan</vocabulary>. Itu berarti Anda harus mengelilingi <vocabulary>keseluruhan</vocabulary> hal tersebut. Kalau tidak, itu bahkan bukan sebuah lingkaran. Itu seperti garis atau coretan atau semacamnya.

Anda sering mendengar kata ini ketika berbicara tentang makanan – seperti saat menggigit apel utuh atau tanpa sengaja menelan buah anggur tanpa dikunyah. Tapi ini bukan hanya untuk makanan: Anda juga bisa menggunakannya untuk membicarakan tentang menghafal seluruh buku dari awal sampai akhir, misalnya.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda mempelajari bacaan ini, jadi Anda harus bisa membaca ini juga!', 'Secara Keseluruhan, Utuh, Sepenuhnya, Sepenuhnya')
    RETURNING id INTO v_7729_secara_keseluruhan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '出かける', 'untuk-keluar', 4, 181, 'Anda <kanji>keluar</kanji> tetapi Anda melakukannya dengan かける ditambahkan ke dalamnya. Bayangkan saja hal itu saat Anda keluar sambil bersikap "sombong" tentang hal itu. Anda melakukan ini ketika Anda ingin <vocabulary>keluar</vocabulary> atau <vocabulary>pergi</vocabulary>. Anda keluar dengan cara yang sombong!

Kata ini hanya bisa digunakan untuk orang yang sedang pergi keluar. Anda tidak bisa mengatakan kereta 出かける akan.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Kamu mempelajari bacaan ini ketika kamu mempelajari 出る, jadi jika kamu dapat mengingatnya, kamu juga harus dapat mengingat yang ini!', 'Untuk Keluar, Untuk Pergi, Untuk Keluar')
    RETURNING id INTO v_8660_untuk_keluar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '大気', 'suasana', 4, 182, 'Jika ada <kanji>besar</kanji> <kanji>energi</kanji> itu akan memenuhi <vocabulary>atmosphere</vocabulary>! Pikirkan tentang energi besar yang Anda rasakan di atmosfer: badai petir, tornado, aurora borealis. Ingat saja, ini suasana di langit, bukan suasana di restoran mewah.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Karena 大 mempunyai dua pembacaan on''yomi, berikut adalah mnemonik untuk membantu Anda mengingat mana yang harus digunakan:

Bayangkan sebuah <vocabulary>atmosphere</vocabulary> yang seluruhnya terdiri dari <reading>dasi</reading> dan <reading>key</reading> (たいき), melayang-layang. Ikatannya semakin kusut, dan kuncinya terus menghantam kepala Anda. Kembalikan suasana normal, yang ini mengerikan.', 'Suasana')
    RETURNING id INTO v_8694_suasana;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '口にする', 'untuk-disebutkan', 4, 183, 'Anda telah mengetahui bahwa 口 berarti "mulut" dan di sini diikuti oleh partikel に, yang menunjukkan lokasi. Kata kerja する berarti "melakukan" jadi Anda melakukan sesuatu pada mulut Anda! Logikanya, ungkapan ini digunakan untuk menggambarkan banyak tindakan yang Anda lakukan dengan mulut Anda. Kata ini sering digunakan dalam arti <vocabulary>to mention</vocabulary> atau <vocabulary>to say</vocabulary>, namun dengan tambahan nuansa deskriptif bahwa Anda telah mengatakan sesuatu secara tidak sengaja atau tidak terduga, mungkin sesuatu yang seharusnya tidak Anda katakan! 🙊

Bisa juga berarti hal-hal lain yang dilakukan dengan mulut, seperti <vocabulary>makan</vocabulary> dan <vocabulary>minum</vocabulary>!', 'Dalam ungkapan ini, 口 adalah kosakata yang berdiri sendiri, sehingga menggunakan bacaan yang sama yang Anda pelajari saat mempelajari kosakata tersebut.', 'Untuk Disebutkan, Mengatakan, Untuk makan, Untuk Minum')
    RETURNING id INTO v_8961_untuk_disebutkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '北アメリカ', 'amerika-utara', 4, 184, 'Anda sudah menemukan アメリカ di level sebelumnya, jadi Anda harus tahu bahwa itu artinya "Amerika". Letakkan <kanji>north</kanji> di depannya dan Anda akan mendapatkan <vocabulary>North America</vocabulary>, seperti dalam bahasa Inggris!

Perhatikan bahwa 北アメリカ mengacu pada benua Amerika Utara, bukan bagian utara Amerika Serikat. アメリカ sendiri biasanya berarti AS, tetapi jika ada kata "utara" atau "selatan" di depannya seperti ini, selalu mengacu pada benua.', 'Anda mungkin tergoda untuk membaca ini menggunakan pembacaan on''yomi, namun sebenarnya ini menggunakan kun''yomi. Anda telah mempelajarinya dengan kanji, jadi Anda tidak akan kesulitan membaca ini!', 'Amerika Utara')
    RETURNING id INTO v_9147_amerika_utara;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2560_tangan_kanan, 'Tangan kanan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2560_tangan_kanan, 'Lengan Kanan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2560_tangan_kanan, 'Sisi Kanan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2563_hari_keempat, 'Hari Keempat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2563_hari_keempat, 'Hari Keempat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2563_hari_keempat, 'Empat Hari', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2564_empat_hal, 'Empat Hal', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2565_empat_ribu, 'Empat Ribu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2566_empat_puluh, 'Empat puluh', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2568_tangan_kiri, 'Tangan kiri', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2568_tangan_kiri, 'Lengan Kiri', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2568_tangan_kiri, 'Sisi Kiri', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2578_untuk_hidup, 'Untuk Hidup', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2578_untuk_hidup, 'Menjadi Hidup', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2578_untuk_hidup, 'Untuk Ada', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2585_batu, 'Batu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2585_batu, 'Batu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2606_menjadi_gemuk, 'Menjadi Gemuk', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2606_menjadi_gemuk, 'Untuk Menambah Berat Badan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2644_istirahat, 'Istirahat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2644_istirahat, 'Merusak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2644_istirahat, 'Liburan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2644_istirahat, 'Hari libur', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2645_untuk_beristirahat, 'Untuk Beristirahat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2645_untuk_beristirahat, 'Untuk Mengambil Waktu Istirahat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2646_berhenti_sebentar, 'Berhenti sebentar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2646_berhenti_sebentar, 'Penangguhan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2646_berhenti_sebentar, 'Hiatus', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2647_hari_libur, 'Hari libur', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2647_hari_libur, 'Hari libur', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2648_pertama, 'Pertama', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2648_pertama, 'Untuk Memulainya', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2648_pertama, 'Pertama', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2648_pertama, 'Untuk Memulainya', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2649_tip, 'Tip', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2649_tip, 'Di depan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2649_tip, 'Pertama', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2649_tip, 'Masa depan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2650_bulan_sebelum_terakhir, 'Bulan Sebelum Terakhir', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2650_bulan_sebelum_terakhir, 'Bulan Sebelumnya Terakhir', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2651_bulan_lalu, 'Bulan Lalu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2652_suatu_hari_nanti, 'Suatu hari nanti', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2652_suatu_hari_nanti, 'Beberapa Hari Yang Lalu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2652_suatu_hari_nanti, 'Hari lain', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2653_guru, 'Guru', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2653_guru, 'Sensei', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2655_pakar, 'Pakar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2655_pakar, 'Menguasai', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2656_nama_belakang, 'Nama belakang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2656_nama_belakang, 'Nama Belakang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2656_nama_belakang, 'Nama keluarga', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2659_surat_dari_alfabet, 'Surat (Dari Alfabet)', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2659_surat_dari_alfabet, 'Karakter', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2659_surat_dari_alfabet, 'Surat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2659_surat_dari_alfabet, 'Teks', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2660_garis_lurus, 'Garis lurus', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2662_tahun_2011, 'Tahun 2011', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2662_tahun_2011, '2011', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2662_tahun_2011, 'Tahun 2011', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2663_pada_akhir_tahun, 'Pada Akhir Tahun', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2663_pada_akhir_tahun, 'Dalam Tahun Ini', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2663_pada_akhir_tahun, 'Sisa Tahun Ini', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2664_sepanjang_tahun, 'Sepanjang Tahun', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2664_sepanjang_tahun, 'Sepanjang Tahun', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2664_sepanjang_tahun, 'Sepanjang Tahun', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2664_sepanjang_tahun, 'Sepanjang Tahun', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2665_siswa_tahun_pertama, 'Siswa Tahun Pertama', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2666_anak_laki_laki, 'Anak laki-laki', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2666_anak_laki_laki, 'Anak Muda', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2666_anak_laki_laki, 'Anak muda', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2667_tahun_lalu, 'Tahun Lalu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2668_lebih_awal, 'Lebih awal', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2668_lebih_awal, 'Cepat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2668_lebih_awal, 'Cepat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2669_segera_setelah, 'Segera setelah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2669_segera_setelah, 'Dengan cepat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2669_segera_setelah, 'Lebih awal', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2669_segera_setelah, 'Segera Setelahnya', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2670_energi, 'Energi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2670_energi, 'Roh', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2671_untuk_menyukai, 'Untuk Menyukai', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2671_untuk_menyukai, 'Menjadi Senang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2671_untuk_menyukai, 'Menjadi Bahagia', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2672_dalam_sekali_jalan, 'Dalam Sekali Jalan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2672_dalam_sekali_jalan, 'Sekaligus', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2672_dalam_sekali_jalan, 'Dalam Satu Nafas', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2673_suasana_hati, 'Suasana hati', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2673_suasana_hati, 'Merasa', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2674_populer, 'Populer', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2674_populer, 'Kepopuleran', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2675_energi, 'Energi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2675_energi, 'Kesehatan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2675_energi, 'Energik', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2675_energi, 'Sehat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2676_cuaca, 'Cuaca', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2677_serius, 'Serius', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2677_serius, 'Keseriusan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2678_tenang, 'Tenang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2678_tenang, 'Dingin', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2678_tenang, 'Baiklah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2678_tenang, 'Oke', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2679_pikiran_satu_jalur, 'Pikiran Satu Jalur', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2679_pikiran_satu_jalur, 'Pikiran Tunggal', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2680_juta, 'Juta', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2680_juta, 'Satu Juta', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2681_empat_ratus, 'Empat Ratus', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2682_lima_ratus, 'Lima ratus', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2683_dua_ratus, 'Dua Ratus', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2684_rebung_bambu, 'Rebung Bambu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2684_rebung_bambu, 'Tunas Bambu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2685_bambu, 'Bambu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2686_benang, 'Benang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2687_telinga, 'Telinga', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2687_telinga, 'Telinga', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2689_serangga, 'Serangga', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2689_serangga, 'Serangga', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2689_serangga, 'Perayapan yang menyeramkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2690_desa, 'Desa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2690_desa, 'Kota Pedesaan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2691_orang_desa, 'Orang desa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2692_pria, 'Pria', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2693_kota, 'Kota', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2694_bunga, 'Bunga', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2695_kembang_api, 'Kembang api', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2696_melihat_bunga_sakura, 'Melihat Bunga Sakura', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2696_melihat_bunga_sakura, 'Melihat Sakura', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2696_melihat_bunga_sakura, 'Melihat Bunga Sakura', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2697_untuk_melihat, 'Untuk Melihat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2697_untuk_melihat, 'Untuk Melihat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2697_untuk_melihat, 'Untuk Menonton', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2699_untuk_ditunjukkan, 'Untuk Ditunjukkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2701_cara_melihat, 'Cara Melihat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2701_cara_melihat, 'Sudut Pandang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2701_cara_melihat, 'Perspektif', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2701_cara_melihat, 'Cara Melihat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2702_melihat_bulan, 'Melihat Bulan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2703_kerang, 'Kerang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2703_kerang, 'Kerang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2703_kerang, 'Kerang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2704_merah, 'Merah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2705_bayi, 'Bayi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2706_menjadi_cukup, 'Menjadi Cukup', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2706_menjadi_cukup, 'Menjadi Cukup', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2706_menjadi_cukup, 'Cukup', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2707_kaki, 'Kaki', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2707_kaki, 'Kaki', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2708_kekurangan, 'Kekurangan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2708_kekurangan, 'Ketidakcukupan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2709_mobil, 'Mobil', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2710_di_dalam_mobil, 'Di dalam Mobil', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2710_di_dalam_mobil, 'Di dalam Kereta', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2710_di_dalam_mobil, 'Di dalam Bus', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2712_generasi_kedua, 'Generasi Kedua', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2713_generasi_ketiga, 'Generasi Ketiga', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2714_terutama, 'Terutama', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2714_terutama, 'Terutama', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2715_kepala_rumah_tangga, 'Kepala Rumah Tangga', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2715_kepala_rumah_tangga, 'Suami', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2715_kepala_rumah_tangga, 'Menguasai', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2716_metode, 'Metode', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2716_metode, 'Cara Melakukannya', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2716_metode, 'Bagaimana Melakukannya', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2718_lainnya, 'Lainnya', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2719_orang_lain, 'Orang Lain', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2719_orang_lain, 'Orang Lain', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2719_orang_lain, 'Lebih aneh', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2723_untuk_menyalin, 'Untuk Menyalin', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2723_untuk_menyalin, 'Untuk Memotret', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2723_untuk_menyalin, 'Untuk Mengambil Gambar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2725_nomor, 'Nomor', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2725_nomor, 'Edisi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2725_nomor, 'Model', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2726_tengah, 'Tengah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2726_tengah, 'Pusat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2726_tengah, 'Tengah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2727_datar, 'Datar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2728_hari_kerja, 'hari kerja', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2729_untuk_memukul_sesuatu, 'Untuk Memukul Sesuatu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2729_untuk_memukul_sesuatu, 'Untuk Menyerang Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2729_untuk_memukul_sesuatu, 'Untuk Mengetik', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2730_satu_pukulan, 'Satu Pukulan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2731_es, 'Es', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2732_es_serut, 'Es Serut', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2733_mengatakan_dengan_rendah_hati, 'Mengatakan dengan Rendah Hati', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2733_mengatakan_dengan_rendah_hati, 'Mengatakan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2736_piring, 'Piring', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2736_piring, 'Piring', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2737_piring_kecil, 'Piring Kecil', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2737_piring_kecil, 'Piring Kecil', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2737_piring_kecil, 'Piring Kecil', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2737_piring_kecil, 'Hidangan Kecil', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2738_terima_kasih, 'Terima kasih', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2738_terima_kasih, 'Rasa syukur', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2739_pelanggaran, 'Pelanggaran', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2739_pelanggaran, 'Curang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2739_pelanggaran, 'Melanggar Aturan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2895_terang, 'Terang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2895_terang, 'Ceria', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3403_anak_sapi, 'Anak sapi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3403_anak_sapi, 'Bayi Sapi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3404_perangko, 'Perangko', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3404_perangko, 'Perangko', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3413_tahun, 'Tahun', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3413_tahun, 'Usia', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3501_nama, 'Nama', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3501_nama, 'Reputasi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4313_lubang, 'Lubang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5631_harta_karun, 'Harta karun', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5632_permata, 'Permata', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5632_permata, 'Permata', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7520_merah, 'Merah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7521_putih, 'Putih', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7522_ratus, 'Ratus', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7522_ratus, 'Seratus', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7565_hari_kedua_puluh, 'Hari Kedua Puluh', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7565_hari_kedua_puluh, 'Hari Kedua Puluh', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7565_hari_kedua_puluh, 'Dua Puluh Hari', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7729_secara_keseluruhan, 'Secara Keseluruhan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7729_secara_keseluruhan, 'Utuh', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7729_secara_keseluruhan, 'Sepenuhnya', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7729_secara_keseluruhan, 'Sepenuhnya', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8660_untuk_keluar, 'Untuk Keluar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8660_untuk_keluar, 'Untuk Pergi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8660_untuk_keluar, 'Untuk Keluar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8694_suasana, 'Suasana', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8961_untuk_disebutkan, 'Untuk Disebutkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8961_untuk_disebutkan, 'Mengatakan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8961_untuk_disebutkan, 'Untuk makan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8961_untuk_disebutkan, 'Untuk Minum', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9147_amerika_utara, 'Amerika Utara', true, true);

  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2560_tangan_kanan, 'みぎて', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2563_hari_keempat, 'よっか', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2564_empat_hal, 'よっつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2565_empat_ribu, 'よんせん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2566_empat_puluh, 'よんじゅう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2568_tangan_kiri, 'ひだりて', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2578_untuk_hidup, 'いきる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2585_batu, 'いし', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2606_menjadi_gemuk, 'ふとる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2644_istirahat, 'やすみ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2645_untuk_beristirahat, 'やすむ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2646_berhenti_sebentar, 'きゅうし', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2647_hari_libur, 'きゅうじつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2648_pertama, 'まず', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2649_tip, 'さき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2650_bulan_sebelum_terakhir, 'せんせんげつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2651_bulan_lalu, 'せんげつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2652_suatu_hari_nanti, 'せんじつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2653_guru, 'せんせい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2655_pakar, 'めいじん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2656_nama_belakang, 'みょうじ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2659_surat_dari_alfabet, 'もじ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2660_garis_lurus, 'いちもんじ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2662_tahun_2011, 'にせんじゅういちねん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2663_pada_akhir_tahun, 'ねんない', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2664_sepanjang_tahun, 'ねんじゅう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2665_siswa_tahun_pertama, 'いちねんせい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2666_anak_laki_laki, 'しょうねん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2667_tahun_lalu, 'きょねん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2668_lebih_awal, 'はやい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2669_segera_setelah, 'そうそう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2669_segera_setelah, 'はやばや', NULL, false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2670_energi, 'き', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2671_untuk_menyukai, 'きにいる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2672_dalam_sekali_jalan, 'いっきに', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2673_suasana_hati, 'きぶん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2674_populer, 'にんき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2675_energi, 'げんき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2676_cuaca, 'てんき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2677_serius, 'ほんき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2678_tenang, 'へいき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2679_pikiran_satu_jalur, 'いっぽんぎ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2680_juta, 'ひゃくまん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2681_empat_ratus, 'よんひゃく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2682_lima_ratus, 'ごひゃく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2683_dua_ratus, 'にひゃく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2684_rebung_bambu, 'たけのこ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2685_bambu, 'たけ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2686_benang, 'いと', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2687_telinga, 'みみ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2689_serangga, 'むし', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2690_desa, 'むら', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2691_orang_desa, 'むらびと', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2692_pria, 'おとこ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2693_kota, 'まち', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2694_bunga, 'はな', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2695_kembang_api, 'はなび', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2696_melihat_bunga_sakura, 'はなみ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2697_untuk_melihat, 'みる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2699_untuk_ditunjukkan, 'みせる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2701_cara_melihat, 'みかた', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2702_melihat_bulan, 'つきみ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2703_kerang, 'かい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2704_merah, 'あか', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2705_bayi, 'あかちゃん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2706_menjadi_cukup, 'たりる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2707_kaki, 'あし', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2708_kekurangan, 'ふそく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2709_mobil, 'くるま', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2710_di_dalam_mobil, 'しゃない', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2712_generasi_kedua, 'にせい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2713_generasi_ketiga, 'さんせい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2714_terutama, 'おもに', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2715_kepala_rumah_tangga, 'しゅじん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2716_metode, 'しかた', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2718_lainnya, 'ほか', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2719_orang_lain, 'たにん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2723_untuk_menyalin, 'うつす', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2725_nomor, 'ごう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2726_tengah, 'ちゅうおう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2727_datar, 'たいら', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2728_hari_kerja, 'へいじつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2729_untuk_memukul_sesuatu, 'うつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2730_satu_pukulan, 'いちだ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2731_es, 'こおり', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2732_es_serut, 'かきごおり', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2733_mengatakan_dengan_rendah_hati, 'もうす', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2736_piring, 'さら', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2737_piring_kecil, 'こざら', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2738_terima_kasih, 'おれい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2739_pelanggaran, 'ふせい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2895_terang, 'あかるい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3403_anak_sapi, 'こうし', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3404_perangko, 'きって', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3413_tahun, 'とし', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3501_nama, 'な', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4313_lubang, 'あな', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5631_harta_karun, 'たから', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5632_permata, 'ほうせき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7520_merah, 'あかい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7521_putih, 'しろい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7522_ratus, 'ひゃく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7565_hari_kedua_puluh, 'はつか', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7729_secara_keseluruhan, 'まるごと', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8660_untuk_keluar, 'でかける', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8694_suasana, 'たいき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8961_untuk_disebutkan, 'くちにする', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9147_amerika_utara, 'きたあめりか', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9147_amerika_utara, 'きたアメリカ', NULL, false, true);

  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2560_tangan_kanan, '右手に力が入らないんです。', 'Tangan kananku terasa lemah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2560_tangan_kanan, '右手だけで入力するのは、むずかしいです。', 'Sulit untuk mengetik hanya dengan tangan kanan Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2560_tangan_kanan, '右手の大きさと左手の大きさをくらべて下さい。', 'Silakan bandingkan ukuran tangan kanan dan tangan kiri Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2560_tangan_kanan, '右手の山はふじ山です。', 'Gunung di sisi kanan adalah Gunung Fuji.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2563_hari_keempat, '四日のデートは中止になった。', 'Tanggal 4 dibatalkan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2563_hari_keempat, '七月四日はアメリカにとって大切な日です。', 'Tanggal 4 Juli adalah hari penting bagi Amerika Serikat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2563_hari_keempat, '四日で元のポジションにもどった。', 'Ia kembali ke posisi semula dalam empat hari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2564_empat_hal, 'ミルクシェイク、四つ下さい。', 'Tolong, empat milkshake.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2564_empat_hal, '水に氷が四つ入っていた。', 'Ada empat es batu di dalam air.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2564_empat_hal, 'このアパート、クローゼットのかわりにオーブンが四つもある。', 'Apartemen ini memiliki empat oven sebagai pengganti lemari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2565_empat_ribu, 'フォロワーが四千人になりました。', 'Saya mencapai empat ribu pengikut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2565_empat_ribu, 'この山は、およそ四千メートルです。', 'Gunung ini tingginya sekitar 4000 meter.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2565_empat_ribu, '四千円で他人の心は、かえないよ。', 'Kamu tidak bisa membeli hati seseorang seharga 4.000 yen lho.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2566_empat_puluh, '四十才になった日、ニューヨークにいました。', 'Saya berada di New York pada hari saya berusia empat puluh.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2566_empat_puluh, 'このテーブルクロス、四十センチに切って下さい。', 'Tolong potong taplak meja ini menjadi 40 cm.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2566_empat_puluh, '人生で四十台ものスマホをかってきた。', 'Saya memiliki empat puluh ponsel pintar dalam hidup saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2568_tangan_kiri, '左手でスプーンをもった。', 'Saya memegang sendok dengan tangan kiri saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2568_tangan_kiri, '左手を上げて下さい。', 'Silakan angkat tangan kiri Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2568_tangan_kiri, '左手の方が右手よりも力が少しあるみたい。', 'Tangan kiriku sedikit lebih kuat dari tangan kananku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2568_tangan_kiri, '左手にみえるのが、スカイツリーです。', 'Apa yang bisa Anda lihat di sisi kiri Anda adalah Pohon Langit.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2578_untuk_hidup, 'このジェネレーションを生きる人々にメッセージはありますか？', 'Apakah Anda punya pesan untuk orang-orang yang hidup di generasi ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2578_untuk_hidup, 'わたしのおじいちゃんは百才まで生きました。', 'Kakek saya hidup sampai usia seratus tahun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2578_untuk_hidup, 'あした休みじゃないなんて、生きる元気がなくなりそうだよ。', 'Aku tidak percaya aku tidak libur besok; Saya mungkin kehilangan keinginan untuk hidup.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2585_batu, 'これは月の石です。', 'Ini adalah batu bulan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2585_batu, '川の石をコレクションしています。', 'Saya mengumpulkan batu sungai.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2585_batu, '石が川に入ったら、宝石になったんだ！', 'Batu itu masuk ke sungai, dan menjadi permata!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2606_menjadi_gemuk, 'ジュースばっかりのむと太るよ。', 'Anda akan menjadi gemuk jika Anda hanya minum jus.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2606_menjadi_gemuk, 'たべても太らない人がうらやましい。', 'Aku iri pada orang yang tidak gemuk meski makannya banyak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2606_menjadi_gemuk, 'さいきん犬が太ってきたので、いっしょにダイエットをしてます。', 'Saat berat badan anjing saya bertambah akhir-akhir ini, kami melakukan diet bersama.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2644_istirahat, '今日はクラスが休みです。', 'Tidak ada kelas hari ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2644_istirahat, '休みの日は犬とドライブにいきます。', 'Saya pergi jalan-jalan dengan anjing saya pada hari libur.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2644_istirahat, 'ご主人のお休みはいつですか？', 'Kapan hari libur suamimu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2645_untuk_beristirahat, '今日のクラス、休む？', 'Haruskah kita melewatkan kelas hari ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2645_untuk_beristirahat, 'ベッドで四日半で休みました。', 'Saya beristirahat di tempat tidur selama empat setengah hari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2645_untuk_beristirahat, '一日で休むことができるのは、トイレにいるときだけだ。', 'Satu-satunya waktu saya dapat beristirahat di siang hari adalah ketika saya di kamar mandi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2646_berhenti_sebentar, 'しばらく、このクラスは休止です。', 'Kelas-kelas ini untuk sementara dihentikan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2646_berhenti_sebentar, '人気のロックバンドの休止のニュースが目に入った。', 'Berita tentang hiatusnya band rock populer itu menarik perhatian saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2646_berhenti_sebentar, 'わたしのファーストキスは休止中のエレベーターの中だったんです。', 'Ciuman pertamaku terjadi di dalam lift yang macet.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2647_hari_libur, '休日はワインをのみます。', 'Saya minum anggur pada hari libur.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2647_hari_libur, '今日は休日なので、ピクニックにきました。', 'Hari ini adalah hari libur, jadi saya datang untuk piknik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2647_hari_libur, '休日にメールしてこないで下さい。', 'Tolong jangan mengirimi saya email pada hari libur saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2648_pertama, '先ず、トマトを切ります。', 'Pertama, potong tomat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2648_pertama, '先ずは、生ビール。それから、ごはん。', 'Pertama, bir draft. Lalu, nasi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2648_pertama, '先ずはもっとデートしてからプロポーズしたら？', 'Mengapa Anda tidak berkencan dulu, lalu melamar?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2649_tip, 'ペンの先がつぶれた。', 'Ujung penanya hancur.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2649_tip, 'お先にどうぞ。', 'Silakan pergi dulu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2649_tip, 'この先にレストランがある。', 'Ada sebuah restoran tepat di depan kami.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2649_tip, '先のことはだれにも分かりません。', 'Tidak ada yang tahu apa yang akan terjadi di masa depan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2650_bulan_sebelum_terakhir, '先々月、キューバにいきました。', 'Saya pergi ke Kuba sebulan yang lalu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2650_bulan_sebelum_terakhir, '先々月、フロリダで大きなハリケーンがあったそうだ。', 'Ada badai besar di Florida sebulan yang lalu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2650_bulan_sebelum_terakhir, '先々月のレシートを見て下さい。', 'Silakan lihat kuitansi dari bulan sebelumnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2651_bulan_lalu, '先月は六月でした。', 'Bulan lalu adalah bulan Juni.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2651_bulan_lalu, '先月の分は一万円です。', 'Porsi bulan lalu adalah 10.000 yen.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2651_bulan_lalu, '先月、ニューヨークでおあいしましたよね？', 'Kita bertemu di New York bulan lalu, kan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2652_suatu_hari_nanti, '先日はどうもありがとうございました。', 'Terima kasih banyak untuk hari lain.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2652_suatu_hari_nanti, '先日のパーティー、中止でしたね。', 'Pestanya beberapa hari yang lalu dibatalkan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2652_suatu_hari_nanti, '先日のアイディアは気に入っていただけましたか？', 'Apakah Anda menyukai ide saya kemarin?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2653_guru, '先生は「おはよう」といった。', 'Guru berkata, "selamat pagi."');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2653_guru, 'あの女の人は、田中先生です。', 'Wanita itu adalah Tanaka-sensei.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2653_guru, 'コウイチは、わたしの人生の先生だ。', 'Koichi adalah guru hidupku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2655_pakar, '父はフリスビーの名人です。', 'Ayah saya adalah ahli frisbee.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2655_pakar, 'スキーの名人になるには、どうしたらいいですか？', 'Apa yang harus saya lakukan untuk menjadi pemain ski ahli?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2655_pakar, 'あの女の人はチェスの名人であるだけでなく、ブラックジャックの名人でもある。', 'Wanita itu bukan hanya master catur, tapi juga master blackjack.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2656_nama_belakang, '名字は「田中」です。', 'Nama keluarga saya adalah "Tanaka."');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2656_nama_belakang, '名字は、ここに入力して下さい。', 'Silakan masukkan nama belakang Anda di sini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2656_nama_belakang, '名字じゃなくて、ファーストネームでよんで下さい。', 'Tolong panggil aku dengan nama depanku, bukan nama keluargaku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2659_surat_dari_alfabet, '文字が小さすぎる。', 'Hurufnya terlalu kecil.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2659_surat_dari_alfabet, 'カタカナの「ク」の文字と「ワ」の文字は、そっくりだ。', 'Karakter katakana untuk "ku" dan "wa" terlihat sangat mirip.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2659_surat_dari_alfabet, '木にアルファベットの文字がかいてある。', 'Pohon itu memiliki beberapa huruf alfabet tertulis di atasnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2660_garis_lurus, '女の子は、おこって口を一文字にむすびました。', 'Gadis itu marah dan mulutnya membentuk garis lurus.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2660_garis_lurus, 'サーモンに一文字の切り目が入ってます。', 'Salmon memiliki garis lurus yang melintang di atasnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2660_garis_lurus, 'たくさんのドローンが一文字になってとんでいる。', 'Cukup banyak drone yang terbang dalam garis lurus.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2662_tahun_2011, '２０１１年に、日本にいきました。', 'Saya pergi ke Jepang pada tahun 2011.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2662_tahun_2011, '元パートナーとの子は２０１１年に生まれました。', 'Anak saya dengan mantan pasangan lahir pada tahun 2011.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2662_tahun_2011, '２０１１年は、花見も花火も月見も中止でしたよ。', 'Pada tahun 2011, pemandangan bunga sakura, kembang api, dan pemandangan bulan semuanya dibatalkan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2663_pada_akhir_tahun, '年内に牛の赤ちゃんが生まれます。', 'Seekor anak sapi akan lahir pada akhir tahun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2663_pada_akhir_tahun, '年内にアパートから出てって下さい。', 'Silakan tinggalkan apartemen pada akhir tahun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2663_pada_akhir_tahun, '年内にJLPT N4をとるのがゴールです。', 'Targetnya bisa lolos JLPT N4 pada akhir tahun ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2664_sepanjang_tahun, 'お父さんは年中外にいる。', 'Ayah ada di luar sepanjang tahun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2664_sepanjang_tahun, '年中うるさくて、すみません。', 'Aku minta maaf karena berisik sepanjang tahun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2664_sepanjang_tahun, 'この町は年中あたたかいですよ。', 'Kota ini hangat sepanjang tahun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2665_siswa_tahun_pertama, '一年生の子は手を上げて下さい。', 'Anak-anak kelas satu, tolong angkat tangan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2665_siswa_tahun_pertama, '四月に一年生になります。', 'Saya akan menjadi mahasiswa baru pada bulan April.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2665_siswa_tahun_pertama, 'まだ一年生なのに字が上手だね。', 'Tulisan tangan Anda bagus untuk anak kelas satu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2666_anak_laki_laki, 'これは一人の少年のストーリーです。', 'Ini adalah kisah seorang anak laki-laki.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2666_anak_laki_laki, '少年マンガは、すきですか？', 'Apakah kamu suka manga anak laki-laki?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2666_anak_laki_laki, '小さいころはスポーツ少年でした。', 'Ketika saya masih kecil, saya adalah anak yang sportif.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2667_tahun_lalu, '去年、子犬が生まれた。', 'Tahun lalu, seekor anak anjing lahir.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2667_tahun_lalu, '去年の四月に日本にきました。', 'Saya datang ke Jepang pada bulan April lalu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2667_tahun_lalu, 'うちの犬は、去年から十キロ太った。', 'Anjing kami bertambah sepuluh kilogram sejak tahun lalu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2668_lebih_awal, 'もうチェックインしたの？早い！', 'Anda sudah check in? Itu tadi cepat!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2668_lebih_awal, '一日早いけど、おめでとう！', 'Selamat, meskipun ini masih sehari lebih awal!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2668_lebih_awal, '一日半でプロポーズは、さすがに早いかな？', 'Apakah melamar setelah satu setengah hari terlalu cepat?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2669_segera_setelah, '早々にメールありがとうございます。', 'Terima kasih atas tanggapan email cepat Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2669_segera_setelah, 'ホテルを出て早々アパートをかりた。', 'Saya mulai menyewa apartemen setelah meninggalkan hotel.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2669_segera_setelah, 'うどんパーティは、つまらなくて早々と引き上げちゃった。', 'Pesta udonnya membosankan, jadi saya berangkat lebih awal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2670_energi, 'その少年は気がつよい。', 'Anak laki-laki itu berkemauan keras.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2670_energi, '今日のフライトも、気をつけてね。', 'Berhati-hatilah pada penerbangan hari ini juga.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2670_energi, '気がついたら一人で川にいたんです。', 'Saya menemukan diri saya sendirian di sungai.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2671_untuk_menyukai, '赤のキッチンを気に入る人もいますよ。', 'Beberapa orang menyukai dapur berwarna merah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2671_untuk_menyukai, 'あのレストラン気に入った？', 'Apakah Anda puas dengan restoran itu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2671_untuk_menyukai, 'ぼくのプレゼント、気に入ってもらえるといいな。', 'Saya harap Anda akan senang dengan hadiah saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2672_dalam_sekali_jalan, '父はテーブルの上のチョコレートを一気にたべた。', 'Ayahku memakan coklat yang ada di atas meja sekaligus.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2672_dalam_sekali_jalan, 'たくさんの人がいたので、デザートは一気になくなった。', 'Ada begitu banyak orang, jadi makanan penutupnya langsung habis.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2672_dalam_sekali_jalan, '人気ドラマのシーズンを丸ごと一気にみてしまった。', 'Saya menonton secara berlebihan seluruh musim drama populer dalam sekali duduk.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2673_suasana_hati, '今日の母は気分がいいです。', 'Suasana hati ibu sedang bagus hari ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2673_suasana_hati, 'なんとなくピクニックに出かけたい気分です。', 'Aku hanya ingin pergi piknik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2673_suasana_hati, 'ウィスキーを口にして気分がよくなった。', 'Saya mulai merasa lebih baik setelah minum wiski.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2674_populer, '今、人気の本はこれです。', 'Ini adalah buku yang populer sekarang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2674_populer, 'このビールは、とても人気があります。', 'Bir ini sangat populer.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2674_populer, 'あのドラマのおかげで、イタリアンレストランの人気が上がった。', 'Berkat drama itu, popularitas restoran Italia pun meningkat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2675_energi, 'お父さんは、元気ですか。', 'Bagaimana kabar ayahmu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2675_energi, 'エマちゃんは、元気いっぱいですね。', 'Ema penuh energi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2675_energi, '元気そうなのに、ずっとくしゃみをしてる。', 'Mereka bersin sepanjang waktu, tapi kelihatannya baik-baik saja.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2676_cuaca, '今日は天気がわるいです。', 'Cuacanya buruk hari ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2676_cuaca, '王子の気分は、その日の天気によります。', 'Suasana hati sang pangeran bergantung pada cuaca sehari-hari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2676_cuaca, '休みの日の天気はくもりだ。', 'Cuaca di hari liburku mendung.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2677_serius, 'いつになったら、本気を出すんですか。', 'Seberapa cepat sebelum Anda melakukan upaya serius?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2677_serius, 'あの車、もっと本気で止めればよかった。', 'Seharusnya aku berusaha lebih keras untuk menghentikan mobil itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2677_serius, 'そろそろ本気モードのスイッチ入らないかな。', 'Saya ingin tahu apakah sudah waktunya beralih ke mode serius.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2678_tenang, 'よく平気でいられますね。', 'Kenapa kamu selalu begitu tenang?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2678_tenang, '大きい犬、平気ですか？', 'Apakah Anda baik-baik saja dengan anjing besar?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2678_tenang, 'このホテル、火が出てるけど平気？', 'Ada api yang keluar dari hotel ini, apakah semuanya baik-baik saja?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2679_pikiran_satu_jalur, 'ニックって一本気なところがあるよね。', 'Ada sisi tunggal dari Nick.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2679_pikiran_satu_jalur, 'コウイチは一本気な男だ。', 'Koichi adalah pria dengan pikiran satu arah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2679_pikiran_satu_jalur, 'おじいちゃんは、百才になった今でも、おばあちゃんのことを「オレの大切な女」ってよぶんだ。ほんと一本気な男だよ。', 'Bahkan sekarang, di usianya yang sudah seratus tahun, Kakek masih memanggil Nenek dengan sebutan "wanitaku yang berharga". Dia adalah orang yang berpikiran satu arah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2680_juta, 'ボーナスは百万円でした。', 'Bonusnya satu juta yen.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2680_juta, 'このトラック、百万台もあるんですよ。', 'Ada satu juta truk ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2680_juta, '百万人もの人々が元パートナーのアカウントに不正ログインしたことがあるというリサーチがある。', 'Penelitian menunjukkan bahwa sebanyak satu juta orang telah login ke akun mantan pasangannya tanpa izin.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2681_empat_ratus, '四百フィートは、およそ百二十メートルです。', '400 kaki adalah sekitar 120 meter.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2681_empat_ratus, '花見パーティに四百人もきた。', 'Empat ratus orang hadir di pesta melihat bunga sakura.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2681_empat_ratus, 'わたしの人生は、四百ページの本にまとめられた。', 'Hidup saya dirangkum dalam buku setebal empat ratus halaman.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2682_lima_ratus, '大人のチケットは、五百円です。', 'Tiket dewasa seharga 500 yen.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2682_lima_ratus, '一年生は五百人くらいです。', 'Ada sekitar lima ratus siswa kelas satu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2682_lima_ratus, 'アパートからガソリンスタンドまで五百メートルはある。', 'Jarak dari apartemen ke pompa bensin setidaknya lima ratus meter.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2683_dua_ratus, 'この竹は二百センチです。', 'Bambu ini panjangnya 200 cm.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2683_dua_ratus, '日本で二百センチメートルの人は中々見ません。', 'Di Jepang, kita tidak melihat banyak orang yang tingginya 200 cm.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2683_dua_ratus, '二百人ものダーツ名人があつまった。', 'Dua ratus ahli panah berkumpul.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2684_rebung_bambu, 'あ！竹の子が土から出てる！', 'Oh! Rebung mencuat dari tanah!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2684_rebung_bambu, 'まだ小さな竹の子ですね。', 'Itu masih rebung muda ya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2684_rebung_bambu, '四月は、山に竹の子がたくさんありますよ。', 'Ada banyak rebung di pegunungan pada bulan April.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2684_rebung_bambu, '土の中から出たことのなかった竹の子って白いんだけど、これがすごくおいしいんだよ。', 'Rebung yang belum keluar dari tanah berwarna putih dan enak sekali.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2685_bambu, 'ここに竹のフェンスがほしい。', 'Saya ingin pagar bambu di sini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2685_bambu, 'この竹、大きすぎるよ。切って。', 'Bambunya terlalu besar. Potong itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2685_bambu, 'すみません。竹用のチェーンソーを下さい。', 'Permisi. Saya ingin gergaji mesin untuk bambu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2686_benang, '糸は、たくさんあるよ。', 'Ada banyak thread.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2686_benang, 'このタオル、糸が出てる。', 'Benang mencuat dari handuk ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2686_benang, 'この糸を二十センチに切って下さい。', 'Tolong potong benang ini menjadi 20 cm.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2687_telinga, 'うちの犬の耳は、いつも立っています。', 'Telinga anjing kami selalu terangkat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2687_telinga, 'ついにウワサが王の耳に入った。', 'Akhirnya rumor itu sampai ke telinga raja.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2687_telinga, 'パンの耳とピザの耳、どっちがいい？', 'Mana yang lebih kamu suka, kerak roti atau kerak pizza?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2689_serangga, 'あ、虫がいる！', 'Oh, ada bug!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2689_serangga, 'あの虫、口から白い糸をはいているよ！', 'Serangga itu mengeluarkan benang putih dari mulutnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2689_serangga, 'とても大人しい虫だけど、ペットにはできないよ。', 'Ini adalah serangga yang cukup patuh, tetapi Anda tidak bisa menjadikannya sebagai hewan peliharaan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2690_desa, 'その村は山の下にある。', 'Desa itu berada di bawah gunung.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2690_desa, 'あなたのお母さんはこの村で生まれたのよ。', 'Ibumu lahir di desa ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2690_desa, 'この村の人口は百三十人です。', 'Jumlah penduduk desa ini adalah 130 orang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2691_orang_desa, '一人の村人が川に入った。', 'Seorang penduduk desa pergi ke sungai.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2691_orang_desa, '村人は王の名を口にしない。', 'Penduduk desa tidak pernah menyebut nama raja.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2691_orang_desa, 'なんか「どうぶつのもり」の村人っぽいセリフだよね。', 'Kalimat itu seperti yang dikatakan penduduk desa di "Animal Crossing", bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2692_pria, 'あの男は、だれ？', 'Siapa pria itu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2692_pria, '二人の男はナイフをもっていた。', 'Kedua pria itu membawa pisau.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2692_pria, 'ほんと、あんたって大人しい男。', 'Kamu pria yang pendiam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2693_kota, 'この町のガソリンスタンドは小さい。', 'SPBU di kota ini kecil.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2693_kota, '山下先生は、町で人気のドクターです。', 'Dr Yamashita adalah seorang dokter populer di kota.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2693_kota, 'となりの町には休みの日によく出かけます。', 'Saya sering pergi ke kota tetangga pada hari libur.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2694_bunga, 'ヒマワリの花はとてもきれいです。', 'Bunga matahari sangat indah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2694_bunga, '母に花をプレゼントしたいんです。', 'Saya ingin memberikan beberapa bunga kepada ibu saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2694_bunga, '花を見ると元気になりますね。', 'Melihat bunga memberi Anda energi positif.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2695_kembang_api, 'このビーチでは八月に花火があります。', 'Di pantai ini, ada pertunjukan kembang api pada bulan Agustus.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2695_kembang_api, '川でバーベキューと花火したいなぁ。', 'Saya ingin mengadakan barbekyu dengan kembang api di sungai.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2695_kembang_api, '今日の花火は中止だってさ。', 'Sepertinya kembang api hari ini telah dibatalkan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2696_melihat_bunga_sakura, '四月一日、花見しましょう。', 'Mari kita melihat bunga sakura pada tanggal 1 April.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2696_melihat_bunga_sakura, '木の下で花見をしながらビールを口にした。', 'Saya minum bir sambil melihat bunga sakura di bawah pohon.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2696_melihat_bunga_sakura, '花見シーズンには、この町にたくさんの人が来ます。', 'Banyak orang datang ke kota ini saat musim bunga sakura.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2697_untuk_melihat, '外を見ると、白い犬がいた。', 'Saya melihat ke luar dan melihat seekor anjing putih.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2697_untuk_melihat, '先日のニュース、見ました？', 'Apakah Anda melihat berita beberapa hari yang lalu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2697_untuk_melihat, 'よく左右を見てからUターンして下さいね。', 'Harap melihat ke kiri dan ke kanan dengan hati-hati sebelum memutar balik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2699_untuk_ditunjukkan, '人に見せるほどのキッチンじゃないですよ。', 'Ini bukan dapur yang akan saya tunjukkan kepada orang lain.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2699_untuk_ditunjukkan, 'そのノート、見せて。', 'Tunjukkan padaku buku catatannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2699_untuk_ditunjukkan, '今日のランチのお礼にポケモンカードのコレクション見せてあげようか？', 'Apakah Anda ingin saya menunjukkan koleksi kartu Pokémon saya sebagai ucapan terima kasih untuk makan siang hari ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2701_cara_melihat, 'このチャートの見方、分かる？', 'Tahukah Anda cara melihat grafik ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2701_cara_melihat, 'その見方は正しい。', 'Perspektif itu valid.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2701_cara_melihat, '他の見方をすれば、人生の半分はエレベーターみたいなものだ。', 'Jika dilihat dari sudut pandang berbeda, separuh hidup itu seperti lift.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2702_melihat_bulan, '十月は、月見のシーズンですね。', 'Oktober adalah musim melihat bulan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2702_melihat_bulan, 'お月見しながらプロポーズだなんて、ロマンチックだね。', 'Melamar sambil melihat ke bulan? Romantis sekali.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2702_melihat_bulan, '月見うどん、一つ下さい。', 'Tolong, pesan satu udon dengan telur.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2703_kerang, '川には、たくさん貝がいる。', 'Ada banyak kerang di sungai.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2703_kerang, '貝のパスタとシイタケのパスタ、どっちがいいかな？', 'Pasta kerang atau pasta jamur shiitake, mana yang sebaiknya saya pilih?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2703_kerang, '赤い貝のダシでつくったラーメンです。', 'Ini ramen yang dibuat dengan dashi kerang merah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2704_merah, 'ケチャップの赤はトマトの赤です。', 'Warna merah kecap berasal dari tomat merah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2704_merah, '赤パプリカは、すきですか？', 'Apakah Anda suka paprika merah?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2704_merah, 'あのライトが赤になったら、車を止めて下さい。', 'Hentikan mobil ketika lampu itu berubah menjadi merah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2705_bayi, '五月に赤ちゃんが生まれる。', 'Seorang bayi akan lahir pada bulan Mei.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2705_bayi, 'このかわいい女の子の赤ちゃんはエマちゃんです。', 'Bayi perempuan lucu ini adalah Emma.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2705_bayi, 'これは赤ちゃんのミルクです。', 'Ini susu formula bayi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2706_menjadi_cukup, '十キログラムで足りるかな。', 'Saya ingin tahu apakah sepuluh kilogram sudah cukup.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2706_menjadi_cukup, 'トイレットペーパーが足りない！', 'Saya tidak punya cukup tisu toilet!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2706_menjadi_cukup, '休みは、いくらあっても足りない。', 'Liburan sepertinya tidak pernah cukup.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2707_kaki, '足にタトゥーがある。', 'Saya memiliki tato di kaki saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2707_kaki, '足がいっぱいある虫は、すきじゃないです。', 'Saya bukan penggemar serangga berkaki banyak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2707_kaki, '足のサイズは25センチです。', 'Ukuran sepatu saya 25 cm.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2708_kekurangan, 'このエリアでは去年、水が不足しました。', 'Tahun lalu, terjadi kekurangan air di daerah ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2708_kekurangan, '不正アクセスがあったのは、わたしの力不足のせいです。すみませんでした。', 'Ada akses tidak sah karena keterampilan saya yang tidak memadai. Saya minta maaf.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2708_kekurangan, 'この不足分は、どこで生まれたんだろう？', 'Dari mana datangnya porsi kekurangan ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2709_mobil, '父の車はベンツです。', 'Mobil ayah saya adalah Benz.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2709_mobil, 'だれか車出してくれないかな？', 'Aku ingin tahu apakah ada yang bisa memberi kami tumpangan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2709_mobil, 'フロリダまで車で一日半くらいかかるよ。', 'Dibutuhkan sekitar satu setengah hari dengan mobil ke Florida.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2710_di_dalam_mobil, '車内に人々がたくさんいます。', 'Ada banyak orang di dalam mobil.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2710_di_dalam_mobil, 'バスの車内にはドライバーがいなかった。', 'Tidak ada pengemudi di dalam bus.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2710_di_dalam_mobil, '先月、タクシーの車内にスマホをわすれたんです。', 'Bulan lalu, ponsel cerdas saya tertinggal di dalam taksi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2712_generasi_kedua, '母は日本で生まれたアメリカ人の二世です。', 'Ibu saya adalah generasi kedua Amerika yang lahir di Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2712_generasi_kedua, 'エリザベス二世はイギリスの女王でした。', 'Elizabeth II adalah Ratu Inggris.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2712_generasi_kedua, '二世タレントで人気の人は少ないです。', 'Hanya sedikit selebriti generasi kedua yang populer.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2713_generasi_ketiga, 'チャールズ三世がイギリスの王になりました。', 'Charles III telah menjadi Raja Inggris.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2713_generasi_ketiga, 'わたしの父はアメリカで生まれた日本人の３世です。', 'Ayah saya adalah generasi ketiga Jepang yang lahir di Amerika Serikat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2713_generasi_ketiga, 'わたしにだって三世としてのプライドがあります。', 'Saya bangga menjadi generasi ketiga.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2714_terutama, '不正アクセスは主にヨーロッパからでした。', 'Akses tidak sah sebagian besar berasal dari Eropa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2714_terutama, '日本の人口は主にアジア人です。', 'Populasi Jepang sebagian besar adalah orang Asia.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2714_terutama, '休日は主に山か川にいます。', 'Saya terutama menghabiskan liburan saya di pegunungan atau di sungai.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2715_kepala_rumah_tangga, 'この人は、わたしの主人です。', 'Orang ini adalah suamiku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2715_kepala_rumah_tangga, '今日ご主人はリモートワークですか？', 'Apakah suami Anda bekerja jarak jauh hari ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2715_kepala_rumah_tangga, 'ご主人さま、十メートルのブランケットはさすがに大きすぎますよ。', 'Guru, selimut sepuluh meter itu terlalu besar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2716_metode, 'コントロールの仕方が下手です。', 'Aku tidak pandai mengendalikannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2716_metode, 'これがフランスのあいさつの仕方なんです。', 'Beginilah cara orang-orang saling menyapa di Prancis.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2716_metode, '「バレないキャットフィッシングの仕方」という本は２０２０年のベストセラーとなった。', 'Buku Cara Ikan Lele Tanpa Tertangkap menjadi bestseller di tahun 2020.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2718_lainnya, '他のスタッフは今いません。', 'Tidak ada staf lain di sini saat ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2718_lainnya, '他の一年生の子は手を上げた。', 'Siswa kelas satu lainnya mengangkat tangan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2718_lainnya, 'その他にアイディアはありますか？', 'Apakah Anda punya ide lain?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2719_orang_lain, '他人のあなたに分かりますか？', 'Sebagai orang asing, bisakah kamu mengerti?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2719_orang_lain, '他人のアドバイスばかりきくな。', 'Jangan hanya mendengarkan nasihat orang lain.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2719_orang_lain, '他人の目が気になって、どうしても外でコスプレができません。', 'Aku khawatir dengan pandangan orang lain, jadi tidak mungkin aku bisa cosplay di luar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2723_untuk_menyalin, '今日のクラスのノート、写してもいい？', 'Bolehkah saya menyalin catatan Anda dari kelas hari ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2723_untuk_menyalin, 'カメラは平気ですが、他の人は写さないで下さいね。', 'Kamera baik-baik saja, tapi tolong jangan mengambil foto orang lain.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2723_untuk_menyalin, 'わたしのサイン、写したでしょ？', 'Anda menyalin tanda tangan saya, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2725_nomor, 'のぞみ三号のチケットは三万円でした。', 'Tiket Nozomi No.3 adalah 30.000 yen.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2725_nomor, 'トーマス号の車内は、とても広いです。', 'Kereta Thomas di dalamnya cukup luas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2725_nomor, 'かめんライダー一号は、みんなのヒーローです。', 'Masked Rider 1 adalah pahlawan bagi semua orang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2726_tengah, '左がマミ、中央がジェニー、右がマイケルです。', 'Mami di kiri, Jenny di tengah, dan di kanan adalah Michael.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2726_tengah, 'ステージの中央に立たないで下さい。', 'Jangan berdiri di tengah panggung.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2726_tengah, 'テーブルの中央にカードをおいた。', 'Saya meletakkan kartu di tengah meja.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2727_datar, 'あの山、平らですね。', 'Gunung itu datar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2727_datar, 'これは土を平らにするマシンです。', 'Ini adalah mesin yang meratakan tanah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2727_datar, '平らなところでもビー玉のレースはできますか？', 'Bisakah saya membalap kelereng bahkan di permukaan datar?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2728_hari_kerja, '平日のディナーは主にカレーです。', 'Saya terutama makan kari untuk makan malam pada hari kerja.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2728_hari_kerja, '平日と休日、どちらなら平気ですか？', 'Mana yang lebih baik, hari kerja atau hari libur?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2728_hari_kerja, '主人は平日が休みです。', 'Suamiku libur pada hari kerja.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2729_untuk_memukul_sesuatu, 'ホームランを打つ名人になりたい。', 'Saya ingin menjadi ahli dalam melakukan home run.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2729_untuk_memukul_sesuatu, 'ぼくの先生は、キーボードを打つのがはやい。', 'Guru saya cepat menggunakan keyboard.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2729_untuk_memukul_sesuatu, '今のうちに手を打っておこう。', 'Mari ambil tindakan sebelum terlambat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2730_satu_pukulan, '力いっぱいの一打でしたね。', 'Itu adalah pukulan yang sangat kuat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2730_satu_pukulan, 'あのゴルフボール、一打でグリーンの上に？', 'Apakah bola golf itu mendarat di lapangan dalam satu pukulan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2730_satu_pukulan, 'ボクシングで一打をくらった。', 'Saya mendapat pukulan dalam tinju.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2731_es, 'このアイスコーヒー、氷が入ってません。', 'Es kopi ini tidak ada es didalamnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2731_es, '「氷の女王」という本は、ありますか？', 'Apakah ada buku berjudul "Ratu Es?"');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2731_es, 'ソーダ、二つ。一つは氷ぬきで。', 'Dua soda. Satu tanpa es.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2732_es_serut, '大きいかき氷がたべたい。', 'Saya ingin makan semangkuk besar es serut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2732_es_serut, '日本では、かき氷が人気です。', 'Es serut sangat populer di Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2732_es_serut, 'そのかき氷の赤いシロップは、イチゴですか？トマトですか？', 'Apakah itu sirup merah pada es serut stroberi? Atau tomat?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2733_mengatakan_dengan_rendah_hati, 'トーフグのコウイチと申します。', 'Saya Koichi dari Tofugu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2733_mengatakan_dengan_rendah_hati, '名字は、田中。下の名は、キョーコと申します。', 'Nama keluarga saya adalah Tanaka. Nama depanku Kyoko.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2733_mengatakan_dengan_rendah_hati, '王女があの宝石のイヤリングを気に入ってるのは申すまでもありません。', 'Tentu saja sang putri menyukai anting-anting permata itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2736_piring, '皿はキッチンキャビネットの中にあります。', 'Piring ada di lemari dapur.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2736_piring, '広いテーブルの上に大きいお皿がたくさんあった。', 'Ada banyak hidangan besar di atas meja yang besar dan lebar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2736_piring, 'この皿、下げてもらってもいいですか？', 'Bisakah Anda mengambil piring ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2737_piring_kecil, 'バーのテーブルの上には小皿がたくさんあった。', 'Ada banyak piring kecil di meja bar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2737_piring_kecil, '小皿の上にはオリーブが五つあった。', 'Ada lima buah zaitun di piring kecil.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2737_piring_kecil, 'その小皿は手の大きさくらいです。', 'Piring kecil itu seukuran tangan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2738_terima_kasih, 'お礼にビールをもらいました。', 'Saya mendapat bir sebagai ucapan terima kasih.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2738_terima_kasih, 'マミから先日のお礼のメールがきたよ。', 'Saya menerima email terima kasih beberapa hari yang lalu dari Mami.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2738_terima_kasih, 'これ、お礼の石です。', 'Ini adalah batu untuk menunjukkan rasa terima kasihku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2739_pelanggaran, 'これは不正サイトです。', 'Ini adalah situs web penipuan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2739_pelanggaran, '大切なデータに不正なアクセスがあった。', 'Ada akses tidak sah ke data penting.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2739_pelanggaran, 'あの人が不正をするなんて、ショックだわ。', 'Saya terkejut dia melakukan pelanggaran.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2739_pelanggaran, 'オンラインゲームで不正をしたらアカウントがBANされた。', 'Saya curang di game online dan akun saya diblokir.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2739_pelanggaran, 'ともだちとのゴルフなら、ちょっとした不正プレーはアリですか、ナシですか？', 'Jika Anda bermain golf dengan teman, apakah menurut Anda sedikit pelanggaran peraturan dapat diterima, atau tidak?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2895_terang, '今日は外が明るい。', 'Di luar cerah hari ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2895_terang, 'このチームは明るい人ばかりですね。', 'Tim ini penuh dengan orang-orang yang ceria.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2895_terang, 'ジェニーは今日は休みだと分かると、一気に明るくなった。', 'Ketika Jenny mengetahui hari ini adalah hari libur, dia langsung bersemangat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3403_anak_sapi, 'この子牛は、まだまだ小さい赤ちゃんです。', 'Anak sapi ini masih bayi kecil.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3403_anak_sapi, 'とても元気な子牛が生まれたよ。', 'Seekor anak sapi yang sangat sehat telah lahir.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3403_anak_sapi, 'サンタさん、どうか子牛をプレゼントして下さい。', 'Sinterklas yang terkasih, tolong bawakan saya seekor anak sapi sebagai hadiah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3404_perangko, 'これはアメリカの切手です。', 'Ini adalah perangko Amerika.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3404_perangko, '四十円の切手を二つ下さい。', 'Tolong beri saya dua prangko 40 yen.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3404_perangko, '主人は切手コレクターです。', 'Suami saya adalah seorang kolektor prangko.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3413_tahun, 'いい年になりますように。', 'Semoga ini menjadi tahun yang baik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3413_tahun, '２０２１年はオリンピックの年でした。', '2021 adalah tahun Olimpiade.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3413_tahun, 'あの年からずっと木を切ってないよ。', 'Saya belum menebang pohon sejak tahun itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3501_nama, 'あの少女の名はエマだ。', 'Nama gadis itu adalah Emma.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3501_nama, 'この花の名は、なんですか？', 'Apa nama bunga ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3501_nama, '主人は「ホテル王」の名をのこした。', 'Suami saya membangun reputasi sebagai "Raja Hotel".');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4313_lubang, 'ポケットに穴があいてる！', 'Ada lubang di sakuku!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4313_lubang, 'そこに穴があるよ。', 'Ada lubang di sana.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4313_lubang, 'あ、このバケツ、穴があいてる！', 'Oh, ember ini berlubang!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4313_lubang, 'あそこのほら穴にはコウモリがいます。', 'Ada kelelawar di gua sebelah sana.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4313_lubang, 'はずかしくて、穴があったら入りたいよ！', 'Saya sangat malu, saya berharap saya bisa merangkak ke dalam lubang!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5631_harta_karun, 'これは、宝のマップです。', 'Ini adalah peta harta karun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5631_harta_karun, '中古ショップは宝の山みたいなもんだ。', 'Toko barang bekas ibarat segunung harta karun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5631_harta_karun, '山の水は、この村の大切な宝です。', 'Air pegunungan adalah harta berharga desa ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5632_permata, 'これは母の大切な宝石です。', 'Ini adalah permata berharga ibuku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5632_permata, 'このネックレス小さい宝石がついてて、かわいいよ。', 'Kalung ini memiliki permata kecil dan lucu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5632_permata, '宝石がすきな男ですが、それがなにか？', 'Saya seorang pria yang menyukai perhiasan. Apakah itu sebuah masalah?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7520_merah, '赤いネクタイを下さい。', 'Tolong beri saya dasi merah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7520_merah, '今、赤いマニキュアが人気ですよ。', 'Cat kuku merah sedang populer saat ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7520_merah, 'このトマト、今日赤くなったばかりなんです。', 'Tomat ini baru saja berubah menjadi merah hari ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7521_putih, 'その白い犬はうちのペットです。', 'Anjing putih itu adalah hewan peliharaan kita.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7521_putih, '白いアスパラガスは中々おいしいですよ。', 'Asparagus putih cukup enak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7521_putih, '白いウサギは赤い目をしていました。', 'Kelinci putih bermata merah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7522_ratus, 'この本は、およそ百ページです。', 'Buku ini sekitar seratus halaman.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7522_ratus, '小さいころ、ジュースは一つ百円でした。', 'Saat aku masih kecil, harga jusnya seratus yen.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7522_ratus, 'イベントには百人のコスプレ名人があつまりました。', 'Seratus master cosplay berkumpul di acara tersebut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7565_hari_kedua_puluh, '二十日にテストがあります。', 'Ada ujian pada tanggal dua puluh.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7565_hari_kedua_puluh, 'あと二十日で２０１９年です。', 'Dua puluh hari lagi tahun 2019.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7565_hari_kedua_puluh, '二十日にボーナスが出ます。', 'Saya akan mendapat bonus pada tanggal 20.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7729_secara_keseluruhan, '半分じゃなくて丸ごと一つ下さい。', 'Tolong beri saya semuanya, bukan hanya setengahnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7729_secara_keseluruhan, 'パイントのアイスを丸ごと一人でたべた。', 'Aku makan satu pint es krim sendirian.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7729_secara_keseluruhan, 'マンゴーをケース丸ごともらった。', 'Saya mendapat sekotak mangga utuh.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8660_untuk_keluar, '五月三日はどこかに出かける？', 'Haruskah kita pergi ke suatu tempat pada tanggal 3 Mei?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8660_untuk_keluar, '休みの日は山へ出かける。', 'Saya pergi ke pegunungan pada hari libur saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8660_untuk_keluar, '田中さんは、ハワイのハネムーンに出かけましたよ。', 'Tanaka-san berangkat berbulan madu di Hawaii.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8694_suasana, 'きたない大気のせいでアレルギーになりました。', 'Saya mengembangkan alergi karena suasana yang tercemar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8694_suasana, '月には、ほとんど大気がないんだって。', 'Hampir tidak ada atmosfer di bulan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8694_suasana, 'ついにロケットが大気から出た。', 'Roket tersebut akhirnya meninggalkan atmosfer.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8961_untuk_disebutkan, '女王は、よく「そうね」と口にする。', 'Ratu sering berkata, "kamu benar."');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8961_untuk_disebutkan, 'その名は口にするな。', 'Jangan sebut nama itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8961_untuk_disebutkan, 'ウィスキーを口にしたら、よっぱらってしまった。', 'Aku mabuk karena sedikit wiski.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9147_amerika_utara, 'カナダは北アメリカにあります。', 'Kanada terletak di Amerika Utara.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9147_amerika_utara, 'これって北アメリカの川ですか？', 'Apakah sungai ini di Amerika Utara?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9147_amerika_utara, '北アメリカの山でキャンプをしました。', 'Saya pergi berkemah di pegunungan Amerika Utara.');

  -- 4. PREREQUISITES
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_493_batu, id FROM items WHERE type = 'radical' AND (slug = '54' OR id = '54') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_498_asal, r_64_asal);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_500_di_dalam, r_346_di_dalam);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_527_dunia, r_83_dunia);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_528_menguasai, r_154_menguasai);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_529_lainnya, r_75_pemimpin);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_529_lainnya, r_77_buaya);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_531_menyalin, r_76_dahi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_531_menyalin, r_8766_pengemis);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_531_menyalin, id FROM items WHERE type = 'radical' AND (slug = '1' OR id = '1') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_532_masa_lalu, id FROM items WHERE type = 'radical' AND (slug = '17' OR id = '17') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_532_masa_lalu, id FROM items WHERE type = 'radical' AND (slug = '140' OR id = '140') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_533_nomor, id FROM items WHERE type = 'radical' AND (slug = '16' OR id = '16') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_533_nomor, id FROM items WHERE type = 'radical' AND (slug = '1' OR id = '1') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_533_nomor, id FROM items WHERE type = 'radical' AND (slug = '14' OR id = '14') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_534_tengah, r_231_tengah);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_535_datar, id FROM items WHERE type = 'radical' AND (slug = '61' OR id = '61') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_535_datar, r_8767_tanduk);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_536_memukul, id FROM items WHERE type = 'radical' AND (slug = '63' OR id = '63') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_536_memukul, id FROM items WHERE type = 'radical' AND (slug = '27' OR id = '27') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_537_es, id FROM items WHERE type = 'radical' AND (slug = '3' OR id = '3') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_537_es, id FROM items WHERE type = 'radical' AND (slug = '45' OR id = '45') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_538_ucapkan_dengan_rendah_hati, id FROM items WHERE type = 'radical' AND (slug = '15' OR id = '15') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_538_ucapkan_dengan_rendah_hati, id FROM items WHERE type = 'radical' AND (slug = '16' OR id = '16') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_540_piring, r_84_piring);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_541_terima_kasih, r_80_roh);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_541_terima_kasih, r_211_payung);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_542_istirahat, r_75_pemimpin);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_542_istirahat, id FROM items WHERE type = 'radical' AND (slug = '23' OR id = '23') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_543_sebelumnya, id FROM items WHERE type = 'radical' AND (slug = '5' OR id = '5') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_543_sebelumnya, id FROM items WHERE type = 'radical' AND (slug = '17' OR id = '17') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_543_sebelumnya, id FROM items WHERE type = 'radical' AND (slug = '28' OR id = '28') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_544_nama, id FROM items WHERE type = 'radical' AND (slug = '33' OR id = '33') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_544_nama, id FROM items WHERE type = 'radical' AND (slug = '16' OR id = '16') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_546_tahun, id FROM items WHERE type = 'radical' AND (slug = '8762' OR id = '8762') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_546_tahun, id FROM items WHERE type = 'radical' AND (slug = '126' OR id = '126') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_547_lebih_awal, id FROM items WHERE type = 'radical' AND (slug = '22' OR id = '22') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_547_lebih_awal, id FROM items WHERE type = 'radical' AND (slug = '15' OR id = '15') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_548_energi, r_82_energi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_548_energi, id FROM items WHERE type = 'radical' AND (slug = '31' OR id = '31') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_549_ratus, id FROM items WHERE type = 'radical' AND (slug = '8763' OR id = '8763') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_549_ratus, id FROM items WHERE type = 'radical' AND (slug = '22' OR id = '22') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_550_bambu, r_85_bambu);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_551_benang, r_86_benang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_552_telinga, r_88_telinga);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_553_serangga, r_89_serangga);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_554_desa, id FROM items WHERE type = 'radical' AND (slug = '23' OR id = '23') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_554_desa, r_74_pengukuran);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_555_pria, r_243_pria);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_556_kota, id FROM items WHERE type = 'radical' AND (slug = '51' OR id = '51') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_556_kota, id FROM items WHERE type = 'radical' AND (slug = '27' OR id = '27') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_557_bunga, r_90_bunga);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_557_bunga, r_75_pemimpin);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_557_bunga, id FROM items WHERE type = 'radical' AND (slug = '57' OR id = '57') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_558_melihat, r_91_melihat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_559_kerang, r_94_kerang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_560_merah, r_92_merah);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_561_kaki, r_95_kaki);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_562_mobil, r_93_mobil);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_563_bukan, r_96_bukan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_564_sedang_mengerjakan, r_75_pemimpin);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_564_sedang_mengerjakan, r_97_samurai);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1118_lubang, r_170_lubang);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1520_harta_karun, id FROM items WHERE type = 'radical' AND (slug = '78' OR id = '78') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1520_harta_karun, id FROM items WHERE type = 'radical' AND (slug = '48' OR id = '48') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1520_harta_karun, id FROM items WHERE type = 'radical' AND (slug = '3' OR id = '3') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2560_tangan_kanan, id FROM items WHERE type = 'kanji' AND (slug = '484' OR id = '484') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2560_tangan_kanan, id FROM items WHERE type = 'kanji' AND (slug = '474' OR id = '474') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2563_hari_keempat, id FROM items WHERE type = 'kanji' AND (slug = '485' OR id = '485') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2563_hari_keempat, id FROM items WHERE type = 'kanji' AND (slug = '476' OR id = '476') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2564_empat_hal, id FROM items WHERE type = 'kanji' AND (slug = '485' OR id = '485') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2565_empat_ribu, id FROM items WHERE type = 'kanji' AND (slug = '485' OR id = '485') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2565_empat_ribu, id FROM items WHERE type = 'kanji' AND (slug = '460' OR id = '460') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2566_empat_puluh, id FROM items WHERE type = 'kanji' AND (slug = '485' OR id = '485') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2566_empat_puluh, id FROM items WHERE type = 'kanji' AND (slug = '448' OR id = '448') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2568_tangan_kiri, id FROM items WHERE type = 'kanji' AND (slug = '486' OR id = '486') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2568_tangan_kiri, id FROM items WHERE type = 'kanji' AND (slug = '474' OR id = '474') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2578_untuk_hidup, id FROM items WHERE type = 'kanji' AND (slug = '850' OR id = '850') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2585_batu, k_493_batu);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2606_menjadi_gemuk, id FROM items WHERE type = 'kanji' AND (slug = '505' OR id = '505') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2644_istirahat, k_542_istirahat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2645_untuk_beristirahat, k_542_istirahat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2646_berhenti_sebentar, k_542_istirahat);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2646_berhenti_sebentar, id FROM items WHERE type = 'kanji' AND (slug = '514' OR id = '514') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2647_hari_libur, k_542_istirahat);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2647_hari_libur, id FROM items WHERE type = 'kanji' AND (slug = '476' OR id = '476') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2648_pertama, k_543_sebelumnya);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2649_tip, k_543_sebelumnya);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2650_bulan_sebelum_terakhir, k_543_sebelumnya);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2650_bulan_sebelum_terakhir, id FROM items WHERE type = 'kanji' AND (slug = '856' OR id = '856') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2650_bulan_sebelum_terakhir, id FROM items WHERE type = 'kanji' AND (slug = '477' OR id = '477') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2651_bulan_lalu, k_543_sebelumnya);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2651_bulan_lalu, id FROM items WHERE type = 'kanji' AND (slug = '477' OR id = '477') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2652_suatu_hari_nanti, k_543_sebelumnya);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2652_suatu_hari_nanti, id FROM items WHERE type = 'kanji' AND (slug = '476' OR id = '476') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2653_guru, k_543_sebelumnya);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2653_guru, id FROM items WHERE type = 'kanji' AND (slug = '850' OR id = '850') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2655_pakar, k_544_nama);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2655_pakar, id FROM items WHERE type = 'kanji' AND (slug = '444' OR id = '444') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2656_nama_belakang, k_544_nama);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2656_nama_belakang, id FROM items WHERE type = 'kanji' AND (slug = '545' OR id = '545') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2659_surat_dari_alfabet, id FROM items WHERE type = 'kanji' AND (slug = '475' OR id = '475') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2659_surat_dari_alfabet, id FROM items WHERE type = 'kanji' AND (slug = '545' OR id = '545') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2660_garis_lurus, id FROM items WHERE type = 'kanji' AND (slug = '440' OR id = '440') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2660_garis_lurus, id FROM items WHERE type = 'kanji' AND (slug = '475' OR id = '475') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2660_garis_lurus, id FROM items WHERE type = 'kanji' AND (slug = '545' OR id = '545') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2662_tahun_2011, k_546_tahun);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2663_pada_akhir_tahun, k_546_tahun);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2663_pada_akhir_tahun, k_500_di_dalam);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2664_sepanjang_tahun, k_546_tahun);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2664_sepanjang_tahun, id FROM items WHERE type = 'kanji' AND (slug = '469' OR id = '469') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2665_siswa_tahun_pertama, id FROM items WHERE type = 'kanji' AND (slug = '440' OR id = '440') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2665_siswa_tahun_pertama, k_546_tahun);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2665_siswa_tahun_pertama, id FROM items WHERE type = 'kanji' AND (slug = '850' OR id = '850') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2666_anak_laki_laki, id FROM items WHERE type = 'kanji' AND (slug = '506' OR id = '506') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2666_anak_laki_laki, k_546_tahun);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2667_tahun_lalu, k_532_masa_lalu);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2667_tahun_lalu, k_546_tahun);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2668_lebih_awal, k_547_lebih_awal);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2669_segera_setelah, k_547_lebih_awal);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2669_segera_setelah, id FROM items WHERE type = 'kanji' AND (slug = '856' OR id = '856') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2670_energi, k_548_energi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2671_untuk_menyukai, k_548_energi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2671_untuk_menyukai, id FROM items WHERE type = 'kanji' AND (slug = '445' OR id = '445') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2672_dalam_sekali_jalan, id FROM items WHERE type = 'kanji' AND (slug = '440' OR id = '440') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2672_dalam_sekali_jalan, k_548_energi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2673_suasana_hati, k_548_energi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2673_suasana_hati, id FROM items WHERE type = 'kanji' AND (slug = '501' OR id = '501') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2674_populer, id FROM items WHERE type = 'kanji' AND (slug = '444' OR id = '444') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2674_populer, k_548_energi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2675_energi, k_498_asal);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2675_energi, k_548_energi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2676_cuaca, id FROM items WHERE type = 'kanji' AND (slug = '473' OR id = '473') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2676_cuaca, k_548_energi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2677_serius, id FROM items WHERE type = 'kanji' AND (slug = '487' OR id = '487') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2677_serius, k_548_energi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2678_tenang, k_535_datar);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2678_tenang, k_548_energi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2679_pikiran_satu_jalur, id FROM items WHERE type = 'kanji' AND (slug = '440' OR id = '440') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2679_pikiran_satu_jalur, id FROM items WHERE type = 'kanji' AND (slug = '487' OR id = '487') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2679_pikiran_satu_jalur, k_548_energi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2680_juta, k_549_ratus);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2680_juta, id FROM items WHERE type = 'kanji' AND (slug = '495' OR id = '495') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2681_empat_ratus, id FROM items WHERE type = 'kanji' AND (slug = '485' OR id = '485') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2681_empat_ratus, k_549_ratus);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2682_lima_ratus, id FROM items WHERE type = 'kanji' AND (slug = '470' OR id = '470') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2682_lima_ratus, k_549_ratus);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2683_dua_ratus, id FROM items WHERE type = 'kanji' AND (slug = '441' OR id = '441') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2683_dua_ratus, k_549_ratus);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2684_rebung_bambu, k_550_bambu);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2684_rebung_bambu, id FROM items WHERE type = 'kanji' AND (slug = '462' OR id = '462') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2685_bambu, k_550_bambu);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2686_benang, k_551_benang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2687_telinga, k_552_telinga);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2689_serangga, k_553_serangga);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2690_desa, k_554_desa);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2691_orang_desa, k_554_desa);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2691_orang_desa, id FROM items WHERE type = 'kanji' AND (slug = '444' OR id = '444') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2692_pria, k_555_pria);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2693_kota, k_556_kota);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2694_bunga, k_557_bunga);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2695_kembang_api, k_557_bunga);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2695_kembang_api, id FROM items WHERE type = 'kanji' AND (slug = '480' OR id = '480') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2696_melihat_bunga_sakura, k_557_bunga);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2696_melihat_bunga_sakura, k_558_melihat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2697_untuk_melihat, k_558_melihat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2699_untuk_ditunjukkan, k_558_melihat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2701_cara_melihat, k_558_melihat);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2701_cara_melihat, id FROM items WHERE type = 'kanji' AND (slug = '510' OR id = '510') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2702_melihat_bulan, id FROM items WHERE type = 'kanji' AND (slug = '477' OR id = '477') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2702_melihat_bulan, k_558_melihat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2703_kerang, k_559_kerang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2704_merah, k_560_merah);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2705_bayi, k_560_merah);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2706_menjadi_cukup, k_561_kaki);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2707_kaki, k_561_kaki);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2708_kekurangan, k_563_bukan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2708_kekurangan, k_561_kaki);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2709_mobil, k_562_mobil);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2710_di_dalam_mobil, k_562_mobil);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2710_di_dalam_mobil, k_500_di_dalam);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2712_generasi_kedua, id FROM items WHERE type = 'kanji' AND (slug = '441' OR id = '441') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2712_generasi_kedua, k_527_dunia);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2713_generasi_ketiga, id FROM items WHERE type = 'kanji' AND (slug = '449' OR id = '449') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2713_generasi_ketiga, k_527_dunia);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2714_terutama, k_528_menguasai);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2715_kepala_rumah_tangga, k_528_menguasai);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2715_kepala_rumah_tangga, id FROM items WHERE type = 'kanji' AND (slug = '444' OR id = '444') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2716_metode, k_564_sedang_mengerjakan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2716_metode, id FROM items WHERE type = 'kanji' AND (slug = '510' OR id = '510') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2718_lainnya, k_529_lainnya);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2719_orang_lain, k_529_lainnya);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2719_orang_lain, id FROM items WHERE type = 'kanji' AND (slug = '444' OR id = '444') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2723_untuk_menyalin, k_531_menyalin);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2725_nomor, k_533_nomor);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2726_tengah, id FROM items WHERE type = 'kanji' AND (slug = '469' OR id = '469') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2726_tengah, k_534_tengah);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2727_datar, k_535_datar);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2728_hari_kerja, k_535_datar);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2728_hari_kerja, id FROM items WHERE type = 'kanji' AND (slug = '476' OR id = '476') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2729_untuk_memukul_sesuatu, k_536_memukul);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2730_satu_pukulan, id FROM items WHERE type = 'kanji' AND (slug = '440' OR id = '440') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2730_satu_pukulan, k_536_memukul);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2731_es, k_537_es);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2732_es_serut, k_537_es);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2733_mengatakan_dengan_rendah_hati, k_538_ucapkan_dengan_rendah_hati);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2736_piring, k_540_piring);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2737_piring_kecil, id FROM items WHERE type = 'kanji' AND (slug = '463' OR id = '463') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2737_piring_kecil, k_540_piring);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2738_terima_kasih, k_541_terima_kasih);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_2739_pelanggaran, k_563_bukan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2739_pelanggaran, id FROM items WHERE type = 'kanji' AND (slug = '488' OR id = '488') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2895_terang, id FROM items WHERE type = 'kanji' AND (slug = '626' OR id = '626') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3403_anak_sapi, id FROM items WHERE type = 'kanji' AND (slug = '462' OR id = '462') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3403_anak_sapi, id FROM items WHERE type = 'kanji' AND (slug = '511' OR id = '511') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3404_perangko, id FROM items WHERE type = 'kanji' AND (slug = '502' OR id = '502') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3404_perangko, id FROM items WHERE type = 'kanji' AND (slug = '474' OR id = '474') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3413_tahun, k_546_tahun);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3501_nama, k_544_nama);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4313_lubang, k_1118_lubang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5631_harta_karun, k_1520_harta_karun);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5632_permata, k_1520_harta_karun);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5632_permata, k_493_batu);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7520_merah, k_560_merah);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7521_putih, id FROM items WHERE type = 'kanji' AND (slug = '491' OR id = '491') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7522_ratus, k_549_ratus);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7565_hari_kedua_puluh, id FROM items WHERE type = 'kanji' AND (slug = '441' OR id = '441') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7565_hari_kedua_puluh, id FROM items WHERE type = 'kanji' AND (slug = '448' OR id = '448') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7565_hari_kedua_puluh, id FROM items WHERE type = 'kanji' AND (slug = '476' OR id = '476') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7729_secara_keseluruhan, id FROM items WHERE type = 'kanji' AND (slug = '467' OR id = '467') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8660_untuk_keluar, id FROM items WHERE type = 'kanji' AND (slug = '483' OR id = '483') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8694_suasana, id FROM items WHERE type = 'kanji' AND (slug = '453' OR id = '453') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8694_suasana, k_548_energi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8961_untuk_disebutkan, id FROM items WHERE type = 'kanji' AND (slug = '452' OR id = '452') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9147_amerika_utara, id FROM items WHERE type = 'kanji' AND (slug = '517' OR id = '517') LIMIT 1;

END $$;
