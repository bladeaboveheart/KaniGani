-- ====================================================
-- KaniGani — Seed Data Level 12 (v2, relasional)
-- Auto-generated with Indonesian Slugs
-- ====================================================

DO $$
DECLARE
  -- ============ RADICAL IDs (Level 12) ============
  r_201_lebih_awal UUID; r_202_adik UUID; r_204_asia UUID; r_205_kepiting UUID; r_206_yoga UUID; r_207_jackhammer UUID; r_208_mengizinkan UUID; r_269_bersama UUID; r_339_sebelumnya UUID; r_390_bisnis UUID; r_399_meminta UUID; r_8778_tahu UUID;

  -- ============ KANJI IDs (Level 12) ============
  k_726_tunggu UUID; k_813_pengerahan_tenaga UUID; k_814_kebun UUID; k_815_napas UUID; k_816_perjalanan UUID; k_817_akar UUID; k_818_sungai_kecil UUID; k_819_memadamkan UUID; k_820_dobel UUID; k_821_anggota UUID; k_822_pulau UUID; k_823_festival UUID; k_824_bab UUID; k_825_awalan_nomor_ordinal UUID; k_826_metropolis UUID; k_827_bergerak UUID; k_828_barang_dagangan UUID; k_829_buruk UUID; k_830_suku UUID; k_831_dalam UUID; k_832_bola UUID; k_833_remaja UUID; k_835_lantai UUID; k_836_dingin UUID; k_838_panas UUID; k_839_periode_waktu UUID; k_840_tanaman UUID; k_841_gigi UUID; k_842_hangat UUID; k_843_pelabuhan UUID; k_844_air_panas UUID; k_845_mendaki UUID; k_846_memakai UUID; k_847_pendek UUID; k_848_bidang UUID; k_849_musim_semi UUID; k_852_setelan UUID; k_1594_dia UUID; k_1890_saya UUID; k_1926_lelah UUID;

  -- ============ VOCABULARY IDs (Level 12) ============
  v_2721_seumur_hidup UUID; v_2779_barat_laut UUID; v_2905_pergi_langsung UUID; v_3098_untuk_memulai UUID; v_3128_untuk_menunggu UUID; v_3244_teman_baik UUID; v_3295_makanan_gaya_barat UUID; v_3320_studi UUID; v_3321_keluarga UUID; v_3322_kebun UUID; v_3323_napas UUID; v_3324_putra UUID; v_3325_minat UUID; v_3326_perjalanan UUID; v_3327_perjalanan UUID; v_3328_akar UUID; v_3329_akar UUID; v_3330_atap UUID; v_3331_kesabaran UUID; v_3332_daikon UUID; v_3333_untuk_membilas_sesuatu UUID; v_3334_kecenderungan UUID; v_3335_tingkat_pertama UUID; v_3336_arus_utama UUID; v_3337_untuk_memadamkan_sesuatu UUID; v_3338_kali UUID; v_3339_dobel UUID; v_3340_staf_toko UUID; v_3341_semua_anggota UUID; v_3342_karyawan UUID; v_3343_karyawan_perusahaan UUID; v_3344_hiroshima UUID; v_3346_menulis UUID; v_3347_bab_dua UUID; v_3348_yang_pertama UUID; v_3349_tempat_pertama UUID; v_3350_kota_metropolitan_tokyo UUID; v_3351_kyoto UUID; v_3352_untuk_bergerak UUID; v_3353_hewan UUID; v_3354_latihan UUID; v_3355_bisnis UUID; v_3356_pedagang UUID; v_3357_buruk UUID; v_3358_orang_jahat UUID; v_3359_wanita_jahat UUID; v_3360_paling_buruk UUID; v_3361_keluarga UUID; v_3362_kelompok_etnis UUID; v_3364_dalam UUID; v_3365_tengah_malam UUID; v_3366_kedalaman_air UUID; v_3367_terdalam UUID; v_3368_bola UUID; v_3369_baseball UUID; v_3370_cerita_anak_anak UUID; v_3372_lantai_pertama UUID; v_3373_lantai_dua UUID; v_3374_lantai_empat_puluh_dua UUID; v_3375_dingin UUID; v_3377_cuaca_panas UUID; v_3378_ekspektasi UUID; v_3379_masa_sekolah UUID; v_3380_waktu UUID; v_3381_tanaman UUID; v_3382_dokter_gigi UUID; v_3383_rongga UUID; v_3384_gigi UUID; v_3385_hangat UUID; v_3386_sumber_air_panas UUID; v_3387_suhu UUID; v_3388_bandara UUID; v_3389_upacara_minum_teh UUID; v_3390_uap UUID; v_3391_untuk_mendaki UUID; v_3392_pendakian_gunung UUID; v_3393_untuk_dipakai UUID; v_3398_pendek UUID; v_3399_pedang_pendek UUID; v_3400_periode_singkat UUID; v_3401_musim_semi UUID; v_3424_sesuai UUID; v_3492_untuk_diputuskan UUID; v_3516_kedai_bir UUID; v_3517_tangisan_hewan UUID; v_3518_minuman UUID; v_3519_agar_dapat_didengar UUID; v_3520_kekuatiran UUID; v_3521_bacaan_cina UUID; v_3549_pengemudi UUID; v_3550_daun_jatuh UUID; v_3551_ayah UUID; v_3552_ibu UUID; v_3553_hal_ketiga UUID; v_3555_cara_berbicara UUID; v_3556_jatuh UUID; v_3557_untuk_datang_bersama UUID; v_3558_untuk_menjatuhkan_sesuatu UUID; v_3559_akhir UUID; v_3560_kereta_terakhir UUID; v_3561_untuk_membuka UUID; v_3562_terjadi UUID; v_3563_khawatir UUID; v_3565_untuk_bersuara UUID; v_3566_bernyanyi UUID; v_3567_sesuai_keinginan_seseorang UUID; v_3582_untuk_ditularkan UUID; v_3649_kenyamanan_seseorang UUID; v_3906_untuk_memproyeksikan UUID; v_3925_untuk_menuntut_sesuatu UUID; v_3926_pencernaan UUID; v_3950_keberuntungan UUID; v_4073_untuk_keluar UUID; v_4847_suhu UUID; v_5896_dia UUID; v_5898_mereka UUID; v_6654_seseorang UUID; v_6900_kelelahan UUID; v_7452_lantai UUID; v_7457_kota UUID; v_7492_kata UUID; v_7498_saya UUID; v_7504_bumi UUID; v_7580_anggota UUID; v_7581_pelaut UUID; v_7582_daerah_perkotaan UUID; v_7634_pulau UUID; v_7635_kesimpulan UUID; v_7691_periode UUID; v_7692_tindakan UUID; v_7693_mengumpulkan UUID; v_7748_untuk_menanam_sesuatu UUID; v_7749_bos UUID; v_7750_kaomoji UUID; v_8665_ruang_klub UUID; v_8668_mahasiswa_pascasarjana UUID; v_8704_pelabuhan UUID; v_8706_festival_sekolah UUID; v_8747_air_panas UUID; v_8748_aktivitas UUID; v_8817_terus_menerus UUID; v_8933_untuk_menyakiti_seseorang UUID; v_8946_untuk_menyelesaikan_sesuatu UUID; v_9038_pemecahan UUID; v_9293_renang UUID; v_9358_samudra_atlantik UUID; v_9508_desa_pertanian UUID;

BEGIN

  DELETE FROM items WHERE level = 12;

  -- 1. RADICALS
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '早', 'lebih-awal', 12, 1, 'Radikal ini sama dengan kanji. Artinya <radikal>awal</radikal>.

Berikut ini pengingat untuk berjaga-jaga: Saat matahari berada di atas salib, tibalah waktunya bagi sebagian orang untuk pergi ke gereja — dan ini selalu terlalu dini pada hari Minggu, bukan? Heck, pada hari Minggu (日) bahkan jam 10 pagi (十) masih terlalu dini.')
    RETURNING id INTO r_201_lebih_awal;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '弟', 'adik', 12, 2, 'Radikal ini sama dengan kanji. Artinya <radikal>adik</radikal>.

Berikut penyegaran mnemonik untuk berjaga-jaga: Ada seseorang yang memakai tanduk, memegang busur, dan menuruni perosotan yang ditopang oleh tongkat. Tipe orang seperti apa yang kamu bayangkan? Menurutku, seseorang adalah anak laki-laki yang belum dewasa. Itu akan menjadi adik laki-lakimu.')
    RETURNING id INTO r_202_adik;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '亜', 'asia', 12, 3, 'Ini terlihat seperti helikopter radikal dengan sesuatu yang ekstra di bawahnya. Itu membawa semacam kargo. Kemana tujuannya? Ke <radikal>Asia</radikal>. Anda hanya tahu itu akan ke Asia karena kargo tersebut memiliki label TO ASIA yang besar. (Silahkan dan bayangkan sekarang.) 

Saya kira helikopter adalah cara terbaik untuk mengirimkan pasokan di Asia karena ada begitu banyak pulau dan gunung yang bisa diterbangi.')
    RETURNING id INTO r_204_asia;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '其', 'kepiting', 12, 4, 'Ini terlihat seperti kerang radikal, tapi sedikit berbeda. Itu adalah <radikal>kepiting</radikal> yang perkasa! Lihat mata dan penjepit yang terangkat di bagian atas, perut yang tersegmentasi di tengah, dan kaki yang menyatu di bagian bawah? Memang butuh imajinasi, tapi kerang runcing ini jelas terlihat seperti kepiting.')
    RETURNING id INTO r_205_kepiting;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '廴', 'yoga', 12, 5, 'Ini terlihat seperti seseorang yang duduk dengan punggung lurus dan kaki terentang di belakangnya. Pose macam apa ini? Mungkin jenis yang Anda lakukan dalam <radical>yoga</radical>. Duduklah di atas matras yoga dan buat tubuh Anda terlihat radikal. Bagus, kamu benar-benar melakukan yoga sekarang.')
    RETURNING id INTO r_206_yoga;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '示', 'jackhammer', 12, 6, 'Apakah Anda melihat pegangan di atas dan duri di bawah? Ini adalah <radikal>jackhammer</radikal>. Bagaimana Anda bisa mengetahuinya? Dua garis diagonal di samping menunjukkan gerakan jackhammer naik dan turun dengan sangat cepat, melakukan apa yang dilakukan jackhammers. BBBHHRZHHHHRHHRZHZHHZH JUJUJUJUJU.')
    RETURNING id INTO r_207_jackhammer;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '免', 'mengizinkan', 12, 7, 'Radikal ini terdiri dari beberapa kaki yang membawa matahari keluar dari penjara. Kaki itu milikmu. Namun, ketika polisi menghentikan Anda, apa <radikal>alasan</radikal> Anda? Buatlah satu dan ucapkan dengan lantang, dimulai dengan, "Alasan saya adalah..."')
    RETURNING id INTO r_208_mengizinkan;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '共', 'bersama', 12, 8, 'Radikal ini sama dengan kanji. Artinya <radikal>bersama</radikal>. Dan lihat bagaimana dua orang terlihat bahagia duduk bergandengan tangan? Keduanya jelas menikmati melakukan hal-hal bersama. Mereka begitu sering bersama hingga praktis bersatu.

Alternatifnya, anggap ini sebagai kartu blackjack yang disatukan oleh sirip. Ikan menyukai blackjack karena tangan biasanya hanya terdiri dari beberapa kartu, sehingga sirip pun dapat menyatukannya.')
    RETURNING id INTO r_269_bersama;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '予', 'sebelumnya', 12, 9, 'Radikal ini sama dengan kanji. Artinya <radikal>sebelumnya</radikal>.

Berikut ini pengingat untuk berjaga-jaga: Apa yang ibumu suruh kamu lakukan di jalan? Lihatlah sebelum Anda menyeberang! Anda harus melakukannya terlebih dahulu, atau mungkin terlambat.')
    RETURNING id INTO r_339_sebelumnya;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '業', 'bisnis', 12, 10, 'Radikal ini sama dengan kanji. Artinya <radikal>bisnis</radikal>.

Berikut ini pengingat mnemonik untuk berjaga-jaga: Anda memiliki duri yang tumbuh pada domba yang memiliki sirip. Ubah hal ini menjadi bisnis! Anda benar-benar dapat membebankan biaya kepada orang lain untuk melihatnya. Tentu, Anda juga dapat menyumbangkannya untuk ilmu pengetahuan, tetapi orang yang berpikiran bisnis seperti Anda mengetahui peluang bisnis ketika Anda melihatnya. Ayo maju! Hanya lima dolar untuk melihat sekilas domba mer runcing yang langka!')
    RETURNING id INTO r_390_bisnis;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '求', 'meminta', 12, 11, 'Radikal ini sama dengan kanji. Artinya <radikal>permintaan</radikal>.

Berikut ini penyegaran mnemonik untuk berjaga-jaga: Lihatlah ke tanah! Anda menumpahkan beberapa tetes air, jadi saya meminta Anda untuk menyekanya. Aku akan melakukannya sendiri, tapi kaulah yang menumpahkannya, jadi aku memintamu melakukannya. Permintaan yang cukup masuk akal bukan?')
    RETURNING id INTO r_399_meminta;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '/radicals/tofu.svg', 'tahu', 12, 12, 'Lihat T dan F yang membentuk radikal ini? Huruf-huruf itu melambangkan <radical>tahu</radical>, balok tahu favorit kami.')
    RETURNING id INTO r_8778_tahu;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_201_lebih_awal, 'Lebih awal', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_202_adik, 'Adik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_204_asia, 'Asia', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_205_kepiting, 'Kepiting', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_206_yoga, 'Yoga', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_207_jackhammer, 'Jackhammer', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_208_mengizinkan, 'Mengizinkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_269_bersama, 'Bersama', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_339_sebelumnya, 'Sebelumnya', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_390_bisnis, 'Bisnis', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_399_meminta, 'Meminta', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_8778_tahu, 'Tahu', true, true);

  -- 2. KANJIS
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '待', 'tunggu', 12, 13, 'Orang yang <radical>berkeliaran</radical> di sekitar <radical>kuil</radical> mungkin hanya mencoba untuk <kanji>menunggu</kanji>. Mereka tidak bermaksud terlihat seperti sedang merencanakan sesuatu yang tidak baik, tetapi sulit untuk menunggu tanpa terlihat curiga saat Anda menunggu di luar kuil.', 'Saat Anda <kanji>menunggu</kanji> di luar kuil, mau tak mau Anda menyesuaikan <reading>dasi</reading> (たい) Anda. Saat Anda menunggu, Anda merasa gugup, dan saat Anda gugup, Anda gelisah. Jadi sekarang Anda sering mengotak-atik dasi Anda.')
    RETURNING id INTO k_726_tunggu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '勉', 'pengerahan-tenaga', 12, 14, 'Anda harus <radikal>maaf</radikal> saya, memiliki semua <radikal>kekuatan</radikal> ini memberikan banyak tekanan dan <kanji>pengerahan</kanji> pada tubuh saya. Kekuatanku berasal dari pengerahan otot, jadi mohon maaf jika aku mulai berkeringat.', 'Maaf, sepertinya saya belum memperkenalkan diri. Nama saya <reading>Ben</reading> (べん) dan saya menggunakan <kanji>pengerahan</kanji> otot yang kuat untuk menyelesaikan setiap tugas. Ben tahu apa yang Ben inginkan dan bagaimana cara mendapatkannya. Ingatlah itu, anak-anak.')
    RETURNING id INTO k_813_pengerahan_tenaga;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '庭', 'kebun', 12, 15, 'Ada <radical>kanopi</radikal> dan seorang pria bernama <radical>Yoga</radical> <radical>Raja</radikal> berdiri di tengah <kanji>taman</kanji> Anda.', 'Raja Yoga ini tidak hanya mengambil alih <kanji>taman</kanji> Anda, tetapi dia juga memerintahkan Anda untuk menyajikan makanan ke kelasnya. "Kau yang di sana, petani, ambilkan anak-anak <reading>ta</reading>ter (てい) terbarumu dari taman kecil ini untuk memberi mereka kekuatan."')
    RETURNING id INTO k_814_kebun;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '息', 'napas', 12, 16, 'Membayangkan <radikal>diri</radikal> seseorang tanpa <radikal>hati</radikal> dapat membuat sulit untuk menarik <kanji>nafas</kanji>. Tanpa jantung, darah Anda tidak akan terpompa dan Anda akan mulai mati. Hal ini akan membuat semakin sulit untuk menarik napas dan mendapatkan oksigen untuk tetap hidup.', 'Tahukah Anda bagaimana ketika orang tidak sadarkan diri dan <kanji>nafas</kanji> mereka melambat atau terhenti, mereka menggunakan garam berbau untuk menyadarkannya? <reading>kaus kaki</reading> (そく) yang bau juga bisa digunakan. Kaus kaki menjadi sangat bau dan baunya cukup menyengat untuk menyadarkan seseorang yang tidak bisa bernapas.')
    RETURNING id INTO k_815_napas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '旅', 'perjalanan', 12, 17, '<radical>Arah</radical> yang <radical>senjata</radical> Anda hadapi mengarah langsung ke blok <radical>tahu</radical>. Ini mungkin pertanda Anda perlu melakukan <kanji>perjalanan</kanji>. Jika Anda di luar sana menodongkan senjata ke tahu, Anda mungkin sedikit… lelah… dan membutuhkan perubahan pemandangan. Lakukan perjalanan!', 'Jadi, <kanji>perjalanan</kanji> Anda akan pergi ke mana? Kepada <membaca>Rio</reading> (りょ). Anda harus pergi jauh ke selatan untuk menjauh sejauh mungkin dari tahu. Ahh, perjalanan ke Rio sungguh menyenangkan!')
    RETURNING id INTO k_816_perjalanan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '根', 'akar', 12, 18, 'Sebuah <radical>pohon</radikal> <radikal>akar</radikal> tetap saja sebuah <kanji>akar</kanji>!', '<kanji>akar</kanji> pohon adalah tempat bertengger yang sempurna untuk <reading>con</reading>dors (こん). Sayangnya, hidup dari akar juga menjadi alasan mengapa mereka selalu terancam punah. Condor dapat dibunuh dengan mudah jika hidup di tanah dengan akar seperti ini.')
    RETURNING id INTO k_817_akar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '流', 'sungai-kecil', 12, 19, '<radikal>tsunami</radikal> mengangkat semua <radikal>sampah</radikal> keluar dari <radikal>sungai</radikal> dan <kanji>aliran</kanji> mengalir ke tepian.', 'Di sebelah <kanji>stream</kanji> sampah Anda tiba-tiba melihat <reading>Ryu</reading> (りゅう) dari Street Fighter dan dia terlihat kesal. Ia geram karena banyak orang yang membuang sampahnya ke sungai hingga menimbulkan aliran sungai seperti ini.')
    RETURNING id INTO k_818_sungai_kecil;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '消', 'memadamkan', 12, 20, 'Dahulu kala, <radikal>tsunami</radikal> besar menyapu <radikal>triceratop</radikal> hingga ke <radikal>bulan</radikal> dan <kanji>mematikan</kanji> kehidupannya.', 'Peristiwa terkenal di mana hampir seluruh kehidupan <kanji>dipadamkan</kanji>diperagakan kembali setiap tahun untuk <reading>Shou</reading>gun (しょう). Dia punya sedikit obsesi yang tidak sehat untuk memadamkan kehidupan...')
    RETURNING id INTO k_819_memadamkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '倍', 'dobel', 12, 21, 'Seorang <radikal>pemimpin</radikal> yang mempekerjakan <radikal>badut</radikal> pribadinya kemungkinan besar akan <kanji>menggandakan</kanji> hiburannya. Badut itu lucu dan membuat orang tertawa, jadi pemimpinnya memutuskan untuk mempekerjakan satu badut. Sejak saat itu, kegembiraan sang pemimpin meningkat dua kali lipat. 

Ini juga berarti <kanji>kali</kanji>, yang masuk akal jika Anda memikirkan jenis matematika yang Anda perlukan untuk menggandakan sesuatu. Apa itu A*2? Pertama-tama, ini A dua kali lipat, tetapi Anda menggunakan perkalian. Anda sedang "mengatur waktu" sesuatu.', 'Saat badut berhenti melucu, saatnya mengucapkan <reading>bye</reading> (ばい). Pada awalnya, badut <kanji>menggandakan</kanji> hiburan pemimpinnya, tapi sekarang badut itu hanya mengganggu. Saatnya mengucapkan selamat tinggal.')
    RETURNING id INTO k_820_dobel;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '員', 'anggota', 12, 22, 'Bahkan <radical>kerang</radikal> yang memiliki <radikal>mulut</radikal> adalah <kanji>anggota</kanji> dari keluarga invertebrata. Ya, kerang memang punya mulut, lihatlah!', 'Jika kamu adalah <kanji>anggota</kanji> dari keluarga kerang yang sama, kamu bisa pergi ke <read>penginapan</reading> kerang khusus (いん). Setiap spesies memiliki penginapan khusus anggota.')
    RETURNING id INTO k_821_anggota;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '島', 'pulau', 12, 23, 'Seekor <radical>burung</radical> bertengger di atas <radical>gunung</radical>. Jika dilihat dari radikalnya, burungnya cukup besar dan gunungnya cukup kecil. Pikirkan juga hal ini dalam mnemonik. Alasan mengapa gunung ini kecil adalah karena Anda hanya dapat melihat puncaknya yang menonjol keluar dari air. Di atasnya ada burung itu. Gunung kecil dengan burung di atasnya adalah sebuah <kanji>pulau</kanji>.', 'Namun <kanji>pulau</kanji> ini bukan hanya milik burung. Faktanya, burung itu tidak boleh ada di pulau ini, karena itu milik <reading>Dia</reading>ep <reading>Ma</reading>ma ​​(しま), yang seperti Ibu Pertiwi tetapi untuk domba. Mama Domba yang mahakuasa datang untuk mengusir burung itu dari pulau, karena tempat ini hanya untuk domba! Semua memuji Mama Domba.')
    RETURNING id INTO k_822_pulau;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '祭', 'festival', 12, 24, '<radical>bulan</radical> bersinar di atas <radical>bangku</radical> dan <radical>jackhammer</radical> yang ada untuk <kanji>festival</kanji> mendatang. Festival membutuhkan aktivitas, dan di festival ini, Anda bisa duduk di bangku di bawah sinar bulan dan menggunakan jackhammer untuk menimbulkan banyak kebisingan. Sempurna untuk festival!', '<kanji>festival</kanji> ini hanya untuk <reading>cy</reading>borg (さい). Bayangkan cyborg yang Anda buat menjadi bersemangat saat Anda membawanya ke festival. Itu sebabnya semua aktivitasnya harus dilakukan dengan alat berat. Wahananya sebagian besar hanya cyborg yang membiarkan orang lain mengendarainya, tapi tetap saja cukup menyenangkan.')
    RETURNING id INTO k_823_festival;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '章', 'bab', 12, 25, 'Anda <radical>berdiri</radical> di podium <radical>dini hari</radical> di pagi hari untuk berlatih membaca <kanji>bab</kanji> dari buku terbaru Anda.', 'Anda sedang berlatih <kanji>bab</kanji> khusus ini karena Anda diminta membacanya untuk <reading>Shou</reading>gun (しょう). Akan ada banyak penulis lain yang membacakan bab-bab buku mereka kepadanya juga, dan Anda ingin memberikan kesan yang baik.')
    RETURNING id INTO k_824_bab;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '第', 'awalan-nomor-ordinal', 12, 26, '<radical>Adik</radical> Bambu</radical> dihitung dengan <kanji>awalan nomor urut</kanji>. Nomor urut adalah nomor yang mewakili suatu posisi atau pangkat secara berurutan (misalnya pertama, kedua, ketiga, dan seterusnya). Terkadang kami menggunakan awalan bilangan urut ini sebelum menghitung benda-benda ini dalam bahasa Jepang. Ibarat bambu, turun secara berurutan menuju yang termuda.', 'Yang perlu diingat, Anda perlu menggunakan <kanji>awalan bilangan urut</kanji> sebelum menghitung bambu ini, Anda <membaca>mewarnai</reading> (だい) bambu tersebut.')
    RETURNING id INTO k_825_awalan_nomor_ordinal;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '都', 'metropolis', 12, 27, '<radical>Seseorang</radikal> dan <radikal>bangunan</radikal>, seseorang dan bangunan, seseorang dan bangunan. Begitu banyak orang dan bangunan. Dengan banyaknya orang dan bangunan, kita memiliki <kanji>metropolis</kanji>.', 'Di <kanji>metropolis</kanji> ini semuanya adalah <reading>toe</reading> (と). Seseorang sedang berjalan-jalan. Bangunannya juga jari kaki.')
    RETURNING id INTO k_826_metropolis;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '動', 'bergerak', 12, 28, 'Ketika sesuatu <radikal>berat</radikal>, Anda memerlukan banyak <radikal>tenaga</radikal> untuk <kanji>memindahkannya</kanji>. Itu tidak akan bergerak kecuali Anda menggunakan banyak tenaga. Benda itu berat dan kecuali Anda menggunakan semua kekuatan yang Anda punya, benda itu tidak akan bergerak.', 'Ingat berat 1 ton itu? Sebenarnya itu adalah <reading>dou</reading>ghnut (どう). Donat yang sangat besar, seberat 1 ton. Ini sangat berat dan sulit untuk dipindahkan, tapi enak.')
    RETURNING id INTO k_827_bergerak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '商', 'barang-dagangan', 12, 29, '<radikal>berdiri</radikal><radikal>kumis</radikal> dengan <radikal>kaki</radikal> mampu menjual <kanji>barang dagangan</kanji>. Kebanyakan kumis tidak bisa berdiri karena tidak mempunyai kaki. Tapi kumis ini bisa. Ia juga memiliki naluri bisnis yang kuat, itulah sebabnya ia menjual barang dagangan.', 'Kumisnya menjual <kanji>barang dagangan</kanji> dengan sangat baik sehingga bahkan <read>Shou</reading>gun (しょう) pun menyadarinya. Dia membungkuk sangat dekat dengan barang dagangan pria berkumis yang berdiri itu dan tetap diam. Kemudian dia menjentikkan jarinya dan para pelayannya bergegas keluar untuk membeli semuanya!')
    RETURNING id INTO k_828_barang_dagangan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '悪', 'buruk', 12, 30, 'Di <radical>Asia</radical> mereka menganggap <radical>hati</radical> setiap orang secara otomatis <kanji>buruk</kanji> dan <kanji>jahat</kanji>.', 'Untungnya, orang-orang di Asia tahu cara menghilangkan <kanji>kejahatan</kanji> <kanji>keburukan</kanji> dari hati Anda dengan <reading>acu</reading>puncture (あく).')
    RETURNING id INTO k_829_buruk;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '族', 'suku', 12, 31, 'Jika seseorang sedang menuju ke <radical>arah</radical> Anda dengan <radical>senjata</radical>, letakkan <radical>panah</radical> di busur Anda dan kumpulkan <kanji>suku</kanji> Anda di belakang Anda karena itu akan menjadi nyata! Pria bersenjata ini sedang menuju ke arah Anda dan dia bahkan tidak tahu apa yang akan Anda dan suku Anda lakukan padanya. Jika dia mendekat, kemungkinan besar Anda akan menembakkan panah itu tepat ke arahnya.', 'Ketika dia mulai mendekat, Anda melihat bahwa orang ini adalah anggota geng sepeda boso<reading>zoku</reading> (ぞく). Bosozoku berarti “menjalankan <kanji>suku</kanji>” dan orang ini berlari ke arah Anda. Dengan pistol. Jadi kumpulkan sukumu sendiri di belakangmu dan bersiaplah untuk mempertahankan diri melawan anggota bosozoku ini.')
    RETURNING id INTO k_830_suku;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '深', 'dalam', 12, 32, 'Jika <radical>tsunami</radical> lebih tinggi dari <radical>dahi</radical> Anda sebaiknya gerakkan <radical>kaki</radical> tersebut dan cari <radical>pohon</radical> untuk didaki, karena benda itu <kanji>dalam</kanji>!', 'Anda menunggu sampai tsunami hanya <kanji>sedalam</kanji> dengan <reading>tulang kering</reading> (しん) Anda. Kemudian Anda turun dari pohon dan pulang ke rumah di air sedalam tulang kering.')
    RETURNING id INTO k_831_dalam;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '球', 'bola', 12, 33, '<radikal>raja</radikal> <radikal>permintaan</radikal> adalah sebuah <kanji>bidang</kanji>!', '<kanji>bola</kanji> adalah bola <reading>cu</reading>cumber (きゅう). Mentimun berbentuk bola yang aneh.')
    RETURNING id INTO k_832_bola;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '童', 'remaja', 12, 34, 'Mereka yang <radikal>berdiri</radikal> di atas <radikal>desa</radikal> adalah <kanji>remaja</kanji>. Bayangkan sekelompok anak muda berdiri di atas atap bangunan di desa. Itu adalah hal yang masih remaja untuk dilakukan.', 'Namun, sebagian besar <kanji>remaja</kanji> berdiri di atas bangunan desa sambil makan <reading>dou</reading>ghnut (どう).')
    RETURNING id INTO k_833_remaja;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '階', 'lantai', 12, 35, 'Lihatlah <radical>bangunan</radical> dan <radical>bandingkan</radical> bagian <radical>putih</radical>. Masing-masing bagian putih tersebut adalah <kanji>lantai</kanji>. Bangunan <kanji>bertingkat</kanji> memiliki banyak lantai berbeda yang dapat Anda lihat dari luar.', 'Satu <kanji>lantai</kanji> hanyalah <reading>kay</reading>aks (かい). Anda sedang melihat gedung ini, dan semua <kanji>cerita</kanji> lainnya normal, tapi satu lantai itu kayak demi kayak.')
    RETURNING id INTO k_835_lantai;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '寒', 'dingin', 12, 36, '<radical>Atap</radical>, meskipun hampir <radical>musim semi</radical>, masih tertutup <radical>es</radical> sehingga <kanji>dingin</kanji>. Di dalam rumah dingin, di luar rumah dingin. Semuanya dingin!', 'Kamu tidak tahan lagi dengan <kanji>dingin</kanji>, jadi kamu menyewa <reading>samu</reading>rai (さむ) untuk mencoba memecahkan es dari atap rumahmu dengan pedangnya. Anda berdiri di luar sambil menggigil, dan menyaksikan samurai mencoba menusuk es dari atap Anda.')
    RETURNING id INTO k_836_dingin;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '暑', 'panas', 12, 37, 'Jika <radical>matahari</radikal> menyinari <radical>seseorang</radikal>, mereka akan menjadi <kanji>panas</kanji>. Begitulah adanya. Seseorang yang terlalu lama berada di bawah sinar matahari pasti akan kepanasan. Mataharinya terik, dan membuatmu kepanasan juga.

Perhatikan bahwa ini biasanya mengacu pada cuaca panas atau panasnya area tempat Anda berada dan tidak mengacu pada "sesuatu" yang panas.', 'Matahari yang satu cukup <kanji>panas</kanji>, namun matahari kedua muncul. "<reading>Ah, dua</reading> (あつ)!" kamu berteriak. Jika Anda berkeringat dan lengket karena panasnya satu sinar matahari, bayangkan apa dampak sinar matahari kedua terhadap Anda. Ah, dua matahari yang terik!')
    RETURNING id INTO k_838_panas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '期', 'periode-waktu', 12, 38, '"<radical>kepiting</radikal> <radikal>bulan</radikal>" adalah <kanji>periode waktu</kanji> tertentu.', 'Ketika <kanji>periode waktu</kanji> bulan kepiting tiba, kita harus mengambil <reading>kunci</reading> (き) khusus dan mengunci semuanya sedemikian rupa sehingga kepiting tidak dapat masuk.')
    RETURNING id INTO k_839_periode_waktu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '植', 'tanaman', 12, 39, 'Jika Anda ingin <radical>pohon</radical> tumbuh <radical>lurus</radical>, Anda harus <kanji>menanam</kanji> dengan benar. Semua orang tahu bahwa pohon yang ditanam dengan buruk tumbuh bengkok dan bengkok. Begitulah cara kerja tanaman. Jika pohon Anda tidak lurus, mulailah dari awal dan tanam kembali.', 'Anda <kanji>menanam</kanji> dan menanam kembali pohon Anda berulang kali, benar-benar <reading>terkejut</reading> (しょく) melihat betapa sulitnya menanamnya dengan benar. Anda mengira menanam pohon itu mudah, jadi ini sangat mengejutkan Anda.')
    RETURNING id INTO k_840_tanaman;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '歯', 'gigi', 12, 40, '<radikal>Berhenti</radikal>! <radical>Kotak</radikal> berisi <radical>beras</radikal> itu sebenarnya penuh dengan <kanji>gigi</kanji>! Saya tahu di sampulnya tertulis "nasi", tapi saya berjanji itu semua adalah gigi dan jika Anda menggigitnya, Anda akan mematahkan <kanji>gigi</kanji> Anda sendiri.', 'Mengapa kotak nasi saya penuh dengan <kanji>gigi</kanji>? <membaca>Hah</membaca> (は)! Tidakkah kamu ingin tahu. Hah! Saya pasti punya jawaban yang tidak aneh atau menyeramkan…')
    RETURNING id INTO k_841_gigi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '温', 'hangat', 12, 41, 'Ada <radikal>tsunami</radikal> yang menyapu <radikal>lempeng</radikal> dan berubah menjadi <radikal>matahari</radikal>. Karena terkena sinar matahari, menjadi <kanji>hangat</kanji>.', 'Piring mulai menjadi sangat <kanji>hangat</kanji> sehingga Anda bisa menggoreng <reading>on</reading>ion (おん) di atasnya. Siapa yang tidak suka bawang goreng? Piring itu pasti cukup hangat, jadi mulailah memasaknya!')
    RETURNING id INTO k_842_hangat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '港', 'pelabuhan', 12, 42, 'Ada <radical>tsunami</radical> yang akan datang dan Anda ingin <radical>bersama</radical> dengannya sendirian</radical> (diri sendiri) sehingga Anda pergi ke <kanji>pelabuhan</kanji>.', 'Saat Anda melihat-lihat <kanji>pelabuhan</kanji> di saat-saat terakhir, Anda tiba-tiba melihat seseorang di dalam air. Ini <membaca>こう</membaca>いち! Dia duduk di ban dalam di pelabuhan menunggu tsunami juga.')
    RETURNING id INTO k_843_pelabuhan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '湯', 'air-panas', 12, 43, 'Jika terjadi <radikal>tsunami</radikal> <radikal>mudah</radikal> mendapatkan <kanji>air panas</kanji>. Cukup julurkan tanganmu ke luar jendela saat tsunami lewat dan sial! Air itu PANAS.', 'Saat <kanji>air panas</kanji> datang, Anda cukup mengangkat dasar <reading>yu</reading>rt (ゆ) tempat Anda tinggal, dan air itu mengalir masuk. Semua cangkir, panci, dan tong yang Anda letakkan di lantai sekarang sudah penuh dengan air panas.')
    RETURNING id INTO k_844_air_panas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '登', 'mendaki', 12, 44, 'Ada <radical>tenda</radical> berisi <radical>kacang</radical>. Anda mencoba <kanji>memanjat</kanji> itu.', 'Anda <kanji>memanjat</kanji> tenda kacang, dan dari sudut pandang ini Anda dapat melihat <reading>とう</reading>きょう di kejauhan.')
    RETURNING id INTO k_845_mendaki;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '着', 'memakai', 12, 45, '<radical>tanduk</radical><radical>raja</radical> di <radical>slide</radical> menarik <radical>mata</radical> Anda karena Anda menyukai apa yang dia pilih untuk <kanji>pakai</kanji>. Anda tidak sabar menunggu dia <kanji>tiba</kanji> di bagian bawah slide sehingga Anda dapat melihat pakaiannya dari dekat.', 'Bagaimana raja ini memutuskan apa yang akan <kanji>pakai</kanji> setiap hari? Dia menggunakan <membaca>kapur</reading> (ちゃく) untuk membuat sketsa ide pakaiannya di papan tulis. Ini membantunya <kanji>sampai</kanji> pada kesimpulan lebih cepat.')
    RETURNING id INTO k_846_memakai;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '短', 'pendek', 12, 46, 'Jika Anda menggunakan <radical>panah</radikal> untuk menembakkan batang <radikal>kacang</radikal>, tanaman kacang-kacangan akan menjadi <kanji>pendek</kanji>. Saat kacang terkena panah itu, tanaman akan terbelah menjadi dua, dan Anda akan mendapatkan tangkai kacang yang jauh lebih pendek dari sebelumnya.', 'Semua penembakan anak panah untuk membuat tanaman kacang <kanji>pendek</kanji> ini memakan waktu lama. Karena Anda berada di bawah sinar matahari, kulit Anda mulai menjadi <reading>tan</reading> (たん). Setelah hari itu berakhir, kulit kecokelatan Anda benar-benar gelap.')
    RETURNING id INTO k_847_pendek;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '野', 'bidang', 12, 47, '<radical>desa</radikal> <radikal>sebelumnya</radikal> (yang merupakan desa sebelum menjadi desa) adalah <kanji>ladang</kanji>.', 'Di <kanji>bidang</kanji> ini, <reading>Ya</reading>nkees (や) biasa bermain.')
    RETURNING id INTO k_848_bidang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '泉', 'musim-semi', 12, 48, '<radical>Putih</radical> <radical>air</radical> menyembur dari <kanji>mata air</kanji> di dalam tanah. Karena kuatnya aliran air dari mata air, air tampak putih dengan semua gelembung udara.', 'Dari <kanji>mata air</kanji>, <reading>cen</reading>taur (せん) muncul.')
    RETURNING id INTO k_849_musim_semi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '合', 'setelan', 12, 49, '<radikal>setelan</radikal> radikal dan <kanji>setelan</kanji> kanji sama persis! Kanji ini juga bisa berarti <kanji>bergabung</kanji> yang masuk akal. Jika ada sesuatu yang cocok untuk Anda, misalnya topi atau semacamnya, benda itu juga akan menyatu dengan Anda. Bergabunglah denganku, topiku! Kamu cocok dengan kepalaku. Itu hanya <kanji>cocok</kanji>, kamu tahu?', 'Anda membutuhkan seseorang yang <kanji>cocok</kanji> dengan Anda. Seseorang yang bisa <kanji>bergabung</kanji> dengan Anda dalam perjalanan hidup Anda. Jadi kamu memanggil Kakek <reading>ごう</reading>いち.

Catatan: Untuk mnemonik pembacaan ごう, kami menggunakan Kakek ごういち karena こういち digunakan untuk pembacaan こう. Jadi ingatlah bahwa ごう berasal dari kakek Koichi ごういち.')
    RETURNING id INTO k_852_setelan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '彼', 'dia', 12, 50, 'Jika kamu <radical>berkeliaran</radikal> di sekitar <radikal>kulit</radikal> saya, <kanji>dia</kanji> akan marah padamu. Dia temanku yang sangat protektif, dan kamu tidak ingin membuatnya marah!', '<kanji>Dia</kanji> mungkin akan menjadi pemarah jika kamu berkeliaran di sekitarku, tapi <read>kari</reading> (かれ) yang dibuat dengan baik selalu mencerahkan suasana hatinya. Jadi beri dia kari.')
    RETURNING id INTO k_1594_dia;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '僕', 'saya', 12, 51, 'Seorang <radikal>pemimpin</radikal> <radikal>bisnis</radikal>? Ha! Itu <kanji>saya</kanji>! Itu <kanji>Saya</kanji>!', 'Anda sering menggunakan kata <kanji>I</kanji>. Anda sering mengatakannya, Anda mulai menyebut diri Anda sendiri dengan <reading>beaucoup</reading> (ぼく) Perancis untuk banyak hal. Karena kamu sangat mencintai dirimu sendiri.')
    RETURNING id INTO k_1890_saya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '疲', 'lelah', 12, 52, 'Saya mempunyai <radikal>sakit</radikal> di <radikal>kulit</radikal> saya. Lihat saja, kelihatannya tidak terlalu bagus. Setiap kali kulitku sakit, aku tahu kalau aku mungkin <kanji>lelah</kanji>.', 'Mengapa begitu <kanji>lelah</kanji>? Tubuh Anda <read>panas</reading>ted (ひ) karena terlalu banyak berolahraga. Anda harus membiarkan panasnya menjadi dingin agar kulit Anda mulai terlihat lebih baik.')
    RETURNING id INTO k_1926_lelah;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_726_tunggu, 'Tunggu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_813_pengerahan_tenaga, 'Pengerahan tenaga', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_814_kebun, 'Kebun', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_815_napas, 'Napas', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_816_perjalanan, 'Perjalanan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_816_perjalanan, 'Bepergian', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_817_akar, 'Akar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_818_sungai_kecil, 'Sungai kecil', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_819_memadamkan, 'Memadamkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_820_dobel, 'Dobel', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_820_dobel, 'Kali', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_820_dobel, 'Berkembang biak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_821_anggota, 'Anggota', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_822_pulau, 'Pulau', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_823_festival, 'Festival', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_824_bab, 'Bab', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_825_awalan_nomor_ordinal, 'Awalan Nomor Ordinal', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_825_awalan_nomor_ordinal, 'Awalan Biasa', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_825_awalan_nomor_ordinal, 'Nomor', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_826_metropolis, 'Metropolis', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_827_bergerak, 'Bergerak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_828_barang_dagangan, 'Barang dagangan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_829_buruk, 'Buruk', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_829_buruk, 'Kejahatan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_830_suku, 'Suku', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_830_suku, 'Keluarga', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_831_dalam, 'Dalam', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_832_bola, 'Bola', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_832_bola, 'Bola', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_833_remaja, 'Remaja', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_835_lantai, 'Lantai', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_835_lantai, 'Cerita', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_836_dingin, 'Dingin', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_838_panas, 'Panas', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_838_panas, 'Cuaca Panas', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_839_periode_waktu, 'Periode Waktu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_839_periode_waktu, 'Periode Waktu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_840_tanaman, 'Tanaman', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_841_gigi, 'Gigi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_841_gigi, 'Gigi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_842_hangat, 'Hangat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_843_pelabuhan, 'Pelabuhan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_843_pelabuhan, 'Pelabuhan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_843_pelabuhan, 'Pelabuhan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_844_air_panas, 'Air Panas', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_845_mendaki, 'Mendaki', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_846_memakai, 'Memakai', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_846_memakai, 'Tiba', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_847_pendek, 'Pendek', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_848_bidang, 'Bidang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_849_musim_semi, 'Musim semi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_849_musim_semi, 'Air mancur', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_852_setelan, 'Setelan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_852_setelan, 'Bugar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_852_setelan, 'Bergabung', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1594_dia, 'Dia', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1890_saya, 'SAYA', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1890_saya, 'Aku', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1926_lelah, 'Lelah', true, true);

  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_726_tunggu, 'たい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_726_tunggu, 'ま', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_813_pengerahan_tenaga, 'べん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_814_kebun, 'てい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_814_kebun, 'にわ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_815_napas, 'そく', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_815_napas, 'いき', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_816_perjalanan, 'りょ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_816_perjalanan, 'たび', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_817_akar, 'こん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_817_akar, 'ね', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_818_sungai_kecil, 'りゅう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_818_sungai_kecil, 'る', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_818_sungai_kecil, 'なが', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_819_memadamkan, 'しょう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_819_memadamkan, 'き', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_819_memadamkan, 'け', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_820_dobel, 'ばい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_821_anggota, 'いん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_822_pulau, 'しま', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_822_pulau, 'とう', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_823_festival, 'さい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_823_festival, 'まつり', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_823_festival, 'まつ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_824_bab, 'しょう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_825_awalan_nomor_ordinal, 'だい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_826_metropolis, 'と', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_826_metropolis, 'つ', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_826_metropolis, 'みやこ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_827_bergerak, 'どう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_827_bergerak, 'うご', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_828_barang_dagangan, 'しょう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_828_barang_dagangan, 'あきな', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_829_buruk, 'あく', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_829_buruk, 'お', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_829_buruk, 'わる', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_830_suku, 'ぞく', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_831_dalam, 'しん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_831_dalam, 'ふか', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_832_bola, 'きゅう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_832_bola, 'たま', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_833_remaja, 'どう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_835_lantai, 'かい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_836_dingin, 'さむ', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_836_dingin, 'かん', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_838_panas, 'あつ', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_838_panas, 'しょ', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_839_periode_waktu, 'き', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_839_periode_waktu, 'ご', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_840_tanaman, 'しょく', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_840_tanaman, 'う', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_841_gigi, 'は', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_841_gigi, 'し', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_842_hangat, 'おん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_842_hangat, 'あたた', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_843_pelabuhan, 'こう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_843_pelabuhan, 'みなと', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_844_air_panas, 'ゆ', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_844_air_panas, 'とう', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_845_mendaki, 'とう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_845_mendaki, 'と', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_845_mendaki, 'のぼ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_846_memakai, 'ちゃく', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_846_memakai, 'き', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_846_memakai, 'つ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_847_pendek, 'たん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_847_pendek, 'みじか', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_848_bidang, 'や', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_848_bidang, 'の', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_849_musim_semi, 'せん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_849_musim_semi, 'いずみ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_852_setelan, 'ごう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_852_setelan, 'がっ', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_852_setelan, 'あ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_852_setelan, 'あい', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1594_dia, 'かれ', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1594_dia, 'かの', 'kunyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1594_dia, 'ひ', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1890_saya, 'ぼく', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1926_lelah, 'ひ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1926_lelah, 'つか', 'kunyomi', false, false);

  -- 3. VOCABULARIES
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '一代', 'seumur-hidup', 12, 53, 'Kata ini memiliki kanji untuk <kanji>satu</kanji> dan <kanji>titik</kanji>. Anda hanya mempunyai satu periode untuk hidup, jadi ini adalah satu-satunya <vocabulary>seumur hidup</vocabulary> yang Anda dapatkan. Kecuali jika Anda dilahirkan kembali, tapi itu mungkin terjadi di zaman berikutnya, bukan di zaman ini. Jadi satu seumur hidup untukmu!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Seumur hidup, Sekali Seumur Hidup, Generasi, Satu Generasi')
    RETURNING id INTO v_2721_seumur_hidup;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '北西', 'barat-laut', 12, 54, 'Kata ini sangat sederhana. <kanji>Utara</kanji> + <kanji>barat</kanji> = <vocabulary>barat laut</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Anda pernah melihat bacaan ini dalam kata-kata seperti 東北 dan 西洋, jadi jika Anda ingat ini adalah on''yomi, sebaiknya Anda pergi ke sini.', 'Barat laut')
    RETURNING id INTO v_2779_barat_laut;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '直行', 'pergi-langsung', 12, 55, 'Anda melanjutkan <kanji>lurus</kanji> ke <kanji>pergi</kanji> ke suatu tempat karena Anda <vocabulary>langsung menuju</vocabulary> ke sana. Anda melakukan perjalanan <vocabulary>nonstop</vocabulary>, <vocabulary>langsung</vocabulary> — tanpa pemberhentian atau jalan memutar.

直行 umumnya terlihat dalam konteks transportasi, terutama ketika berbicara tentang penerbangan. Kata ini juga sering digunakan dalam lingkungan bisnis untuk menggambarkan perjalanan langsung ke suatu tujuan tanpa berhenti, seperti mengunjungi kantor klien langsung dari rumah Anda.', 'Ini adalah kata jukugo dan menggunakan pembacaan kanji on''yomi. Namun, ちょく dari 直 disingkat menjadi っ kecil, jadi pastikan untuk mencatatnya.', 'Pergi Langsung, Nonstop, Langsung')
    RETURNING id INTO v_2905_pergi_langsung;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '始まる', 'untuk-memulai', 12, 56, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti memulai, dan kata kerja ini berarti <vocabulary>to start</vocabulary> atau <vocabulary>to start</vocabulary>. 始まる merupakan versi intransitif, sehingga tidak mengambil objek langsung. Misalnya, perang dimulai atau masa sekolah baru dimulai. Tidak ada objek langsung, bukan?

Kata kerja yang berakhiran okurigana yang berima dengan ある cenderung bersifat intransitif seperti ini. Anda dapat mengingat hal ini karena jika ada sesuatu yang ある, ia hanya ada di sana, ada, tidak bertindak <em>pada</em> hal lain. Itu sebabnya kata kerja yang terdengar seperti itu seringkali juga bersifat intransitif!', 'Karena kata ini memiliki okurigana (hiragana yang melekat pada kanji), Anda tahu bahwa kemungkinan besar itu adalah bacaan kun''yomi.

Beruntungnya Anda, pembacaan kanji untuk kata kerja transitif dan intransitif hampir selalu sama. Setelah Anda mempelajarinya, Anda akan mengetahui keduanya! Bacaan ini sama dengan 始める.', 'Untuk Memulai, Sesuatu Dimulai, Untuk Memulai, Sesuatu Dimulai')
    RETURNING id INTO v_3098_untuk_memulai;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '待つ', 'untuk-menunggu', 12, 57, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>tunggu</kanji> jadi versi kata kerjanya adalah <vocabulary>menunggu</vocabulary>.', 'Anda perlu <vocabulary>menunggu</vocabulary> untuk <reading>ma</reading>ma ​​(ま) Anda sepanjang waktu. Anda ingin keluar? Kamu harus menunggu mama mengantarmu. Ingin makan malam? Kamu harus menunggu mama membuatkanmu makanan. Hmm. Mungkin semua penantian ini benar-benar menjadi masalahmu.', 'Untuk Menunggu')
    RETURNING id INTO v_3128_untuk_menunggu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '仲良し', 'teman-baik', 12, 58, 'Ketika <kanji>hubungan</kanji> Anda dengan seseorang benar-benar <kanji>baik</kanji>, Anda secara alami menjadi <vocabulary>teman baik</vocabulary>. Kalian selalu berkumpul dan bertingkah <vocabulary>buddy-buddy</vocabulary>, sehingga semua orang dapat mengetahui seberapa dekat persahabatan kalian.

仲良し menggambarkan teman dekat atau orang yang rukun. Kata tersebut memiliki kesan ramah, lucu dan sering digunakan untuk anak-anak, keluarga, atau siapa pun yang memiliki ikatan hangat.', 'Kedua bacaan di sini adalah kun''yomi yang sudah kalian ketahui. Berhati-hatilah dengan 良 — di 良い, bisa dibaca よ atau い, tapi di 良し selalu dibaca よ.', 'Teman baik, Sobat-Sobat')
    RETURNING id INTO v_3244_teman_baik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '洋食', 'makanan-gaya-barat', 12, 59, '<kanji>Ala Barat</kanji> <kanji>makan</kanji> berarti <vocabulary>Makanan ala Barat</vocabulary>.

Anda bisa menyebutnya <vocabulary>Makanan Barat</vocabulary> dengan singkatnya, namun di Jepang sebenarnya mengacu pada genre makanan Jepang yang terinspirasi oleh masakan Eropa. Bayangkan omurice (nasi omelet) atau pasta Napolitan (spaghetti dan saus tomat). Tahukah Anda, makanan <em>gaya</em> Barat.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Makanan Gaya Barat, Makanan Barat')
    RETURNING id INTO v_3295_makanan_gaya_barat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '勉強', 'studi', 12, 60, '<kanji>usaha</kanji> Anda <kanji>kuat</kanji>. Anda mungkin berpikir ini berarti Anda sedang bekerja keras atau semacamnya, tapi itu berarti <vocabulary>studi</vocabulary> (seperti studi yang Anda lakukan untuk ujian atau semacamnya). Jadi untuk ini, bayangkan saja diri Anda mengerahkan upaya yang sangat kuat untuk mengerjakan pekerjaan rumah Anda. Ini adalah <vocabulary>studi</vocabulary> Anda / apa yang Anda <vocabulary>pelajari</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Studi, Belajar')
    RETURNING id INTO v_3320_studi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '家庭', 'keluarga', 12, 61, 'Inti dari <kanji>rumah</kanji> dan <kanji>taman</kanji> Anda adalah <vocabulary>keluarga</vocabulary>, <vocabulary>rumah tangga</vocabulary>, atau <vocabulary>rumah</vocabulary> Anda.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Keluarga, Rumah tangga, Rumah')
    RETURNING id INTO v_3321_keluarga;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '庭', 'kebun', 12, 62, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna. Anda juga dapat menambahkan <vocabulary>yard</vocabulary> arti ke bank memori Anda, jika Anda mau.', 'Karena kata ini terdiri dari satu kanji, maka sebaiknya menggunakan bacaan kun''yomi. Saat mempelajari kanji, Anda tidak mempelajari bacaan tersebut, jadi inilah mnemonik untuk membantu Anda dengan kata ini: Anda melihat taman Anda. Itu tidak memenuhi harapan Anda sehingga Anda memutuskan sudah waktunya untuk mendapatkan taman <reading>yang lebih baru</reading> (にわ). Hancurkan semuanya, teman-teman! Mendapatkan taman yang lebih baru, ini!', 'Kebun, Halaman')
    RETURNING id INTO v_3322_kebun;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '息', 'napas', 12, 63, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Karena kata ini terdiri dari satu kanji, maka sebaiknya menggunakan bacaan kun''yomi. Saat mempelajari kanji, Anda tidak mempelajari cara membacanya, jadi inilah mnemonik untuk membantu Anda dengan kata ini: Anda mencium <reading>menjijikkan</reading> (いき) <vocabulary>nafas</vocabulary> seseorang. Itu menjijikkan. Kulit Anda merinding dan mata Anda berputar ke belakang karena bau yang menjijikkan dan menjijikkan. Anda mungkin mati.', 'Napas')
    RETURNING id INTO v_3323_napas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '息子', 'putra', 12, 64, '<kanji>nafas</kanji> <kanji>anak</kanji> (yang memungkinkan Anda melepaskan napas saat ia lahir) adalah <vocabulary>anak</vocabulary>. Saat ini, memiliki seorang anak perempuan adalah hal yang keren, tetapi dulu Anda menginginkan seorang anak laki-laki untuk meneruskan warisan menenun keranjang bawah air Anda. Itu sebabnya ini adalah seorang putra.', 'Pembacaan ini kacau. 子 adalah こ, seharusnya tidak masalah. 息 adalah むす karena alasan tertentu. Mengapa? Karena kamu melahirkan seorang anak laki-laki, tapi dia adalah seekor <read>rusa</reading> (むす). Sebaiknya kamu menahan nafas itu lagi, karena bukan ini yang kamu inginkan.', 'Putra')
    RETURNING id INTO v_3324_putra;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '利息', 'minat', 12, 65, 'Anda menerima <kanji>keuntungan</kanji> di setiap <kanji>nafas</kanji>. Keuntungan macam apa ini? Itu <vocabulary>minat</vocabulary>. Seiring berjalannya waktu dan semakin banyak Anda menarik napas, Anda mendapatkan lebih banyak bunga bank.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Minat')
    RETURNING id INTO v_3325_minat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '旅', 'perjalanan', 12, 66, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Karena kata ini terdiri dari satu kanji, maka sebaiknya menggunakan bacaan kun''yomi. Saat mempelajari kanji, Anda tidak mempelajari cara membacanya, jadi inilah mnemonik untuk membantu Anda dengan kata ini: Anda akan melakukan <vocabulary>perjalanan</vocabulary> tetapi Anda harus membawa kucing <reading>kucing</reading> (たび) kecil Anda untuk menemani Anda. Kucing ini membuat Anda tetap tenang dan membiarkan Anda meninggalkan rumah, tetapi maskapai penerbangan tidak mengizinkan Anda membawanya dalam perjalanan ini. Apa yang harus dilakukan?', 'Perjalanan, Bepergian')
    RETURNING id INTO v_3326_perjalanan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '旅行', 'perjalanan', 12, 67, 'Saat Anda <kanji>pergi</kanji> dalam sebuah <kanji>perjalanan</kanji>, Anda melakukan <vocabulary>perjalanan</vocabulary>. Ini adalah <vocabulary>perjalanan</vocabulary>. Anda harus mencoba melakukan ini sesekali! Mungkin perjalanan yang menyenangkan ke Jepang?', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Perjalanan, Bepergian')
    RETURNING id INTO v_3327_perjalanan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '根', 'akar', 12, 68, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Karena kata ini terdiri dari satu kanji, maka sebaiknya menggunakan bacaan kun''yomi. Saat mempelajari kanji, Anda tidak mempelajari bacaan tersebut, jadi inilah mnemonik untuk membantu Anda dengan kata ini:

Ini adalah <vocabulary>root</vocabulary> ajaib yang mengubah Anda menjadi seekor kuda. Anda menggigitnya dan mengeluarkan suara <read>neighbor</reading> (ね) yang keras!', 'Akar')
    RETURNING id INTO v_3328_akar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '根本', 'akar', 12, 69, '<kanji>root</kanji> <kanji>asal</kanji> adalah <vocabulary>root</vocabulary> dari sesuatu. Mungkin lebih banyak root daripada root, tapi kami akan tetap menggunakan root.

根本 umumnya mengacu pada akar permasalahan atau <kosakata>dasar</kosakata> mendasar dari sesuatu, seperti "akar masalah" atau "prinsip dasar".', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Hati-hati, 本 adalah ぽん, yaitu rendaku yang aneh. Jika Anda memerlukan bantuan dalam membaca rendaku ini, berikut mnemoniknya:

Apa <vocabulary>akar</vocabulary> penyebab ketidakbahagiaan Anda? Sebuah <membaca>pon</reading>y (ぽん). Mendapatkan seekor kuda poni pada dasarnya adalah <vocabulary>dasar</vocabulary> dari semua impian masa kecil Anda. Sayangnya orang tuamu tidak mampu membeli kuda poni, jadi sekarang kamu sedang menjalani terapi. Oh ya, Anda masih memikirkan kuda poni itu, yang menjadi akar dari semua masalah Anda…', 'Akar, Dasar, Dasar')
    RETURNING id INTO v_3329_akar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '屋根', 'atap', 12, 70, '<kanji>akar</kanji> dari <kanji>atap</kanji> Anda tetaplah <vocabulary>atap</vocabulary> Anda. Jika ini membantu, bayangkan akar tumbuh dari atap Anda. Mereka melindungi Anda dari hujan.', 'Kata ini menggunakan bacaan kun''yomi. Kun''yomi untuk 根 adalah ね. Untuk mnemonik, kita akan menggunakan suara kuda, <reading>neigh</reading> (ね). Mengapa kuda itu meringkik? Itu tersangkut di <vocabulary>atap</vocabulary>.', 'Atap')
    RETURNING id INTO v_3330_atap;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '根気', 'kesabaran', 12, 71, '<kanji>akar</kanji> dari <kanji>energi</kanji> Anda. Anda harus menggali jauh ke dalam energi Anda, sampai ke asal dan sumbernya, untuk memiliki <vocabulary>kesabaran</vocabulary> yang cukup untuk menghadapi anak bodoh yang menggerogoti energi non-akar Anda. Hanya itu yang Anda miliki, dan Anda perlu menggunakannya.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kesabaran, Kegigihan, Kegigihan')
    RETURNING id INTO v_3331_kesabaran;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '大根', 'daikon', 12, 72, 'Ini akan lebih mudah jika Anda pernah melihat atau mendengar tentang daikon sebelumnya. Ini adalah <kanji>akar</kanji> yang sangat <kanji>besar</kanji> di dalam tanah dan rasanya cukup lezat. Umumnya dikenal sebagai <vocabulary>daikon</vocabulary> di toko kelontong, meskipun terkadang Anda akan melihatnya sebagai <vocabulary>lobak Jepang</vocabulary> sebagai gantinya.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. 大 menggunakan bacaan だい karena jika kamu mencoba memasukkan semuanya ke dalam mulutmu sekaligus, kamu mungkin akan tersedak dan <reading>dy</reading>ing.', 'Daikon, Lobak Jepang')
    RETURNING id INTO v_3332_daikon;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '流す', 'untuk-membilas-sesuatu', 12, 73, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>aliran</kanji>. Jika Anda mengalirkan air, mungkin <vocabulary>membilas sesuatu</vocabulary>. Alternatifnya, <vocabulary>menuangkan sesuatu</vocabulary> membuat aliran cairan, dan <vocabulary>membuat sesuatu mengapung</vocabulary> berarti membuat sesuatu mengalir di aliran tersebut.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda:

Apa yang kamu lakukan terhadap orang yang <reading>nagger</reading> (orang yang cerewet)? Anda memiliki <vocabulary>untuk membuang</vocabulary> mereka ke toilet. Bayangkan seseorang mengomeli Anda untuk melakukan tugas-tugas Anda sehingga Anda membuangnya ke toilet.', 'Untuk Membilas Sesuatu, Untuk Menuangkan Sesuatu, Untuk Menetapkan Sesuatu')
    RETURNING id INTO v_3333_untuk_membilas_sesuatu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '流行', 'kecenderungan', 12, 74, 'Ke mana <kanji>aliran</kanji> <kanji>pergi</kanji>adalah tujuan semua orang. Itulah yang cenderung menjadi <vocabulary>tren</vocabulary>. Bayangkan sebuah tren yang sedang terjadi di masyarakat Anda saat ini. Bayangkan ia mengalir ke sungai dan semua orang mengikutinya. Kata ini juga digunakan untuk tren yang kurang diinginkan, seperti <vocabulary>prevalence</vocabulary> penyakit menular.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kecenderungan, Mode, Menggila, Prevalensi')
    RETURNING id INTO v_3334_kecenderungan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '一流', 'tingkat-pertama', 12, 75, 'Ini aneh. Anda memiliki <kanji>satu</kanji> <kanji>aliran</kanji>. Ini adalah materi streaming <vocabulary>kelas satu</vocabulary> yang kami miliki di sini. Jika dipikir-pikir, jika Anda hanya memiliki satu aliran (bukan banyak aliran), Anda dapat mengerahkan seluruh tenaga dan energi Anda ke dalamnya. Saat Anda melakukannya, Anda memastikan bahwa streaming tersebut <vocabulary>tingkat pertama</vocabulary> dalam hal kualitas dan hal lainnya.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Tingkat Pertama, Kelas satu, Kedudukan tertinggi, Kelas Atas')
    RETURNING id INTO v_3335_tingkat_pertama;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '本流', 'arus-utama', 12, 76, '<kanji>asal</kanji> <kanji>aliran</kanji>, dari situlah segala sesuatu berasal. Itu adalah <vocabulary>arus utama</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Arus utama')
    RETURNING id INTO v_3336_arus_utama;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '消す', 'untuk-memadamkan-sesuatu', 12, 77, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>memadamkan</kanji> jadi versi kosakata kata kerjanya adalah <vocabulary>to que que que </vocabulary>. Anda juga dapat menggunakan kata ini untuk mengucapkan <vocabulary>untuk menghapus sesuatu</vocabulary>, seperti data, dan <vocabulary>untuk mematikan sesuatu</vocabulary>, seperti lampu atau listrik. Secara teknis Anda mematikan data, juga lampu atau listrik, bukan?', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda:

Anda mempunyai <vocabulary>untuk memadamkan</vocabulary> apinya! <reading>ke</reading>ttle (け) menjadi terlalu panas dan terbakar.', 'Untuk Memadamkan Sesuatu, Untuk Menghapus Sesuatu, Untuk Mematikan Sesuatu')
    RETURNING id INTO v_3337_untuk_memadamkan_sesuatu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '〜倍', 'kali', 12, 78, 'Lemparkan ini ke dalam sebuah angka dan Anda akan melihat sendiri berapa <vocabulary>kali</vocabulary> sesuatu telah meningkat. Misalnya, ３倍 berarti sesuatu yang meningkat "tiga kali lipat".', 'Bacaannya sama dengan yang Anda pelajari dengan kanji. Hilangkan tanda 〜 saat menuliskan jawabannya. Itu menunjukkan bahwa harus ada sesuatu sebelum kanji dalam kata ini ketika digunakan.', 'Kali, Melipat')
    RETURNING id INTO v_3338_kali;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '二倍', 'dobel', 12, 79, 'Sesuatu yang <kanji>dua</kanji> <kanji>kali</kanji> adalah <vocabulary>double</vocabulary> (atau hanya <vocabulary>dua kali</vocabulary>). Tentu saja, ini semua dapat digunakan dengan hal-hal seperti 三倍, 百倍, dan 四十二倍 juga.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Dobel, Dua Kali, Dua kali, Dua kali lipat')
    RETURNING id INTO v_3339_dobel;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '店員', 'staf-toko', 12, 80, '<kanji>toko</kanji> <kanji>anggota</kanji> adalah seseorang yang menjadi "anggota" (alias dipekerjakan oleh) toko. Ini adalah <vocabulary>staf toko</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Staf Toko, Staf Toko, Karyawan Toko, Karyawan Toko, Staf, Asisten Toko')
    RETURNING id INTO v_3340_staf_toko;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '全員', 'semua-anggota', 12, 81, '<kanji>Semua</kanji> <kanji>anggota</kanji> berarti <vocabulary>semua anggota</vocabulary>. Ini juga merupakan cara yang bagus untuk mengatakan <vocabulary>semua orang</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Semua Anggota, Semua Tangan, Setiap orang, Semua orang')
    RETURNING id INTO v_3341_semua_anggota;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '社員', 'karyawan', 12, 82, '<kanji>perusahaan</kanji> <kanji>anggota</kanji> adalah <vocabulary>karyawan</vocabulary> dan <vocabulary>staf</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Karyawan, Staf, Karyawan Perusahaan, Staf Perusahaan')
    RETURNING id INTO v_3342_karyawan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '会社員', 'karyawan-perusahaan', 12, 83, 'Anggota <kanji>perusahaan</kanji> (会社) adalah seseorang yang bekerja di sebuah perusahaan. Ini adalah <vocabulary>karyawan perusahaan</vocabulary>. Ada banyak hal seperti ini di Jepang. Kebanyakan dari mereka mabuk.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Karyawan Perusahaan, Pekerja Kantor')
    RETURNING id INTO v_3343_karyawan_perusahaan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '広島', 'hiroshima', 12, 84, '<kanji>lebar</kanji> <kanji>pulau</kanji>... ini tidak berguna dengan sendirinya, tapi pulau luas ini adalah <vocabulary>Hiroshima</vocabulary> (pernah mendengarnya?). Ketika Anda membaca, itu akan lebih masuk akal.', 'Pembacaannya adalah pembacaan kun''yomi dari keduanya yang Anda pelajari dengan kanji individu. Pastikan Anda mengetahui bacaan tersebut dan Anda akan dapat membaca ini.', 'Hiroshima')
    RETURNING id INTO v_3344_hiroshima;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '文章', 'menulis', 12, 85, '<kanji>tulisan</kanji> <kanji>bab</kanji> hanyalah nama lain dari sebuah <vocabulary>tulisan</vocabulary>, alias <vocabulary>komposisi</vocabulary>. Meski hanya satu <vocabulary>kalimat</vocabulary>! 文章 mencakup hampir semua jenis tulisan yang ada.

Meskipun 文章 cukup serbaguna, kata ini paling sering mengacu pada tulisan lengkap yang lebih panjang, seperti esai, novel, cerita pendek, atau puisi. Tapi bahkan sesuatu yang super pendek seperti tanka atau haiku bisa disebut 文章, asalkan itu merupakan karya yang lengkap.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Menulis, Kalimat, Komposisi')
    RETURNING id INTO v_3346_menulis;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '第二章', 'bab-dua', 12, 86, '<kanji>awalan bilangan urut</kanji> <kanji>dua</kanji> <kanji>bab</kanji> memiliki cara yang lebih sederhana untuk mendeskripsikannya, yaitu <vocabulary>bab dua</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Bab Dua, Bab Kedua')
    RETURNING id INTO v_3347_bab_dua;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '第一', 'yang-pertama', 12, 87, '<kanji>awalan bilangan urut</kanji> <kanji>satu</kanji> mengacu pada <vocabulary>yang pertama</vocabulary>. Ini adalah tempat <vocabulary>nomor satu</vocabulary> yang bisa Anda dapatkan. Faktanya, ini hanyalah <vocabulary>terbaik</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Yang Pertama, Pertama, Nomor Satu, Terbaik')
    RETURNING id INTO v_3348_yang_pertama;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '第一位', 'tempat-pertama', 12, 88, 'Anda memiliki <kanji>awalan nomor urut</kanji> dan 一位 (tempat pertama). Dengan menambahkan awalan 第, Anda dapat membuatnya sedikit lebih formal, namun tetap berarti <vocabulary>tempat pertama</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Tempat Pertama, Peringkat Pertama')
    RETURNING id INTO v_3349_tempat_pertama;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '東京都', 'kota-metropolitan-tokyo', 12, 89, 'Ingat bagaimana 東京 Tokyo? Tambahkan <kanji>metropolis</kanji> ke dalamnya dan Anda mendapatkan <vocabulary>Tokyo Metropolis</vocabulary>.

東京都 pada dasarnya adalah salah satu prefektur di Jepang, tetapi mereka malah menyebutnya sebagai "metropolis". Ini adalah ibu kota dan kota terbesar di seluruh Jepang!', 'Pembacaannya hanya 東京 dan on''yomi untuk 都 (と), yang Anda pelajari dengan kanji. Dengan kata lain, on''yomi untuk ketiga kanji di sini.', 'Kota metropolitan Tokyo')
    RETURNING id INTO v_3350_kota_metropolitan_tokyo;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '京都', 'kyoto', 12, 90, '<kanji>ibukota</kanji> <kanji>metropolis</kanji> pada masa itu adalah <vocabulary>Kyoto</vocabulary>. Sekarang tentu saja ibu kotanya adalah Tokyo, tapi kanji tidak mengetahui hal ini. Itu sebabnya Kyoto adalah ibu kota metropolis!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kyoto, Kyoto')
    RETURNING id INTO v_3351_kyoto;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '動く', 'untuk-bergerak', 12, 91, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>bergerak</kanji> jadi versi kosakata kata kerjanya adalah <vocabulary>to move</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak mempelajari cara membaca tersebut dengan kanji ini, jadi inilah mnemonik yang dapat membantu Anda: Seseorang menyuruh Anda <vocabulary>untuk bergerak</vocabulary>. Mereka mengatakan "<reading>kamu pergi</reading> (うご) ke sana. Bergerak! Bergerak!" Jika itu membantu, mintalah mereka mengucapkan "You go" seperti "Ugo".', 'Untuk Bergerak, Untuk Berfungsi')
    RETURNING id INTO v_3352_untuk_bergerak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '動物', 'hewan', 12, 92, '<kanji>bergerak</kanji> <kanji>benda</kanji>... pikirkan tentang "benda" yang bergerak. Secara teknis bisa berupa banyak hal (alias apa saja pada dasarnya), namun dalam hal ini yang kita bicarakan adalah makhluk hidup yang bergerak. Kami tidak akan memasukkan manusia, karena manusia terlalu baik untuk disebut benda. Ini mengacu pada <vocabulary>hewan</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Hewan')
    RETURNING id INTO v_3353_hewan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '運動', 'latihan', 12, 93, 'Saat Anda <kanji>membawa</kanji> gerakan</kanji>Anda (atau membawa sesuatu bersama gerakan Anda, seperti beban, misalnya), Anda sedang melakukan <vocabulary>olahraga</vocabulary>. Omong-omong, mungkin akhir-akhir ini Anda terlalu banyak mempelajari kanji. Saatnya untuk bangun dan melakukan squat atau bermain <vocabulary>olahraga</vocabulary>.

Kata ini juga bisa berarti jenis <vocabulary>gerakan</vocabulary> yang lebih abstrak, seperti gerakan sosial atau politik yang berupaya untuk melakukan perubahan. Ini juga dapat digunakan saat mendeskripsikan <vocabulary>gerak</vocabulary> dalam fisika.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Latihan, Olahraga, Pergerakan, Gerakan')
    RETURNING id INTO v_3354_latihan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '商売', 'bisnis', 12, 94, '<kanji>Menjual</kanji>ing <kanji>merchandise</kanji> adalah <vocabulary>bisnis</vocabulary>, <vocabulary>commerce</vocabulary>, atau <vocabulary>trade</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Anda sudah mempelajari keduanya!', 'Bisnis, Perdagangan, Berdagang')
    RETURNING id INTO v_3355_bisnis;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '商人', 'pedagang', 12, 95, '<kanji>barang dagangan</kanji> <kanji>orang</kanji> adalah <vocabulary>pedagang</vocabulary>. Anda ingin membeli sesuatu atau Anda hanya melihat-lihat?', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Pedagang, Pedagang, Pemilik toko, Pedagang')
    RETURNING id INTO v_3356_pedagang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '悪い', 'buruk', 12, 96, 'Ini adalah kanji tunggal dengan い di akhir, artinya Anda tahu itu mungkin kata sifat. Apa bentuk kata sifat dari <kanji>buruk</kanji>? Ini juga <vocabulary>buruk</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Tahukah Anda bagaimana di alam semesta Mario semua versi <vocabulary>buruk</vocabulary> disebut "<reading>WARU</reading>" (わる)? Misalnya: "WARUIJI" dan "WARIO". Itu karena mereka jahat. Mereka berasal dari kanji ini. Jadi, jika Anda perlu mengingat bacaan ini, pikirkan kembali Wario dan Waruigi.', 'Buruk, Miskin, Salah')
    RETURNING id INTO v_3357_buruk;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '悪人', 'orang-jahat', 12, 97, '<kanji>orang</kanji> yang buruk <kanji>orang</kanji> adalah <vocabulary>orang yang jahat</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Orang jahat, Penjahat, Penjahat, Orang jahat, Orang Jahat, Orang Jahat')
    RETURNING id INTO v_3358_orang_jahat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '悪女', 'wanita-jahat', 12, 98, '<kanji>wanita</kanji> <kanji>yang buruk</kanji> adalah <vocabulary>wanita jahat</vocabulary>. Anehnya, "ibu mertua" bukanlah salah satu arti dari kata ini.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Wanita Jahat, Wanita Jahat, Wanita Jahat')
    RETURNING id INTO v_3359_wanita_jahat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '最悪', 'paling-buruk', 12, 99, '<kanji>yang paling</kanji> <kanji>buruk</kanji> adalah <vocabulary>yang terburuk</vocabulary>. Setidaknya itu tidak akan menjadi lebih buruk lagi…', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Paling buruk, Terburuk')
    RETURNING id INTO v_3360_paling_buruk;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '家族', 'keluarga', 12, 100, '<kanji>rumah</kanji> <kanji>suku</kanji> Anda adalah <vocabulary>keluarga</vocabulary> Anda. Mereka tinggal serumah dengan Anda dan mereka adalah bagian dari "suku" Anda. Namun ini lebih dekat daripada keluarga (tergantung bagaimana Anda memandang keluarga). Ini adalah <vocabulary>keluarga dekat</vocabulary> Anda karena mereka adalah orang-orang yang tinggal bersama dan melahirkan Anda, dll.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Keluarga, Keluarga Dekat')
    RETURNING id INTO v_3361_keluarga;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '民族', 'kelompok-etnis', 12, 101, '<kanji>bangsa</kanji> <kanji>suku</kanji> (atau suku bangsa) adalah kelompok yang semuanya bersatu. Mereka adalah satu <vocabulary>kelompok etnis</vocabulary>. Apa kabarmu?', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kelompok Etnis, Etnis, Balapan')
    RETURNING id INTO v_3362_kelompok_etnis;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '深い', 'dalam', 12, 102, 'Ini adalah kanji tunggal dengan い di akhir, artinya Anda tahu itu mungkin kata sifat. Apa bentuk kata sifat dari <kanji>dalam</kanji>? Kata-katanya juga <vocabulary>mendalam</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Karena bacaannya terdengar seperti kata kotor, dan mungkin ada anak-anak yang tidak bersalah, saya akan membiarkan Anda membuat mnemonik Anda sendiri untuk yang satu ini. Mungkin seseorang mendorong Anda ke dalam lubang yang dalam yang pasti akan membunuh Anda sehingga Anda meneriakkan sesuatu saat Anda terjatuh?', 'Dalam')
    RETURNING id INTO v_3364_dalam;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '深夜', 'tengah-malam', 12, 103, '<kanji>dalam</kanji> <kanji>malam</kanji> adalah <vocabulary>tengah malam</vocabulary>. Tidak ada yang lebih dalam dari itu sebelum Anda mulai keluar malam untuk memulai hari berikutnya.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Anda pernah melihat pembacaan ini sebelumnya, namun pembacaan や untuk 夜 masih cukup baru, jadi inilah penyegaran mnemonik:

Apa yang kamu lakukan di <vocabulary>tengah malam</vocabulary>? Anda menonton <reading>Ya</reading>nkees (や). Anda seharusnya tertidur, namun Anda malah menonton highlight bisbol dari Yankees <vocabulary>saat larut malam</vocabulary>.', 'Tengah Malam, Larut Malam')
    RETURNING id INTO v_3365_tengah_malam;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '水深', 'kedalaman-air', 12, 104, '<kanji>air</kanji> <kanji>kedalaman</kanji>adalah <vocabulary>kedalaman air</vocabulary>. Anda harus memeriksanya sebelum menyelam ke dalam air agar tidak mengenai wajah Anda.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kedalaman Air, Kedalaman Air')
    RETURNING id INTO v_3366_kedalaman_air;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '最深', 'terdalam', 12, 105, '<kanji>yang paling</kanji> <kanji>yang paling dalam</kanji> adalah <vocabulary>yang paling dalam</vocabulary>.

最深 adalah kata formal yang digunakan dalam geologi untuk menggambarkan titik terdalam dari benda-benda seperti gua dan lautan.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Terdalam, Yang Terdalam')
    RETURNING id INTO v_3367_terdalam;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '球', 'bola', 12, 106, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.

球 memiliki suara yang sedikit teknis dan menonjolkan bentuk bola dari objek yang sedang Anda bicarakan. Kata ini paling sering digunakan untuk merujuk pada <kosakata>bola olahraga</vocabulary> (sebagai alternatif yang lebih formal untuk ボール).', 'Kata ini terdiri dari satu kanji, jadi sebaiknya menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda:

Anda melihat <vocabulary>bola</vocabulary> di tangan <reading>Tama</reading>ra (たま). Anda tidak begitu yakin apa itu, tapi bentuknya benar-benar bulat. Mungkin itu semacam <vocabulary>olahraga bola</vocabulary>. Ingat Tamara, gadis bola setempat? Sangat masuk akal jika Tamara memegang bola atau bola olahraga, karena hanya itulah yang dia lakukan.

Anda mungkin memperhatikan 球 mempunyai bacaan yang sama dengan kata kosakata 玉. Artinya juga mirip, jadi bacaan ini seharusnya lebih mudah diingat!', 'Bola, Bola, Bola Olahraga')
    RETURNING id INTO v_3368_bola;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '野球', 'baseball', 12, 107, '<kanji>Bidang</kanji> <kanji>Bola</kanji>! Olahraga terhebat yang menghiasi bumi ini sejak olahraga yang sangat mirip (alias sama), <vocabulary>baseball</vocabulary>. Coba pikirkan, Anda bermain di lapangan dan menggunakan bola kecil. Luar biasa!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Baseball')
    RETURNING id INTO v_3369_baseball;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '童話', 'cerita-anak-anak', 12, 108, 'Jangan anggap ini sebagai <kanji>pembicaraan</kanji> remaja. Pikirkan 話 kata vocab, yang berarti "cerita". Jika Anda melakukan itu, Anda mendapatkan "cerita remaja". Apa itu cerita remaja? Ini adalah <vocabulary>cerita anak-anak</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Cerita Anak-Anak, Dongeng')
    RETURNING id INTO v_3370_cerita_anak_anak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '一階', 'lantai-pertama', 12, 109, '<kanji>satu</kanji> <kanji>lantai</kanji> adalah <vocabulary>lantai pertama</vocabulary> (atau <vocabulary>lantai satu</vocabulary>). Di Jepang, itu artinya <vocabulary>lantai dasar</vocabulary>. Cukup sederhana.', 'Bacaannya on''yomi karena kanji jukugo. Namun berhati-hatilah dengan 一. Itu menjadi lebih pendek dan memiliki sedikit っ di sana.', 'Lantai Pertama, Lantai Satu, Lantai Dasar, Cerita Pertama')
    RETURNING id INTO v_3372_lantai_pertama;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '二階', 'lantai-dua', 12, 110, '<kanji>dua</kanji> <kanji>lantai</kanji> adalah <vocabulary>lantai dua</vocabulary>. Di Jepang, itu artinya lantai di atas lantai dasar. Naik ke atas!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Lantai Dua, Lantai Dua, Cerita Kedua')
    RETURNING id INTO v_3373_lantai_dua;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '四十二階', 'lantai-empat-puluh-dua', 12, 111, 'Anda tahu bahwa 四十二 berarti "empat puluh dua". Jadi, selama kamu tahu <kanji>lantai</kanji> kamu akan tahu artinya <vocabulary>lantai empat puluh dua</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Lantai Empat Puluh Dua, Lantai Empat Puluh Dua, Cerita Empat Puluh Dua')
    RETURNING id INTO v_3374_lantai_empat_puluh_dua;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '寒い', 'dingin', 12, 112, 'Ini adalah kanji tunggal dengan い di akhir, artinya Anda tahu itu mungkin kata sifat. Apa bentuk kata sifat dari <kanji>dingin</kanji>? <vocabulary>dingin</vocabulary>.

寒い digunakan khusus saat Anda merasa kedinginan. Anda dapat mengucapkannya saat Anda berada di luar pada hari musim dingin, misalnya, atau saat Anda masuk ke ruangan yang dingin. Bahkan dapat digunakan sebagai respons terhadap lelucon tidak lucu yang membuat Anda kedinginan.', 'Karena kata ini terdiri dari kanji yang disertai hiragana, bisa dipastikan kata tersebut akan menggunakan pembacaan kun''yomi yang Anda pelajari dengan kanji (<reading>Samu</reading>rai (さむ)). Ingat?', 'Dingin')
    RETURNING id INTO v_3375_dingin;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '暑い', 'cuaca-panas', 12, 113, 'Ini adalah bentuk kata sifat dari <kanji>panas</kanji>... tapi kita akan menyebutnya <vocabulary>cuaca panas</vocabulary>. Mengapa? Karena ada perbedaan antara sesuatu yang panas dengan cuaca atau suasana yang sedang panas. Panas sekali, seperti dalam... "Sial, panas sekali di sini!"', 'Ini menggunakan bacaan yang sama dengan yang Anda pelajari dengan kanji, jadi Anda bisa melanjutkan ke sini!', 'Cuaca Panas, Panas')
    RETURNING id INTO v_3377_cuaca_panas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '期待', 'ekspektasi', 12, 114, 'Untuk <kanji>jangka waktu</kanji> Anda harus <kanji>menunggu</kanji>. Selama masa penantian ini, Anda membangun <vocabulary>ekspektasi</vocabulary> atau <vocabulary>antisipasi</vocabulary> agar sesuatu terjadi dengan cara tertentu. Menunggu, mengharapkan, menunggu, mengharapkan…

期待 secara khusus mengacu pada perasaan harapan atau antisipasi untuk hasil yang diinginkan.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Ekspektasi, Antisipasi')
    RETURNING id INTO v_3378_ekspektasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '学期', 'masa-sekolah', 12, 115, '<kanji>belajar</kanji> <kanji>periode waktu</kanji> bukanlah jumlah waktu menyedihkan yang Anda habiskan untuk belajar. Ini adalah sesuatu yang jauh lebih besar: <kosakata>istilah sekolah</vocabulary>. Ugh, berapa lama lagi masa belajarnya???', 'Bacaannya on''yomi karena merupakan kata jukugo tetapi がく disingkat menjadi がっ, jadi berhati-hatilah. Mungkin kamu hanya berharap masa sekolahnya diperpendek, itulah sebabnya kamu mempersingkat がく seperti itu?', 'Masa Sekolah, Semester')
    RETURNING id INTO v_3379_masa_sekolah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '時期', 'waktu', 12, 116, '<kanji>waktu</kanji> <kanji>periode waktu</kanji> adalah periode waktu dari waktu. Jika ada, perhatikan saja berapa kali kata "waktu" digunakan dan Anda akan mengingat kata ini berarti <vocabulary>time</vocabulary>. Namun maknanya adalah jenis waktu tertentu. Ini berbicara tentang <vocabulary>musim</vocabulary> atau <vocabulary>periode</vocabulary> waktu, bukan konsep waktu itu sendiri. Itu akan menjadi 時間 atau semacamnya.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Waktu, Musim, Periode')
    RETURNING id INTO v_3380_waktu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '植物', 'tanaman', 12, 117, '<kanji>Tanaman</kanji> <kanji>benda</kanji> adalah <vocabulary>tanaman</vocabulary> atau <vocabulary>vegetasi</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji.', 'Tanaman, Vegetasi')
    RETURNING id INTO v_3381_tanaman;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '歯医者', 'dokter-gigi', 12, 118, 'Anda tahu bahwa 医者 adalah seorang dokter. Jadi apa itu dokter <kanji>gigi</kanji>? <vocabulary>dokter gigi</vocabulary>. Serius, jangan lupa benang gigi. 歯医者 benci kalau kamu lupa membersihkan gigi.', 'Anda tahu cara membaca 歯 dan 医者, jadi sebaiknya Anda segera melakukannya!', 'Dokter gigi')
    RETURNING id INTO v_3382_dokter_gigi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '虫歯', 'rongga', 12, 119, '<kanji>gigi</kanji> <kanji>bug</kanji>... Untungnya, ini bukanlah serangga yang tinggal di gigi Anda, namun Anda dapat melihat mengapa seseorang berpikir hal ini yang terjadi. Gigi dengan "bug" di dalamnya adalah gigi dengan <vocabulary>rongga</vocabulary>.', 'Bacaannya sama-sama kun''yomi, tapi itulah bacaan yang Anda pelajari dengan kanji ini. Perhatikan bahwa は berubah menjadi ば. Mungkin ini karena Anda mungkin berteriak "BAH!" ketika Anda mengetahui Anda memiliki gigi berlubang.', 'Rongga, Gigi Membusuk, Kerusakan gigi')
    RETURNING id INTO v_3383_rongga;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '歯', 'gigi', 12, 120, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Pembacaan kata ini sama dengan yang Anda pelajari dengan kanji.', 'Gigi, Gigi')
    RETURNING id INTO v_3384_gigi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '温かい', 'hangat', 12, 121, 'Ini adalah kanji tunggal dengan い di akhir, artinya Anda tahu itu mungkin kata sifat. Apa bentuk kata sifat dari <kanji>hangat</kanji>? <vocabulary>hangat</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda:

Apa yang Anda katakan ketika teman Anda ingin keluar dari onsen <vocabulary>hangat</vocabulary> sebelum Anda? "<reading>Ah… Ta-ta</reading> (あたた)!" Ya, Anda belum selesai mandi air hangat ini — teman Anda bisa melanjutkan. Anda hanya menghela nafas dalam kehangatan, kenyamanan yang membahagiakan dan melambaikan tangan: "Ah… Ta-ta!"

Orang sering mengucapkan ini sebagai あったかい, terutama dalam bahasa Jepang lisan yang santai. Namun pembacaan yang "benar" tetaplah あたたかい, jadi ingatlah hal itu saat kamu mencoba mengetikkan kanji atau mengerjakan ujian penting!', 'Hangat')
    RETURNING id INTO v_3385_hangat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '温泉', 'sumber-air-panas', 12, 122, '<kanji>mata air</kanji> <kanji>hangat</kanji> (seperti mata air) adalah <vocabulary>mata air panas</vocabulary>. Ini sangat bagus. Anda harus mengunjunginya di Jepang.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Sumber Air Panas, Sumber air panas')
    RETURNING id INTO v_3386_sumber_air_panas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '温度', 'suhu', 12, 123, '<kanji>hangat</kanji> <kanji>derajat</kanji> adalah berapa derajat hangatnya suhu di sini. Tentu saja, suhu hangatnya juga sangat sedikit, sehingga sangat dingin. Apa semua ini? Itu adalah <vocabulary>suhu</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Suhu')
    RETURNING id INTO v_3387_suhu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '空港', 'bandara', 12, 124, 'Singkirkan sejenak fantasi balon steampunk Anda. <kanji>langit</kanji> <kanji>pelabuhan</kanji> adalah <vocabulary>bandara</vocabulary>, tidak lebih.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Bandara')
    RETURNING id INTO v_3388_bandara;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '茶の湯', 'upacara-minum-teh', 12, 125, '<kanji>air panas</kanji> dari <kanji>teh</kanji>. Itu adalah bagian dari upacara yang masuk ke dalam <vocabulary>upacara minum teh</vocabulary>.', 'Bacaannya sama-sama bacaan yang Anda pelajari dengan kanji. Sekarang Anda dapat menghabiskan lebih banyak waktu untuk minum teh di upacara minum teh dan lebih sedikit waktu untuk mengingat bacaan kanji.', 'Upacara Minum Teh')
    RETURNING id INTO v_3389_upacara_minum_teh;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '湯気', 'uap', 12, 126, '<kanji>Energi</kanji> air panas</kanji> bukanlah air panas itu sendiri, melainkan apa yang keluar darinya (saat mendidih, misalnya). Ini adalah <vocabulary>uap</vocabulary> dan <vocabulary>uap</vocabulary>.', 'Bagian ゆ dari bacaannya masuk akal. Bagian げ untuk 気 merupakan pengecualian, jadi inilah mnemonik yang bisa membantu:

Tidak ada makhluk yang lebih menyukai <vocabulary>steam</vocabulary> dan <vocabulary>vapor</vocabulary> selain <reading>ge</reading>ckos (げ). Tokek hidup di tempat yang panas, jadi di mana pun Anda melihat uap, Anda pasti akan melihat setidaknya satu tokek di dekatnya, jika Anda melihat cukup dekat.', 'Uap, Menguap')
    RETURNING id INTO v_3390_uap;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '登る', 'untuk-mendaki', 12, 127, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>memanjat</kanji> sehingga versi kosakata kata kerjanya adalah <vocabulary>to climbing</vocabulary> (atau <vocabulary>to ascend</vocabulary>), jika itu adalah hal yang Anda sukai.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Bacaannya sama dengan 上る yang kamu pelajari dulu di Level 1. Kalau kamu bisa mengingatnya, kamu bisa mengingat yang ini!', 'Untuk Mendaki, Untuk Naik')
    RETURNING id INTO v_3391_untuk_mendaki;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '登山', 'pendakian-gunung', 12, 128, '<kanji>Mendaki</kanji> <kanji>gunung</kanji>. Itulah <vocabulary>mendaki gunung</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Perhatikan bahwa ini menggunakan bacaan と alternatif, jangan disamakan dengan とう (sebenarnya, sangat membingungkan, maaf!). Bayangkan saja Anda memotong <reading>jari kaki</reading> Anda dengan pemecah es saat mendaki gunung. Kamu tahu itu pendek と karena jari kakimu sekarang pendek. Dan さん menjadi ざん berkat teman lama kita, rendaku.', 'Pendakian Gunung')
    RETURNING id INTO v_3392_pendakian_gunung;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '着る', 'untuk-dipakai', 12, 129, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>memakai</kanji> jadi kata ini berarti <vocabulary>memakai</vocabulary> atau <vocabulary>memakai</vocabulary>.', 'Apa yang ingin <vocabulary>pakai</vocabulary> Anda hari ini? Bagaimana dengan gaun yang seluruhnya terbuat dari kunci <reading></reading> (き)? Rasakan logam di kulit Anda dan beban di bahu Anda. Ini bukan hal yang nyaman untuk dikenakan. Mungkin lain kali Anda hanya perlu memakai satu kunci di leher Anda.', 'Untuk Dipakai, Untuk Memakai')
    RETURNING id INTO v_3393_untuk_dipakai;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '短い', 'pendek', 12, 130, 'Ini adalah kanji tunggal dengan い di akhir, artinya Anda tahu itu mungkin kata sifat. Apa bentuk kata sifat dari <kanji>pendek</kanji>? <vocabulary>pendek</vocabulary>.

Kata ini digunakan untuk mendeskripsikan sesuatu yang panjangnya pendek, bukan tingginya, seperti 短いトンネル (terowongan pendek) atau 短いスカート (rok pendek). Ini juga dapat digunakan untuk hal-hal yang <vocabulary>singkat</vocabulary>, seperti pidato, rapat, atau pesan.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Siapa yang rambutnya <vocabulary>pendek</vocabulary> dan selalu memakai celana pendek? Ini <membaca>Ms. Carr (みじか)! Semua orang selalu mengenali Ms. Carr karena dialah yang berambut pendek dan bercelana pendek, tidak peduli cuacanya. Nona Carr, ikon gaya pendek terhebat!', 'Pendek, Singkat')
    RETURNING id INTO v_3398_pendek;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '短刀', 'pedang-pendek', 12, 131, '<kanji>pedang</kanji> <kanji>pedang</kanji> adalah <vocabulary>pedang pendek</vocabulary>. Apa kata lain dari pedang pendek? Itu adalah <vocabulary>belati</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Pedang Pendek, Belati, Tanto')
    RETURNING id INTO v_3399_pedang_pendek;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '短期', 'periode-singkat', 12, 132, '<kanji>pendek</kanji> <kanji>jangka waktu</kanji> adalah <vocabulary>jangka pendek</vocabulary>. Anda tahu untuk tidak berpikir jangka pendek, bukan? Lagipula, kamu sedang belajar kanji.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Periode Singkat, Jangka pendek')
    RETURNING id INTO v_3400_periode_singkat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '泉', 'musim-semi', 12, 133, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Karena kata ini terdiri dari satu kanji, maka sebaiknya menggunakan bacaan kun''yomi. Saat mempelajari kanji, Anda tidak mempelajari cara membacanya, jadi inilah mnemonik untuk membantu Anda dengan kata ini: Anda sedang melihat <vocabulary>mata air</vocabulary> alami di dalam tanah. Air menggelegak, tapi kemudian ada sesuatu yang berubah. Kelihatannya agak tersumbat... ada yang menyembul. Lalu, tiba-tiba, Mario terbang keluar dari mata air, jatuh di depan Anda dan berteriak: "<reading>izumeeeee</reading> (いずみ), Mario!"', 'Musim semi, Air mancur')
    RETURNING id INTO v_3401_musim_semi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '合う', 'sesuai', 12, 134, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>sesuai</kanji> jadi versi kata kerjanya adalah <vocabulary>to suit</vocabulary>. 

Kata ini juga berarti <vocabulary>berkumpul</vocabulary> juga. Agaknya ketika sesuatu cocok dengan sesuatu yang lain, maka ia akan menyatu dengan sempurna. Itu sebabnya kata ini juga mempunyai arti lain (dan ini juga penting untuk kosakata masa depan).', 'Anda ingin menemukan <vocabulary>yang sesuai dengan</vocabulary> gaya pribadi Anda, sehingga Anda bisa dicocokkan dengan <reading>a</reading>ardvark (あ). Aardvark akan cocok dengan gundukan semut yang Anda gunakan untuk kursi dan sofa, sangat cocok.', 'Sesuai, Untuk Datang Bersama, Untuk Bertemu, Untuk Mencocokkan')
    RETURNING id INTO v_3424_sesuai;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '決まる', 'untuk-diputuskan', 12, 135, 'Mudah-mudahan Anda pernah melihat kata 決める sebelumnya. Hal ini serupa, hanya saja alih-alih memutuskan sesuatu, sesuatu malah diputuskan. Peraturan sudah diputuskan, jadwal sudah ditentukan – hal-hal semacam itu. Bersifat intransitif, jadi tidak mengambil objek langsung. Jadi 決まる berarti <vocabulary>diputuskan</vocabulary>.

Kata kerja yang berakhiran okurigana yang berima dengan ある cenderung bersifat intransitif seperti ini. Anda dapat mengingat hal ini karena jika ada sesuatu yang ある, ia hanya ada di sana, ada, tidak bertindak <em>pada</em> hal lain. Itu sebabnya kata kerja yang terdengar seperti itu seringkali juga bersifat intransitif!', 'Bacaannya sama dengan 決める, jadi pastikan Anda mengetahui kata tersebut agar bisa menerapkan ilmu tersebut di sini.', 'Untuk Diputuskan, Untuk Diselesaikan')
    RETURNING id INTO v_3492_untuk_diputuskan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '酒飲み', 'kedai-bir', 12, 136, 'Kita mempunyai <kanji>alkohol</kanji> dan bentuk kata benda 飲む (minum). Jadi Anda tahu ini ada hubungannya dengan minum alkohol. Artinya <vocabulary>boozer</vocabulary> atau <vocabulary>drunkar</vocabulary>, seseorang yang minum banyak alkohol!

酒飲み secara harfiah berarti "peminum alkohol", dan biasanya berarti orang tersebut mengonsumsi banyak alkohol. Ini adalah kata yang biasa saja dan mungkin terdengar lucu (seperti menggoda teman) atau agak kritis, tergantung pada situasi dan nadanya.', 'Bacaannya berupa vocab kata お酒 dan 飲む yang digabungkan menjadi satu. Anda bisa menebak itu adalah bacaan kun''yomi karena adanya huruf み di akhir 飲, yang seharusnya membuat Anda mengingat kembali kosakata yang menggunakan bacaan kun''yomi untuk kanji tersebut. Jika Anda bisa melakukannya, Anda bisa membaca kata ini (dan mungkin banyak kata lainnya)!', 'Kedai bir, Pemabuk')
    RETURNING id INTO v_3516_kedai_bir;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '鳴き声', 'tangisan-hewan', 12, 137, '<kanji>kicauan</kanji> <kanji>suara</kanji> adalah suara binatang. Tentu saja, ini berhasil untuk burung (yang berkicau), tetapi juga berlaku untuk sebagian besar hewan lainnya. Jadi, kami menyebutnya <vocabulary>animal cry</vocabulary>.', 'Bacaannya adalah yang Anda pelajari dengan kanji. 声 diubah menjadi ごえ, jadi ingatlah itu dalam pikiranmu. Mungkin Anda bisa membayangkan seekor binatang yang menangis "GOEEEEE".', 'Tangisan Hewan, Suara Binatang, Kebisingan Hewan, Kicauan, Menciak, Mengaum, Kulit pohon, mengeong')
    RETURNING id INTO v_3517_tangisan_hewan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '飲み物', 'minuman', 12, 138, '<kanji>sesuatu</kanji> yang Anda <kanji>minum</kanji> adalah <vocabulary>minuman</vocabulary>.', 'Keduanya adalah bacaan kun''yomi. Anda sudah mempelajarinya, jadi Anda sudah tahu cara membaca kata ini!', 'Minuman, Minum')
    RETURNING id INTO v_3518_minuman;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '聞こえる', 'agar-dapat-didengar', 12, 139, 'Mudah-mudahan Anda sudah melihat 聞く sekarang. Hal ini serupa, namun alih-alih berarti "mendengar", kata ini berarti <vocabulary>dapat didengar</vocabulary> atau <vocabulary>dapat didengar</vocabulary>. Untuk mengingat hal ini, coba pikirkan bagaimana Anda bisa mendengar こえ (suara) yang berasal dari tengah kata 聞こえる. Itu juga terdengar oleh Anda, bukan?

聞こえる digunakan ketika suara terdengar sendiri di telinga Anda, seperti "Saya bisa mendengar musik dari rumah sebelah". Ini lebih tentang apa yang masuk ke telinga Anda, bukan apa yang ingin Anda dengarkan. Oleh karena itu, ini juga berarti <vocabulary>dapat mendengar</vocabulary>.', 'Bacaannya berasal dari 聞く, jadi jika anda mengetahui bacaan dari kata tersebut anda bisa menerapkannya disini.', 'Agar Dapat Didengar, Agar Terdengar, Untuk Mampu Mendengar')
    RETURNING id INTO v_3519_agar_dapat_didengar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '心配事', 'kekuatiran', 12, 140, 'Ingat bagaimana 心配 berarti "kekhawatiran" dan 事 bisa berarti "sesuatu"? Nah, jika Anda khawatir terhadap suatu hal tertentu, Anda mungkin mempunyai <vocabulary>kekhawatiran</vocabulary> dan <vocabulary>khawatir</vocabulary>. Apa kabarmu hari ini?', 'Bacaannya adalah bacaan 心配 (yang diharapkan sudah bisa Anda kuasai sekarang) dan 事 dengan menggunakan bacaan (こと). Ini juga mengandung rendaku, jadi waspadalah terhadap ごと. (Hanya 心配事 lagi, benarkan?)', 'Kekuatiran, Kekhawatiran, Masalah')
    RETURNING id INTO v_3520_kekuatiran;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '音読み', 'bacaan-cina', 12, 141, '<kanji>suara</kanji> <kanji>dibaca</kanji>ing. Apa ini...? Tunggu sebentar, pikirkan bahasa Jepang dan kanji. Bacaan apa yang menggunakan bunyi-bunyian dari tempat lain, khususnya Tiongkok? Itulah <vocabulary>bacaan Cina</vocabulary> alias <vocabulary>on''yomi</vocabulary>. Kedengarannya familier?', 'Bacaan untuk 音 adalah 音読み. 読み menggunakan kun''yomi, anehnya. Cara untuk mengacaukan satu kata yang seharusnya menjadi on''yomi, Jepang. Jalan. Ke. Pergi.', 'Bacaan Cina, On''yomi')
    RETURNING id INTO v_3521_bacaan_cina;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '運転手', 'pengemudi', 12, 142, 'Anda tahu bahwa <vocabulary>運転</vocabulary> ada hubungannya dengan mengemudi, bukan? Dan tahukah Anda bahwa <kanji>手</kanji> sering kali berkaitan dengan seseorang yang melakukan sesuatu dengan kata-kata seperti ini. Jadi, orang yang mengemudikan mobil itu apa? <vocabulary>driver</vocabulary>.', 'Pembacaannya semua on''yomi, karena ini jukugo. Anda seharusnya sudah mengetahui pembacaan on''yomi 手 sekarang hanya dengan melihat pola kata yang mirip dengan ini.', 'Pengemudi')
    RETURNING id INTO v_3549_pengemudi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '落ち葉', 'daun-jatuh', 12, 143, '<kanji>daun</kanji> yang <kanji>gugur</kanji> adalah <vocabulary>daun tumbang</vocabulary>.', 'Pembacaan yang satu ini agak aneh. Anda harus memanfaatkan pengetahuan Anda tentang 落ちる dan menggunakannya untuk paruh pertama. Lalu, 葉 direndaku menjadi ば. Sebab, saat daun jatuh, Gober berkata "BAH! Humbug!" (mungkin karena dia kehilangan uang).', 'Daun Jatuh, Daun Jatuh')
    RETURNING id INTO v_3550_daun_jatuh;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '父親', 'ayah', 12, 144, '<kanji>ayah</kanji> <kanji>orang tua</kanji> Anda adalah <vocabulary>ayah</vocabulary> Anda.', 'Pembacaan di sini cukup aneh. Itu semua kun''yomi. Dugaan saya ini diterjemahkan secara harfiah menjadi "ayah orang tua" (dua kata berbeda, oleh karena itu menggunakan bacaan lain). Namun, Anda harus mengetahui bacaan dari dua kata terpisah ini. Itu adalah 父 (ちち) dan 親 (おや).', 'Ayah, Ayah')
    RETURNING id INTO v_3551_ayah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '母親', 'ibu', 12, 145, '<kanji>ibu</kanji> <kanji>orang tua</kanji> adalah <vocabulary>ibu</vocabulary>.', 'Pembacaan untuk ini aneh. Itu adalah bacaan kosakata kun''yomi, mungkin karena terjemahan literalnya adalah "ibu orang tua" dan karena itu terdiri dari beberapa kata yang digabungkan menjadi satu konsep. Jadi, pastikan Anda mengetahui perbedaan pembacaan kata 母 dan 親. Jika ya, Anda seharusnya bisa membaca ini juga.', 'Ibu, Mama')
    RETURNING id INTO v_3552_ibu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '三番目', 'hal-ketiga', 12, 146, 'Ingat 一番目? Ini memang seperti itu, tapi dengan tiga, menjadikannya <vocabulary>hal ketiga</vocabulary> atau sekadar <vocabulary>yang ketiga</vocabulary>.

Sekali lagi, pikirkan tentang koleksi bola mata Anda. Kali ini, Anda menunjukkan bola mata ketiga pada etalase Anda kepada seseorang. Itu kebetulan berada di urutan ketiga, tapi sejujurnya itu sama indahnya dengan dua yang ada sebelumnya.', 'Gunakan pengetahuan Anda tentang bacaan 一番目 untuk mengingat bacaan kata ini juga.', 'Hal Ketiga, Yang Ketiga, Hal Ketiga')
    RETURNING id INTO v_3553_hal_ketiga;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '話し方', 'cara-berbicara', 12, 147, 'Karena 話す berarti "berbicara", <kanji>cara</kanji> Anda dalam melakukan hal tersebut adalah <vocabulary>cara berbicara</vocabulary> atau <vocabulary>gaya berbicara</vocabulary> Anda. Ini termasuk nada suara, kecepatan, dan bahkan cara Anda menggunakan gerakan saat berbicara. Ini lebih tentang keseluruhan cara Anda berkomunikasi, bukan hanya kata-kata atau cara Anda mengutarakan sesuatu.', 'Kata ini menggunakan bacaan kun''yomi untuk kedua kanjinya. Anda mempelajari pembacaan はな dengan 話す, dan pembacaan かた untuk 方 adalah pembacaan yang Anda pelajari dengan kata-kata "cara melakukan" lainnya seperti 言い方 (cara mengucapkan) dan 読み方 (cara membaca).', 'Cara Berbicara, Gaya Berbicara')
    RETURNING id INTO v_3555_cara_berbicara;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '転ぶ', 'jatuh', 12, 148, 'Apakah Anda ingat kata 転がる? Ini mirip, bukannya menggelinding, ini lebih pada saat sesuatu jatuh dan menyentuh tanah. Artinya <vocabulary>jatuh</vocabulary> atau <vocabulary>jatuh</vocabulary>. Bayangkan saja seseorang jatuh dari kursi terlebih dahulu ke tanah dan mengeluarkan suara ぶ.', 'Bacaannya berasal dari 転がる. Mudah-mudahan Anda cukup mengetahui yang satu itu untuk mengaitkannya dengan yang ini, artinya Anda bisa membaca keduanya.', 'Jatuh, Jatuh')
    RETURNING id INTO v_3556_jatuh;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '集まる', 'untuk-datang-bersama', 12, 149, 'Saya yakin Anda ingat 集める artinya "mengumpulkan sesuatu". Tapi kali ini Anda tidak mengumpulkan sesuatu. Sebaliknya, sesuatu hanya… terkumpul. Dengan kata lain, 集まる berarti <vocabulary>berkumpul</vocabulary> atau <vocabulary>berkumpul</vocabulary>. Teman berkumpul, atau penggemar berkumpul di suatu tempat — hal semacam itu. Tidak diperlukan objek langsung, karena ini bersifat intransitif.

Kata kerja yang berakhiran okurigana yang berima dengan ある cenderung bersifat intransitif seperti ini. Anda dapat mengingat hal ini karena jika ada sesuatu yang ある, ia hanya ada di sana, ada, tidak bertindak <em>pada</em> hal lain. Itu sebabnya kata kerja yang terdengar seperti itu seringkali juga bersifat intransitif!', 'Bacaannya sama dengan 集める jadi kalau kamu tahu kata itu kamu pasti tahu cara membaca kata ini juga.', 'Untuk Datang Bersama, Untuk Berkumpul, Untuk Dikumpulkan')
    RETURNING id INTO v_3557_untuk_datang_bersama;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '落とす', 'untuk-menjatuhkan-sesuatu', 12, 150, 'Anda telah melihat bagaimana 落ちる berarti "jatuh". Sekarang Anda sedang melakukan aksi “menjatuhkan sesuatu” alias Anda menjatuhkannya. Kamu dapat mengingat ini karena kamu <read>melempar</reading> (とす) sesuatu dan benda itu jatuh ke tanah, membuat kata ini berarti <vocabulary>menjatuhkan sesuatu</vocabulary>.', 'Bacaannya berasal dari 落ちる. Selama Anda mengetahui kata tersebut, Anda juga dapat menerapkan bacaan tersebut di sini.', 'Untuk Menjatuhkan Sesuatu, Membiarkan Sesuatu Jatuh, Kehilangan Sesuatu')
    RETURNING id INTO v_3558_untuk_menjatuhkan_sesuatu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '終わり', 'akhir', 12, 151, 'Sekarang Anda seharusnya sudah tahu bahwa 終わる berarti "mengakhiri" atau "menyelesaikan". Jadi apa versi kata benda dari kata itu? Ini akan menjadi <vocabulary>akhir</vocabulary> atau <vocabulary>akhir</vocabulary>.', 'Bacaannya berasal dari 終わる. Selama kamu tahu kata itu, kamu bisa mempelajari bacaan kata ini juga!', 'Akhir, Akhir, Selesai, Menyelesaikan')
    RETURNING id INTO v_3559_akhir;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '終電', 'kereta-terakhir', 12, 152, 'Kita telah melihat beberapa kali di mana 電 mengacu pada kereta api. Bagaimanapun, ini adalah masalah besar dan menggunakan banyak listrik. Jadi, kereta <kanji>akhir</kanji> untuk kata ini merujuk pada <vocabulary>kereta terakhir</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kereta Terakhir, Kereta Terakhir')
    RETURNING id INTO v_3560_kereta_terakhir;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '開く', 'untuk-membuka', 12, 153, 'Anda seharusnya sudah tahu 開ける sekarang. Kata ini mirip dengan itu, hanya saja ada hubungannya dengan saat segala sesuatunya terbuka. Tapi itu sama saja. Artinya juga <vocabulary>membuka</vocabulary>.', 'Apakah Anda ingat bacaan 開ける yang Anda pelajari di level 10? Itu benar, itu あける! Jadi jika Anda tahu bacaan kata itu (saya harap Anda tahu!) maka Anda bisa menerapkan pengetahuan itu di sini.

Sekadar catatan singkat — 開く juga bisa dibaca sebagai ひらく, tapi kita akan fokus pada pembacaan あく di sini. Karena ひらく memiliki arti yang sedikit berbeda, kami tidak akan menerimanya sebagai bacaan untuk kata ini, jadi pastikan untuk memasukkan あく!', 'Untuk Membuka, Menjadi Terbuka')
    RETURNING id INTO v_3561_untuk_membuka;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '起こる', 'terjadi', 12, 154, 'Anda tahu bahwa 起きる berarti "bangun", tetapi apakah Anda mempelajari arti sekundernya, "terjadi"? Nah, kata ini berarti hanya <vocabulary>terjadi</vocabulary>. Bayangkan saja sebuah insiden terjadi yang melibatkan <reading>inti</reading> (こる) uranium, ingatlah bahwa ini berarti <vocabulary>terjadi</vocabulary>. Lagi pula, insiden inti uranium tidak akan terjadi, bukan?', 'Bacaannya sama dengan yang kamu pelajari dengan kanji dan sama juga dengan 起きる, artinya kamu harus bisa menyusun sendiri bacaannya.', 'Terjadi, Terjadi, Akan Terjadi')
    RETURNING id INTO v_3562_terjadi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '心配する', 'khawatir', 12, 155, 'Anda tahu bahwa 心配 adalah "kekhawatiran". Bagaimana dengan versi kata kerjanya? Ini akan menjadi <vocabulary>khawatir</vocabulary>.', 'Bacaannya langsung dari 心配 jadi pastikan Anda mengetahui kata tersebut agar dapat membaca kata tersebut! Itu juga semua bacaan jukugo on''yomi, jadi Anda harus bisa memahaminya.', 'Khawatir, Menjadi Peduli, Menjadi Cemas')
    RETURNING id INTO v_3563_khawatir;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '鳴る', 'untuk-bersuara', 12, 156, 'Anda telah mempelajari 鳴く yang berarti "berkicau" (atau suara binatang lainnya). 鳴る serupa, tetapi digunakan ketika sesuatu hanya mengeluarkan suara, seperti telepon berdering, bel berbunyi, atau guntur bergemuruh. Jadi 鳴る berarti <vocabulary>berbunyi</vocabulary> atau <vocabulary>berdering</vocabulary>. Kamu tahu ini karena 鳴る juga bisa digunakan ketika perutmu keroncongan: "<reading>rrrr</reading>" (る)!', 'Bacaannya bisa berasal dari 鳴く. Selama Anda mengetahui bacaan kata tersebut, Anda juga dapat mengetahui bacaan kata tersebut.', 'Untuk menelepon, Untuk Bersuara')
    RETURNING id INTO v_3565_untuk_bersuara;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '歌う', 'bernyanyi', 12, 157, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Salah satu arti kanjinya adalah <kanji>bernyanyi</kanji> jadi versi kosakata kata kerjanya adalah <vocabulary>to sing</vocabulary>.', 'Hebatnya, ini menggunakan bacaan yang sama dengan bacaan kosakata 歌. Lemparkan saja う ke akhir dan Anda sendiri yang membacanya. Jadi, bernyanyilah sepuasnya dan pelajari kata ini dengan mudah. "IIIIiiiIIIiiiIII AKAN SELALUYYYs Loovvve YoOooOOooooOOOO ♬!"', 'Bernyanyi')
    RETURNING id INTO v_3566_bernyanyi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '勝手', 'sesuai-keinginan-seseorang', 12, 158, '<kanji>tangan</kanji> (atau orang, seperti yang Anda tahu 手 sering merujuk pada seseorang) yang <kanji>menang</kanji> dapat melakukan <kosakata>sekehendaknya</vocabulary> tanpa mempedulikan orang lain.', 'Pembacaan untuk ini aneh. Itu semua kun''yomi, yang untungnya kamu pernah melihatnya sebelumnya, tapi tetap saja aneh. Saya kira ketika Anda melakukan <vocabulary>sesuka hati</vocabulary> Anda dapat membaca kanji sesuka Anda, dalam hal ini pembacaan kun''yomi. Perhatikan bahwa ada っ kecil di sana sebelum 手, mungkin untuk menghubungkan dua bacaan dari dua kanji bersama-sama.', 'Sesuai keinginan seseorang, Kenyamanan Sendiri, Jalannya Sendiri, Satu Jalan')
    RETURNING id INTO v_3567_sesuai_keinginan_seseorang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '伝わる', 'untuk-ditularkan', 12, 159, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji berarti <kanji>mentransmisikan</kanji>, dan versi kata kerja ini adalah <kosakata>disampaikan</vocabulary> atau <vocabulary>untuk disampaikan</vocabulary>. Bersifat intransitif, jadi tidak mengambil objek langsung. Sebuah pesan dikirimkan, atau perasaan Anda tersampaikan — hal semacam itu.

Kata kerja yang berakhiran okurigana yang berima dengan ある cenderung bersifat intransitif seperti ini. Anda dapat mengingat hal ini karena jika ada sesuatu yang ある, ia hanya ada di sana, ada, tidak bertindak <em>pada</em> hal lain. Itu sebabnya kata kerja yang terdengar seperti itu seringkali juga bersifat intransitif!', 'Karena kata ini memiliki okurigana (hiragana yang melekat pada kanji), Anda tahu bahwa kemungkinan besar itu adalah bacaan kun''yomi.

Beruntungnya Anda, pembacaan kanji untuk kata kerja transitif dan intransitif hampir selalu sama. Setelah Anda mempelajarinya, Anda akan mengetahui keduanya! Bacaan ini sama dengan 伝える.', 'Untuk Ditularkan, Untuk Disampaikan, Untuk Diturunkan')
    RETURNING id INTO v_3582_untuk_ditularkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '都合', 'kenyamanan-seseorang', 12, 160, 'Yang ini tidak masuk akal (maaf!). Saat Anda <kanji>bergabung</kanji> bersama seseorang di <kanji>metropolis</kanji>, Anda melakukannya <vocabulary>sesuai keinginan Anda</vocabulary>. Bagaimanapun, Anda penting, jadi lakukan saja apa yang Anda inginkan dan buat orang lain menunggu di kota metropolitan raksasa ini sementara Anda berjalan-jalan dengan santai. Bayangkan ini, dan teruslah berpikir "sesuai keinginan Anda" saat Anda berjalan.

Namun, kata ini biasanya digunakan dengan cara yang lebih baik. Seperti dalam, "lakukan sesuka Anda!"', 'Pembacaan 都 merupakan pengecualian dari apa yang Anda pelajari dengan kanji. Untuk mengingat hal ini, pikirkan saja seseorang yang melakukan sesuatu demi kenyamanannya sendiri. Mereka berkata, saya akan <membaca>pergi</reading> (つごう) ke tempat yang saya inginkan, kapan pun saya mau, sesuai keinginan saya.

Namun, bagian 合 (ごう) adalah bacaan yang Anda ketahui dari kanji, jadi jika Anda bisa "melakukannya" dengan mnemonik, Anda harus bisa menggabungkan dua dan dua untuk mengetahui bahwa itu adalah vokal yang panjang ごう.', 'Kenyamanan Seseorang, Keadaan')
    RETURNING id INTO v_3649_kenyamanan_seseorang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '映す', 'untuk-memproyeksikan', 12, 161, 'Anda tahu bahwa 映る adalah "untuk direfleksikan." Sekarang Anda sedang melakukan refleksi, yang sebenarnya memproyeksikan (cahaya). Itu sebabnya kata ini <vocabulary>memproyeksikan</vocabulary>.', 'Bacaannya sama dengan 映る. Selama kamu tahu bacaan 映る kamu seharusnya bisa membaca yang ini juga.', 'Untuk Memproyeksikan, Untuk Merefleksikan')
    RETURNING id INTO v_3906_untuk_memproyeksikan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '要求する', 'untuk-menuntut-sesuatu', 12, 162, 'Mudah-mudahan Anda ingat bahwa 要求 berarti "permintaan". Saat Anda menjadikannya kata kerja, itu menjadi <vocabulary>menuntut sesuatu</vocabulary>.', 'Yang dibaca hanyalah vocab kata 要求. Ini juga merupakan bacaan on''yomi jukugo biasa.', 'Untuk Menuntut Sesuatu')
    RETURNING id INTO v_3925_untuk_menuntut_sesuatu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '消化', 'pencernaan', 12, 163, 'Sesuatu apa yang pertama-tama akan <kanji>memadamkan</kanji> sesuatu dan kemudian <kanji>mengubah</kanji>? Satu hal yang terpikir olehku adalah tubuhmu. Dibutuhkan dalam makanan, memadamkannya di perut Anda, lalu mengubahnya menjadi sesuatu yang dapat digunakan tubuh Anda (dan kemudian dikeluarkan). Itu sebabnya proses "pemadaman-perubahan" ini adalah <vocabulary>pencernaan</vocabulary> Anda.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Pencernaan')
    RETURNING id INTO v_3926_pencernaan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '運', 'keberuntungan', 12, 164, 'Ini mengambil arti <kanji>keberuntungan</kanji> dari kanji. Anggap saja seperti ini: Jika Anda "membawa", Anda akan menciptakan keberuntungan Anda sendiri. Sekarang tidak ada yang akan macam-macam denganmu, kanji gangstah. Anda membawa senjata dan mendapatkan banyak <vocabulary>keberuntungan</vocabulary> karenanya.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji! Bagaimana... haruskah saya katakan... penuh dengan <vocabulary>keberuntungan</vocabulary>?', 'Keberuntungan')
    RETURNING id INTO v_3950_keberuntungan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '取れる', 'untuk-keluar', 12, 165, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja.

Ini adalah kata kerja intransitif. Artinya tidak mengambil objek secara langsung. Ada yang lepas. Sesuatu dihapus. Tidak ada objek langsung di sini. Itu sebabnya kata kerja ini berarti <vocabulary>keluar</vocabulary> atau <vocabulary>dihilangkan</vocabulary>.', 'Karena kata ini memiliki okurigana (hiragana yang melekat pada kanji), Anda tahu bahwa kemungkinan besar itu adalah bacaan kun''yomi.

Beruntungnya Anda, pembacaan kanji untuk kata kerja transitif dan intransitif hampir selalu sama. Setelah Anda mempelajarinya, Anda akan mengetahui keduanya! Bacaan ini sama dengan 取る.', 'Untuk Keluar, Untuk Dihapus, Jatuh')
    RETURNING id INTO v_4073_untuk_keluar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '気温', 'suhu', 12, 166, '<kanji>energi</kanji> dari <kanji>hangat</kanji> akan menyebabkan <vocabulary>suhu</vocabulary> naik dan turun. Energi naik? Suhu lebih tinggi karena lebih banyak gerakan dan aktivitas. Energi turun? Ya, suhu menjadi lebih dingin dan lebih lambat.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Suhu, Suhu udara')
    RETURNING id INTO v_4847_suhu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '彼', 'dia', 12, 167, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji.', 'Dia')
    RETURNING id INTO v_5896_dia;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '彼ら', 'mereka', 12, 168, 'Ini adalah <kanji>he</kanji> tetapi jamak. Kata "ra" menjadikannya jamak, menjadikannya "<vocabulary>mereka</vocabulary>" atau "<vocabulary>them</vocabulary>." Dalam bahasa Jepang modern, kata ini umumnya mengacu pada sekelompok laki-laki atau anak laki-laki, namun bisa juga digunakan untuk kelompok campuran.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji.', 'Mereka, Mereka, Orang-orang itu')
    RETURNING id INTO v_5898_mereka;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '誰か', 'seseorang', 12, 169, '誰 adalah <kanji>siapa</kanji>, 誰か seperti menanyakan "siapa?" Jika Anda tidak mengetahui siapa orang tersebut, Anda hanya mengetahui bahwa itu adalah <vocabulary>seseorang</vocabulary>.', 'Bacaannya berasal dari bacaan yang Anda pelajari dengan kanji.', 'Seseorang')
    RETURNING id INTO v_6654_seseorang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '疲労', 'kelelahan', 12, 170, 'Anda <kanji>lelah</kanji> karena <kanji>kerja</kanji>. Dari sini, Anda menunjukkan <vocabulary>kelelahan</vocabulary> dan <vocabulary>kelelahan</vocabulary>.

疲労 agak formal, jadi Anda mungkin lebih sering menemukannya dalam tulisan daripada percakapan.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Kelelahan, Kelelahan')
    RETURNING id INTO v_6900_kelelahan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '〜階', 'lantai', 12, 171, 'Anda tahu bahwa kanji mengacu pada <kanji>lantai</kanji> (seperti dalam "lantai lima"). Kata ini mewakili versi yang muncul setelah angka, ditunjukkan dengan tanda 〜. Pada dasarnya, ini memiliki arti yang sama dengan kanji yang Anda pelajari, sehingga membuatnya bagus dan mudah.

Perlu diperhatikan bahwa sistem penghitungan lantai dapat berbeda-beda di berbagai negara. Di Jepang lantai dasar umumnya disebut 一階, dengan lantai di atasnya disebut 二階, 三階, dan seterusnya.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji. Jangan mengetik 〜 atau Anda akan salah!', 'Lantai, Cerita, Tingkat')
    RETURNING id INTO v_7452_lantai;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '都市', 'kota', 12, 172, '<kanji>metropolis</kanji> <kanji>kota</kanji> adalah <vocabulary>kota</vocabulary>. Jika yang Anda maksud hanyalah kota biasa, tanpa nama, Anda dapat menggunakan kata ini.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Kota, Kotamadya')
    RETURNING id INTO v_7457_kota;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '言葉', 'kata', 12, 173, '<kanji>daun</kanji> dari hal-hal yang Anda <kanji>ucapkan</kanji> bagaikan daun dari pohon pembicaraan. Daun itu adalah bagian dari keseluruhan bahasa, ia merupakan satu <vocabulary>kata</vocabulary>, meski bisa juga menjadi <vocabulary>bahasa</vocabulary> atau <vocabulary>cara berbicara</vocabulary>.', 'Bacaan untuk 言 adalah bacaan yang belum Anda pelajari, jadi inilah mnemonik yang dapat membantu Anda:

Sekarang bayangkan ada <vocabulary>kata</vocabulary> di seluruh <reading>mantel</reading> Anda (こと). Itu sepenuhnya tercakup dalam kata-kata. <vocabulary>bahasa</vocabulary> manakah kata-kata ini? Tentu saja kenapa bahasa Jepang! Pikirkan kata-kata Jepang mana yang ingin Anda tulis di mantel Anda.', 'Kata, Bahasa, Cara Berbicara')
    RETURNING id INTO v_7492_kata;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '僕', 'saya', 12, 174, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna!', 'Kata ini menggunakan bacaan yang sama seperti yang Anda pelajari dengan kanji. <vocabulary> Saya</vocabulary> pasti menyukainya dan saya yakin Anda juga menyukainya.', 'SAYA, Aku')
    RETURNING id INTO v_7498_saya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '地球', 'bumi', 12, 175, '<kanji>bumi</kanji> <kanji>bola</kanji>! Ini adalah tempat kita tinggal dan planet yang kita sebut rumah. Itulah <vocabulary>bumi</vocabulary>!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Bumi, Bola Dunia, Bumi')
    RETURNING id INTO v_7504_bumi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '会員', 'anggota', 12, 176, 'Jika Anda <kanji>bertemu</kanji> cukup banyak <kanji>anggota</kanji>, Anda sendiri akan menjadi <vocabulary>anggota</vocabulary>!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Anggota, Keanggotaan')
    RETURNING id INTO v_7580_anggota;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '船員', 'pelaut', 12, 177, 'Seorang <kanji>anggota</kanji> dari <kanji>perahu</kanji> disebut <vocabulary>sailor</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Pelaut, Pelaut, Pelaut, Awak')
    RETURNING id INTO v_7581_pelaut;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '都会', 'daerah-perkotaan', 12, 178, 'Saat <kanji>metropolis</kanji> <kanji>bertemu</kanji>, keduanya menjadi <vocabulary>daerah perkotaan</vocabulary>. Kata ini sering digunakan dalam arti <vocabulary>kota</vocabulary> dibandingkan dengan negara atau daerah pedesaan.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Daerah Perkotaan, Kota')
    RETURNING id INTO v_7582_daerah_perkotaan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '島', 'pulau', 12, 179, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan kanji yang Anda pelajari, artinya Anda tahu bacaannya!', 'Pulau')
    RETURNING id INTO v_7634_pulau;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '落ち', 'kesimpulan', 12, 180, 'Saat Anda sedang berbicara atau menulis makalah, bagian yang <kanji>ada</kanji> di akhir adalah <vocabulary>kesimpulan</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda sudah mempelajari bacaan ini jadi Anda harus bisa membacanya!', 'Kesimpulan, Hasil Akhir, Akhir, Garis Pukulan, Tergelincir, Kelalaian, Hasil')
    RETURNING id INTO v_7635_kesimpulan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '期間', 'periode', 12, 181, '<kanji>periode waktu</kanji> <kanji>interval</kanji> tetaplah <vocabulary>periode</vocabulary> atau <vocabulary>interval</vocabulary> waktu.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Periode, Ketentuan, Selang')
    RETURNING id INTO v_7691_periode;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '行動', 'tindakan', 12, 182, 'Saat Anda <kanji>pergi</kanji> untuk <kanji>bergerak</kanji> Anda sebenarnya melakukan <vocabulary>tindakan</vocabulary>. Kata ini juga bisa berarti <vocabulary>behavior</vocabulary>, karena tindakan Andalah yang membentuk perilaku Anda.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Tindakan, Perilaku')
    RETURNING id INTO v_7692_tindakan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '集まり', 'mengumpulkan', 12, 183, 'Ini adalah versi kata benda dari kanji <kanji>berkumpul</kanji>, jadi artinya <vocabulary>berkumpul</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda sudah mempelajari bacaan ini jadi Anda harus bisa membacanya!', 'Mengumpulkan, Pertemuan, Perakitan, Berpesta, Koleksi, Berkumpul')
    RETURNING id INTO v_7693_mengumpulkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '植える', 'untuk-menanam-sesuatu', 12, 184, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>menanam</kanji>, jadi versi kata kerjanya adalah <vocabulary>menanam sesuatu</vocabulary> atau <vocabulary>menumbuhkan sesuatu</vocabulary>.', 'Anda belum mempelajari bacaan ini untuk 植, jadi inilah mnemonik untuk membantu Anda:

Anda memutuskan <vocabulary>untuk menanam</vocabulary> pohon <reading>u</reading>ni (う) di halaman belakang rumah Anda. Benar sekali, Anda bisa menanam bulu babi dan mereka akan tumbuh seperti buah dari pohon yang sangat runcing. Bayangkan saja. Dan kemudian Anda bisa makan semua uni yang Anda inginkan!', 'Untuk Menanam Sesuatu, Untuk Menumbuhkan Sesuatu')
    RETURNING id INTO v_7748_untuk_menanam_sesuatu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '親分', 'bos', 12, 185, 'Siapa yang memainkan <kanji>orang tua</kanji> <kanji>bagian</kanji> bagi Anda? <vocabulary>Bos</vocabulary> Anda atau <vocabulary>leader</vocabulary> Anda!

親分 adalah kata informal dan kuno untuk seseorang yang memimpin kelompok erat, seperti geng atau perdagangan tradisional seperti pertukangan kayu dan perikanan.親分 ibarat sosok orang tua yang menjaga anggota lainnya.', 'Kata ini terdiri dari bacaan kun''yomi untuk 親 dan bacaan on''yomi untuk 分. Anda telah mempelajari keduanya sehingga Anda seharusnya sudah bisa membacanya!', 'Bos, Pemimpin')
    RETURNING id INTO v_7749_bos;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '顔文字', 'kaomoji', 12, 186, 'Ingat bagaimana Anda mengetahui bahwa 文字 dapat berarti "karakter?" Kita akan membuat <kanji>wajah</kanji> dari karakter tersebut dan Anda telah membuat <vocabulary>kaomoji</vocabulary>! ʅ(◔౪◔ ) ʃ', 'Kata ini terdiri dari bacaan kun''yomi untuk 顔 yang ditambahkan pada kata jukugo 文字 yang sudah kamu pelajari. Anda telah mempelajari bacaan ini sebelumnya, jadi membaca kata ini pasti menyenangkan dan mudah!', 'Kaomoji')
    RETURNING id INTO v_7750_kaomoji;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '部室', 'ruang-klub', 12, 187, '<kanji>klub</kanji> <kanji>ruang</kanji> adalah <vocabulary>ruang klub</vocabulary>!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Ruang klub')
    RETURNING id INTO v_8665_ruang_klub;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '大学院生', 'mahasiswa-pascasarjana', 12, 188, 'Ingat bagaimana Anda mengetahui bahwa 大学院 berarti "sekolah pascasarjana" dan 大学生 berarti "mahasiswa?" Kita hancurkan semuanya dan Anda akan mendapatkan <vocabulary>mahasiswa pascasarjana</vocabulary>!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Mahasiswa Pascasarjana, Mahasiswa Pascasarjana')
    RETURNING id INTO v_8668_mahasiswa_pascasarjana;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '港', 'pelabuhan', 12, 189, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Ini adalah kanji tunggal tanpa okurigana, jadi menggunakan bacaan kun''yomi. Anda belum mengetahui bacaan ini, jadi inilah mnemonik untuk membantu Anda:

Anda pergi ke <vocabulary>pelabuhan</vocabulary> dan mengucapkan kata sandi rahasia <reading>me natto</reading> (みなと) untuk membeli natto segar. Bayangkan udara asin menerpa wajah Anda saat Anda berbisik, "saya natto." Sekarang makan natto lezat itu di tepi air! Mmmm!', 'Pelabuhan, Pelabuhan')
    RETURNING id INTO v_8704_pelabuhan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '文化祭', 'festival-sekolah', 12, 190, 'Ingat bagaimana 文化 berarti "budaya?" Tambahkan <kanji>festival</kanji> ke dalamnya dan Anda akan mendapatkan <vocabulary>festival sekolah</vocabulary> di mana siswa menampilkan aktivitas budaya sekolah!

文化祭 secara harfiah berarti <kosa kata>festival budaya</vocabulary>, namun 文化 di sini berarti budaya sekolah — pameran dan produksi yang berkaitan dengan seni, sains, dan bahkan makanan. 文化祭 biasanya diadakan di sekolah menengah atas dan universitas, di mana siswanya memimpin dalam menjalankannya. Nantikan aktivitas yang menyenangkan, ruang kelas yang diubah menjadi kafe atau rumah hantu, dan banyak pertunjukan panggung!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda telah mempelajari semua bacaan ini, bagus untuk Anda!', 'Festival Sekolah, Festival Budaya')
    RETURNING id INTO v_8706_festival_sekolah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '湯', 'air-panas', 12, 191, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan kanji yang Anda pelajari, artinya Anda tahu bacaannya!', 'Air Panas')
    RETURNING id INTO v_8747_air_panas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '活動', 'aktivitas', 12, 192, '<kanji>hidup</kanji> <kanji>gerakan</kanji> yang Anda buat adalah <vocabulary>aktivitas</vocabulary> Anda.

活動 mencakup semua jenis aktivitas, termasuk aktivitas alam, aktivitas klub, aktivitas ekonomi, dan sebagainya!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Aktivitas')
    RETURNING id INTO v_8748_aktivitas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '着々', 'terus-menerus', 12, 193, 'Sesuatu yang Anda <kanji>pakai</kanji>, dan <kanji>pakai</kanji> lagi, adalah sesuatu yang <vocabulary>terus-menerus</vocabulary> Anda pakai. Anda sering melakukannya, itu dapat diandalkan. Selain itu, jika Anda memakai sesuatu sebanyak ini, pakaian tersebut juga akan cepat rusak.', 'Kata ini menggunakan pembacaan on''yomi dari kanji yang Anda pelajari sebanyak dua kali. Anda seharusnya bisa membaca ini sendiri.', 'Terus menerus')
    RETURNING id INTO v_8817_terus_menerus;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '苦しめる', 'untuk-menyakiti-seseorang', 12, 194, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. 

Kanji itu sendiri berarti <kanji>menderita</kanji>, dan kata kerjanya adalah saat Anda membuat orang lain menderita. Itu sebabnya <vocabulary>menyakiti seseorang</vocabulary>, <vocabulary>menyiksa</vocabulary>, atau <vocabulary>melecehkan</vocabulary>.

Anda perlu membedakan ini dari 苦しむ, yaitu tentang saat ANDA menderita. Anda ingat bahwa 苦しめる adalah tentang membuat orang lain menderita dengan mnemonik ini: Siapa yang membuat Anda menderita? <read>Dia membuatku</reading>de (しめ) aku menderita! Dia sangat jahat!', 'Sekarang, Anda telah mempelajari 苦しい dan 苦しむ. Kanji pada kata-kata ini semuanya menggunakan bacaan yang sama! Hore!', 'Untuk Menyakiti Seseorang, Untuk Menyiksa, Untuk Melecehkan')
    RETURNING id INTO v_8933_untuk_menyakiti_seseorang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '終える', 'untuk-menyelesaikan-sesuatu', 12, 195, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>selesai</kanji>, jadi versi kata kerjanya adalah <vocabulary>to finish Something</vocabulary> atau <vocabulary>to end Something</vocabulary>.

Ini adalah kata kerja transitif, artinya Anda menyelesaikan sesuatu, misalnya seharian bekerja!

Anda perlu membedakan ini dari 終わる, yaitu ketika sesuatu berakhir dengan sendirinya. 終える adalah tentang saat kamu mengakhiri sesuatu. Ingatlah seperti ini: Orang Kanada selalu mengakhiri kalimatnya dengan "eh" え, bukan? Begitulah cara Anda mengetahui bahwa mereka mengakhiri kalimatnya. Dengarkan saja "eh", ya?', 'Karena kata ini memiliki okurigana (hiragana yang melekat pada kanji), Anda tahu bahwa itu mungkin pembacaan kun''yomi, yang tidak Anda pelajari dengan kanji. Berikut ini mnemonik untuk membantu Anda:

Anda akhirnya menyelesaikan proyek sekolah Anda. <reading>"Oh, A!"</reading> (おえ) Anda berkata pada diri sendiri, seolah-olah Anda dapat menilai proyek Anda sendiri.', 'Untuk Menyelesaikan Sesuatu, Untuk Mengakhiri Sesuatu')
    RETURNING id INTO v_8946_untuk_menyelesaikan_sesuatu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '解答', 'pemecahan', 12, 196, 'Anda <kanji>memecahkan</kanji> suatu masalah dengan berupaya mencapai <kanji>jawaban</kanji>. Ini adalah tindakan <vocabulary>pemecahan</vocabulary>, yang pada akhirnya mengarah pada <vocabulary>jawaban</vocabulary> dan <vocabulary>solusi</vocabulary> akhir!

解答 secara khusus mengacu pada penyelesaian masalah dan memberikan jawaban dengan solusi yang benar, sering kali untuk konteks terstruktur seperti ujian atau soal matematika. Bisa juga merujuk pada jawaban atau solusi itu sendiri.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda mempelajari on''yomi untuk 答 dengan 回答, tapi inilah mnemoniknya jika Anda lupa:

Hadiah untuk <vocabulary>menyelesaikan</vocabulary> masalah ini dengan benar adalah… Perjalanan gratis ke <reading>とう</reading>きょう! Benar sekali, jika Anda bisa menemukan <vocabulary>solusi</vocabulary> yang tepat untuk masalah ini, Anda dan orang yang Anda kasihi akan mendapatkan perjalanan ke とうきょう yang semua biayanya ditanggung. Cukup keren, ya?', 'Pemecahan, Menjawab, Larutan')
    RETURNING id INTO v_9038_pemecahan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '水泳', 'renang', 12, 197, 'Saat Anda melakukan <kanji>air</kanji> <kanji>berenang</kanji>, Anda sebenarnya hanya… yah, <vocabulary>berenang</vocabulary>.

Perhatikan bahwa 水泳 biasanya merujuk pada berenang sebagai olahraga atau aktivitas terorganisir. Ketika berbicara tentang berenang sebagai tindakan umum, 泳ぎ dan 泳ぐ lebih umum digunakan.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda telah mempelajari bacaan ini untuk 水, namun tidak untuk 泳, jadi inilah mnemonik untuk membantu Anda:

Satu-satunya cara Anda bisa <vocabulary>berenang</vocabulary> adalah dengan mengejar <reading>a</reading>jagung (えい). Jika seseorang tidak menggantungkan biji ek pada tongkat tepat di depan wajah Anda, Anda tidak akan pernah termotivasi untuk berenang. Untung kamu jadi biji ek.', 'Renang, Berenang')
    RETURNING id INTO v_9293_renang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '大西洋', 'samudra-atlantik', 12, 198, 'Sebuah <kanji>besar</kanji> <kanji>barat</kanji> <kanji>lautan</kanji>, katamu? Itu pasti <vocabulary>Samudera Atlantik</vocabulary>.

Jika dipikir-pikir dari sudut pandang Jepang, Atlantik adalah lautan besar yang terjauh di sebelah barat, bukan?', 'Ini adalah kata jukugo yang menggunakan pembacaan on''yomi untuk ketiga kanjinya. Anda pernah melihat bacaan ini sebelumnya, namun bacaan 西 (せい) masih cukup baru, jadi inilah penyegaran mnemonik untuk berjaga-jaga:

Saat berenang di <vocabulary>Samudra Atlantik</vocabulary>, Anda menemukan <reading>sa</reading>ber (せい). Astaga, bagaimana pedang tua berkarat ini bisa sampai di sini? Benda ini pasti melayang melintasi Samudera Atlantik dari medan perang tepi laut dahulu kala. Pedang-pedang tua itu selalu terdampar di pantai Atlantik, lho.', 'Samudra Atlantik')
    RETURNING id INTO v_9358_samudra_atlantik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '農村', 'desa-pertanian', 12, 199, '<kanji>pertanian</kanji> <kanji>desa</kanji> adalah <vocabulary>desa pertanian</vocabulary>. Tidak ada mnemonik yang mewah dan bergaya kota di sini.

農村 mengacu pada <kosakata>komunitas pedesaan</vocabulary> yang mana pertanian adalah cara hidup utama. Meski tidak hanya berarti pedesaan, Anda akan sering melihatnya digunakan sebagai kontras dengan hal lain, seperti 都市と農村 (daerah perkotaan dan pedesaan).', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Anda tidak mempelajari on''yomi 村 dengan kanji, jadi inilah mnemonik untuk membantu Anda mengingatnya:

<vocabulary>desa pertanian</vocabulary> Anda sangat kecil sehingga hanya ada Anda dan <reading>anak</reading> Anda (そん). Anda memiliki lahan pertanian di satu sisi desa, dan putra Anda memiliki lahan pertanian sendiri di sisi lain. Bersama-sama, Anda dan putra Anda membentuk <vocabulary>komunitas pedesaan</vocabulary> yang erat dan terdiri dari dua orang.', 'Desa Pertanian, Komunitas Pedesaan')
    RETURNING id INTO v_9508_desa_pertanian;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2721_seumur_hidup, 'Seumur hidup', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2721_seumur_hidup, 'Sekali Seumur Hidup', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2721_seumur_hidup, 'Generasi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2721_seumur_hidup, 'Satu Generasi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2779_barat_laut, 'Barat laut', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2905_pergi_langsung, 'Pergi Langsung', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2905_pergi_langsung, 'Nonstop', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2905_pergi_langsung, 'Langsung', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3098_untuk_memulai, 'Untuk Memulai', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3098_untuk_memulai, 'Sesuatu Dimulai', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3098_untuk_memulai, 'Untuk Memulai', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3098_untuk_memulai, 'Sesuatu Dimulai', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3128_untuk_menunggu, 'Untuk Menunggu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3244_teman_baik, 'Teman baik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3244_teman_baik, 'Sobat-Sobat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3295_makanan_gaya_barat, 'Makanan Gaya Barat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3295_makanan_gaya_barat, 'Makanan Barat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3320_studi, 'Studi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3320_studi, 'Belajar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3321_keluarga, 'Keluarga', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3321_keluarga, 'Rumah tangga', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3321_keluarga, 'Rumah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3322_kebun, 'Kebun', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3322_kebun, 'Halaman', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3323_napas, 'Napas', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3324_putra, 'Putra', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3325_minat, 'Minat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3326_perjalanan, 'Perjalanan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3326_perjalanan, 'Bepergian', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3327_perjalanan, 'Perjalanan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3327_perjalanan, 'Bepergian', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3328_akar, 'Akar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3329_akar, 'Akar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3329_akar, 'Dasar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3329_akar, 'Dasar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3330_atap, 'Atap', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3331_kesabaran, 'Kesabaran', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3331_kesabaran, 'Kegigihan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3331_kesabaran, 'Kegigihan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3332_daikon, 'Daikon', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3332_daikon, 'Lobak Jepang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3333_untuk_membilas_sesuatu, 'Untuk Membilas Sesuatu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3333_untuk_membilas_sesuatu, 'Untuk Menuangkan Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3333_untuk_membilas_sesuatu, 'Untuk Menetapkan Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3334_kecenderungan, 'Kecenderungan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3334_kecenderungan, 'Mode', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3334_kecenderungan, 'Menggila', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3334_kecenderungan, 'Prevalensi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3335_tingkat_pertama, 'Tingkat Pertama', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3335_tingkat_pertama, 'Kelas satu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3335_tingkat_pertama, 'Kedudukan tertinggi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3335_tingkat_pertama, 'Kelas Atas', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3336_arus_utama, 'Arus utama', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3337_untuk_memadamkan_sesuatu, 'Untuk Memadamkan Sesuatu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3337_untuk_memadamkan_sesuatu, 'Untuk Menghapus Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3337_untuk_memadamkan_sesuatu, 'Untuk Mematikan Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3338_kali, 'Kali', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3338_kali, 'Melipat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3339_dobel, 'Dobel', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3339_dobel, 'Dua Kali', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3339_dobel, 'Dua kali', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3339_dobel, 'Dua kali lipat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3340_staf_toko, 'Staf Toko', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3340_staf_toko, 'Staf Toko', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3340_staf_toko, 'Karyawan Toko', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3340_staf_toko, 'Karyawan Toko', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3340_staf_toko, 'Staf', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3340_staf_toko, 'Asisten Toko', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3341_semua_anggota, 'Semua Anggota', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3341_semua_anggota, 'Semua Tangan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3341_semua_anggota, 'Setiap orang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3341_semua_anggota, 'Semua orang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3342_karyawan, 'Karyawan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3342_karyawan, 'Staf', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3342_karyawan, 'Karyawan Perusahaan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3342_karyawan, 'Staf Perusahaan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3343_karyawan_perusahaan, 'Karyawan Perusahaan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3343_karyawan_perusahaan, 'Pekerja Kantor', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3344_hiroshima, 'Hiroshima', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3346_menulis, 'Menulis', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3346_menulis, 'Kalimat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3346_menulis, 'Komposisi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3347_bab_dua, 'Bab Dua', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3347_bab_dua, 'Bab Kedua', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3348_yang_pertama, 'Yang Pertama', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3348_yang_pertama, 'Pertama', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3348_yang_pertama, 'Nomor Satu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3348_yang_pertama, 'Terbaik', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3349_tempat_pertama, 'Tempat Pertama', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3349_tempat_pertama, 'Peringkat Pertama', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3350_kota_metropolitan_tokyo, 'Kota metropolitan Tokyo', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3351_kyoto, 'Kyoto', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3351_kyoto, 'Kyoto', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3352_untuk_bergerak, 'Untuk Bergerak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3352_untuk_bergerak, 'Untuk Berfungsi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3353_hewan, 'Hewan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3354_latihan, 'Latihan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3354_latihan, 'Olahraga', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3354_latihan, 'Pergerakan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3354_latihan, 'Gerakan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3355_bisnis, 'Bisnis', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3355_bisnis, 'Perdagangan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3355_bisnis, 'Berdagang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3356_pedagang, 'Pedagang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3356_pedagang, 'Pedagang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3356_pedagang, 'Pemilik toko', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3356_pedagang, 'Pedagang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3357_buruk, 'Buruk', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3357_buruk, 'Miskin', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3357_buruk, 'Salah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3358_orang_jahat, 'Orang jahat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3358_orang_jahat, 'Penjahat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3358_orang_jahat, 'Penjahat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3358_orang_jahat, 'Orang jahat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3358_orang_jahat, 'Orang Jahat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3358_orang_jahat, 'Orang Jahat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3359_wanita_jahat, 'Wanita Jahat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3359_wanita_jahat, 'Wanita Jahat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3359_wanita_jahat, 'Wanita Jahat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3360_paling_buruk, 'Paling buruk', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3360_paling_buruk, 'Terburuk', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3361_keluarga, 'Keluarga', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3361_keluarga, 'Keluarga Dekat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3362_kelompok_etnis, 'Kelompok Etnis', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3362_kelompok_etnis, 'Etnis', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3362_kelompok_etnis, 'Balapan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3364_dalam, 'Dalam', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3365_tengah_malam, 'Tengah Malam', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3365_tengah_malam, 'Larut Malam', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3366_kedalaman_air, 'Kedalaman Air', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3366_kedalaman_air, 'Kedalaman Air', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3367_terdalam, 'Terdalam', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3367_terdalam, 'Yang Terdalam', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3368_bola, 'Bola', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3368_bola, 'Bola', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3368_bola, 'Bola Olahraga', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3369_baseball, 'Baseball', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3370_cerita_anak_anak, 'Cerita Anak-Anak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3370_cerita_anak_anak, 'Dongeng', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3372_lantai_pertama, 'Lantai Pertama', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3372_lantai_pertama, 'Lantai Satu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3372_lantai_pertama, 'Lantai Dasar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3372_lantai_pertama, 'Cerita Pertama', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3373_lantai_dua, 'Lantai Dua', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3373_lantai_dua, 'Lantai Dua', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3373_lantai_dua, 'Cerita Kedua', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3374_lantai_empat_puluh_dua, 'Lantai Empat Puluh Dua', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3374_lantai_empat_puluh_dua, 'Lantai Empat Puluh Dua', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3374_lantai_empat_puluh_dua, 'Cerita Empat Puluh Dua', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3375_dingin, 'Dingin', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3377_cuaca_panas, 'Cuaca Panas', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3377_cuaca_panas, 'Panas', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3378_ekspektasi, 'Ekspektasi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3378_ekspektasi, 'Antisipasi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3379_masa_sekolah, 'Masa Sekolah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3379_masa_sekolah, 'Semester', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3380_waktu, 'Waktu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3380_waktu, 'Musim', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3380_waktu, 'Periode', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3381_tanaman, 'Tanaman', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3381_tanaman, 'Vegetasi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3382_dokter_gigi, 'Dokter gigi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3383_rongga, 'Rongga', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3383_rongga, 'Gigi Membusuk', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3383_rongga, 'Kerusakan gigi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3384_gigi, 'Gigi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3384_gigi, 'Gigi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3385_hangat, 'Hangat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3386_sumber_air_panas, 'Sumber Air Panas', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3386_sumber_air_panas, 'Sumber air panas', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3387_suhu, 'Suhu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3388_bandara, 'Bandara', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3389_upacara_minum_teh, 'Upacara Minum Teh', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3390_uap, 'Uap', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3390_uap, 'Menguap', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3391_untuk_mendaki, 'Untuk Mendaki', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3391_untuk_mendaki, 'Untuk Naik', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3392_pendakian_gunung, 'Pendakian Gunung', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3393_untuk_dipakai, 'Untuk Dipakai', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3393_untuk_dipakai, 'Untuk Memakai', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3398_pendek, 'Pendek', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3398_pendek, 'Singkat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3399_pedang_pendek, 'Pedang Pendek', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3399_pedang_pendek, 'Belati', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3399_pedang_pendek, 'Tanto', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3400_periode_singkat, 'Periode Singkat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3400_periode_singkat, 'Jangka pendek', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3401_musim_semi, 'Musim semi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3401_musim_semi, 'Air mancur', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3424_sesuai, 'Sesuai', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3424_sesuai, 'Untuk Datang Bersama', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3424_sesuai, 'Untuk Bertemu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3424_sesuai, 'Untuk Mencocokkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3492_untuk_diputuskan, 'Untuk Diputuskan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3492_untuk_diputuskan, 'Untuk Diselesaikan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3516_kedai_bir, 'Kedai bir', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3516_kedai_bir, 'Pemabuk', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3517_tangisan_hewan, 'Tangisan Hewan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3517_tangisan_hewan, 'Suara Binatang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3517_tangisan_hewan, 'Kebisingan Hewan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3517_tangisan_hewan, 'Kicauan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3517_tangisan_hewan, 'Menciak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3517_tangisan_hewan, 'Mengaum', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3517_tangisan_hewan, 'Kulit pohon', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3517_tangisan_hewan, 'mengeong', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3518_minuman, 'Minuman', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3518_minuman, 'Minum', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3519_agar_dapat_didengar, 'Agar Dapat Didengar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3519_agar_dapat_didengar, 'Agar Terdengar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3519_agar_dapat_didengar, 'Untuk Mampu Mendengar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3520_kekuatiran, 'Kekuatiran', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3520_kekuatiran, 'Kekhawatiran', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3520_kekuatiran, 'Masalah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3521_bacaan_cina, 'Bacaan Cina', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3521_bacaan_cina, 'On''yomi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3549_pengemudi, 'Pengemudi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3550_daun_jatuh, 'Daun Jatuh', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3550_daun_jatuh, 'Daun Jatuh', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3551_ayah, 'Ayah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3551_ayah, 'Ayah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3552_ibu, 'Ibu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3552_ibu, 'Mama', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3553_hal_ketiga, 'Hal Ketiga', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3553_hal_ketiga, 'Yang Ketiga', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3553_hal_ketiga, 'Hal Ketiga', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3555_cara_berbicara, 'Cara Berbicara', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3555_cara_berbicara, 'Gaya Berbicara', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3556_jatuh, 'Jatuh', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3556_jatuh, 'Jatuh', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3557_untuk_datang_bersama, 'Untuk Datang Bersama', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3557_untuk_datang_bersama, 'Untuk Berkumpul', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3557_untuk_datang_bersama, 'Untuk Dikumpulkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3558_untuk_menjatuhkan_sesuatu, 'Untuk Menjatuhkan Sesuatu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3558_untuk_menjatuhkan_sesuatu, 'Membiarkan Sesuatu Jatuh', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3558_untuk_menjatuhkan_sesuatu, 'Kehilangan Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3559_akhir, 'Akhir', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3559_akhir, 'Akhir', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3559_akhir, 'Selesai', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3559_akhir, 'Menyelesaikan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3560_kereta_terakhir, 'Kereta Terakhir', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3560_kereta_terakhir, 'Kereta Terakhir', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3561_untuk_membuka, 'Untuk Membuka', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3561_untuk_membuka, 'Menjadi Terbuka', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3562_terjadi, 'Terjadi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3562_terjadi, 'Terjadi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3562_terjadi, 'Akan Terjadi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3563_khawatir, 'Khawatir', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3563_khawatir, 'Menjadi Peduli', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3563_khawatir, 'Menjadi Cemas', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3565_untuk_bersuara, 'Untuk menelepon', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3565_untuk_bersuara, 'Untuk Bersuara', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3566_bernyanyi, 'Bernyanyi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3567_sesuai_keinginan_seseorang, 'Sesuai keinginan seseorang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3567_sesuai_keinginan_seseorang, 'Kenyamanan Sendiri', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3567_sesuai_keinginan_seseorang, 'Jalannya Sendiri', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3567_sesuai_keinginan_seseorang, 'Satu Jalan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3582_untuk_ditularkan, 'Untuk Ditularkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3582_untuk_ditularkan, 'Untuk Disampaikan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3582_untuk_ditularkan, 'Untuk Diturunkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3649_kenyamanan_seseorang, 'Kenyamanan Seseorang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3649_kenyamanan_seseorang, 'Keadaan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3906_untuk_memproyeksikan, 'Untuk Memproyeksikan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3906_untuk_memproyeksikan, 'Untuk Merefleksikan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3925_untuk_menuntut_sesuatu, 'Untuk Menuntut Sesuatu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3926_pencernaan, 'Pencernaan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3950_keberuntungan, 'Keberuntungan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4073_untuk_keluar, 'Untuk Keluar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4073_untuk_keluar, 'Untuk Dihapus', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4073_untuk_keluar, 'Jatuh', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4847_suhu, 'Suhu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4847_suhu, 'Suhu udara', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5896_dia, 'Dia', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5898_mereka, 'Mereka', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5898_mereka, 'Mereka', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5898_mereka, 'Orang-orang itu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6654_seseorang, 'Seseorang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6900_kelelahan, 'Kelelahan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6900_kelelahan, 'Kelelahan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7452_lantai, 'Lantai', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7452_lantai, 'Cerita', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7452_lantai, 'Tingkat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7457_kota, 'Kota', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7457_kota, 'Kotamadya', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7492_kata, 'Kata', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7492_kata, 'Bahasa', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7492_kata, 'Cara Berbicara', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7498_saya, 'SAYA', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7498_saya, 'Aku', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7504_bumi, 'Bumi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7504_bumi, 'Bola Dunia', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7504_bumi, 'Bumi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7580_anggota, 'Anggota', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7580_anggota, 'Keanggotaan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7581_pelaut, 'Pelaut', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7581_pelaut, 'Pelaut', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7581_pelaut, 'Pelaut', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7581_pelaut, 'Awak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7582_daerah_perkotaan, 'Daerah Perkotaan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7582_daerah_perkotaan, 'Kota', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7634_pulau, 'Pulau', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7635_kesimpulan, 'Kesimpulan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7635_kesimpulan, 'Hasil Akhir', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7635_kesimpulan, 'Akhir', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7635_kesimpulan, 'Garis Pukulan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7635_kesimpulan, 'Tergelincir', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7635_kesimpulan, 'Kelalaian', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7635_kesimpulan, 'Hasil', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7691_periode, 'Periode', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7691_periode, 'Ketentuan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7691_periode, 'Selang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7692_tindakan, 'Tindakan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7692_tindakan, 'Perilaku', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7693_mengumpulkan, 'Mengumpulkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7693_mengumpulkan, 'Pertemuan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7693_mengumpulkan, 'Perakitan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7693_mengumpulkan, 'Berpesta', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7693_mengumpulkan, 'Koleksi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7693_mengumpulkan, 'Berkumpul', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7748_untuk_menanam_sesuatu, 'Untuk Menanam Sesuatu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7748_untuk_menanam_sesuatu, 'Untuk Menumbuhkan Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7749_bos, 'Bos', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7749_bos, 'Pemimpin', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7750_kaomoji, 'Kaomoji', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8665_ruang_klub, 'Ruang klub', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8668_mahasiswa_pascasarjana, 'Mahasiswa Pascasarjana', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8668_mahasiswa_pascasarjana, 'Mahasiswa Pascasarjana', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8704_pelabuhan, 'Pelabuhan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8704_pelabuhan, 'Pelabuhan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8706_festival_sekolah, 'Festival Sekolah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8706_festival_sekolah, 'Festival Budaya', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8747_air_panas, 'Air Panas', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8748_aktivitas, 'Aktivitas', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8817_terus_menerus, 'Terus menerus', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8933_untuk_menyakiti_seseorang, 'Untuk Menyakiti Seseorang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8933_untuk_menyakiti_seseorang, 'Untuk Menyiksa', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8933_untuk_menyakiti_seseorang, 'Untuk Melecehkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8946_untuk_menyelesaikan_sesuatu, 'Untuk Menyelesaikan Sesuatu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8946_untuk_menyelesaikan_sesuatu, 'Untuk Mengakhiri Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9038_pemecahan, 'Pemecahan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9038_pemecahan, 'Menjawab', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9038_pemecahan, 'Larutan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9293_renang, 'Renang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9293_renang, 'Berenang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9358_samudra_atlantik, 'Samudra Atlantik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9508_desa_pertanian, 'Desa Pertanian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9508_desa_pertanian, 'Komunitas Pedesaan', false, true);

  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2721_seumur_hidup, 'いちだい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2779_barat_laut, 'ほくせい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2905_pergi_langsung, 'ちょっこう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3098_untuk_memulai, 'はじまる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3128_untuk_menunggu, 'まつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3244_teman_baik, 'なかよし', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3295_makanan_gaya_barat, 'ようしょく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3320_studi, 'べんきょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3321_keluarga, 'かてい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3322_kebun, 'にわ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3323_napas, 'いき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3324_putra, 'むすこ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3325_minat, 'りそく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3326_perjalanan, 'たび', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3327_perjalanan, 'りょこう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3328_akar, 'ね', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3329_akar, 'こんぽん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3330_atap, 'やね', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3331_kesabaran, 'こんき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3332_daikon, 'だいこん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3333_untuk_membilas_sesuatu, 'ながす', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3334_kecenderungan, 'りゅうこう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3334_kecenderungan, 'はやり', NULL, false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3335_tingkat_pertama, 'いちりゅう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3336_arus_utama, 'ほんりゅう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3337_untuk_memadamkan_sesuatu, 'けす', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3338_kali, 'ばい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3339_dobel, 'にばい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3340_staf_toko, 'てんいん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3341_semua_anggota, 'ぜんいん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3342_karyawan, 'しゃいん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3343_karyawan_perusahaan, 'かいしゃいん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3344_hiroshima, 'ひろしま', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3346_menulis, 'ぶんしょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3347_bab_dua, 'だいにしょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3348_yang_pertama, 'だいいち', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3349_tempat_pertama, 'だいいちい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3350_kota_metropolitan_tokyo, 'とうきょうと', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3351_kyoto, 'きょうと', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3352_untuk_bergerak, 'うごく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3353_hewan, 'どうぶつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3354_latihan, 'うんどう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3355_bisnis, 'しょうばい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3356_pedagang, 'しょうにん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3357_buruk, 'わるい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3358_orang_jahat, 'あくにん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3359_wanita_jahat, 'あくじょ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3360_paling_buruk, 'さいあく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3361_keluarga, 'かぞく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3362_kelompok_etnis, 'みんぞく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3364_dalam, 'ふかい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3365_tengah_malam, 'しんや', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3366_kedalaman_air, 'すいしん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3367_terdalam, 'さいしん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3368_bola, 'たま', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3369_baseball, 'やきゅう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3370_cerita_anak_anak, 'どうわ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3372_lantai_pertama, 'いっかい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3373_lantai_dua, 'にかい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3374_lantai_empat_puluh_dua, 'よんじゅうにかい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3375_dingin, 'さむい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3377_cuaca_panas, 'あつい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3378_ekspektasi, 'きたい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3379_masa_sekolah, 'がっき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3380_waktu, 'じき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3381_tanaman, 'しょくぶつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3382_dokter_gigi, 'はいしゃ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3383_rongga, 'むしば', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3384_gigi, 'は', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3385_hangat, 'あたたかい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3385_hangat, 'あったかい', NULL, false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3386_sumber_air_panas, 'おんせん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3387_suhu, 'おんど', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3388_bandara, 'くうこう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3389_upacara_minum_teh, 'ちゃのゆ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3390_uap, 'ゆげ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3391_untuk_mendaki, 'のぼる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3392_pendakian_gunung, 'とざん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3393_untuk_dipakai, 'きる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3398_pendek, 'みじかい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3399_pedang_pendek, 'たんとう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3400_periode_singkat, 'たんき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3401_musim_semi, 'いずみ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3424_sesuai, 'あう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3492_untuk_diputuskan, 'きまる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3516_kedai_bir, 'さけのみ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3517_tangisan_hewan, 'なきごえ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3518_minuman, 'のみもの', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3519_agar_dapat_didengar, 'きこえる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3520_kekuatiran, 'しんぱいごと', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3521_bacaan_cina, 'おんよみ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3549_pengemudi, 'うんてんしゅ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3550_daun_jatuh, 'おちば', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3551_ayah, 'ちちおや', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3552_ibu, 'ははおや', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3553_hal_ketiga, 'さんばんめ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3555_cara_berbicara, 'はなしかた', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3556_jatuh, 'ころぶ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3557_untuk_datang_bersama, 'あつまる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3558_untuk_menjatuhkan_sesuatu, 'おとす', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3559_akhir, 'おわり', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3560_kereta_terakhir, 'しゅうでん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3561_untuk_membuka, 'あく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3562_terjadi, 'おこる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3563_khawatir, 'しんぱいする', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3565_untuk_bersuara, 'なる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3566_bernyanyi, 'うたう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3567_sesuai_keinginan_seseorang, 'かって', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3582_untuk_ditularkan, 'つたわる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3649_kenyamanan_seseorang, 'つごう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3906_untuk_memproyeksikan, 'うつす', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3925_untuk_menuntut_sesuatu, 'ようきゅうする', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3926_pencernaan, 'しょうか', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3950_keberuntungan, 'うん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4073_untuk_keluar, 'とれる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4847_suhu, 'きおん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5896_dia, 'かれ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5898_mereka, 'かれら', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6654_seseorang, 'だれか', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6900_kelelahan, 'ひろう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7452_lantai, 'かい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7457_kota, 'とし', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7492_kata, 'ことば', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7498_saya, 'ぼく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7504_bumi, 'ちきゅう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7580_anggota, 'かいいん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7581_pelaut, 'せんいん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7582_daerah_perkotaan, 'とかい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7634_pulau, 'しま', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7635_kesimpulan, 'おち', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7691_periode, 'きかん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7692_tindakan, 'こうどう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7693_mengumpulkan, 'あつまり', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7748_untuk_menanam_sesuatu, 'うえる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7749_bos, 'おやぶん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7750_kaomoji, 'かおもじ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8665_ruang_klub, 'ぶしつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8668_mahasiswa_pascasarjana, 'だいがくいんせい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8704_pelabuhan, 'みなと', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8706_festival_sekolah, 'ぶんかさい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8747_air_panas, 'ゆ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8748_aktivitas, 'かつどう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8817_terus_menerus, 'ちゃくちゃく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8933_untuk_menyakiti_seseorang, 'くるしめる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8946_untuk_menyelesaikan_sesuatu, 'おえる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9038_pemecahan, 'かいとう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9293_renang, 'すいえい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9358_samudra_atlantik, 'たいせいよう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9508_desa_pertanian, 'のうそん', NULL, true, true);

  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2721_seumur_hidup, 'あのイタリアンレストランは一代でクローズしてしまった。', 'Setelah satu generasi, restoran Italia itu tutup.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2721_seumur_hidup, 'オーナーは一代でこのホテルを日本一のホテルにしました。', 'Pemiliknya telah menjadikan hotel ini sebagai hotel terbaik di Jepang dalam satu generasi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2721_seumur_hidup, '父は一代で小さいコンビニエンスストアを大きなデパートにしたんです。', 'Dalam satu generasi, ayah saya mengubah toko kecil menjadi toko serba ada yang besar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2779_barat_laut, '北西に見える山が、ふじ山です。', 'Gunung yang bisa Anda lihat di barat laut adalah Gunung Fuji.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2779_barat_laut, 'ポートランドの北西に、シーサイドという町があります。', 'Ada sebuah kota bernama Seaside di barat laut Portland.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2779_barat_laut, '北西の角にスーパーが一つあります。', 'Ada supermarket di sudut barat laut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2905_pergi_langsung, '入り口に直行して下さい。', 'Silakan langsung menuju pintu masuk.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2905_pergi_langsung, 'これは、ニューヨーク直行のフライトですよ。', 'Ini adalah penerbangan langsung ke New York.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2905_pergi_langsung, '後でトイレに直行した。', 'Saya langsung pergi ke toilet setelahnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3098_untuk_memulai, '夏休みはいつから始まりますか？', 'Kapan liburan musim panas akan dimulai?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3098_untuk_memulai, '走って！コンサートが始まっちゃうよ！', 'Berlari! Konser dimulai!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3098_untuk_memulai, '三時になると、おやつの時間が始まる。', 'Waktu snack dimulai pukul tiga.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3128_untuk_menunggu, 'お母さんが家で私を待っています。', 'Ibuku sedang menungguku di rumah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3128_untuk_menunggu, '空港で待ってますね。', 'Aku akan menunggu di bandara.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3128_untuk_menunggu, 'ちょっと待って！財布を家に忘れたかも。', 'Tunggu! Saya mungkin lupa dompet saya di rumah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3244_teman_baik, 'あの二人、仲良しなふりをしているだけで、本当は仲が悪いと思うよ。', 'Menurutku mereka hanya berpura-pura menjadi teman dekat dan sebenarnya mereka tidak saling menyukai.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3244_teman_baik, '先日、日本に住んでいる仲良しの友人から、メールが来ました。', 'Suatu hari, saya menerima email dari seorang teman dekat yang tinggal di Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3244_teman_baik, 'あの子たち、ホントに仲良しだよね！', 'Anak-anak itu adalah teman yang sangat baik, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3295_makanan_gaya_barat, '洋食レストランでナポリタンスパゲティを食べました。', 'Saya makan Spaghetti Neapolitan di restoran makanan Barat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3295_makanan_gaya_barat, 'いわゆる昔ながらの洋食屋さんで、バイトをしています。', 'Saya bekerja paruh waktu di sebuah restoran keluarga Barat yang kuno.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3295_makanan_gaya_barat, 'ええっ！あそこのレストランで洋食ランチセットを食べたの？ははは。どおりでまだ夕食を食べたくないわけだね。', 'Oh, apakah kamu sudah makan set makan siang ala Barat di restoran itu? Ha ha ha. Pantas saja Anda belum mau makan malam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3320_studi, '私は毎日日本語の勉強をします。', 'Saya belajar bahasa Jepang setiap hari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3320_studi, 'ありがとうございます！勉強になります。', 'Terima kasih banyak. Saya telah belajar banyak dari Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3320_studi, '英語の勉強、頑張って下さいね。私も日本語をずっと勉強しているので苦労はよくわかります。', 'Pertahankan studi bahasa Inggris Anda. Saya juga selalu melatih bahasa Jepang saya, jadi saya tahu betapa sulitnya itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3321_keluarga, 'いつかは温かい家庭を作れたらな、と思ってます。', 'Saya harap saya bisa memulai sebuah keluarga yang hangat suatu hari nanti.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3321_keluarga, '家庭のゴミは、ここに出しておいてください。', 'Harap tinggalkan sampah rumah tangga di sini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3321_keluarga, '家庭それぞれに事情があると思うので、それ以上は聞きませんでしたよ。', 'Saya tidak bertanya lebih jauh, karena menurut saya setiap keluarga memiliki situasinya masing-masing.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3322_kebun, '色んなハーブが庭に生えています。', 'Ada berbagai macam tumbuhan yang tumbuh di kebun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3322_kebun, '庭の草むしりで一日が終わってしまった。', 'Seharian telah berlalu, meski yang kulakukan hanyalah menyiangi kebun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3322_kebun, 'うちには美しい庭があるんだが、隣の人の鶏がいつも花を食べてしまうんだ。', 'Saya mempunyai taman yang indah tetapi ayam tetangga saya terus memakan bunga saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3323_napas, 'あんたの息、死ぬほどくさいよ。', 'Napasmu sangat bau sehingga aku bisa mati.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3323_napas, 'びっくりしすぎて、息が止まるかと思ったよ。', 'Kamu membuatku kehabisan nafas!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3323_napas, 'そんなに走り回ったら息が切れるよ！', 'Jika Anda berlari sebanyak itu, Anda akan kehabisan napas!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3324_putra, '息子は元気です。', 'Anakku baik-baik saja.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3324_putra, 'この辺のアパートに私のひとり息子が住んでいます。', 'Putraku satu-satunya tinggal di apartemen sekitar sini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3324_putra, '週に二回は息子と一緒に公園で遊びます。', 'Saya bermain dengan anak saya di taman setidaknya dua kali seminggu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3325_minat, 'すぐに利息が大きくなってしまった。', 'Minatnya tumbuh segera setelahnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3325_minat, '今の仕事じゃ利息を返せないよ。', 'Saya tidak dapat membayar kembali bunganya dengan pekerjaan saya saat ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3325_minat, 'あいにく今、その質問に答えられる者がいないのですが、もしインターネットにアクセス可能なら利息のレートはそちらでもご確認頂けますよ。', 'Saya khawatir tidak ada seorang pun di sini yang dapat menjawab pertanyaan Anda saat ini, tetapi Anda juga dapat memeriksa tingkat suku bunga Anda secara online, jika Anda dapat terhubung ke Internet.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3326_perjalanan, '私は旅が大好きです。	', 'Saya suka bepergian.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3326_perjalanan, '旅先で美しい宝石を見つけました。', 'Saya menemukan permata yang indah di perjalanan saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3326_perjalanan, '旅先で美味しいおやつを試しました。', 'Saya mencoba beberapa makanan ringan lezat di perjalanan saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3327_perjalanan, 'いつ日本へ旅行に行くんですか？', 'Kapan kamu pergi ke Jepang?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3327_perjalanan, '来月、家族旅行で東南アジアに行きます。', 'Bulan depan, saya akan pergi ke Asia Tenggara dalam perjalanan keluarga.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3327_perjalanan, '私の旅行の話を聞きたいのは分かるんだけど、それより、まずは私がいない間どうしてたのか教えてよ。', 'Saya tahu Anda ingin bertanya tentang perjalanan saya, tetapi pertama-tama, bagaimana kabar Anda selama saya pergi?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3328_akar, 'この花の根は食べられますよ。', 'Anda bisa memakan akar bunga ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3328_akar, '木の根が地下に入ってきてしまった。', 'Akar pohon menembus ruang bawah tanah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3328_akar, '彼は素敵な人だと思うかもしれないが、根がひどい男なのだ。', 'Anda mungkin berpikir dia orang yang hebat, tetapi sebenarnya dia adalah pria yang buruk hatinya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3329_akar, '私も父も根本の考え方は同じです。', 'Ayah saya dan saya pada dasarnya memiliki cara berpikir yang sama.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3329_akar, '英語を根本からもう一度学びなおしたいです。', 'Saya ingin belajar kembali bahasa Inggris dari awal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3329_akar, 'この問題の根本の原因はどこにあると思いますか？', 'Menurut Anda apa penyebab mendasar dari masalah ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3330_atap, '屋根の上にたくさんの鳥が止まっています。', 'Ada banyak burung di atap.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3330_atap, '屋根も食べ物もある生活ができて、うれしいです。', 'Saya senang memiliki kehidupan dengan atap dan makanan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3330_atap, '屋根の上から雪が落ちるかもしれないので気を付けて下さいね。', 'Harap berhati-hati karena salju bisa turun dari atap.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3331_kesabaran, 'これは根気のいる仕事だよな。', 'Pekerjaan ini memerlukan kesabaran ya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3331_kesabaran, 'この物語はかなり長いので読み終えるには根気が必要です。', 'Cerita ini cukup panjang, jadi perlu kesabaran untuk menyelesaikannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3331_kesabaran, '根気よく日本語の勉強を続けていれば、いつかはペラペラになれるさ。', 'Teruslah belajar bahasa Jepang dan Anda akan fasih suatu hari nanti.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3332_daikon, '大根は和食によく使われます。', 'Daikon sering digunakan dalam masakan Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3332_daikon, '大根のピクルスを買ってきた。', 'Saya membeli acar daikon.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3332_daikon, '大根は煮物にすると魚や卵との相性が良いですよ。', 'Jika Anda memasak nimono dengan daikon, maka akan cocok dengan ikan atau telur.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3333_untuk_membilas_sesuatu, 'トイレは使ったら水を流しましょう。', 'Siram toilet setelah menggunakannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3333_untuk_membilas_sesuatu, 'そうめんを竹に流して食べるのが「流しそうめん」です。', '"Nagashi somen" adalah saat Anda menuangkan mie somen melalui tabung bambu dan memakannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3333_untuk_membilas_sesuatu, '毎日汗を流して働く労働者たちに感謝の気持ちもないのか？', 'Apakah Anda bahkan tidak berterima kasih kepada para pekerja yang berkeringat dan bekerja setiap hari?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3334_kecenderungan, 'ショッピングモールでは流行の服を売っています。', 'Pusat perbelanjaan menjual pakaian trendi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3334_kecenderungan, 'マレットは流行のヘアスタイルの一つです。', 'Mullet adalah salah satu gaya rambut trendi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3334_kecenderungan, 'この冬、お年寄りの間にインフルエンザが流行しているらしい。', 'Rupanya influenza banyak terjadi di kalangan lansia tahun ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3335_tingkat_pertama, 'さすが、一流のピアニストは違うね。', 'Itu adalah sesuatu yang hanya bisa dilakukan oleh pianis kelas satu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3335_tingkat_pertama, '父は一流のピアニストで、たくさんのファンがいます。', 'Ayah saya adalah seorang pianis kelas satu dan memiliki banyak penggemar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3335_tingkat_pertama, '一流だろうが二流だろうが関係ない。私はあなたの作品を愛しているんです。', 'Tidak masalah apakah itu kelas satu atau kelas dua. Saya suka pekerjaan Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3336_arus_utama, 'アマゾン川の本流は水が茶色いそうですよ。', 'Ternyata, aliran utama Sungai Amazon berwarna coklat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3336_arus_utama, '私にとっては本流のスタイルと同じように見えます。', 'Sepertinya gaya yang sama dengan arus utama bagi saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3336_arus_utama, '日本文学の本流と言って、最初に思い浮かぶのは誰ですか。', 'Ketika Anda mengatakan sastra Jepang arus utama, siapa penulis pertama yang terlintas dalam pikiran Anda?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3337_untuk_memadamkan_sesuatu, 'このイラストを消す予定です。', 'Saya berencana untuk menghapus ilustrasi ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3337_untuk_memadamkan_sesuatu, '間違えてデータを全部消しちゃったんだよ。', 'Saya tidak sengaja menghapus semua data.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3337_untuk_memadamkan_sesuatu, '教室を出た後は電気を消すのを忘れないで下さい。', 'Setelah keluar kelas, jangan lupa mematikan lampu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3338_kali, '年末までに売り上げを去年の五倍にしたいんです。', 'Saya ingin meningkatkan penjualan lima kali lipat sebelum akhir tahun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3338_kali, 'このお金、最低でも七倍にして返してよね。', 'Hasilkan setidaknya tujuh kali lebih banyak sebelum Anda mengembalikan uang ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3338_kali, '回転寿司の普及に伴い、日本におけるサーモンの消費量は輸入開始から三倍となった。', 'Sejak diperkenalkannya dan penyebaran toko sushi conveyor belt, konsumsi salmon di Jepang meningkat tiga kali lipat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3339_dobel, 'いつもの二倍の大きさのカップでコーヒーを飲みました。', 'Saya minum kopi dalam cangkir yang dua kali lebih besar dari cangkir biasanya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3339_dobel, 'テレビのボリュームを二倍にしてくれませんか？', 'Bisakah Anda menggandakan volume di TV?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3339_dobel, 'うわ！君のお兄さんって、君の二倍の体重があるんだね！', 'Wow! Kakakmu beratnya dua kali lipat beratmu, ya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3340_staf_toko, 'レジに店員がいない。', 'Tidak ada staf di kasir.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3340_staf_toko, '店員さんにメニューについて聞いてみよう。', 'Mari kita bertanya kepada staf tentang menunya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3340_staf_toko, 'あの店員さん、とってもお茶目だったね。', 'Pegawai toko itu benar-benar anak kecil, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3341_semua_anggota, 'バンドメンバーの全員が男です。', 'Semua anggota band adalah laki-laki.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3341_semua_anggota, 'トーフグの社員は、全員がベーコンソムリエのテストを受けることになりました。', 'Mereka memutuskan bahwa setiap karyawan Tofugu akan mengikuti ujian bacon sommelier.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3341_semua_anggota, 'うちは家族全員で一緒に食事します。', 'Kami makan bersama sebagai satu keluarga.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3342_karyawan, '先日、新しい社員が入社しました。', 'Suatu hari, seorang karyawan baru bergabung dengan perusahaan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3342_karyawan, '社員たちは毎朝、九時には出社します。', 'Karyawan akan berada di kantor pada pukul sembilan setiap pagi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3342_karyawan, 'この会社の社員は、全員奇抜で素晴らしい。', 'Karyawan di perusahaan ini semuanya aneh dan luar biasa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3343_karyawan_perusahaan, '父は会社員です。', 'Ayah saya adalah seorang karyawan perusahaan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3343_karyawan_perusahaan, 'わたしたちはみんな、会社員である前に、一人の人間なんですよ。', 'Kita adalah manusia sebelum kita menjadi karyawan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3343_karyawan_perusahaan, '彼は会社員になってからよくジムに行くようになった。', 'Dia mulai sering pergi ke gym setelah menjadi pekerja kantoran.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3344_hiroshima, '広島はカキで有名です。', 'Hiroshima terkenal dengan tiramnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3344_hiroshima, '広島空港から市バスで市内に向かってるところです。', 'Saya menuju kota dari bandara Hiroshima dengan bus kota.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3344_hiroshima, '広島と長崎に投下された原爆は、一瞬で十万人以上の人々の命を奪った。', 'Bom atom yang dijatuhkan di Hiroshima dan Nagasaki menewaskan lebih dari 100.000 orang dalam sekejap.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3346_menulis, '弟には文章を読むエクササイズが必要です。', 'Adik laki-laki saya membutuhkan latihan untuk pemahaman bacaan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3346_menulis, 'コウイチは文章が本当に上手だ。', 'Koichi adalah penulis yang baik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3346_menulis, 'あの人の文章って少し気取っていると思うんだよね。', 'Gaya penulisan orang itu terasa agak sombong bagiku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3347_bab_dua, '第一章はおもしろかったけど、第二章はいまいちだった。', 'Bab satu bagus, tapi bab kedua oke.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3347_bab_dua, 'もうすぐ人生の第二章が始まります。', 'Babak kedua dalam hidupku akan segera dimulai.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3347_bab_dua, 'まじで？君もその本読んでるの？俺、昨日ちょうど第二章読み終わったところなんだけど。もしそれより先に進んでるなら、何も言わないでね。', 'Mustahil! Apakah kamu juga membaca buku itu? Saya baru saja menyelesaikan bab dua. Jangan beri tahu aku apa pun jika kamu lebih jauh dariku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3348_yang_pertama, '自分の安全を第一に考えて下さい。', 'Tolong pikirkan keselamatan Anda terlebih dahulu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3348_yang_pertama, '休みたい第一の理由は時間が足りないからです。', 'Alasan nomor satu saya ingin istirahat adalah karena saya tidak punya cukup waktu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3348_yang_pertama, 'お互いの第一印象はどうでしたか？', 'Apa kesan pertama Anda satu sama lain?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3349_tempat_pertama, 'この作品は作文コンクールで第一位でした。', 'Karya ini mendapat juara pertama dalam lomba menulis.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3349_tempat_pertama, 'もしその試合に勝ったら、彼は世界ランキング第一位になります。', 'Jika dia memenangkan pertandingan itu, dia akan menjadi peringkat pertama dunia.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3349_tempat_pertama, '今までずっと社内で売り上げ第一位だったのに、新人にその座を取られそうです。', 'Meskipun kami sampai saat ini menduduki posisi pertama dalam penjualan di perusahaan tersebut, kemungkinan besar akan ada pendatang baru yang akan mengambil posisi kami.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3350_kota_metropolitan_tokyo, '東京都は日本の都市です。', 'Tokyo adalah sebuah kota di Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3350_kota_metropolitan_tokyo, '東京都に住みたがる人は多いですよ。', 'Ada banyak orang yang ingin tinggal di prefektur Tokyo.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3350_kota_metropolitan_tokyo, '東京都の３０代会社員、山田さん（仮名）は、インタビューでこう語りました。', 'Taro Yamada (nama samaran), yang berusia 30-an dan seorang pegawai kantoran di Tokyo Metropolis, menceritakan hal ini kepada kami dalam wawancara.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3351_kyoto, '京都は日本の名所です。', 'Kyoto adalah tempat terkenal di Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3351_kyoto, '四月に京都で花見を楽しむ予定だ。', 'Saya berencana untuk menikmati pemandangan bunga sakura di Kyoto pada bulan April.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3351_kyoto, '京都では有名なお寺を見物した後、湯葉を食べる予定です。', 'Kami berencana makan yuba setelah melihat beberapa kuil terkenal di Kyoto.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3352_untuk_bergerak, 'あそこで何か動いたよ。', 'Sesuatu berpindah ke sana.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3352_untuk_bergerak, 'トーフグのサーバーは二十四時間動いているので、いつでもアクセスできますよ。', 'Server Tofugu beroperasi dua puluh empat jam sehari, sehingga selalu dapat diakses.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3352_untuk_bergerak, 'くそ〜。パソコンが動かなくなっちゃったぜ。どうしてこうなったんだろう？！', 'Menembak! Komputer saya tidak berfungsi. Bagaimana ini bisa terjadi?!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3353_hewan, '動物は苦手なんです。', 'Saya tidak suka binatang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3353_hewan, 'この辺に大きな動物は住んでいますか？', 'Apakah ada hewan besar yang tinggal di sekitar sini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3353_hewan, '動物園では野生動物も近くで見ることができます。', 'Di kebun binatang, Anda dapat melihat binatang liar dari dekat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3354_latihan, '本当はもっと運動したいけど、時間がないんだよね。', 'Sebenarnya saya ingin lebih banyak berolahraga, tetapi saya tidak punya waktu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3354_latihan, '最近、運動不足なんですよ。', 'Saya tidak cukup berolahraga hari ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3354_latihan, '運動した後のビールは最高です。', 'Bir setelah berolahraga adalah yang terbaik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3355_bisnis, '田中さんは商売で大きく成功しました。', 'Tuan Tanaka berhasil dalam bisnisnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3355_bisnis, '最近はあのコンビニのせいで、商売あがったりだね。', 'Bisnis telah mengering baru-baru ini karena toko serba ada itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3355_bisnis, '学校卒業後に商売を始めたんですが、すぐに商売をすることは簡単ではないことを学びました。', 'Setelah lulus sekolah, saya terjun ke dunia bisnis, namun saya segera menyadari bahwa menjalankan bisnis bukanlah tugas yang mudah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3356_pedagang, 'ここは昔、商人の家でした。', 'Ini adalah rumah seorang saudagar dahulu kala.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3356_pedagang, '町には商人がたくさんいます。', 'Ada banyak pedagang di kota.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3356_pedagang, '彼は商人の家に生まれた。', 'Ia dilahirkan dalam keluarga pedagang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3356_pedagang, 'その男の話し方には、どこか商人のようなしたたかさがあった。', 'Ada ketangguhan seperti pedagang dalam cara pria itu berbicara.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3357_buruk, 'あそこのレストラン、味は良いけどサービスが悪いよな。', 'Restoran di sana memiliki makanan enak, tetapi layanannya buruk.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3357_buruk, '悪い夢でも見てるのかと思った。', 'Saya pikir saya sedang mengalami mimpi buruk.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3357_buruk, '牛乳は悪くなっていたけど、俺は気にしなかった。', 'Susunya jadi busuk, tapi aku tidak peduli.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3358_orang_jahat, 'あいつは悪人だが、花が大好きなガーデニングのプロなんだ。', 'Dia orang jahat, tapi dia seorang profesional berkebun yang menyukai bunga.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3358_orang_jahat, 'この世界に生まれつきの悪人なんていないよ。', 'Tidak ada seorang pun di dunia ini yang terlahir sebagai orang yang kejam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3358_orang_jahat, 'お前、本当に善人と悪人を区別することが可能だと思っているのか？', 'Apakah menurut Anda kita bisa membedakan antara orang baik dan orang jahat?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3359_wanita_jahat, 'あの悪女、耳だけはいいんだよな。', 'Wanita jalang itu memang punya telinga yang bagus!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3359_wanita_jahat, 'かの女は悪女だが、いつも時間はきっちり守る。', 'Dia wanita yang jahat, tapi selalu tepat waktu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3359_wanita_jahat, 'その悪女は息をのむほど美しかった。僕は彼女に夢中だった。', 'Wanita jahat itu membuat saya terengah-engah. Aku tergila-gila padanya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3360_paling_buruk, '今日は最悪な一日だったよ。', 'Hari ini adalah hari terburuk yang pernah ada.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3360_paling_buruk, '最悪、明日だけでも会社を休みたいんですが。', 'Jika yang terburuk menjadi yang terburuk,​ saya setidaknya ingin mengambil cuti kerja besok.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3360_paling_buruk, '「自動車のタイヤ、パンクしちゃったんだ。」「げっ、最悪じゃん。」
', '"Ban mobilku kempes." "Ugh, itu yang terburuk."');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3361_keluarga, '家族で朝ごはんを食べるなんて、何年ぶりだろう？', 'Berapa lama terakhir kali kita sarapan bersama keluarga?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3361_keluarga, '今日は家族と公園に行く予定です。', 'Aku berencana pergi ke taman bersama keluargaku hari ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3361_keluarga, 'ハワイに家族旅行に行くのが日本の金持ちの正月の過ごし方です。', 'Melakukan perjalanan keluarga ke Hawaii adalah cara keluarga kaya Jepang menghabiskan Tahun Baru mereka.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3362_kelompok_etnis, 'シンガポールには様々な民族が住んでいます。', 'Berbagai kelompok etnis tinggal di Singapura.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3362_kelompok_etnis, 'アイヌ民族の文化について学びたいです。', 'Saya ingin belajar tentang budaya masyarakat Ainu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3362_kelompok_etnis, 'インドには色々な民族がいるので、文化や言語もさまざまです。', 'Karena India memiliki banyak kelompok etnis yang berbeda, India juga memiliki beragam budaya dan bahasa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3364_dalam, 'サングラスが深い池に落ちてしまった。', 'Kacamata hitam itu jatuh ke dalam kolam yang dalam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3364_dalam, 'そんなに深いため息ついて、どうしたの？', 'Saya mendengar Anda menghela nafas panjang, apa yang terjadi?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3364_dalam, '魚たちが、親や兄弟、高校時代の友人たちとの深い繋がりを保っていることが多いって、本当ですか？', 'Benarkah ikan cenderung menjaga hubungan mendalam dengan orang tua, saudara kandung, dan teman sekolahnya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3365_tengah_malam, 'こんな深夜に、どうしたの？', 'Ada apa sampai larut malam begini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3365_tengah_malam, 'ここは深夜にお酒と音楽を楽しめるバーです。', 'Ini adalah bar tempat Anda dapat menikmati musik dan alkohol hingga larut malam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3365_tengah_malam, '深夜に電話できる友人は何人くらいいますか？', 'Berapa banyak teman yang Anda miliki yang dapat Anda hubungi bahkan di tengah malam?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3366_kedalaman_air, 'ここは水深100フィートです。', 'Kedalamannya seratus kaki di sini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3366_kedalaman_air, 'この川の水深は十メートルです。', 'Kedalaman sungai ini sepuluh meter.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3366_kedalaman_air, '水深が浅いプールで泳ぐのが好きです。', 'Saya suka berenang di kolam yang dangkal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3367_terdalam, '水深は最深で３００mもある。', 'Kedalaman air adalah 300 meter pada titik terdalamnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3367_terdalam, 'ここら辺が最深のエリアです。', 'Di sekitar sini adalah area terdalam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3367_terdalam, 'ソグネフィヨルドは、世界最長・最深のフィヨルドです。', 'Sognefjord adalah fjord terpanjang dan terdalam di dunia.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3368_bola, 'ああっ！球がバンカーに入っちゃったよ。', 'Sial! Saya memukul bola ke dalam bunker.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3368_bola, 'ねぇ、新しい野球の球を買ったんだけど、一緒にキャッチボールしない？', 'Hei, aku membeli bola baru untuk baseball. Apakah kamu ingin bermain-main denganku?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3368_bola, '球の体積を求める公式って何だっけ？', 'Apa rumus volume bola?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3369_baseball, 'これから、プロ野球のゲームを見に行くところなんです。', 'Saya sedang dalam perjalanan untuk menonton pertandingan bisbol profesional sekarang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3369_baseball, '野球で投手をしたことはないんです。', 'Saya belum pernah menjadi pelempar bola bisbol.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3369_baseball, '今週末に会社の人たちと草野球の試合をする予定です。', 'Saya berencana untuk memainkan pertandingan bisbol sandlot akhir pekan ini dengan beberapa orang dari perusahaan saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3370_cerita_anak_anak, 'この童話は小さい子たちに人気があります。', 'Dongeng ini populer di kalangan anak kecil.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3370_cerita_anak_anak, 'まるで童話の世界に入ってしまった気分です。', 'Aku merasa seperti berada di dunia dongeng.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3370_cerita_anak_anak, 'ハッピーエンディングの童話が多いですが、私が書いている童話は少しダークな物語です。', 'Banyak cerita anak-anak yang berakhir bahagia, tapi yang saya tulis agak kelam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3372_lantai_pertama, '一階にはお店がたくさんあります。', 'Ada banyak toko di lantai pertama.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3372_lantai_pertama, 'このフロアのクリーニングが終わったら、一階に来てくれる？', 'Setelah membersihkan lantai ini, maukah kamu naik ke lantai pertama?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3372_lantai_pertama, 'トイレは一階の出口の横にあります。', 'Kamar mandinya terletak di sebelah pintu keluar di lantai satu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3373_lantai_dua, '二階に住む人が大声で何かを言ってるのが聞こえます。', 'Anda dapat mendengar orang-orang di lantai dua mengatakan sesuatu dengan keras.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3373_lantai_dua, '歯医者さんなら、このビルの二階にあります。', 'Jika Anda mencari dokter gigi, letaknya di lantai dua gedung ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3373_lantai_dua, '二階はベッドルームで、あとは全部一階にあります。', 'Lantai dua terdapat kamar tidur, dan selebihnya berada di lantai satu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3374_lantai_empat_puluh_dua, '四十二階まで競争よ！', 'Ayo berlomba ke lantai empat puluh dua!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3374_lantai_empat_puluh_dua, '四十二階まで行くのはエレベーターでも時間がかかります。', 'Pergi ke lantai empat puluh dua dengan lift membutuhkan waktu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3374_lantai_empat_puluh_dua, '引っ越しって、色々事務手続きがあって結構面倒くさい上に、対応の悪い担当者とかもいたりするよね。でも、今回の引っ越しで最悪だったのは、引っ越しの日にエレベーターが故障中だったことだよ。俺の部屋、四十二階なのに。', 'Sangat menjengkelkan bahwa ada banyak birokrasi yang terlibat dalam perpindahan tersebut, dan yang lebih buruk lagi, terkadang orang yang bertanggung jawab memiliki masalah sikap. Namun, bagian terburuk dari kepindahanku kali ini adalah liftnya tidak berfungsi ketika aku pindah dan apartemenku berada di lantai empat puluh dua.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3375_dingin, '今日はとても寒いです。', 'Hari ini sangat dingin.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3375_dingin, 'この寒い中、一時間もバスを待たなきゃならなかったんだよ。', 'Saya harus menunggu satu jam dalam cuaca dingin ini untuk mendapatkan bus.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3375_dingin, '僕がハワイに行くのは、寒さから逃れるためだけではなく家族に会うためでもあります。', 'Saya pergi ke Hawaii bukan hanya untuk menghindari kedinginan, tetapi juga untuk bertemu keluarga saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3377_cuaca_panas, '今日はとても暑いですね。', 'Hari ini sangat panas, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3377_cuaca_panas, '日本では、このところ暑い日がつづいています。', 'Akhir-akhir ini cuaca di Jepang panas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3377_cuaca_panas, '日本の夏は暑すぎるから、七月と八月はカナダに行くよ。', 'Musim panas di Jepang terlalu panas, jadi saya pergi ke Kanada dari bulan Juli hingga Agustus.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3378_ekspektasi, 'あの大学院生には、もっと期待してたのに。', 'Saya mengharapkan lebih banyak dari mahasiswa pascasarjana.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3378_ekspektasi, 'この前わざわざ日本から送ってもらったカップラーメンは期待外れでした。', 'Cup ramen yang saya terima dari Jepang beberapa hari yang lalu mengecewakan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3378_ekspektasi, 'ウォール・ストリートは常にトップレベルの人材を求めていますが、コウイチならきっとそこでも期待に応えられると思います。', 'Wall Street selalu membutuhkan talenta tingkat atas dan saya yakin Koichi akan mampu memenuhi harapan tersebut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3379_masa_sekolah, '学期が終わると、夏休みが始まります。', 'Setelah semester berakhir, liburan musim panas akan dimulai.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3379_masa_sekolah, '来週から新しい学期だ。', 'Ini semester baru mulai minggu depan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3379_masa_sekolah, '学期末試験は三月なので、まだまだ勉強する時間はたっぷりあります。', 'Ujian akhir diadakan pada bulan Maret jadi masih banyak waktu untuk mempersiapkannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3380_waktu, 'やっと今年もスノーボードとスキーの時期が来ましたね。', 'Akhirnya, musim seluncur salju dan ski tahun ini telah tiba.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3380_waktu, 'もうすぐ台風の時期ですね。', 'Sebentar lagi akan terjadi topan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3380_waktu, '海外に行ったばかりなら、カルチャーショックを受ける時期じゃない？', 'Jika Anda baru saja pergi ke luar negeri, bukankah ini saat yang tepat untuk merasakan kejutan budaya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3381_tanaman, 'この森には色々な植物が生えてますね。', 'Ada berbagai macam tanaman yang tumbuh di hutan ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3381_tanaman, '私は動物よりも植物の方が好きなんです。', 'Saya lebih menyukai tumbuhan daripada hewan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3381_tanaman, 'この植物は水をたくさん必要とします。', 'Tanaman ini memerlukan banyak air.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3382_dokter_gigi, '半年に一度は歯医者に行った方がいい。', 'Sebaiknya kunjungi dokter gigi minimal enam bulan sekali.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3382_dokter_gigi, '今日は二時から歯医者です。', 'Saya ada janji dengan dokter gigi pada jam dua hari ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3382_dokter_gigi, '大きくなったら歯医者になりたい。', 'Saya ingin menjadi dokter gigi ketika saya besar nanti.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3383_rongga, 'あっ、虫歯が三本もありますよ。', 'Oh, kamu punya tiga gigi jelek.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3383_rongga, 'また虫歯になっちゃったの？', 'Apakah kamu mengalami gigi berlubang lagi?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3383_rongga, '虫歯は予防が大切です。', 'Pencegahan adalah kunci kerusakan gigi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3384_gigi, '赤ちゃんに歯が生えてきました。', 'Gigi bayi sedang tumbuh');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3384_gigi, 'タバコのせいで私の父の歯は黄色くなってしまった。', 'Gigi ayah saya menguning karena merokok.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3384_gigi, '電動歯ブラシを買うことを考えているんだが、どれも値段が高いんだよね。', 'Saya sedang berpikir untuk membeli salah satu sikat gigi elektrik itu, tapi harganya sangat mahal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3385_hangat, '母の手はいつも温かい。', 'Tangan ibuku selalu hangat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3385_hangat, '温かいお茶が飲みたいなぁ。', 'Saya ingin minum teh hangat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3385_hangat, '初心者なので、どうか温かい目で見守ってください。', 'Saya seorang pemula, jadi tolong santai saja.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3386_sumber_air_panas, 'この温泉は、タトゥーのある人も入れますよ。', 'Onsen ini juga terbuka untuk orang yang bertato.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3386_sumber_air_panas, '今週末、友人と温泉旅行に行きます。', 'Saya akan melakukan perjalanan pemandian air panas bersama teman-teman saya akhir pekan ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3386_sumber_air_panas, '私の父も母も温泉が好きじゃありません。', 'Baik ayah maupun ibuku tidak menyukai pemandian air panas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3387_suhu, 'この水の温度は何度ですか。', 'Berapa suhu airnya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3387_suhu, 'エアコンの温度を二十四度まで上げてもらえませんか？', 'Bisakah Anda menaikkan suhu AC hingga 24℃?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3387_suhu, '父と母の温度差が激しい。', 'Ada kesenjangan antusiasme yang sangat besar antara ayah dan ibu saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3388_bandara, '母は空港まで来てくれました。', 'Ibuku datang ke bandara untukku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3388_bandara, '今日は空港までフランス人の友人を見送りに行きました。', 'Hari ini, saya pergi ke bandara untuk mengantar teman-teman Prancis saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3388_bandara, '空港で借りた車の中に、パスポートを忘れた気がする。', 'Saya pikir saya meninggalkan paspor saya di mobil yang saya sewa di bandara.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3389_upacara_minum_teh, '茶の湯は日本の文化の大切な一部です。', 'Upacara minum teh adalah bagian penting dari budaya Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3389_upacara_minum_teh, '茶の湯の道具が買えるお店をさがしています。', 'Saya mencari toko di mana saya bisa membeli peralatan untuk upacara minum teh.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3389_upacara_minum_teh, '茶の湯の世界には、「一つ一つの出会いを大切に」という意味の「一期一会」という言葉があります。この言葉は、映画「フォレスト・ガンプ」の副タイトルとしても使われました。', 'Dalam dunia upacara minum teh ada pepatah, "Ichi-go ichi-e," yang berarti "menghargai setiap pertemuan". Pepatah ini juga digunakan sebagai subtitle untuk Forrest Gump yang dirilis di Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3390_uap, 'ケトルから湯気が出てるよ。', 'Uap keluar dari ketel.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3390_uap, '湯気に気を付けてね。', 'Hati-hati dengan uapnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3390_uap, '美味しい寿司飯を作るには、しゃもじを使って、湯気が立つ炊きたての熱いごはんに酢を混ぜる必要があります。', 'Untuk membuat nasi sushi yang enak, dengan menggunakan dayung, Anda harus mencampurkan cuka ke dalam nasi panas yang baru dimasak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3391_untuk_mendaki, '木の上に登るのは楽しいです。', 'Menyenangkan sekali memanjat pohon.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3391_untuk_mendaki, '山を登るときは、ジーパンをはかないで下さいね。', 'Jangan memakai jeans saat mendaki gunung.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3391_untuk_mendaki, '一生の内、少なくとも一度は富士山に登ることが夢なんです。', 'Impian saya adalah mendaki Gunung Fuji setidaknya sekali seumur hidup.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3392_pendakian_gunung, '登山は楽しいです。', 'Mendaki gunung itu menyenangkan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3392_pendakian_gunung, '登山の楽しみは山で食べるおにぎりです。', 'Bagian favorit saya dari mendaki gunung adalah makan nasi kepal di gunung.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3392_pendakian_gunung, '「登山に行くってのはどう？」「さあ、どうしようかなあ。」', '"Bagaimana kalau kita mendaki gunung?" "Yah, aku tidak tahu tentang itu."');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3393_untuk_dipakai, '今日はコートを着た方がいいかも。', 'Mungkin sebaiknya aku memakai mantel hari ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3393_untuk_dipakai, '服を着ないで家を出そうになったことある？', 'Pernahkah Anda hampir keluar rumah tanpa berpakaian?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3393_untuk_dipakai, '制服を着ると気持ちまで引き締まります。', 'Saat saya mengenakan seragam, saya merasa segar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3398_pendek, 'そのスカート、ちょっと短すぎるんじゃない？', 'Bukankah rok itu terlalu pendek?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3398_pendek, '赤ちゃんが短い手足をバタバタさせてるのは本当にかわいい。', 'Lengan dan kaki bayi yang pendek dan menggapai-gapai sungguh lucu!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3398_pendek, 'わぁ！あんたの尻尾が私より短いなんて、知らなかったわ。', 'Wah! Aku tidak tahu ekormu lebih pendek dari ekorku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3399_pedang_pendek, 'その短刀、どこで買ったの？', 'Tantonya beli dimana?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3399_pedang_pendek, '兄は短刀を持っています。', 'Adikku punya pedang pendek.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3399_pedang_pendek, '短刀は武器にもなりえるので注意して所持して下さいね。', 'Belati juga bisa menjadi senjata, jadi harap membawanya dengan hati-hati.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3400_periode_singkat, '短期の実験が終わりました。', 'Eksperimen jangka pendek telah berakhir.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3400_periode_singkat, '短期でひらがなとカタカナをマスターにするにはどうしたらいいですか？', 'Apa yang harus saya lakukan agar bisa menguasai hiragana dan katakana dalam waktu singkat?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3400_periode_singkat, '春休みは短期のアルバイトをしようかな。', 'Mungkin aku harus melakukan pekerjaan paruh waktu jangka pendek selama liburan musim semi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3401_musim_semi, 'これは泉の水です。', 'Ini adalah mata air.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3401_musim_semi, 'この町には小さな泉があります。', 'Ada mata air kecil di kota ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3401_musim_semi, '山の中を歩いていると、小さなきれいな泉を見つけた。', 'Saya sedang berjalan di pegunungan ketika saya menemukan mata air kecil yang indah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3424_sesuai, '牛肉には赤ワインが合います。', 'Anggur merah cocok dengan daging sapi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3424_sesuai, 'この電話番号で合ってますか？', 'Apakah ini nomor telepon yang benar?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3424_sesuai, 'アメリカのインド料理は、アメリカ人の口に合うよう、実際のインドでの調理方法とはかなり違った方法で作られている。', 'Masakan India di Amerika sedikit diubah dari cara penyajiannya di India agar sesuai dengan selera Amerika.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3492_untuk_diputuskan, 'ねえママ、今日は何を食べるか決まるのはいつ？', 'Hai bu, kapan kita akan memutuskan apa yang akan kita makan hari ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3492_untuk_diputuskan, 'いつが入学の日か決まりました？', 'Apakah hari pendaftarannya sudah ditentukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3492_untuk_diputuskan, 'ルームメイトの数が多すぎて、中々家のルールが決まらない。', 'Ada terlalu banyak teman sekamar dan peraturan rumah belum diputuskan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3516_kedai_bir, '私の父親も酒飲みなんですよ。', 'Ayah saya juga seorang pemabuk.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3516_kedai_bir, 'コウイチはお酒は好きだけど、酒飲みってほどじゃあないですよ。', 'Koichi suka minum, tapi dia tidak seperti pecandu alkohol.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3516_kedai_bir, '彼は大酒飲みだが、赤ワインが苦手だ。', 'Dia peminum berat tapi dia tidak suka anggur merah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3517_tangisan_hewan, 'キリンの鳴き声を聞いたことがありますか。', 'Pernahkah Anda mendengar suara jerapah?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3517_tangisan_hewan, '朝、鳥の鳴き声で起きた。', 'Aku terbangun karena suara kicauan burung di pagi hari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3517_tangisan_hewan, '自動販売機の下から子犬の鳴き声が聞こえるんです。', 'Saya mendengar anak anjing menggonggong di bawah mesin penjual otomatis.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3518_minuman, 'コウイチの飲んでいる飲み物は何ですか？', 'Minuman apa yang diminum Koichi?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3518_minuman, 'アイスクリームは飲み物ではありませんよ。', 'Es krim bukanlah minuman.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3518_minuman, '「何か冷たい飲み物はいかがですか？」「それでは、牛乳パックを二本頂けますか？」', '"Apakah kamu ingin minum sesuatu yang dingin?" "Kalau begitu, bolehkah aku minta dua karton susu?"');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3519_agar_dapat_didengar, '聞こえたんだったら、ちゃんと返事してよ！', 'Jika kamu bisa mendengarku, kamu seharusnya mengatakan sesuatu!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3519_agar_dapat_didengar, '海の音が聞こえますね。', 'Kita bisa mendengar suara laut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3519_agar_dapat_didengar, 'きつい言い方に聞こえることは分かってるんだけど、つまらない言い訳はしたくないの。', 'Aku mengerti kedengarannya kasar, tapi aku punya alasan yang tidak masuk akal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3520_kekuatiran, '心配事があるときは、友人や親に相談するのが一番です。', 'Jika Anda mempunyai kekhawatiran, sebaiknya konsultasikan dengan teman atau orang tua.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3520_kekuatiran, '今日の試験の心配事は、昨日の勉強不足です。', 'Kekhawatiran saya tentang ujian hari ini adalah saya kurang belajar kemarin.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3520_kekuatiran, '私の一番の心配事は、町に降り落ちる火山灰です。', 'Kekhawatiran terbesar saya adalah abu vulkanik berjatuhan di kota.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3521_bacaan_cina, 'この漢字の音読みって何だっけ？', 'Apa on''yomi untuk kanji ini lagi?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3521_bacaan_cina, '音読みは中国の漢字読み方がベースです。', 'Pembacaan on''yomi didasarkan pada cara membaca kanji di Tiongkok.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3521_bacaan_cina, '日本語の音読みと訓読みの違いは何ですか？', 'Apa perbedaan antara bacaan Cina dan bacaan Jepang dalam bahasa Jepang?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3549_pengemudi, 'あのタクシーの運転手、イケメンだね。', 'Sopir taksi itu adalah pria yang tampan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3549_pengemudi, '運転手付きのバスをレンタルしてるので安心して下さい。', 'Yakinlah, karena kami menyewa bus dengan sopir.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3549_pengemudi, '運転手は大丈夫だったみたいだけど、車は事故でめちゃくちゃになっていたよ。', 'Pengemudinya tampak baik-baik saja tetapi mobilnya hancur total dalam kecelakaan itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3550_daun_jatuh, '落ち葉を集めて火を起こそう。', 'Ayo kumpulkan daun-daun yang berguguran dan nyalakan api.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3550_daun_jatuh, 'このグリーティングカード、落ち葉で作ったんだよ。', 'Saya membuat kartu ucapan ini dari dedaunan yang berguguran.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3550_daun_jatuh, '落ち葉を踏んだ時の感触と音が大好きです。', 'Saya suka sensasi dan suaranya saat menginjak dedaunan yang berguguran.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3551_ayah, '父親はいつも私たちに助言をしてくれます。', 'Ayah kami selalu memberi kami nasihat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3551_ayah, 'この子の父親は、あなたです。', 'Ayah dari anak ini adalah kamu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3551_ayah, 'うちの家族はみんな父親のことが大好きです。', 'Semua orang di keluargaku mencintai ayahku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3552_ibu, 'うちの母親はいつも元気です。', 'Ibuku selalu penuh energi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3552_ibu, 'この牛の母親は、とっくに売られてしまったんです。', 'Induk sapi ini sudah lama dijual.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3552_ibu, '母親になってみて、人生はどう変わりましたか？', 'Bagaimana kehidupan Anda berubah setelah Anda menjadi seorang ibu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3553_hal_ketiga, 'この曲、ビートルズの中で三番目くらいにすき。', 'Ini mungkin lagu Beatles favorit ketiga saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3553_hal_ketiga, '母と父の間に三番目に生まれたのが弟です。', 'Anak ketiga yang dimiliki ayah dan ibu saya adalah adik laki-laki saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3553_hal_ketiga, '日本の有人島の多さは、インドネシア、フィリピンに次いで、世界で三番目だってこと、知ってた？', 'Tahukah Anda kalau Jepang merupakan negara dengan jumlah pulau berpenghuni terbanyak ketiga di dunia setelah Indonesia dan Filipina?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3555_cara_berbicara, '話し方が本当にイライラするのよね。', 'Cara dia berbicara membuatku sangat kesal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3555_cara_berbicara, 'まるで日本人みたいな話し方ですね。', 'Anda berbicara seperti orang Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3555_cara_berbicara, '説得力のある話し方を学びたいです。', 'Saya ingin belajar cara berbicara persuasif.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3556_jatuh, '小さい男の子が転んでしまいました。', 'Seorang anak kecil terjatuh.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3556_jatuh, '雪のせいで道で転んでしまいそうでした。', 'Saya hampir jatuh di jalan karena salju.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3556_jatuh, 'コウイチ、今日は転んでも泣かなかったね。', 'Koichi tidak menangis saat dia terjatuh hari ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3557_untuk_datang_bersama, '九州への旅行で全社員が集まる予定です。', 'Rencananya seluruh karyawan akan berkumpul untuk berwisata ke Kyushu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3557_untuk_datang_bersama, 'クラウドファンディングで、こんなにたくさんのお金が集まりました。', 'Banyak uang yang dikumpulkan melalui crowdfunding.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3557_untuk_datang_bersama, '見て！あそこにヤンキーたちがたくさん集まってるよ。', 'Lihat! Sekelompok penjahat berkumpul di sana!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3558_untuk_menjatuhkan_sesuatu, 'あの、ハンカチ落としましたよ。', 'Oh, kamu menjatuhkan saputanganmu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3558_untuk_menjatuhkan_sesuatu, 'そんな信用を落とすようなことは今すぐ止めた方がいいよ。', 'Anda harus segera berhenti melakukan hal-hal yang akan membuat orang lain kehilangan kepercayaan terhadap Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3558_untuk_menjatuhkan_sesuatu, '今日、『男を落とす方法』っていう本を買ったんだけど、帰り道にどこかで落としちゃったみたいなんだよね。', 'Hari ini aku membeli buku berjudul ''Cara Membuat Pria Jatuh Cinta padamu'', tapi aku kehilangan buku itu di suatu tempat dalam perjalanan pulang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3559_akhir, 'これで終わりだ。', 'Inilah akhirnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3559_akhir, '「終わり良ければ全て良し」でしょ？', '"Semuanya baik-baik saja, itu berakhir dengan baik," bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3559_akhir, '今週で仕事も終わりで、来週からはクリスマス休暇だー！あー、待ちきれない。', 'Pekerjaan berakhir minggu ini dan liburan Natal dimulai minggu depan! Ah aku tidak sabar untuk itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3560_kereta_terakhir, '終電、何時だっけ？', 'Jam berapa kereta terakhir?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3560_kereta_terakhir, 'もうすぐJRの終電だから、行くね。', 'Saya akan berangkat karena kereta terakhir JR Line akan segera berangkat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3560_kereta_terakhir, '終電を逃してタクシーに乗ると、大体家まで五千円かかります。', 'Ketika saya ketinggalan kereta terakhir dan naik taksi, biaya pulangnya sekitar 5000 yen.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3561_untuk_membuka, 'このお店は何時に開きますか。', 'Jam berapa toko ini buka?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3561_untuk_membuka, '会場はまだ開かないから、とりあえずビールを買いに行こう。', 'Tempatnya belum dibuka, jadi ayo kita minum bir dulu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3561_untuk_membuka, 'あの... 社会の窓が開いていますよ。', 'Um... Lalatmu terbuka.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3562_terjadi, 'まさかこんなことが起こるなんて、思ってもみなかったよ。', 'Saya tidak pernah menyangka hal seperti ini akan terjadi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3562_terjadi, 'どうしてこんなことが起こったのか、よく考えてみてください。', 'Silakan coba pikirkan mengapa hal seperti ini terjadi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3562_terjadi, 'それは数百年に一度起こるか起こらないかの大地震でした。', 'Itu adalah gempa bumi yang sangat besar, jenis yang hanya terjadi sekali setiap beberapa ratus tahun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3563_khawatir, '父は兄のことをいつも心配しています。', 'Ayahku selalu mengkhawatirkan kakaknya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3563_khawatir, '社長が十一時になっても出社してないので社員たちは心配しています。', 'Para pegawai khawatir karena Presiden belum juga masuk kerja padahal sudah lewat jam sebelas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3563_khawatir, '売り上げを心配する時間があるならセールスの電話を一本でも多くしてよ！', 'Jika Anda punya waktu untuk mengkhawatirkan penjualan, lakukan lebih banyak panggilan penjualan!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3565_untuk_bersuara, '電話が鳴っている。', 'Telepon berdering.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3565_untuk_bersuara, 'ドアのベルが鳴った。', 'Bel pintu berbunyi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3565_untuk_bersuara, 'チャイムが鳴ったら、教室に入ってください。', 'Jika bel berbunyi, silakan masuk ke dalam kelas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3566_bernyanyi, '母は毎日シャワー中に歌う。', 'Ibuku bernyanyi di kamar mandi setiap hari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3566_bernyanyi, '人前で歌うのは好きじゃないんです。', 'Aku tidak suka bernyanyi di depan orang banyak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3566_bernyanyi, '今日は僕が夕食を作るから、君は僕のために歌ってよ。', 'Aku akan membuatkan makan malam hari ini, jadi bisakah kamu bernyanyi untukku?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3567_sesuai_keinginan_seseorang, 'ほんと、勝手だよね！', 'Kamu sangat egois!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3567_sesuai_keinginan_seseorang, '勝手なことばっかり言わないでよ！', 'Jangan katakan apapun yang kamu mau.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3567_sesuai_keinginan_seseorang, '他人の家で勝手に冷蔵庫を開けたりポテチを食べるの、やめてくれる？。', 'Bisakah Anda berhenti membuka kulkas atau makan keripik di rumah orang lain tanpa izin?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3582_untuk_ditularkan, 'この手紙で母の気持ちは伝わりました。', 'Surat ini menyampaikan perasaan ibuku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3582_untuk_ditularkan, '明日が休みなの、チームメイト全員に伝わってなかったみたい。', 'Rupanya tidak semua rekan satu tim mendapat pesan bahwa besok tidak ada latihan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3582_untuk_ditularkan, '日本語が上手に話せなくても心で話せばきっと相手に伝わりますよ。', 'Meskipun Anda tidak bisa berbahasa Jepang dengan baik, jika Anda mencoba berbicara dengan hati, orang akan mengerti.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3649_kenyamanan_seseorang, 'その日は都合が悪くて、キャンセルしてもらってもいいですか？', 'Hari itu tidak nyaman bagi saya, bisakah Anda membatalkannya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3649_kenyamanan_seseorang, 'もし都合が良ければ、本屋に行きませんか？', 'Jika berhasil, mengapa kita tidak pergi ke toko buku?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3649_kenyamanan_seseorang, '「明日と明後日、どちらの方が都合がいい？」「どちらでもいいよ。」', '“Hari mana yang lebih nyaman bagimu, besok atau lusa?” "Tidak ada bedanya bagiku."');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3906_untuk_memproyeksikan, 'スクリーンにスライドを映してもらえますか？', 'Bisakah Anda memproyeksikan slide ke layar untuk saya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3906_untuk_memproyeksikan, '他人は自分を映すかがみだと思うんです。', 'Menurutku, orang lain itu seperti cermin yang mencerminkan diri kita sendiri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3906_untuk_memproyeksikan, 'この白いカベをスクリーン代わりにして映画を映すのはどうでしょう。', 'Mengapa kita tidak menggunakan dinding putih ini sebagai layar untuk memproyeksikan filmnya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3906_untuk_memproyeksikan, 'この映画、ここでベーグルをアップ映す意図は何なの？', 'Apa maksud di balik tampilan bagel secara close-up di film ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3925_untuk_menuntut_sesuatu, '男は金を要求した。', 'Pria itu meminta uang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3925_untuk_menuntut_sesuatu, '社員が休みを要求しています。', 'Karyawan menuntut waktu istirahat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3925_untuk_menuntut_sesuatu, '顧客は速い対応を要求しています。', 'Pelanggan menuntut respons yang cepat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3926_pencernaan, 'ヨーグルトは食べ物の消化を助けてくれます。', 'Yogurt membantu Anda mencerna makanan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3926_pencernaan, 'コウイチは下り気味だから、消化の良いものを食べさせてあげてね。', 'Koichi sedang mengalami diare, jadi tolong suruh dia makan sesuatu yang mudah dicerna.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3926_pencernaan, '昼に食べたラーメンをまだ消化しきっていない。', 'Saya belum selesai mencerna ramen yang saya makan untuk makan siang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3950_keberuntungan, '今日が運が良いみたいで宝くじが当たったんだ。', 'Sepertinya saya beruntung hari ini. Saya memenangkan lotre.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3950_keberuntungan, 'ギャンブルは実力よりも運が大切だ。', 'Yang penting dalam perjudian adalah keberuntungan Anda, bukan kemampuan Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3950_keberuntungan, 'こんなことで使い果たしたくはないけど、これで運を使い果たしちゃったかも。', 'Tapi aku mungkin kurang beruntung, dan aku tidak ingin menggunakannya untuk hal seperti ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4073_untuk_keluar, 'ボタンが取れちゃった。', 'Sebuah tombol lepas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4073_untuk_keluar, 'このシミは取れないかもしれないね。', 'Noda ini mungkin sulit dihilangkan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4073_untuk_keluar, '丸の内にオフィスを開くとなるとお金はかなりかかりますが、私たちのイメージにとって大切な事ですし、一年ぐらいで元は取れると思います。', 'Membuka kantor di Marunouchi akan memakan biaya yang cukup besar, namun hal ini penting bagi citra kami, dan saya pikir kami dapat menutup biaya tersebut dalam waktu sekitar satu tahun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4847_suhu, '気温が急に下がった。', 'Suhu turun secara tiba-tiba.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4847_suhu, '今日の最高気温は四十度です。', 'Suhu tertinggi hari ini adalah 40 derajat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4847_suhu, '朝と夜の気温の差が激しいんです。', 'Perbedaan suhu antara pagi dan malam sangat tajam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5896_dia, '彼がトムさんです。', 'Dia adalah Tom.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5896_dia, '彼は毎日コーヒーを飲みます。', 'Dia minum kopi setiap hari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5896_dia, '今日は彼とおうちデート♡', 'Hari ini adalah kencan rumah dengan pacarku♡');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5896_dia, 'しまった！急須を壊しちゃった。彼が知ったらめちゃくちゃ怒るだろうな。', 'Kotoran! Aku baru saja memecahkan teko bodoh itu. Dia akan sangat marah jika dia tahu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5898_mereka, '彼らはみんな、カナダ人なんですよ。', 'Mereka semua adalah orang Kanada.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5898_mereka, 'これから、彼らとホッケーをしに行くところなんです。', 'Saya akan pergi bermain hoki dengan orang-orang itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5898_mereka, '彼らとは、メープルファームで出会いました。', 'Saya bertemu mereka di perkebunan maple.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5898_mereka, '彼らは仲の良い友達です。', 'Orang-orang itu adalah teman baik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6654_seseorang, '「あ、あそこに誰かいる。」「え、誰もいないよ？」', '"Oh, ada seseorang di sana." “Eh, tidak ada orang di sana…?”');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6654_seseorang, '誰かに聞いてみよう！', 'Mari kita bertanya pada seseorang!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6654_seseorang, 'チームの誰かが代表として相手とじゃんけんします。', 'Seseorang dalam tim akan memainkan batu-Gunting-Kertas dengan pihak lain sebagai perwakilan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6900_kelelahan, '仕事のストレスのせいで疲労がたまっているんです。', 'Saya memiliki banyak kelelahan yang menumpuk karena stres akibat pekerjaan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6900_kelelahan, 'このクツ、すごくいいよ！ディズニーランドで一日歩いたのに、足に疲労が出なくてビビったぐらい。', 'Sepatu ini bagus sekali! Saya bahkan berjalan seharian di Disneyland dan terkejut karena kaki saya tidak lelah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6900_kelelahan, 'このエナジードリンクを飲めば疲労が一発でとれるんです。', 'Jika Anda meminum minuman energi ini, rasa lelah bisa langsung hilang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7452_lantai, '「何階ですか？」「四階をおねがいします。」「このエレベーターは四階には止まりませんよ。」', '"Lantai berapa?" "Tolong yang keempat." “Lift ini tidak berhenti di lantai empat.”');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7452_lantai, 'さすが六十五階からのビューは見事ですね。', 'Tidak heran, tapi pemandangan dari lantai enam puluh lima sungguh indah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7452_lantai, '友人が三十階建てのタワーマンションに住んでいます。', 'Teman saya tinggal di apartemen menara dengan tiga puluh lantai.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7457_kota, '都市にはたくさんの人が住んでいます。', 'Banyak orang tinggal di kota.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7457_kota, '活気のある都市エリアでの生活はどうですか？', 'Bagaimana kalau tinggal di kawasan kota yang ramai?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7457_kota, '何かおもしろい都市伝説を知っていますか？', 'Tahukah Anda legenda urban yang menarik?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7492_kata, 'この言葉の意味を教えて下さい。', 'Bisakah kamu mengajariku arti kata ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7492_kata, 'うまく言葉にできないけど、コウイチは私にとってすごく特別な人なの。', 'Sulit untuk diungkapkan dengan kata-kata, tapi Koichi adalah orang yang sangat spesial bagiku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7492_kata, '私は言葉に詰まった。', 'Saya kehilangan kata-kata.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7498_saya, '僕に任せろ。', 'Serahkan padaku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7498_saya, '僕の弟は小学生です。', 'Adik laki-laki saya adalah seorang siswa sekolah dasar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7498_saya, '僕と一緒に行きましょう。', 'Mari ikut saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7504_bumi, '地球は美しい青色をしています。', 'Bumi berwarna biru indah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7504_bumi, 'コウイチは一体どこへ行ったのかな？地球の上にはいると思うんだけど...。', 'Kemana Koichi pergi? Saya pikir dia ada di suatu tempat di bumi...');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7504_bumi, '地球の環境を守ることは重要です。', 'Pentingnya melindungi lingkungan bumi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7580_anggota, 'まずは図書館の会員になったらどうですか？', 'Pertama-tama, kenapa Anda tidak menjadi anggota perpustakaan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7580_anggota, '田中さんはスポーツジムの会員です。', 'Pak Tanaka adalah anggota gym.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7580_anggota, '会員カードはお持ちですか。', 'Apakah Anda memiliki kartu anggota?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7581_pelaut, '私は昔この船の船員でした。', 'Saya pernah menjadi pelaut di kapal ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7581_pelaut, '船員になるには色々なテストを受けなければいけません。', 'Untuk menjadi seorang pelaut, Anda harus mengikuti berbagai tes.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7581_pelaut, '船員の仕事って大変だけど、お給料は結構良いのよね。', 'Pekerjaan pelaut itu berat, tapi gajinya lumayan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7582_daerah_perkotaan, '都会に田んぼはありませんよ。', 'Tidak ada sawah di kota.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7582_daerah_perkotaan, 'これだから都会育ちはきらいなんだよ！', 'Inilah sebabnya saya tidak suka orang yang tinggal di kota.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7582_daerah_perkotaan, 'こんな田舎じゃなく、私は都会で働きたいのよ。', 'Saya ingin bekerja di kota, bukan di pedesaan seperti ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7634_pulau, '島には美しい青空が広がっている。', 'Langit biru yang indah terhampar di pulau itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7634_pulau, 'キャシーは、この島で一番の美人です。', 'Cathy adalah orang tercantik di pulau ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7634_pulau, 'この島で一週間生活をしてもらいます。', 'Aku akan membiarkanmu tinggal di pulau ini selama seminggu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7635_kesimpulan, '落ちのある話が好きなんです。', 'Aku suka cerita yang ada kesimpulannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7635_kesimpulan, 'そういう落ちだったのね。', 'Itulah hasilnya, ya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7635_kesimpulan, 'あいつの話には落ちが無いんだよな。', 'Pidatonya tidak memiliki banyak kesimpulan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7691_periode, 'レンタル期間は十日間です。', 'Masa sewa adalah sepuluh hari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7691_periode, '今週はテスト期間中です。', 'Minggu ini adalah masa ujian.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7691_periode, 'このジーンズ、今なら期間限定で安いですよ。', 'Celana jeans ini murah untuk waktu yang terbatas sekarang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7692_tindakan, '彼は毎日同じ時間に同じ行動をします。', 'Dia melakukan tindakan yang sama pada waktu yang sama setiap hari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7692_tindakan, 'いつもコウイチの行動パターンは決まっている。', 'Pola perilaku Koichi selalu sama.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7692_tindakan, 'あの人は発言と行動が一致していない。', 'Kata-kata dan tindakan orang itu tidak sesuai.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7693_mengumpulkan, '今日は研究室の集まりがある。', 'Ada pertemuan dengan orang-orang dari lab hari ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7693_mengumpulkan, 'なんか今日のパーティー、集まりも悪かったし、グダグダだったね。', 'Tidak banyak orang yang hadir di pesta hari ini dan juga sangat tidak terorganisir.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7693_mengumpulkan, '正月の集まりに弟がガールフレンドを連れてきやがった。', 'Adik laki-laki saya membawa pacarnya ke pertemuan Tahun Baru kami.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7748_untuk_menanam_sesuatu, 'ママは庭にリンゴの木を植えました。', 'Ibu menanam pohon apel di taman.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7748_untuk_menanam_sesuatu, '町の住人たちは色々な花を植えるのが好きです。', 'Penduduk kota suka menanam berbagai jenis bunga.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7748_untuk_menanam_sesuatu, 'この種をどこに植えるつもりだい。', 'Di mana Anda berencana menanam benih itu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7749_bos, '地下道でヤクザの親分とすれちがったんだ。', 'Saya berjalan melewati gembong yakuza di jalan bawah tanah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7749_bos, 'トムとジェリーは、どちらが親分でどちらが子分ですか。', 'Antara Tom dan Jerry, mana bos dan mana anteknya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7749_bos, '親分にバレたら大目玉を食らうぞ。', 'Ketua akan memarahi kita jika kita membiarkannya lolos.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7750_kaomoji, '今の気持ちを顔文字で表してください。', 'Silakan ungkapkan perasaan Anda saat ini dengan kaomoji.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7750_kaomoji, 'このメール、全部顔文字で書かれてるね。', 'Email ini semuanya ditulis dalam kaomoji.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7750_kaomoji, '上司へのメールに顔文字を使うんじゃない！', 'Jangan gunakan kaomoji saat Anda mengirim email ke atasan!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8665_ruang_klub, 'メディア部の部室には、たくさんのCDがあります。', 'Ada banyak CD di ruang klub media.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8665_ruang_klub, 'ここは野球部の部室ですか？ニオイで分かりますよ。', 'Apakah ini ruang klub bisbol? Aku tahu dari baunya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8665_ruang_klub, 'まずは部室でユニフォームに着替えて来て。', 'Pertama, ganti bajumu dengan seragam di ruang klub.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8668_mahasiswa_pascasarjana, 'この図書館は大学院生に人気です。', 'Perpustakaan ini populer di kalangan mahasiswa pascasarjana.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8668_mahasiswa_pascasarjana, '大学院生の主な活動は研究です。', 'Kegiatan utama mahasiswa pascasarjana adalah penelitian.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8668_mahasiswa_pascasarjana, '大学院生は合コンで結構モテるらしいよ。', 'Tampaknya, mahasiswa pascasarjana cukup populer dalam kencan berkelompok.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8704_pelabuhan, 'この町には港もあるし、電車も通ってます。', 'Ada pelabuhan di kota ini, dan ada jalur kereta api yang melewatinya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8704_pelabuhan, '台風が来たら、港には近づかないで下さい。', 'Jangan mendekati pelabuhan saat topan datang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8704_pelabuhan, '不思議な船が港に漂着した。', 'Ada sebuah kapal misterius yang hanyut di pelabuhan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8706_festival_sekolah, 'そっちの学校の文化祭っていつ？', 'Kapan festival budaya sekolahmu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8706_festival_sekolah, '文化祭の練習、何時にする？', 'Jam berapa kita harus memulai latihan festival sekolah?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8706_festival_sekolah, 'うちの文化祭に誰か有名人が来るらしいよ！', 'Tampaknya ada orang terkenal yang datang ke festival budaya sekolah kita!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8747_air_panas, 'お湯を飲むと、体が温かくなります。', 'Minum air panas akan menghangatkan tubuh Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8747_air_panas, 'そのマスカラはお湯じゃ落ちなさそうだね。', 'Sepertinya maskara tidak hilang jika terkena air panas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8747_air_panas, 'お湯を沸かしてくれないか？', 'Bisakah Anda merebus air?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8748_aktivitas, '私のガールフレンドは、週末はコスプレイヤーとして活動しています。', 'Pacar saya adalah cosplayer yang aktif di akhir pekan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8748_aktivitas, 'この火山はもう何年も活動しています。', 'Gunung berapi ini telah aktif selama bertahun-tahun sekarang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8748_aktivitas, '活動動詞とは動詞を相の観点から四つに分けた内の一つです。', 'Kata kerja tindakan adalah salah satu dari empat jenis kata kerja yang dikategorikan dari perspektif aspek.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8817_terus_menerus, 'その会社員は、いつも着々と仕事をこなしていた。', 'Pekerja kantoran itu selalu menyelesaikan tugas dengan mantap.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8817_terus_menerus, 'プロジェクトは着々進んでいるようだね。', 'Sepertinya Anda membuat kemajuan yang stabil dalam proyek ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8817_terus_menerus, 'そのプロジェクトは着々と進行しており、予定通りに三月末に完了する見込みです。', 'Proyek ini terus berjalan dan diharapkan selesai pada akhir Maret.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8933_untuk_menyakiti_seseorang, 'これ以上、私を苦しめないで！', 'Jangan sakiti aku lagi!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8933_untuk_menyakiti_seseorang, '米不足が全日本の国民を苦しめている。', 'Kekurangan beras menyiksa seluruh warga Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8933_untuk_menyakiti_seseorang, '知らないうちに、毎日一年生を苦しめていた。', 'Tanpa disadari, saya melecehkan siswa kelas satu setiap hari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8946_untuk_menyelesaikan_sesuatu, '五時には仕事を終えて会社を出たい。', 'Saya ingin menyelesaikan pekerjaan dan meninggalkan kantor pada pukul lima.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8946_untuk_menyelesaikan_sesuatu, '王女はケーキを食べ終えるとすぐに、お茶を飲んだ。', 'Segera setelah sang putri menghabiskan kuenya, dia minum teh.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8946_untuk_menyelesaikan_sesuatu, 'ほとんどの魚は水中で一生を終える。', 'Kebanyakan ikan menghabiskan seluruh hidupnya di air.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9038_pemecahan, 'では、解答を見てみましょう。', 'Baiklah, mari kita lihat jawabannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9038_pemecahan, '解答時間は５分です！', 'Anda punya waktu lima menit untuk menjawab!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9038_pemecahan, 'それでは解答用紙をくばります。', 'Sekarang saya akan membagikan lembar jawaban.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9293_renang, '水泳教室に通い始めました。', 'Saya mulai mengambil pelajaran berenang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9293_renang, '水泳はとても良い全身運動です。', 'Berenang adalah latihan seluruh tubuh yang sangat baik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9293_renang, '水泳の授業は学校で楽しいです。', 'Kelas renang di sekolah memang menyenangkan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9358_samudra_atlantik, '大西洋はとても大きいです。', 'Samudera Atlantik sangat besar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9358_samudra_atlantik, '私はまだ大西洋を見たことがありません。', 'Saya belum melihat Samudera Atlantik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9358_samudra_atlantik, '大西洋はアメリカとヨーロッパの間にあります。', 'Samudera Atlantik berada di antara Amerika dan Eropa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9358_samudra_atlantik, '大西洋を泳いでわたろうとしましたが、1分であきらめました。', 'Saya mencoba berenang melintasi Atlantik, tetapi menyerah setelah satu menit.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9508_desa_pertanian, '私は農村部の村に住んでいます。', 'Saya tinggal di sebuah desa di daerah pedesaan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9508_desa_pertanian, '農村の生活は、とてものんびりしています。', 'Kehidupan di desa pertanian sangat santai.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9508_desa_pertanian, 'そして、農村の人々はとても親切です。', 'Dan orang-orang di komunitas pedesaan sangat baik.');

  -- 4. PREREQUISITES
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_726_tunggu, id FROM items WHERE type = 'radical' AND (slug = '99' OR id = '99') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_726_tunggu, id FROM items WHERE type = 'radical' AND (slug = '192' OR id = '192') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_813_pengerahan_tenaga, r_208_mengizinkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_813_pengerahan_tenaga, id FROM items WHERE type = 'radical' AND (slug = '13' OR id = '13') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_814_kebun, id FROM items WHERE type = 'radical' AND (slug = '62' OR id = '62') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_814_kebun, r_206_yoga);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_814_kebun, id FROM items WHERE type = 'radical' AND (slug = '48' OR id = '48') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_815_napas, id FROM items WHERE type = 'radical' AND (slug = '109' OR id = '109') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_815_napas, id FROM items WHERE type = 'radical' AND (slug = '65' OR id = '65') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_816_perjalanan, id FROM items WHERE type = 'radical' AND (slug = '66' OR id = '66') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_816_perjalanan, id FROM items WHERE type = 'radical' AND (slug = '8762' OR id = '8762') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_816_perjalanan, r_8778_tahu);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_817_akar, id FROM items WHERE type = 'radical' AND (slug = '23' OR id = '23') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_817_akar, id FROM items WHERE type = 'radical' AND (slug = '196' OR id = '196') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_818_sungai_kecil, id FROM items WHERE type = 'radical' AND (slug = '103' OR id = '103') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_818_sungai_kecil, id FROM items WHERE type = 'radical' AND (slug = '8776' OR id = '8776') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_818_sungai_kecil, id FROM items WHERE type = 'radical' AND (slug = '21' OR id = '21') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_819_memadamkan, id FROM items WHERE type = 'radical' AND (slug = '103' OR id = '103') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_819_memadamkan, id FROM items WHERE type = 'radical' AND (slug = '8765' OR id = '8765') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_819_memadamkan, id FROM items WHERE type = 'radical' AND (slug = '43' OR id = '43') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_820_dobel, id FROM items WHERE type = 'radical' AND (slug = '75' OR id = '75') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_820_dobel, id FROM items WHERE type = 'radical' AND (slug = '175' OR id = '175') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_821_anggota, id FROM items WHERE type = 'radical' AND (slug = '16' OR id = '16') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_821_anggota, id FROM items WHERE type = 'radical' AND (slug = '94' OR id = '94') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_822_pulau, id FROM items WHERE type = 'radical' AND (slug = '151' OR id = '151') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_822_pulau, id FROM items WHERE type = 'radical' AND (slug = '20' OR id = '20') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_823_festival, id FROM items WHERE type = 'radical' AND (slug = '43' OR id = '43') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_823_festival, id FROM items WHERE type = 'radical' AND (slug = '30' OR id = '30') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_823_festival, r_207_jackhammer);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_824_bab, id FROM items WHERE type = 'radical' AND (slug = '55' OR id = '55') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_824_bab, r_201_lebih_awal);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_825_awalan_nomor_ordinal, id FROM items WHERE type = 'radical' AND (slug = '85' OR id = '85') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_825_awalan_nomor_ordinal, r_202_adik);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_826_metropolis, id FROM items WHERE type = 'radical' AND (slug = '203' OR id = '203') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_826_metropolis, id FROM items WHERE type = 'radical' AND (slug = '176' OR id = '176') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_827_bergerak, id FROM items WHERE type = 'radical' AND (slug = '188' OR id = '188') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_827_bergerak, id FROM items WHERE type = 'radical' AND (slug = '13' OR id = '13') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_828_barang_dagangan, id FROM items WHERE type = 'radical' AND (slug = '55' OR id = '55') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_828_barang_dagangan, id FROM items WHERE type = 'radical' AND (slug = '121' OR id = '121') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_828_barang_dagangan, id FROM items WHERE type = 'radical' AND (slug = '28' OR id = '28') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_829_buruk, r_204_asia);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_829_buruk, id FROM items WHERE type = 'radical' AND (slug = '65' OR id = '65') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_830_suku, id FROM items WHERE type = 'radical' AND (slug = '66' OR id = '66') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_830_suku, id FROM items WHERE type = 'radical' AND (slug = '8762' OR id = '8762') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_830_suku, id FROM items WHERE type = 'radical' AND (slug = '72' OR id = '72') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_831_dalam, id FROM items WHERE type = 'radical' AND (slug = '103' OR id = '103') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_831_dalam, id FROM items WHERE type = 'radical' AND (slug = '76' OR id = '76') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_831_dalam, id FROM items WHERE type = 'radical' AND (slug = '28' OR id = '28') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_831_dalam, id FROM items WHERE type = 'radical' AND (slug = '23' OR id = '23') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_832_bola, id FROM items WHERE type = 'radical' AND (slug = '48' OR id = '48') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_832_bola, r_399_meminta);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_833_remaja, id FROM items WHERE type = 'radical' AND (slug = '55' OR id = '55') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_833_remaja, id FROM items WHERE type = 'radical' AND (slug = '125' OR id = '125') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_835_lantai, id FROM items WHERE type = 'radical' AND (slug = '176' OR id = '176') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_835_lantai, id FROM items WHERE type = 'radical' AND (slug = '161' OR id = '161') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_835_lantai, id FROM items WHERE type = 'radical' AND (slug = '52' OR id = '52') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_836_dingin, id FROM items WHERE type = 'radical' AND (slug = '78' OR id = '78') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_836_dingin, id FROM items WHERE type = 'radical' AND (slug = '8779' OR id = '8779') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_836_dingin, id FROM items WHERE type = 'radical' AND (slug = '123' OR id = '123') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_838_panas, id FROM items WHERE type = 'radical' AND (slug = '22' OR id = '22') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_838_panas, id FROM items WHERE type = 'radical' AND (slug = '203' OR id = '203') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_839_periode_waktu, r_205_kepiting);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_839_periode_waktu, id FROM items WHERE type = 'radical' AND (slug = '43' OR id = '43') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_840_tanaman, id FROM items WHERE type = 'radical' AND (slug = '23' OR id = '23') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_840_tanaman, id FROM items WHERE type = 'radical' AND (slug = '8821' OR id = '8821') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_841_gigi, id FROM items WHERE type = 'radical' AND (slug = '44' OR id = '44') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_841_gigi, id FROM items WHERE type = 'radical' AND (slug = '127' OR id = '127') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_841_gigi, id FROM items WHERE type = 'radical' AND (slug = '98' OR id = '98') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_842_hangat, id FROM items WHERE type = 'radical' AND (slug = '103' OR id = '103') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_842_hangat, id FROM items WHERE type = 'radical' AND (slug = '22' OR id = '22') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_842_hangat, id FROM items WHERE type = 'radical' AND (slug = '84' OR id = '84') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_843_pelabuhan, id FROM items WHERE type = 'radical' AND (slug = '103' OR id = '103') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_843_pelabuhan, r_269_bersama);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_843_pelabuhan, id FROM items WHERE type = 'radical' AND (slug = '228' OR id = '228') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_844_air_panas, id FROM items WHERE type = 'radical' AND (slug = '103' OR id = '103') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_844_air_panas, id FROM items WHERE type = 'radical' AND (slug = '172' OR id = '172') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_845_mendaki, id FROM items WHERE type = 'radical' AND (slug = '168' OR id = '168') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_845_mendaki, id FROM items WHERE type = 'radical' AND (slug = '181' OR id = '181') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_846_memakai, id FROM items WHERE type = 'radical' AND (slug = '8767' OR id = '8767') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_846_memakai, id FROM items WHERE type = 'radical' AND (slug = '48' OR id = '48') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_846_memakai, id FROM items WHERE type = 'radical' AND (slug = '5' OR id = '5') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_846_memakai, id FROM items WHERE type = 'radical' AND (slug = '53' OR id = '53') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_847_pendek, id FROM items WHERE type = 'radical' AND (slug = '72' OR id = '72') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_847_pendek, id FROM items WHERE type = 'radical' AND (slug = '181' OR id = '181') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_848_bidang, id FROM items WHERE type = 'radical' AND (slug = '125' OR id = '125') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_848_bidang, r_339_sebelumnya);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_849_musim_semi, id FROM items WHERE type = 'radical' AND (slug = '52' OR id = '52') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_849_musim_semi, id FROM items WHERE type = 'radical' AND (slug = '45' OR id = '45') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_852_setelan, id FROM items WHERE type = 'radical' AND (slug = '216' OR id = '216') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1594_dia, id FROM items WHERE type = 'radical' AND (slug = '99' OR id = '99') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1594_dia, id FROM items WHERE type = 'radical' AND (slug = '195' OR id = '195') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1890_saya, id FROM items WHERE type = 'radical' AND (slug = '75' OR id = '75') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1890_saya, r_390_bisnis);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1926_lelah, id FROM items WHERE type = 'radical' AND (slug = '187' OR id = '187') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1926_lelah, id FROM items WHERE type = 'radical' AND (slug = '195' OR id = '195') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2721_seumur_hidup, id FROM items WHERE type = 'kanji' AND (slug = '440' OR id = '440') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2721_seumur_hidup, id FROM items WHERE type = 'kanji' AND (slug = '530' OR id = '530') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2779_barat_laut, id FROM items WHERE type = 'kanji' AND (slug = '517' OR id = '517') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2779_barat_laut, id FROM items WHERE type = 'kanji' AND (slug = '581' OR id = '581') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2905_pergi_langsung, id FROM items WHERE type = 'kanji' AND (slug = '630' OR id = '630') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2905_pergi_langsung, id FROM items WHERE type = 'kanji' AND (slug = '580' OR id = '580') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3098_untuk_memulai, id FROM items WHERE type = 'kanji' AND (slug = '713' OR id = '713') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3128_untuk_menunggu, k_726_tunggu);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3244_teman_baik, id FROM items WHERE type = 'kanji' AND (slug = '776' OR id = '776') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3244_teman_baik, id FROM items WHERE type = 'kanji' AND (slug = '805' OR id = '805') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3295_makanan_gaya_barat, id FROM items WHERE type = 'kanji' AND (slug = '798' OR id = '798') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3295_makanan_gaya_barat, id FROM items WHERE type = 'kanji' AND (slug = '644' OR id = '644') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3320_studi, k_813_pengerahan_tenaga);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3320_studi, id FROM items WHERE type = 'kanji' AND (slug = '667' OR id = '667') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3321_keluarga, id FROM items WHERE type = 'kanji' AND (slug = '660' OR id = '660') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3321_keluarga, k_814_kebun);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3322_kebun, k_814_kebun);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3323_napas, k_815_napas);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3324_putra, k_815_napas);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3324_putra, id FROM items WHERE type = 'kanji' AND (slug = '462' OR id = '462') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3325_minat, id FROM items WHERE type = 'kanji' AND (slug = '786' OR id = '786') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3325_minat, k_815_napas);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3326_perjalanan, k_816_perjalanan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3327_perjalanan, k_816_perjalanan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3327_perjalanan, id FROM items WHERE type = 'kanji' AND (slug = '580' OR id = '580') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3328_akar, k_817_akar);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3329_akar, k_817_akar);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3329_akar, id FROM items WHERE type = 'kanji' AND (slug = '487' OR id = '487') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3330_atap, id FROM items WHERE type = 'kanji' AND (slug = '724' OR id = '724') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3330_atap, k_817_akar);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3331_kesabaran, k_817_akar);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3331_kesabaran, id FROM items WHERE type = 'kanji' AND (slug = '548' OR id = '548') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3332_daikon, id FROM items WHERE type = 'kanji' AND (slug = '453' OR id = '453') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3332_daikon, k_817_akar);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3333_untuk_membilas_sesuatu, k_818_sungai_kecil);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3334_kecenderungan, k_818_sungai_kecil);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3334_kecenderungan, id FROM items WHERE type = 'kanji' AND (slug = '580' OR id = '580') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3335_tingkat_pertama, id FROM items WHERE type = 'kanji' AND (slug = '440' OR id = '440') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3335_tingkat_pertama, k_818_sungai_kecil);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3336_arus_utama, id FROM items WHERE type = 'kanji' AND (slug = '487' OR id = '487') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3336_arus_utama, k_818_sungai_kecil);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3337_untuk_memadamkan_sesuatu, k_819_memadamkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3338_kali, k_820_dobel);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3339_dobel, id FROM items WHERE type = 'kanji' AND (slug = '441' OR id = '441') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3339_dobel, k_820_dobel);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3340_staf_toko, id FROM items WHERE type = 'kanji' AND (slug = '625' OR id = '625') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3340_staf_toko, k_821_anggota);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3341_semua_anggota, id FROM items WHERE type = 'kanji' AND (slug = '610' OR id = '610') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3341_semua_anggota, k_821_anggota);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3342_karyawan, id FROM items WHERE type = 'kanji' AND (slug = '591' OR id = '591') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3342_karyawan, k_821_anggota);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3343_karyawan_perusahaan, id FROM items WHERE type = 'kanji' AND (slug = '566' OR id = '566') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3343_karyawan_perusahaan, id FROM items WHERE type = 'kanji' AND (slug = '591' OR id = '591') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3343_karyawan_perusahaan, k_821_anggota);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3344_hiroshima, id FROM items WHERE type = 'kanji' AND (slug = '523' OR id = '523') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3344_hiroshima, k_822_pulau);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3346_menulis, id FROM items WHERE type = 'kanji' AND (slug = '475' OR id = '475') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3346_menulis, k_824_bab);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3347_bab_dua, k_825_awalan_nomor_ordinal);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3347_bab_dua, id FROM items WHERE type = 'kanji' AND (slug = '441' OR id = '441') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3347_bab_dua, k_824_bab);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3348_yang_pertama, k_825_awalan_nomor_ordinal);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3348_yang_pertama, id FROM items WHERE type = 'kanji' AND (slug = '440' OR id = '440') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3349_tempat_pertama, k_825_awalan_nomor_ordinal);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3349_tempat_pertama, id FROM items WHERE type = 'kanji' AND (slug = '440' OR id = '440') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3349_tempat_pertama, id FROM items WHERE type = 'kanji' AND (slug = '782' OR id = '782') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3350_kota_metropolitan_tokyo, id FROM items WHERE type = 'kanji' AND (slug = '627' OR id = '627') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3350_kota_metropolitan_tokyo, id FROM items WHERE type = 'kanji' AND (slug = '620' OR id = '620') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3350_kota_metropolitan_tokyo, k_826_metropolis);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3351_kyoto, id FROM items WHERE type = 'kanji' AND (slug = '620' OR id = '620') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3351_kyoto, k_826_metropolis);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3352_untuk_bergerak, k_827_bergerak);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3353_hewan, k_827_bergerak);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3353_hewan, id FROM items WHERE type = 'kanji' AND (slug = '718' OR id = '718') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3354_latihan, id FROM items WHERE type = 'kanji' AND (slug = '752' OR id = '752') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3354_latihan, k_827_bergerak);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3355_bisnis, k_828_barang_dagangan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3355_bisnis, id FROM items WHERE type = 'kanji' AND (slug = '587' OR id = '587') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3356_pedagang, k_828_barang_dagangan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3356_pedagang, id FROM items WHERE type = 'kanji' AND (slug = '444' OR id = '444') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3357_buruk, k_829_buruk);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3358_orang_jahat, k_829_buruk);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3358_orang_jahat, id FROM items WHERE type = 'kanji' AND (slug = '444' OR id = '444') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3359_wanita_jahat, k_829_buruk);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3359_wanita_jahat, id FROM items WHERE type = 'kanji' AND (slug = '454' OR id = '454') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3360_paling_buruk, id FROM items WHERE type = 'kanji' AND (slug = '774' OR id = '774') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3360_paling_buruk, k_829_buruk);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3361_keluarga, id FROM items WHERE type = 'kanji' AND (slug = '660' OR id = '660') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3361_keluarga, k_830_suku);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3362_kelompok_etnis, id FROM items WHERE type = 'kanji' AND (slug = '650' OR id = '650') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3362_kelompok_etnis, k_830_suku);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3364_dalam, k_831_dalam);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3365_tengah_malam, k_831_dalam);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3365_tengah_malam, id FROM items WHERE type = 'kanji' AND (slug = '622' OR id = '622') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3366_kedalaman_air, id FROM items WHERE type = 'kanji' AND (slug = '479' OR id = '479') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3366_kedalaman_air, k_831_dalam);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3367_terdalam, id FROM items WHERE type = 'kanji' AND (slug = '774' OR id = '774') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3367_terdalam, k_831_dalam);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3368_bola, k_832_bola);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3369_baseball, k_848_bidang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3369_baseball, k_832_bola);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3370_cerita_anak_anak, k_833_remaja);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3370_cerita_anak_anak, id FROM items WHERE type = 'kanji' AND (slug = '705' OR id = '705') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3372_lantai_pertama, id FROM items WHERE type = 'kanji' AND (slug = '440' OR id = '440') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3372_lantai_pertama, k_835_lantai);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3373_lantai_dua, id FROM items WHERE type = 'kanji' AND (slug = '441' OR id = '441') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3373_lantai_dua, k_835_lantai);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3374_lantai_empat_puluh_dua, id FROM items WHERE type = 'kanji' AND (slug = '485' OR id = '485') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3374_lantai_empat_puluh_dua, id FROM items WHERE type = 'kanji' AND (slug = '448' OR id = '448') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3374_lantai_empat_puluh_dua, id FROM items WHERE type = 'kanji' AND (slug = '441' OR id = '441') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3374_lantai_empat_puluh_dua, k_835_lantai);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3375_dingin, k_836_dingin);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3377_cuaca_panas, k_838_panas);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3378_ekspektasi, k_839_periode_waktu);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3378_ekspektasi, k_726_tunggu);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3379_masa_sekolah, id FROM items WHERE type = 'kanji' AND (slug = '599' OR id = '599') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3379_masa_sekolah, k_839_periode_waktu);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3380_waktu, id FROM items WHERE type = 'kanji' AND (slug = '662' OR id = '662') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3380_waktu, k_839_periode_waktu);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3381_tanaman, k_840_tanaman);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3381_tanaman, id FROM items WHERE type = 'kanji' AND (slug = '718' OR id = '718') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3382_dokter_gigi, k_841_gigi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3382_dokter_gigi, id FROM items WHERE type = 'kanji' AND (slug = '681' OR id = '681') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3382_dokter_gigi, id FROM items WHERE type = 'kanji' AND (slug = '690' OR id = '690') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3383_rongga, id FROM items WHERE type = 'kanji' AND (slug = '553' OR id = '553') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3383_rongga, k_841_gigi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3384_gigi, k_841_gigi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3385_hangat, k_842_hangat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3386_sumber_air_panas, k_842_hangat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3386_sumber_air_panas, k_849_musim_semi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3387_suhu, k_842_hangat);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3387_suhu, id FROM items WHERE type = 'kanji' AND (slug = '725' OR id = '725') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3388_bandara, id FROM items WHERE type = 'kanji' AND (slug = '601' OR id = '601') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3388_bandara, k_843_pelabuhan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3389_upacara_minum_teh, id FROM items WHERE type = 'kanji' AND (slug = '643' OR id = '643') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3389_upacara_minum_teh, k_844_air_panas);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3390_uap, k_844_air_panas);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3390_uap, id FROM items WHERE type = 'kanji' AND (slug = '548' OR id = '548') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3391_untuk_mendaki, k_845_mendaki);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3392_pendakian_gunung, k_845_mendaki);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3392_pendakian_gunung, id FROM items WHERE type = 'kanji' AND (slug = '455' OR id = '455') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3393_untuk_dipakai, k_846_memakai);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3398_pendek, k_847_pendek);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3399_pedang_pendek, k_847_pendek);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3399_pedang_pendek, id FROM items WHERE type = 'kanji' AND (slug = '458' OR id = '458') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3400_periode_singkat, k_847_pendek);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3400_periode_singkat, k_839_periode_waktu);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3401_musim_semi, k_849_musim_semi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3424_sesuai, k_852_setelan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3492_untuk_diputuskan, id FROM items WHERE type = 'kanji' AND (slug = '687' OR id = '687') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3516_kedai_bir, id FROM items WHERE type = 'kanji' AND (slug = '743' OR id = '743') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3516_kedai_bir, id FROM items WHERE type = 'kanji' AND (slug = '755' OR id = '755') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3517_tangisan_hewan, id FROM items WHERE type = 'kanji' AND (slug = '766' OR id = '766') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3517_tangisan_hewan, id FROM items WHERE type = 'kanji' AND (slug = '586' OR id = '586') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3518_minuman, id FROM items WHERE type = 'kanji' AND (slug = '755' OR id = '755') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3518_minuman, id FROM items WHERE type = 'kanji' AND (slug = '718' OR id = '718') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3519_agar_dapat_didengar, id FROM items WHERE type = 'kanji' AND (slug = '763' OR id = '763') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3520_kekuatiran, id FROM items WHERE type = 'kanji' AND (slug = '508' OR id = '508') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3520_kekuatiran, id FROM items WHERE type = 'kanji' AND (slug = '742' OR id = '742') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3520_kekuatiran, id FROM items WHERE type = 'kanji' AND (slug = '708' OR id = '708') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3521_bacaan_cina, id FROM items WHERE type = 'kanji' AND (slug = '606' OR id = '606') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3521_bacaan_cina, id FROM items WHERE type = 'kanji' AND (slug = '765' OR id = '765') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3549_pengemudi, id FROM items WHERE type = 'kanji' AND (slug = '752' OR id = '752') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3549_pengemudi, id FROM items WHERE type = 'kanji' AND (slug = '747' OR id = '747') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3549_pengemudi, id FROM items WHERE type = 'kanji' AND (slug = '474' OR id = '474') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3550_daun_jatuh, id FROM items WHERE type = 'kanji' AND (slug = '749' OR id = '749') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3550_daun_jatuh, id FROM items WHERE type = 'kanji' AND (slug = '750' OR id = '750') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3551_ayah, id FROM items WHERE type = 'kanji' AND (slug = '512' OR id = '512') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3551_ayah, id FROM items WHERE type = 'kanji' AND (slug = '770' OR id = '770') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3552_ibu, id FROM items WHERE type = 'kanji' AND (slug = '524' OR id = '524') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3552_ibu, id FROM items WHERE type = 'kanji' AND (slug = '770' OR id = '770') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3553_hal_ketiga, id FROM items WHERE type = 'kanji' AND (slug = '449' OR id = '449') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3553_hal_ketiga, id FROM items WHERE type = 'kanji' AND (slug = '696' OR id = '696') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3553_hal_ketiga, id FROM items WHERE type = 'kanji' AND (slug = '492' OR id = '492') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3555_cara_berbicara, id FROM items WHERE type = 'kanji' AND (slug = '705' OR id = '705') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3555_cara_berbicara, id FROM items WHERE type = 'kanji' AND (slug = '510' OR id = '510') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3556_jatuh, id FROM items WHERE type = 'kanji' AND (slug = '747' OR id = '747') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3557_untuk_datang_bersama, id FROM items WHERE type = 'kanji' AND (slug = '754' OR id = '754') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3558_untuk_menjatuhkan_sesuatu, id FROM items WHERE type = 'kanji' AND (slug = '749' OR id = '749') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3559_akhir, id FROM items WHERE type = 'kanji' AND (slug = '745' OR id = '745') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3560_kereta_terakhir, id FROM items WHERE type = 'kanji' AND (slug = '745' OR id = '745') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3560_kereta_terakhir, id FROM items WHERE type = 'kanji' AND (slug = '706' OR id = '706') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3561_untuk_membuka, id FROM items WHERE type = 'kanji' AND (slug = '753' OR id = '753') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3562_terjadi, id FROM items WHERE type = 'kanji' AND (slug = '740' OR id = '740') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3563_khawatir, id FROM items WHERE type = 'kanji' AND (slug = '508' OR id = '508') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3563_khawatir, id FROM items WHERE type = 'kanji' AND (slug = '742' OR id = '742') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3565_untuk_bersuara, id FROM items WHERE type = 'kanji' AND (slug = '766' OR id = '766') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3566_bernyanyi, id FROM items WHERE type = 'kanji' AND (slug = '761' OR id = '761') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3567_sesuai_keinginan_seseorang, id FROM items WHERE type = 'kanji' AND (slug = '738' OR id = '738') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3567_sesuai_keinginan_seseorang, id FROM items WHERE type = 'kanji' AND (slug = '474' OR id = '474') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3582_untuk_ditularkan, id FROM items WHERE type = 'kanji' AND (slug = '777' OR id = '777') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3649_kenyamanan_seseorang, k_826_metropolis);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3649_kenyamanan_seseorang, k_852_setelan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3906_untuk_memproyeksikan, id FROM items WHERE type = 'kanji' AND (slug = '893' OR id = '893') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3925_untuk_menuntut_sesuatu, id FROM items WHERE type = 'kanji' AND (slug = '737' OR id = '737') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3925_untuk_menuntut_sesuatu, id FROM items WHERE type = 'kanji' AND (slug = '913' OR id = '913') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3926_pencernaan, k_819_memadamkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3926_pencernaan, id FROM items WHERE type = 'kanji' AND (slug = '607' OR id = '607') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3950_keberuntungan, id FROM items WHERE type = 'kanji' AND (slug = '752' OR id = '752') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4073_untuk_keluar, id FROM items WHERE type = 'kanji' AND (slug = '966' OR id = '966') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4847_suhu, id FROM items WHERE type = 'kanji' AND (slug = '548' OR id = '548') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4847_suhu, k_842_hangat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5896_dia, k_1594_dia);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5898_mereka, k_1594_dia);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6654_seseorang, id FROM items WHERE type = 'kanji' AND (slug = '1837' OR id = '1837') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6900_kelelahan, k_1926_lelah);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6900_kelelahan, id FROM items WHERE type = 'kanji' AND (slug = '788' OR id = '788') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7452_lantai, k_835_lantai);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7457_kota, k_826_metropolis);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7457_kota, id FROM items WHERE type = 'kanji' AND (slug = '522' OR id = '522') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7492_kata, id FROM items WHERE type = 'kanji' AND (slug = '593' OR id = '593') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7492_kata, id FROM items WHERE type = 'kanji' AND (slug = '750' OR id = '750') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7498_saya, k_1890_saya);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7504_bumi, id FROM items WHERE type = 'kanji' AND (slug = '608' OR id = '608') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7504_bumi, k_832_bola);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7580_anggota, id FROM items WHERE type = 'kanji' AND (slug = '566' OR id = '566') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7580_anggota, k_821_anggota);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7581_pelaut, id FROM items WHERE type = 'kanji' AND (slug = '671' OR id = '671') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7581_pelaut, k_821_anggota);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7582_daerah_perkotaan, k_826_metropolis);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7582_daerah_perkotaan, id FROM items WHERE type = 'kanji' AND (slug = '566' OR id = '566') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7634_pulau, k_822_pulau);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7635_kesimpulan, id FROM items WHERE type = 'kanji' AND (slug = '749' OR id = '749') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7691_periode, k_839_periode_waktu);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7691_periode, id FROM items WHERE type = 'kanji' AND (slug = '701' OR id = '701') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7692_tindakan, id FROM items WHERE type = 'kanji' AND (slug = '580' OR id = '580') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7692_tindakan, k_827_bergerak);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7693_mengumpulkan, id FROM items WHERE type = 'kanji' AND (slug = '754' OR id = '754') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7748_untuk_menanam_sesuatu, k_840_tanaman);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7749_bos, id FROM items WHERE type = 'kanji' AND (slug = '770' OR id = '770') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7749_bos, id FROM items WHERE type = 'kanji' AND (slug = '501' OR id = '501') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7750_kaomoji, id FROM items WHERE type = 'kanji' AND (slug = '772' OR id = '772') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7750_kaomoji, id FROM items WHERE type = 'kanji' AND (slug = '475' OR id = '475') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7750_kaomoji, id FROM items WHERE type = 'kanji' AND (slug = '545' OR id = '545') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8665_ruang_klub, id FROM items WHERE type = 'kanji' AND (slug = '721' OR id = '721') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8665_ruang_klub, id FROM items WHERE type = 'kanji' AND (slug = '635' OR id = '635') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8668_mahasiswa_pascasarjana, id FROM items WHERE type = 'kanji' AND (slug = '453' OR id = '453') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8668_mahasiswa_pascasarjana, id FROM items WHERE type = 'kanji' AND (slug = '599' OR id = '599') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8668_mahasiswa_pascasarjana, id FROM items WHERE type = 'kanji' AND (slug = '744' OR id = '744') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8668_mahasiswa_pascasarjana, id FROM items WHERE type = 'kanji' AND (slug = '850' OR id = '850') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8704_pelabuhan, k_843_pelabuhan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8706_festival_sekolah, id FROM items WHERE type = 'kanji' AND (slug = '475' OR id = '475') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8706_festival_sekolah, id FROM items WHERE type = 'kanji' AND (slug = '607' OR id = '607') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8706_festival_sekolah, k_823_festival);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8747_air_panas, k_844_air_panas);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8748_aktivitas, id FROM items WHERE type = 'kanji' AND (slug = '639' OR id = '639') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8748_aktivitas, k_827_bergerak);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8817_terus_menerus, k_846_memakai);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8817_terus_menerus, id FROM items WHERE type = 'kanji' AND (slug = '856' OR id = '856') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8933_untuk_menyakiti_seseorang, id FROM items WHERE type = 'kanji' AND (slug = '719' OR id = '719') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8946_untuk_menyelesaikan_sesuatu, id FROM items WHERE type = 'kanji' AND (slug = '745' OR id = '745') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9038_pemecahan, id FROM items WHERE type = 'kanji' AND (slug = '1150' OR id = '1150') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9038_pemecahan, id FROM items WHERE type = 'kanji' AND (slug = '697' OR id = '697') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9293_renang, id FROM items WHERE type = 'kanji' AND (slug = '479' OR id = '479') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9293_renang, id FROM items WHERE type = 'kanji' AND (slug = '717' OR id = '717') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9358_samudra_atlantik, id FROM items WHERE type = 'kanji' AND (slug = '453' OR id = '453') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9358_samudra_atlantik, id FROM items WHERE type = 'kanji' AND (slug = '581' OR id = '581') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9358_samudra_atlantik, id FROM items WHERE type = 'kanji' AND (slug = '798' OR id = '798') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9508_desa_pertanian, id FROM items WHERE type = 'kanji' AND (slug = '759' OR id = '759') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9508_desa_pertanian, id FROM items WHERE type = 'kanji' AND (slug = '554' OR id = '554') LIMIT 1;

END $$;
