-- ====================================================
-- KaniGani — Seed Data Level 11 (v2, relasional)
-- Auto-generated with Indonesian Slugs
-- ====================================================

DO $$
DECLARE
  -- ============ RADICAL IDs (Level 11) ============
  r_189_pesanan UUID; r_190_rendah_hati UUID; r_191_kakak UUID; r_193_eskalator UUID; r_194_pemabuk UUID; r_195_kulit UUID; r_196_akar UUID; r_197_suara UUID; r_198_sedikit UUID; r_199_sederhana UUID; r_8775_selikuran UUID; r_8776_sampah UUID; r_8777_beruang UUID; r_9392_pakaian UUID;

  -- ============ KANJI IDs (Level 11) ============
  k_775_konflik UUID; k_776_hubungan UUID; k_777_mengirimkan UUID; k_778_bersama UUID; k_779_menyukai UUID; k_780_menjadi UUID; k_781_tua UUID; k_782_pangkat UUID; k_783_rendah UUID; k_784_pertama UUID; k_785_memisahkan UUID; k_786_laba UUID; k_787_bekerja_keras UUID; k_788_tenaga_kerja UUID; k_789_takdir UUID; k_790_pantai UUID; k_791_melepaskan UUID; k_792_dahulu_kala UUID; k_793_melambai UUID; k_794_menuangkan UUID; k_795_membina UUID; k_796_menjemput UUID; k_797_jari UUID; k_798_gaya_barat UUID; k_799_tuhan UUID; k_800_kedua UUID; k_801_tingkat UUID; k_802_mengikuti UUID; k_803_perang UUID; k_804_bersaing UUID; k_805_bagus UUID; k_806_pencapaian UUID; k_807_spesial UUID; k_808_kenyamanan UUID; k_809_bekerja UUID; k_810_pesanan UUID; k_811_ide UUID; k_812_rasa UUID; k_1837_siapa UUID;

  -- ============ VOCABULARY IDs (Level 11) ============
  v_2817_jumlah_terjual UUID; v_2818_terjual_habis UUID; v_2819_penjual UUID; v_2890_malam_ini UUID; v_2898_tohoku UUID; v_3019_tekad UUID; v_3039_penerimaan UUID; v_3099_pada_awalnya UUID; v_3108_hal_nyata UUID; v_3114_kendaraan UUID; v_3131_orang_kaya UUID; v_3132_merasa UUID; v_3149_untuk_menyiarkan_sesuatu UUID; v_3213_kisah UUID; v_3238_untuk_bersaing UUID; v_3239_perang UUID; v_3240_kompetisi UUID; v_3242_hubungan UUID; v_3245_untuk_menyampaikan UUID; v_3246_poin_umum UUID; v_3247_persendian UUID; v_3248_publik UUID; v_3249_dibagikan UUID; v_3250_menyukai UUID; v_3251_persahabatan UUID; v_3252_menjadi UUID; v_3253_kesuksesan UUID; v_3254_orang_tua UUID; v_3255_pangkat UUID; v_3256_tempat_pertama UUID; v_3257_tempat_pertama UUID; v_3258_rendah UUID; v_3259_yang_terendah UUID; v_3260_pertama_kali UUID; v_3261_yang_pertama UUID; v_3262_memisahkan UUID; v_3263_tidak_secara_khusus UUID; v_3264_orang_yang_berbeda UUID; v_3265_memisahkan UUID; v_3266_spesial UUID; v_3267_untuk_bekerja_dengan_baik UUID; v_3268_nyaman UUID; v_3269_usaha_besar UUID; v_3270_kerja_manual UUID; v_3271_kesulitan UUID; v_3272_buruh UUID; v_3273_kehidupan UUID; v_3274_takdir UUID; v_3275_memesan UUID; v_3276_pantai UUID; v_3277_untuk_melepaskan UUID; v_3278_untuk_membuka_sesuatu UUID; v_3279_dahulu_kala UUID; v_3280_penerimaan UUID; v_3281_untuk_menuangkan UUID; v_3282_peringatan UUID; v_3283_memesan UUID; v_3284_untuk_berkonsentrasi UUID; v_3285_untuk_dibangkitkan UUID; v_3286_pendidikan UUID; v_3287_untuk_mengambil_sesuatu UUID; v_3288_untuk_menunjuk UUID; v_3289_jari UUID; v_3291_untuk_menunjuk UUID; v_3293_pakaian UUID; v_3296_kamar_bergaya_barat UUID; v_3297_tuhan UUID; v_3298_shinto UUID; v_3299_kuil_shinto UUID; v_3300_kedua UUID; v_3301_kelas_tinggi UUID; v_3302_tingkat_pemula UUID; v_3303_tingkat_menengah UUID; v_3304_tingkat_lanjutan UUID; v_3305_untuk_mengikuti UUID; v_3306_pertempuran UUID; v_3307_taktik UUID; v_3308_tangki UUID; v_3309_medan_perang UUID; v_3310_untuk_bersaing UUID; v_3311_bagus UUID; v_3313_khususnya UUID; v_3314_tidak_nyaman UUID; v_3315_kamar_kecil UUID; v_3316_untuk_bekerja UUID; v_3317_pendapat UUID; v_3318_arti UUID; v_3319_mencicipi UUID; v_3456_jual_murah UUID; v_3482_menjadi_genap UUID; v_3490_untuk_dikembalikan UUID; v_3498_daerah_asrama UUID; v_3499_cara_menggunakan UUID; v_3500_pekerjaan UUID; v_3502_pecundang UUID; v_3504_kemenangan UUID; v_3507_menderita UUID; v_3508_untuk_menyadari UUID; v_3509_untuk_melihat UUID; v_3510_kadang_kadang UUID; v_3511_resepsionis UUID; v_3512_belanja UUID; v_3513_sulit_untuk_ditangani UUID; v_3892_buruk UUID; v_3949_merasa_baik UUID; v_4148_untuk_mencoba_sesuatu UUID; v_4217_untuk_membandingkan UUID; v_4354_ujian_masuk UUID; v_4373_tidak_terduga UUID; v_4467_jawaban_yang_benar UUID; v_6653_siapa UUID; v_7453_termasuk UUID; v_7463_sekutu UUID; v_7466_sekarang_dijual UUID; v_7489_makanan UUID; v_7490_melambai UUID; v_7493_tepat_sekali UUID; v_7497_untuk_menjaga UUID; v_7514_untuk_mengunjungi_secara_teratur UUID; v_7532_departemen UUID; v_7577_atap UUID; v_7579_persiapan UUID; v_7626_untuk_dilakukan_tanpa UUID; v_7627_tamasya UUID; v_7630_sebelumnya UUID; v_7631_hiragana UUID; v_7632_harfiah UUID; v_7633_tanda UUID; v_7687_dasar_dasar UUID; v_7689_baru UUID; v_7690_barat UUID; v_7736_samping UUID; v_7744_berbeda UUID; v_7745_kerangka_berpikir UUID; v_7746_cerita_rakyat UUID; v_7747_bagus_sekali UUID; v_8745_biologi UUID; v_8815_biografi UUID; v_8932_untuk_menggulung_sesuatu UUID; v_8939_untuk_memajukan_sesuatu UUID; v_8951_kekurangan_sesuatu UUID; v_9386_tepat_sebelumnya UUID;

BEGIN

  DELETE FROM items WHERE level = 11;

  -- 1. RADICALS
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '令', 'pesanan', 11, 1, 'Radikal ini berarti <radikal>perintah</radikal>, karena bentuknya seperti Napoleon dengan topi bicorne besarnya, memberi perintah. Anda pindah, atau perintahnya menggerakkan Anda.

Lihat bagaimana tubuhnya terlihat seperti cap radikal (卩)? Jika ini membantu, Anda dapat menganggap perintah tertulis Napoleon memiliki cap persetujuannya. Semua pesanan resmi memerlukan stempel orang di bawah topi besar itu, Anda tahu?')
    RETURNING id INTO r_189_pesanan;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '申', 'rendah-hati', 11, 2, 'Radikal ini sama dengan kanji yang Anda pelajari sebelumnya, namun maknanya sedikit berbeda. Hal ini bukan hanya sekedar mengatakan sesuatu dengan rendah hati, namun juga untuk bersikap <radikal>rendah hati</radikal> secara umum. Ketika Anda melihat hal radikal ini, pikirkanlah untuk bersikap rendah hati.

Anda dapat melihat ini sebagai seseorang dengan tangan terkatup di depan tubuhnya, dalam postur yang sangat rendah hati. Mungkin seorang biksu Buddha yang rendah hati mengenakan jubah besar? Bayangkan dia semua rendah hati di sana, kepala tertunduk, tangan terkatup rapat.')
    RETURNING id INTO r_190_rendah_hati;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '兄', 'kakak', 11, 3, 'Radikal ini sama dengan kanji. Artinya <radikal>kakak</radikal>.

Jika Anda perlu penyegaran, berikut mnemoniknya lagi: Siapakah orang yang hanya bermulut dan berkaki? Itu adalah kakak laki-lakimu yang sok tahu, yang tidak akan tutup mulut tentang apa pun.')
    RETURNING id INTO r_191_kakak;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '及', 'eskalator', 11, 4, 'Ingat tangga (乃) radikal? Ini hampir seperti itu, tapi ada langkah lain untuk menggerakkannya. Bit ekstra membuat tangga bergerak sendiri — itulah mengapa ini disebut <radical>eskalator</radikal>!')
    RETURNING id INTO r_193_eskalator;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '戈', 'pemabuk', 11, 5, 'Ini adalah upacara radikal dengan slide radikal. Mengapa sebuah upacara membutuhkan perosotan? Tentu saja untuk para <radikal>pemabuk</radikal>! Orang-orang suka minum pada saat upacara, dan ketika mereka sudah minum terlalu banyak, para pemabuk itu suka bermain seluncuran. Jika upacara Anda berjalan lancar, para pemabuk akan senang.')
    RETURNING id INTO r_194_pemabuk;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '皮', 'kulit', 11, 6, 'Radikal ini sama dengan kanji. Artinya <radikal>kulit</radikal>.

Berikut ini penyegaran mnemonik untuk berjaga-jaga: Anda menuruni perosotan yang terbuat dari ranting-ranting dan kulit Anda langsung tergores — aduh! Beruntungnya Anda, itu hanya lapisan luar kulit lama Anda, dan sekarang Anda memiliki lapisan baru yang berkilau. Hore untuk pengelupasan kulit! Namun Anda tidak yakin apa yang harus dilakukan dengan lapisan kulit tua yang besar dan terkulai ini…')
    RETURNING id INTO r_195_kulit;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '艮', 'akar', 11, 7, 'Bayangkan sayuran <radikal>akar</radikal>, seperti lobak atau sejenisnya. Lihat umbi yang bengkok di bagian atas, dengan sulur akar yang panjang dan berserabut menjuntai di bawahnya? Itu sebabnya ini adalah akar radikal.

Alternatifnya, fokuslah pada komponen: matahari dan tendangan. Saat matahari terbit, Anda berada di luar sambil bermain-main. Namun hati-hati — tendang akarnya, dan Anda bisa tersandung!')
    RETURNING id INTO r_196_akar;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '音', 'suara', 11, 8, 'Radikal ini sama dengan kanji. Artinya <radikal>suara</radikal>. Anda bahkan dapat melihat seseorang berdiri di meja persegi di sini. Itu adalah DJ di meja putar! Bayangkan mereka memutar rekaman dan mengeluarkan segala jenis suara keren.

Anda juga dapat mengingatnya dengan mnemonik kanji yang kami berikan kepada Anda. Intisarinya: Jika Anda berdiri di bawah sinar matahari, Anda akan mendengar suara mendesis yang sangat keras.')
    RETURNING id INTO r_197_suara;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '少', 'sedikit', 11, 9, 'Radikal ini sama dengan kanji. Artinya <radikal>sedikit</radikal>.

Berikut ini penyegaran mnemonik, untuk berjaga-jaga: Anda memiliki slide kecil. Hal yang menarik tentang slide kecil adalah <kanji>hanya sedikit</kanji> orang yang dapat menggunakannya. Tidak semua orang bisa memasukkan pantatnya ke dalam perosotan kecil — hanya sedikit orang yang bisa meluncur ke bawah. Itu sebabnya ini berarti "sedikit"!')
    RETURNING id INTO r_198_sedikit;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '単', 'sederhana', 11, 10, 'Ini radikal untuk <radikal>sederhana</radikal>. Mengapa? Karena terlihat seperti gambar tongkat kecil yang sederhana! Hanya kepala besar di atas dengan beberapa helai rambut, dan tubuh berbentuk tongkat. Apa yang lebih sederhana?')
    RETURNING id INTO r_199_sederhana;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '龷', 'selikuran', 11, 11, 'Anda memiliki dua puluh radikal dan satu kanji. Gabungkan semuanya dan Anda mendapatkan 21. Apa nama lain dari 21? Itu <radikal>blackjack</radikal>.')
    RETURNING id INTO r_8775_selikuran;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '𠫓', 'sampah', 11, 12, 'Ada penutup di atas sesuatu yang Anda coba rahasiakan. Itu adalah <radikal>sampah</radikal> Anda. Anda tentu tidak ingin orang lain membuang sampah pribadi Anda, itulah sebabnya kami menutup tempat sampah kami. Melihat sampah seseorang juga merupakan tindakan ilegal, jadi pastikan Anda tidak pernah melakukannya.')
    RETURNING id INTO r_8776_sampah;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '㠯', 'beruang', 11, 13, 'Ini adalah kata radikal untuk <radical>beruang</radikal>, karena bentuknya seperti huruf B — B untuk beruang! Anda tahu yang ini adalah "beruang" dan bukan "bangunan" karena semuanya berbentuk kotak, seperti beruang kekar dan kekar yang semuanya gemuk dan siap untuk berhibernasi.')
    RETURNING id INTO r_8777_beruang;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '衤', 'pakaian', 11, 14, 'Pada pandangan pertama, ini terlihat seperti Spirit radikal, tapi sebenarnya dia hanya seorang pria dengan <radikal>pakaian</radikal> yang serupa. Anda dapat mengetahuinya karena benda yang menempel di lengan bajunya di sisi kanan — itulah label harga pakaian tersebut. Kemana orang ini pergi untuk membeli pakaian seperti ini?')
    RETURNING id INTO r_9392_pakaian;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_189_pesanan, 'Pesanan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_190_rendah_hati, 'Rendah hati', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_191_kakak, 'Kakak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_193_eskalator, 'Eskalator', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_194_pemabuk, 'Pemabuk', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_195_kulit, 'Kulit', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_196_akar, 'Akar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_197_suara, 'Suara', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_198_sedikit, 'Sedikit', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_199_sederhana, 'Sederhana', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_8775_selikuran, 'Selikuran', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_8776_sampah, 'Sampah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_8777_beruang, 'Beruang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_9392_pakaian, 'Pakaian', true, true);

  -- 2. KANJIS
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '争', 'konflik', 11, 15, 'Di <radical>penjara</radical>, <radical>Wolverine</radical> dijebak karena <radical>duri</radikal> yang lepas dari tangannya. Hal ini menciptakan banyak <kanji>konflik</kanji> antara dia dan tahanan lainnya. Mereka tidak menyukai mutan, dan Wolverine tidak menyukai orang fanatik — itulah yang menyebabkan konflik.', '<kanji>konflik</kanji> yang terus-menerus antara Wolverine dan narapidana lainnya benar-benar mempengaruhi <read>sou</reading>l (そう) miliknya. Terlepas dari anggapan orang, Wolverine sebenarnya tidak suka berkelahi. Dia sangat membenci ketidakadilan, dia merasa harus melakukan sesuatu untuk mengatasinya.')
    RETURNING id INTO k_775_konflik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '仲', 'hubungan', 11, 16, 'Seorang <radikal>pemimpin</radikal> yang mengambil <radikal>tengah</radikal> dalam setiap permasalahan cenderung memiliki <kanji>hubungan</kanji> yang rata-rata dengan semua orang. Dia tidak terlalu memihak dalam suatu hal, dan hanya berada di tengah-tengah. Hal ini membuatnya tampak seperti orang yang plin-plan, dan karena itu dia hanya mampu mempertahankan hubungan tingkat menengah yang rata-rata.', 'Bayangkan seorang politikus yang tidak punya hubungan baik dengan Anda. Sekarang bayangkan ada <reading>pengetuk</reading> (なか) di dahi mereka dan Anda bisa mengetuk pengetuk itu sekeras yang Anda suka. Mungkin Anda bisa menanamkan integritas pada mereka dan membentuk hubungan yang lebih baik.')
    RETURNING id INTO k_776_hubungan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '伝', 'mengirimkan', 11, 17, '<radikal>pemimpin</radikal> memiliki <radikal>awan</radikal> yang dia gunakan untuk <kanji>mentransmisikan</kanji> semua pesan yang perlu dia kirimkan kepada rakyatnya. Awan melayang di atasnya dan ketika dia ingin memberi tahu orang-orang sesuatu, dia hanya berbisik ke awan dan awan itu menyampaikan pesannya dengan sangat, sangat keras kepada mereka semua.', 'Saat pemimpin <kanji>mentransmisikan rangkaian pesan terbarunya kepada Anda dan yang lain, Anda melihat <read>den</reading>t (でん) yang cukup besar di dalamnya. Penyok tersebut mungkin merupakan petunjuk terbuat dari apa sebenarnya awan ini.')
    RETURNING id INTO k_777_mengirimkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '共', 'bersama', 11, 18, 'Permainan kartu yang paling disukai ikan adalah <radical>blackjack</radical> karena mereka dapat dengan mudah memegang kartu dengan <radical>sirip</radikal> <kanji>bersama</kanji>. Dalam blackjack Anda tidak harus memiliki kartu yang besar dan penuh. Jumlahnya hanya sedikit, sehingga sirip ikan dapat menyatukannya dan langsung mengenai atau bertahan.', 'Setahun sekali, triliunan ikan berkumpul <kanji>bersama</kanji> di <reading>きょう</reading>と untuk bermain blackjack. Mereka mengadakan turnamen besar di sana setahun sekali.')
    RETURNING id INTO k_778_bersama;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '好', 'menyukai', 11, 19, 'Ada seorang <radikal>wanita</radikal> dan seorang <radikal>anak</radikal> di depan Anda. Anda <kanji>menyukainya</kanji> sangat banyak.', '"Aku <kanji>menyukai</kanji> kalian berdua," katamu pada wanita dan anak itu. Mereka berdua menoleh 180 derajat ke arah Anda. Mereka berdua mempunyai wajah yang mirip dengan <reading>こう</reading>いち. "Kami juga menyukaimu," kata mereka serempak.')
    RETURNING id INTO k_779_menyukai;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '成', 'menjadi', 11, 20, 'Ketika seorang <radical>pemabuk</radical> memegang <radical>pedang</radical> itu <kanji>menjadi</kanji> sesuatu yang lain. Pemabuk tidak menjadi pendekar pedang, mereka tetap saja pemabuk. Tapi pedang di tangan mereka bisa melakukannya.', 'Pedang telah <kanji>menjadi</kanji> sebuah <reading>sa</reading>ber (せい)! Ini seperti pedang yang kamu miliki! Hei, tunggu.')
    RETURNING id INTO k_780_menjadi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '老', 'tua', 11, 21, 'Pada saat kamu selesai menggali lubang <radical>peti mati</radikal> hanya dengan menggunakan <radical>sendok</radikal>, kamu akan menjadi orang <kanji>lansia</kanji> yang sudah tua. Menggali hanya dengan menggunakan sendok membutuhkan waktu yang lama, apalagi jika lubangnya harus cukup besar untuk menampung peti mati. Anda mungkin akan menggalinya sendiri jika terus begini. Pada saat Anda selesai, Anda akan menjadi keriput dan tua dan hampir siap untuk terjungkal.', 'Sekarang kamu sudah <kanji>lansia</kanji> (dan mungkin akan segera mati), kamu tiba-tiba mendambakan <read>roe</reading> (ろう) yang lezat. Telur salmon, telur bulu babi, telur tahu, tidak masalah. Tulangmu yang tua dan lelah membutuhkan telur setelah semua kerja keras itu!')
    RETURNING id INTO k_781_tua;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '位', 'pangkat', 11, 22, 'Seorang <radikal>pemimpin</radikal> <radikal>berdiri</radikal> berada pada <kanji>peringkat</kanji> tertinggi dalam sebuah organisasi. Pemimpin memiliki pangkat tertinggi dan berdiri di atas segalanya.', 'Pemimpin besar ini sebenarnya adalah pemimpin pramuka. Dan seperti yang kita ketahui bersama, <kanji>pangkat</kanji> tertinggi dalam pramuka adalah pangkat <reading>ea</reading>gle (い) pramuka. Pemimpin hebat ini telah mencapai pangkat pramuka elang dan berdiri di atas semua pramuka lainnya.')
    RETURNING id INTO k_782_pangkat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '低', 'rendah', 11, 23, '<radical>pemimpin</radikal> <radikal>klan</radikal> Anda ingin tinggal dekat dengan <radikal>tanah</radikal> jadi dia meminta Anda <kanji>rendah</kanji>. Rendah, rendah, dengan perut menempel ke tanah. Dengan begitu Anda selalu berada di bawahnya, karena dialah pemimpinnya.', '<kanji>Rendah</kanji> orang seperti Anda hanya bisa makan makanan rendah seperti kentang. Tapi itu membosankan, jadi kalian orang rendahan belajar membuat <reading>ta</reading>ter (てい) tots. Anda menggulungnya satu sama lain dan memakannya tanpa mengangkat kepala.')
    RETURNING id INTO k_783_rendah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '初', 'pertama', 11, 24, 'Anda mengenakan <radical>pakaian</radikal> khusus dan menggunakan <radical>pedang</radikal> setiap kali Anda melakukan sesuatu untuk <kanji>pertama</kanji> kali. Melakukan sesuatu untuk pertama kalinya selalu menakutkan, namun pakaian yang tepat dan pedang di sisi Anda dapat memberi Anda kepercayaan diri dan keberanian untuk mengatasi kegugupan Anda!', 'Jadi, apa yang kamu lakukan untuk <kanji>pertama</kanji> kali? <membaca>pertunjukan</reading> mode (しょ). Pakaian dan pedang spesial Anda tidak hanya untuk menenangkan saraf Anda — itu juga yang akan Anda pamerkan di atas catwalk.')
    RETURNING id INTO k_784_pertama;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '別', 'memisahkan', 11, 25, 'Di <radical>mulut</radical> Anda menaruh <radical>pedang</radical> dan <radical>pisau</radical>. Sekarang setelah Anda memilikinya di sana, Anda harus membuat <kanji>terpisah</kanji> satu sama lain.', 'Mengapa kamu mencoba membuat pedang dan pisau <kanji>terpisah</kanji> di mulutmu? Karena seseorang <reading>bertaruh</reading> (べつ) Anda tidak dapat melakukannya.')
    RETURNING id INTO k_785_memisahkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '利', 'laba', 11, 26, 'Potong <radical>biji-bijian</radikal> dengan <radical>pisau</radikal> untuk membuatnya lebih kecil dan Anda akan mendapat <kanji>keuntungan</kanji> yang besar. Dengan memotongnya, sekarang Anda bisa mendapatkan uang senilai tiga butir dengan harga yang dulunya adalah satu butir.', 'Untuk mendapatkan <kanji>keuntungan</kanji> yang lebih baik lagi, Anda memutuskan untuk memotong <reading>ree</reading>ds (り) juga. Anda memasukkan biji-bijian ke dalam alang-alang dan menjualnya sebagai perangkat "memasak sendiri".')
    RETURNING id INTO k_786_laba;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '努', 'bekerja-keras', 11, 27, 'Seorang <radikal>wanita</radikal> duduk di <radikal>bangku</radikal> untuk melestarikan <radikal>kekuatan</radikal> miliknya, sementara para pelayannya <kanji>bekerja keras</kanji> di dapur. Mereka bekerja keras menyiapkan pesta untuk wanita kuat ini sementara dia duduk kembali di bangkunya yang nyaman. Dia seorang ratu dan pantas dimanjakan.', 'Sebagai seorang pelayan, kamu <kanji>bekerja keras</kanji> bukan hanya untuk wanitanya, tapi juga untuk <membaca>pekerjaan</reading>g (ど). Apa pun yang didapatnya, anjingnya juga mendapat. Itu berarti melipatgandakan kerja keras Anda. Tapi hei, setidaknya anjing itu lucu.')
    RETURNING id INTO k_787_bekerja_keras;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '労', 'tenaga-kerja', 11, 28, 'Seorang <radikal>Viking</radikal> yang mempunyai posisi <radikal>kekuasaan</radikal> tidak perlu <kanji>bekerja</kanji> di ladang. Buruh adalah untuk yang lemah! Seorang Viking yang berkuasa mengambil apa yang diinginkannya, dan tidak perlu bekerja keras untuk mendapatkannya. Seorang Viking yang kuat menjarah segalanya dan mengambil apa yang diinginkannya!', 'Dibutuhkan banyak <kanji>tenaga kerja</kanji> untuk memanen <reading>telur</reading> (ろう) jadi itulah yang diputuskan oleh Viking terlebih dahulu! Telurnya enak, tapi kecil dan lembut. Bangsa Viking tidak bekerja demi telur mereka sendiri! Mereka mengambilnya dan memakannya!')
    RETURNING id INTO k_788_tenaga_kerja;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '命', 'takdir', 11, 29, '<radical>Perintah</radical> yang keluar dari <radical>mulut</radical> Anda akan menentukan <kanji>nasib</kanji> prajurit Anda. Anda adalah komandan mereka dan perintah Anda menentukan <kanji>hidup</kanji> mereka.', 'Anda adalah komandan bunga <reading>Mei</reading> (めい). Anda memberi perintah untuk menjajah Amerika. Perintah yang keluar dari lubang mulut Anda menentukan <kanji>nasib</kanji> para pemukim dan nasib Amerika serta nasib dunia! Kamu dan Mayflower telah mengubah segalanya selamanya.')
    RETURNING id INTO k_789_takdir;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '岸', 'pantai', 11, 30, '<radical>gunung</radical> di atas <radical>tebing</radical> <radical>kering</radical> tidak seperti <kanji>pantai</kanji> di bawahnya. Hanya dengan melihat <kanji>pantai</kanji> yang mengamuk di bawah, Anda akan berpikir semuanya akan basah, dan terciprat ke mana-mana!', 'Duduk di sana, memandangi <kanji>pantai</kanji> bersama Anda, adalah <reading>Gan</reading>dhi (がん). Gandhi yang terkenal di dunia, sedang berkumpul di sini bersama Anda, melihat ke bawah pada apa yang sekarang Anda sadari pastilah sebuah pantai di India.')
    RETURNING id INTO k_790_pantai;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '放', 'melepaskan', 11, 31, 'Saat tahun mulai bergerak ke <radikal>arah</radikal> <radikal>musim dingin</radikal>, pepohonan harus <kanji>melepaskan</kanji> daunnya.', 'Pepohonan <kanji>melepaskan</kanji> semua daunnya ke <reading>ho</reading>saya (ほう) Anda. Perlahan-lahan, Anda menyaksikan dengan ngeri saat rumah Anda dimakan oleh dedaunan yang terlepas. Mereka masuk melalui jendela, pintu, dan cerobong asap.')
    RETURNING id INTO k_791_melepaskan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '昔', 'dahulu-kala', 11, 32, 'Anda telah bermain <radical>blackjack</radical> di <radical>matahari</radikal> sejak <kanji>lama sekali</kanji>. Ini adalah permainan blackjack terpanjang yang pernah Anda mainkan dan rasanya sudah lama sekali sejak Anda memulainya. Anda telah duduk di bawah sinar matahari bermain blackjack sejak lama sekali.', 'Setelah Anda akhirnya menyelesaikan permainan, Anda berjalan pulang ke rumah, di bawah sinar matahari, tanpa alas kaki, di jalan tanah yang tidak dirawat sejak <kanji>lama sekali</kanji>. Kakimu berkeringat karena terkena sinar matahari, dan berjalan di jalan tanah ini membuatmu <reading>kotoran ashi</reading> (むかし). Ashi (kaki) Anda semuanya kotor dan berlumpur karena kombinasi kotoran dan keringat. Kotoran ashi-mu benar-benar menjijikkan, kawan.')
    RETURNING id INTO k_792_dahulu_kala;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '波', 'melambai', 11, 33, 'Bagian <radikal>tsunami</radikal> manakah yang Anda rasakan pada <radikal>kulit</radikal> Anda? <kanji>Gelombang</kanji>. Tsunami disertai dengan segala macam pemandangan dan suara yang menakutkan, namun yang Anda rasakan di kulit Anda adalah ombaknya yang dahsyat.', 'Saat setiap <kanji>gelombang</kanji> mengenai tubuhmu, kamu berteriak, "<reading>Hah</reading> (は)!" Ini tidak seperti disengaja. Saat ombak menerjang Anda, angin pun langsung menghempaskan Anda, membuat Anda berkata "Hah!"')
    RETURNING id INTO k_793_melambai;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '注', 'menuangkan', 11, 34, 'Seorang <radikal>tsunami</radikal> <radikal>master</radikal> memiliki kekuatan untuk <kanji>menuangkan</kanji> air ke mana pun ia mau. Ahli tsunami adalah ahli dalam menggunakan kekuatan air yang paling kuat di alam semesta, jadi masuk akal jika mereka mempunyai kemampuan untuk menuangkan air sesuka hati, ke mana pun mereka mau. Sebaiknya jangan centang masternya, kecuali Anda ingin tsunami menimpa kepala Anda.', 'Jika <reading>Chew</reading>bacca (ちゅう) mencoba menyerang Anda, Anda akan dapat mempertahankan diri dengan mudah. Cukup <kanji>tuangkan</kanji> tsunami padanya dan Chewbacca akan menyerah dalam sekejap. Chewbacca tidak suka air disiramkan ke tubuhnya, apalagi air yang berasal dari tsunami tidak semuanya.')
    RETURNING id INTO k_794_menuangkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '育', 'membina', 11, 35, 'Berikan <radical>sampah</radical> ke <radical>bulan</radical> dan ia akan <kanji>memelihara</kanji> dan <kanji>membesarkan</kanji> sampah itu seperti bayi bulan kecilnya sendiri.', 'Bulan <kanji>memelihara</kanji> bola sampah hingga suatu hari, ia berbicara! "<reading>行く</reading> (いく), 行く！" tertulis di sana. Ia ingin ditayangkan bersama ibu bulan!')
    RETURNING id INTO k_795_membina;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '拾', 'menjemput', 11, 36, '<radical>jari</radical> Anda sepertinya selalu <radical>cocok</radical> dengan benda acak yang Anda <kanji>ambil</kanji> dari tanah. Sebuah bidal tua. Cincin bawang yang dibuang. Cacing mati yang kamu ikat menjadi simpul. Jari-jari Anda yang luar biasa sangat cocok untuk mereka, hampir seperti perhiasan, jadi tentu saja Anda mengambil semuanya.', 'Anda sedang berjalan-jalan mencari sesuatu untuk <kanji>diambil</kanji> saat Anda melihat pedang di batu. Ya, ini cocok untukmu. Anda mengambil pedang dan orang-orang melompat ke sekeliling Anda dan memberi tahu Anda bahwa Anda adalah <reading>pahlawan</reading> (ひろ) yang baru! Uh oh. Mungkin Anda seharusnya tidak mengambil ini.')
    RETURNING id INTO k_796_menjemput;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '指', 'jari', 11, 37, 'Coba gunakan <radical>jari</radical> Anda untuk <radical>menyendok</radical> sebagian dari <radical>matahari</radikal> dan Anda akan kembali hanya dengan satu <kanji>jari</kanji>.', 'Jangan khawatir, kamu bukan satu-satunya orang di luar sana yang hanya memiliki satu <kanji>jari</kanji>, <reading>shee</reading>p (し) juga hanya memiliki satu jari. Maksudku, itu adalah kuku, yang sebenarnya hanyalah sebuah jari binatang. Itu hanya besar dan agak datar.')
    RETURNING id INTO k_797_jari;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '洋', 'gaya-barat', 11, 38, '<radikal>tsunami</radikal> ini ditunggangi oleh <radikal>domba</radikal> dalam <kanji>gaya Barat</kanji> klasik. Yang saya maksud dengan gaya Barat adalah domba yang mengenakan pakaian koboi dan memasang pelana di atas gelombang tsunami untuk menungganginya. Itu adalah rodeo tsunami dan domba gila ini mengendarai gelombang tsunami dengan gaya klasik Barat.

Kanji ini juga berarti <kanji>lautan</kanji>, karena konon orang-orang dari Barat dengan gaya Baratnya berasal dari seberang lautan. Anda pasti ingin memahami kedua makna kosakata tersebut nanti.', 'Setelah seharian menunggangi tsunami ini, para domba mendambakan makanan <kanji>gaya Barat</kanji>, yaitu <reading>yo</reading>gurt (よう). Yogurt itu makanan ala Barat ya? Jika ini membantu, Anda bisa membayangkan yogurt diberi rasa seperti pai apel, agar lebih khas Amerika dan Barat.')
    RETURNING id INTO k_798_gaya_barat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '神', 'tuhan', 11, 39, '<radikal>roh</radikal> Anda harus terasa <radikal>rendah hati</radikal> di hadapan <kanji>roh</kanji> dewa</kanji>. Kamu tidak pernah benar-benar merasa rendah hati di depan orang lain, tapi jika kamu bertemu dengan roh dewa… Yah, kamu mungkin harus merendahkan dirimu dengan pantas. Dewa mempunyai roh yang kuat.', 'Saat kamu bertemu dengan <kanji>roh</kanji> <kanji>dewa</kanji>, kamu harus turun ke <reading>tulang kering</reading> (しん) kamu. Turun ke pergelangan kakimu? Tidak, tidak cukup rendah. Lutut? Tidak, tidak, letakkan tulang keringmu di lantai untuk menunjukkan betapa rendah hati dirimu sebenarnya. Untungnya, kamu mengenakan <reading>jean</reading> (じん), jadi setidaknya itu akan mencegah tulang keringmu lecet!')
    RETURNING id INTO k_799_tuhan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '秒', 'kedua', 11, 40, '<radical>Biji-bijian</radical>hanya <radical>sedikit</radikal>. Bayangkan beberapa butir terakhir menetes ke dalam jam pasir. Anda hanya mempunyai <kanji>detik</kanji> tersisa.', 'Setelah <kanji>detik</kanji> terakhir berlalu, <reading>B.O.</reading> (びょう) burukmu muncul.')
    RETURNING id INTO k_800_kedua;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '級', 'tingkat', 11, 41, 'Ada potongan <radical>utas</radikal> di setiap <radical>eskalator</radikal> yang menunjukkan <kanji>level</kanji> apa yang mereka tuju di sekolah Anda. Setiap eskalator membawa Anda ke <kanji>kelas</kanji> yang berbeda, jadi pastikan Anda mengikuti alur yang benar atau Anda akan berakhir di kelas yang jauh di atas atau di bawah level Anda.', 'Anda ingin melihat <kanji>level</kanji> tertinggi, jadi Anda salah naik eskalator. Di bagian atas Anda menemukan <reading>cu</reading>cumber (きゅう) raksasa.')
    RETURNING id INTO k_801_tingkat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '追', 'mengikuti', 11, 42, 'Di <radical>skuter</radical> ada <radical>beruang</radical> dengan <radical>drop</radical> di kepalanya mencoba <kanji>mengikuti</kanji> dan <kanji>mengejar</kanji> Anda! Anda tidak sengaja memercikkannya dengan air dan dia tidak senang. Untungnya, Anda mengendarai skuter sendiri, tetapi itu tidak membuat hal ini menjadi kurang menakutkan.', 'Beruang itu mencoba <kanji>mengikuti</kanji> Anda karena ia menginginkan <reading>o</reading>bi (お) Anda sebagai kompensasi atas harga dirinya yang terluka. Obi itu melambai tertiup angin di belakang skuter Anda, dan beruang itu mengulurkan giginya untuk mencoba meraihnya.')
    RETURNING id INTO k_802_mengikuti;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '戦', 'perang', 11, 43, 'Seorang <radikal>sederhana</radikal> <radikal>pemabuk</radikal> yang memulai <kanji>perang</kanji>.', 'Pemabuk sederhana memulai <kanji>perang</kanji> dengan <reading>cen</reading>taurs (せん)! Hal ini sangat disayangkan, karena para centaur sangat ahli dalam <kanji>pertempuran</kanji> karena mereka semua otomatis menjadi pasukan kavaleri.')
    RETURNING id INTO k_803_perang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '競', 'bersaing', 11, 44, '<radical>Berdiri</radical> di atas <radical>kakak</radical> Anda. Sekarang <radical>berdiri</radical> di atas <radical>kakak</radical> Anda lagi. Anda ingin berdiri di atas, dan di atas, kakak laki-laki Anda. Kamu <kanji>bersaing</kanji> berulang kali, untuk mengalahkan kakakmu.', 'Kamu <kanji>bersaing</kanji> dengan kakak laki-lakimu karena hanya satu dari kalian yang boleh ikut <reading>きょう</reading>と. Siapa pun yang paling banyak berdiri di atas berhak masuk ke きょうと, jadi Anda harus bersaing untuk mendapatkan tempat.')
    RETURNING id INTO k_804_bersaing;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '良', 'bagus', 11, 45, '<radikal>setetes</radikal> air ke <radikal>akar</radikal> adalah <kanji>baik</kanji>. Baik bagi akar untuk tumbuh, hidup, dan berkembang. Dan apa yang baik untuk akar juga baik untuk tanaman kita dan kita manusia.', 'Cara yang <kanji>baik</kanji> untuk mendapatkan banyak tetes air untuk akar Anda adalah dengan membeli perahu <reading>baris</reading> (りょう). Kemudian mendayunglah ke tengah danau dan masukkan semua akarnya langsung ke sumbernya!')
    RETURNING id INTO k_805_bagus;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '功', 'pencapaian', 11, 46, 'Dengan menggunakan <radical>konstruksi</radical> <radical>kekuatan</radical> Anda, Anda membangun sesuatu yang hebat. <kanji>prestasi</kanji> sejati yang dibangun untuk pencapaian yang membuat pembelajaran kanji menjadi lebih mudah!', '<kanji>prestasi</kanji> ini dimungkinkan oleh <reading>こう</reading>いち, jadi tentu saja proyek konstruksi ini adalah patung raksasa dari manusia itu sendiri. Sungguh suatu pencapaian sebuah patung. Sungguh sebuah pencapaian dari sebuah pencapaian.')
    RETURNING id INTO k_806_pencapaian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '特', 'spesial', 11, 47, '<radical>sapi</radikal> <radikal>kuil</radikal> ini adalah <kanji>istimewa</kanji>. Sapi ini pasti sangat penting sehingga seluruh kuil didedikasikan untuknya.', 'Sapi ini <kanji>istimewa</kanji> karena milik <reading>Toku</reading>gawa (とく) Ieyasu, shōgun pertama Keshogunan Tokugawa dan pemersatu Jepang! Dia adalah tokoh super penting dalam sejarah Jepang. Anda benar-benar harus mencarinya dan membaca sedikit tentang dia (saat Anda mengikuti pelajaran ini).')
    RETURNING id INTO k_807_spesial;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '便', 'kenyamanan', 11, 48, 'Seorang <radikal>pemimpin</radikal> berdiri di atas <radikal>tanah</radikal> <radikal>sawah</radikal>. Dia sedang mencari <radikal>harta</radikal>. Dikatakan bahwa harta karun di sawah ini akan membuat segalanya lebih mudah bagi pemimpinnya (bagaimanapun juga, itulah yang sebenarnya diinginkan oleh para pemimpin). Jika dia mendapatkan harta karun ini, itu akan menjadi <kanji>kenyamanan</kanji> yang luar biasa baginya, karena kenyamanan adalah segalanya ketika Anda menjadi pemimpinnya.', 'Dia menemukan tempat untuk menggali di dalam tanah. Sepertinya ada kotoran baru di sini. Terakhir, harta karun <kanji>kenyamanan</kanji> yang akan membuat hidup pemimpin ini jauh lebih mudah. Dia menggali tanah dan mengeluarkan sebuah kotak. Ketika dia membukanya, dia menemukan itu adalah <reading>ben</reading>to (べん). "Ya Tuhan," pikirnya. "Ini benar-benar akan membuat hidupku lebih nyaman. Orang-orangku bisa membawa bekal makan siang mereka sekarang daripada harus kembali ke markas untuk makan, yang akan membuang lebih sedikit waktu!"')
    RETURNING id INTO k_808_kenyamanan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '働', 'bekerja', 11, 49, '<radical>pemimpin</radikal> Anda membuat Anda mengangkat beban <radikal>berat</radikal> dengan seluruh <radikal>kekuatan</radikal> Anda, karena inilah yang Anda lakukan untuk <kanji>pekerjaan</kanji>. Mengapa Anda melakukan pekerjaan seperti ini? Ya, Anda pandai dalam hal itu dan pemimpinnya menyuruh Anda melakukannya, saya rasa.', 'Dari mana Anda mendapatkan kekuatan untuk melakukan semua <kanji>pekerjaan</kanji> ini? Dari <reading>dou</reading>ghnuts (どう). Anda tidak makan apa pun kecuali donat. Jika Anda tidak punya donat, Anda tidak bisa bekerja. Faktanya, pemimpin Anda membayar Anda untuk pekerjaan Anda… dalam bentuk donat.')
    RETURNING id INTO k_809_bekerja;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '令', 'pesanan', 11, 50, 'Jika Anda mengetahui arti radikal <radikal>perintah</radikal> Anda juga mengetahui arti kanji <kanji>perintah</kanji>!', '<kanji>Perintah</kanji> Anda adalah untuk mendapatkan senjata <reading>ray</reading> (れい).')
    RETURNING id INTO k_810_pesanan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '意', 'ide', 11, 51, '<radikal>suara</radikal> dari <radikal>hati</radikal>mu memberiku sebuah <kanji>ide</kanji>. Debaran jantung yang berdebar-debar secara metodis membuatku kesurupan yang memberiku ide-ide hebat. Itu suara yang sangat inspiratif, suara hati. Ini memberi saya ide. 

Alternatifnya, Anda bisa melihat kanji ini dan melihat kata "berdiri" yang radikal dan sesuatu yang (hampir) tampak seperti kanji untuk "berpikir". Saat Anda berdiri dan berpikir, Anda memunculkan <kanji>ide</kanji> Anda sendiri!', 'Hati seekor <read>ea</reading>gle (い) sangat kuat. Orang yang mengetahui hal ini mungkin memiliki <kanji>ide</kanji> untuk menjadikan elang botak sebagai simbol Amerika Serikat. Elang selalu terbang berkeliling dan melakukan sesuatu, sehingga hati mereka sangat kuat.')
    RETURNING id INTO k_811_ide;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '味', 'rasa', 11, 52, 'Di <radical>mulut</radical> Anda ada <radical>jet</radical> yang menjatuhkan bom <kanji>rasa</kanji>. Setiap kali Anda <kanji>mencicipi</kanji> sesuatu, itu sebenarnya karena aliran kecil terbang ke mulut Anda untuk membombardir Anda dengan rasa.', 'Dan apa yang memiliki <kanji>rasa</kanji> lebih dari sepotong besar <reading>me</reading>at (み)? Anda menyukai daging dan rasanya sama seperti Anda menyukai <kanji>rasa</kanji> jusnya. Begitu banyak hal baik untuk dimasukkan ke dalam mulut Anda!')
    RETURNING id INTO k_812_rasa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '誰', 'siapa', 11, 53, 'Siapa yang akan <radical>mengatakan</radical> <radical>kalkun</radical>? Siapa? <kanji>SIAPA</kanji>???', 'Lalu, ada yang bilang kalkun. "<kanji>Siapa</kanji> yang bilang kalkun? Kamu? Beraninya <reading></reading> (だれ) kamu."')
    RETURNING id INTO k_1837_siapa;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_775_konflik, 'Konflik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_776_hubungan, 'Hubungan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_777_mengirimkan, 'Mengirimkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_777_mengirimkan, 'Memberi tahu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_778_bersama, 'Bersama', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_779_menyukai, 'Menyukai', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_780_menjadi, 'Menjadi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_781_tua, 'Tua', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_782_pangkat, 'Pangkat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_783_rendah, 'Rendah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_784_pertama, 'Pertama', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_785_memisahkan, 'Memisahkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_786_laba, 'Laba', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_786_laba, 'Keuntungan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_786_laba, 'Keuntungan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_787_bekerja_keras, 'Bekerja keras', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_788_tenaga_kerja, 'Tenaga kerja', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_789_takdir, 'Takdir', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_789_takdir, 'Kehidupan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_790_pantai, 'Pantai', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_790_pantai, 'Pesisir', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_791_melepaskan, 'Melepaskan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_792_dahulu_kala, 'Dahulu kala', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_792_dahulu_kala, 'Lama sekali', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_793_melambai, 'Melambai', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_794_menuangkan, 'Menuangkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_795_membina, 'Membina', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_795_membina, 'Mengangkat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_796_menjemput, 'Menjemput', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_797_jari, 'Jari', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_798_gaya_barat, 'Gaya Barat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_798_gaya_barat, 'Laut', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_799_tuhan, 'Tuhan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_799_tuhan, 'Roh', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_800_kedua, 'Kedua', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_801_tingkat, 'Tingkat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_801_tingkat, 'Nilai', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_801_tingkat, 'Pangkat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_802_mengikuti, 'Mengikuti', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_802_mengikuti, 'Mengejar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_803_perang, 'Perang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_803_perang, 'Pertempuran', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_804_bersaing, 'Bersaing', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_805_bagus, 'Bagus', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_806_pencapaian, 'Pencapaian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_806_pencapaian, 'Prestasi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_807_spesial, 'Spesial', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_808_kenyamanan, 'Kenyamanan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_808_kenyamanan, 'Nyaman', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_809_bekerja, 'Bekerja', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_810_pesanan, 'Pesanan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_811_ide, 'Ide', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_812_rasa, 'Rasa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_812_rasa, 'Mencicipi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1837_siapa, 'Siapa', true, true);

  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_775_konflik, 'そう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_775_konflik, 'あらそ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_776_hubungan, 'なか', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_776_hubungan, 'ちゅう', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_777_mengirimkan, 'でん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_777_mengirimkan, 'つた', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_777_mengirimkan, 'つて', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_778_bersama, 'きょう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_778_bersama, 'とも', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_779_menyukai, 'こう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_779_menyukai, 'す', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_779_menyukai, 'この', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_780_menjadi, 'せい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_780_menjadi, 'な', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_780_menjadi, 'じょう', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_781_tua, 'ろう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_782_pangkat, 'い', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_782_pangkat, 'くらい', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_783_rendah, 'てい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_783_rendah, 'ひく', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_784_pertama, 'しょ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_784_pertama, 'はじ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_784_pertama, 'はつ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_784_pertama, 'そ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_784_pertama, 'ぞ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_785_memisahkan, 'べつ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_785_memisahkan, 'わか', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_786_laba, 'り', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_786_laba, 'き', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_787_bekerja_keras, 'ど', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_787_bekerja_keras, 'つと', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_788_tenaga_kerja, 'ろう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_788_tenaga_kerja, 'いたわ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_789_takdir, 'めい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_789_takdir, 'みょう', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_789_takdir, 'いのち', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_790_pantai, 'がん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_790_pantai, 'きし', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_791_melepaskan, 'ほう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_791_melepaskan, 'はな', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_791_melepaskan, 'ほう', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_792_dahulu_kala, 'むかし', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_792_dahulu_kala, 'せき', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_792_dahulu_kala, 'しゃく', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_793_melambai, 'は', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_793_melambai, 'なみ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_794_menuangkan, 'ちゅう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_794_menuangkan, 'そそ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_794_menuangkan, 'さ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_794_menuangkan, 'つ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_795_membina, 'いく', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_795_membina, 'そだ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_795_membina, 'はぐく', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_796_menjemput, 'ひろ', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_796_menjemput, 'しゅう', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_797_jari, 'し', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_797_jari, 'ゆび', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_797_jari, 'さ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_798_gaya_barat, 'よう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_799_tuhan, 'しん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_799_tuhan, 'じん', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_799_tuhan, 'かみ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_800_kedua, 'びょう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_801_tingkat, 'きゅう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_802_mengikuti, 'お', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_802_mengikuti, 'つい', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_803_perang, 'せん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_803_perang, 'たたか', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_803_perang, 'いくさ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_804_bersaing, 'きょう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_804_bersaing, 'けい', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_804_bersaing, 'きそ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_805_bagus, 'りょう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_805_bagus, 'よ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_805_bagus, 'い', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_806_pencapaian, 'こう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_807_spesial, 'とく', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_808_kenyamanan, 'べん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_808_kenyamanan, 'びん', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_808_kenyamanan, 'たよ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_809_bekerja, 'どう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_809_bekerja, 'はたら', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_810_pesanan, 'れい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_811_ide, 'い', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_812_rasa, 'み', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_812_rasa, 'あじ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1837_siapa, 'だれ', 'kunyomi', true, true);

  -- 3. VOCABULARIES
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '売り上げ', 'jumlah-terjual', 11, 54, '<kanji>penjualan</kanji> yang Anda kumpulkan (上げ) adalah <vocabulary>jumlah yang terjual</vocabulary> atau jumlah <vocabulary>penjualan</vocabulary>. Bayangkan grafik naik, yang naik seiring Anda menjual lebih banyak barang.', 'Bacaan untuk 売 adalah bacaan yang Anda pelajari dengan 売る. Pembacaan 上げ sama dengan pembacaan 上げる, yaitu kata yang telah dipelajari sebelumnya. Jika Anda mengetahui dua hal yang berbeda tersebut, Anda seharusnya bisa menggabungkannya menjadi satu kosakata yang mengagumkan.', 'Jumlah Terjual, Penjualan, Hasil')
    RETURNING id INTO v_2817_jumlah_terjual;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '売り切れ', 'terjual-habis', 11, 55, 'Ketika <kanji>jual</kanji>ing <kanji>dipotong</kanji>, itu berarti sesuatu <vocabulary>terjual habis</vocabulary>. Anda akan sering melihat kata ini di toko-toko (atau, mudah-mudahan tidak...) di Jepang. Berhati-hatilah jika Anda mampu!', 'Kata ini menggunakan bacaan kun''yomi untuk kedua kanjinya, tapi kamu sudah mengetahui keduanya sekarang, jadi kamu harus bisa membacanya juga!', 'Terjual habis, Stok Habis')
    RETURNING id INTO v_2818_terjual_habis;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '売り手', 'penjual', 11, 56, 'Ingat bagaimana 手 bisa berarti “pelaku”? Di sini, kita memiliki <kanji>penjual</kanji> <kanji>pelaku</kanji>. Siapakah itu? Itu adalah seseorang yang melakukan penjualan – <vocabulary>penjual</vocabulary> atau <vocabulary>vendor</vocabulary>.

売り手 biasanya digunakan ketika berbicara tentang penjual versus pembeli.', 'Kata ini menggunakan bacaan kun''yomi untuk kedua kanjinya, tapi kamu sudah mengetahui keduanya sekarang, jadi kamu harus bisa membacanya juga! Salah satu petunjuk bahwa ini adalah kata bacaan kun''yomi adalah hiragana di tengahnya. Ini seperti dua kata terpisah yang digabungkan menjadi satu, dan jika sebuah kata berupa kanji tunggal / kanji tunggal dengan hiragana ditempelkan, biasanya itu adalah kun''yomi. Ini seperti dua hal yang digabungkan.', 'Penjual, Penjual')
    RETURNING id INTO v_2819_penjual;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '今夜', 'malam-ini', 11, 57, '<kanji>sekarang</kanji> <kanji>malam</kanji> adalah malam saat ini, alias <vocabulary>malam ini</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Anda belum mempelajari bacaan on''yomi untuk 夜, jadi inilah mnemoniknya:

<vocabulary>Malam ini</vocabulary>, Anda akan pergi ke pertandingan bisbol <read>Ya</reading>nkees (や). Bukan sembarang pertandingan, bukan sembarang malam — Yankees, malam ini.', 'Malam ini, Malam ini')
    RETURNING id INTO v_2890_malam_ini;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '東北', 'tohoku', 11, 58, 'Wilayah <kanji>Timur</kanji> <kanji>Utara</kanji> Jepang disebut <vocabulary>Tohoku</vocabulary>, atau <vocabulary>wilayah Tohoku</vocabulary>. Itu adalah wilayah yang terkena gempa Tohoku tahun 2011. 

Ini juga bisa berarti <vocabulary>wilayah timur laut</vocabulary> ketika berbicara tentang Tiongkok atau Jepang, namun untuk negara lain (dan untuk arah kompas), kita akan menggunakan 北東.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Anda belum melihat bacaan on''yomi untuk 北 (ほく), jadi inilah mnemonik untuk membantu Anda:

Di <vocabulary>Tohoku</vocabulary> ada banyak fokus <reading>hocu</reading> (ほく) yang terjadi. Pada dasarnya, jika Anda berada di timur laut Jepang, berhati-hatilah… Banyak pertapa gunung tinggal di wilayah tersebut, mempraktikkan fokus tipu muslihat mereka yang aneh. Jangan biarkan mereka mengerti.', 'Tohoku, Wilayah Tohoku, Wilayah Timur Laut')
    RETURNING id INTO v_2898_tohoku;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '決心', 'tekad', 11, 59, 'Ketika Anda <kanji>memutuskan</kanji> dengan <kanji>hati</kanji> Anda, Anda memiliki <kosakata>tekad</vocabulary> yang sebenarnya, tidak seperti ketika Anda memutuskan dengan pikiran Anda.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Pastikan Anda memperhatikan つ yang dipersingkat. Jadi, けつ menjadi けっ.', 'Tekad, Resolusi, Pengakuan')
    RETURNING id INTO v_3019_tekad;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '入所', 'penerimaan', 11, 60, 'Anda <kanji>memasuki</kanji> sebuah <kanji>fasilitas</kanji>. Jadi ini adalah <vocabulary>tiket</vocabulary> atau <vocabulary>pintu masuk</vocabulary> Anda ke fasilitas itu. 

入所 untuk memasuki fasilitas atau institusi, biasanya yang namanya diakhiri dengan 所, seperti 研究所 (lembaga penelitian). Ini juga digunakan dalam konteks penjara. Anda mungkin mendapatkan "masuk" ke penjara karena tidak melakukan peninjauan WaniKani, misalnya, setidaknya di negara-negara yang diperintah oleh Crabigators...', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Penerimaan, Pintu masuk, Hukuman penjara, Pengasingan')
    RETURNING id INTO v_3039_penerimaan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '始めに', 'pada-awalnya', 11, 61, 'Ingat bagaimana 始める berarti "memulai sesuatu"? 始め adalah versi kata benda dan berarti "permulaan", seperti awal suatu tindakan atau proses. に menandai suatu titik waktu. Jadi 始めに berarti <kosa kata>di awal</vocabulary>. 

始めに juga bisa berarti <vocabulary>dimulai dengan</vocabulary> atau <vocabulary>dimulai dengan</vocabulary> ketika memperkenalkan tindakan pembuka, seperti 始めに、ウォーミングアップをしましょう (mari kita mulai dengan pemanasan latihan).', 'Bacaannya adalah kun''yomi (lihat semua hiragana itu!) tapi itulah bacaan yang kamu pelajari dengan kata 始める, jadi jangan takut, kamu mengerti!', 'Pada awalnya, Untuk Memulainya, Untuk Memulainya')
    RETURNING id INTO v_3099_pada_awalnya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '本物', 'hal-nyata', 11, 62, '<kanji>yang sebenarnya</kanji> <kanji>sesuatu</kanji> adalah <vocabulary>hal yang nyata</vocabulary>, alias <vocabulary>real deal</vocabulary>. 

Jika Anda mempelajari 本 sebagai <kanji>buku</kanji> Anda juga dapat menganggap kata ini sebagai "buku". Apa isi buku ini? Apakah ini versi asli dari buku tersebut? Apakah ini yang sebenarnya? Jika iya, aku akan membayarmu satu juta.', 'Bacaannya adalah on''yomi plus kun''yomi (kun''yomi adalah 物). Anda telah mempelajari cara membaca kanji 本 dan juga kosakata membaca 物, jadi Anda harus bisa membacanya.', 'Hal Nyata, Kesepakatan Nyata, Artikel Asli')
    RETURNING id INTO v_3108_hal_nyata;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '乗り物', 'kendaraan', 11, 63, 'Anda tahu bahwa 乗り ada hubungannya dengan <kanji>berkuda</kanji> dan 物 adalah <kanji>sesuatu</kanji>. Jadi, apa yang dimaksud dengan "berkuda?" Setidaknya saat ini, hal itu akan menjadi <vocabulary>kendaraan</vocabulary>.', 'Kata ini menggunakan bacaan kun''yomi untuk kedua kanjinya, tapi kamu sudah mengetahui keduanya sekarang, jadi kamu harus bisa membacanya juga!', 'Kendaraan')
    RETURNING id INTO v_3114_kendaraan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '金持ち', 'orang-kaya', 11, 64, 'Saat Anda <kanji>memegang</kanji> <kanji>emas</kanji> Anda adalah <vocabulary>orang kaya</vocabulary>.', 'Apakah Anda ingat kata お金? Ini adalah 金 dalam kata itu. Pembacaan 持ち adalah も yang Anda pelajari dengan 持つ. Jadi, gabungkan かね dari お金 dan 持ち dan Anda akan mendapatkan pembacaan kata ini. Perhatikan bahwa sama seperti お金, Anda juga sering melihatnya dengan awalan kehormatan お di depannya.', 'Orang Kaya, Kaya, Kaya')
    RETURNING id INTO v_3131_orang_kaya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '気持ち', 'merasa', 11, 65, '<kanji>energi</kanji> yang Anda simpan (持つ) di dalam diri Anda adalah <vocabulary>perasaan</vocabulary> Anda. Perasaan seperti apa yang diberikan energi Anda hari ini?

気持ち dapat merujuk pada suasana hati Anda saat ini, emosi tertentu di dalam diri Anda, atau perasaan dan sensasi fisik. Anda mendengarnya dalam frasa seperti 気持ちいい (terasa enak), 気持ちわるい (terasa menjijikkan), atau 気持ちが分かる (Saya mengerti perasaan Anda).', '気 adalah on''yomi dan kamu mempelajarinya dengan kanji. Namun, 持ち adalah kun''yomi, yang dipelajari dengan kata 持つ. Salah satu pembacaan pengecualian yang aneh, tapi ち di akhir 持ち adalah petunjuk bahwa ia menggunakan kun''yomi.', 'Merasa')
    RETURNING id INTO v_3132_merasa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '放送する', 'untuk-menyiarkan-sesuatu', 11, 66, 'Anda akan <kanji>melepaskan</kanji> dan <kanji>mengirimkan</kanji> sesuatu. Bayangkan pesan ini menyebar ke langit kepada semua orang di sekitar Anda. Anda akan <vocabulary>menyiarkan sesuatu</vocabulary> ke seluruh dunia! 

する ada di sana untuk membuat kata benda ini menjadi kata kerja. Tanpa する, itu akan menjadi kata benda "siaran".', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Untuk Menyiarkan Sesuatu')
    RETURNING id INTO v_3149_untuk_menyiarkan_sesuatu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '物語', 'kisah', 11, 67, 'Sebuah <kanji>bahasa</kanji> tentang <kanji>sesuatu</kanji>. Ini membingungkan. Anggap saja seperti seseorang sedang membicarakan sesuatu, apa saja, sungguh. Seseorang yang hanya membicarakan sesuatu adalah seseorang yang bercerita. Jadi, kata ini berarti <vocabulary>tale</vocabulary> atau <vocabulary>story</vocabulary> atau <vocabulary>legend</vocabulary> (bukan Tom Cruise).', 'Kedua kanji tersebut membawa kun''yomi ke sini. Untuk 物, itu adalah もの, yang kamu pelajari dengan kosakata 物. Anda mempelajari kun''yomi untuk 語 dengan kata kerja 語る, namun di sini menjadi がたり karena rendaku, dan り terselip di dalam kanji.

Mungkin Anda juga pernah mendengar kata ものがたり. Itu ada di beberapa nama film dan buku. Jika Anda belum pernah melakukannya, dan Anda merasa bacaan ini sulit untuk diingat, pikirkan sebuah cerita tentang senjata <reading>Gatling</reading> (がたり) terkenal yang berkeliaran di daratan, memotong semua yang ada di jalurnya. Itu legenda yang mengerikan, tapi bagaimana jika itu benar???', 'Kisah, Cerita, Legenda')
    RETURNING id INTO v_3213_kisah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '争う', 'untuk-bersaing', 11, 68, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>konflik</kanji> sehingga kosakatanya berarti <vocabulary>bersaing</vocabulary>, <vocabulary>berdebat</vocabulary>, atau <vocabulary>bertengkar</vocabulary>. Pandangan Anda bertentangan dengan pandangan orang lain sehingga Anda akan bersaing dengan mereka untuk melihat siapa yang benar.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Anda mulai <vocabulary>bersaing</vocabulary> dan <vocabulary>berdebat</vocabulary> dengan seseorang, yang meneriaki Anda: "Kamu <reading>sangat</reading> (あらそ) bodoh!". Anda mungkin ingin membayangkan ini dengan aksen yang membuat Anda lebih dekat dengan pengucapan bahasa Jepang.', 'Untuk Bersaing, Untuk Berdebat, Untuk Bertengkar')
    RETURNING id INTO v_3238_untuk_bersaing;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '戦争', 'perang', 11, 69, 'Anda mengalami <kanji>perang</kanji> dan <kanji>konflik</kanji>. Tentu saja, konflik datang bersamaan dengan perang, jadi kata ini berarti <vocabulary>perang</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Perang')
    RETURNING id INTO v_3239_perang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '競争', 'kompetisi', 11, 70, 'Saat Anda <kanji>bersaing</kanji> hingga mencapai titik <kanji>konflik</kanji>, Anda tahu bahwa orang/entitas ini adalah <vocabulary>pesaing</vocabulary> Anda. Harus mengalahkan kompetisi itu. Misalnya, untuk memenangkan kompetisi, WaniKani memiliki maskot yang dapat memakan semua hewan berbulu kecil lainnya yang dijadikan maskot kompetisi. Kasus ditutup.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kompetisi')
    RETURNING id INTO v_3240_kompetisi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '仲', 'hubungan', 11, 71, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya adalah bacaan kun''yomi karena hanya satu kanji, sendirian, tapi ini adalah bacaan yang Anda pelajari dengan kanji, jadi Anda akan baik-baik saja dan memiliki hubungan yang baik dengan kata ini di masa mendatang.', 'Hubungan, Hubungan')
    RETURNING id INTO v_3242_hubungan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '伝える', 'untuk-menyampaikan', 11, 72, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji sendiri berarti <kanji>mentransmisikan</kanji>, namun 伝える kebanyakan digunakan untuk "mentransmisikan" informasi, perasaan, atau pesan kepada orang lain. Jadi artinya <vocabulary>menyampaikan</vocabulary>, <vocabulary>memberitahukan</vocabulary>, atau <vocabulary>mewariskan</vocabulary>.

Dalam konteks teknis, 伝える juga dapat berarti <vocabulary>to transmit</vocabulary>, dalam artian tembaga mentransmisikan panas atau udara mentransmisikan suara.', 'Anda ingin <vocabulary>menyampaikan</vocabulary> pengetahuan Anda kepada murid magang Anda, sehingga Anda menjadikan mereka <reading>dua</reading> <reading>ta</reading>cos (つた) terbaik yang pernah Anda buat. Mereka hanya ingin Anda <vocabulary>memberi tahu</vocabulary> resepnya, namun Anda yakin menunjukkannya adalah cara yang lebih baik <vocabulary>untuk mewariskan</vocabulary> keterampilan tersebut.', 'Untuk Menyampaikan, Untuk Memberitahu, Untuk Melewati, Untuk Mengirimkan')
    RETURNING id INTO v_3245_untuk_menyampaikan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '共通点', 'poin-umum', 11, 73, 'Kita <kanji>melewati</kanji> <kanji>titik</kanji> ini <kanji>bersama</kanji>. Poin ini adalah <vocabulary>poin umum</vocabulary> kami. Di sinilah ide, filosofi, dan tubuh kita saling berpapasan.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Poin Umum, Fitur Umum, Kesamaan')
    RETURNING id INTO v_3246_poin_umum;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '共同', 'persendian', 11, 74, 'Jika orang bekerja <kanji>bersama</kanji> pada hal yang <kanji>sama</kanji>, mereka sedang mengerjakan proyek <vocabulary>bersama</vocabulary>. Mereka melakukan sesuatu yang <vocabulary>kolaboratif</vocabulary>.

共同 digunakan ketika dua orang atau lebih atau kelompok melakukan sesuatu bersama-sama dengan tujuan atau tanggung jawab <vocabulary>bersama</vocabulary>. 共同作業 (kerja kolaboratif) berarti Anda berbagi tugas dengan orang lain, misalnya, dan 共同生活 (hidup bersama) berarti tinggal bersama dengan seseorang, baik itu pasangan atau teman sekamar.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Persendian, Kolaboratif, Dibagikan')
    RETURNING id INTO v_3247_persendian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '公共', 'publik', 11, 75, 'Ketika <kanji>publik</kanji> berkumpul <kanji>bersama</kanji> Anda memiliki <vocabulary>komunitas</vocabulary> bagus yang terdiri dari <vocabulary>public</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Publik, Masyarakat')
    RETURNING id INTO v_3248_publik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '共有', 'dibagikan', 11, 76, 'Hal-hal yang <kanji>bersama</kanji> <kanji>miliki</kanji> adalah hal-hal yang <vocabulary>dibagikan</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Dibagikan, Kepemilikan Bersama, Kepemilikan Bersama, Membagikan')
    RETURNING id INTO v_3249_dibagikan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '好き', 'menyukai', 11, 77, 'Anda tahu bahwa 好 berarti <kanji>suka</kanji> dan kosakata ini memiliki arti yang sama: <vocabulary>like</vocabulary> atau <vocabulary>love</vocabulary>!

Kata ini merupakan kata sifat dalam bahasa Jepang, jadi terjemahan yang lebih harafiahnya adalah <vocabulary>likable</vocabulary> atau <vocabulary>lovable</vocabulary>. Namun, biasanya terdengar lebih natural untuk menerjemahkannya sebagai kata kerja dalam bahasa Inggris.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Siapa yang <vocabulary>suka</vocabulary> Anda lebih dari siapa pun? Temanmu <reading>Sue</reading>. Jika Anda mengenal seseorang bernama Sue, berpura-puralah Anda menyukainya. Jika tidak, pikirkan orang terkenal yang Anda kenal bernama Sue dan manfaatkan dia, berpura-puralah Anda adalah teman baik yang sangat menyukai satu sama lain.', 'Menyukai, Cinta, Yg menyenangkan, Manis')
    RETURNING id INTO v_3250_menyukai;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '友好', 'persahabatan', 11, 78, 'Jika Anda mempunyai <kanji>teman</kanji> yang <kanji>suka</kanji>, ya, itulah <vocabulary>persahabatan</vocabulary> yang sebenarnya!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Persahabatan')
    RETURNING id INTO v_3251_persahabatan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '成る', 'menjadi', 11, 79, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>menjadi</kanji> sehingga versi kata kerjanya adalah <vocabulary>menjadi</vocabulary>.

Meskipun versi kanjinya perlu diketahui, perlu diketahui bahwa Anda biasanya akan melihat kata kerja ini ditulis dalam hiragana.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Anda mulai <vocabulary>menjadi</vocabulary> sesuatu yang lain. Anda bertransformasi, tetapi Anda tidak yakin akan hal apa. Pertama, Anda mendapatkan sirip... Uh oh, ada sesuatu di dalam air. Kemudian, kamu mendapatkan ekor dan kulit yang kenyal... Hmm, sesuatu yang mirip mamalia laut. Oh, dan kemudian sebuah tanduk besar muncul dari wajahmu. Anda akan menjadi <read>na</reading>rwhal (な).', 'Menjadi')
    RETURNING id INTO v_3252_menjadi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '成功', 'kesuksesan', 11, 80, 'Saat Anda <kanji>menjadi</kanji> <kanji>prestasi</kanji>, Anda mungkin telah memperoleh banyak <vocabulary>kesuksesan</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kesuksesan')
    RETURNING id INTO v_3253_kesuksesan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '老人', 'orang-tua', 11, 81, '<kanji>lansia</kanji> <kanji>orang</kanji> adalah <vocabulary>orang tua</vocabulary> (atau <vocabulary>orang lanjut usia</vocabulary>). Namun, jangan menyebut seseorang sebagai 古い人. 古い digunakan untuk benda, bukan orang. Bersikaplah baik, mereka adalah orang yang lebih tua darimu.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Karena 人 memiliki dua bacaan on''yomi, berikut adalah mnemonik untuk membantu Anda mengingat mana yang harus digunakan:

Setiap <vocabulary>orang tua</vocabulary> memiliki <reading>roe</reading> <reading>jean</reading>s(ろうじん), celana jeans khusus yang diolesi roe yang mereka kenakan saat pergi keluar kota. Beberapa orang lanjut usia memiliki celana jeans telur ikan cod, beberapa memiliki celana jeans telur ikan salmon… Tapi celana jeans telur tofugu (dihiasi dengan telur dari tahu yang berbintik kecil) adalah yang paling modis dari semuanya.', 'Orang Tua, Orang Lanjut Usia')
    RETURNING id INTO v_3254_orang_tua;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '〜位', 'pangkat', 11, 82, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya adalah bacaan on''yomi yang Anda pelajari. Ini mungkin karena Anda akan melihat kata ini melekat pada kata lain, yang menunjukkan peringkat benda itu.', 'Pangkat')
    RETURNING id INTO v_3255_pangkat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '一位', 'tempat-pertama', 11, 83, 'Saat Anda berada di peringkat <kanji>satu</kanji> di <kanji>peringkat</kanji>, Anda berada di <vocabulary>tempat pertama</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Tempat Pertama, Peringkat Pertama')
    RETURNING id INTO v_3256_tempat_pertama;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '首位', 'tempat-pertama', 11, 84, 'Jika Anda berada di <kanji>leher</kanji> <kanji>peringkat</kanji> Anda berada di <vocabulary>tempat pertama</vocabulary>. Pernahkah Anda mendengar ungkapan, "neck and neck" ketika dua orang dalam suatu perlombaan sama-sama sangat dekat dengan posisi pertama? Ingatlah itu dan Anda tidak akan pernah melupakan kata ini.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Anda mempelajari bacaan ini untuk 首 ketika Anda mempelajari 部首, dan bacaan untuk 位 adalah bacaan yang Anda pelajari dengan kanji, jadi Anda seharusnya bisa membacanya sendiri.', 'Tempat Pertama, Posisi Kepala, Posisi Terkemuka, Posisi Pertama')
    RETURNING id INTO v_3257_tempat_pertama;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '低い', 'rendah', 11, 85, 'Ini adalah kanji tunggal dengan い di akhir, artinya Anda tahu itu mungkin kata sifat. Apa bentuk kata sifat dari <kanji>rendah</kanji>? <vocabulary>rendah</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda:

Anda melihat ke bawah dan <vocabulary>rendah</vocabulary> ke tanah adalah seorang pria, menatap Anda. Temanmu juga ada di sana, tapi kamu tidak mengenal pria kecil ini. Teman Anda mengatakan "<reading>He coo''</reading>, he coo," mengacu pada orang yang rendah hati.', 'Rendah, Pendek')
    RETURNING id INTO v_3258_rendah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '最低', 'yang-terendah', 11, 86, '<kanji>paling</kanji> <kanji>rendah</kanji> adalah <vocabulary>yang terendah</vocabulary> atau <vocabulary>minimum</vocabulary>. Itu juga merupakan sebutan untuk sesuatu ketika Anda menganggapnya <vocabulary>yang terburuk</vocabulary> atau sekadar <vocabulary>mengerikan</vocabulary>. Cobalah berteriak ketika Anda merasa muak dengan seseorang atau sesuatu.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Yang Terendah, Paling buruk, Minimal, Tidak menyenangkan, Sangat buruk')
    RETURNING id INTO v_3259_yang_terendah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '初回', 'pertama-kali', 11, 87, '<kanji>pertama</kanji> dari sesuatu yang akan Anda lakukan beberapa atau <kanji>kali</kanji> adalah <vocabulary>pertama kali</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Pertama kali, Pertama kali')
    RETURNING id INTO v_3260_pertama_kali;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '最初', 'yang-pertama', 11, 88, 'Hal <kanji>yang paling</kanji> <kanji>pertama</kanji> adalah <vocabulary>hal yang pertama</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Yang Pertama, Pertama, Awal, Awal')
    RETURNING id INTO v_3261_yang_pertama;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '別の', 'memisahkan', 11, 89, 'Anda tahu 別 berarti <kanji>terpisah</kanji>, dan の di sini menunjukkan bahwa itu digunakan sebagai kata sifat untuk menggambarkan sesuatu. Jadi itu seperti mengatakan "sebuah <kosa kata>terpisah</vocabulary> ______," "sebuah <kosakata>berbeda</vocabulary> ______," atau "<vocabulary>lainnya</vocabulary> ______."', 'Bacaannya sama dengan yang Anda pelajari. Pindah ke 別の漢字, oke?', 'Memisahkan, Berbeda, Lain')
    RETURNING id INTO v_3262_memisahkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '別に', 'tidak-secara-khusus', 11, 90, 'Jika seseorang bertanya apakah kamu ingin lutut <kanji>terpisah</kanji> (に), kamu akan menjawab <vocabulary>tidak terlalu</vocabulary>. Maksud saya, Anda belum pernah memikirkannya, tetapi apakah Anda benar-benar membutuhkan lebih banyak lutut? <vocabulary>Tidak juga</vocabulary>...

Dalam arti pertama ini, 別に sering digunakan sendiri, atau dengan kata kerja atau kata sifat negatif, seperti dalam 別に長くない (tidak terlalu panjang).

Namun, ketika 別に digunakan dengan kata kerja positif, sering kali maknanya adalah <vocabulary>secara terpisah</vocabulary>, atau <vocabulary>di samping</vocabulary>. Lagi pula, ketika Anda harus melakukan sesuatu secara terpisah, Anda harus melakukannya sebagai tambahan terhadap hal lain. Suka mempelajari makna ini selain yang pertama. Sungguh sebuah tugas!', 'Bacaannya hanyalah bacaan yang Anda pelajari dengan kanji. Bagus sekali!', 'Tidak Secara Khusus, Tidak terlalu, Terpisah, Sebagai tambahan')
    RETURNING id INTO v_3263_tidak_secara_khusus;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '別人', 'orang-yang-berbeda', 11, 91, '<kanji>yang terpisah</kanji> <kanji>orang</kanji> adalah seseorang yang berbeda dari dirinya sebelumnya. Aku melihatmu setahun yang lalu dan kamu adalah orang lain. Sekarang Anda menjadi <vocabulary>orang yang berbeda</vocabulary>, dalam arti yang baik! Anda adalah <vocabulary>pria yang telah berubah</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Orang yang Berbeda, Orang yang Berubah, Manusia yang Berubah')
    RETURNING id INTO v_3264_orang_yang_berbeda;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '別々', 'memisahkan', 11, 92, 'Saat Anda mengatakan <kanji>terpisah</kanji> <kanji>terpisah</kanji>, Anda menempatkan sesuatu pada areanya masing-masing. Jadi 別々 berarti <kosa kata>terpisah</vocabulary>. 

Perhatikan bahwa kata ini biasanya digunakan untuk merujuk pada beberapa item terpisah, bukan 別の, yang mengacu pada satu hal terpisah atau berbeda. Kata ini juga banyak digunakan sebagai kata keterangan dengan partikel に yang berarti "secara terpisah".', 'Bacaannya cuma べつ bacaannya lho, dua kali.', 'Memisahkan')
    RETURNING id INTO v_3265_memisahkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '特別', 'spesial', 11, 93, 'Sesuatu yang <kanji>istimewa</kanji> dan <kanji>terpisah</kanji> dari yang lain adalah, ya, <vocabulary>special</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Spesial')
    RETURNING id INTO v_3266_spesial;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '利く', 'untuk-bekerja-dengan-baik', 11, 94, 'Anda tahu kanji berarti <kanji>keuntungan</kanji>. Namun, jika diubah menjadi kata kerja, artinya <kosakata>berfungsi dengan baik</vocabulary>. Jika dipikir-pikir, ketika sesuatu berjalan dengan baik, itu memberi Anda keuntungan.', 'Apa yang berhasil dengan baik? <reading>key</reading> (き) khusus Anda yang dapat membuka potensi siapa pun dan apa pun. Bayangkan memasukkannya ke dalam slot kunci di punggung seseorang. Seseorang yang tidak bisa berbuat apa-apa dan tidak bisa melakukan apa pun kini menjadi anggota masyarakat yang efektif! Gunakan kunci Anda pada hal-hal lain yang tidak efektif dan tunjukkan kepada mereka bahwa segala sesuatu mungkin terjadi!', 'Untuk Bekerja dengan Baik, Menjadi Mungkin, Menjadi Efektif')
    RETURNING id INTO v_3267_untuk_bekerja_dengan_baik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '便利', 'nyaman', 11, 95, 'Ketika Anda <kanji>mendapatkan keuntungan</kanji> dari <kanji>kenyamanan</kanji> Anda, itu berarti Anda memiliki sesuatu yang sangat <vocabulary>nyaman</vocabulary> atau <vocabulary>berguna</vocabulary>. Ingat, Anda bisa mendapat untung dengan cara lain selain uang. Kemudahan ini bisa jadi memberi Anda keuntungan berupa kebahagiaan atau waktu tambahan juga. Semua hal ini sangat berguna untuk dimiliki.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Nyaman, Berguna, Berguna')
    RETURNING id INTO v_3268_nyaman;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '努力', 'usaha-besar', 11, 96, 'Anda <kanji>bekerja keras</kanji> dan menggunakan <kanji>kekuatan</kanji> Anda. Ugh! Betapa sulitnya. Anda benar-benar melakukan <vocabulary>usaha keras</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Usaha Besar, Pengerahan tenaga, Usaha yang Melelahkan')
    RETURNING id INTO v_3269_usaha_besar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '労働', 'kerja-manual', 11, 97, '<kanji>kerja</kanji> <kanji>pekerjaan</kanji> adalah saat Anda melakukan pekerjaan dengan tubuh Anda, bukan? Itulah <vocabulary>kerja kasar</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kerja Manual, Tenaga kerja, Bekerja')
    RETURNING id INTO v_3270_kerja_manual;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '苦労', 'kesulitan', 11, 98, '<kanji>Penderitaan</kanji> dan <kanji>kerja</kanji>. Kedengarannya seperti hal yang tidak ingin ditangani oleh tangan lembut ini. Ini adalah <vocabulary>kesulitan</vocabulary> dan <vocabulary>masalah</vocabulary>. Semoga Anda tidak terlalu sering menggunakan kanji lagi!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kesulitan, Masalah')
    RETURNING id INTO v_3271_kesulitan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '労働者', 'buruh', 11, 99, '<kanji>Seseorang</kanji> yang melakukan <kanji>bekerja</kanji> untuk <kanji>pekerjaan</kanji> adalah <vocabulary>buruh</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Buruh, Pekerja Kerah Biru, Pekerja Tangan')
    RETURNING id INTO v_3272_buruh;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '命', 'kehidupan', 11, 100, 'Kosakata yang dibuat dari satu kanji saja biasanya mengandung setidaknya satu arti dari induk kanjinya. Dalam hal ini, itulah <vocabulary>kehidupan</vocabulary>.', 'Karena kata ini terdiri dari satu kanji, maka sebaiknya menggunakan bacaan kun''yomi. Saat mempelajari kanji, Anda tidak mempelajari bacaan tersebut, jadi inilah mnemonik untuk membantu Anda dengan kata ini:  

Kitab <reading>Henokh</reading> (いのち) telah mewariskan takdirmu dan memberitahumu bagaimana menggunakan <vocabulary>kehidupan</vocabulary>mu. Anda harus membaca kitab Henokh dan mencari tahu apa yang harus Anda lakukan.', 'Kehidupan')
    RETURNING id INTO v_3273_kehidupan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '運命', 'takdir', 11, 101, 'Setiap orang harus <kanji>memikul</kanji> <kanji>takdir</kanji> mereka. Jadi barang apa yang kamu bawa? Itu adalah <vocabulary>takdir</vocabulary> Anda.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Takdir, Takdir')
    RETURNING id INTO v_3274_takdir;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '命令', 'memesan', 11, 102, '<kanji>nasib</kanji> <kanji>perintah</kanji> Anda adalah perintah yang Anda dapatkan dari atas. Anda <vocabulary>diperintahkan</vocabulary>dan <vocabulary>diperintahkan</vocabulary>untuk melaksanakan perintah tersebut.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Memesan, Memerintah')
    RETURNING id INTO v_3275_memesan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '海岸', 'pantai', 11, 103, '<kanji>laut</kanji> <kanji>pantai</kanji> hanyalah itu: <vocabulary>pantai</vocabulary>. Selain itu, bisa juga menjadi <vocabulary>pantai</vocabulary> juga.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Pantai, Pesisir, Pantai laut')
    RETURNING id INTO v_3276_pantai;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '放す', 'untuk-melepaskan', 11, 104, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>melepaskan</kanji> sehingga versi kosakata kata kerjanya adalah <vocabulary>melepaskan</vocabulary>, seperti dalam <vocabulary>membebaskan</vocabulary> atau <vocabulary>melepaskan sesuatu</vocabulary>.

放す sering kali menyiratkan bahwa Anda telah melepaskan sesuatu dengan cara yang memberikan kebebasan untuk bergerak atau pergi ke tempat yang diinginkannya. Bayangkan membiarkan anjing Anda berlari di lapangan — bukan hanya Anda melepaskan tali pengikatnya, tetapi anjing kini bebas berlari sesuka hatinya.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda:

Anda perlu <vocabulary>untuk melepaskan</vocabulary> hewan peliharaan Anda <reading>花</reading> (はな). Ini adalah hewan karnivora yang mengerikan yang Anda pelihara di dalam sangkar di halaman belakang rumah Anda. Kamu pikir itu sangat lucu, tapi tetanggamu bilang itu membuat mereka takut, jadi kamu perlu <vocabulary>membebaskan</vocabulary> kekasihmu 花. Mudah-mudahan ia tidak memakan siapa pun dalam perjalanan kembali ke alam liar.', 'Untuk Melepaskan, Untuk Membebaskan, Untuk Membiarkan Sesuatu Pergi')
    RETURNING id INTO v_3277_untuk_melepaskan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '開放する', 'untuk-membuka-sesuatu', 11, 105, 'Saat Anda <kanji>membuka</kanji> lalu <kanji>melepaskan</kanji>, katakanlah, sebuah pintu, Anda membukanya agar semua orang bisa masuk. Itu sebabnya artinya <vocabulary>membuka sesuatu</vocabulary> atau <vocabulary>membuka sesuatu</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Untuk Membuka Sesuatu, Untuk Melempar Sesuatu Terbuka, Untuk Membuka Sesuatu Kepada Umum')
    RETURNING id INTO v_3278_untuk_membuka_sesuatu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '昔', 'dahulu-kala', 11, 106, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna. Omong-omong, ini cara yang bagus untuk memulai cerita: 昔々に… (Dahulu kala).', 'Bacaannya sama dengan yang Anda pelajari dengan kanji. むかし terdengar seperti bacaan kun''yomi, bukan? Ini sangat panjang.', 'Dahulu kala, Lama sekali')
    RETURNING id INTO v_3279_dahulu_kala;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '電波', 'penerimaan', 11, 107, '<kanji>listrik</kanji> <kanji>gelombang</kanji> adalah gelombang listrik yang merambat di udara. Ada banyak kata yang dapat Anda gunakan untuk mendeskripsikan hal ini, namun yang paling mudah adalah <vocabulary>reception</vocabulary> (seperti penerimaan di ponsel Anda, misalnya).

Arti lain yang lebih teknis adalah <vocabulary>gelombang radio</vocabulary> dan <vocabulary>gelombang elektromagnetik</vocabulary>. Yang mana yang Anda suka terserah Anda, tetapi penerimaan akan menjadi arti paling umum di jalan. Untungnya orang-orang di Jepang tidak memiliki AT&T, jika tidak, Anda akan lebih sering mendengar kata ini…', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.は dari 波 rendakus hingga ぱ, jadi berhati-hatilah. Mungkin <reading>pa</reading> Anda yang mendapat sambutan buruk setiap kali Anda mencoba meneleponnya?', 'Penerimaan, Gelombang Radio, Gelombang Elektromagnetik')
    RETURNING id INTO v_3280_penerimaan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '注ぐ', 'untuk-menuangkan', 11, 108, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>menuangkan</kanji> jadi versi kosakata kata kerjanya adalah <vocabulary>to pour</vocabulary>.', 'Kata kerja ini menggunakan bacaan kun''yomi yang belum Anda pelajari, jadi inilah mnemonik untuk membantu Anda mengingatnya:

Setiap kali Anda mencoba <vocabulary>menuangkan</vocabulary> sesuatu, Anda melakukan pekerjaan <reading>biasa saja</reading> (そそ). Apa pekerjaan yang biasa-biasa saja? Bayangkan saja Anda selalu menumpahkan sedikit setiap kali menuang. Tidak banyak, hanya sedikit saja. Namun dibandingkan dengan kebanyakan orang yang tidak menumpahkan setetes pun, penuangan Anda hanya bisa digambarkan biasa saja.', 'Untuk Menuangkan')
    RETURNING id INTO v_3281_untuk_menuangkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '注意', 'peringatan', 11, 109, 'Saat Anda <kanji>menuangkan</kanji> <kanji>ide</kanji> Anda ke dalam sesuatu, Anda banyak memikirkannya. Anda sangat memperhatikan <vocabulary>perhatian</vocabulary> dan menggunakan <vocabulary>hati-hati</vocabulary>. Anda akan melihat ini di banyak tanda <vocabulary>peringatan</vocabulary> yang menandai hal-hal berbahaya di Jepang, jadi pastikan untuk memperhatikannya!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Peringatan, Perhatian, Peringatan')
    RETURNING id INTO v_3282_peringatan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '注文', 'memesan', 11, 110, 'Anda <kanji>menuangkan</kanji> <kanji>tulisan</kanji> ke dalam formulir. Anda mengisi formulir ini untuk <vocabulary>memesan</vocabulary> sesuatu yang baru untuk Anda sendiri. Ini adalah <vocabulary>permintaan</vocabulary> formal untuk mendapatkan barang baru ini (bayangkan itu adalah sesuatu yang ingin Anda pesan saat ini, dan bayangkan diri Anda memesannya dengan menuangkan tulisan ke formulir pemesanan).', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Anda mempelajari dua bacaan on''yomi yang berbeda untuk 文, jadi inilah mnemonik untuk membantu Anda mengingat mana yang akan digunakan:

Berkat internet, saat ini Anda bisa <vocabulary>memesan</vocabulary> apa saja — bahkan <reading>mon</reading>ster (もん). Di masa lalu orang harus berburu monster, tetapi sekarang Anda dapat memesan monster secara online dengan satu klik. Mengapa Anda memesan monster? Ya, Amazon sedang mengadakan penjualan, jadi…', 'Memesan, Meminta')
    RETURNING id INTO v_3283_memesan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '集中する', 'untuk-berkonsentrasi', 11, 111, 'Anda <kanji>mengumpulkan</kanji> dan fokus pada <kanji>tengah</kanji>. Benar-benar memperbesarnya. Ketika Anda melakukan ini, Anda berkonsentrasi pada titik ini, sehingga membuat arti dari kata <vocabulary>berkonsentrasi</vocabulary> atau <vocabulary>to focus</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Untuk Berkonsentrasi, Untuk Fokus')
    RETURNING id INTO v_3284_untuk_berkonsentrasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '育つ', 'untuk-dibangkitkan', 11, 112, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>menaikkan</kanji> jadi versi vocab verbanya berarti <vocabulary>dibangkitkan</vocabulary>. 

P.S. Kata ini ditujukan ketika Anda sedang dibesarkan, bukan ketika Anda membesarkan seseorang. Itulah <vocabulary>育てる</vocabulary>. Anda akan mempelajarinya nanti.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Ketika Anda dibesarkan, Anda dibesarkan sepenuhnya dengan <reading>soda</reading> (そだ). Hanya itu yang kamu minum. Tanpa air, tanpa jus... hanya berton-ton soda. Bayangkan ini.', 'Untuk Dibangkitkan, Untuk Dibesarkan, Untuk Tumbuh')
    RETURNING id INTO v_3285_untuk_dibangkitkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '教育', 'pendidikan', 11, 113, '<kanji>Mengajar</kanji> dan <kanji>mengasuh</kanji>. Itulah yang seharusnya dilakukan oleh <vocabulary>education</vocabulary> Anda.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Pendidikan')
    RETURNING id INTO v_3286_pendidikan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '拾う', 'untuk-mengambil-sesuatu', 11, 114, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>mengambil</kanji> jadi versi kosakata kata kerjanya adalah <vocabulary>to pick Something up</vocabulary>.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji. Bagus sekali!', 'Untuk Mengambil Sesuatu, Untuk Menemukan Sesuatu, Untuk Mengumpulkan Sesuatu')
    RETURNING id INTO v_3287_untuk_mengambil_sesuatu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '指す', 'untuk-menunjuk', 11, 115, 'Kanji berarti <kanji>jari</kanji>. Jadi, jika Anda "menjari" sesuatu, apa yang Anda lakukan? Anda menunjuk. Itu sebabnya kata ini berarti <vocabulary>to point</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda:

Anda menunjuk pada sesuatu karena ketakutan. Itu adalah <reading>gergaji</reading> (さ). Masalahnya, Anda menunjuk gergaji ini dengan jari yang hilang. Itu hanya memotong jari Anda dan Anda panik, mencoba menunjuk dengan jari yang bukan jari Anda.', 'Untuk Menunjuk, Untuk Menunjuk, Untuk Menunjukkan, Untuk Merujuk')
    RETURNING id INTO v_3288_untuk_menunjuk;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '指', 'jari', 11, 116, 'Kanji dan kata-katanya hampir sama persis. Satu-satunya perbedaan adalah bahwa kata ini dapat berarti <vocabulary>finger</vocabulary> atau <vocabulary>toe</vocabulary>. Apa itu jari kaki selain jari kecil yang bisa berjalan?', 'Karena kata ini terdiri dari satu kanji, kemungkinan besar menggunakan bacaan kun''yomi. Anda tidak mempelajari bacaan ini, jadi inilah mnemonik untuk membantu Anda mengingat: 

<vocabulary>jari</vocabulary> apa yang paling sering Anda gunakan? Tentu saja untuk menunjuk! Bayangkan mendatangi orang-orang dan berkata, "Kamu akan menjadi apa (ゆび) saat kamu besar nanti?" Arahkan jari Anda ke orang berikutnya, "Kamu mau jadi apa?" Teruskan sampai Anda hanya berkata, "Kamu jadi? Kamu jadi?" dengan jarimu keluar.', 'Jari, Kaki')
    RETURNING id INTO v_3289_jari;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '指定する', 'untuk-menunjuk', 11, 117, 'Saat Anda <kanji>menentukan</kanji> dan menggunakan <kanji>jari</kanji> Anda untuk menunjuk seseorang atau sesuatu, Anda akan <vocabulary>menunjuk</vocabulary> mereka. Bayangkan saja diri Anda menentukan siapa yang terbaik untuk pekerjaan itu lalu menunjuk dengan jari Anda. Itulah orang yang akan Anda tunjuk.する di akhir membuatnya menjadi kata kerja, jadi <vocabulary>指定</vocabulary> akan menjadi "janji temu" atau "penunjukan" atau semacamnya. Keren cara kerjanya.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Untuk Menunjuk, Untuk Menugaskan, Untuk Menunjuk, Untuk Menentukan')
    RETURNING id INTO v_3291_untuk_menunjuk;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '洋服', 'pakaian', 11, 118, '<kanji>Pakaian gaya Barat</kanji> <kanji>Pakaian</kanji> hanyalah <vocabulary>Pakaian Barat</vocabulary> (atau <vocabulary>Pakaian gaya Barat</vocabulary>). Namun saat ini, karena orang Jepang selalu memakai pakaian Barat, kami menggunakannya hanya untuk mengartikan <vocabulary>pakaian</vocabulary>. Kami membicarakan hal-hal selain kimono, dll.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Pakaian, Pakaian Barat, Pakaian Gaya Barat')
    RETURNING id INTO v_3293_pakaian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '洋室', 'kamar-bergaya-barat', 11, 119, '<kanji>Ruang</kanji> gaya Barat</kanji> adalah <vocabulary>ruangan gaya Barat</vocabulary>. Kita berbicara tentang ruangan yang tidak diisi dengan tikar tatami. Ada baiknya mengetahui kata ini jika Anda menginap di hotel dan lebih memilih 洋室 dengan tempat tidur daripada 和室 dengan futon dan tatami.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kamar Bergaya Barat')
    RETURNING id INTO v_3296_kamar_bergaya_barat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '神', 'tuhan', 11, 120, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Karena kata ini terdiri dari satu kanji, maka sebaiknya menggunakan bacaan kun''yomi. Saat mempelajari kanji, Anda tidak mempelajari bacaan tersebut, jadi inilah mnemonik untuk membantu Anda dengan kata ini: 

Tahukah Anda kata "Kamikaze"? Juga, apakah Anda ingat kata 風 dari level sebelumnya? Kamikaze berarti "angin ilahi" atau "angin ilahi". Jika Anda mengetahui kata "Kamikaze", Anda dapat menerapkannya pada satu kata ini, yang berarti "tuhan" atau "dewa". Gunakan pengetahuan Anda sebelumnya untuk mengingat bacaan ini.', 'Tuhan, Dewa')
    RETURNING id INTO v_3297_tuhan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '神道', 'shinto', 11, 121, '<kanji>jalan</kanji>/<kanji>jalan</kanji> <kanji>dewa</kanji>, seperti yang mungkin bisa Anda tebak, adalah agama besar di Jepang. Ada dua, dan saya akan memberi Anda petunjuk, yang ini bukan agama Buddha (mungkin ada kanji untuk Buddha di dalamnya, bukan?). Jadi apa yang besar lainnya? Itu adalah <kosa kata>Shinto</vocabulary>. Jika Anda kesulitan mengingat ini karena Anda belum pernah mendengarnya sebelumnya, langsung saja ke bacaannya. Membaca akan membantu.', 'Pembacaannya agak miring. 神 seharusnya tidak menjadi masalah. 道 di sisi lain hampir sama dengan yang kamu pelajari (どう) tapi sekarang menjadi とう karena beberapa alasan. Mungkin para dewa mengambil dakuten untuk membuatnya とう, siapa tahu. Yang saya tahu adalah yang terbaik adalah tidak mempertanyakan dewa-dewa tersebut. Namun, jika Anda sudah mengetahui Shinto dalam bahasa Inggris, bacaan ini seharusnya sangat mudah. Jika belum, mungkin Anda bisa menggunakan bacaan ini untuk membantu Anda mengingat agama Shinto.', 'Shinto, Shintou')
    RETURNING id INTO v_3298_shinto;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '神社', 'kuil-shinto', 11, 122, '<kanji>Dewa</kanji> <kanji>perusahaan</kanji>... anggap ini sebagai "''perusahaan'' apa yang melakukan pekerjaan dewa?" Jawabannya mungkin adalah kuil. Dalam hal ini <vocabulary>Kuil Shinto</vocabulary> karena しん di 神.', 'Tapi tunggu! 神 dibaca じん pada kata ini karena alasan tertentu. Sialan dewa-dewa itu, yang selalu main-main, menambah dakuten. Mungkin ini bisa membantu: Bayangkan diri Anda berada di kuil Shinto. Anda berdoa kepada para dewa, meminta makanan. Dari langit turun hujan <reading>jahe</reading> (じんじゃ). Anda dilempari dengan hal itu dan tidak yakin apakah Anda harus senang atau kesal.', 'Kuil Shinto, Kuil')
    RETURNING id INTO v_3299_kuil_shinto;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '秒', 'kedua', 11, 123, 'Kanji dan kata-katanya sama persis. Artinya, keduanya juga memiliki arti yang sama - yaitu satuan waktu, <vocabulary>detik</vocabulary>.', 'Pembacaannya sama seperti yang Anda pelajari dengan kanji. Mungkin karena biasanya dikaitkan dengan hal lain, seperti angka, membuatnya lebih mirip kata jukugo. Bagaimanapun, Anda hanya perlu <vocabulary>detik</vocabulary> untuk mempelajari bacaan ini, karena Anda seharusnya sudah mengetahuinya.', 'Kedua')
    RETURNING id INTO v_3300_kedua;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '高級', 'kelas-tinggi', 11, 124, 'Item <kanji>tinggi</kanji> <kanji>kelas</kanji> sebenarnya hanyalah item <vocabulary>kelas tinggi</vocabulary> atau <vocabulary>kelas tinggi</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kelas Tinggi, Kelas tinggi, Tingkat Tinggi')
    RETURNING id INTO v_3301_kelas_tinggi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '初級', 'tingkat-pemula', 11, 125, '<kanji>level</kanji> pertama</kanji> dari sesuatu adalah <vocabulary>level pemula</vocabulary>. Bandingkan ini dengan 中級 dan 上級 (vocab dari level ini) untuk mendapatkan pemahaman yang lebih lengkap.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Tingkat Pemula, Tingkat Dasar, Tingkat Awal')
    RETURNING id INTO v_3302_tingkat_pemula;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '中級', 'tingkat-menengah', 11, 126, 'Sesuatu di <kanji>menengah</kanji> <kanji>level</kanji> atau <kanji>kelas</kanji> berada pada <vocabulary>level menengah</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Tingkat Menengah, Peringkat Menengah, Kelas Menengah')
    RETURNING id INTO v_3303_tingkat_menengah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '上級', 'tingkat-lanjutan', 11, 127, 'Saat Anda berada di <kanji>di atas</kanji> <kanji>level</kanji>, Anda berada di <vocabulary>level lanjutan</vocabulary>. Ini mengacu pada hal-hal seperti kemahiran berbahasa Jepang, atau hal-hal seperti itu.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Tingkat Lanjutan, Kelas tinggi, Kelas Lanjutan, Tingkat Tinggi')
    RETURNING id INTO v_3304_tingkat_lanjutan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '追う', 'untuk-mengikuti', 11, 128, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>mengikuti</kanji> jadi versi kata kerjanya adalah <vocabulary>to follow</vocabulary> (juga <vocabulary>to Chase</vocabulary>, karena ketika Anda mengikuti sesuatu, Anda juga mengejarnya).', 'Anda sudah mempelajari bacaan ini, jadi Anda harus tahu cara membaca kata ini!', 'Untuk Mengikuti, Untuk Mengejar')
    RETURNING id INTO v_3305_untuk_mengikuti;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '戦い', 'pertempuran', 11, 129, 'Jangan biarkan kata ini membingungkan Anda. Mungkin diakhiri dengan い, tapi itu bukan kata sifat, melainkan kata benda. Lagipula, tidak ada aturan dalam perang. Kata ini menggambarkan apa yang terjadi dalam <kanji>perang</kanji>. Hal-hal tersebut adalah <vocabulary>pertempuran</vocabulary>, <vocabulary>fight</vocabulary>s, dan <vocabulary>conflict</vocabulary>s.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda:

Dalam <vocabulary>pertempuran</vocabulary> yang sengit, selalu ada banyak kerusakan tambahan. Salah satu benda yang hancur adalah mobil Anda. Tapi Anda tidak bisa berbuat apa-apa, ini waktunya pertempuran! Jadi Anda melambaikan tangan ke mobil Anda sambil berkata, "<reading>Ta-ta ca</reading>r (たたか)!" saat Anda meninju wajah orang brengsek itu.', 'Pertempuran, Bertarung, Konflik')
    RETURNING id INTO v_3306_pertempuran;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '作戦', 'taktik', 11, 130, 'Saat Anda <kanji>membuat</kanji> <kanji>perang</kanji>, Anda membangunnya seperti Anda membangun sebuah bangunan. Anda harus membuat <vocabulary>strategi</vocabulary>, Anda harus membuat rencana, Anda harus menghasilkan <vocabulary>taktik</vocabulary> yang hebat untuk <vocabulary>operasi</vocabulary> Anda.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Taktik, Strategi, Operasi')
    RETURNING id INTO v_3307_taktik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '戦車', 'tangki', 11, 131, '<kanji>perang</kanji> <kanji>mobil</kanji> mungkin sedikit lebih berbahaya daripada Honda yang Anda kendarai. Tidak, mobil perang adalah <vocabulary>tank</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Tangki')
    RETURNING id INTO v_3308_tangki;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '戦場', 'medan-perang', 11, 132, '<kanji>perang</kanji> <kanji>lokasi</kanji> adalah <vocabulary>medan perang</vocabulary>. Di situlah peperangan terjadi.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Medan perang, Medan perang')
    RETURNING id INTO v_3309_medan_perang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '競う', 'untuk-bersaing', 11, 133, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>bersaing</kanji> jadi versi vocab verbanya berarti <vocabulary>bersaing</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda:

Anda benar-benar memiliki <vocabulary>untuk bersaing</vocabulary> untuk <reading>key so</reading>ap (きそ). Saat ini semua orang ingin kunci mereka sebersih mungkin, dan sabun khusus kunci yang mereka gunakan cukup sulit didapat. Kapan pun persediaannya tersedia lagi, orang-orang mencoba bersaing untuk mendapatkannya. Bayangkan saja semua pembeli berebut sabun utama…', 'Untuk Bersaing')
    RETURNING id INTO v_3310_untuk_bersaing;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '良い', 'bagus', 11, 134, 'Ini adalah kanji tunggal dengan い di akhir, artinya Anda tahu itu mungkin kata sifat. Apa bentuk kata sifat dari <kanji>baik</kanji>? Ini juga <vocabulary>bagus</vocabulary>.', 'Karena kata ini terdiri dari satu kanji, kemungkinan besar menggunakan bacaan kun''yomi. Anda tidak mempelajari bacaan ini, jadi inilah mnemonik untuk membantu Anda mengingat:

Cara <vocabulary>baik</vocabulary> untuk menghabiskan waktu adalah dengan <reading>yo</reading>-yo (よ). Tapi lebih baik menjadi yo-yo yang bagus. Yang buruk akan hancur begitu saja.

Perhatikan bahwa よい adalah cara yang lebih formal atau sastra untuk mengatakan "baik", yang lebih umum adalah いい. Untuk membedakan bacaan yang berbeda, versi terakhir biasanya ditulis hanya dalam kana juga!', 'Bagus')
    RETURNING id INTO v_3311_bagus;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '特に', 'khususnya', 11, 135, 'Sesuatu menuju (に) <kanji>khusus</kanji>. Hal itu <vocabulary>terutama</vocabulary> spesial, bukan begitu?', 'Bacaannya sama dengan bacaan yang Anda pelajari untuk kanji ini.', 'Khususnya, Khususnya')
    RETURNING id INTO v_3313_khususnya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '不便', 'tidak-nyaman', 11, 136, 'Sesuatu yang <kanji>tidak</kanji> <kanji>kenyamanan</kanji> adalah <vocabulary>tidak nyaman</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Tidak nyaman, Tidak Nyaman')
    RETURNING id INTO v_3314_tidak_nyaman;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '便所', 'kamar-kecil', 11, 137, '*Ahem.* Ini adalah <kanji>kenyamanan</kanji> <kanji>fasilitas</kanji>. Tempat apa yang lebih nyaman untuk dikunjungi? Anda tahu, untuk berjaga-jaga? Itu adalah <vocabulary>toilet</vocabulary>. Anda juga bisa menyebutnya <vocabulary>kamar mandi</vocabulary>, <vocabulary>toilet</vocabulary>, toilet, atau fasilitas.

Kata ini bersifat biasa-biasa saja dan sering kali terdengar kasar, jadi Anda biasanya tidak melihatnya di papan tanda resmi atau mendengarnya dalam percakapan sopan. Ini perlu diketahui sehingga Anda dapat memahaminya dalam percakapan dan tulisan biasa.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Hati-hati dengan rendaku.', 'Kamar kecil, Kamar mandi, Toilet')
    RETURNING id INTO v_3315_kamar_kecil;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '働く', 'untuk-bekerja', 11, 138, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>bekerja</kanji>, dan versi kata kerjanya berarti <vocabulary>bekerja</vocabulary>, <vocabulary>to labor</vocabulary>, dan terkadang <vocabulary>to commit</vocabulary> (kejahatan).', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: Jika Anda sama gilanya dengan <reading>hatter</reading> Anda harus <vocabulary>bekerja</vocabulary> sangat keras untuk mendapatkan kembali kewarasan Anda. Anda tahu The Hatter dari Alice in Wonderland? Bayangkan betapa kerasnya dia harus bekerja untuk dianggap "normal".', 'Untuk Bekerja, Untuk Buruh, Untuk Berkomitmen')
    RETURNING id INTO v_3316_untuk_bekerja;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '意見', 'pendapat', 11, 139, '<kanji>ide</kanji> yang <kanji>lihat</kanji> di kepala Anda adalah <vocabulary>opini</vocabulary> Anda. Seperti yang pernah dikatakan pria itu... "Itu seperti, 意見mu, kawan."', 'Pembacaannya semua on''yomi, artinya 意 baik-baik saja. On''yomi (けん) 見 adalah bacaan yang tidak Anda pelajari dengan kanji karena kurang berguna, tetapi Anda harus mengetahuinya di sini. Anda pernah melihatnya dengan 発見 beberapa level yang lalu, jadi itu akan membantu. Namun, berikut ini mnemonik untuk membantu Anda mengingat:

Dalam hal ini, coba pikirkan bagaimana <reading>Ken</reading> sang samurai mempunyai <vocabulary>opini</vocabulary> dalam segala hal. Ken adalah orang yang sok tahu segalanya, dan sebaiknya Anda menyetujui pendapatnya. Bagaimanapun juga, dia seorang samurai!', 'Pendapat, Melihat')
    RETURNING id INTO v_3317_pendapat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '意味', 'arti', 11, 140, '<kanji>rasa</kanji> dari sebuah <kanji>ide</kanji>, apakah itu? Bayangkan diri Anda menjilat sebuah ide untuk mencari tahu seperti apa rasanya. Menurut Anda apa yang akan Anda cicipi? Mungkin <vocabulary>arti</vocabulary> dari ide tersebut.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Arti')
    RETURNING id INTO v_3318_arti;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '味', 'mencicipi', 11, 141, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Karena kata ini terdiri dari satu kanji, maka sebaiknya menggunakan bacaan kun''yomi. Saat mempelajari kanji, Anda tidak mempelajari bacaan tersebut, jadi inilah mnemonik untuk membantu Anda dengan kata ini: 

Anda mungkin memiliki kemampuan untuk <vocabulary>mencicipi</vocabulary> sesuatu sekarang, tapi tunggu saja sampai Anda mencapainya di <reading>usia</reading> (あじ). Anda akan menemukan bahwa rasa dan citarasa yang dulu Anda sukai akan menjadi hambar, dan Anda akan membutuhkan banyak Sriracha untuk membuat rasanya lebih enak.', 'Mencicipi, Rasa')
    RETURNING id INTO v_3319_mencicipi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '安売り', 'jual-murah', 11, 142, 'Saat Anda <kanji>menjual</kanji> sesuatu yang <kanji>murah</kanji>, Anda menjualnya dengan <vocabulary>diskon</vocabulary>. Alternatifnya, Anda dapat mengingat kata ini sebagai <vocabulary>jual murah</vocabulary> atau <vocabulary>bargain sale</vocabulary>. Ini adalah penawaran bagus!', 'Hiragana di akhir mengisyaratkan bahwa bacaan tersebut adalah bacaan kun''yomi. Gunakan ingatan Anda tentang 安い dan 売る untuk membantu Anda mengingat cara membaca ini.', 'Jual Murah, Diskon, Penjualan Tawar-menawar, Penjualan')
    RETURNING id INTO v_3456_jual_murah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '仕返し', 'menjadi-genap', 11, 143, 'Saat Anda <kanji>mengembalikan</kanji> <kanji>perbuatan</kanji> orang lain, Anda melakukannya untuk <vocabulary>membalas</vocabulary> (entah itu hal yang baik atau jahat).', 'Pembacaannya agak aneh, nih. Anda mendapat bacaan on''yomi... Anda seharusnya baik-baik saja dengan itu. Namun, 返し mendapat bacaan kun''yomi, yang merupakan bacaan yang Anda lihat dengan kata 返す di level 9. Anda dapat mengetahui bahwa bagian ini menggunakan bacaan kosakata kun''yomi karena ada hiragana yang menyertainya. Ingatlah untuk membedakan dua bagian kata tersebut untuk mengingat bacaannya.', 'Menjadi Genap, Kembali ke, Pembalasan, Pembalasan dendam')
    RETURNING id INTO v_3482_menjadi_genap;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '返る', 'untuk-dikembalikan', 11, 144, 'Mudah-mudahan Anda mengetahui kata 返す, yang berarti "mengembalikan" (misalnya, Anda melakukan tindakan langsung mengembalikan sesuatu). Sebaliknya, kata ini adalah versi di mana sesuatu baru saja dikembalikan (dan Anda tidak melakukan tindakan mengembalikannya). Gunakan る untuk membantu Anda mengingat ini. る Kanguru dikembalikan padamu. Anda tidak melakukan pengembalian apa pun, itu terjadi begitu saja atau orang lain yang melakukannya. Itu sebabnya kata ini berarti <vocabulary>dikembalikan</vocabulary>.

Perhatikan bahwa kata ini sering digabungkan dengan くる (datang), yang memperkuat aspek bahwa ada sesuatu yang akan kembali kepada Anda.', 'Bacaannya sama dengan 返す, asal kamu tahu, kamu bisa menerapkannya di sini untuk mempelajari bacaan kata ini juga.', 'Untuk Dikembalikan, Untuk Kembali, Untuk Kembali')
    RETURNING id INTO v_3490_untuk_dikembalikan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '乗り場', 'daerah-asrama', 11, 145, 'Apa itu <kanji>naik</kanji> <kanji>lokasi</kanji>? Itu adalah <vocabulary>area asrama</vocabulary>! Kata ini digunakan secara luas untuk merujuk pada tempat mana pun Anda menaiki transportasi, seperti <vocabulary>halte bus</vocabulary>, <vocabulary>halte taksi</vocabulary>, atau <vocabulary>peron kereta</vocabulary>.', 'Kata ini menggunakan bacaan kun''yomi. Anda tidak mempelajari pembacaan kun''yomi untuk 場 dengan kanji, jadi inilah mnemonik untuk membantu Anda mengingatnya:

Di <vocabulary>area naik bus</vocabulary>, Anda <reading>baa</reading> (ば) ke sopir bus untuk menanyakan apakah ini bus yang tepat. Anda berada di negara yang hanya dihuni oleh domba, tapi untungnya Anda sudah melatih bahasa Sheepan Anda dengan cukup baik sehingga bisa mengetahui petunjuk arah di <vocabulary>halte bus</vocabulary>, <vocabulary>taksi taksi</vocabulary>, dan <vocabulary>peron kereta</vocabulary>.', 'Daerah Asrama, Halte Bus, Tempat Taksi, Peron Kereta Api')
    RETURNING id INTO v_3498_daerah_asrama;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '使い方', 'cara-menggunakan', 11, 146, '使う berarti "menggunakan", bukan? Nah, <kanji>cara</kanji> menggunakan sesuatu disebut juga <vocabulary>cara menggunakan</vocabulary> itu. 

Anda akan melihatnya pada petunjuk yang menjelaskan cara menggunakan sesuatu, misalnya, atau Anda dapat menggunakannya untuk membicarakan <kosakata>cara</vocabulary> seseorang dalam waktu, uang, dan sumber daya lainnya.', 'Kata ini menggunakan bacaan kun''yomi untuk kedua kanjinya. Anda mempelajari pembacaan つか dengan 使う, sedangkan pembacaan かた untuk 方 adalah pembacaan yang Anda pelajari dengan kata-kata "cara melakukan" lainnya seperti 作り方 dan 読み方.', 'Cara Menggunakan, Cara Menggunakan')
    RETURNING id INTO v_3499_cara_menggunakan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '仕事', 'pekerjaan', 11, 147, 'Anda tahu 事 berarti "kejadian", tetapi bisa juga berarti "sesuatu". Jadi ketika Anda <kanji>melakukan</kanji> <kanji>sesuatu</kanji> sepanjang hari, apa yang mungkin Anda lakukan? Sebuah <kosakata>pekerjaan</vocabulary>! Semua pekerjaan sebenarnya hanyalah melakukan sesuatu.

Sama seperti "job" dalam bahasa Inggris, 仕事 dapat merujuk pada <vocabulary>occupation</vocabulary> spesifik seseorang, <vocabulary>work</vocabulary> secara umum, atau pada tugas tertentu tergantung pada konteksnya.', 'Kata ini menggunakan bacaan on''yomi untuk 仕 dan bacaan kun''yomi untuk 事. Harap dicatat bahwa 事 menggunakan bacaan こと, yang tidak Anda pelajari dengan kanji, tetapi Anda sudah menemukannya sekali atau dua kali sekarang, dan karena cara kerja rendaku, itu diubah menjadi bersuara ごと.', 'Pekerjaan, Pekerjaan, Bekerja')
    RETURNING id INTO v_3500_pekerjaan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '負け犬', 'pecundang', 11, 148, 'Mudah-mudahan Anda sudah menemukan 負ける sekarang, yang artinya "kalah". Jadi, Anda dapat mengetahui bahwa kata ini berarti "anjing yang kalah". Ya, menyebut seseorang anjing tidaklah baik, jadi Anda mungkin hanya menyebut mereka <vocabulary>pecundang</vocabulary>.', 'Bacaannya kun''yomi, tapi Anda harus familiar dengan 負ける dan tentu saja 犬 dengan cukup baik untuk mempelajari bacaannya di sini.', 'Pecundang')
    RETURNING id INTO v_3502_pecundang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '勝ち', 'kemenangan', 11, 149, 'Mudah-mudahan Anda sudah melihat 勝つ sekarang, yang artinya "menang". Ini adalah versi nominalnya. Jadi, apa versi kata benda dari "menang?" Itu adalah <vocabulary>kemenangan</vocabulary> atau <vocabulary>kemenangan</vocabulary>.', 'Bacaannya berasal dari 勝つ. Jadi selama Anda memahami bacaan itu, Anda harus bisa membaca yang ini juga.', 'Kemenangan, Menang, Sebuah Kemenangan, Kemenangan')
    RETURNING id INTO v_3504_kemenangan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '苦しむ', 'menderita', 11, 150, 'Anda sudah diperkenalkan dengan kata 苦しい. Kata itu berarti menyakitkan, atau menyiksa. Jadi, jika Anda mengubahnya menjadi kata kerja, Anda harus <vocabulary>menderita</vocabulary> atau <vocabulary>berjuang</vocabulary>.', 'Bacaannya berasal dari 苦しい, jadi selama Anda menguasai kata itu, kata ini juga harusnya bisa dibaca oleh Anda.', 'Menderita, Untuk Berjuang')
    RETURNING id INTO v_3507_menderita;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '気付く', 'untuk-menyadari', 11, 151, 'Ketika Anda <kanji>melekatkan</kanji> <kanji>energi</kanji> Anda (bayangkan seseorang tiba-tiba melihat ke atas pada sesuatu, menempelkan energinya padanya), Anda telah memperhatikan atau menyadari sesuatu. Itu sebabnya kata ini berarti <vocabulary>menyadari</vocabulary> atau <vocabulary>memperhatikan</vocabulary>. 

Jangan bingung dengan 気を付けて yang serupa karena memiliki kanji yang sama. Hanya saja penggunaannya sedikit berbeda. Cobalah untuk mengingat perbedaannya sebelum melanjutkan.', 'Bacaannya berasal dari 気 kanji (yang sudah anda ketahui) dan kata 付く yang seharusnya sudah anda ketahui sekarang. Gabungkan ini bersama-sama dan Anda memiliki kemampuan membaca kata ini. Perhatikan bahwa bagian 付く adalah rendaku, jadi sedikit berbeda.', 'Untuk Menyadari, Untuk Diperhatikan')
    RETURNING id INTO v_3508_untuk_menyadari;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '見送る', 'untuk-melihat', 11, 152, 'Mudah-mudahan Anda sudah tahu kata 見る dan 送る. Di sini Anda "melihat" "pengiriman". Anda mengantar seseorang pergi, jadi kata kerja ini adalah <vocabulary>mengantar</vocabulary>. Ini juga bisa berarti <vocabulary>menunda</vocabulary> atau <vocabulary>mewariskan</vocabulary>, karena ini seolah-olah Anda hanya secara pasif melihat seseorang (atau sesuatu) pergi daripada mengambil tindakan dan pergi bersama mereka.', 'Bacaannya berasal dari vocab kata 見る dan 送る. Pastikan Anda mengetahuinya dan Anda akan mengetahui bacaan kata ini juga.', 'Untuk Melihat, Untuk Menunda, Untuk Melewati')
    RETURNING id INTO v_3509_untuk_melihat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '時々', 'kadang-kadang', 11, 153, 'Anda tahu satu kata 時, kan? Artinya <kanji>waktu</kanji>. Ini dua kali. Jadi, Anda punya satu waktu, dan Anda punya waktu lain. Mereka terpisah. Hal-hal tidak terjadi pada setiap waktu yang Anda miliki. Itu terjadi <vocabulary>terkadang</vocabulary>.', 'Pembacaannya adalah kosakata kata 時 dua kali, yang kedua mendapat rendaku.', 'Kadang-kadang, Kadang')
    RETURNING id INTO v_3510_kadang_kadang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '受付', 'resepsionis', 11, 154, 'Bayangkan seseorang <kanji>menerima</kanji> sesuatu dan kemudian <kanji>melampirkan</kanji> sesuatu. Orang ini adalah <vocabulary>resepsionis</vocabulary>, karena mereka menerima panggilan, menuliskan informasinya, dan kemudian melampirkan informasi tersebut ke catatan tempel untuk Anda baca. Anda berkata, "Tidak, saya tidak bisa hadir."', 'Untuk bacaan ini Anda harus memikirkan kembali kata kerja yang digunakan dengan kanji ini, yaitu 受ける dan 付ける. Kemudian lepas saja る dan satukan. 受 menjadi うけ dan 付 menjadi つけ dan tersisa うけつけ. Inilah yang disebut dengan kata majemuk. Dan sekarang Anda mengetahuinya. Bagus!', 'Resepsionis, Penerimaan')
    RETURNING id INTO v_3511_resepsionis;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '買い物', 'belanja', 11, 155, 'Mudah-mudahan Anda sudah melihat 買う sekarang dan mengetahui artinya "membeli". Jadi, 買い akan serupa dengan itu. Tambahkan itu ke <kanji>sesuatu</kanji> dan Anda akan mendapatkan semacam kata "membeli sesuatu". Apa yang dimaksud dengan "membeli sesuatu"? Ini menggambarkan <vocabulary>belanja</vocabulary>.', 'Pembacaannya adalah kun''yomi, yang biasanya terjadi jika ada hiragana di tengahnya. Anda mempelajari bacaan 買い ketika Anda mempelajari kanji, serta kata 買う, dan Anda mempelajari bacaan 物 dalam kata 物!', 'Belanja')
    RETURNING id INTO v_3512_belanja;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '苦手', 'sulit-untuk-ditangani', 11, 156, 'Sebuah "tangan yang menderita" agak menyesatkan. Pikirkan lebih banyak tentang kata 苦い (pahit) dan 手 (orang... ingat bagaimana hal itu terkadang terjadi?). Sekarang pikirkan kata ini seperti Anda merasa getir karena harus bekerja dengan seseorang. Mengapa? Karena mereka sangat <vocabulary>sulit untuk dihadapi</vocabulary>.', 'Pembacaannya adalah 苦い (にがい) ditambah 手 (て) lama biasa. Ingat, ini adalah orang yang pahit bagi Anda, orang yang "sulit dihadapi". Jadi, ia menggunakan bacaan にがい yang aneh.', 'Sulit Untuk Ditangani, Titik Lemah, Miskin Di, Tidak terlalu pandai, Buruk Di')
    RETURNING id INTO v_3513_sulit_untuk_ditangani;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '不良', 'buruk', 11, 157, 'Sesuatu yang <kanji>tidak</kanji> <kanji>baik</kanji> adalah <vocabulary>buruk</vocabulary> atau <vocabulary>di bawah standar</vocabulary>. Penggunaan ini lebih formal dan sering dipasangkan dengan kata majemuk kanji lainnya. Alternatifnya, kata ini bisa merujuk pada seseorang yang merupakan <vocabulary>nakal</vocabulary>, dalam hal ini kata ini sering digunakan sebagai kata yang berdiri sendiri.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Buruk, Di bawah standar, Nakal')
    RETURNING id INTO v_3892_buruk;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '気持ちいい', 'merasa-baik', 11, 158, 'Ketika Anda memiliki "perasaan" (気持ち) yang "baik" (いい), Anda <vocabulary>merasa baik</vocabulary>.

気持ちいい adalah apa yang Anda ucapkan ketika sesuatu benar-benar <vocabulary>terasa menyenangkan</vocabulary>, baik secara fisik maupun emosional. Anda bisa mengucapkannya setelah mandi air panas, merasakan semilir angin sejuk, atau mendapatkan pijatan yang pas. Ini adalah versi Jepang dari bersandar dan berkata "ahhh, ini terasa menyenangkan!"', 'Pembacaannya berasal dari kosakata 気持ち, jadi jika Anda mengetahuinya (atau kosakata 気 dan 持つ) Anda sebaiknya A-oke untuk yang satu ini. <vocabulary>Terasa enak</vocabulary> bukan?', 'Merasa Baik, Terasa Enak')
    RETURNING id INTO v_3949_merasa_baik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '試す', 'untuk-mencoba-sesuatu', 11, 159, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji sendiri berarti <kanji>mencoba</kanji> atau <kanji>mencoba</kanji>. Versi kosakata kata kerjanya adalah <vocabulary>mencoba sesuatu</vocabulary> atau <vocabulary>mencoba sesuatu</vocabulary>. Mengapa Anda tidak mencoba arti dari kata kerja ini, selagi Anda melakukannya?', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak mempelajarinya dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: Oke. Inilah kesepakatannya. Kami memiliki hewan liar ini. Saya ingin Anda <vocabulary>mencoba</vocabulary> untuk <reading>menjinakkan</reading> (ため) itu. Sekarang, bayangkan mencoba menjinakkan hewan liar ini. Ya ampun!', 'Untuk Mencoba Sesuatu, Untuk Mencoba Sesuatu')
    RETURNING id INTO v_4148_untuk_mencoba_sesuatu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '比べる', 'untuk-membandingkan', 11, 160, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri artinya <kanji>membandingkan</kanji> sehingga versi kosakata kata kerjanya adalah <vocabulary>to Compare</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: Lihatlah <reading>lebih keren</reading> (くら) ini. Sekarang lihat pendingin lainnya ini. Kita perlu <vocabulary>membandingkan</vocabulary> kedua pendingin tersebut. Pikirkan tentang semua fitur yang dimiliki masing-masing dan bandingkan, seperti Anda memiliki daftar atau semacamnya.', 'Untuk Membandingkan')
    RETURNING id INTO v_4217_untuk_membandingkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '入学試験', 'ujian-masuk', 11, 161, 'Untuk <kanji>penerimaan sekolah</kanji> (入学) Anda mengikuti <kanji>ujian</kanji> (試験). Ujian apa yang harus Anda ambil untuk masuk ke sekolah? Bagaimana dengan <vocabulary>ujian masuk</vocabulary>? Yang Jepang cukup sulit. Kata lain untuk mereka adalah “ujian neraka”.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Ini juga akan membantu jika Anda mengetahui dua kata terpisah yang membentuk kata yang lebih panjang ini.', 'Ujian Masuk, Ujian masuk, Tes Masuk, Ujian Penerimaan, Ujian Penerimaan, Tes Masuk')
    RETURNING id INTO v_4354_ujian_masuk;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '意外', 'tidak-terduga', 11, 162, 'Sesuatu <kanji>di luar</kanji> <kanji>ide</kanji> normal Anda tentang cara kerja sesuatu akan terasa <vocabulary>tidak terduga</vocabulary> atau <vocabulary>mengejutkan</vocabulary> bagi Anda.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Tidak terduga, Mengejutkan')
    RETURNING id INTO v_4373_tidak_terduga;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '正解', 'jawaban-yang-benar', 11, 163, '<kanji>benar</kanji> Anda telah <kanji>menyelesaikan</kanji> jawabannya, mendapatkan <vocabulary>jawaban yang benar</vocabulary>. Anda akan sering melihat ini di acara permainan Jepang. 正解!!!!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Jawaban yang Benar, Benar')
    RETURNING id INTO v_4467_jawaban_yang_benar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '誰', 'siapa', 11, 164, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji.', 'Siapa')
    RETURNING id INTO v_6653_siapa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '〜付き', 'termasuk', 11, 165, 'Anda tahu bahwa kanji 付 berarti <kanji>melampirkan</kanji> dan kata-kata seperti 付く berarti "melekat". Ini memiliki gagasan yang sama. Ketika Anda melihat ini melekat pada kata lain, misalnya, Anda mungkin tahu bahwa ada sesuatu yang melekat pada sesuatu yang lain, atau mungkin <vocabulary>termasuk</vocabulary> dengannya. Misalnya, jika Anda menginap di kamar hotel, mungkin itu adalah sarapan付き, yakni "<vocabulary>termasuk</vocabulary> sarapan".', 'Bacaannya berasal dari bacaan kanji serta dari kata seperti 付く dan 付ける.', 'Termasuk, Termasuk, Dilengkapi Dengan, Terlampir Ke')
    RETURNING id INTO v_7453_termasuk;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '味方', 'sekutu', 11, 166, 'Anda menyukai <kanji>rasa</kanji> dari <kanji>arah</kanji> tertentu, jadi pilihlah ke sana. Semua orang yang memiliki arah rasa yang sama adalah <vocabulary>sekutu</vocabulary> atau <vocabulary>pendukung</vocabulary> Anda. Mereka adalah sekutu pengarah rasa Anda. Mereka memiliki selera yang sama dan mengejar cita rasa yang sama dalam hidup, jadi tentu saja mereka menjadi sekutu, bukan?', 'Kata ini menggunakan bacaan on''yomi untuk 味, namun bacaan kun''yomi untuk 方, jadi berhati-hatilah! Anda mungkin lebih familiar dengan on''yomi untuk 方, jadi inilah mnemonik untuk membantu kun''yomi:

<vocabulary>sekutu</vocabulary> atau <vocabulary>pendukung</vocabulary> yang baik selalu siap untuk <reading>cata</reading>mendorong (かた) Anda ke posisi terbaik. Mereka percaya pada Anda sehingga mereka menginginkan yang terbaik untuk Anda.', 'Sekutu, Pendukung, Teman')
    RETURNING id INTO v_7463_sekutu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '発売中', 'sekarang-dijual', 11, 167, 'Anda memiliki 発売, yang berarti "dijual", lalu Anda memiliki 中 yang merupakan <kanji>tengah</kanji>. Suatu barang yang sedang dijual adalah <vocabulary>sekarang dijual</vocabulary>, <vocabulary>di toko sekarang</vocabulary> atau dengan kata lain <vocabulary>sekarang tersedia</vocabulary>. Anda akan melihat ini untuk barang-barang yang baru saja dirilis atau ketika penjaga toko ingin memberi tahu Anda bahwa mereka sedang menjual sesuatu sekarang, akhirnya, atau apa pun.', 'Bacaannya berasal dari 発売 dan 中 (pembacaan kanji) yang disatukan.', 'Sekarang Dijual, Di Toko Sekarang, Sekarang Tersedia')
    RETURNING id INTO v_7466_sekarang_dijual;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '食べ物', 'makanan', 11, 168, '<kanji>makan</kanji> <kanji>sesuatu</kanji> (alias "sesuatu yang kamu makan") adalah <vocabulary>makanan</vocabulary>. Makanlah itu. Makanlah makanan itu. Karena itu adalah "sesuatu", Anda tahu itu adalah kata benda. Menarik bagaimana kanji ini bisa mengubah kata kerja seperti ini menjadi kata benda bukan? Hati-hati karena pola ini akan muncul pada kata kerja lain juga!', 'Kata ini menggunakan bacaan kun''yomi untuk kedua kanjinya, tapi kamu sudah mengetahui keduanya sekarang, jadi kamu harus bisa membacanya juga!', 'Makanan')
    RETURNING id INTO v_7489_makanan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '波', 'melambai', 11, 169, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Karena kata ini terdiri dari satu kanji, kemungkinan besar menggunakan bacaan kun''yomi. Anda tidak mempelajari bacaan ini, jadi inilah mnemonik untuk membantu Anda mengingat:

Anda melompat ke atas ombak dan berkeliling dunia di atasnya. Saat Anda menaiki ombak ini, ombaknya akan semakin besar hingga mencapai proporsi tsu<reading>nami</reading> (なみ). Bayangkan melihat ke bawah dari tsunami ke laut biru luas di sekeliling Anda. Ombak yang Anda tumpangi cukup besar.', 'Melambai')
    RETURNING id INTO v_7490_melambai;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '丁度いい', 'tepat-sekali', 11, 170, 'Jika 丁度 adalah "tepat", maka "sangat bagus" adalah jumlah yang tepat, alias <vocabulary>tepat</vocabulary>.', 'Jika Anda mengetahui bacaan untuk 丁度, Anda juga akan mengetahui bacaan untuk ini. Pengetahuanmu seharusnya <vocabulary>tepat</vocabulary>, seperti yang mereka katakan di dalam kepalaku.', 'Tepat sekali, Benar sekali')
    RETURNING id INTO v_7493_tepat_sekali;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '保持する', 'untuk-menjaga', 11, 171, 'Ini adalah versi kata kerja dari 保持 (menjaga), jadi ini berarti <vocabulary>menjaga</vocabulary>, <vocabulary>menahan</vocabulary>, atau <vocabulary>mempertahankan</vocabulary>.

Perhatikan bahwa ini adalah kata formal yang biasa digunakan dalam konteks profesional atau resmi.', 'Bacaannya sama dengan 保持, jadi kalau kamu tahu bacaan kata itu, kamu juga pasti tahu yang ini.', 'Untuk Menjaga, Untuk Memegang, Untuk Mempertahankan, Untuk Mempertahankan')
    RETURNING id INTO v_7497_untuk_menjaga;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '通う', 'untuk-mengunjungi-secara-teratur', 11, 172, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Anda telah mempelajari kata kerja lain untuk kanji <kanji>melewati</kanji> — 通る (melewati) — namun kata kerja ini memiliki arti yang sedikit berbeda: <vocabulary>mengunjungi secara rutin</vocabulary>. Untuk rutin berkunjung ke suatu tempat, Anda mungkin harus melewati kawasan yang sama berulang kali, bukan?

通う mengacu pada kehadiran rutin dan kebiasaan di tempat yang sama. Ini juga bisa berarti <vocabulary>perjalanan</vocabulary> ke tempat kerja atau ke sekolah, karena keduanya mengharuskan Anda <vocabulary>bolak-balik</vocabulary> antara rumah dan tempat yang sama secara rutin.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan salah satu bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda:

Di rumah Anda, apa yang mulai <vocabulary>dikunjungi secara rutin</vocabulary>? <read>Coyo</reading>tes (かよ). Anda adalah seorang pembisik coyote dan Anda telah berteman dengan semua coyote lokal, jadi sekarang mereka mengunjungi rumah Anda secara rutin, hanya untuk jalan-jalan. Akhir-akhir ini, Anda bahkan mulai <vocabulary>perjalanan</vocabulary> ke tempat kerja dengan menggunakan coyote — Anda seperti terjatuh di belakang beberapa dari mereka, dan mereka membawa Anda ke tempat kerja. Ini sangat ramah lingkungan.', 'Untuk Mengunjungi Secara Teratur, Untuk Bepergian, Untuk Bolak Balik')
    RETURNING id INTO v_7514_untuk_mengunjungi_secara_teratur;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '〜部', 'departemen', 11, 173, 'Anda akan melihatnya dilampirkan pada kata lain... seperti "penjualan" atau "tenis". Saat kamu melihatnya, kamu akan tahu bahwa itu adalah ___ departemen, atau ___ klub, sehingga kata ini berarti <vocabulary>department</vocabulary> atau <vocabulary>club</vocabulary>, mirip dengan arti kanji.', 'Bacaannya adalah bacaan on''yomi. Jangan mengetikkan 〜 saat menulis jawabannya. Itu hanya untuk memberi tahu Anda bahwa biasanya ada sesuatu yang melekat pada kata ini.', 'Departemen, Klub, Kategori')
    RETURNING id INTO v_7532_departemen;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '屋上', 'atap', 11, 174, '<kanji>Di atas</kanji> <kanji>atap</kanji> adalah <vocabulary>atap</vocabulary>. Apa lagi yang ada di atas sana?', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda tidak mempelajari bacaan ini selama 屋, jadi inilah mnemonik untuk membantu Anda:

Satu tempat di dunia memiliki lebih banyak <vocabulary>atap</vocabulary> dibandingkan tempat lain, dan itulah <reading>Oke</reading>lahoma (おく). Mereka mendapatkan begitu banyak tornado sehingga mereka membutuhkan atap tambahan ketika beberapa tornado pertama terjadi.', 'Atap, Atap rumah')
    RETURNING id INTO v_7577_atap;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '用意', 'persiapan', 11, 175, '<kanji>tugas</kanji> ini hanyalah sebuah <kanji>ide</kanji> karena Anda masih melakukan <vocabulary>persiapan</vocabulary> untuk itu. Anda <vocabulary>bersiap</vocabulary>. Setelah Anda menyelesaikannya, gagasan tugas dapat menjadi kenyataan tugas, namun sampai saat itu Anda hanya mempersiapkannya.

用意 berarti menyiapkan sesuatu untuk tujuan tertentu. Makanan, mobil, kamar, dan bahkan payung adalah semua hal yang mungkin Anda siapkan dengan makanan Anda. Dan setelah selesai, itu berarti sudah siap dan siap digunakan.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Persiapan, Bersiap')
    RETURNING id INTO v_7579_persiapan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '欠かす', 'untuk-dilakukan-tanpa', 11, 176, 'Ingat bagaimana 欠 berarti <kanji>kekurangan</kanji>? Kata kerja ini terkait. Bentuk 欠かす sedikit rumit, tapi sepertinya Anda membuat diri Anda kekurangan sesuatu. Jadi artinya <vocabulary>melakukan tanpa</vocabulary>. Tergantung pada konteksnya, ini juga bisa berarti <vocabulary>kehilangan suatu peristiwa</vocabulary> atau <vocabulary>gagal melakukan</vocabulary> sesuatu. Ingatlah bahwa kata ini paling sering digunakan dalam bentuk negatif, seperti 欠かせないもの (hal-hal yang tidak dapat Anda lakukan tanpanya) atau 朝のコーヒーは欠かさない (jangan pernah pergi tanpa kopi pagi).

Anda dapat mengingat 欠かす seperti ini: Karena Anda menyebabkan diri Anda kekurangan sesuatu dengan kata ini, itu semua salah Anda. Itu sebabnya Anda ingin <membaca>menyumpah</reading> (かす). Anda membuat diri Anda melewatkan sesuatu. Ya, $*%!!!', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda sudah mempelajari bacaan ini jadi Anda harus bisa membacanya!', 'Untuk Dilakukan Tanpa, Untuk Melewatkan Suatu Acara, Gagal Melakukan')
    RETURNING id INTO v_7626_untuk_dilakukan_tanpa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '見物', 'tamasya', 11, 177, 'Jika Anda mencoba <kanji>melihat</kanji> sekumpulan <kanji>benda</kanji> sekaligus, Anda mungkin sedang <vocabulary>tamasya</vocabulary> atau <vocabulary>menonton</vocabulary>. Kata ini juga bisa merujuk pada orang yang melakukan tindakan tersebut, jadi terkadang bisa berarti <vocabulary>wisatawan</vocabulary> juga.', 'Semua bacaannya on''yomi, dan Anda tahu cara membaca 物. On''yomi (けん) 見 adalah bacaan yang tidak Anda pelajari dengan kanji karena kurang berguna, tetapi Anda harus mengetahuinya di sini. Anda pernah melihatnya dengan 発見 beberapa level yang lalu, jadi itu akan membantu. Bayangkan saja mengajak samurai <reading>Ken</reading> dalam perjalanan <vocabulary>tamasya</vocabulary> yang epik. Pikirkan semua hal yang akan Anda dan Ken kunjungi!', 'Tamasya, Pelancong, Menonton')
    RETURNING id INTO v_7627_tamasya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '予め', 'sebelumnya', 11, 178, 'Kanji dan kata-katanya hampir sama persis. Itu berarti mereka juga berbagi makna.

Perhatikan bahwa 予め sebagian besar digunakan dalam konteks formal seperti rapat, pengumuman atau pemberitahuan, dan email bisnis.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda:

Pada Perjamuan Terakhir, para rasul bertanya <vocabulary>sebelumnya</vocabulary>: "Bolehkah kami memesan <reading>à la car</reading>te, <reading>Je</reading>sus (あらかじ)?" Yesus mengatakan tidak, namun Dia juga mengetahui <kosakata>sebelumnya</vocabulary> bahwa Yudas akan mengkhianati-Nya dengan memesan beberapa hidangan à la carte yang mahal. Dan juga dengan melakukan hal lainnya.', 'Sebelumnya, Di muka, Sebelumnya, Sebelumnya')
    RETURNING id INTO v_7630_sebelumnya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '平仮名', 'hiragana', 11, 179, 'Ingat bagaimana Anda mengetahui bahwa 仮名 berarti "kana?" Ini kana <kanji>datar</kanji>. Kana datar hanyalah <vocabulary>hiragana</vocabulary>.', 'Kamu harus tahu bacaan kata ini karena sama dengan arti bahasa Inggrisnya.', 'Hiragana')
    RETURNING id INTO v_7631_hiragana;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '文字通り', 'harfiah', 11, 180, 'Ingat bagaimana Anda mempelajari kata 文字 dan 通り? Ya, "jalan" yang terbuat dari "huruf" adalah <vocabulary>secara harfiah</vocabulary> <vocabulary>sesuai dengan huruf</vocabulary>. Mengedip.', 'Ini adalah kombinasi kata 文字 dan 通り, yang sudah kamu pelajari, jadi kamu harus bisa membaca yang ini. Pastikan Anda ingat bahwa とおり menjadi どおり karena rendaku.', 'Harfiah, Secara harfiah, Untuk Surat itu')
    RETURNING id INTO v_7632_harfiah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '相図', 'tanda', 11, 181, '<kanji>saling</kanji> <kanji>diagram</kanji> adalah diagram yang dapat dilihat semua orang. Itu adalah <vocabulary>tanda</vocabulary>.', 'Bacaannya merupakan gabungan bacaan kun''yomi dan on''yomi. Meski begitu, kedua bacaan untuk kedua kanji tersebut adalah bacaan yang sudah Anda pelajari, jadi Anda harus bisa membaca ini.', 'Tanda, Sinyal, Diagram, Diagram Fase')
    RETURNING id INTO v_7633_tanda;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '初歩', 'dasar-dasar', 11, 182, '<kanji>hal pertama</kanji> yang Anda <kanji>jalani</kanji> saat mempelajari sesuatu yang baru akan selalu menjadi <vocabulary>dasar-dasar</vocabulary>. Anda tidak pernah memulai dengan berlari, Anda selalu harus memulai dengan lambat dan mempelajari <vocabulary>ABC</vocabulary> sebelum Anda mulai berlari.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Dasar-dasar, Dasar, Elemen, ABC')
    RETURNING id INTO v_7687_dasar_dasar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '新た', 'baru', 11, 183, 'Ini adalah versi kata keterangan dari kanji <kanji>baru</kanji>, jadi artinya <vocabulary>new</vocabulary> juga.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Orang tuamu menaruh hadiah yang <vocabulary>baru</vocabulary> dibungkus di bawah pohon Natal. Anda tidak ingin menunggu untuk melihat hal baru apa yang mereka berikan kepada Anda sehingga Anda membukanya dan menemukan mereka memberi Anda steak <reading>ra</reading>w (あら). Mendapatkan steak baru memang keren, tetapi steak mentah cukup menjijikkan. Darahnya menetes ke mana-mana.', 'Baru, Segar, Novel, Baru saja, Baru saja')
    RETURNING id INTO v_7689_baru;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '西洋', 'barat', 11, 184, 'Pergilah ke <kanji>barat</kanji> sampai Anda menemukan bangunan <kanji>gaya Barat</kanji> serta adat istiadat dan bahasa di mana-mana. Hei, kamu berhasil mencapai <vocabulary>Barat</vocabulary>! 

西洋 mengacu pada <kosa kata>negara-negara Barat</vocabulary>, khususnya negara-negara Eropa dan berbahasa Inggris. Ini adalah kata "Barat" yang sama yang orang-orang maksud ketika mereka berbicara tentang budaya <vocabulary>Barat</vocabulary> dan sebagainya.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda belum mempelajari bacaan ini untuk 西 (せい), jadi inilah mnemonik untuk membantu Anda:

Orang-orang menyerang dari <vocabulary>barat</vocabulary>, jadi Anda mengeluarkan <reading>sa</reading>ber (せい) Anda dan memukul balik mereka. Anda terus mendorong lebih jauh dan lebih jauh ke barat sampai Anda mencapai laut dan tidak ada tempat lagi bagi mereka untuk lari. Pedangmu menyelamatkan hari ini! Ambil contoh, Barat.', 'Barat, Negara-negara Barat, Barat')
    RETURNING id INTO v_7690_barat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '辺', 'samping', 11, 185, 'Salah satu arti kanjinya adalah <kanji>sisi</kanji>, dan sebagai kata yang berdiri sendiri, kata ini juga berarti <vocabulary>side</vocabulary>, seperti pada sisi-sisi suatu bentuk.', 'Bacaannya sama dengan kanji yang Anda pelajari, artinya Anda tahu bacaannya!', 'Samping')
    RETURNING id INTO v_7736_samping;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '別', 'berbeda', 11, 186, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan kanji yang Anda pelajari, artinya Anda tahu bacaannya!', 'Berbeda, Memisahkan')
    RETURNING id INTO v_7744_berbeda;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '心持ち', 'kerangka-berpikir', 11, 187, 'Jika menyangkut <kanji>hati</kanji> Anda, cara Anda memegangnya (持つ) menentukan <vocabulary>pola pikir</vocabulary> dan <vocabulary>perasaan</vocabulary> Anda.

心持ち adalah kata yang agak kuno untuk keadaan batin atau sikap seseorang di balik permukaan — seperti kerangka berpikir atau wataknya. Dalam penggunaan modern, kata ini lebih umum digunakan sebagai kata keterangan yang berarti "<vocabulary>agak</vocabulary>," seperti 心持ち速く (agak cepat, hanya sedikit lebih cepat).', 'Bacaan kata ini sama-sama bacaan kun''yomi. Anda mempelajarinya saat mempelajari kata 心 dan 持つ, jadi Anda seharusnya bisa membacanya sendiri.', 'Kerangka berpikir, Merasa, Agak')
    RETURNING id INTO v_7745_kerangka_berpikir;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '昔話', 'cerita-rakyat', 11, 188, '<kanji>Dahulu kala</kanji> orang biasa <kanji>berbicara</kanji> tentang segala macam hal. Kebanyakan di antaranya tidak benar. Dahulu kala orang sangat suka berbohong. Sekarang kami menyebutnya hal-hal yang mereka bicarakan tentang <vocabulary>cerita rakyat</vocabulary> dan <vocabulary>legenda</vocabulary>.', 'Bacaan kata ini sama-sama bacaan kun''yomi. Anda sudah mempelajari keduanya, jadi Anda seharusnya bisa membacanya sendiri. Hati-hati dengan rendaku dari はなし hingga ばなし.', 'Cerita Rakyat, Legenda, Cerita lama, Cerita rakyat')
    RETURNING id INTO v_7746_cerita_rakyat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '見事', 'bagus-sekali', 11, 189, 'Pembelajar, jika Anda <kanji>melihat</kanji> suatu <kanji>sesuatu</kanji>, maka itu pasti <vocabulary>menakjubkan</vocabulary>. Anda melihatnya, jadi tentu saja <vocabulary>luar biasa</vocabulary>. Anda hanya melihat <vocabulary>hal-hal indah</vocabulary> di dunia ini. Dan itu adalah kualitas yang <vocabulary>terpuji</vocabulary>.', 'Bacaan kata ini sama-sama bacaan kun''yomi. Anda sudah mempelajarinya, jadi Anda seharusnya bisa membacanya sendiri. Ingatlah bahwa ada rendaku di こと dan itu menjadi ごと.', 'Bagus sekali, Agung, Cantik, Terpuji, Perbuatan Terpuji')
    RETURNING id INTO v_7747_bagus_sekali;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '生物学', 'biologi', 11, 190, 'Ingat bagaimana 生物 berarti "makhluk hidup?" Nah, ketika Anda <kanji>mempelajari</kanji> makhluk hidup, Anda sedang mempelajari <vocabulary>biologi</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Biologi')
    RETURNING id INTO v_8745_biologi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '伝記', 'biografi', 11, 191, 'Jika Anda ingin <kanji>mentransmisikan</kanji> kisah hidup seseorang, Anda harus <kanji>menulis</kanji> semuanya dalam <vocabulary>biografi</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Biografi, Kisah Hidup')
    RETURNING id INTO v_8815_biografi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '転がす', 'untuk-menggulung-sesuatu', 11, 192, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>berputar</kanji>, dan versi kata kerjanya adalah saat Anda membuat sesuatu berputar. Anda menggulungnya. Itu sebabnya kata kerja ini adalah <vocabulary>to roll Something</vocabulary>.

Ini adalah kata kerja transitif. Itu berarti Anda menggulingkan sesuatu yang lain, seperti bola. Atau, jika Anda kumbang kotoran, buang air besar. 💩 Jangan bingung dengan 転がる, yang bersifat intransitif, seperti banyak kata kerja yang berakhiran がる.', 'Anda mempelajari bacaan ini saat mempelajari 転がる, namun berikut ini ada mnemonik untuk berjaga-jaga:

Saat Anda mencoba <vocabulary>memutar sesuatu</vocabulary>, bagian luarnya mungkin bergerak, namun <reading>intinya</reading> (ころ) tetap diam. Bayangkan diri Anda membuat bumi berguling-guling di lantai. Bagian luar tempat tinggal manusia berputar-putar, namun inti bumi berada di tempat yang persis sama.', 'Untuk Menggulung Sesuatu, Untuk Membalikkan Sesuatu')
    RETURNING id INTO v_8932_untuk_menggulung_sesuatu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '進める', 'untuk-memajukan-sesuatu', 11, 193, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>maju</kanji>, dan kata kerja ini berarti <vocabulary>untuk memajukan sesuatu</vocabulary> atau <vocabulary>untuk memajukan sesuatu</vocabulary>.

Ini adalah kata kerja transitif, jadi Anda bertindak berdasarkan hal lain. Anda memajukan sesuatu. Anda memajukan sesuatu. Seperti proyek sekolah, atau rencana Anda untuk mengambil alih dunia.', 'Karena kata ini memiliki okurigana (hiragana yang melekat pada kanji), Anda tahu bahwa itu mungkin pembacaan kun''yomi, yang tidak Anda pelajari dengan kanji. Berikut ini mnemonik untuk membantu:

Anda meneruskan gugatan Anda terhadap Sue. Tapi sekarang dia bilang kaulah masalahnya. "<reading>Tuntut, tuntut aku</reading>," (すすめ) ucapmu sambil melanjutkan gugatan. Pastikan untuk mengatakan "saya" seperti "mehh," dengan cara yang sangat sombong.', 'Untuk Memajukan Sesuatu, Untuk Memajukan Sesuatu')
    RETURNING id INTO v_8939_untuk_memajukan_sesuatu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '欠く', 'kekurangan-sesuatu', 11, 194, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. 

Kanji itu sendiri berarti <kanji>kekurangan</kanji>, dan kata kerja ini berarti <vocabulary>kekurangan sesuatu</vocabulary>. Cukup sederhana dalam bahasa Inggris, tapi 欠く sebenarnya termasuk tingkat lanjut dan formal dalam bahasa Jepang, jadi kebanyakan hanya digunakan secara tertulis. 

Ingatlah juga bahwa ini adalah kata kerja transitif, jadi 欠く mengambil objek langsung — mungkin seseorang kurang <em>pengetahuan</em>, misalnya, atau Anda kurang <em>konsentrasi</em>. Ini sedikit berbeda dengan mengatakan "konsentrasi Anda kurang", setidaknya secara tata bahasa. (Untuk itu, Anda akan menggunakan 欠ける.)', 'Jika hidup Anda tampaknya <vocabulary>kurang sesuatu</vocabulary>, seperti kegembiraan atau makna, hal terbaik yang dapat Anda lakukan adalah melompat ke dalam <reading>ca</reading>r (か). Keluarkan mobil Anda di jalan terbuka dan cari apa pun yang kurang dari Anda. Anda akan menemukannya — kami percaya pada Anda!', 'Kekurangan Sesuatu, Menjadi Tanpa, Menjadi Tanpa')
    RETURNING id INTO v_8951_kekurangan_sesuatu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '直前', 'tepat-sebelumnya', 11, 195, 'Sesuatu terjadi <kanji>langsung</kanji>sebelum</kanji> ini. Dengan kata lain, hal itu terjadi <vocabulary>sebelum</vocabulary> ini.

直前 digunakan untuk berbicara tentang sesuatu yang terjadi <vocabulary>segera sebelum</vocabulary> hal lain, seperti ketika kencan Anda dibatalkan tepat sebelum Anda seharusnya bertemu atau dokter Anda memberi tahu Anda untuk tidak makan camilan sebelum tidur.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Tepat Sebelumnya, Segera Sebelum')
    RETURNING id INTO v_9386_tepat_sebelumnya;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2817_jumlah_terjual, 'Jumlah Terjual', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2817_jumlah_terjual, 'Penjualan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2817_jumlah_terjual, 'Hasil', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2818_terjual_habis, 'Terjual habis', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2818_terjual_habis, 'Stok Habis', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2819_penjual, 'Penjual', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2819_penjual, 'Penjual', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2890_malam_ini, 'Malam ini', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2890_malam_ini, 'Malam ini', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2898_tohoku, 'Tohoku', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2898_tohoku, 'Wilayah Tohoku', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2898_tohoku, 'Wilayah Timur Laut', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3019_tekad, 'Tekad', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3019_tekad, 'Resolusi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3019_tekad, 'Pengakuan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3039_penerimaan, 'Penerimaan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3039_penerimaan, 'Pintu masuk', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3039_penerimaan, 'Hukuman penjara', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3039_penerimaan, 'Pengasingan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3099_pada_awalnya, 'Pada awalnya', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3099_pada_awalnya, 'Untuk Memulainya', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3099_pada_awalnya, 'Untuk Memulainya', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3108_hal_nyata, 'Hal Nyata', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3108_hal_nyata, 'Kesepakatan Nyata', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3108_hal_nyata, 'Artikel Asli', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3114_kendaraan, 'Kendaraan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3131_orang_kaya, 'Orang Kaya', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3131_orang_kaya, 'Kaya', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3131_orang_kaya, 'Kaya', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3132_merasa, 'Merasa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3149_untuk_menyiarkan_sesuatu, 'Untuk Menyiarkan Sesuatu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3213_kisah, 'Kisah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3213_kisah, 'Cerita', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3213_kisah, 'Legenda', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3238_untuk_bersaing, 'Untuk Bersaing', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3238_untuk_bersaing, 'Untuk Berdebat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3238_untuk_bersaing, 'Untuk Bertengkar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3239_perang, 'Perang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3240_kompetisi, 'Kompetisi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3242_hubungan, 'Hubungan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3242_hubungan, 'Hubungan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3245_untuk_menyampaikan, 'Untuk Menyampaikan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3245_untuk_menyampaikan, 'Untuk Memberitahu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3245_untuk_menyampaikan, 'Untuk Melewati', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3245_untuk_menyampaikan, 'Untuk Mengirimkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3246_poin_umum, 'Poin Umum', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3246_poin_umum, 'Fitur Umum', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3246_poin_umum, 'Kesamaan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3247_persendian, 'Persendian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3247_persendian, 'Kolaboratif', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3247_persendian, 'Dibagikan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3248_publik, 'Publik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3248_publik, 'Masyarakat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3249_dibagikan, 'Dibagikan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3249_dibagikan, 'Kepemilikan Bersama', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3249_dibagikan, 'Kepemilikan Bersama', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3249_dibagikan, 'Membagikan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3250_menyukai, 'Menyukai', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3250_menyukai, 'Cinta', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3250_menyukai, 'Yg menyenangkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3250_menyukai, 'Manis', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3251_persahabatan, 'Persahabatan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3252_menjadi, 'Menjadi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3253_kesuksesan, 'Kesuksesan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3254_orang_tua, 'Orang Tua', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3254_orang_tua, 'Orang Lanjut Usia', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3255_pangkat, 'Pangkat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3256_tempat_pertama, 'Tempat Pertama', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3256_tempat_pertama, 'Peringkat Pertama', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3257_tempat_pertama, 'Tempat Pertama', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3257_tempat_pertama, 'Posisi Kepala', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3257_tempat_pertama, 'Posisi Terkemuka', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3257_tempat_pertama, 'Posisi Pertama', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3258_rendah, 'Rendah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3258_rendah, 'Pendek', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3259_yang_terendah, 'Yang Terendah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3259_yang_terendah, 'Paling buruk', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3259_yang_terendah, 'Minimal', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3259_yang_terendah, 'Tidak menyenangkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3259_yang_terendah, 'Sangat buruk', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3260_pertama_kali, 'Pertama kali', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3260_pertama_kali, 'Pertama kali', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3261_yang_pertama, 'Yang Pertama', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3261_yang_pertama, 'Pertama', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3261_yang_pertama, 'Awal', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3261_yang_pertama, 'Awal', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3262_memisahkan, 'Memisahkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3262_memisahkan, 'Berbeda', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3262_memisahkan, 'Lain', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3263_tidak_secara_khusus, 'Tidak Secara Khusus', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3263_tidak_secara_khusus, 'Tidak terlalu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3263_tidak_secara_khusus, 'Terpisah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3263_tidak_secara_khusus, 'Sebagai tambahan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3264_orang_yang_berbeda, 'Orang yang Berbeda', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3264_orang_yang_berbeda, 'Orang yang Berubah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3264_orang_yang_berbeda, 'Manusia yang Berubah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3265_memisahkan, 'Memisahkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3266_spesial, 'Spesial', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3267_untuk_bekerja_dengan_baik, 'Untuk Bekerja dengan Baik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3267_untuk_bekerja_dengan_baik, 'Menjadi Mungkin', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3267_untuk_bekerja_dengan_baik, 'Menjadi Efektif', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3268_nyaman, 'Nyaman', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3268_nyaman, 'Berguna', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3268_nyaman, 'Berguna', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3269_usaha_besar, 'Usaha Besar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3269_usaha_besar, 'Pengerahan tenaga', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3269_usaha_besar, 'Usaha yang Melelahkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3270_kerja_manual, 'Kerja Manual', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3270_kerja_manual, 'Tenaga kerja', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3270_kerja_manual, 'Bekerja', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3271_kesulitan, 'Kesulitan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3271_kesulitan, 'Masalah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3272_buruh, 'Buruh', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3272_buruh, 'Pekerja Kerah Biru', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3272_buruh, 'Pekerja Tangan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3273_kehidupan, 'Kehidupan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3274_takdir, 'Takdir', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3274_takdir, 'Takdir', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3275_memesan, 'Memesan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3275_memesan, 'Memerintah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3276_pantai, 'Pantai', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3276_pantai, 'Pesisir', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3276_pantai, 'Pantai laut', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3277_untuk_melepaskan, 'Untuk Melepaskan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3277_untuk_melepaskan, 'Untuk Membebaskan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3277_untuk_melepaskan, 'Untuk Membiarkan Sesuatu Pergi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3278_untuk_membuka_sesuatu, 'Untuk Membuka Sesuatu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3278_untuk_membuka_sesuatu, 'Untuk Melempar Sesuatu Terbuka', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3278_untuk_membuka_sesuatu, 'Untuk Membuka Sesuatu Kepada Umum', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3279_dahulu_kala, 'Dahulu kala', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3279_dahulu_kala, 'Lama sekali', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3280_penerimaan, 'Penerimaan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3280_penerimaan, 'Gelombang Radio', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3280_penerimaan, 'Gelombang Elektromagnetik', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3281_untuk_menuangkan, 'Untuk Menuangkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3282_peringatan, 'Peringatan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3282_peringatan, 'Perhatian', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3282_peringatan, 'Peringatan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3283_memesan, 'Memesan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3283_memesan, 'Meminta', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3284_untuk_berkonsentrasi, 'Untuk Berkonsentrasi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3284_untuk_berkonsentrasi, 'Untuk Fokus', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3285_untuk_dibangkitkan, 'Untuk Dibangkitkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3285_untuk_dibangkitkan, 'Untuk Dibesarkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3285_untuk_dibangkitkan, 'Untuk Tumbuh', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3286_pendidikan, 'Pendidikan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3287_untuk_mengambil_sesuatu, 'Untuk Mengambil Sesuatu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3287_untuk_mengambil_sesuatu, 'Untuk Menemukan Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3287_untuk_mengambil_sesuatu, 'Untuk Mengumpulkan Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3288_untuk_menunjuk, 'Untuk Menunjuk', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3288_untuk_menunjuk, 'Untuk Menunjuk', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3288_untuk_menunjuk, 'Untuk Menunjukkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3288_untuk_menunjuk, 'Untuk Merujuk', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3289_jari, 'Jari', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3289_jari, 'Kaki', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3291_untuk_menunjuk, 'Untuk Menunjuk', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3291_untuk_menunjuk, 'Untuk Menugaskan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3291_untuk_menunjuk, 'Untuk Menunjuk', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3291_untuk_menunjuk, 'Untuk Menentukan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3293_pakaian, 'Pakaian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3293_pakaian, 'Pakaian Barat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3293_pakaian, 'Pakaian Gaya Barat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3296_kamar_bergaya_barat, 'Kamar Bergaya Barat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3297_tuhan, 'Tuhan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3297_tuhan, 'Dewa', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3298_shinto, 'Shinto', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3298_shinto, 'Shintou', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3299_kuil_shinto, 'Kuil Shinto', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3299_kuil_shinto, 'Kuil', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3300_kedua, 'Kedua', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3301_kelas_tinggi, 'Kelas Tinggi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3301_kelas_tinggi, 'Kelas tinggi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3301_kelas_tinggi, 'Tingkat Tinggi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3302_tingkat_pemula, 'Tingkat Pemula', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3302_tingkat_pemula, 'Tingkat Dasar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3302_tingkat_pemula, 'Tingkat Awal', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3303_tingkat_menengah, 'Tingkat Menengah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3303_tingkat_menengah, 'Peringkat Menengah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3303_tingkat_menengah, 'Kelas Menengah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3304_tingkat_lanjutan, 'Tingkat Lanjutan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3304_tingkat_lanjutan, 'Kelas tinggi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3304_tingkat_lanjutan, 'Kelas Lanjutan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3304_tingkat_lanjutan, 'Tingkat Tinggi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3305_untuk_mengikuti, 'Untuk Mengikuti', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3305_untuk_mengikuti, 'Untuk Mengejar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3306_pertempuran, 'Pertempuran', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3306_pertempuran, 'Bertarung', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3306_pertempuran, 'Konflik', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3307_taktik, 'Taktik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3307_taktik, 'Strategi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3307_taktik, 'Operasi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3308_tangki, 'Tangki', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3309_medan_perang, 'Medan perang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3309_medan_perang, 'Medan perang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3310_untuk_bersaing, 'Untuk Bersaing', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3311_bagus, 'Bagus', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3313_khususnya, 'Khususnya', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3313_khususnya, 'Khususnya', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3314_tidak_nyaman, 'Tidak nyaman', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3314_tidak_nyaman, 'Tidak Nyaman', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3315_kamar_kecil, 'Kamar kecil', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3315_kamar_kecil, 'Kamar mandi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3315_kamar_kecil, 'Toilet', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3316_untuk_bekerja, 'Untuk Bekerja', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3316_untuk_bekerja, 'Untuk Buruh', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3316_untuk_bekerja, 'Untuk Berkomitmen', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3317_pendapat, 'Pendapat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3317_pendapat, 'Melihat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3318_arti, 'Arti', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3319_mencicipi, 'Mencicipi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3319_mencicipi, 'Rasa', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3456_jual_murah, 'Jual Murah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3456_jual_murah, 'Diskon', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3456_jual_murah, 'Penjualan Tawar-menawar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3456_jual_murah, 'Penjualan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3482_menjadi_genap, 'Menjadi Genap', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3482_menjadi_genap, 'Kembali ke', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3482_menjadi_genap, 'Pembalasan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3482_menjadi_genap, 'Pembalasan dendam', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3490_untuk_dikembalikan, 'Untuk Dikembalikan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3490_untuk_dikembalikan, 'Untuk Kembali', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3490_untuk_dikembalikan, 'Untuk Kembali', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3498_daerah_asrama, 'Daerah Asrama', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3498_daerah_asrama, 'Halte Bus', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3498_daerah_asrama, 'Tempat Taksi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3498_daerah_asrama, 'Peron Kereta Api', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3499_cara_menggunakan, 'Cara Menggunakan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3499_cara_menggunakan, 'Cara Menggunakan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3500_pekerjaan, 'Pekerjaan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3500_pekerjaan, 'Pekerjaan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3500_pekerjaan, 'Bekerja', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3502_pecundang, 'Pecundang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3504_kemenangan, 'Kemenangan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3504_kemenangan, 'Menang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3504_kemenangan, 'Sebuah Kemenangan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3504_kemenangan, 'Kemenangan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3507_menderita, 'Menderita', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3507_menderita, 'Untuk Berjuang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3508_untuk_menyadari, 'Untuk Menyadari', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3508_untuk_menyadari, 'Untuk Diperhatikan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3509_untuk_melihat, 'Untuk Melihat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3509_untuk_melihat, 'Untuk Menunda', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3509_untuk_melihat, 'Untuk Melewati', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3510_kadang_kadang, 'Kadang-kadang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3510_kadang_kadang, 'Kadang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3511_resepsionis, 'Resepsionis', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3511_resepsionis, 'Penerimaan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3512_belanja, 'Belanja', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3513_sulit_untuk_ditangani, 'Sulit Untuk Ditangani', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3513_sulit_untuk_ditangani, 'Titik Lemah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3513_sulit_untuk_ditangani, 'Miskin Di', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3513_sulit_untuk_ditangani, 'Tidak terlalu pandai', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3513_sulit_untuk_ditangani, 'Buruk Di', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3892_buruk, 'Buruk', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3892_buruk, 'Di bawah standar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3892_buruk, 'Nakal', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3949_merasa_baik, 'Merasa Baik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3949_merasa_baik, 'Terasa Enak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4148_untuk_mencoba_sesuatu, 'Untuk Mencoba Sesuatu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4148_untuk_mencoba_sesuatu, 'Untuk Mencoba Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4217_untuk_membandingkan, 'Untuk Membandingkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4354_ujian_masuk, 'Ujian Masuk', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4354_ujian_masuk, 'Ujian masuk', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4354_ujian_masuk, 'Tes Masuk', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4354_ujian_masuk, 'Ujian Penerimaan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4354_ujian_masuk, 'Ujian Penerimaan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4354_ujian_masuk, 'Tes Masuk', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4373_tidak_terduga, 'Tidak terduga', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4373_tidak_terduga, 'Mengejutkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4467_jawaban_yang_benar, 'Jawaban yang Benar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4467_jawaban_yang_benar, 'Benar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6653_siapa, 'Siapa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7453_termasuk, 'Termasuk', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7453_termasuk, 'Termasuk', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7453_termasuk, 'Dilengkapi Dengan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7453_termasuk, 'Terlampir Ke', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7463_sekutu, 'Sekutu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7463_sekutu, 'Pendukung', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7463_sekutu, 'Teman', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7466_sekarang_dijual, 'Sekarang Dijual', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7466_sekarang_dijual, 'Di Toko Sekarang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7466_sekarang_dijual, 'Sekarang Tersedia', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7489_makanan, 'Makanan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7490_melambai, 'Melambai', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7493_tepat_sekali, 'Tepat sekali', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7493_tepat_sekali, 'Benar sekali', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7497_untuk_menjaga, 'Untuk Menjaga', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7497_untuk_menjaga, 'Untuk Memegang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7497_untuk_menjaga, 'Untuk Mempertahankan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7497_untuk_menjaga, 'Untuk Mempertahankan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7514_untuk_mengunjungi_secara_teratur, 'Untuk Mengunjungi Secara Teratur', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7514_untuk_mengunjungi_secara_teratur, 'Untuk Bepergian', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7514_untuk_mengunjungi_secara_teratur, 'Untuk Bolak Balik', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7532_departemen, 'Departemen', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7532_departemen, 'Klub', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7532_departemen, 'Kategori', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7577_atap, 'Atap', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7577_atap, 'Atap rumah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7579_persiapan, 'Persiapan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7579_persiapan, 'Bersiap', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7626_untuk_dilakukan_tanpa, 'Untuk Dilakukan Tanpa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7626_untuk_dilakukan_tanpa, 'Untuk Melewatkan Suatu Acara', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7626_untuk_dilakukan_tanpa, 'Gagal Melakukan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7627_tamasya, 'Tamasya', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7627_tamasya, 'Pelancong', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7627_tamasya, 'Menonton', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7630_sebelumnya, 'Sebelumnya', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7630_sebelumnya, 'Di muka', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7630_sebelumnya, 'Sebelumnya', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7630_sebelumnya, 'Sebelumnya', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7631_hiragana, 'Hiragana', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7632_harfiah, 'Harfiah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7632_harfiah, 'Secara harfiah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7632_harfiah, 'Untuk Surat itu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7633_tanda, 'Tanda', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7633_tanda, 'Sinyal', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7633_tanda, 'Diagram', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7633_tanda, 'Diagram Fase', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7687_dasar_dasar, 'Dasar-dasar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7687_dasar_dasar, 'Dasar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7687_dasar_dasar, 'Elemen', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7687_dasar_dasar, 'ABC', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7689_baru, 'Baru', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7689_baru, 'Segar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7689_baru, 'Novel', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7689_baru, 'Baru saja', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7689_baru, 'Baru saja', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7690_barat, 'Barat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7690_barat, 'Negara-negara Barat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7690_barat, 'Barat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7736_samping, 'Samping', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7744_berbeda, 'Berbeda', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7744_berbeda, 'Memisahkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7745_kerangka_berpikir, 'Kerangka berpikir', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7745_kerangka_berpikir, 'Merasa', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7745_kerangka_berpikir, 'Agak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7746_cerita_rakyat, 'Cerita Rakyat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7746_cerita_rakyat, 'Legenda', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7746_cerita_rakyat, 'Cerita lama', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7746_cerita_rakyat, 'Cerita rakyat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7747_bagus_sekali, 'Bagus sekali', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7747_bagus_sekali, 'Agung', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7747_bagus_sekali, 'Cantik', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7747_bagus_sekali, 'Terpuji', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7747_bagus_sekali, 'Perbuatan Terpuji', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8745_biologi, 'Biologi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8815_biografi, 'Biografi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8815_biografi, 'Kisah Hidup', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8932_untuk_menggulung_sesuatu, 'Untuk Menggulung Sesuatu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8932_untuk_menggulung_sesuatu, 'Untuk Membalikkan Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8939_untuk_memajukan_sesuatu, 'Untuk Memajukan Sesuatu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8939_untuk_memajukan_sesuatu, 'Untuk Memajukan Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8951_kekurangan_sesuatu, 'Kekurangan Sesuatu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8951_kekurangan_sesuatu, 'Menjadi Tanpa', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8951_kekurangan_sesuatu, 'Menjadi Tanpa', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9386_tepat_sebelumnya, 'Tepat Sebelumnya', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9386_tepat_sebelumnya, 'Segera Sebelum', false, true);

  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2817_jumlah_terjual, 'うりあげ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2818_terjual_habis, 'うりきれ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2819_penjual, 'うりて', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2890_malam_ini, 'こんや', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2898_tohoku, 'とうほく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3019_tekad, 'けっしん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3039_penerimaan, 'にゅうしょ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3099_pada_awalnya, 'はじめに', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3108_hal_nyata, 'ほんもの', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3114_kendaraan, 'のりもの', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3131_orang_kaya, 'かねもち', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3132_merasa, 'きもち', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3149_untuk_menyiarkan_sesuatu, 'ほうそうする', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3213_kisah, 'ものがたり', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3238_untuk_bersaing, 'あらそう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3239_perang, 'せんそう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3240_kompetisi, 'きょうそう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3242_hubungan, 'なか', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3245_untuk_menyampaikan, 'つたえる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3246_poin_umum, 'きょうつうてん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3247_persendian, 'きょうどう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3248_publik, 'こうきょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3249_dibagikan, 'きょうゆう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3250_menyukai, 'すき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3251_persahabatan, 'ゆうこう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3252_menjadi, 'なる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3253_kesuksesan, 'せいこう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3254_orang_tua, 'ろうじん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3255_pangkat, 'い', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3256_tempat_pertama, 'いちい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3257_tempat_pertama, 'しゅい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3258_rendah, 'ひくい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3259_yang_terendah, 'さいてい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3260_pertama_kali, 'しょかい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3261_yang_pertama, 'さいしょ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3262_memisahkan, 'べつの', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3263_tidak_secara_khusus, 'べつに', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3264_orang_yang_berbeda, 'べつじん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3265_memisahkan, 'べつべつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3266_spesial, 'とくべつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3267_untuk_bekerja_dengan_baik, 'きく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3268_nyaman, 'べんり', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3269_usaha_besar, 'どりょく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3270_kerja_manual, 'ろうどう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3271_kesulitan, 'くろう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3272_buruh, 'ろうどうしゃ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3273_kehidupan, 'いのち', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3274_takdir, 'うんめい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3275_memesan, 'めいれい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3276_pantai, 'かいがん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3277_untuk_melepaskan, 'はなす', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3278_untuk_membuka_sesuatu, 'かいほうする', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3279_dahulu_kala, 'むかし', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3280_penerimaan, 'でんぱ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3281_untuk_menuangkan, 'そそぐ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3281_untuk_menuangkan, 'つぐ', NULL, false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3282_peringatan, 'ちゅうい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3283_memesan, 'ちゅうもん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3284_untuk_berkonsentrasi, 'しゅうちゅうする', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3285_untuk_dibangkitkan, 'そだつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3286_pendidikan, 'きょういく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3287_untuk_mengambil_sesuatu, 'ひろう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3288_untuk_menunjuk, 'さす', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3289_jari, 'ゆび', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3291_untuk_menunjuk, 'していする', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3293_pakaian, 'ようふく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3296_kamar_bergaya_barat, 'ようしつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3297_tuhan, 'かみ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3298_shinto, 'しんとう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3299_kuil_shinto, 'じんじゃ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3300_kedua, 'びょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3301_kelas_tinggi, 'こうきゅう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3302_tingkat_pemula, 'しょきゅう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3303_tingkat_menengah, 'ちゅうきゅう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3304_tingkat_lanjutan, 'じょうきゅう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3305_untuk_mengikuti, 'おう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3306_pertempuran, 'たたかい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3307_taktik, 'さくせん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3308_tangki, 'せんしゃ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3309_medan_perang, 'せんじょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3310_untuk_bersaing, 'きそう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3311_bagus, 'よい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3311_bagus, 'いい', NULL, false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3313_khususnya, 'とくに', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3314_tidak_nyaman, 'ふべん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3315_kamar_kecil, 'べんじょ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3316_untuk_bekerja, 'はたらく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3317_pendapat, 'いけん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3318_arti, 'いみ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3319_mencicipi, 'あじ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3456_jual_murah, 'やすうり', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3482_menjadi_genap, 'しかえし', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3490_untuk_dikembalikan, 'かえる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3498_daerah_asrama, 'のりば', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3499_cara_menggunakan, 'つかいかた', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3500_pekerjaan, 'しごと', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3502_pecundang, 'まけいぬ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3504_kemenangan, 'かち', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3507_menderita, 'くるしむ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3508_untuk_menyadari, 'きづく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3509_untuk_melihat, 'みおくる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3510_kadang_kadang, 'ときどき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3511_resepsionis, 'うけつけ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3512_belanja, 'かいもの', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3513_sulit_untuk_ditangani, 'にがて', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3892_buruk, 'ふりょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3949_merasa_baik, 'きもちいい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4148_untuk_mencoba_sesuatu, 'ためす', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4217_untuk_membandingkan, 'くらべる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4354_ujian_masuk, 'にゅうがくしけん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4373_tidak_terduga, 'いがい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4467_jawaban_yang_benar, 'せいかい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6653_siapa, 'だれ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7453_termasuk, 'つき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7463_sekutu, 'みかた', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7466_sekarang_dijual, 'はつばいちゅう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7489_makanan, 'たべもの', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7490_melambai, 'なみ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7493_tepat_sekali, 'ちょうどいい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7497_untuk_menjaga, 'ほじする', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7514_untuk_mengunjungi_secara_teratur, 'かよう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7532_departemen, 'ぶ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7577_atap, 'おくじょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7579_persiapan, 'ようい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7626_untuk_dilakukan_tanpa, 'かかす', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7627_tamasya, 'けんぶつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7630_sebelumnya, 'あらかじめ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7631_hiragana, 'ひらがな', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7632_harfiah, 'もじどおり', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7633_tanda, 'あいず', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7687_dasar_dasar, 'しょほ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7689_baru, 'あらた', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7690_barat, 'せいよう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7736_samping, 'へん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7744_berbeda, 'べつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7745_kerangka_berpikir, 'こころもち', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7746_cerita_rakyat, 'むかしばなし', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7747_bagus_sekali, 'みごと', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8745_biologi, 'せいぶつがく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8815_biografi, 'でんき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8932_untuk_menggulung_sesuatu, 'ころがす', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8939_untuk_memajukan_sesuatu, 'すすめる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8951_kekurangan_sesuatu, 'かく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9386_tepat_sebelumnya, 'ちょくぜん', NULL, true, true);

  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2817_jumlah_terjual, 'だんだん売り上げが落ちてきた。', 'Penjualannya perlahan menurun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2817_jumlah_terjual, 'DVDの売り上げはどうですか？', 'Bagaimana penjualan DVDnya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2817_jumlah_terjual, 'あの性差別の広告のせいで、売り上げが激減した。', 'Penjualan menurun drastis karena iklan seksis itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2818_terjual_habis, '今日のラーメンは全部売り切れです。', 'Ramen hari ini sudah habis terjual.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2818_terjual_habis, '人気のバンドのコンサートチケットは、発売から一分で売り切れてしまった。', 'Tiket konser band populer itu terjual habis dalam satu menit setelah perilisannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2818_terjual_habis, 'この本、ずっと売り切れだったんだけど、やっと再入荷したのよ！', 'Buku ini sudah lama terjual, tetapi akhirnya tersedia kembali!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2819_penjual, '売り手は男でした。', 'Penjualnya adalah seorang laki-laki.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2819_penjual, '家の売り手は有名なアイドルでした。', 'Penjual rumahnya adalah seorang penyanyi idola terkenal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2819_penjual, 'この取引、売り手にとって有利すぎない？', 'Bukankah transaksi ini terlalu menguntungkan penjual?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2890_malam_ini, 'ウェディングパーティーは今夜です。', 'Pesta pernikahannya malam ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2890_malam_ini, '今夜は一人でジムに行きます。', 'Saya akan pergi ke gym sendirian malam ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2890_malam_ini, '今夜は西の方に水星が見えるかもしれません。', 'Anda mungkin melihat Merkurius di barat malam ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2898_tohoku, '東北で、ボランティアをしていました。', 'Saya menjadi sukarelawan di Tohoku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2898_tohoku, '東北の牛肉はおいしいです。', 'Daging sapi Tohoku enak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2898_tohoku, '私のおばあちゃんは東北生まれなので方言が分かります。', 'Nenek saya berasal dari Tohoku, jadi dia mengerti dialeknya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3019_tekad, 'ふじ山の上でプロポーズすると決心した。', 'Saya bertekad untuk melamar di Gunung Fuji.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3019_tekad, '私の「ヒーローになる」という決心は強いです。', 'Tekad saya untuk “menjadi pahlawan” kuat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3019_tekad, '大学で化学を学ぶ決心はつきましたか？', 'Sudahkah Anda menemukan tekad untuk belajar kimia di universitas?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3039_penerimaan, '私のおばあちゃんは、三月にグループホームに入所しました。', 'Nenek saya bergabung dengan kelompok pulang pada bulan Maret.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3039_penerimaan, '今日はモデルエージェンシーの入所テストでした。', 'Aku menjalani tes masuk untuk agensi model hari ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3039_penerimaan, '入所の前に必ずルールをチェックしておいて下さい。', 'Pastikan untuk memeriksa peraturan sebelum Anda masuk.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3099_pada_awalnya, '始めに、プレゼンテーションをしたいと思います。', 'Pertama, saya ingin membuat presentasi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3099_pada_awalnya, '始めにキャベツを切ります。', 'Potong kubis terlebih dahulu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3099_pada_awalnya, '今年の仕事始めにはパスタを食べました。', 'Saya makan pasta pada hari pertama saya bekerja tahun ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3108_hal_nyata, 'このレタス、もしかして本物なの？', 'Mungkinkah selada ini asli?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3108_hal_nyata, 'このナイキのスニーカー、本物だと思って買いました。', 'Saya membeli sepatu kets Nike ini karena mengira itu asli.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3108_hal_nyata, '本物の金持ちは税金を払う義務について悪口なんて言わないよ。', 'Orang kaya sejati bahkan tidak akan mengeluh tentang kewajibannya membayar pajak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3114_kendaraan, '乗り物よいしちゃった。', 'Saya mabuk perjalanan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3114_kendaraan, '小さいころ、ボクは乗り物に乗るのが大好きでした。', 'Saya suka mengendarai sesuatu ketika saya masih kecil.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3114_kendaraan, '古い乗り物には、時間のにおいがする気がするんだよね。', 'Saya merasa kendaraan tua berbau seperti waktu itu sendiri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3114_kendaraan, '日本では、公共の乗り物の中ではスマホはマナーモードにして通話はしないのがマナーです。', 'Di Jepang, mengatur ponsel cerdas Anda ke mode senyap dan tidak melakukan panggilan di transportasi umum dianggap sebagai perilaku yang baik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3131_orang_kaya, 'この辺は金持ちの家が多い。', 'Ada banyak rumah orang kaya di sekitar sini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3131_orang_kaya, 'そこは金持ちが行くような学校だよ。', 'Ini adalah jenis sekolah tempat orang-orang kaya bersekolah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3131_orang_kaya, '若い頃、お金を稼ぐために、近所のお金持ちの人たちの使い走りをしていました。', 'Saya biasa menjalankan tugas kecil untuk tetangga saya yang kaya untuk menghasilkan uang ketika saya masih muda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3132_merasa, 'あなたの気持ちはよく分かります。', 'Saya tahu persis bagaimana perasaan Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3132_merasa, '朝起きた時から気持ちわるいんです。', 'Aku merasa mual sejak aku bangun di pagi hari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3132_merasa, 'これ、つまらないものですが。ささやかな感謝の気持ちです。どうぞ、開けてみてください。', 'Ini sedikit sesuatu untukmu. Ini hanyalah bentuk kecil dari apresiasi saya. Silakan, buka.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3149_untuk_menyiarkan_sesuatu, 'このドラマが放送されるのは、十年ぶりです。', 'Drama TV ini akan ditayangkan pertama kali dalam sepuluh tahun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3149_untuk_menyiarkan_sesuatu, 'このクリップ、本当に放送するんですか？', 'Apakah kami benar-benar menyiarkan klip ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3149_untuk_menyiarkan_sesuatu, 'コウイチ社長は今晩テレビで重大な決定を放送することになっている。', 'Pengumuman penting Presiden Koichi akan disiarkan di televisi malam ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3213_kisah, 'この物語はとても長いですよ。', 'Kisah ini sangat panjang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3213_kisah, 'アンデルセン物語を読んであげましょう。', 'Saya akan membacakan cerita Andersen untuk Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3213_kisah, '妖怪にまつわる物語は、日本各地にたくさんあります。', 'Ada banyak cerita tentang yokai di berbagai belahan Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3238_untuk_bersaing, 'わたしの事で争うのはよして！', 'Tolong jangan berdebat tentang saya!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3238_untuk_bersaing, 'チャンピオンベルトを争うゲームでは負けないって決めたんです。', 'Saya bertekad untuk tidak kalah dalam pertandingan di mana kami bersaing memperebutkan sabuk juara.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3238_untuk_bersaing, '私たちって言い争ったことないよね。', 'Kita tidak pernah bertengkar, kan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3239_perang, '戦争に行くのは半年ぶりです。', 'Ini adalah pertama kalinya saya berperang dalam enam bulan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3239_perang, '戦争のない時代に生まれたかったなあ。', 'Saya berharap saya lahir di era dimana tidak ada perang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3239_perang, '戦争で失った事もたくさんあるけど、戦争から学んだ事もたくさんある。', 'Ada banyak hal yang hilang dalam perang, tapi kami juga belajar banyak dari perang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3240_kompetisi, '今は競争する気分じゃないんだけど。', 'Saat ini aku sedang tidak mood untuk mengikuti kompetisi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3240_kompetisi, '今日の朝ごはんは、昨日のパン食い競争のパンです。', 'Sarapan hari ini adalah roti hasil lomba makan roti kemarin.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3240_kompetisi, 'あいつら、もうちょっと落ち着いた方がいいよ。二人共負けず嫌いのくせに、いっつも二人で競争してるんだぜ。', 'Orang-orang ini benar-benar perlu bersantai. Mereka selalu bersaing satu sama lain dan sama-sama benci kekalahan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3242_hubungan, '母とは、あんまり仲が良くないんだよね。', 'Aku tidak terlalu akur dengan ibuku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3242_hubungan, 'あのカップル、本当に仲が良いよね。', 'Pasangan itu memiliki hubungan yang sangat baik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3242_hubungan, 'あの旅行でチームメンバーとの仲が深まった気がするよ。', 'Saya merasa hubungan saya dengan anggota tim saya semakin dalam dalam perjalanan itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3245_untuk_menyampaikan, 'これから会えますか？メールでは上手く伝えることができないんです。', 'Bisakah kita bertemu? Saya tidak akan bisa menyampaikan pesan saya melalui email.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3245_untuk_menyampaikan, '先生には、トイレに行きたいってちゃんと伝えてたんだよ。', 'Saya memberi tahu guru saya bahwa saya ingin pergi ke kamar mandi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3245_untuk_menyampaikan, 'お父様とお母様にも、よろしくお伝えくださいね。', 'Tolong sampaikan salamku pada ibu dan ayahmu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3245_untuk_menyampaikan, '彼の目が、不安を伝えていた。', 'Matanya menunjukkan kegelisahan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3245_untuk_menyampaikan, '空気は、私たちの耳に音を伝えてくれます。', 'Udara mentransmisikan suara ke telinga kita.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3246_poin_umum, 'コウイチとは共通点が全くないから、何を話せばいいか分からないよ。', 'Aku tidak tahu harus bicara apa karena Koichi dan aku tidak punya kesamaan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3246_poin_umum, '日本と中国は文化の共通点がたくさんあります。', 'Secara budaya, Jepang dan Tiongkok memiliki banyak kesamaan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3246_poin_umum, '俺とコウイチの共通点？死ぬほどウィスキーが好きって所くらいかな。', 'Apa kesamaan antara aku dan Koichi? Saya kira kami berdua sangat menyukai wiski.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3247_persendian, 'チームメイトとの共同作業は楽しいです。', 'Tugas kolaboratif dengan rekan satu tim memang menyenangkan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3247_persendian, 'ここは学生の共同コーワーキングスペースです。', 'Ini adalah ruang kerja bersama bagi siswa untuk berbagi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3247_persendian, 'これは日本とアメリカのチームが共同開発したトイレです。', 'Ini adalah toilet yang dikembangkan bersama oleh tim dari Jepang dan Amerika Serikat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3248_publik, 'ここは公共トイレですよ！カラオケをする場所ではありません。', 'Ini kamar mandi umum! Bukan tempat untuk karaoke.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3248_publik, '公共のベビーシッターのサービスがあるんですか？', 'Apakah ada layanan babysitter umum?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3248_publik, 'とある公共施設でボランティアをしていたことがあります。', 'Saya dulu menjadi sukarelawan di fasilitas umum.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3249_dibagikan, 'このリスト、共有してもらえますか？', 'Bisakah Anda membagikan daftar ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3249_dibagikan, 'タスクはチームと共有した方が早く終わるよ。', 'Anda dapat menyelesaikan tugas lebih cepat bila Anda membaginya dengan tim Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3249_dibagikan, '社長の一番の仕事は、ビジョンの共有です。', 'Tugas terpenting presiden adalah menyampaikan visi mereka.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3250_menyukai, 'ワニカニのこと、好き？', 'Apakah kamu suka WaniKani?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3250_menyukai, '好きな人と家でゴロゴロするのが大好きです。', 'Saya suka hanya tinggal di rumah dan tidak melakukan apa pun dengan seseorang yang saya cintai.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3250_menyukai, 'こんな突然好きな映画を聞かれても、何も思いつかないですよ。', 'Saya tidak dapat memikirkan apa pun ketika Anda tiba-tiba bertanya kepada saya apa film favorit saya seperti ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3251_persahabatan, 'このキーホルダーは、私たちの友好のシンボルです。', 'Gantungan kunci ini adalah tanda persahabatan kita.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3251_persahabatan, '日本と米国の友好は強いですか？', 'Apakah persahabatan antara Jepang dan Amerika Serikat kuat?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3251_persahabatan, 'あそこの家のおじさん友好的だけど、実はヤクザの隠れメンバーらしいよ！', 'Pria yang tinggal di rumah sebelah sana itu ramah, tapi ternyata diam-diam dia adalah anggota yakuza!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3252_menjadi, '早く大人に成りたいな。', 'Aku ingin segera menjadi dewasa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3252_menjadi, 'おたまじゃくしがカエルに成るって知ってた？', 'Tahukah Anda bahwa berudu bisa menjadi katak?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3252_menjadi, '彼は、数百人から成るチームのリーダーです。', 'Dia adalah pemimpin tim yang beranggotakan beberapa ratus orang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3253_kesuksesan, '明日のプレゼン、成功すると良いですね。', 'Saya berharap presentasi besok akan sukses.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3253_kesuksesan, '今回こそは成功したいんです。', 'Saya ingin sukses kali ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3253_kesuksesan, '「ビジネスで成功したければ、型にはまらない考え方をしなさい」と言われて、カレー味の歯磨き粉を思いついたんだ。', 'Saya membuat pasta gigi rasa kari ketika saya diberi tahu, "Jika Anda ingin sukses dalam bisnis, Anda harus berpikir di luar kebiasaan."');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3254_orang_tua, '日本は老人の人口がとても多いんですよ。', 'Jepang memiliki populasi lansia yang sangat besar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3254_orang_tua, '生まれたばかりの赤ちゃんだって、いずれは老人になります。', 'Bahkan bayi yang baru lahir pun pada akhirnya akan menjadi orang tua.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3254_orang_tua, 'うわ！あの老人めちゃくちゃイケメンでマッチョなんだけど。', 'Wow! Orang tua itu benar-benar keren.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3255_pangkat, '今年は何位だろう？', 'Saya ingin tahu di mana peringkat saya tahun ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3255_pangkat, 'あのテニスプレイヤーは世界ランキング三位です。', 'Petenis itu menduduki peringkat ketiga dunia.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3255_pangkat, 'マラソンで一位になったので、両親がマウンテンバイクを買ってくれた。', 'Saya menjadi juara maraton pertama, jadi orang tua saya membelikan saya sepeda gunung.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3256_tempat_pertama, '一位になったら、一週間毎日カレーを作ってあげる。', 'Jika kamu mendapat tempat pertama, aku akan membuatkanmu kari setiap hari selama seminggu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3256_tempat_pertama, '妹がピアノコンクールで一位をとりました。', 'Adikku menempati posisi pertama dalam kompetisi piano.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3256_tempat_pertama, 'お母さん！僕、あのテストで滅茶苦茶良い点をとったんだよ！なんとクラスで一位だったんだ！', 'Mama! Saya benar-benar berhasil dalam ujian itu! Aku mendapat peringkat teratas di kelasku!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3257_tempat_pertama, '学力テストで首位に立った。', 'Saya mendapat juara pertama dalam tes akademik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3257_tempat_pertama, 'あの女の人は世界ランキング首位のテニスプレーヤーです。', 'Wanita itu adalah pemain tenis peringkat teratas dunia.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3257_tempat_pertama, 'その老人は、両チームの首位争いには全く興味が無いようだった。', 'Orang tua itu sepertinya tidak tertarik pada pertarungan kedua tim untuk mendapatkan tempat pertama.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3258_rendah, '低い声の男の人が好きです。', 'Saya suka pria dengan suara rendah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3258_rendah, 'あんたみたいにプライドが低すぎる男はもうウンザリよ。', 'Aku sudah sangat bosan dengan pria sepertimu yang tidak punya harga diri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3258_rendah, '夫の家族は皆、背が低いんですよ。', 'Semua anggota keluarga suami saya pendek.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3259_yang_terendah, 'あのドラマ、最低だった！', 'Pertunjukan drama itu adalah yang terburuk!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3259_yang_terendah, '今回のテストは、今までで最低の点だった。', 'Saya mendapat nilai terburuk pada ujian kali ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3259_yang_terendah, '明日の最低気温は０度を下回るでしょう。', 'Suhu terendah besok akan berada di bawah nol derajat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3260_pertama_kali, 'マッサージ初回は八千円です。', 'Pijat pertama kali akan dikenakan biaya 8000 yen.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3260_pertama_kali, '初回のレッスンにはスマホを持ってきて下さいね。', 'Silakan bawa ponsel cerdas Anda ke pelajaran pertama.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3260_pertama_kali, 'えっ、君が日本語学習クラブに参加するのは今回が初回なんだ？よし、みんな。彼は初心者だから手加減してあげようぜ。', 'Oh, apakah ini pertama kalinya kamu menghadiri klub bahasa Jepang kami? Baiklah semuanya, dia seorang pemula, jadi mari kita santai saja.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3261_yang_pertama, '最初は元気だったんですが、１時間後にはヘトヘトでした。', 'Saya melakukannya dengan baik pada awalnya, tetapi saya kelelahan satu jam kemudian.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3261_yang_pertama, '中学校の最初のクラスは英語でした。', 'Kelas pertama di sekolah menengah pertama adalah bahasa Inggris.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3261_yang_pertama, '日本に来た最初の頃はトイレにビデが付いてるなんて知らなかったよ。', 'Saat pertama kali datang ke Jepang, saya tidak tahu kalau toiletnya punya bidet.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3262_memisahkan, '別のアプローチをしてみない？', 'Mengapa kita tidak mencoba pendekatan yang berbeda?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3262_memisahkan, '昨日デートに行ったのは別の男です。', 'Itu adalah pria lain yang berkencan denganku kemarin.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3262_memisahkan, '姉は私とは別の母から生まれた子です。', 'Adikku lahir dari ibu lain.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3263_tidak_secara_khusus, 'ブロッコリーとシチューのタッパーは別にしてもらえますか？', 'Bisakah Anda menggunakan Tupperware terpisah untuk brokoli dan rebusannya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3263_tidak_secara_khusus, '別にコーヒーがあればどこのカフェでもいいよ。', 'Selama ada kopi, saya tidak keberatan pergi ke kafe mana pun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3263_tidak_secara_khusus, '「お母さん元気にしてる？」「うん。別に変わりないよ。」', '"Apakah ibumu baik-baik saja?" Ya.Tidak ada yang berubah secara khusus.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3264_orang_yang_berbeda, 'コウイチはお酒をやめてから、すっかり別人になったね。', 'Koichi telah menjadi pria yang berubah sejak dia berhenti minum.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3264_orang_yang_berbeda, '友人のコウイチだと思って声をかけたら、別人だった。', 'Aku pikir itu adalah temanku Koichi ketika aku memanggilnya, tapi ternyata orangnya berbeda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3264_orang_yang_berbeda, 'コウイチは昔はAKB48をよくディスっていたのに、今はすっかり大ファンになっちまった。まるで別人のようだよ。', 'Koichi dulu sering menjelek-jelekkan AKB48, tapi sekarang dia menjadi penggemar berat AKB48. Seolah-olah dia orang yang berbeda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3265_memisahkan, '友人とのスケジュールが合わないのでハワイまで別々に行きます。', 'Jadwalku tidak terlalu sesuai dengan jadwal temanku, jadi kami pergi ke Hawaii secara terpisah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3265_memisahkan, 'ジャガイモとセロリは別々に入れておいてください。', 'Masukkan kentang dan seledri secara terpisah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3265_memisahkan, '「私達、本当に別々の道を進まなきゃいけないの？」「ああ。でもまたすぐ会えるさ。」', '"Sekarang apakah kita benar-benar harus berpisah?" “Ya, tapi aku yakin kita akan segera bertemu lagi.”');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3266_spesial, 'これは特別なネックレスなんです。', 'Ini adalah kalung istimewa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3266_spesial, '社長がわざわざオフィスに来たなんて何か特別なミーティングでもあったんですか？', 'Apakah ada rapat khusus atau ada hal yang membuat presiden repot-repot datang jauh-jauh ke kantor?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3266_spesial, 'この車の特別仕様の在庫はありますか？', 'Apakah ada edisi khusus mobil ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3267_untuk_bekerja_dengan_baik, '自転車のブレーキが利かない。', 'Rem sepedaku tidak berfungsi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3267_untuk_bekerja_dengan_baik, 'うちの子、気が利くんですよ。', 'Anak saya bijaksana.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3267_untuk_bekerja_dengan_baik, 'コウイチは中々融通の利く男だ。', 'Koichi adalah pria yang cukup fleksibel.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3268_nyaman, 'このアプリ、すごく便利だよね。', 'Aplikasi ini sangat berguna bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3268_nyaman, '便利なアイテムを知っていたらぜひ教えて下さい。', 'Jika Anda mengetahui item yang berguna, beri tahu saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3268_nyaman, '生活は日に日に便利になっていく。', 'Hidup menjadi lebih nyaman hari demi hari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3269_usaha_besar, 'あんた、努力しないで社長になれるとでも思ってんの？', 'Hei, apakah Anda benar-benar berpikir Anda bisa menjadi presiden perusahaan tanpa berusaha apa pun?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3269_usaha_besar, '宝くじを当てるのだって、それなりの努力が必要なんだよ！', 'Bahkan memenangkan lotre memerlukan sejumlah usaha, oke?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3269_usaha_besar, '意味のない努力？そんなものないよ。', 'Upaya yang sia-sia? Tidak ada hal seperti itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3270_kerja_manual, 'この仕事、労働時間がすごく長いんです。', 'Jam kerja sangat panjang pada pekerjaan ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3270_kerja_manual, 'クライアントとのゴルフは休日労働じゃないんですか？', 'Bukankah bermain golf dengan klien dianggap sebagai pekerjaan liburan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3270_kerja_manual, 'この歳で激しい肉体労働はキツいです。', 'Pekerjaan fisik yang intens sulit dilakukan oleh orang-orang pada usia ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3271_kesulitan, 'ワニカニに出会うまでは、おれの人生は苦労ばかりだった。', 'Hidupku penuh kesulitan sampai aku bertemu WaniKani.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3271_kesulitan, 'このコウイチのサイン、苦労してやっと手に入れたんだよ。', 'Saya melewati kesulitan untuk akhirnya mendapatkan tanda tangan Koichi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3271_kesulitan, 'うちのお風呂って、シャワーの位置が固定されちゃってるから、バスタブを洗って流すときにかなり苦労するんだよね。', 'Di bathtub saya, posisi showernya tetap, sehingga cukup sulit untuk mencuci dan membilas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3272_buruh, 'コウイチ社長は、日本の労働者不足についてどうお考えなんですか？', 'Apa pendapat Presiden Koichi tentang kekurangan pekerja di Jepang?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3272_buruh, '私たちのような労働者たちがこの国を支えてるんですよ。', 'Pekerja seperti kami mendukung negara ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3272_buruh, '社長という立場なら、労働者の権利を守ってくださいよ。', 'Jika Anda seorang presiden, cobalah untuk melindungi hak-hak pekerja.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3273_kehidupan, '虫の命だって、大切な命なんだよ。', 'Bahkan kehidupan seekor serangga pun merupakan kehidupan yang penting.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3273_kehidupan, 'このフィギュアは命の次に大切なんです。', 'Angka ini merupakan hal terpenting kedua, setelah hidup saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3273_kehidupan, 'このレスキュー船には、たくさんの人の命がかかっています。', 'Kehidupan banyak orang bergantung pada kapal penyelamat ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3273_kehidupan, '神様、お願いです。私の命と引き換えに、この子の命を助けてください。', 'Tuhan, kumohon. Selamatkan nyawa anak ini sebagai ganti nyawaku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3274_takdir, 'あの日、ここであなたと会えたのは運命ですよ。', 'Sudah takdir aku bertemu denganmu di sini pada hari itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3274_takdir, 'そういう運命だったんだよ。', 'Memang dimaksudkan seperti itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3274_takdir, 'iPhoneさん天国行き。用を足した後のトイレに落としちゃいました。まぁ、これがiPhoneさんの運命だったのかもしれないけどさ。でも、猛烈に悲しいぜよ...。', 'Beristirahatlah dengan tenang iPhone. Saya baru saja menjatuhkannya ke toilet yang berisi lebih dari sekedar air. Mungkin ini hanya takdir tapi aku sangat sedih saat ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3275_memesan, 'これは、コウイチ王からの命令です。', 'Ini adalah perintah dari Raja Koichi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3275_memesan, '何であなたに「電話に出ろ」と命令されなければいけないんですか？', 'Mengapa saya harus disuruh mengangkat telepon?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3275_memesan, '「ほら！何をダラダラ待ってるの? 走って！」「俺に命令するんじゃねぇよ！」', '"Ayo! Tunggu apa lagi? Lari!" "Jangan suruh aku berkeliling!"');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3276_pantai, '今日は海岸をジョギングしました。', 'Hari ini, saya jogging di tepi pantai.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3276_pantai, '海岸からはヨットやサーファーが見えました。', 'Saya melihat kapal pesiar dan peselancar dari pantai.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3276_pantai, '今週末は海岸のそばのおしゃれなカフェに行きたいな。', 'Akhir pekan ini, saya ingin pergi ke kafe bergaya di tepi pantai.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3277_untuk_melepaskan, '放せよ！', 'Biarkan aku pergi!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3277_untuk_melepaskan, '三十分後、コウイチはついに私の手を放した。', 'Tiga puluh menit kemudian, Koichi akhirnya melepaskan tanganku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3277_untuk_melepaskan, 'この辺りに、犬を放してあそばせられるドッグランみたいなとこはありますか？', 'Apakah ada taman anjing atau tempat serupa di sekitar sini di mana saya bisa membiarkan anjing saya berlari bebas?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3277_untuk_melepaskan, 'フグを海に放すといつも、泳いで逃げちゃって、私が呼んでも知らんぷりするの。どうすれば逃げないように教えることができるのかしら。', 'Setiap kali saya melepaskan Fugu di laut, dia berenang menjauh dan ketika saya memanggilnya dia tidak mendengarkan. Apa yang harus saya lakukan untuk mengajarinya agar tidak melarikan diri?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3278_untuk_membuka_sesuatu, '夜はオフィスをバーとして開放しています。', 'Kami membuka kantor kami menjadi bar di malam hari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3278_untuk_membuka_sesuatu, '夏はこのプールも公共に開放されます。', 'Di musim panas, kolam ini juga dibuka untuk umum.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3278_untuk_membuka_sesuatu, '月に一回、美術館が市民に無料開放されます。', 'Sebulan sekali, museum ini dibuka untuk warga secara gratis.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3279_dahulu_kala, 'ここは昔、山だったんだよ。', 'Tempat ini dulunya adalah gunung.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3279_dahulu_kala, 'コウイチはただの昔の友人です。', 'Koichi hanyalah seorang teman lama.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3279_dahulu_kala, '昔、一回だけ、テレビ画面にキスしたことがあるよ。', 'Saya pernah mencium layar TV beberapa waktu yang lalu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3280_penerimaan, 'ここに立つとWi-Fiの電波がよく入りますよ。', 'Jika Anda berdiri di sini, Anda akan mendapatkan sinyal Wi-Fi yang bagus.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3280_penerimaan, '母は電子レンジの電波を心配している。', 'Ibu saya khawatir dengan gelombang elektromagnetik dari microwave.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3280_penerimaan, 'ごめん、よく聞こえないよ。ここは電波が悪いみたい。', 'Maaf, kamu terdengar agak berombak. Sepertinya aku mendapat sambutan buruk di sini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3281_untuk_menuangkan, 'もしかして、私のコーラにオリーブオイル注いだ？', 'Apakah Anda kebetulan menuangkan minyak zaitun ke dalam minuman bersoda saya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3281_untuk_menuangkan, '高校生になったらアルバイトに全力を注ぎたいです。', 'Saat aku menjadi siswa SMA, aku ingin mencurahkan seluruh energiku untuk pekerjaan paruh waktu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3281_untuk_menuangkan, 'もう少しワインを注いでいただけますか？', 'Bisakah Anda menuangkan anggur lagi?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3282_peringatan, '今日、先生に注意されちゃったよ。', 'Hari ini, aku mendapat peringatan dari guruku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3282_peringatan, 'ランニングに行く時は車に注意してね。', 'Berhati-hatilah terhadap mobil saat Anda berlari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3282_peringatan, '私は彼が悪い方向に進んでるんじゃないかと心配しているのよ。注意したんだけど、全く聞かないの。', 'Saya khawatir dia mungkin menuju ke arah yang buruk. Aku sudah memperingatkannya, tapi dia tidak mau mendengarkan sama sekali.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3283_memesan, 'スタバの注文の仕方がよく分からないんだけど。', 'Saya kurang paham cara pesan di Starbucks.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3283_memesan, 'このドレス、ネットで注文できるよ。', 'Anda bisa memesan gaun ini secara online.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3283_memesan, 'それは無理な注文だが、やるしかない。', 'Itu permintaan yang tidak masuk akal, tapi kami tidak punya pilihan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3284_untuk_berkonsentrasi, 'みんなが集中すればこの仕事は五時までに終わるはずだよ。', 'Pekerjaan ini harus diselesaikan pukul lima jika semua orang berkonsentrasi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3284_untuk_berkonsentrasi, 'クラスが終わるまで集中して！', 'Fokus sampai kelas selesai!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3284_untuk_berkonsentrasi, '人の前だと集中して本が読めないんです。', 'Saya tidak dapat berkonsentrasi membaca buku ketika berada di dekat orang-orang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3285_untuk_dibangkitkan, 'わたしは東京で生まれ育ちました。', 'Saya lahir dan besar di Tokyo.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3285_untuk_dibangkitkan, 'このサボテン、元気に育ってるね。', 'Kaktus ini tumbuh dengan baik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3285_untuk_dibangkitkan, 'いつの間にかその犬とコウイチの間には愛が育ちました。', 'Cinta tumbuh antara anjing dan Koichi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3286_pendidikan, '今日は教育センターに行きます。', 'Hari ini, kita pergi ke pusat pendidikan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3286_pendidikan, '日本では、小学校教育と中学校教育を受けなければなりません。', 'Di Jepang, Anda wajib mengenyam pendidikan sekolah dasar dan pendidikan sekolah menengah pertama.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3286_pendidikan, '「教育があって常識がないよりも、教育がなくて常識がある方がはるかによい。」って誰の言葉だっけ？', 'Ingatkah Anda siapa yang berkata, "Adalah seribu kali lebih baik memiliki akal sehat tanpa pendidikan daripada pendidikan tanpa akal sehat?"');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3287_untuk_mengambil_sesuatu, '海岸でゴミを拾うボランティアを一年間やりました。', 'Saya menjadi sukarelawan selama setahun untuk memungut sampah di pantai.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3287_untuk_mengambil_sesuatu, 'さっき歩道で五百円玉を拾いました。', 'Saya baru saja mengambil koin 500 yen di trotoar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3287_untuk_mengambil_sesuatu, '道端にソファを捨ててあったんだけど、まだ使えそうだったから、拾ってきたよ。', 'Ada sofa terbengkalai di pinggir jalan dan sepertinya masih bisa digunakan, jadi saya mengambilnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3288_untuk_menunjuk, 'コンパスの矢が北の方向を指しています。', 'Panah kompas menunjuk ke arah Utara.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3288_untuk_menunjuk, '人を指で指すのは、日本では失礼です。', 'Di Jepang, tidak sopan menunjuk orang dengan jari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3288_untuk_menunjuk, '宿題やってないよ、、。先生に指されたらどうしよう。', 'Saya belum mengerjakan pekerjaan rumah saya... Bagaimana jika guru menunjuk ke arah saya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3289_jari, '指がきれいですね。', 'Kamu mempunyai jari-jari yang indah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3289_jari, 'なんで手の指も足の指も五本なんだろう？', 'Mengapa kita memiliki lima jari tangan dan juga lima jari kaki?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3289_jari, '中指がいきなりいたくなったんだけど。', 'Jari tengahku tiba-tiba terasa sakit.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3289_jari, '指切りしたんだから、わすれないでね！', 'Kami berjanji pada Pinky, jadi jangan lupa!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3291_untuk_menunjuk, 'ミーティングの場所は、お客さまが指定しました。', 'Tempat pertemuan ditentukan oleh klien.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3291_untuk_menunjuk, '自分でフライトを指定してもいいですか？', 'Bolehkah saya menugaskan penerbangan saya sendiri?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3291_untuk_menunjuk, 'この絵は日本に国宝に指定されてます。', 'Lukisan ini ditetapkan sebagai harta nasional di Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3293_pakaian, '洋服を買う前にサイズをチェックをするのは大切です。', 'Penting untuk memeriksa ukurannya sebelum membeli pakaian.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3293_pakaian, '今日のデートは和服にしようかな？洋服にしようかな？', 'Haruskah aku memakai pakaian Jepang untuk kencan hari ini? Atau haruskah saya memakai pakaian biasa?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3293_pakaian, '早く洋服を着ないと、学校に遅れるわよ。', 'Kamu harus segera berpakaian atau kamu akan terlambat ke sekolah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3296_kamar_bergaya_barat, 'この家には小さな洋室が三つあります。', 'Rumah ini memiliki tiga kamar kecil bergaya Barat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3296_kamar_bergaya_barat, '洋室にはベッドとデスクがあります。', 'Ada tempat tidur dan meja di kamar bergaya Barat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3296_kamar_bergaya_barat, '私の部屋は水色の洋室です。', 'Kamar saya adalah kamar bergaya Barat berwarna biru muda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3297_tuhan, '神はどこかにいると思いますか？', 'Apakah menurut Anda para dewa ada di suatu tempat?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3297_tuhan, '神に相談できるコールセンターがあったら良いのに。', 'Saya berharap ada call center di mana saya bisa berkonsultasi dengan Tuhan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3297_tuhan, '神様は水の上を歩けるかもしれないけど、俺は草地の上を泳ぐことができるんだぜ。', 'Tuhan mungkin bisa berjalan di atas air, tapi aku bisa berenang di padang rumput.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3298_shinto, '神道には特に教えがないんですよ。', 'Shinto sebenarnya tidak memiliki ajaran khusus.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3298_shinto, 'コウイチは、ひたすら神道について語った。', 'Koichi terus berbicara tentang Shinto.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3298_shinto, 'どうして神道には絶対的な神がいないのですか。', 'Mengapa Shinto tidak memiliki Tuhan yang mutlak?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3299_kuil_shinto, 'この辺は小さい神社が多いですね。', 'Ada banyak kuil kecil di sekitar sini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3299_kuil_shinto, '神社でおみくじを引いたことはありますか？', 'Pernahkah Anda mengambil slip keberuntungan di kuil?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3299_kuil_shinto, '最近は神社で自撮りするインフルエンサーが多いんですよ。', 'Banyak influencer yang mengambil selfie di kuil akhir-akhir ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3300_kedua, 'コウイチにラインしたら秒で返事きたw', 'Aku mengirim pesan LINE ke Koichi dan dia membalasku dalam hitungan detik haha.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3300_kedua, '大体いつも、ふとんに入ったら三秒でねてる。', 'Ketika saya pergi tidur, saya biasanya tertidur dalam tiga detik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3300_kedua, 'あなたの発音をたったの十二秒でネイティブレベルにしてみせますよ。', 'Pengucapan Anda dapat mencapai tingkat asli hanya dalam dua belas detik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3301_kelas_tinggi, 'こんな高級なプレゼントもらえません。', 'Saya tidak bisa menerima hadiah kelas atas seperti itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3301_kelas_tinggi, 'これは中国で有名な高級茶なんですよ。', 'Ini adalah teh kelas atas yang terkenal di Tiongkok.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3301_kelas_tinggi, 'あの高級レストランはVIP専用で、入店には招待状か紹介状が必要なんだって。', 'Restoran mewah itu eksklusif untuk VIP, dan untuk masuk, Anda memerlukan undangan atau referensi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3302_tingkat_pemula, '来週、初級から中級にレベルが上がります。', 'Saya pindah ke kelas tingkat menengah dari kelas tingkat pemula minggu depan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3302_tingkat_pemula, 'このコースは、初級、中級、上級の三つのレベルに分かれています。', 'Kursus ini dibagi menjadi tiga tingkatan: pemula, menengah dan lanjutan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3302_tingkat_pemula, '私の日本語はまだ初級レベルですが、一生懸命勉強しています。', 'Bahasa Jepang saya masih di tingkat dasar, tapi saya berusaha keras untuk itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3303_tingkat_menengah, '中級とは、どういったレベルですか？', 'Level seperti apa yang merupakan level menengah?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3303_tingkat_menengah, '中級の日本語クラスに入りたいんです。', 'Saya ingin mengikuti kelas bahasa Jepang tingkat menengah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3303_tingkat_menengah, 'この会社には英語が中級の人たちは少ない。', 'Hanya ada sedikit orang yang mampu berbahasa Inggris tingkat menengah di perusahaan ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3304_tingkat_lanjutan, 'どうしても上級クラスについていけません。', 'Saya tidak bisa mengikuti kelas tingkat lanjutan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3304_tingkat_lanjutan, 'コウイチは私の学校の上級生です。', 'Koichi adalah siswa senior di sekolahku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3304_tingkat_lanjutan, '英語が母国語でない人で、ネイティブレベルや上級の英語を話す人もいれば、そうでない人もいます。', 'Beberapa penutur non-pribumi berbicara bahasa Inggris pada tingkat penutur asli atau lanjutan, sementara yang lainnya tidak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3305_untuk_mengikuti, '女の人を追うのが下手なんですよ。', 'Saya tidak pandai mengikuti wanita.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3305_untuk_mengikuti, 'コウイチは、いつも最新のファッショントレンドを追っている。', 'Koichi selalu mengikuti tren fashion terkini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3305_untuk_mengikuti, 'どんなに大変でも、私は自分の夢を追い続けるつもりなの。', 'Aku akan terus mengejar impianku, tidak peduli seberapa sulitnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3306_pertempuran, '父は、いつも母との戦いに負ける。', 'Ayah selalu kalah dalam pertarungannya dengan Ibu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3306_pertempuran, '戦いはきらいです。', 'Saya tidak suka konflik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3306_pertempuran, 'ムダな戦いはやめろ！', 'Berhentilah melakukan pertempuran yang tidak perlu!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3306_pertempuran, '彼は血みどろの戦いの後、そのままビッグマックを食べに行った。', 'Dia langsung memilih Big Mac setelah pertarungan berdarah itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3307_taktik, '明日のゲームのための作戦を立てました。', 'Saya merencanakan beberapa taktik untuk pertandingan besok.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3307_taktik, '私たちの作戦はスパイに知られてしまった。', 'Strategi kita telah dibocorkan kepada mata-mata.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3307_taktik, 'プロポーズは作戦通りにはいかなかった。', 'Usulan tersebut tidak berjalan sesuai strategi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3308_tangki, 'なんでこんな所を戦車が走ってるんだろう？', 'Mengapa ada tank yang melewati tempat seperti itu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3308_tangki, '戦車のタイヤに空気を入れたことはありますか？', 'Pernahkah Anda memompa ban tangki?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3308_tangki, '戦車の周りで遊んじゃダメだよ！', 'Jangan bermain-main dengan tangki!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3309_medan_perang, 'すみません。今、戦場にいるので電話に出られないんです。', 'Maaf. Saya tidak dapat mengangkat telepon sekarang karena saya sedang berada di medan perang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3309_medan_perang, '今日のオフィスはヤクザの戦場のようだった。', 'Kantor hari ini seperti medan perang yakuza.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3309_medan_perang, 'コウイチは頼れるやつだ。たとえ戦場にいたとしても、俺達を決して見捨てやしないよ。', 'Koichi adalah pria yang bisa diandalkan. Dia tidak akan pernah mengecewakan kita meskipun kita berada di medan perang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3310_untuk_bersaing, 'あなたとチェスで競うつもりはないです。', 'Saya tidak berencana bersaing dengan Anda dalam catur.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3310_untuk_bersaing, '人と競うのはあまり好きじゃないんですよね。', 'Saya tidak terlalu suka berkompetisi dengan orang lain.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3310_untuk_bersaing, '競う相手がいるのは良いことだよ。', 'Senang rasanya memiliki seseorang untuk bersaing.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3311_bagus, 'そのアイディアすごい良いですね！', 'Menurutku ide itu sangat bagus!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3311_bagus, 'ケンカするほど仲が良いって言うだろ？', 'Kamu bilang kamu rukun saat bertarung, kan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3311_bagus, '良い考えだけど、実際それをするには資金が足りないんだよね。', 'Itu ide yang bagus, tapi kami tidak punya cukup uang untuk melakukannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3313_khususnya, '今日は特に予定ないですよ。', 'Saya tidak punya rencana khusus hari ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3313_khususnya, 'このメロンは特にかたいですね。まるでボーリングの玉のようだ。', 'Melon ini sangat keras. Ini seperti bola bowling.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3313_khususnya, '「お夕飯は何が食べたい？」「何でもいいよ。特にこだわりはないよ。」', '"Apa yang kamu inginkan untuk makan malam?" "Semuanya baik-baik saja. Aku tidak terlalu pilih-pilih."');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3314_tidak_nyaman, 'この辺りでは、車を持っていないとかなり不便ですよ。', 'Tidak adanya mobil di sekitar sini sungguh merepotkan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3314_tidak_nyaman, 'もし不便なことがあればすぐにフロントデスクに言ってくださいね。', 'Jika ada ketidaknyamanan, segera beri tahu resepsionis.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3314_tidak_nyaman, '俺の隠れ家へようこそ。ビールは冷蔵庫に入ってるぜ。ちょっと不便かもしれねぇが、煙草は外で吸ってくれよな。', 'Selamat datang di gua laki-laki saya. Bir ada di lemari es. Ini mungkin sedikit merepotkan bagi Anda, tetapi Anda harus keluar untuk merokok.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3315_kamar_kecil, 'やばい。便所サンダルで学校に来ちゃった！', 'Oh sial. Saya datang ke sekolah dengan sandal toilet!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3315_kamar_kecil, 'ちょっとコンビニの便所行ってくるわ。', 'Aku akan pergi ke kamar mandi toko serba ada secepatnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3315_kamar_kecil, '「便所」っていう言葉はちょっと下品ですよ。', 'Kata <ja>便所</ja> terdengar agak vulgar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3316_untuk_bekerja, 'アリは、よく働く虫だね。', 'Semut adalah serangga yang bekerja sangat keras.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3316_untuk_bekerja, 'いつか日本で働きたいんです。', 'Saya ingin bekerja di Jepang suatu hari nanti.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3316_untuk_bekerja, 'なんで休日も働かなきゃいけないの？', 'Mengapa saya harus bekerja pada hari libur?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3317_pendapat, 'このプランについて、意見はありますか？', 'Apakah Anda punya pendapat tentang rencana ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3317_pendapat, '仲のいい人の意見は、やっぱり気になります。', 'Mau tak mau aku memedulikan pendapat orang-orang yang dekat denganku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3317_pendapat, 'これは俺の個人的な意見なんだけど、たまに日本は本当に変わった国だなぁと思うんだよね。', 'Ini hanya pendapat pribadi saya, tapi terkadang saya berpikir Jepang adalah negara yang sangat aneh.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3318_arti, 'このジェスチャーの意味、分かる？', 'Tahukah Anda arti dari isyarat ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3318_arti, 'あんたの言ってる意味分かんない。', 'Saya tidak mengerti apa yang Anda katakan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3318_arti, '「あなたって、もっと頭が良いと思ってたわ。」「おい、それってどういう意味だよ！」', '"Saya pikir kamu lebih pintar." "Hei, apa maksudnya?"');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3319_mencicipi, 'この味、お口に合うといいんですが。', 'Saya harap rasa ini sesuai dengan selera Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3319_mencicipi, 'ここのラーメンの味、昔からずーっと一緒なんだよ。', 'Rasa ramen di sini sudah lama sama.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3319_mencicipi, 'このスープの隠し味はフグの骨なんです。', 'Rahasia rasa sup ini adalah tulang ikan buntal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3456_jual_murah, 'あそこのスーパー、今週はトマトの安売りセールをやってるよ。', 'Toko kelontong di sana mengadakan penjualan tomat minggu ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3456_jual_murah, '安売りのおかげで、このワンピースは三百円で買えたよ。', 'Berkat penjualannya, saya bisa membeli gaun ini seharga 300 yen.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3456_jual_murah, '自分を安売りしてない？', 'Apakah Anda tidak menjual diri Anda sendiri?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3482_menjadi_genap, 'ムカつくから、なんか仕返ししたいな。', 'Menurutku itu cukup menjengkelkan, jadi aku ingin membalasnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3482_menjadi_genap, '本当に最低の女！いつか仕返ししてやるわ！', 'Sungguh, dia yang terburuk! Aku akan membalasnya suatu hari nanti!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3482_menjadi_genap, 'プリンを食べられた仕返しに、コウイチの好きなヨーグルトを食べてやった。', 'Untuk membalas dia karena memakan pudingku, aku memakan yogurt favorit Koichi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3490_untuk_dikembalikan, 'メールが返ってくるまで会社にいます。', 'Saya akan berada di kantor sampai email kembali.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3490_untuk_dikembalikan, '投げたボールが風で返ってきた。', 'Bola yang saya lempar kembali ke saya bersama angin.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3490_untuk_dikembalikan, '貸したお金がちゃんと返ってくると思ったら大間違いよ。', 'Berpikir bahwa uang saya akan dikembalikan dengan benar adalah kesalahan besar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3498_daerah_asrama, 'ゴンドラ乗り場はどこですか？', 'Dimana terminal gondolanya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3498_daerah_asrama, '今、タクシー乗り場にいます。', 'Aku di tempat taksi sekarang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3498_daerah_asrama, '今、家の前のバス乗り場で通り過ぎる車を見ながらダラダラしているよ。', 'Saat ini aku sedang bersantai di halte depan rumah sambil memandangi mobil-mobil yang lalu lalang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3499_cara_menggunakan, 'もう少し、言葉の使い方に気を付けた方がいいよ。', 'Anda harus lebih berhati-hati dalam menggunakan bahasa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3499_cara_menggunakan, 'おじいちゃんはスマホやパソコンの使い方が分からないので、いつも電話をしてきます。', 'Kakek selalu menelepon karena dia tidak tahu cara menggunakan ponsel pintar atau komputernya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3499_cara_menggunakan, 'エクセルの使い方？そんなのうちの犬でも知ってるよ。', 'Bagaimana cara menggunakan Excel? Bahkan anjingku pun tahu itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3500_pekerjaan, '新しい仕事を始めてから、まだ三日です。', 'Sejak saya memulai pekerjaan baru, baru tiga hari berlalu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3500_pekerjaan, '今日は六時まで仕事が終わらないから、それまで近くのカフェにいてね。', 'Saya tidak akan bisa pulang kerja sampai jam enam hari ini, jadi tinggallah di kafe terdekat sampai jam itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3500_pekerjaan, '赤ちゃんの仕事は泣くことです。', 'Tugas bayi adalah menangis.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3502_pecundang, '私はあなたのことを負け犬だとは思わないよ。', 'Menurutku kamu bukan pecundang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3502_pecundang, 'こんな生活をしてたら、ずっと人生の負け犬だよ。', 'Jika aku hidup seperti ini, aku hanya akan terus menjadi pecundang dalam hidup.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3502_pecundang, '負け犬と呼ばれるのは、もう嫌なんだよ。', 'Saya tidak ingin disebut pecundang lagi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3504_kemenangan, '今日のゲームは日本チームの勝ちでした。', 'Tim Jepang memenangkan pertandingan hari ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3504_kemenangan, 'キーホールダーがもらえるの早い者勝ちなんだって。早く行こう！', 'Gantungan kunci adalah siapa cepat dia dapat. Mari kita lanjutkan!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3504_kemenangan, 'あのエースがマウンドに立っていたら、私たちには勝ち目がないよ。', 'Jika kartu as itu ada di gundukan, kita tidak mempunyai peluang untuk menang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3507_menderita, '日本には長時間労働に苦しむ人が多くいます。', 'Ada banyak orang yang menderita karena jam kerja yang panjang di Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3507_menderita, 'いじめに苦しみながら学校に行きたくないよ。', 'Saya tidak ingin pergi ke sekolah sambil menderita bullying.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3507_menderita, 'なぜ罪のない人が苦しんでいるのか。', 'Mengapa orang yang tidak bersalah menderita?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3508_untuk_menyadari, 'その女が自分の母だと気付くまでに時間がかかりました。', 'Butuh beberapa waktu bagi saya untuk menyadari bahwa wanita itu adalah ibu saya sendiri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3508_untuk_menyadari, '気づいたらもう学校に行く時間だった。', 'Ketika saya perhatikan, sudah waktunya berangkat ke sekolah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3508_untuk_menyadari, 'あんたが私にアイスクリームをくれるなんて、本当に信じられないよ。あんたがそんなに優しいなんて今まで気付かなかったわ！', 'Aku tidak percaya kamu memberiku es krimmu. Saya tidak menyadari bahwa Anda begitu baik sampai sekarang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3509_untuk_melihat, '見送る方と見送られる方、どっちが良い？', 'Mana yang lebih baik menurut Anda? Orang yang mengantar seseorang pergi, atau orang yang diantar oleh seseorang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3509_untuk_melihat, '東京まで見送りに行った。', 'Saya pergi ke Tokyo untuk mengantar mereka pergi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3509_untuk_melihat, '彼は海外に行くチャンスを見送った。', 'Dia melewatkan kesempatan untuk pergi ke luar negeri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3510_kadang_kadang, 'そこのコンビニは時々行きます。', 'Saya pergi ke toko serba ada dari waktu ke waktu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3510_kadang_kadang, '時々「コウイチは今何してるかな？」って思うんだよね。', 'Terkadang aku bertanya-tanya apa yang sedang dilakukan Koichi saat ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3510_kadang_kadang, 'ご近所とのトラブルは時々ありました。', 'Terkadang ada masalah dengan tetangga saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3511_resepsionis, 'まずは受付に行ってください。', 'Silakan ke resepsionis dulu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3511_resepsionis, 'あそこのジムは受付スタッフまでマッチョだね。', 'Bahkan staf resepsi di gym itu pun terkoyak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3511_resepsionis, 'もう受付で手続きはされましたか？', 'Apakah Anda sudah menyelesaikan prosedur yang diperlukan di meja resepsionis?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3511_resepsionis, '見学ツアーの受付はこちらです。', 'Di sinilah Anda check-in untuk tur.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3512_belanja, 'スーパーで買い物をしたばかりです。', 'Aku baru saja selesai berbelanja.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3512_belanja, 'たまにはデパートに買い物に行こうよ。', 'Mari kita pergi berbelanja di department store kapan-kapan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3512_belanja, '今日はクリスマスの買い物に行くの！すごくワクワクするわ！', 'Kami akan berbelanja Natal hari ini! Saya sangat bersemangat!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3513_sulit_untuk_ditangani, 'セロリが苦手です。', 'Saya bukan penggemar berat seledri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3513_sulit_untuk_ditangani, 'あのアイドル、歌が苦手なのが欠点なんだよな。', 'Kekurangan dari idola itu adalah dia bukan penyanyi yang baik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3513_sulit_untuk_ditangani, 'うちの犬がなんでお前にばっかり吠えるかって？たぶん、お前のことが苦手なんだよ。', 'Mengapa anjing saya hanya menggonggong pada Anda? Dia mungkin tidak menyukaimu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3892_buruk, 'ビエト、今日はちょっと不良っぽいヘアスタイルだね。', 'Gaya rambut Viet saat ini terlihat seperti anak nakal, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3892_buruk, '不良パーツが見つかりました。', 'Bagian yang tidak berfungsi ditemukan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3892_buruk, 'あの不良少女は、いきなり学校に来なくなったと思えば、ギャングに入ったそうなんです。', 'Gadis nakal itu tiba-tiba berhenti datang ke sekolah, dan hal berikutnya yang kami tahu, dia rupanya bergabung dengan sebuah geng.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3949_merasa_baik, 'このブランケット、気持ちいい。', 'Selimut ini terasa sangat enak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3949_merasa_baik, '家がきれいだと気持ちいいよね！', 'Bukankah menyenangkan memiliki rumah yang bersih?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3949_merasa_baik, 'マッサージ中、気持ち良すぎてイビキをかいてたみたい。', 'Sepertinya saya merasa sangat nyaman hingga saya mendengkur saat dipijat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4148_untuk_mencoba_sesuatu, 'このサプリ、試して。', 'Cobalah suplemen ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4148_untuk_mencoba_sesuatu, '色々なダイエットを試したけど、どれもダメだったよ。', 'Saya mencoba berbagai diet, tetapi tidak ada yang berhasil.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4148_untuk_mencoba_sesuatu, '肘を舐めれるかどうかは分からないけど、試しにやってみるよ。', 'Saya tidak tahu apakah saya bisa menjilat siku saya, tapi saya akan mencobanya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4217_untuk_membandingkan, 'この二つの写真を比べると、整形したのがハッキリ分かるよ。', 'Jika Anda membandingkan kedua gambar ini, Anda dapat melihat dengan jelas bahwa dia menjalani operasi plastik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4217_untuk_membandingkan, '他のテキストと比べてみてから決めたら？', 'Mengapa Anda tidak membandingkannya dengan buku teks lain sebelum memutuskan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4217_untuk_membandingkan, '去年と比べてワニカニユーザーの数が減っているんです。どうしましょう？', 'Jumlah pengguna WaniKani lebih rendah dibandingkan tahun lalu. Apa yang harus kita lakukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4217_untuk_membandingkan, 'それに比べれば、ボクのケースなんてまだマシだよ。', 'Dibandingkan dengan itu, kasusku masih tidak terlalu buruk.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4354_ujian_masuk, '入学試験まで、あと二ヶ月です。', 'Dua bulan tersisa sampai ujian masuk.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4354_ujian_masuk, '入学試験には、たくさんお金がかかった。', 'Ujian masuknya membutuhkan biaya yang besar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4354_ujian_masuk, 'ええっ！入学試験に落ちちゃったの？', 'Apa! Dia gagal dalam ujian masuk?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4373_tidak_terduga, 'あなた弟と妹がいるの？意外だね。', 'Oh, kamu punya saudara laki-laki dan perempuan. Itu tidak terduga.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4373_tidak_terduga, '意外と体重は落ちてた。', 'Tak disangka, berat badan saya turun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4373_tidak_terduga, 'ゆですぎの柔らかいパスタを好んで食べるのは、カナダの意外な文化でした。', 'Menyukai pasta lembut yang dimasak terlalu lama adalah aspek budaya Kanada yang tidak terduga.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4467_jawaban_yang_benar, '正解です！', 'Itu benar!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4467_jawaban_yang_benar, 'コウイチにはヒミツにしておいて、正解だったね。', 'Kami benar dalam merahasiakannya dari Koichi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4467_jawaban_yang_benar, '正解を出したのは、君たちの中ではジェニーだけでした。', 'Di antara kalian, satu-satunya yang mendapat jawaban benar adalah Jenny.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6653_siapa, 'あの人、誰かな？', 'Siapa orang itu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6653_siapa, '次は誰の番？', 'Giliran siapa selanjutnya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6653_siapa, 'え、それ、誰が言ったの？', 'Oh, siapa yang bilang begitu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6653_siapa, '「彼女は誰かしら。」「名前を知らないの？クラスであなたの後ろに座っているよ！」', '"Aku ingin tahu siapa gadis itu." “Kamu tidak tahu namanya? Dia duduk di belakangmu di kelas!”');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7453_termasuk, 'このスプーンはケース付きですよ。', 'Sendok ini dilengkapi dengan kotaknya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7453_termasuk, 'この辺にプール付きのホテルはありますか？', 'Apakah ada hotel dengan kolam renang di sekitar sini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7453_termasuk, 'この部屋は冷蔵庫、洗濯機付きです。', 'Kamar ini dilengkapi dengan kulkas dan mesin cuci.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7463_sekutu, 'トーフグだけは、味方してくれると思ってたんだけどな。', 'Saya pikir setidaknya Tofugu akan mendukung saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7463_sekutu, 'お父さんは、お姉ちゃんの味方のフリをするが、いつでも私の味方だ。', 'Ayah berpura-pura menjadi sekutu kakak perempuanku, tapi sebenarnya dia selalu berada di sisiku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7463_sekutu, 'お前は一体どっちの味方なんだ？', 'Kamu berada di pihak mana?!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7466_sekarang_dijual, '年末ジャンボ宝くじはまだ発売中ですか？', 'Apakah Undian Jumbo Akhir Tahun masih dijual?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7466_sekarang_dijual, 'このアイスは全国のコンビニで発売中です。', 'Es krim ini dijual di toko serba ada di seluruh negeri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7466_sekarang_dijual, '少年ジャンプ６月号、ただ今絶賛発売中。', 'Shonen Jump edisi Juni kini sedang dijual dan mendapat pujian kritis.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7489_makanan, '安田さんは、食べ物をおねがいします。', 'Tolong bawakan makanan, Bu Yasuda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7489_makanan, 'これは本当に食べ物ですか？石みたいですが。', 'Apakah ini benar-benar makanan? Itu terlihat seperti batu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7489_makanan, '食べ物を粗末にするとバチが当たりますよ。', 'Jika Anda menyia-nyiakan makanan, surga akan menghukum Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7490_melambai, '今日の波、すごく高いね。', 'Ombak hari ini tinggi sekali ya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7490_melambai, 'サーファーにとっては最高の波だよ。', 'Itulah ombak terbaik bagi para peselancar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7490_melambai, '今日の海、波が全然なくて静かだね。', 'Lautan saat ini sepi dan tidak ada ombak sama sekali.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7493_tepat_sekali, '大きすぎず、小さすぎず、本当に丁度いいサイズです。', 'Itu tidak terlalu besar atau terlalu kecil. Itu ukurannya yang tepat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7493_tepat_sekali, 'あっ、丁度いいところに来たね！', 'Oh, kamu datang pada waktu yang tepat!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7493_tepat_sekali, 'このぐらいの温度が丁度いいですね。', 'Suhu ini tepat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7497_untuk_menjaga, 'アメリカに行ったら高い日本語力を保持できるか不安です。', 'Saya khawatir tentang kelancaran berbahasa Jepang jika saya pergi ke Amerika.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7497_untuk_menjaga, 'このクオリティを保持するのは中々すごいことなんですよ。', 'Mempertahankan kualitas ini cukup mengesankan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7497_untuk_menjaga, '自国の地位を保持することをまず優先した方がいい。', 'Anda harus memprioritaskan mempertahankan status negara Anda sendiri terlebih dahulu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7514_untuk_mengunjungi_secara_teratur, 'えっ、東京から九州まで毎日通ってるの？', 'Tunggu — kamu bolak-balik antara Tokyo dan Kyushu setiap hari?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7514_untuk_mengunjungi_secara_teratur, 'コウイチは、会社までハーレーで通っています。', 'Koichi berangkat kerja dengan Harley.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7514_untuk_mengunjungi_secara_teratur, 'うちの子は三才のころからピアノ教室に通っています。', 'Anak saya telah mengikuti pelajaran piano sejak usia tiga tahun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7514_untuk_mengunjungi_secara_teratur, '私の妹は、四月からトーフグ学園に通うことになります。', 'Adik perempuanku akan bersekolah di Akademi Tofugu mulai bulan April.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7532_departemen, '中学の時は、バレーボール部でした。', 'Saya pernah menjadi anggota klub bola voli saat SMP.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7532_departemen, 'あそこの会社のデジタルソリューション部に入ったばかりなんです。', 'Saya baru saja bergabung dengan departemen solusi digital di perusahaan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7532_departemen, '経理部の部長をしています。', 'Saya kepala departemen akuntansi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7577_atap, '今日、屋上でバーベキューをします。', 'Kami mengadakan barbekyu di atap hari ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7577_atap, 'このビルの屋上ではトマトを育てています。', 'Kami menanam tomat di atap gedung ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7577_atap, '屋上では、昼は洗濯物を干したり、夜は星を見たりするんです。', 'Di rooftop, kami mengeringkan cucian di siang hari dan melihat bintang di malam hari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7579_persiapan, 'もしもの時のためにキャンドルとライターを用意しました。', 'Saya menyiapkan lilin dan korek api jika terjadi keadaan darurat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7579_persiapan, '明日の学校の用意はもう出来た？', 'Apakah kamu sudah selesai mempersiapkan segala sesuatunya untuk sekolah besok?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7579_persiapan, '出所祝いの鍋パーティーの用意は全てこちらで致しますので、あなたは保釈金の用意をお願いします。', 'Kami akan melakukan semua pengaturan pesta nabe untuk merayakan pembebasan dari penjara, jadi mohon berhati-hati dalam membuat pengaturan jaminan di pihak Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7626_untuk_dilakukan_tanpa, '毎日の生活にヨガは欠かせません。', 'Saya tidak dapat melakukannya tanpa yoga dalam kehidupan sehari-hari saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7626_untuk_dilakukan_tanpa, 'このチームのメンバーは一人も欠かせない、大切なメンバーです。', 'Setiap anggota tim ini penting dan berharga.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7626_untuk_dilakukan_tanpa, '私の生活に、携帯電話を欠かすことはできない。', 'Saya tidak bisa hidup tanpa ponsel saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7627_tamasya, '昔の町を見物するのが楽しみです。', 'Saya tak sabar untuk melihat kota tua.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7627_tamasya, 'クリスマスパレードを見物しにきた人々で町がいっぱいです。', 'Kota ini penuh dengan orang-orang yang datang untuk melihat parade Natal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7627_tamasya, '母ちゃんなら、東京見物に出かけたぜ。', 'Ibu pasti pergi jalan-jalan ke Tokyo.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7630_sebelumnya, 'こうなることは分かっていたので、予め用意しておきました。', 'Saya tahu itu akan terjadi, jadi saya mempersiapkannya jauh-jauh hari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7630_sebelumnya, '予めフライト前日にオンラインでチェックインしておきました。', 'Saya check in online sehari sebelum penerbangan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7630_sebelumnya, '予め予習しておいた甲斐がありました。', 'Mempersiapkan pelajaran terlebih dahulu sangatlah bermanfaat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7631_hiragana, '平仮名は読めますか？', 'Bisakah kamu membaca hiragana?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7631_hiragana, 'うちの子には平仮名の名前をつけたいんです。', 'Saya ingin memberi nama anak saya dengan hiragana.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7631_hiragana, 'このチョコレートを食べると平仮名を全部おぼえることができますよ。', 'Jika kamu makan coklat ini, kamu bisa menghafal semua hiragananya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7632_harfiah, 'この子は文字通り「天才」だ。', 'Anak ini benar-benar jenius.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7632_harfiah, '目と玉という漢字の文字通り、目玉は「eye ball」という意味です。', 'Dengan kanji 目 dan 玉, 目玉 secara harfiah berarti "bola mata".');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7632_harfiah, 'ツンデレとは、文字通り「人前ではツンツンしているけど二人の時はデレデレすること」です。', '"Tsundere" secara harafiah berarti, "bertingkah dingin di depan umum namun bersikap penuh kasih sayang secara pribadi".');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7633_tanda, '相図をしたら、スクワットを始めて下さい。', 'Mulailah berjongkok sesuai sinyal saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7687_dasar_dasar, 'これはプログラミングの初歩の初歩です。', 'Ini adalah dasar-dasar pemrograman yang mutlak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7687_dasar_dasar, '父は、このゲームの初歩をおしえてくれました。', 'Ayah saya mengajari saya dasar-dasar permainan ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7687_dasar_dasar, 'フランス語を初歩から学び始めました。', 'Saya mulai mempelajari dasar-dasar bahasa Prancis.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7689_baru, 'レベルアップすると、新たなステージに行くことができますよ。', 'Anda akan dapat melanjutkan ke tahap baru ketika Anda naik level.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7689_baru, '九月は自分にとって新たなスタートになりそうな気がする。', 'Saya merasa bulan September akan menjadi awal yang baru bagi saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7689_baru, 'この小説は、読み返す度に新たな発見がある。', 'Setiap kali saya membaca ulang novel ini, saya menemukan penemuan baru.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7690_barat, '西洋の国にはまだ行ったことがないんです。', 'Saya belum pernah ke negara barat mana pun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7690_barat, 'ハグは西洋の文化だと言えるでしょう。', 'Bisa dibilang berpelukan adalah bagian dari budaya Barat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7690_barat, '西洋人は家の中でもクツをはくんじゃないんですか？', 'Bukankah orang Barat memakai sepatu di dalam rumah mereka?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7736_samping, 'この正方形の辺の長さは、それぞれ四センチです。', 'Panjang setiap sisi persegi tersebut adalah empat sentimeter.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7736_samping, 'この三角形の辺の長さをモノサシではかってみてください。', 'Tolong ukur panjang sisi segitiga ini dengan penggaris.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7736_samping, 'これは二等辺三角形です。', 'Ini adalah segitiga sama kaki.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7744_berbeda, 'コウイチが、別の女と歩いているところを見たの。', 'Saya melihat Koichi berjalan dengan gadis yang berbeda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7744_berbeda, 'それとこれとは話が別だろう。', 'Ini dan itu adalah dua cerita yang berbeda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7744_berbeda, 'その場合は別として、このやり方で男女を別にするのは通常問題ありません。', 'Selain itu, biasanya tidak masalah jika memisahkan jenis kelamin dengan cara ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7745_kerangka_berpikir, '何事もポジティブな心持ちが大切だよね。', 'Memiliki pola pikir positif itu penting dalam segala hal, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7745_kerangka_berpikir, 'このカレー、一人分にしては心持ち多くない？', 'Bukankah kari ini terlalu banyak untuk satu orang?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7745_kerangka_berpikir, 'あの子は、心持ちのよい素直な子です。', 'Dia adalah anak yang menyenangkan dan jujur.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7746_cerita_rakyat, 'これは日本の昔話ですか。', 'Apakah ini cerita rakyat Jepang?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7746_cerita_rakyat, 'まるで昔話の中に出てくるプリンセスみたいね。', 'Anda seperti seorang putri yang muncul dalam kisah lama.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7746_cerita_rakyat, 'バス待合所でバスを待ちながら、昔話の絵本を子どもに読み聞かせた。', 'Sambil menunggu bus di halte bus, saya membacakan buku cerita rakyat bergambar untuk anak saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7747_bagus_sekali, '見事な木ですね。', 'Itu pohon yang indah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7747_bagus_sekali, 'お見事！いやー、実に見事なシュートだった！', 'Bagus sekali! Wow, itu adalah bidikan yang sangat indah!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7747_bagus_sekali, ' 気持ちいいぐらい見事にフラれたよ。', 'Saya ditolak dengan begitu luar biasa sehingga hampir terasa menyenangkan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8745_biologi, '学校で生物学のクラスが一番楽しいです。', 'Saya paling menikmati kelas biologi di sekolah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8745_biologi, '川田さんは生物学の学者さんです。', 'Tuan Kawada adalah seorang sarjana biologi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8745_biologi, 'デザイナーになりたいなら、生物学も学んだ方がいい。', 'Jika Anda ingin menjadi seorang desainer, Anda juga harus belajar biologi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8815_biografi, 'あの投手の伝記、読んだ？', 'Pernahkah Anda membaca kisah hidup pitcher?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8815_biografi, 'その作家の伝記に書かれていたことは、とても意外だった。', 'Hal-hal yang tertulis dalam biografi penulis sungguh mengejutkan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8815_biografi, 'まあ、そう思うのは、最近読んだ伝記の影響かもしれません。', 'Saya rasa saya mungkin merasa seperti ini karena saya dipengaruhi oleh biografi yang saya baca baru-baru ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8932_untuk_menggulung_sesuatu, '石を転がした。', 'Saya menggulingkan batu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8932_untuk_menggulung_sesuatu, 'ちょうどサイコロを転がした時、電話が来た。', 'Tepat ketika saya baru saja melempar dadu, telepon berdering.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8932_untuk_menggulung_sesuatu, 'Dung beetleは、フンを転がすことから「フンコロガシ」と言います。', 'Kumbang kotoran disebut “penggulung kotoran” karena mereka menggulung kotoran.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8939_untuk_memajukan_sesuatu, 'どうぞ、インタビューを進めて下さい。', 'Silakan lanjutkan wawancara Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8939_untuk_memajukan_sesuatu, 'この雪じゃ、これ以上工事を進められないよ。', 'Dengan salju ini, kami tidak dapat melanjutkan pembangunan lagi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8939_untuk_memajukan_sesuatu, 'このペースで作業を進めてください。', 'Silakan majukan pekerjaan Anda dengan kecepatan saat ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8951_kekurangan_sesuatu, 'バナナだけの食事はバランスを欠いていると思いますよ。', 'Menurut saya pola makan Anda yang hanya makan pisang kurang seimbang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8951_kekurangan_sesuatu, '生の魚は、買った三日後には、どうしてもフレッシュさを欠きますね。', 'Ikan mentah pasti kurang segar tiga hari setelah pembelian.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8951_kekurangan_sesuatu, 'インターネットは私たちの生活に欠くことのできないサービスだ。', 'Internet adalah layanan yang sangat diperlukan dalam kehidupan kita.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9386_tepat_sebelumnya, '出発の直前に雨がふりだした。', 'Hujan mulai turun tepat sebelum kami berangkat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9386_tepat_sebelumnya, 'ゴール直前でこけてしまった。', 'Saya terjatuh tepat sebelum gol itu terjadi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9386_tepat_sebelumnya, '直前のキャンセルだったので、お金はほとんどもどってこなかった。', 'Karena itu adalah pembatalan di menit-menit terakhir, saya hampir tidak mendapatkan uang kembali.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9386_tepat_sebelumnya, 'すしを食べる直前にしょうゆがないと気づいたんです。', 'Saat saya hendak makan sushi, saya menyadari tidak ada kecap.');

  -- 4. PREREQUISITES
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_775_konflik, id FROM items WHERE type = 'radical' AND (slug = '14' OR id = '14') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_775_konflik, id FROM items WHERE type = 'radical' AND (slug = '105' OR id = '105') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_775_konflik, id FROM items WHERE type = 'radical' AND (slug = '6' OR id = '6') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_776_hubungan, id FROM items WHERE type = 'radical' AND (slug = '75' OR id = '75') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_776_hubungan, id FROM items WHERE type = 'radical' AND (slug = '49' OR id = '49') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_777_mengirimkan, id FROM items WHERE type = 'radical' AND (slug = '75' OR id = '75') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_777_mengirimkan, id FROM items WHERE type = 'radical' AND (slug = '159' OR id = '159') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_778_bersama, r_8775_selikuran);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_778_bersama, id FROM items WHERE type = 'radical' AND (slug = '2' OR id = '2') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_779_menyukai, id FROM items WHERE type = 'radical' AND (slug = '19' OR id = '19') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_779_menyukai, id FROM items WHERE type = 'radical' AND (slug = '34' OR id = '34') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_780_menjadi, r_194_pemabuk);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_780_menjadi, id FROM items WHERE type = 'radical' AND (slug = '24' OR id = '24') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_781_tua, id FROM items WHERE type = 'radical' AND (slug = '104' OR id = '104') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_781_tua, id FROM items WHERE type = 'radical' AND (slug = '57' OR id = '57') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_782_pangkat, id FROM items WHERE type = 'radical' AND (slug = '75' OR id = '75') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_782_pangkat, id FROM items WHERE type = 'radical' AND (slug = '55' OR id = '55') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_783_rendah, id FROM items WHERE type = 'radical' AND (slug = '75' OR id = '75') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_783_rendah, id FROM items WHERE type = 'radical' AND (slug = '147' OR id = '147') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_783_rendah, id FROM items WHERE type = 'radical' AND (slug = '1' OR id = '1') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_784_pertama, r_9392_pakaian);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_784_pertama, id FROM items WHERE type = 'radical' AND (slug = '24' OR id = '24') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_785_memisahkan, id FROM items WHERE type = 'radical' AND (slug = '16' OR id = '16') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_785_memisahkan, id FROM items WHERE type = 'radical' AND (slug = '24' OR id = '24') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_785_memisahkan, id FROM items WHERE type = 'radical' AND (slug = '128' OR id = '128') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_786_laba, id FROM items WHERE type = 'radical' AND (slug = '135' OR id = '135') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_786_laba, id FROM items WHERE type = 'radical' AND (slug = '128' OR id = '128') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_787_bekerja_keras, id FROM items WHERE type = 'radical' AND (slug = '19' OR id = '19') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_787_bekerja_keras, id FROM items WHERE type = 'radical' AND (slug = '30' OR id = '30') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_787_bekerja_keras, id FROM items WHERE type = 'radical' AND (slug = '13' OR id = '13') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_788_tenaga_kerja, id FROM items WHERE type = 'radical' AND (slug = '8769' OR id = '8769') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_788_tenaga_kerja, id FROM items WHERE type = 'radical' AND (slug = '13' OR id = '13') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_789_takdir, r_189_pesanan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_789_takdir, id FROM items WHERE type = 'radical' AND (slug = '16' OR id = '16') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_790_pantai, id FROM items WHERE type = 'radical' AND (slug = '20' OR id = '20') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_790_pantai, id FROM items WHERE type = 'radical' AND (slug = '116' OR id = '116') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_790_pantai, id FROM items WHERE type = 'radical' AND (slug = '61' OR id = '61') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_791_melepaskan, id FROM items WHERE type = 'radical' AND (slug = '66' OR id = '66') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_791_melepaskan, id FROM items WHERE type = 'radical' AND (slug = '60' OR id = '60') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_792_dahulu_kala, r_8775_selikuran);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_792_dahulu_kala, id FROM items WHERE type = 'radical' AND (slug = '22' OR id = '22') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_793_melambai, id FROM items WHERE type = 'radical' AND (slug = '103' OR id = '103') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_793_melambai, r_195_kulit);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_794_menuangkan, id FROM items WHERE type = 'radical' AND (slug = '103' OR id = '103') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_794_menuangkan, id FROM items WHERE type = 'radical' AND (slug = '154' OR id = '154') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_795_membina, r_8776_sampah);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_795_membina, id FROM items WHERE type = 'radical' AND (slug = '43' OR id = '43') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_796_menjemput, id FROM items WHERE type = 'radical' AND (slug = '63' OR id = '63') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_796_menjemput, id FROM items WHERE type = 'radical' AND (slug = '216' OR id = '216') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_797_jari, id FROM items WHERE type = 'radical' AND (slug = '63' OR id = '63') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_797_jari, id FROM items WHERE type = 'radical' AND (slug = '57' OR id = '57') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_797_jari, id FROM items WHERE type = 'radical' AND (slug = '22' OR id = '22') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_798_gaya_barat, id FROM items WHERE type = 'radical' AND (slug = '103' OR id = '103') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_798_gaya_barat, id FROM items WHERE type = 'radical' AND (slug = '136' OR id = '136') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_799_tuhan, id FROM items WHERE type = 'radical' AND (slug = '80' OR id = '80') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_799_tuhan, r_190_rendah_hati);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_800_kedua, id FROM items WHERE type = 'radical' AND (slug = '135' OR id = '135') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_800_kedua, r_198_sedikit);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_801_tingkat, id FROM items WHERE type = 'radical' AND (slug = '86' OR id = '86') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_801_tingkat, r_193_eskalator);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_802_mengikuti, id FROM items WHERE type = 'radical' AND (slug = '114' OR id = '114') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_802_mengikuti, r_8777_beruang);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_802_mengikuti, id FROM items WHERE type = 'radical' AND (slug = '3' OR id = '3') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_803_perang, r_199_sederhana);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_803_perang, r_194_pemabuk);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_804_bersaing, id FROM items WHERE type = 'radical' AND (slug = '55' OR id = '55') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_804_bersaing, r_191_kakak);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_805_bagus, id FROM items WHERE type = 'radical' AND (slug = '3' OR id = '3') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_805_bagus, r_196_akar);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_806_pencapaian, id FROM items WHERE type = 'radical' AND (slug = '25' OR id = '25') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_806_pencapaian, id FROM items WHERE type = 'radical' AND (slug = '13' OR id = '13') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_807_spesial, id FROM items WHERE type = 'radical' AND (slug = '126' OR id = '126') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_807_spesial, id FROM items WHERE type = 'radical' AND (slug = '192' OR id = '192') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_808_kenyamanan, id FROM items WHERE type = 'radical' AND (slug = '75' OR id = '75') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_808_kenyamanan, id FROM items WHERE type = 'radical' AND (slug = '1' OR id = '1') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_808_kenyamanan, id FROM items WHERE type = 'radical' AND (slug = '51' OR id = '51') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_808_kenyamanan, id FROM items WHERE type = 'radical' AND (slug = '31' OR id = '31') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_809_bekerja, id FROM items WHERE type = 'radical' AND (slug = '75' OR id = '75') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_809_bekerja, id FROM items WHERE type = 'radical' AND (slug = '188' OR id = '188') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_809_bekerja, id FROM items WHERE type = 'radical' AND (slug = '13' OR id = '13') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_810_pesanan, r_189_pesanan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_811_ide, r_197_suara);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_811_ide, id FROM items WHERE type = 'radical' AND (slug = '65' OR id = '65') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_812_rasa, id FROM items WHERE type = 'radical' AND (slug = '16' OR id = '16') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_812_rasa, id FROM items WHERE type = 'radical' AND (slug = '134' OR id = '134') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1837_siapa, id FROM items WHERE type = 'radical' AND (slug = '117' OR id = '117') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1837_siapa, id FROM items WHERE type = 'radical' AND (slug = '240' OR id = '240') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2817_jumlah_terjual, id FROM items WHERE type = 'kanji' AND (slug = '587' OR id = '587') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2817_jumlah_terjual, id FROM items WHERE type = 'kanji' AND (slug = '450' OR id = '450') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2818_terjual_habis, id FROM items WHERE type = 'kanji' AND (slug = '587' OR id = '587') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2818_terjual_habis, id FROM items WHERE type = 'kanji' AND (slug = '502' OR id = '502') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2819_penjual, id FROM items WHERE type = 'kanji' AND (slug = '587' OR id = '587') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2819_penjual, id FROM items WHERE type = 'kanji' AND (slug = '474' OR id = '474') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2890_malam_ini, id FROM items WHERE type = 'kanji' AND (slug = '497' OR id = '497') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2890_malam_ini, id FROM items WHERE type = 'kanji' AND (slug = '622' OR id = '622') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2898_tohoku, id FROM items WHERE type = 'kanji' AND (slug = '627' OR id = '627') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2898_tohoku, id FROM items WHERE type = 'kanji' AND (slug = '517' OR id = '517') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3019_tekad, id FROM items WHERE type = 'kanji' AND (slug = '687' OR id = '687') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3019_tekad, id FROM items WHERE type = 'kanji' AND (slug = '508' OR id = '508') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3039_penerimaan, id FROM items WHERE type = 'kanji' AND (slug = '445' OR id = '445') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3039_penerimaan, id FROM items WHERE type = 'kanji' AND (slug = '707' OR id = '707') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3099_pada_awalnya, id FROM items WHERE type = 'kanji' AND (slug = '713' OR id = '713') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3108_hal_nyata, id FROM items WHERE type = 'kanji' AND (slug = '487' OR id = '487') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3108_hal_nyata, id FROM items WHERE type = 'kanji' AND (slug = '718' OR id = '718') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3114_kendaraan, id FROM items WHERE type = 'kanji' AND (slug = '722' OR id = '722') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3114_kendaraan, id FROM items WHERE type = 'kanji' AND (slug = '718' OR id = '718') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3131_orang_kaya, id FROM items WHERE type = 'kanji' AND (slug = '602' OR id = '602') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3131_orang_kaya, id FROM items WHERE type = 'kanji' AND (slug = '727' OR id = '727') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3132_merasa, id FROM items WHERE type = 'kanji' AND (slug = '548' OR id = '548') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3132_merasa, id FROM items WHERE type = 'kanji' AND (slug = '727' OR id = '727') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3149_untuk_menyiarkan_sesuatu, k_791_melepaskan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3149_untuk_menyiarkan_sesuatu, id FROM items WHERE type = 'kanji' AND (slug = '734' OR id = '734') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3213_kisah, id FROM items WHERE type = 'kanji' AND (slug = '718' OR id = '718') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3213_kisah, id FROM items WHERE type = 'kanji' AND (slug = '764' OR id = '764') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3238_untuk_bersaing, k_775_konflik);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3239_perang, k_803_perang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3239_perang, k_775_konflik);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3240_kompetisi, k_804_bersaing);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3240_kompetisi, k_775_konflik);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3242_hubungan, k_776_hubungan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3245_untuk_menyampaikan, k_777_mengirimkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3246_poin_umum, k_778_bersama);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3246_poin_umum, id FROM items WHERE type = 'kanji' AND (slug = '665' OR id = '665') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3246_poin_umum, id FROM items WHERE type = 'kanji' AND (slug = '641' OR id = '641') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3247_persendian, k_778_bersama);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3247_persendian, id FROM items WHERE type = 'kanji' AND (slug = '568' OR id = '568') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3248_publik, id FROM items WHERE type = 'kanji' AND (slug = '499' OR id = '499') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3248_publik, k_778_bersama);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3249_dibagikan, k_778_bersama);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3249_dibagikan, id FROM items WHERE type = 'kanji' AND (slug = '615' OR id = '615') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3250_menyukai, k_779_menyukai);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3251_persahabatan, id FROM items WHERE type = 'kanji' AND (slug = '504' OR id = '504') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3251_persahabatan, k_779_menyukai);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3252_menjadi, k_780_menjadi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3253_kesuksesan, k_780_menjadi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3253_kesuksesan, k_806_pencapaian);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3254_orang_tua, k_781_tua);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3254_orang_tua, id FROM items WHERE type = 'kanji' AND (slug = '444' OR id = '444') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3255_pangkat, k_782_pangkat);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3256_tempat_pertama, id FROM items WHERE type = 'kanji' AND (slug = '440' OR id = '440') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3256_tempat_pertama, k_782_pangkat);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3257_tempat_pertama, id FROM items WHERE type = 'kanji' AND (slug = '645' OR id = '645') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3257_tempat_pertama, k_782_pangkat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3258_rendah, k_783_rendah);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3259_yang_terendah, id FROM items WHERE type = 'kanji' AND (slug = '774' OR id = '774') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3259_yang_terendah, k_783_rendah);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3260_pertama_kali, k_784_pertama);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3260_pertama_kali, id FROM items WHERE type = 'kanji' AND (slug = '569' OR id = '569') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3261_yang_pertama, id FROM items WHERE type = 'kanji' AND (slug = '774' OR id = '774') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3261_yang_pertama, k_784_pertama);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3262_memisahkan, k_785_memisahkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3263_tidak_secara_khusus, k_785_memisahkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3264_orang_yang_berbeda, k_785_memisahkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3264_orang_yang_berbeda, id FROM items WHERE type = 'kanji' AND (slug = '444' OR id = '444') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3265_memisahkan, k_785_memisahkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3265_memisahkan, id FROM items WHERE type = 'kanji' AND (slug = '856' OR id = '856') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3266_spesial, k_807_spesial);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3266_spesial, k_785_memisahkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3267_untuk_bekerja_dengan_baik, k_786_laba);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3268_nyaman, k_808_kenyamanan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3268_nyaman, k_786_laba);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3269_usaha_besar, k_787_bekerja_keras);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3269_usaha_besar, id FROM items WHERE type = 'kanji' AND (slug = '447' OR id = '447') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3270_kerja_manual, k_788_tenaga_kerja);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3270_kerja_manual, k_809_bekerja);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3271_kesulitan, id FROM items WHERE type = 'kanji' AND (slug = '719' OR id = '719') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3271_kesulitan, k_788_tenaga_kerja);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3272_buruh, k_788_tenaga_kerja);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3272_buruh, k_809_bekerja);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3272_buruh, id FROM items WHERE type = 'kanji' AND (slug = '690' OR id = '690') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3273_kehidupan, k_789_takdir);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3274_takdir, id FROM items WHERE type = 'kanji' AND (slug = '752' OR id = '752') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3274_takdir, k_789_takdir);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3275_memesan, k_789_takdir);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3275_memesan, k_810_pesanan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3276_pantai, id FROM items WHERE type = 'kanji' AND (slug = '640' OR id = '640') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3276_pantai, k_790_pantai);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3277_untuk_melepaskan, k_791_melepaskan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3278_untuk_membuka_sesuatu, id FROM items WHERE type = 'kanji' AND (slug = '753' OR id = '753') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3278_untuk_membuka_sesuatu, k_791_melepaskan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3279_dahulu_kala, k_792_dahulu_kala);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3280_penerimaan, id FROM items WHERE type = 'kanji' AND (slug = '706' OR id = '706') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3280_penerimaan, k_793_melambai);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3281_untuk_menuangkan, k_794_menuangkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3282_peringatan, k_794_menuangkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3282_peringatan, k_811_ide);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3283_memesan, k_794_menuangkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3283_memesan, id FROM items WHERE type = 'kanji' AND (slug = '475' OR id = '475') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3284_untuk_berkonsentrasi, id FROM items WHERE type = 'kanji' AND (slug = '754' OR id = '754') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3284_untuk_berkonsentrasi, id FROM items WHERE type = 'kanji' AND (slug = '469' OR id = '469') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3285_untuk_dibangkitkan, k_795_membina);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3286_pendidikan, id FROM items WHERE type = 'kanji' AND (slug = '668' OR id = '668') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3286_pendidikan, k_795_membina);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3287_untuk_mengambil_sesuatu, k_796_menjemput);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3288_untuk_menunjuk, k_797_jari);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3289_jari, k_797_jari);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3291_untuk_menunjuk, k_797_jari);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3291_untuk_menunjuk, id FROM items WHERE type = 'kanji' AND (slug = '714' OR id = '714') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3293_pakaian, k_798_gaya_barat);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3293_pakaian, id FROM items WHERE type = 'kanji' AND (slug = '716' OR id = '716') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3296_kamar_bergaya_barat, k_798_gaya_barat);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3296_kamar_bergaya_barat, id FROM items WHERE type = 'kanji' AND (slug = '635' OR id = '635') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3297_tuhan, k_799_tuhan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3298_shinto, k_799_tuhan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3298_shinto, id FROM items WHERE type = 'kanji' AND (slug = '700' OR id = '700') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3299_kuil_shinto, k_799_tuhan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3299_kuil_shinto, id FROM items WHERE type = 'kanji' AND (slug = '591' OR id = '591') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3300_kedua, k_800_kedua);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3301_kelas_tinggi, id FROM items WHERE type = 'kanji' AND (slug = '666' OR id = '666') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3301_kelas_tinggi, k_801_tingkat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3302_tingkat_pemula, k_784_pertama);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3302_tingkat_pemula, k_801_tingkat);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3303_tingkat_menengah, id FROM items WHERE type = 'kanji' AND (slug = '469' OR id = '469') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3303_tingkat_menengah, k_801_tingkat);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3304_tingkat_lanjutan, id FROM items WHERE type = 'kanji' AND (slug = '450' OR id = '450') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3304_tingkat_lanjutan, k_801_tingkat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3305_untuk_mengikuti, k_802_mengikuti);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3306_pertempuran, k_803_perang);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3307_taktik, id FROM items WHERE type = 'kanji' AND (slug = '584' OR id = '584') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3307_taktik, k_803_perang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3308_tangki, k_803_perang);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3308_tangki, id FROM items WHERE type = 'kanji' AND (slug = '562' OR id = '562') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3309_medan_perang, k_803_perang);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3309_medan_perang, id FROM items WHERE type = 'kanji' AND (slug = '694' OR id = '694') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3310_untuk_bersaing, k_804_bersaing);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3311_bagus, k_805_bagus);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3313_khususnya, k_807_spesial);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3314_tidak_nyaman, id FROM items WHERE type = 'kanji' AND (slug = '563' OR id = '563') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3314_tidak_nyaman, k_808_kenyamanan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3315_kamar_kecil, k_808_kenyamanan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3315_kamar_kecil, id FROM items WHERE type = 'kanji' AND (slug = '707' OR id = '707') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3316_untuk_bekerja, k_809_bekerja);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3317_pendapat, k_811_ide);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3317_pendapat, id FROM items WHERE type = 'kanji' AND (slug = '558' OR id = '558') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3318_arti, k_811_ide);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3318_arti, k_812_rasa);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3319_mencicipi, k_812_rasa);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3456_jual_murah, id FROM items WHERE type = 'kanji' AND (slug = '612' OR id = '612') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3456_jual_murah, id FROM items WHERE type = 'kanji' AND (slug = '587' OR id = '587') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3482_menjadi_genap, id FROM items WHERE type = 'kanji' AND (slug = '564' OR id = '564') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3482_menjadi_genap, id FROM items WHERE type = 'kanji' AND (slug = '858' OR id = '858') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3490_untuk_dikembalikan, id FROM items WHERE type = 'kanji' AND (slug = '858' OR id = '858') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3498_daerah_asrama, id FROM items WHERE type = 'kanji' AND (slug = '722' OR id = '722') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3498_daerah_asrama, id FROM items WHERE type = 'kanji' AND (slug = '694' OR id = '694') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3499_cara_menggunakan, id FROM items WHERE type = 'kanji' AND (slug = '709' OR id = '709') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3499_cara_menggunakan, id FROM items WHERE type = 'kanji' AND (slug = '510' OR id = '510') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3500_pekerjaan, id FROM items WHERE type = 'kanji' AND (slug = '564' OR id = '564') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3500_pekerjaan, id FROM items WHERE type = 'kanji' AND (slug = '708' OR id = '708') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3502_pecundang, id FROM items WHERE type = 'kanji' AND (slug = '733' OR id = '733') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3502_pecundang, id FROM items WHERE type = 'kanji' AND (slug = '481' OR id = '481') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3504_kemenangan, id FROM items WHERE type = 'kanji' AND (slug = '738' OR id = '738') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3507_menderita, id FROM items WHERE type = 'kanji' AND (slug = '719' OR id = '719') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3508_untuk_menyadari, id FROM items WHERE type = 'kanji' AND (slug = '548' OR id = '548') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3508_untuk_menyadari, id FROM items WHERE type = 'kanji' AND (slug = '652' OR id = '652') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3509_untuk_melihat, id FROM items WHERE type = 'kanji' AND (slug = '558' OR id = '558') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3509_untuk_melihat, id FROM items WHERE type = 'kanji' AND (slug = '734' OR id = '734') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3510_kadang_kadang, id FROM items WHERE type = 'kanji' AND (slug = '662' OR id = '662') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3510_kadang_kadang, id FROM items WHERE type = 'kanji' AND (slug = '856' OR id = '856') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3511_resepsionis, id FROM items WHERE type = 'kanji' AND (slug = '711' OR id = '711') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3511_resepsionis, id FROM items WHERE type = 'kanji' AND (slug = '652' OR id = '652') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3512_belanja, id FROM items WHERE type = 'kanji' AND (slug = '699' OR id = '699') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3512_belanja, id FROM items WHERE type = 'kanji' AND (slug = '718' OR id = '718') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3513_sulit_untuk_ditangani, id FROM items WHERE type = 'kanji' AND (slug = '719' OR id = '719') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3513_sulit_untuk_ditangani, id FROM items WHERE type = 'kanji' AND (slug = '474' OR id = '474') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3892_buruk, id FROM items WHERE type = 'kanji' AND (slug = '563' OR id = '563') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3892_buruk, k_805_bagus);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3949_merasa_baik, id FROM items WHERE type = 'kanji' AND (slug = '548' OR id = '548') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3949_merasa_baik, id FROM items WHERE type = 'kanji' AND (slug = '727' OR id = '727') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4148_untuk_mencoba_sesuatu, id FROM items WHERE type = 'kanji' AND (slug = '1029' OR id = '1029') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4217_untuk_membandingkan, id FROM items WHERE type = 'kanji' AND (slug = '1088' OR id = '1088') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4354_ujian_masuk, id FROM items WHERE type = 'kanji' AND (slug = '445' OR id = '445') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4354_ujian_masuk, id FROM items WHERE type = 'kanji' AND (slug = '599' OR id = '599') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4354_ujian_masuk, id FROM items WHERE type = 'kanji' AND (slug = '1029' OR id = '1029') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4354_ujian_masuk, id FROM items WHERE type = 'kanji' AND (slug = '1048' OR id = '1048') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4373_tidak_terduga, k_811_ide);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4373_tidak_terduga, id FROM items WHERE type = 'kanji' AND (slug = '521' OR id = '521') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4467_jawaban_yang_benar, id FROM items WHERE type = 'kanji' AND (slug = '488' OR id = '488') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4467_jawaban_yang_benar, id FROM items WHERE type = 'kanji' AND (slug = '1150' OR id = '1150') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6653_siapa, k_1837_siapa);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7453_termasuk, id FROM items WHERE type = 'kanji' AND (slug = '652' OR id = '652') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7463_sekutu, k_812_rasa);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7463_sekutu, id FROM items WHERE type = 'kanji' AND (slug = '510' OR id = '510') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7466_sekarang_dijual, id FROM items WHERE type = 'kanji' AND (slug = '729' OR id = '729') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7466_sekarang_dijual, id FROM items WHERE type = 'kanji' AND (slug = '587' OR id = '587') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7466_sekarang_dijual, id FROM items WHERE type = 'kanji' AND (slug = '469' OR id = '469') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7489_makanan, id FROM items WHERE type = 'kanji' AND (slug = '644' OR id = '644') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7489_makanan, id FROM items WHERE type = 'kanji' AND (slug = '718' OR id = '718') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7490_melambai, k_793_melambai);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7493_tepat_sekali, id FROM items WHERE type = 'kanji' AND (slug = '464' OR id = '464') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7493_tepat_sekali, id FROM items WHERE type = 'kanji' AND (slug = '725' OR id = '725') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7497_untuk_menjaga, id FROM items WHERE type = 'kanji' AND (slug = '983' OR id = '983') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7497_untuk_menjaga, id FROM items WHERE type = 'kanji' AND (slug = '727' OR id = '727') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7514_untuk_mengunjungi_secara_teratur, id FROM items WHERE type = 'kanji' AND (slug = '665' OR id = '665') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7532_departemen, id FROM items WHERE type = 'kanji' AND (slug = '721' OR id = '721') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7577_atap, id FROM items WHERE type = 'kanji' AND (slug = '724' OR id = '724') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7577_atap, id FROM items WHERE type = 'kanji' AND (slug = '450' OR id = '450') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7579_persiapan, id FROM items WHERE type = 'kanji' AND (slug = '525' OR id = '525') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7579_persiapan, k_811_ide);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7626_untuk_dilakukan_tanpa, id FROM items WHERE type = 'kanji' AND (slug = '646' OR id = '646') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7627_tamasya, id FROM items WHERE type = 'kanji' AND (slug = '558' OR id = '558') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7627_tamasya, id FROM items WHERE type = 'kanji' AND (slug = '718' OR id = '718') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7630_sebelumnya, id FROM items WHERE type = 'kanji' AND (slug = '854' OR id = '854') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7631_hiragana, id FROM items WHERE type = 'kanji' AND (slug = '535' OR id = '535') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7631_hiragana, id FROM items WHERE type = 'kanji' AND (slug = '739' OR id = '739') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7631_hiragana, id FROM items WHERE type = 'kanji' AND (slug = '544' OR id = '544') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7632_harfiah, id FROM items WHERE type = 'kanji' AND (slug = '475' OR id = '475') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7632_harfiah, id FROM items WHERE type = 'kanji' AND (slug = '545' OR id = '545') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7632_harfiah, id FROM items WHERE type = 'kanji' AND (slug = '665' OR id = '665') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7633_tanda, id FROM items WHERE type = 'kanji' AND (slug = '730' OR id = '730') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7633_tanda, id FROM items WHERE type = 'kanji' AND (slug = '585' OR id = '585') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7687_dasar_dasar, k_784_pertama);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7687_dasar_dasar, id FROM items WHERE type = 'kanji' AND (slug = '628' OR id = '628') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7689_baru, id FROM items WHERE type = 'kanji' AND (slug = '857' OR id = '857') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7690_barat, id FROM items WHERE type = 'kanji' AND (slug = '581' OR id = '581') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7690_barat, k_798_gaya_barat);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7736_samping, id FROM items WHERE type = 'kanji' AND (slug = '651' OR id = '651') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7744_berbeda, k_785_memisahkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7745_kerangka_berpikir, id FROM items WHERE type = 'kanji' AND (slug = '508' OR id = '508') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7745_kerangka_berpikir, id FROM items WHERE type = 'kanji' AND (slug = '727' OR id = '727') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7746_cerita_rakyat, k_792_dahulu_kala);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7746_cerita_rakyat, id FROM items WHERE type = 'kanji' AND (slug = '705' OR id = '705') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7747_bagus_sekali, id FROM items WHERE type = 'kanji' AND (slug = '558' OR id = '558') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7747_bagus_sekali, id FROM items WHERE type = 'kanji' AND (slug = '708' OR id = '708') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8745_biologi, id FROM items WHERE type = 'kanji' AND (slug = '850' OR id = '850') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8745_biologi, id FROM items WHERE type = 'kanji' AND (slug = '718' OR id = '718') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8745_biologi, id FROM items WHERE type = 'kanji' AND (slug = '599' OR id = '599') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8815_biografi, k_777_mengirimkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8815_biografi, id FROM items WHERE type = 'kanji' AND (slug = '664' OR id = '664') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8932_untuk_menggulung_sesuatu, id FROM items WHERE type = 'kanji' AND (slug = '747' OR id = '747') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8939_untuk_memajukan_sesuatu, id FROM items WHERE type = 'kanji' AND (slug = '748' OR id = '748') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8951_kekurangan_sesuatu, id FROM items WHERE type = 'kanji' AND (slug = '646' OR id = '646') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9386_tepat_sebelumnya, id FROM items WHERE type = 'kanji' AND (slug = '630' OR id = '630') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9386_tepat_sebelumnya, id FROM items WHERE type = 'kanji' AND (slug = '633' OR id = '633') LIMIT 1;

END $$;
