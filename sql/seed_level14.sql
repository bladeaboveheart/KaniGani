-- ====================================================
-- KaniGani — Seed Data Level 14 (v2, relasional)
-- Auto-generated with Indonesian Slugs
-- ====================================================

DO $$
DECLARE
  -- ============ RADICAL IDs (Level 14) ============
  r_144_hewan UUID; r_236_kolam UUID; r_237_publik UUID; r_246_dengan_baik UUID; r_247_bagian UUID; r_264_bakat UUID; r_8782_batang UUID;

  -- ============ KANJI IDs (Level 14) ============
  k_888_meminta UUID; k_896_contoh UUID; k_897_lulus UUID; k_898_kerja_sama UUID; k_899_ikut UUID; k_900_lingkar UUID; k_901_mengelilingi UUID; k_902_keras UUID; k_903_musim UUID; k_904_sempurna UUID; k_905_mengharapkan UUID; k_906_pikiran UUID; k_907_melipat UUID; k_908_harapan UUID; k_909_kayu UUID; k_910_bundel UUID; k_911_pinus UUID; k_912_sisa UUID; k_914_target UUID; k_915_janji UUID; k_916_seni UUID; k_917_dasar UUID; k_918_jenis_kelamin UUID; k_920_status UUID; k_921_kemampuan UUID; k_924_tulang UUID; k_925_lembut UUID; k_926_suasana UUID; k_927_keras_kepala UUID; k_1514_tertutup UUID; k_1918_dengan_baik UUID; k_8963_stroberi UUID; k_8967_serigala UUID;

  -- ============ VOCABULARY IDs (Level 14) ============
  v_3034_kasus UUID; v_3129_untuk_membuat_seseorang_menunggu UUID; v_3241_kawan UUID; v_3345_festival UUID; v_3395_kimono UUID; v_3396_pakaian_dalam UUID; v_3397_baju_renang UUID; v_3489_tepat_waktu_untuk UUID; v_3497_kenalan UUID; v_3503_berdiri UUID; v_3585_merasa UUID; v_3602_setiap_orang UUID; v_3637_tolong_bantu_saya UUID; v_3642_gedung_utama UUID; v_3650_penghapus UUID; v_3651_niat_jahat UUID; v_3652_pendakian_gunung UUID; v_3653_frase_populer UUID; v_3654_lagu_populer UUID; v_3655_pengecualian UUID; v_3656_contoh UUID; v_3657_misalnya UUID; v_3658_contoh_kalimat UUID; v_3660_asosiasi UUID; v_3661_kerja_sama UUID; v_3662_akan_datang UUID; v_3663_suatu_saat UUID; v_3664_lingkungan UUID; v_3665_peringatan_tahunan UUID; v_3666_untuk_mengelilingi UUID; v_3667_suasana UUID; v_3668_keras UUID; v_3669_keras_kepala UUID; v_3670_dasar UUID; v_3671_empat_musim UUID; v_3672_penyelesaian UUID; v_3673_menyelesaikan UUID; v_3674_penyelesaian UUID; v_3675_keinginan_hati UUID; v_3676_sayangnya UUID; v_3677_sifat_manusia UUID; v_3678_perempuan UUID; v_3679_penyakit_menular_seksual UUID; v_3680_pria UUID; v_3684_untuk_melipat_sesuatu UUID; v_3685_dengan_masalah UUID; v_3686_patah_tulang UUID; v_3687_kekecewaan UUID; v_3688_mengharapkan UUID; v_3689_berharap UUID; v_3690_menginginkan UUID; v_3692_kayu UUID; v_3693_bahan_bahan UUID; v_3694_kayu UUID; v_3695_bundel UUID; v_3696_janji UUID; v_3697_pinus UUID; v_3698_jarum_pinus UUID; v_3700_untuk_lulus_ujian UUID; v_3701_kepribadian UUID; v_3704_sisa UUID; v_3705_untuk_tetap_tertinggal UUID; v_3706_lembur UUID; v_3710_memasak UUID; v_3711_al UUID; v_3712_sangat_jepang UUID; v_3713_tujuan UUID; v_3718_reservasi UUID; v_3719_tentang UUID; v_3721_bakat UUID; v_3722_kemampuan UUID; v_3723_bisnis_pertunjukan UUID; v_3724_pelawak UUID; v_3725_geisha UUID; v_3728_tulang UUID; v_3798_untuk_menenangkan_diri UUID; v_3880_untuk_mencerna UUID; v_3881_menghilang UUID; v_3882_perasaan_buruk UUID; v_3883_untuk_streaming UUID; v_3884_untuk_memindahkan_sesuatu UUID; v_3885_untuk_memakai UUID; v_3886_untuk_belajar UUID; v_3887_untuk_bepergian UUID; v_3889_untuk_membangunkan_seseorang UUID; v_3890_wisatawan UUID; v_3891_mulut_buruk UUID; v_3897_bagus UUID; v_3902_untuk_mengatur UUID; v_3909_otomatis UUID; v_3913_kelulusan UUID; v_3919_harapan UUID; v_3923_kompromi UUID; v_3927_gangguan_pencernaan UUID; v_3944_mengharapkan UUID; v_3945_memutar_sushi UUID; v_3946_untuk_memutar UUID; v_4149_permainan UUID; v_4854_untuk_memahami UUID; v_5619_toko_tutup UUID; v_5620_pembukaan_dan_penutupan UUID; v_6799_kami UUID; v_6827_kaleng_kosong UUID; v_6883_dengan_baik UUID; v_6946_untuk_bergabung_bersama UUID; v_7449_kerja_bagus UUID; v_7539_jenis_kelamin UUID; v_7541_pergerakan UUID; v_7584_lingkar UUID; v_7585_kedalaman UUID; v_7638_siklus UUID; v_7639_alasan UUID; v_7688_ruang_tunggu UUID; v_7696_artikulasi UUID; v_7739_kondisi UUID; v_7752_disengaja UUID; v_7753_kontemporer UUID; v_8669_jahat UUID; v_8700_sinyal UUID; v_8749_naluri UUID; v_8750_hari_olahraga UUID; v_8805_wortel UUID; v_8954_untuk_pemanasan UUID; v_8975_stroberi UUID; v_8984_serigala UUID; v_8985_manusia_serigala UUID; v_9243_baris_teks UUID; v_9264_bulu UUID; v_9274_jelas UUID; v_9301_peduli UUID; v_9475_rumah_kosong UUID;

BEGIN

  DELETE FROM items WHERE level = 14;

  -- 1. RADICALS
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '犭', 'hewan', 14, 1, 'Gerakan radikal ini berayun seperti monyet, melolong seperti serigala, dan menerkam seperti macan tutul. Anda hampir bisa mendengar paduan suara hutan… Ini adalah radikal untuk <radikal>hewan</radikal>!')
    RETURNING id INTO r_144_hewan;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '勺', 'kolam', 14, 2, 'Apa yang Anda sebut penjara bagi tetesan air? Sebuah <radikal>kolam</radikal>! Airnya mungkin tidak suka berada di sana, tapi kita semua pasti menghargainya di hari musim panas.')
    RETURNING id INTO r_236_kolam;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '公', 'publik', 14, 3, 'Radikal ini sama dengan kanji. Artinya <radikal>publik</radikal>.')
    RETURNING id INTO r_237_publik;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '井', 'dengan-baik', 14, 4, 'Ini adalah kata radikal untuk <radical>sumur</radikal> — jenis yang Anda gunakan untuk menimba air. Bayangkan sebuah sumur batu kuno dengan tiang kayu yang menopang engkol untuk menggulung ember Anda! Cukup <em>bagus</em>, ya?

<em>Yah</em>, <em>baik</em>… Masih tidak bisa melihatnya? Coba tampilan lain: gambar sumur dilihat dari atas. Yang ini bukaannya berbentuk persegi, karena seperti itulah rupa sumur Jepang di masa lalu. Semoga yang ini berhasil untuk Anda!')
    RETURNING id INTO r_246_dengan_baik;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '分', 'bagian', 14, 5, 'Radikal ini sama dengan kanji. Artinya <radikal>bagian</radikal>.')
    RETURNING id INTO r_247_bagian;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '才', 'bakat', 14, 6, 'Radikal ini sama dengan kanji. Artinya <radikal>bakat</radikal>.')
    RETURNING id INTO r_264_bakat;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '㦮', 'batang', 14, 7, 'Itu pemabuk dari sebelumnya, tapi kali ini dia bersandar pada permukaan horizontal. Mengetahui dia, itu mungkin counter dari <radical>bar</radical>. Mudah-mudahan dia tidak menimbulkan terlalu banyak masalah bagi staf bar dengan tingkah lakunya yang mabuk.')
    RETURNING id INTO r_8782_batang;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_144_hewan, 'Hewan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_236_kolam, 'Kolam', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_237_publik, 'Publik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_246_dengan_baik, 'Dengan baik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_247_bagian, 'Bagian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_264_bakat, 'Bakat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_8782_batang, 'Batang', true, true);

  -- 2. KANJIS
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '願', 'meminta', 14, 8, '<radical>asli</radical> <radical>geoduck</radical> memiliki <kanji>permintaan</kanji>. Dia ingin ada lebih banyak geoduck di dunia!', 'Satu-satunya orang yang mendengar <kanji>permintaan</kanji> geoduck adalah <reading>Gan</reading>dhi (がん). Gandhi memejamkan mata, duduk, dan menyebarkan permintaan geoduck tersebut ke seluruh dunia.')
    RETURNING id INTO k_888_meminta;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '例', 'contoh', 14, 9, '<radical>pemimpin</radikal> dari <radikal>yakuza</radikal> menunjukkan <radikal>pisau</radikal> miliknya. Dia berkata, "Ini adalah <kanji>contoh</kanji> pisau."', '"Ini adalah <kanji>contoh</kanji>," pemimpin yakuza memberitahu Anda. "Lain kali, saya akan menunjukkan contoh senjata <reading>ray</reading> (れい)."')
    RETURNING id INTO k_896_contoh;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '卒', 'lulus', 14, 10, 'Anda memberikan <radical>penutup</radikal> kepada <radikal>orang</radikal> (sebenarnya ada dua orang), lalu mereka menaruhnya di <radikal>salib</radikal> ketika Anda <kanji>lulus</kanji>. Ini adalah upacara simbolis, menutup salib, tapi itu hanya apa yang Anda lakukan ketika Anda lulus di bagian ini.', 'Uh oh, sepertinya kamu lupa tutupmu. Mereka memutuskan untuk tidak membiarkan Anda <kanji>lulus</kanji>. <reading>Jadi, dua</reading> (そつ) tahun lagi sampai kamu bisa lulus, sepertinya. Jadi dua tahun lagi?! Hanya karena lupa tutupnya? Omong kosong!')
    RETURNING id INTO k_897_lulus;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '協', 'kerja-sama', 14, 11, 'Di samping <radical>cross</radical> kita menggabungkan <radical>power</radical> <radical>power</radical> <radical>power</radical> kita sehingga kita memiliki <kanji>kerjasama</kanji>. Dan dengan gabungan kekuatan kita, kita menjadi lebih kuat dari sebelumnya, mengangkat salib di atas kepala kita!', 'Kekuatan kerja sama paling nyata di <reading>きょう</reading>と. Ketika penjajah menyerang, ketika penduduk kota ingin memberontak, ketika ada kucing di atas pohon, orang-orang menggabungkan kekuatan mereka dari seluruh penjuru Jepang dan menyeberang ke きょうと untuk menghentikan kegilaan melalui kerja sama.')
    RETURNING id INTO k_898_kerja_sama;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '参', 'ikut', 14, 12, 'Anda mencoba untuk menjadi <radical>pribadi</radikal>, namun karena <radikal>besar</radikal> <radikal>rambut</radikal> Anda, Anda akhirnya harus <kanji>berpartisipasi</kanji> dalam segala hal. Dapatkah Anda membayangkan orang-orang meminta sukarelawan atau semacamnya, dan Anda berusaha terlihat tidak mencolok dengan rambut besar Anda? Tentu saja mereka akan memperhatikan Anda dan membuat Anda berpartisipasi.', 'Tahukah Anda siapa yang berambut besar dan suka <kanji>berpartisipasi</kanji> dalam segala hal? <read>San</reading>ta-san (さん)! Ya, rambutnya lebih besar di bagian bawah (yaitu janggut) daripada apa pun yang ada di kepala Anda, tapi rambut tetaplah rambut. Dan dia berpartisipasi dalam pemberian hadiah di setiap rumah di dunia! Melihat? Rambut besar = partisipasi!')
    RETURNING id INTO k_899_ikut;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '周', 'lingkar', 14, 13, 'Radikal <radikal>lingkar</radikal> dan kanji <kanji>keliling</kanji> adalah sama!', 'Latih cara mengukur <kanji>keliling</kanji> suatu benda dengan menggunakan <reading>sepatu</reading> (しゅう) Anda. Sepatumu berbentuk bulat, dan gratis. Maksudku, itu ada di kakimu.')
    RETURNING id INTO k_900_lingkar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '囲', 'mengelilingi', 14, 14, '<radical>Mulut</radikal> dari <radikal>sumur</radikal> akan <kanji>mengelilingi</kanji> Anda jika Anda terjatuh ke dalamnya. Mulut sumur adalah bukaan dari sumur itu, dan bila engkau jatuh ke dalam sumur itu, maka mulut sumur dan bagian sumur lainnya akan mengelilingimu.', 'Dinding sumur <kanji>mengelilingi</kanji> Anda saat Anda melihat ke arah mulut sekali lagi. Kali ini Anda melihat <read>ea</reading>gle (い) terbang di atas. Anda memanggil elang untuk menyelamatkan Anda dan elang itu datang menukik ke dalam sumur dan menerbangkan Anda ke tempat yang aman. Elang yang bagus!')
    RETURNING id INTO k_901_mengelilingi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '固', 'keras', 14, 15, 'Sebuah <radical>mulut</radikal> yang <radikal>tua</radikal> akan menjadi <kanji>keras</kanji>.', 'Anda menyentuh mulut <kanji>keras</kanji> lelaki tua itu dan mulut itu hancur, memperlihatkan wajah <reading>子</reading> (こ) di dalamnya.')
    RETURNING id INTO k_902_keras;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '季', 'musim', 14, 16, '<radikal>anak</radikal> dari <radical>biji-bijian</radikal> akan tumbuh seiring dengan <kanji>musim</kanji>. Di musim semi, gandum lahir, tumbuh di musim panas, dipanen di musim gugur, dan mati di musim dingin.', 'Semua <kanji>musim</kanji> memiliki <baca>kunci</reading> (き) khusus masing-masing. Saat mereka berubah, kunci musim itu muncul dan membuka langkah selanjutnya dalam kehidupan biji-bijian tersebut.')
    RETURNING id INTO k_903_musim;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '完', 'sempurna', 14, 17, '<radikal>atap</radikal> yang menjadi <radikal>asal</radikal> dari semua atap adalah <kanji>sempurna</kanji>. Itu tinggi dan lebar sehingga bisa memuat dan melindungi semua orang. Dan dimensinya juga sempurna.', 'Atap <kanji>sempurna</kanji> ini dipesan oleh <reading>Khan</reading> Genghis (かん). Kami mengumpulkan semua tukang kayu, pembuat rumah, dan pekerja konstruksi yang telah dia taklukkan dan menugaskan mereka untuk membuat atap pertama, tapi hanya jika mereka membuatnya benar-benar sempurna.')
    RETURNING id INTO k_904_sempurna;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '希', 'mengharapkan', 14, 18, 'Ada <radical>harta</radical> di atas <radical>narwhal</radical> yang mengenakan <radical>handuk</radical> yang akan mengabulkan <kanji>keinginan</kanji> terbesar Anda.', 'Untuk membuka harta karun dan mendapatkan <kanji>keinginan</kanji> Anda, Anda memerlukan <reading>key</reading> (き). Narwhal tahu di mana ia disembunyikan, jadi Anda harus meyakinkannya untuk memberi tahu Anda di mana kuncinya.')
    RETURNING id INTO k_905_mengharapkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '念', 'pikiran', 14, 19, 'Jika Anda hidup di masa <radikal>sekarang</radikal>, kemungkinan besar <radikal>hati</radikal> Anda mengendalikan proses <kanji>pikiran</kanji> Anda. Anda tidak punya waktu untuk berpikir dengan otak Anda, Anda membutuhkan jawaban sekarang sehingga Anda menggunakan hati Anda untuk mengambil keputusan dan proses berpikir.', 'Anda hidup di masa sekarang dan membiarkan hati Anda mengendalikan semua <kanji>pikiran</kanji> Anda. Mengapa kamu mengikuti kata hatimu? Anda menyadari bahwa Anda hanya mempunyai satu <reading>年</reading> (ねん) untuk hidup, jadi Anda harus hidup untuk saat ini.')
    RETURNING id INTO k_906_pikiran;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '折', 'melipat', 14, 20, 'Jika <radical>jari</radical> Anda cukup kuat, Anda dapat mengambil <radical>kapak</radikal> dan <kanji>melipat</kanji> menjadi dua. Namun hati-hati jangan <kanji>membengkokkan</kanji> terlalu jauh, atau Anda bisa <kanji>mematahkan</kanji>!', 'Sayangnya, saat Anda <kanji>melipat</kanji> sumbu-sumbu ini menjadi dua, Anda menyadari bahwa sumbu-sumbu tersebut terdiri dari <read>set</reading> (せつ), sehingga jumlahnya menjadi dua kali lipat sumbu yang Anda perkirakan. Sebagai kompensasinya, Anda juga mulai melipatnya menjadi beberapa set.')
    RETURNING id INTO k_907_melipat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '望', 'harapan', 14, 21, 'Menyebabkan <radical>kematian</radikal> di setiap kesempatan, <radikal>bulan</radikal> <radikal>raja</radikal> duduk di dalam bulannya, bersiap untuk menyebabkan kematian pada apa pun yang terlihat. Kedengarannya sangat mirip Death Star dari film tertentu. Salah satunya adalah "Star Wars: <kanji>Harapan</kanji> Baru".', 'Nama <kanji>Harapan</kanji> Baru, seperti yang kita semua tahu, berasal dari akhir di mana putra raja bulan mengirimkan bola <reading>busur</reading>ling (ぼう) ke lubang kecil itu dan menjatuhkannya dari langit.')
    RETURNING id INTO k_908_harapan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '材', 'kayu', 14, 22, '<radical>pohon</radikal> dengan <radical>bakat</radikal> bisa menjadi <kanji>kayu</kanji>. Tidak semua pohon bisa melakukan hal ini. Hanya orang-orang berbakat yang mampu mengubah dirinya menjadi kayu atau <kanji>bahan</kanji>, untuk digunakan dalam jutaan hal berbeda.', 'Pohon bisa diubah menjadi segala macam benda, tapi pohon ini ingin menggunakan <kanji>kayu</kanji> dan <kanji>bahan</kanji> untuk membuat <reading>xy</reading>lophone (ざい). Ini adalah instrumen yang paling sulit untuk dibuat, jadi cocok dengan tingkat bakat pohon ini!')
    RETURNING id INTO k_909_kayu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '束', 'bundel', 14, 23, '<radikal>bundel</radikal> radikal dan <kanji>bundel</kanji> kanji adalah sama!', 'Anda harus selalu <kanji>menyambungkan</kanji> <reading>kaus kaki</reading> (そく) Anda. Jika tidak, ada kemungkinan 100% Anda akan kehilangan semua yang tersisa.')
    RETURNING id INTO k_910_bundel;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '松', 'pinus', 14, 24, 'Saat memanjat <radical>pohon</radikal> di <radical>publik</radikal>, yang terbaik adalah memilih <kanji>pinus</kanji>. Pohon pinus memberikan cakupan paling luas, sehingga Anda dapat bersembunyi, bahkan di tempat umum.', 'Jika Anda terjatuh, seseorang telah meletakkan <reading>matras</reading> (まつ) di sekitar pangkal pohon <kanji>pinus</kanji>. Dengan demikian, Anda akan mendarat di atas matras jika sesuatu yang tidak diinginkan terjadi.')
    RETURNING id INTO k_911_pinus;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '残', 'sisa', 14, 25, '<radical>Yakuza</radical> <radical>bar</radical> hampir tidak ada. <kanji>Sisanya</kanji> bahkan tidak ada di Jepang.', '<kanji>sisanya</kanji> dari bar yakuza tidak ada di Jepang. Anehnya, semuanya ada di <read>Zan</reading>zibar (ざん).')
    RETURNING id INTO k_912_sisa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '的', 'target', 14, 26, 'Seorang pria <radikal>kulit putih</radikal> melompat ke dalam <radikal>kolam</radikal> dengan <kanji>target</kanji> dicat di bagian bawah. Tentu saja dia mengincar sasarannya.

Kanji ini juga bisa berarti <kanji>-al</kanji>, seperti pada akhiran beberapa kata sifat bahasa Inggris. Anda tahu, sepertinya kolam itu buatan. Atau mengecat target di bawah sana bukanlah hal yang praktis. -al semacam itu.', 'Pria berkulit putih ini adalah seorang <reading>teknisi</reading> (てき) yang hebat sehingga dia memiliki peningkatan elektronik yang memastikan dia mencapai <kanji>target</kanji>. Menjadi seorang teknisi memiliki kelebihan.')
    RETURNING id INTO k_914_target;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '約', 'janji', 14, 27, 'Kamu mengikat <radical>benang</radikal> di jarimu sebelum melompat ke dalam <radikal>kolam</radikal> untuk mengingatkan dirimu akan <kanji>janji</kanji> yang kamu buat kepada ibumu. Utas mewakili janji yang Anda buat untuk memotong rumput setelah Anda selesai berenang di kolam.', 'Setelah kamu keluar dari kolam, kamu menepati <kanji>janji</kanji> yang kamu buat kepada ibumu. Jadi, Anda menggunakan mesin pemotong rumput bertenaga <reading>yak</reading> (やく) dan memangkas rumputnya. Ya, mesin pemotong rumputmu ditarik oleh seekor yak. Ini sangat efisien.')
    RETURNING id INTO k_915_janji;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '芸', 'seni', 14, 28, 'Anda meletakkan <radical>bunga</radical> di <radical>awan</radical> dan menyebutnya <kanji>seni</kanji>. Tidak semua orang setuju bahwa seni awan bunga Anda sebenarnya adalah seni, tetapi Anda tahu itu seni.', '<kanji>karya seni</kanji> indah Anda akan dipajang di klub <reading>gay</reading> (げい). Bayangkan kebanggaan yang Anda rasakan saat karya seni Anda dipamerkan.')
    RETURNING id INTO k_916_seni;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '基', 'dasar', 14, 29, '<radical>Kepiting</radical> yang berada di <radical>tanah</radical> bisa menjadi <kanji>fondasi</kanji> yang bagus untuk pondok tepi pantai. Letaknya tepat di tepi pantai, tempat semua kepiting menggali lubangnya di tanah. Namun seiring bertambahnya usia dan kematian, tubuh mereka membentuk dasar yang kuat. Cocok untuk pondasi bangunan seperti ini!', 'Ingat, <kanji>fondasi</kanji> yang baik adalah <reading>kunci</reading> (き) menuju rumah yang baik. Tidak, secara harfiah. Anda harus menggunakan sepotong pondasi untuk membuat kunci rumah Anda.')
    RETURNING id INTO k_917_dasar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '性', 'jenis-kelamin', 14, 30, 'Setiap orang memiliki <radikal>jiwa</radikal> dalam <radikal>kehidupan</radikal> mereka, dan jiwa tersebut membentuk <kanji>gender</kanji> mereka. Ini bukan hanya tentang bagian tubuh — ini tentang apa yang ada di dalamnya. Pada akhirnya, <kanji> sifat</kanji> seseoranglah yang benar-benar penting.', 'Setelah Anda memutuskan apa <kanji>gender</kanji> Anda, seseorang datang ke rumah Anda dan meletakkan <reading>sa</reading>ber (せい) di bahu Anda. "Inilah <kanji>sifat</kanji>mu sekarang," kata mereka sambil mengangkat pedangnya. Ini resmi! Itu ada di semua surat kabar, ada parade, dan semua orang menepuk punggung Anda. Terima kasih, pedang gender!')
    RETURNING id INTO k_918_jenis_kelamin;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '格', 'status', 14, 31, 'Jika <radical>pohon</radical> ingin <radical>mencium</radical> Anda, itu adalah tanda <kanji>status</kanji> Anda. Hanya seseorang dengan status tinggi yang cukup layak untuk menerima ciuman lembut namun lembut dari sebatang pohon. Pohon tidak mencium sembarang orang, lho.', 'Cara terbaik untuk meyakinkan pohon tentang <kanji>status</kanji> Anda adalah dengan mengatakan "cock-a-doodle-doo" padanya, seperti <reading>ayam</reading> (かく), yaitu ayam jantan. Pohon benar-benar menempatkan banyak status pada kemampuan bersuara seperti ayam berkokok.')
    RETURNING id INTO k_920_status;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '能', 'kemampuan', 14, 32, 'Di tempat <radical>pribadi</radical> di <radical>bulan</radical>, Anda menyembunyikan dua <radical>sendok</radical> yang memberi Anda <kanji>kemampuan</kanji> khusus. Itu adalah kemampuan untuk memprediksi masa depan! Sendok bulan pribadi mencerminkan pengetahuan tentang waktu dan ruang ke dalam otak Anda. Itu kemampuan yang keren!', '<kanji>Kemampuan</kanji> untuk memprediksi masa depan membuat Anda terkenal dan sekarang semua orang tahu nama Anda: <reading>Tidak</reading>stradamus (のう)! Dan sekarang orang-orang mengetahui nama dan kemampuan khusus Anda, semua orang akan menyukai Anda!')
    RETURNING id INTO k_921_kemampuan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '骨', 'tulang', 14, 33, 'Jika Anda memiliki <radical>kumis</radikal> dan <radikal>dahi</radikal> Anda terbentur pada <radikal>bulan</radikal>, Anda mungkin akan mematahkan <kanji>tulang</kanji>. Oke, jadi tidak terlalu menjadi masalah jika Anda memiliki kumis, tetapi jika Anda melakukan perjalanan cukup cepat untuk sampai ke bulan, Anda pasti akan patah tulang jika menabraknya.', 'Luar angkasa dingin, dan jika Anda bepergian ke bulan, Anda akan memerlukan banyak <reading>mantel</reading> (こつ). Semua mantel ini akan membuat Anda tetap hangat, bahkan jika <kanji>tulang</kanji> dahi Anda patah.')
    RETURNING id INTO k_924_tulang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '妥', 'lembut', 14, 34, 'Seorang <radikal>wanita</radikal> yang mengenakan <radical></radikal> sedang berjalan di punggung seseorang, tetapi dia tidak ingin menyakitinya, jadi dia harus sangat <kanji>lembut</kanji>. Cleatnya tajam dan runcing, dan tidak dirancang untuk berjalan di belakang, jadi dia bersikap ekstra lembut saat ini.', 'Sebenarnya, orang yang bersikap <kanji>lembut</kanji> dengannya adalah <reading>da</reading>d (だ). Tidak ada seorang pun yang ingin menyakiti ayahnya, terutama jika dia meminta Anda berjalan dengan lembut di punggungnya sebagai cara untuk memijatnya.')
    RETURNING id INTO k_925_lembut;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '雰', 'suasana', 14, 35, '<radical>Hujan</radical> merupakan salah satu <radical>bagian</radical> dari ini, dan sisanya adalah udara atau semacamnya. Saya membayangkan ini adalah apa yang orang pikirkan tentang <kanji>atmosfer</kanji> ribuan tahun yang lalu.', 'Ternyata, mempelajari <kanji>atmosfer</kanji> itu <membaca>menyenangkan</reading> (ふん)!')
    RETURNING id INTO k_926_suasana;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '頑', 'keras-kepala', 14, 36, '<radical>asal</radical> dari <radical>geoduck</radical> cukup <kanji>keras kepala</kanji>. Ras geoduck sangat keras kepala sehingga menolak berevolusi menjadi hewan yang masuk akal. Oleh karena itu, asal muasal geoduck adalah sifat keras kepala.', 'Anda tahu siapa lagi yang <kanji>keras kepala</kanji>? <read>Gan</reading>dhi (がん). Gandhi percaya pada perlawanan tanpa kekerasan dan dia cukup keras kepala dalam hal itu.')
    RETURNING id INTO k_927_keras_kepala;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '閉', 'tertutup', 14, 37, '<radical>Gerbang</radikal> menuju <radical>bakat</radikal> kini <kanji>ditutup</kanji>. Faktanya, pintu menuju bakat selalu tertutup. Bukan berarti siapa pun bisa masuk begitu saja dan mendapatkan bakat. Anda harus bekerja untuk itu! Anda harus bekerja keras untuk melewati gerbang tertutup menuju bakat!', 'Di luar gerbang bakat yang selalu <kanji>tertutup</kanji>, <reading>jerami</reading> (へい) ditumpuk untuk membuat tempat tidur bagi orang-orang yang masih mencoba masuk. Entah berapa lama mereka akan berada di sana di luar gerbang yang tertutup, tidur di jerami, tapi mereka semua bekerja keras untuk menjadi berbakat.')
    RETURNING id INTO k_1514_tertutup;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '井', 'dengan-baik', 14, 38, 'Kanji <radikal>baik</radikal> dan kanji <kanji>baik</kanji> adalah sama.', 'Setiap kali Anda pergi ke kota <kanji>baik</kanji>, ada <reading>ea</reading>gle (い) raksasa yang bersembunyi di dalam, menunggu Anda muncul.')
    RETURNING id INTO k_1918_dengan_baik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '苺', 'stroberi', 14, 39, 'Jenis <radical>bunga</radical> terbaik untuk tumbuh di <radical>jendela</radical> Anda? <kanji>Strawberry</kanji>, tentu saja. Ya, ada bunga stroberi — sebenarnya bunga itulah yang berubah menjadi stroberi lho. Dan mereka sempurna sebagai bunga jendela karena membutuhkan banyak cahaya. Itu sebabnya semua bunga jendela <em>Anda</em> adalah stroberi.', 'Percaya atau tidak, <kanji>strawberry</kanji> Anda adalah satu-satunya obat untuk <reading>gatal Go</reading>dzilla (いちご).')
    RETURNING id INTO k_8963_stroberi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '狼', 'serigala', 14, 40, 'Salah satu <radical>hewan</radikal> yang sangat <radikal>baik</radikal> adalah <kanji>serigala</kanji>. Serigala punya reputasi buruk, tapi sebenarnya mereka adalah hewan yang sangat, sangat baik.', '<kanji>serigala</kanji> mungkin bagus, tapi jika kamu bertemu dengannya, yang bisa kamu lakukan hanyalah berteriak <read>Oh 神</reading>!” (おおかみ).')
    RETURNING id INTO k_8967_serigala;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_888_meminta, 'Meminta', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_896_contoh, 'Contoh', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_897_lulus, 'Lulus', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_898_kerja_sama, 'Kerja sama', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_899_ikut, 'Ikut', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_900_lingkar, 'Lingkar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_901_mengelilingi, 'Mengelilingi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_902_keras, 'Keras', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_903_musim, 'Musim', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_904_sempurna, 'Sempurna', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_905_mengharapkan, 'Mengharapkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_906_pikiran, 'Pikiran', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_907_melipat, 'Melipat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_907_melipat, 'Membengkokkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_907_melipat, 'Merusak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_908_harapan, 'Harapan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_909_kayu, 'Kayu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_909_kayu, 'Bahan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_909_kayu, 'Kayu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_910_bundel, 'Bundel', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_911_pinus, 'Pinus', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_911_pinus, 'Pohon pinus', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_912_sisa, 'Sisa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_914_target, 'Target', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_914_target, '-al', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_915_janji, 'Janji', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_916_seni, 'Seni', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_916_seni, 'Pertunjukan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_917_dasar, 'Dasar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_918_jenis_kelamin, 'Jenis kelamin', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_918_jenis_kelamin, 'Alam', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_918_jenis_kelamin, 'Seks', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_920_status, 'Status', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_921_kemampuan, 'Kemampuan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_924_tulang, 'Tulang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_925_lembut, 'Lembut', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_926_suasana, 'Suasana', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_927_keras_kepala, 'Keras kepala', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1514_tertutup, 'Tertutup', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1514_tertutup, 'Menutup', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1514_tertutup, 'Penutup', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1918_dengan_baik, 'Dengan baik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_8963_stroberi, 'Stroberi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_8967_serigala, 'Serigala', true, true);

  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_888_meminta, 'がん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_888_meminta, 'ねが', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_888_meminta, 'ねがい', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_896_contoh, 'れい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_896_contoh, 'たと', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_897_lulus, 'そつ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_898_kerja_sama, 'きょう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_899_ikut, 'さん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_899_ikut, 'しん', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_899_ikut, 'まい', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_900_lingkar, 'しゅう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_900_lingkar, 'まわ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_901_mengelilingi, 'い', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_901_mengelilingi, 'かこ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_902_keras, 'こ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_902_keras, 'かた', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_903_musim, 'き', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_904_sempurna, 'かん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_905_mengharapkan, 'き', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_905_mengharapkan, 'まれ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_906_pikiran, 'ねん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_907_melipat, 'せつ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_907_melipat, 'お', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_907_melipat, 'おり', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_908_harapan, 'ぼう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_908_harapan, 'のぞ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_909_kayu, 'ざい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_910_bundel, 'そく', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_910_bundel, 'たば', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_911_pinus, 'まつ', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_911_pinus, 'しょう', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_912_sisa, 'ざん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_912_sisa, 'のこ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_914_target, 'てき', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_914_target, 'まと', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_915_janji, 'やく', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_916_seni, 'げい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_917_dasar, 'き', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_917_dasar, 'もと', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_918_jenis_kelamin, 'せい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_918_jenis_kelamin, 'しょう', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_918_jenis_kelamin, 'さが', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_920_status, 'かく', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_921_kemampuan, 'のう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_924_tulang, 'こつ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_924_tulang, 'ほね', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_925_lembut, 'だ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_926_suasana, 'ふん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_927_keras_kepala, 'がん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_927_keras_kepala, 'かたく', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1514_tertutup, 'へい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1514_tertutup, 'し', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1514_tertutup, 'と', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1918_dengan_baik, 'い', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1918_dengan_baik, 'しょう', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1918_dengan_baik, 'せい', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_8963_stroberi, 'いちご', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_8967_serigala, 'おおかみ', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_8967_serigala, 'ろう', 'onyomi', false, false);

  -- 3. VOCABULARIES
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '場合', 'kasus', 14, 41, '<kanji>lokasi</kanji> <kanji>setelan</kanji> apa yang terbaik untuk situasi tersebut? Hal ini selalu bergantung pada <vocabulary>kasus</vocabulary> atau <vocabulary>keadaan</vocabulary>. Anda tidak dapat mengetahui kesesuaian lokasi sampai Anda mengetahui semua fakta mengenai keadaannya.', 'Kata ini menggunakan bacaan kun''yomi untuk kedua kanjinya. Anda tidak mempelajari pembacaan ini dengan kanji, jadi inilah mnemonik untuk membantu Anda:

Ada beberapa <vocabulary>case</vocabulary> yang membuat Anda ingin <reading>baa</reading> (ば) sambil melontarkan <reading>eye</reading>s (あい) pada seseorang. Dalam <vocabulary>keadaan</vocabulary> seekor domba yang mencari cinta, hal ini mungkin dapat diterima, namun dalam <vocabulary>situasi</vocabulary> lainnya hal tersebut mungkin bukan perilaku yang pantas.', 'Kasus, Keadaan, Situasi')
    RETURNING id INTO v_3034_kasus;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '待たせる', 'untuk-membuat-seseorang-menunggu', 14, 42, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>tunggu</kanji> jadi kata ini ada hubungannya dengan menunggu. Gunakan たせ sebagai petunjuk. Seseorang "melempar" bola ke dalam selokan, dan kemudian mereka harus menemukannya. Mereka membuatmu menunggu sampai mereka mendapatkan bolanya juga, padahal itu omong kosong yang murah. Merasa kesal tentang hal ini. Itu akan membantu Anda mengingat bahwa ini berarti <vocabulary>membuat seseorang menunggu</vocabulary> dan <vocabulary>membuat seseorang menunggu</vocabulary>.', 'Anda mempelajari bacaan ini dari 待つ, selamat!', 'Untuk Membuat Seseorang Menunggu, Untuk Membuat Seseorang Menunggu')
    RETURNING id INTO v_3129_untuk_membuat_seseorang_menunggu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '仲間', 'kawan', 14, 43, '<kanji>hubungan</kanji> <kanji>interval</kanji> sangat singkat antara Anda dan <vocabulary>kawan</vocabulary> Anda. Kalian adalah <vocabulary>pendamping</vocabulary> yang telah melalui suka dan duka bersama, jadi tidak ada jarak di antara kalian.

仲間 adalah salah satu kata dalam bahasa Jepang yang sulit diterjemahkan langsung ke dalam bahasa Inggris. Itu adalah kata hangat yang mengacu pada orang-orang yang berbagi sesuatu dengan Anda, seperti pekerjaan, hobi, tujuan, atau bahkan perjuangan. 仲間 belum tentu merupakan teman dalam artian "minum kopi dan ngobrol", tetapi mereka adalah orang-orang yang telah membangun ikatan kuat dan istimewa dengan Anda berdasarkan pengalaman bersama atau tujuan.', 'Anda pasti tahu bacaan kedua kanji ini. 仲 menggunakan bacaan yang sama seperti biasanya, dan 間 menggunakan bacaan ま, yang kamu pelajari dengan 間もなく. Karena 間 memiliki beberapa bacaan yang berbeda, berikut adalah mnemonik untuk membantu Anda mengingat untuk menggunakan ま:

Pikirkan semua teman Anda dalam hidup Anda. Bayangkan salah satunya adalah <reading>Ma</reading> (ま) Anda. Dia anggota kru bajak laut Anda, dan bajak laut yang cukup hebat.', 'Kawan, Pendamping')
    RETURNING id INTO v_3241_kawan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '祭り', 'festival', 14, 44, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.

祭り mengacu pada festival Jepang — biasanya festival lokal dan musiman yang terhubung dengan kuil dan dipenuhi dengan kedai makanan, keramaian, dan hiruk pikuk perayaan. Perhatikan bahwa lebih umum untuk menambahkan sebutan kehormatan お dan mengucapkan お祭り, karena akan terdengar agak kasar tanpanya.', 'Jika kamu ingin mengadakan <vocabulary>festival</vocabulary>, kamu sebaiknya menyiapkan beberapa <reading>mats</reading> (まつ) terlebih dahulu. Semua kendaraan festival, kios makanan, dan lalu lintas pejalan kaki dapat mengacaukan jalan jika Anda tidak meletakkan tikar untuk melindunginya.

Jika lebih suka singkatnya, seperti pada nama festival, judul, atau tanda, kata ini dapat ditulis tanpa okurigana sebagai 祭 namun tetap dibaca sebagai まつり.', 'Festival')
    RETURNING id INTO v_3345_festival;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '着物', 'kimono', 14, 45, '<kanji>barang</kanji> yang Anda <kanji>pakai</kanji> adalah <vocabulary>pakaian</vocabulary> Anda. Oh, dan pakaian Jepang juga diperhitungkan. Kita sedang membicarakan <vocabulary>kimono</vocabulary>. Dahulu kala, ini hanya bisa disebut <vocabulary>pakaian</vocabulary> karena memang itulah yang dikenakan semua orang, namun saat ini kita tahu bahwa kimono tersebut khusus untuk kimono stereotip yang Anda pikirkan ketika berpikir "Jepang".', 'Pembacaannya agak aneh menggunakan bacaan kun''yomi. Untungnya, kami sudah mengajarimu hal ini, jadi kenakan kimonomu dan bersantailah sebentar di 温泉.', 'Kimono, Pakaian')
    RETURNING id INTO v_3395_kimono;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '下着', 'pakaian-dalam', 14, 46, 'Pakaian yang <kanji>pakai</kanji> <kanji>di bawah</kanji> pakaian Anda yang lain. Itu adalah <vocabulary>pakaian dalam</vocabulary> Anda. Anda memang memakai pakaian dalam, kan?', 'Bacaan yang satu ini seluruhnya adalah bacaan kosakata kun''yomi, namun Anda harus mengetahuinya sekarang. 着 menggunakan bacaan yang kamu pelajari dengan 着る, tetapi kata ini menggunakan rendaku yang mengganggu, jadi ingatlah bahwa き menjadi ぎ di sini.', 'Pakaian dalam')
    RETURNING id INTO v_3396_pakaian_dalam;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '水着', 'baju-renang', 14, 47, '<kanji>Air</kanji> <kanji>pakaian</kanji> adalah <vocabulary>baju renang</vocabulary>, <vocabulary>baju renang</vocabulary>, atau <vocabulary>pakaian renang</vocabulary>.', 'Bacaan yang satu ini seluruhnya adalah bacaan kosakata kun''yomi, namun Anda harus mengetahuinya sekarang. 着 menggunakan bacaan yang kamu pelajari dengan kosakata 着る, namun kata ini menggunakan rendaku yang mengganggu, jadi ingatlah bahwa き menjadi ぎ di sini.', 'Baju renang, Baju Renang, Pakaian renang')
    RETURNING id INTO v_3397_baju_renang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '間に合う', 'tepat-waktu-untuk', 14, 48, 'Ada <kanji>interval</kanji> (waktu) yang perlu Anda "sesuaikan" (合う). Untuk menyesuaikan interval tersebut, Anda harus tiba di sana sebelum waktu yang dimaksud. Itu sebabnya kata ini berarti <vocabulary>tepat waktu untuk</vocabulary>, <vocabulary>untuk datang tepat waktu</vocabulary> atau <vocabulary>tepat waktu untuk</vocabulary>.', 'Anda mempelajari bacaan ini untuk 間 ketika Anda mempelajari 間もなく. Dan bacaan untuk 合う hanyalah pembacaan kata 合う. Jika Anda mengingat keduanya, Anda pasti ingat kata ini!', 'Tepat Waktu Untuk, Agar Tepat Waktu, Agar Tepat Waktu')
    RETURNING id INTO v_3489_tepat_waktu_untuk;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '知り合い', 'kenalan', 14, 49, 'Anda mungkin pernah melihat kata 知る dan 合う sekarang. Ini adalah seseorang yang Anda "kenal" karena Anda pernah "bertemu" sebelumnya, tapi itu saja. Anda belum begitu mengenal mereka dengan baik, Anda baru bertemu mereka beberapa kali sehingga Anda tahu siapa mereka. Orang ini adalah <vocabulary>kenalan</vocabulary>.', 'Bacaannya adalah 知る dan 合う. Selama Anda mengetahui kata-kata itu, Anda pasti bisa membaca yang ini juga.', 'Kenalan')
    RETURNING id INTO v_3497_kenalan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '待ちぼうけ', 'berdiri', 14, 50, 'Dengan <vocabulary>待ち</vocabulary> Anda tahu bahwa Anda sedang menunggu, tapi apa itu <vocabulary>ぼうけ</vocabulary>? Ternyata itu versi panjang dari ボケ yang artinya bodoh. Pada dasarnya, dalam hal ini Anda adalah seorang idiot yang menunggu. Mengapa? karena kamu <vocabulary>berdiri</vocabulary>.', 'Pembacaan 待ち berasal langsung dari 待つ. Anda sudah tahu latihannya sekarang.', 'Berdiri, Menunggu dengan Sia-sia')
    RETURNING id INTO v_3503_berdiri;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '感じ', 'merasa', 14, 51, 'Ini adalah versi kata benda dari <kanji>perasaan</kanji> kanji. Apa itu? Ini juga merupakan <vocabulary>perasaan</vocabulary>.

感じ adalah kata biasa yang berbicara tentang perasaan umum, <vocabulary>kesan</vocabulary>, atau getaran yang Anda dapatkan dari sesuatu. Anda akan mendengarnya di mana-mana — いい感じ (suasana yang menyenangkan), そんな感じ (sesuatu seperti itu), atau どんな感じ? (seperti apa?).', 'Jika kamu bisa membaca 感じる, kamu seharusnya bisa membaca ini juga. Kalimat ini menggunakan bacaan yang sama — hanya tanpa る.', 'Merasa, Kesan, Nalar')
    RETURNING id INTO v_3585_merasa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '皆様', 'setiap-orang', 14, 52, '<kanji>Semuanya</kanji> (<kanji>nama formal ender</kanji>). Ini hanyalah cara sopan untuk mengatakan <vocabulary>semua orang</vocabulary> (dan Anda ingin bersikap sopan kepada semua orang, karena semua orang > Anda).', 'Pembacaan kedua kanji di sini sama dengan yang Anda pelajari dengan kanjinya. Semua orang bisa bernapas lebih lega sekarang.', 'Setiap orang, Semua, Semua orang')
    RETURNING id INTO v_3602_setiap_orang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', 'お願いします', 'tolong-bantu-saya', 14, 53, 'Ini adalah kata rumit yang tidak memiliki terjemahan yang bagus. Cara terbaik yang pernah saya lihat dalam hal menyampaikan makna adalah <vocabulary>tolong</vocabulary> dan <vocabulary>tolong bantu saya</vocabulary>. Saat Anda mengucapkan kata ini, Anda seperti mengatakan "tolong bantu saya dan saya mengandalkan Anda dan Anda juga luar biasa." Bagaimanapun, <vocabulary>please</vocabulary> adalah cara yang cukup bagus untuk melakukannya. Jadi, ketika Anda melihat kata ini, Anda akan melihat ada kanji <kanji>permintaan</kanji> di dalamnya. Anda bisa menebak Anda meminta sesuatu. Benda apa itu? Ini membantu (<vocabulary>tolong bantu saya</vocabulary>) dan Anda juga memintanya dengan sangat baik (<vocabulary>tolong</vocabulary>).', 'Anda meminta bantuan dengan mengatakan <vocabulary>tolong bantu saya</vocabulary>, dan orang tersebut memang berusaha membantu Anda... namun jumlah yang mereka berikan untuk Anda sangat <read>neg</reading>sehingga hampir tidak melakukan apa pun untuk membantu Anda sama sekali. Tolong coba bantu saya lagi, kali ini lebih baik?', 'Tolong Bantu Saya, Silakan, Jika Anda Bersikap Baik')
    RETURNING id INTO v_3637_tolong_bantu_saya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '本館', 'gedung-utama', 14, 54, 'Salah satu arti 本 adalah <kanji>main</kanji> (yang kami gunakan di sini). <kanji>utama</kanji> <kanji>gedung publik</kanji> adalah <vocabulary>gedung utama</vocabulary>.

Kadang-kadang 本館 juga bisa berarti <kosa kata>gedung ini</vocabulary>, seperti di bangunan tempat Anda berada. Saya rasa bangunan apa pun yang Anda tempati akan menjadi bangunan utama bagi Anda, bukan?', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.

Bagi Anda pembelajar tingkat lanjut di luar sana, Anda mungkin ingin mengetahui bahwa mengucapkan kata seperti Kyoko memberi Anda arti <vocabulary>gedung utama</vocabulary>, sementara mengucapkannya seperti Kenichi memberi Anda arti <vocabulary>gedung ini</vocabulary>! Bukankah aksen nada itu menyenangkan? Namun Anda mungkin tidak perlu mengkhawatirkan hal ini — petunjuk konteks sudah cukup untuk memberi tahu Anda makna mana yang digunakan.', 'Gedung Utama, Gedung ini')
    RETURNING id INTO v_3642_gedung_utama;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '消しゴム', 'penghapus', 14, 55, 'Anda pernah melihat kata 消す, saya harap. Ini berasal dari itu. Anda memadamkan sesuatu dengan ゴム. ゴム adalah kata untuk benda bergetah atau kenyal. Jadi, ini adalah benda bergetah yang memadamkan sesuatu. Ini adalah <vocabulary>penghapus</vocabulary> yang menghilangkan bekas pensil.', 'Bacaannya berasal dari 消す, jadi pastikan kamu tahu kata itu agar bisa membaca yang ini!', 'Penghapus, Karet')
    RETURNING id INTO v_3650_penghapus;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '悪気', 'niat-jahat', 14, 56, 'Seseorang dengan <kanji>energi</kanji> buruk</kanji> adalah seseorang yang memiliki <vocabulary>niat jahat</vocabulary>, <vocabulary>kedengkian</vocabulary>, atau <vocabulary>niat buruk</vocabulary>. Semoga Anda tidak memiliki terlalu banyak 悪気.', 'Pembacaannya sendiri memiliki banyak 悪気 dengan semua pengecualian yang dimilikinya. Bagian 悪 dibaca seperti 悪い. Lalu, 気 adalah rendaku. Sungguh bacaan yang jahat. Coba pikirkan, "bacaan paling jahat apa yang bisa saya temukan?" ketika Anda melihat kata ini. Maka semoga Anda bisa membacanya.', 'Niat Jahat, Kebencian, Sakit hati')
    RETURNING id INTO v_3651_niat_jahat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '山登り', 'pendakian-gunung', 14, 57, 'Mudah-mudahan Anda telah melihat bagaimana 登る berarti "mendaki". Jadi, jika Anda <kanji>mendaki</kanji>mendaki <kanji>gunung</kanji>, apa itu? Itu adalah <vocabulary>mendaki gunung</vocabulary>.

Jika Anda bertanya-tanya apa perbedaan antara ini dan 登山, pada dasarnya keduanya sama. Perbedaan utamanya adalah 山登り sedikit kurang formal, dan umumnya digunakan sebagai kata yang berdiri sendiri, sedangkan 登山 dapat digunakan dalam kata majemuk seperti 登山家 (pendaki gunung).', 'Pembacaannya berasal dari penggabungan 山 dan 登る menjadi satu kata, 山登り. Jika anda mengetahui bacaan kedua kata tersebut maka anda mengetahui bacaan kata ini juga.', 'Pendakian Gunung')
    RETURNING id INTO v_3652_pendakian_gunung;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '流行語', 'frase-populer', 14, 58, 'Anda tahu bahwa 流行 berarti "tren", jadi "tren" <kanji>bahasa</kanji> berarti <vocabulary>frasa populer</vocabulary>. Halo! Bisa juga berupa <vocabulary>slogan</vocabulary>, <vocabulary>kata populer</vocabulary>, atau <vocabulary>buzzword</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Frase Populer, Frase menarik, Kata Populer, Kata kunci')
    RETURNING id INTO v_3653_frase_populer;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '流行歌', 'lagu-populer', 14, 59, 'Anda tahu bahwa 流行 mengacu pada "tren". Jadi, <kanji>lagu</kanji> "tren" adalah <vocabulary>lagu populer</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Lagu Populer')
    RETURNING id INTO v_3654_lagu_populer;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '例外', 'pengecualian', 14, 60, 'Sesuatu yang <kanji>di luar</kanji> <kanji>contoh</kanji> tidak mengikuti aturan. Ini bukan seperti yang seharusnya (contoh), ini adalah <vocabulary>pengecualian</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Pengecualian')
    RETURNING id INTO v_3655_pengecualian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '一例', 'contoh', 14, 61, '<kanji>Satu</kanji> <kanji>contoh</kanji> hanyalah <vocabulary>contoh</vocabulary> dari apa yang Anda gambarkan. Hanya satu <vocabulary>contoh</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Contoh, Contoh')
    RETURNING id INTO v_3656_contoh;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '例えば', 'misalnya', 14, 62, 'Ini memiliki arti yang hampir sama dengan kanji asalnya. Namun, alih-alih sekadar menjadi "contoh", ini adalah <vocabulary>misalnya</vocabulary>. Terkadang juga bisa berarti <vocabulary>seandainya</vocabulary> ketika berbicara tentang skenario hipotetis. Jadi, misalkan saya memulai sebuah kalimat dengan ini, saya bisa menjadi seperti "例えば, saya menggunakan 例えば dalam sebuah kalimat."', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik yang dapat membantu Anda: Menggunakan semua jenis "<vocabulary>sebagai contoh</vocabulary>" seperti ini, Anda <reading>diajari</reading> (たと) banyak hal sepanjang hidup Anda. Misalnya, Anda diajari tentang...', 'Misalnya, Misalnya, Seandainya Itu')
    RETURNING id INTO v_3657_misalnya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '例文', 'contoh-kalimat', 14, 63, '<kanji>Contoh</kanji> <kanji>tulisan</kanji> adalah sebuah tulisan yang mungkin menjadi contoh sebuah kata atau kanji atau semacamnya. Ini adalah <vocabulary>contoh kalimat</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Contoh Kalimat, Kalimat Model, Contoh Kalimat')
    RETURNING id INTO v_3658_contoh_kalimat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '協会', 'asosiasi', 14, 64, 'Saat Anda <kanji>bertemu</kanji> untuk <kanji>kerjasama</kanji>, Anda berkumpul untuk saling membantu. Salah satu bentuknya adalah ketika orang-orang membentuk <vocabulary>asosiasi</vocabulary>. Mereka semua bekerja sama dan bersatu untuk membantu satu sama lain dan diri mereka sendiri.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Asosiasi, Organisasi, Masyarakat')
    RETURNING id INTO v_3660_asosiasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '協力', 'kerja-sama', 14, 65, '<kanji>Kerjasama</kanji> <kanji>kekuatan</kanji> adalah tingkat <vocabulary>kerjasama</vocabulary> Anda. Jumlah <vocabulary>kolaborasi</vocabulary> atau <vocabulary>bantuan</vocabulary> yang Anda berikan.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kerja sama, Kolaborasi, Bantuan')
    RETURNING id INTO v_3661_kerja_sama;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '参る', 'akan-datang', 14, 66, 'Kanji itu sendiri berarti <kanji>berpartisipasi</kanji>, jadi Anda mungkin mengira kata ini berarti "berpartisipasi" namun kata ini sedikit lebih rumit dari itu. Anggap saja sebagai "berpartisipasi" namun Anda harus <vocabulary>datang</vocabulary> atau <vocabulary>pergi</vocabulary> untuk melakukannya. Ini adalah cara yang sederhana untuk mengatakan hal-hal tersebut, jadi Anda pergi ke tempat-tempat ini dengan perasaan senang hati, senang sekali Anda dapat berpartisipasi lebih dari apa pun. Selain itu, ini juga merupakan cara sederhana untuk mengucapkan <vocabulary>to visit</vocabulary>, yang sering digunakan jika Anda mengunjungi sesuatu yang sakral seperti kuil atau makam. 

Secara historis, kata ini muncul sebagai cara sederhana untuk menunjukkan kunjungan kepada seseorang dengan status sosial lebih tinggi. Anehnya, kata ini juga berarti <vocabulary>kalah</vocabulary> atau <vocabulary>kalah</vocabulary>. Bayangkan hal ini sebagai apa yang bisa terjadi ketika Anda mencoba untuk berpartisipasi ketika berada dalam posisi yang lebih rendah dari seseorang atau sesuatu.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak mempelajari cara membaca tersebut dengan kanji ini, jadi inilah mnemonik yang dapat membantu Anda: Anda dapat <vocabulary>datang</vocabulary> untuk berpartisipasi! "Ini <read>hari</reading> (まい) keberuntunganku!" serumu.', 'Akan Datang, Untuk Pergi, Untuk Mengunjungi, Untuk Dikalahkan, Menjadi Rugi')
    RETURNING id INTO v_3662_akan_datang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '一周', 'suatu-saat', 14, 67, '<kanji>Satu</kanji> <kanji>keliling</kanji> adalah <vocabulary>satu kali keliling</vocabulary>, atau dalam olahraga pacuan kuda, <vocabulary>satu putaran</vocabulary>. Berapa kali kamu akan mengelilingi bulan? Hanya 一周?', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Perhatikan bahwa いち menjadi いっ seperti yang sering terjadi ketika digunakan dalam counter (一階, 一回, dll.).', 'Suatu Saat, Sekali Sekitar, Satu Putaran')
    RETURNING id INTO v_3663_suatu_saat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '周囲', 'lingkungan', 14, 68, '<kanji>lingkaran</kanji> yang <kanji>mengelilingi</kanji> Anda adalah <vocabulary>lingkungan</vocabulary> Anda.

周囲 biasanya mengacu pada lingkungan sekitar Anda, baik itu lingkungan fisik di sekitar Anda atau lingkaran sosial Anda. Ini juga bisa merujuk pada <vocabulary>keliling</vocabulary> sesuatu, seperti <vocabulary>keliling</vocabulary> danau atau suatu benda, meskipun penggunaan ini lebih bersifat teknis dan kurang umum dalam percakapan sehari-hari.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Lingkungan, Perimeter, Lingkar')
    RETURNING id INTO v_3664_lingkungan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '周年', 'peringatan-tahunan', 14, 69, 'Saat Anda mengelilingi keseluruhan <kanji> lingkar</kanji> dari <kanji>tahun</kanji> Anda telah kembali ke awal tahun tersebut. Ini adalah <vocabulary>ulang tahun</vocabulary>.

Kata ini biasa digunakan dengan angka, seperti 10周年 (ulang tahun ke 10), atau digabungkan dengan kata lain, seperti 周年事業 (proyek ulang tahun).', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Peringatan tahunan')
    RETURNING id INTO v_3665_peringatan_tahunan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '囲む', 'untuk-mengelilingi', 14, 70, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>mengelilingi</kanji> sehingga versi kosakata kata kerjanya adalah <vocabulary>mengelilingi</vocabulary> atau <vocabulary>melampirkan</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda:

Orang-orang <vocabulary>di sekitar</vocabulary> Anda. Mereka mengelilingi Anda, menyebut Anda ayam. "<reading>Cacko</reading>! (かこ) Cacko! Cacko!" Tunggu, ini bukan suara ayam, kan? Anda menertawakan mereka, menganggap cara mereka mengeluarkan suara ayam itu aneh. Silakan bergabung dengan mereka dan ucapkan "Cacko" bersama mereka juga.', 'Untuk Mengelilingi, Untuk Melampirkan')
    RETURNING id INTO v_3666_untuk_mengelilingi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '雰囲気', 'suasana', 14, 71, '<kanji>energi</kanji>yang mengelilingi <kanji>energi</kanji> dalam <kanji>atmosfer</kanji> inilah yang membentuk <vocabulary>atmosphere</vocabulary>. Saya suka ketika dibutuhkan tiga kanji untuk mewakili apa yang sudah diwakili oleh salah satu dari tiga kanji.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.

Catatan: Kadang-kadang kamu akan mendengar orang mengatakan ふいんき, tapi jika kamu menuliskannya di ujian, kamu akan dinilai salah, jadi kami tetap menggunakan pembacaan ふんいき yang lebih standar. Jika kamu butuh bantuan untuk mengingatnya, lihat saja kanjinya lebih dekat — kamu akan tahu 雰 adalah ふん karena bacaannya berasal dari 分 kecil di dalamnya!', 'Suasana, Suasana, Suasana, Suasana hati')
    RETURNING id INTO v_3667_suasana;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '固い', 'keras', 14, 72, 'Ini adalah kanji tunggal dengan い di akhir, artinya Anda tahu itu mungkin kata sifat. Apa bentuk kata sifat dari <kanji>keras</kanji>? Itu <vocabulary>sulit</vocabulary>, <vocabulary>firm</vocabulary>, atau <vocabulary>sulit</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda:

Anda memerlukan sesuatu yang sangat <vocabulary>sulit</vocabulary> untuk dimasukkan ke dalam <reading>cata</reading>pult(かた) Anda. Lihatlah sekeliling Anda untuk mencari sesuatu yang keras dan bayangkan memasukkannya ke dalam ketapel Anda!', 'Keras, Keras, Tegas')
    RETURNING id INTO v_3668_keras;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '頑固', 'keras-kepala', 14, 73, 'Orang yang <kanji>keras</kanji> <kanji>keras kepala</kanji> tetaplah <vocabulary>keras kepala</vocabulary> tidak peduli bagaimana Anda melihatnya. Cobalah untuk menerobos sikap keras kepala yang keras itu dan yang akan Anda temukan justru lebih keras kepala.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Keras kepala')
    RETURNING id INTO v_3669_keras_kepala;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '基本', 'dasar', 14, 74, '<kanji>asal</kanji> dari <kanji>fondasi</kanji> Anda adalah tempat Anda harus bekerja ketika mempelajari sesuatu yang baru. Misalnya, porsi 基本 di WaniKani adalah level awal, khususnya radikal. Itu adalah <vocabulary>fondasi</vocabulary> yang Anda perlukan untuk mempelajari kanji dan kosakata Anda nanti.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Dasar, Dasar-dasar')
    RETURNING id INTO v_3670_dasar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '四季', 'empat-musim', 14, 75, '<kanji>empat</kanji> <kanji>musim</kanji> adalah <vocabulary>empat musim</vocabulary>. Entah mengapa banyak orang Jepang berpikir bahwa Jepang adalah satu-satunya tempat dengan empat musim yang berbeda. Tentu saja mereka belum mengunjungi separuh tempat di garis lintang mereka di seluruh dunia.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Perhatikan bahwa 四 dibaca menggunakan pembacaan on''yomi, yang telah Anda lihat beberapa kali selama WaniKani. Bayangkan し yang berarti "kematian" (seperti 死), dan bagaimana dengan empat musim selalu ada kematian setiap Musim Gugur dan Musim Dingin.', 'Empat Musim, Empat Musim')
    RETURNING id INTO v_3671_empat_musim;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '完了', 'penyelesaian', 14, 76, '<kanji>sempurna</kanji> <kanji>penyelesaian</kanji> adalah ketika semuanya berada pada <vocabulary>penyelesaian</vocabulary> total. Tidak ada yang tersisa dan semuanya sudah selesai.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Penyelesaian, Menyelesaikan, Menyelesaikan, Kesimpulan')
    RETURNING id INTO v_3672_penyelesaian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '完全', 'menyelesaikan', 14, 77, 'Ketika sesuatu <kanji>semuanya</kanji> <kanji>sempurna</kanji> maka itu adalah <vocabulary>lengkap</vocabulary>. Tidak hanya itu, tapi <vocabulary>sempurna</vocabulary> (karena SEMUAnya sempurna, tidak hanya sebagian saja).', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Menyelesaikan, Sempurna, Kesempurnaan, Kelengkapan')
    RETURNING id INTO v_3673_menyelesaikan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '完成', 'penyelesaian', 14, 78, 'Ketika sesuatu telah <kanji>menjadi</kanji> <kanji>sempurna</kanji>, ia telah mencapai <vocabulary>selesai</vocabulary>. Sekarang <vocabulary>selesai</vocabulary>. Hore!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Penyelesaian, Selesai')
    RETURNING id INTO v_3674_penyelesaian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '念願', 'keinginan-hati', 14, 79, 'Apa <kanji>pikiran</kanji>permintaan</kanji> yang ada di kepalamu, tanpa henti seperti orang gila, adalah <vocabulary>keinginan hati</vocabulary>mu.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Keinginan Hati, Keinginan yang sungguh-sungguh')
    RETURNING id INTO v_3675_keinginan_hati;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '残念', 'sayangnya', 14, 80, 'Anda mempunyai <kanji>sisa</kanji> <kanji>pikiran</kanji> ketika Anda mendengar tentang sesuatu <vocabulary>yang disayangkan</vocabulary>. <vocabulary>sayang sekali</vocabulary>, menurut Anda, saya berharap ini bisa berbeda. Pikiran-pikiran yang tersisa itu semacam penyesalan, bukan? Itu sebabnya ini bisa berarti <vocabulary>disesalkan</vocabulary> atau <vocabulary>mengecewakan</vocabulary> juga.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Sayangnya, Sayang sekali, Sangat disesalkan, Mengecewakan')
    RETURNING id INTO v_3676_sayangnya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '人性', 'sifat-manusia', 14, 81, '<kanji>sifat</kanji> <kanji>seseorang</kanji> hanyalah <vocabulary>sifat manusia</vocabulary>! Setiap orang mempunyai <vocabulary>naluri</vocabulary> manusianya masing-masing.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Sifat manusia, Naluri')
    RETURNING id INTO v_3677_sifat_manusia;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '女性', 'perempuan', 14, 82, 'Seseorang yang termasuk dalam <kanji>wanita</kanji> <kanji>gender</kanji> mungkin akan menjadi <vocabulary>perempuan</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Perempuan, Wanita, Wanita')
    RETURNING id INTO v_3678_perempuan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '性病', 'penyakit-menular-seksual', 14, 83, '<kanji>gender</kanji> <kanji>sakit</kanji> adalah penyakit yang Anda alami saat *ahem* melakukan sesuatu dengan orang yang berjenis kelamin lain atau sama. Anda hanya tertular penyakit ini dengan cara ini, artinya penyakit tersebut adalah <vocabulary>penyakit menular seksual</vocabulary> (jangan perlu mengetik lagi dan cukup jawab dengan <vocabulary>PMS</vocabulary>).', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Penyakit Menular Seksual, Std')
    RETURNING id INTO v_3679_penyakit_menular_seksual;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '男性', 'pria', 14, 84, '<kanji>gender</kanji> seorang <kanji>pria</kanji> dikenal sebagai "<vocabulary>male</vocabulary>."

Perhatikan bahwa ini hanya merujuk pada jenis kelamin manusia; nanti kamu akan mempelajari kata yang kamu gunakan untuk hewan, tumbuhan, dan sebagainya!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Pria, Pria, Pria')
    RETURNING id INTO v_3680_pria;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '折る', 'untuk-melipat-sesuatu', 14, 85, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri artinya <kanji>melipat</kanji> atau <kanji>mematahkan</kanji>, jadi versi vocab verbanya adalah <vocabulary>melipat sesuatu</vocabulary> atau <vocabulary>merusak sesuatu</vocabulary>', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik yang dapat membantu Anda: <vocabulary>melipat</vocabulary> <reading>o</reading>bi (お) Anda dengan sangat hati-hati dan menyimpannya bersama kimono Anda yang lain.', 'Untuk Melipat Sesuatu, Untuk Menghancurkan Sesuatu')
    RETURNING id INTO v_3684_untuk_melipat_sesuatu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '折角', 'dengan-masalah', 14, 86, 'Jika tidak ada apa-apa selain <kanji>lipatan</kanji> dan <kanji>sudut</kanji>, Anda akan mengalami kekacauan. Kata ini berarti <vocabulary>dengan masalah</vocabulary> karena Anda tentu saja tidak sedang melintasi ruang-waktu yang datar dan bagus, bukan? Nah, semuanya miring dan terlipat.

折角 adalah salah satu kata rumit dalam bahasa Jepang yang tidak memiliki terjemahan yang rapi dalam bahasa Inggris. Nuansanya adalah bahwa sesuatu terjadi dengan susah payah, baik karena usaha seseorang, atau karena keberuntungan. Kata ini sering kali menyiratkan penyesalan, dan digunakan dalam situasi di mana Anda ingin menyatakan bahwa peluang, nasihat, atau kerja keras <vocabulary>berharga</vocabulary> sia-sia karena alasan tertentu. Ini juga digunakan untuk menggarisbawahi peluang <vocabulary>langka</vocabulary> yang tidak boleh dilewatkan.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Hati-hati dengan せつ yang berubah menjadi せっ. Saya khawatir, ada hal lain yang harus Anda lalui <vocabulary>dengan masalah</vocabulary>.', 'Dengan Masalah, Berharga, Berharga, Langka')
    RETURNING id INTO v_3685_dengan_masalah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '骨折', 'patah-tulang', 14, 87, 'Ketika <kanji>tulang</kanji> Anda <kanji>patah</kanji>, Anda akan mengalami <vocabulary>patah tulang</vocabulary> atau <vocabulary>fraktur</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Hati-hati karena こつ disingkat menjadi こっ di sini.', 'Patah Tulang, Patah, Fraktur Tulang')
    RETURNING id INTO v_3686_patah_tulang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '失望', 'kekecewaan', 14, 88, 'Ada <kanji>kesalahan</kanji> dalam <kanji>harapan</kanji> Anda. Itu rusak, dan semuanya berantakan. Anda merasakan <vocabulary>kekecewaan</vocabulary> dan <vocabulary>putus asa</vocabulary> yang luar biasa.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kekecewaan, Putus asa')
    RETURNING id INTO v_3687_kekecewaan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '望み', 'mengharapkan', 14, 89, 'Sebuah <kanji>harapan</kanji> sebenarnya adalah sebuah <vocabulary>keinginan</vocabulary> yang ada di dalam diri Anda (walaupun tetap bisa menjadi <vocabulary>harapan</vocabulary> juga).', 'Apa <vocabulary>keinginan</vocabulary> besar Anda? Itu untuk memiliki <read>hidung</reading> (のぞ) yang berbeda. Alternatifnya, Anda bisa berpikir "<reading>nose on me</reading>" untuk のぞみ.', 'Mengharapkan, Harapan, Menginginkan')
    RETURNING id INTO v_3688_mengharapkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '望む', 'berharap', 14, 90, 'Jika Anda memiliki <kanji>harapan</kanji> dan Anda mengubahnya menjadi kata kerja, Anda akan mengira itu adalah "berharap". Namun apa sebenarnya yang ada di balik sebuah harapan? Itu keinginan atau keinginan, bukan? Itu sebabnya kata ini berarti <vocabulary>berharap</vocabulary> atau <vocabulary>menginginkan</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: Satu-satunya keinginan Anda adalah memiliki <reading>hidung</reading> (のぞ) yang lebih besar. Rasakan hidungmu, itu terlalu kecil. Anda berharap panjangnya dua atau tiga inci lebih panjang. Tentu saja, jika membayangkan Anda menginginkan hidung yang lebih kecil atau hidung yang lebih kecil, itu tidak masalah. Pastikan Anda menginginkan sesuatu yang berhubungan dengan hidung.', 'Berharap, Untuk Keinginan, Untuk Berharap')
    RETURNING id INTO v_3689_berharap;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '願望', 'menginginkan', 14, 91, '<kanji>harapan</kanji> yang Anda <kanji>permintaan</kanji> adalah <vocabulary>keinginan</vocabulary> Anda. Bayangkan saja diri Anda berharap dan meminta kekuatan yang lebih tinggi untuk sesuatu yang benar-benar Anda inginkan. Apa ini? Itu adalah <vocabulary>keinginan</vocabulary> atau <vocabulary>keinginan</vocabulary> Anda.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Menginginkan, Mengharapkan, Aspirasi')
    RETURNING id INTO v_3690_menginginkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '木材', 'kayu', 14, 92, '<kanji>Kayu</kanji> yaitu <kanji>kayu</kanji> adalah <vocabulary>kayu</vocabulary> <vocabulary>kayu</vocabulary>.

Secara teknis, 木材 lebih banyak digunakan untuk kayu atau kayu yang belum diproses — tidak seperti papan, lebih seperti kayu yang baru dipotong dan masih tergeletak di lantai hutan. Tapi ini bukan aturan yang sulit atau apa pun, jadi jangan terlalu khawatir tentang perbedaannya.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kayu, Kayu')
    RETURNING id INTO v_3692_kayu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '材料', 'bahan-bahan', 14, 93, 'Anda harus membayar <kanji>biaya</kanji> untuk <kanji>bahan</kanji> yang Anda gunakan untuk membuat makanan. Itulah <vocabulary>bahan</vocabulary> yang Anda bayar! Bayangkan membuat daftar semua bahan yang Anda perlukan untuk membuat sup, lalu pastikan Anda memiliki cukup uang untuk membayar biayanya, sehingga Anda memiliki semua bahan yang Anda perlukan untuk membuatnya.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Bahan-bahan, Bahan')
    RETURNING id INTO v_3693_bahan_bahan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '材木', 'kayu', 14, 94, '<kanji>Kayu</kanji> <kanji>pohon</kanji> adalah apa yang kamu gunakan untuk membuat <vocabulary>kayu</vocabulary> dan <vocabulary>kayu</vocabulary>.

材木 biasanya untuk kayu atau kayu yang telah diproses — barang yang dipotong menjadi papan dan siap digunakan dalam proyek DIY Anda berikutnya, misalnya.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kayu, Kayu, Kayu')
    RETURNING id INTO v_3694_kayu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '束', 'bundel', 14, 95, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Karena kata ini terdiri dari satu kanji, maka sebaiknya menggunakan bacaan kun''yomi. Saat mempelajari kanji, Anda tidak mempelajari cara membacanya, jadi inilah mnemonik untuk membantu Anda dengan kata ini: Anda sedang menghitung <vocabulary>bundle</vocabulary> Anda. Ada banyak sekali, jadi Anda harus membuat <reading>tab</reading>s (たば) di buku catatan Anda untuk mengkategorikan semuanya dengan benar. Bayangkan diri Anda melakukan ini (membuat tab secara fisik di buku catatan Anda, meskipun buku catatan Anda tidak dilengkapi dengan tab).', 'Bundel, Kelompok')
    RETURNING id INTO v_3695_bundel;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '約束', 'janji', 14, 96, '<kanji>janji</kanji> <kanji>bundel</kanji> tetaplah sebuah <vocabulary>janji</vocabulary> tidak peduli berapa banyak yang telah Anda selesaikan di sana. Satu janji hanyalah janji lain yang hanyalah janji lain.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Janji, Janji temu, Pakta')
    RETURNING id INTO v_3696_janji;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '松', 'pinus', 14, 97, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan yang dipelajari dengan kanji, jadi tidak perlu berpikir terlalu keras.', 'Pinus, Pohon pinus')
    RETURNING id INTO v_3697_pinus;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '松葉', 'jarum-pinus', 14, 98, '<kanji>pinus</kanji> <kanji>daun</kanji> sebenarnya bukanlah daun, melainkan lebih seperti jarum, sehingga menjadikan kata ini <vocabulary>jarum pinus</vocabulary>.

松葉 umumnya digunakan dalam kata majemuk, seperti 松葉ガニ (kepiting salju) atau 松葉づえ (kruk).', 'Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Namun, 葉 membuat rendaku menjadi ば, jadi berhati-hatilah.', 'Jarum Pinus')
    RETURNING id INTO v_3698_jarum_pinus;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '合格する', 'untuk-lulus-ujian', 14, 99, '<kanji>status</kanji> <kanji>bergabung</kanji> bersama-sama. Anggap saja ini seperti sekumpulan pesan status di Facebook, semuanya muncul bersamaan. Ujian besar pemerintah baru saja selesai. Status semua orang bergabung di Facebook bersama-sama untuk mengatakan bahwa mereka lulus, menunjukkan <vocabulary>untuk lulus ujian</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Untuk Lulus Ujian, Untuk Lulus Ujian')
    RETURNING id INTO v_3700_untuk_lulus_ujian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '性格', 'kepribadian', 14, 100, 'Ingat bagaimana 性 juga bisa berarti <kanji>alam</kanji>? Nah, <kanji>status</kanji> dari sifat Anda adalah <vocabulary>kepribadian</vocabulary> Anda. Kepribadian seperti apa yang Anda miliki? Ceria? Baik? Mungkin Anda harus mengikuti salah satu tes kepribadian online untuk mengetahuinya.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kepribadian')
    RETURNING id INTO v_3701_kepribadian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '残り', 'sisa', 14, 101, 'Ini memiliki arti yang sama dengan kanji.り kecil yang dilempar ke sana hanyalah sedikit <vocabulary>sisa</vocabulary> yang menempel di akhir kanji. Tidak perlu memperhatikan hal itu.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: Anda menunggu di dalam. <vocabulary>sisa</vocabulary> pasukan Anda ada di luar sana, bertempur. Anda tidak tahu siapa yang akan bertahan... atau apakah mereka akan bertahan. Anda memiliki <read>ketukan</reading> (のこ) rahasia yang dapat Anda gunakan untuk mengetahui apakah itu salah satu kekuatan yang tersisa di luar atau musuh yang berhasil ditembus. Anda mendengar ketukan. Apa itu? Apakah laki-laki Anda atau mereka? Bayangkan, fokus pada percakapan tak terduga yang terjadi antara Anda dan orang lain.', 'Sisa, Sisa, Sisa, Residu')
    RETURNING id INTO v_3704_sisa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '残る', 'untuk-tetap-tertinggal', 14, 102, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>sisa</kanji>, jadi versi kosakata kata kerjanya adalah "sisa". Mari kita buat hal tersebut terdengar lebih baik: <vocabulary>untuk tetap tertinggal</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: Anda memutuskan <vocabulary>untuk tetap tinggal</vocabulary>. Semua orang pergi, dan Anda mengira Anda sendirian. Lalu, seseorang <reading>mengetuk</reading>s (のこ) di pintu. Jantungmu berdegup kencang. Mereka mengetuk lagi.', 'Untuk Tetap Tertinggal, Untuk Tetap, Untuk Tetap Tertinggal')
    RETURNING id INTO v_3705_untuk_tetap_tertinggal;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '残業', 'lembur', 14, 103, '<kanji>Sisa</kanji> waktu Anda bekerja di <kanji>bisnis</kanji> lama adalah waktu tambahan Anda bekerja (di atas jam kerja normal). Ini <vocabulary>lembur</vocabulary>!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Lembur')
    RETURNING id INTO v_3706_lembur;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '料理', 'memasak', 14, 104, 'Ada <kanji>alasan</kanji> untuk <kanji>biaya</kanji> ini yang harus Anda bayar untuk masuk ke sini. Kami <vocabulary>memasak</vocabulary> <vocabulary>masakan</vocabulary> untuk Anda makan sambil menonton pertunjukan. Jika kami tidak memasak <vocabulary>hidangan</vocabulary> untuk Anda, kami mungkin tidak akan membebankan biaya ini kepada Anda!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Memasak, Masakan, Piring')
    RETURNING id INTO v_3710_memasak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '〜的', 'al', 14, 105, 'Saya khawatir ini adalah kata yang aneh. Anda harus menanggungnya. Hal ini, ketika ditambahkan ke sebuah kata, seperti menambahkan <vocabulary>-al</vocabulary> atau <vocabulary>-like</vocabulary> di akhir kata—atau ketika ada sesuatu yang <vocabulary>tipikal</vocabulary> sesuatu yang lain. Misalnya, tambahkan ke 日本 (Jepang) dan Anda mendapatkan "seperti Jepang", atau "biasanya Jepang". Ini adalah kata modifikasi yang aneh dan sangat bergantung pada setiap situasi yang ada. Untuk saat ini, ketahuilah bahwa kata ini memiliki arti seperti ini. Kami akan mulai menerapkannya pada berbagai kata di masa depan, perlahan tapi pasti.', 'Pembacaannya sama dengan yang kamu pelajari dengan kanji, mungkin karena ini biasanya ditambahkan ke kata lain, membuatnya berperilaku seperti jukugo.', '-al, -Menyukai, Khas Dari')
    RETURNING id INTO v_3711_al;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '日本的', 'sangat-jepang', 14, 106, 'Hal-hal yang <kanji>ditargetkan</kanji>dianggap sebagai <vocabulary>Jepang</vocabulary> lebih dari sekedar bahasa Jepang, mereka <vocabulary>sangat Jepang</vocabulary>. Kata ini mungkin sulit dipahami pada awalnya, tetapi ada banyak hal yang dianggap hanya bahasa Jepang oleh orang Jepang. Teori-teori ini berkisar dari yang masuk akal hingga yang konyol, tetapi bagaimanapun juga, Anda akan melihatnya digambarkan sebagai 日本的.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Ini akan membantu jika Anda tahu cara membaca 日本 juga.', 'Sangat Jepang, Biasanya orang Jepang')
    RETURNING id INTO v_3712_sangat_jepang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '目的', 'tujuan', 14, 107, 'Ketika <kanji>mata</kanji> Anda berada pada <kanji>target</kanji> Anda mengetahui <vocabulary>tujuan</vocabulary> Anda. Anda juga memperhatikan <vocabulary>tujuan</vocabulary> (bagaimanapun juga, itulah targetnya!).', 'Kata ini menggunakan bacaan on''yomi untuk 目 (もく). Anda pernah melihatnya di 目標 dan 目次, jadi mudah-mudahan ini tidak akan terlalu sulit saat ini, tapi inilah mnemonik untuk berjaga-jaga:

Bayangkan memberi tahu seseorang tentang <kosakata>tujuan</vocabulary> hidup Anda, hanya untuk membuat mereka <reading>mengejek</reading> (もく) Anda. Mereka mengejek 目的 Anda dan tertawa tepat di depan wajah Anda. Sekarang Anda tidak begitu yakin apakah <vocabulary>tujuan</vocabulary> Anda akan berhasil…', 'Tujuan, Sasaran, Motif')
    RETURNING id INTO v_3713_tujuan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '予約', 'reservasi', 14, 108, '<kanji>sebelumnya</kanji> <kanji>janji</kanji> adalah janji yang telah Anda buat sebelumnya. Ini adalah <vocabulary>reservasi</vocabulary> atau <vocabulary>janji temu</vocabulary>. Masuk akal, bukan?', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Reservasi, Janji temu')
    RETURNING id INTO v_3718_reservasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '約', 'tentang', 14, 109, 'Kanji berarti <kanji>janji</kanji>, namun arti kata ini adalah <vocabulary>about</vocabulary>, yang sedikit berbeda. Coba pikirkan tentang janji. Ketika Anda menjanjikan sesuatu, Anda benar-benar harus menepatinya... tetapi hanya sebanyak yang Anda perlukan agar orang lain bahagia. Seseorang meminta anak anjing untuk Natal, dan Anda memberi mereka boneka anak anjing. Itu <vocabulary>kira-kira</vocabulary> janji yang Anda buat. Cukup dekat. *mengedip*', 'Cara membaca ini sebenarnya sama dengan yang Anda pelajari dengan kanji, jadi tidak perlu menghafal hal baru!', 'Tentang, Sekitar')
    RETURNING id INTO v_3719_tentang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '才能', 'bakat', 14, 110, 'Seseorang yang mempunyai <kanji>bakat</kanji> dan <kanji>kemampuan</kanji> yang hebat mempunyai <vocabulary>bakat</vocabulary> yang cukup banyak.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Bakat')
    RETURNING id INTO v_3721_bakat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '能力', 'kemampuan', 14, 111, '<kanji>kemampuan</kanji> <kanji>kekuatan</kanji> Anda adalah apa yang dapat Anda lakukan. Ini adalah <vocabulary>kemampuan</vocabulary> Anda. Ini juga merupakan <vocabulary>kemampuan</vocabulary> Anda.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kemampuan, Kemampuan')
    RETURNING id INTO v_3722_kemampuan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '芸能界', 'bisnis-pertunjukan', 14, 112, '<kanji>seni</kanji> <kanji>kemampuan</kanji> <kanji>dunia</kanji> adalah dunia <vocabulary>bisnis pertunjukan</vocabulary>, atau dengan kata lain, <vocabulary>industri hiburan</vocabulary>. Bagaimanapun, untuk masuk ke bisnis pertunjukan, Anda memerlukan kemampuan di bidang seni.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Bisnis Pertunjukan, Industri Hiburan')
    RETURNING id INTO v_3723_bisnis_pertunjukan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '芸人', 'pelawak', 14, 113, 'Apa <kanji>seni</kanji> terhebat yang bisa dimiliki oleh <kanji>seseorang</kanji>? Itu pasti seni membuat orang tertawa. Itu sebabnya kata ini berarti <vocabulary>komedian</vocabulary>, meskipun bisa juga berarti <vocabulary>pemain</vocabulary> atau <vocabulary>entertainer</vocabulary> secara lebih umum.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Pelawak, Pemain, Penghibur')
    RETURNING id INTO v_3724_pelawak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '芸者', 'geisha', 14, 114, '<kanji>seni</kanji> dibawakan oleh <kanji>seseorang</kanji>. Siapa seseorang itu? Nah, pikirkan tentang bacaan kanji ini. Apakah Anda mengenali kata itu? Itu <vocabulary>geisha</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Geisha')
    RETURNING id INTO v_3725_geisha;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '骨', 'tulang', 14, 115, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Karena kata ini terdiri dari satu kanji, maka sebaiknya menggunakan bacaan kun''yomi. Saat mempelajari kanji, Anda tidak mempelajari cara membacanya, jadi inilah mnemonik yang dapat membantu Anda mempelajari kata ini: Lihatlah <kosakata>tulang</vocabulary> Anda sendiri. Mereka telah ditingkatkan dengan teknologi khusus, memungkinkan Anda untuk <reading>mengasah</reading> (ほね) pada target, lalu menembakkan tulang Anda ke arah mereka. Silakan bayangkan diri Anda menggunakan teknologi tulang baru yang gila ini. Wolverine cemburu.', 'Tulang')
    RETURNING id INTO v_3728_tulang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '落ち着く', 'untuk-menenangkan-diri', 14, 116, 'Hai. <kanji>Turunkan</kanji> dirimu dan <kanji>tiba</kanji> kembali padaku. Kamu jadi gila di sana. Turunkan ke bawah. Kembali. Tiba. Anda perlu melakukan hal-hal ini <vocabulary>untuk menenangkan diri</vocabulary>.', 'Bacaannya berasal dari 落ちる dan 着く. Semoga Anda mengetahui kata-kata ini sehingga Anda dapat membaca kata ini juga! Jika tidak, cukup 落ち着く dan semuanya akan baik-baik saja.', 'Untuk Menenangkan Diri')
    RETURNING id INTO v_3798_untuk_menenangkan_diri;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '消化する', 'untuk-mencerna', 14, 117, 'Anda tahu bagaimana 消化 adalah "pencernaan"? Nah, bentuk kata kerjanya adalah kata ini, yaitu <vocabulary>mencerna</vocabulary>.', 'Jika Anda tahu 消化 Anda seharusnya bisa membaca ini. Selain itu, ini menggunakan bacaan yang Anda pelajari dengan kanji, jadi tidak masalah.', 'Untuk Mencerna, Untuk Menghabiskan')
    RETURNING id INTO v_3880_untuk_mencerna;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '消える', 'menghilang', 14, 118, 'Anda telah melihat bahwa 消す berarti "memadamkan". Jadi, ini adalah versi kata kerja lainnya. Kali ini, Anda tidak melakukan pemadaman, melainkan terjadi begitu saja. Sesuatu akan <vocabulary>menghilang</vocabulary> dengan sendirinya. Bagaimana kamu bisa membedakan ini dari 消す? Nah, える memungkinkan Anda memperhatikan bagaimana objek tersebut menghilang ke <reading>udara</reading> tipis (える). Anda tahu Anda tidak melakukannya, jadi hal itu menghilang dengan sendirinya, membuatnya <vocabulary>menghilang</vocabulary>.', 'Sayangnya, pembacaannya berbeda dengan 消す, jadi Anda tidak bisa menggunakannya. Coba pikirkan bagaimana setelah objek di depan Anda menghilang, Anda menggunakan kunci <reading></reading> (き) untuk membuka pintu yang tidak terlihat. Di situlah semuanya menghilang! Anda melihat semua barang Anda yang hilang di sisi lain pintu tak kasat mata ini yang Anda buka dengan <reading>key</reading> ajaib.', 'Menghilang, Untuk Keluar, Untuk Mematikan')
    RETURNING id INTO v_3881_menghilang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '気持ち悪い', 'perasaan-buruk', 14, 119, '気持ち (perasaan) adalah <kanji>buruk</kanji>. Jadi, bisa dibayangkan bagaimana perasaanmu yang tidak enak, itu adalah <vocabulary>perasaan buruk</vocabulary>. Faktanya, Anda <vocabulary>merasa tidak enak</vocabulary>.', 'Bacaannya berasal dari kata 気持ち dan 悪い. Semoga Anda pernah melihat keduanya dan bisa menggabungkan keduanya untuk mengetahui bacaannya secara otomatis. Tidak ada perasaan buruk dengan kata ini, bukan?', 'Perasaan Buruk, Merasa Buruk, Merasa Mengerikan, Tidak menyenangkan, Bruto')
    RETURNING id INTO v_3882_perasaan_buruk;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '流れる', 'untuk-streaming', 14, 120, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri artinya <kanji>aliran</kanji>? Itu adalah <vocabulary>mengalir</vocabulary> (walaupun juga <vocabulary>mengalir</vocabulary>, kata yang sangat mirip). Kamu bisa membedakannya dengan 流す karena dengan 流す kamu menyiram sesuatu ke dalam toilet, yang menyebabkan toilet meluap sehingga kamu <reading>menuntut</reading> (す) pembuat toilet. Dengan 流れる Anda menemukan permata <reading>langka</reading> (れる) mencoba mengalir ke sungai. Anda ambil itu, dan lihat itu berlian langka!', 'Bacaannya sama dengan 流す. Asalkan Anda tahu, Anda harus bisa membaca yang ini juga!', 'Untuk Streaming, Mengalir')
    RETURNING id INTO v_3883_untuk_streaming;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '動かす', 'untuk-memindahkan-sesuatu', 14, 121, 'Anda sudah melihat 動く semoga saja, dan tahu artinya <vocabulary>bergerak</vocabulary>. Ini mirip dengan itu, tapi sekarang Anda memindahkan sesuatu yang lain. Anda mengetahui hal ini karena saat Anda <vocabulary>memindahkan sesuatu</vocabulary> benda yang Anda pindahkan tersebut mulai <reading>menyumpahi</reading> (かす) Anda keluar karena ia sedang marah.', 'Bacaan untuk ini bisa berasal dari 動く. Jika Anda mengetahui kata itu, Anda pasti tahu cara membaca kata ini!', 'Untuk Memindahkan Sesuatu')
    RETURNING id INTO v_3884_untuk_memindahkan_sesuatu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '着ける', 'untuk-memakai', 14, 122, 'Kata kerja lain untuk kanji ini! Gila! Aku tahu, aku minta maaf. Yang sebelumnya adalah: 着る (memakai), 着く (tiba), dan sekarang 着ける (memakai / memakai). Setidaknya mirip dengan 着る, kan? Dalam hal ini, kata ini seperti 付ける, yang artinya "melampirkan". Ini digunakan untuk benda-benda yang Anda "pasang" ke tubuh Anda untuk dipakai, seperti aksesoris, atau masker wajah. Itu sebabnya ini <vocabulary>untuk dipakai</vocabulary> atau <vocabulary>untuk dipakai</vocabulary>. Suaranya sama, kanjinya berbeda, idenya mirip.', 'Bacaannya sama dengan bacaan 着く, tapi mungkin akan lebih mudah jika dianggap bacaannya sama dengan 付ける, yang mempunyai arti serupa. Kenakan pakaian, tempelkan pada pakaian, dll.', 'Untuk Memakai, Untuk Dipakai')
    RETURNING id INTO v_3885_untuk_memakai;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '勉強する', 'untuk-belajar', 14, 123, 'Anda sudah melihat 勉強 (belajar) sekarang, bukan? Nah, ini adalah versi kata kerjanya. Ini adalah <vocabulary>untuk dipelajari</vocabulary>.', 'Bacaannya sama dengan 勉強. Itu juga bacaan yang Anda pelajari dengan kanji ini.', 'Untuk Belajar')
    RETURNING id INTO v_3886_untuk_belajar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '旅行する', 'untuk-bepergian', 14, 124, 'Mudah-mudahan Anda sudah melihat 旅行 pada saat ini. Ini adalah versi kata kerjanya. Alih-alih "berjalan", yang dimaksud adalah <vocabulary>to travel</vocabulary> atau <vocabulary>melakukan perjalanan</vocabulary>. Ini menyenangkan untuk dilakukan. Anda harus melakukannya!', 'Bacaannya sama dengan 旅行, tapi kebetulan juga menggunakan bacaan yang Anda pelajari dengan kanji, jadi Anda harus bisa membacanya.', 'Untuk Bepergian, Untuk Melakukan Perjalanan')
    RETURNING id INTO v_3887_untuk_bepergian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '起こす', 'untuk-membangunkan-seseorang', 14, 125, 'Anda pernah melihat 起きる yang artinya "bangun". Hal ini serupa, kecuali Anda sedang membangunkan orang lain, yang menjadikan arti dari kata ini <vocabulary>membangunkan seseorang</vocabulary>. Bagaimana Anda membedakan antara ini dan 起きる? Karena す di akhir. Anda membangunkan seseorang dengan kasar, mencekik lehernya. Mereka berbalik dan <reading>menuntut</reading> (す) Anda, membuat Anda berharap Anda tidak pernah membangunkan mereka.

Ini juga bisa berarti <vocabulary>menyebabkan sesuatu</vocabulary>. Saya kira jika Anda membangunkan seseorang dan mereka bukan orang yang suka bangun pagi, Anda dapat menyebabkan sesuatu... seperti masalah.', 'Bacaannya sama dengan 起きる, jadi selama kamu tahu kata itu kamu pasti bisa membaca yang ini. Tentu saja, Anda juga bisa membayangkan mereka berteriak "OH!" ketika Anda membangunkannya juga, jika itu membantu.', 'Untuk Membangunkan Seseorang, Untuk Menyebabkan Sesuatu')
    RETURNING id INTO v_3889_untuk_membangunkan_seseorang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '旅行者', 'wisatawan', 14, 126, 'Anda telah melihat bahwa 旅行 adalah "perjalanan". Jadi siapakah <kanji>seseorang</kanji> yang melakukan perjalanan? Yaitu <vocabulary>turis</vocabulary> atau <vocabulary>traveler</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Akan membantu jika Anda sudah mengetahui bacaan 旅行.', 'Wisatawan, Turis')
    RETURNING id INTO v_3890_wisatawan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '悪口', 'mulut-buruk', 14, 127, '<kanji>mulut</kanji> buruk</kanji> Anda tidak menghasilkan apa-apa selain <vocabulary>kata-kata kotor</vocabulary> dan <vocabulary>omongan sampah</vocabulary>.

悪口 sering kali menargetkan karakter, penampilan, atau kemampuan seseorang, dengan tujuan untuk menyakiti atau merusak reputasinya, terkadang secara langsung, namun sering kali di belakang punggungnya. Hal ini menimbulkan informasi kurang baik yang dapat disebarkan melalui gosip.', 'Bacaannya merupakan bacaan vocab kun''yomi untuk kedua kanji ini, mungkin karena kata ini hanyalah dua kata yang dirangkai menjadi satu (buruk+mulut). Gunakan pengetahuan Anda tentang kosakata 悪い dan 口 untuk mempelajari pembacaan kata ini.

Oke, aku berbohong. Anda sebaiknya melakukan わるぐち saja. わるくち bisa saja dilakukan, tetapi versi rendaku jauh lebih umum. Maaf telah mengatakan hal buruk seperti itu sebelumnya.', 'Mulut Buruk, Bicara Sampah')
    RETURNING id INTO v_3891_mulut_buruk;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '良好', 'bagus', 14, 128, '<kanji>bagus</kanji> <kanji>suka</kanji> adalah sesuatu yang sangat Anda sukai, jika itu masuk akal. Hal ini adalah hal yang <vocabulary>baik</vocabulary> dan <vocabulary>menguntungkan</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda sudah mempelajarinya, jadi Anda seharusnya bisa membacanya sendiri!', 'Bagus, Baik, Memuaskan')
    RETURNING id INTO v_3897_bagus;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '整理する', 'untuk-mengatur', 14, 129, 'Saat Anda <kanji>menyusun</kanji> sesuatu dengan <kanji>alasan</kanji>, Anda sedang menyusunnya. Itu sebabnya ini adalah <vocabulary>untuk mengatur</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Untuk Mengatur, Untuk Mengatur, Untuk Menyortir')
    RETURNING id INTO v_3902_untuk_mengatur;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '自動', 'otomatis', 14, 130, 'Sesuatu yang dapat <kanji>bergerak</kanji> dengan <kanji>dirinya</kanji> adalah sesuatu yang <vocabulary>otomatis</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Otomatis')
    RETURNING id INTO v_3909_otomatis;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '卒業', 'kelulusan', 14, 131, '<kanji>bisnis</kanji> Anda <kanji>lulus</kanji> adalah <vocabulary>kelulusan</vocabulary> Anda. Kalau dipikir-pikir, ini semacam bisnis besar, membuat Anda lulus dari sekolah mahal. Bisnis wisuda berfokus pada wisuda, dan membawa Anda ke sana (petunjuk: bisnis ini mungkin adalah sekolah).', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kelulusan')
    RETURNING id INTO v_3913_kelulusan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '希望', 'harapan', 14, 132, '<kanji>harapan</kanji> dan <kanji>keinginan</kanji> Anda tersimpan dalam kosakata ini. Jadi, apa arti kata ini? Ini adalah <vocabulary>harapan</vocabulary> dan <vocabulary>keinginan</vocabulary>. Keduanya akan berhasil.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Harapan, Mengharapkan, Aspirasi')
    RETURNING id INTO v_3919_harapan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '妥協', 'kompromi', 14, 133, 'Ketika Anda memiliki <kanji>lembut</kanji> <kanji>kerjasama</kanji>, tidak ada seorang pun yang dapat melakukan apa yang mereka inginkan. Anda dengan sangat hati-hati mendekati titik tengah, mencapai <vocabulary>kompromi</vocabulary>. (Suka atau tidak.)', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kompromi, Menyerah')
    RETURNING id INTO v_3923_kompromi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '消化不良', 'gangguan-pencernaan', 14, 134, 'Mudah-mudahan Anda sudah melihat 消化 sekarang dan tahu bahwa artinya "pencernaan". Jika Anda mengetahuinya, maka Anda dapat melihat bahwa "pencernaannya" <kanji>tidak</kanji> <kanji>baik</kanji>. Ketika pencernaan Anda tidak baik, apa yang Anda miliki? <vocabulary>Gangguan pencernaan</vocabulary>. Permisi, saya harus lari ke kamar kecil...', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Mengetahui 消化 dan 不良 juga akan membantu.', 'Gangguan pencernaan')
    RETURNING id INTO v_3927_gangguan_pencernaan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '期待する', 'mengharapkan', 14, 135, 'Semoga Anda sekarang sudah mengetahui kata 期待 (harapan). Ini adalah versi kata kerjanya, yang menjadikannya <vocabulary>mengharapkan</vocabulary>.', 'Bacaannya berasal dari kata 期待, jadi pastikan kamu mengetahuinya untuk mengetahui yang satu ini juga.', 'Mengharapkan, Untuk Mengantisipasi')
    RETURNING id INTO v_3944_mengharapkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '回転ずし', 'memutar-sushi', 14, 136, 'Anda tahu bahwa 回転 adalah "rotasi" dan Anda mungkin tahu apa itu すし (dalam kata ini rendaku menjadi ずし). Jadi, apa itu "sushi rotasi?" Ini adalah <vocabulary>sushi berputar</vocabulary>, juga dikenal sebagai <vocabulary>sushi sabuk konveyor</vocabulary>. Carilah jika Anda tidak tahu apa itu.', 'Bacaannya berasal dari 回転, jadi pastikan Anda mengetahuinya untuk mengetahui yang satu ini. Selain itu, itu hanya pembacaan kanji yang kamu pelajari juga, jadi jangan terlalu sulit.', 'Memutar Sushi, Sushi Sabuk Konveyor, Sushi Berputar')
    RETURNING id INTO v_3945_memutar_sushi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '回転する', 'untuk-memutar', 14, 137, 'Anda tahu bahwa 回転 berarti "rotasi" atau "revolusi". Jadi, apa yang terjadi jika Anda mengubahnya menjadi kata kerja? Menjadi <vocabulary>berputar</vocabulary> dan <vocabulary>berputar</vocabulary>.', 'Pembacaannya berasal dari 回転 level 10. Alternatifnya, Anda bisa menggunakan pembacaan kanji saja. EZPZ.', 'Untuk Memutar, Untuk Berputar')
    RETURNING id INTO v_3946_untuk_memutar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '試合', 'permainan', 14, 138, '<kanji>usaha</kanji> untuk <kanji>bergabung</kanji> bersama bukan sekadar berkumpul. Bayangkan dua orang bertinju. Mereka berusaha untuk menjatuhkan satu sama lain ketika mereka bergabung bersama. Itu sebabnya kata ini adalah <vocabulary>game</vocabulary> atau <vocabulary>match</vocabulary>. Apakah kamu menonton 試合 hari ini? TIDAK! Jangan ceritakan apa yang terjadi, saya rekam di VHS.', 'Kata ini menggunakan on''yomi し untuk 試 dan kun''yomi あい untuk 合, yang kamu pelajari dengan 場合. Jadi, Anda harus bisa menyatukannya!', 'Permainan, Cocok')
    RETURNING id INTO v_4149_permainan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '理解する', 'untuk-memahami', 14, 139, '理解 adalah "pemahaman", jadi versi kata kerjanya adalah...? Bagaimana kalau <vocabulary>memahami</vocabulary> atau <vocabulary>memahami</vocabulary>? Ya, benarkah?', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Tentu saja, jika Anda sudah mengetahui 理解, yang satu ini mudah untuk dipahami.', 'Untuk Memahami, Untuk Memahami')
    RETURNING id INTO v_4854_untuk_memahami;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '閉店', 'toko-tutup', 14, 140, '<kanji>tutup</kanji> <kanji>toko</kanji> adalah ketika status toko adalah <vocabulary>toko tutup</vocabulary> atau <vocabulary>toko tutup</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Toko Tutup, Toko Tertutup, Menutup Toko, Menutup Toko')
    RETURNING id INTO v_5619_toko_tutup;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '開閉', 'pembukaan-dan-penutupan', 14, 141, 'Benda <kanji>Terbuka</kanji> dan <kanji>tertutup</kanji> adalah <vocabulary>pembukaan dan penutupan</vocabulary>.

開閉 adalah kata yang relatif formal untuk merujuk pada tindakan membuka dan menutup objek fisik seperti pintu, penutup jendela, atau katup. Anda sering melihatnya di buku petunjuk atau deskripsi produk.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Pembukaan Dan Penutupan')
    RETURNING id INTO v_5620_pembukaan_dan_penutupan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '俺ら', 'kami', 14, 142, '<kanji>I</kanji> dengan tanda ら menjadikannya jamak. Kata ini kurang formal dibandingkan 俺たち (jika Anda pernah melihatnya), namun memiliki arti yang sama. Itu adalah <vocabulary>kita</vocabulary>.', 'Bacaannya sama dengan bacaan kanji.', 'Kami')
    RETURNING id INTO v_6799_kami;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '空き缶', 'kaleng-kosong', 14, 143, 'Anda tahu bahwa 空く berarti "menjadi kosong", dan 缶 berarti <kanji>bisa</kanji>, jadi ini pasti <vocabulary>kaleng kosong</vocabulary>.

空き缶 biasanya mengacu pada kaleng minuman setelah isinya habis dikonsumsi, bukan kaleng kosong baru yang belum diisi. Dengan kata lain, ini adalah jenis kaleng yang akan Anda buang atau daur ulang setelah minuman Anda habis.', 'Kata ini merupakan kombinasi dari 空く dan 缶, jadi jika Anda mengetahui bacaannya, Anda akan baik-baik saja di sini.', 'Kaleng Kosong')
    RETURNING id INTO v_6827_kaleng_kosong;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '井戸', 'dengan-baik', 14, 144, '<kanji>sumur</kanji> <kanji>pintu</kanji> hanyalah sebuah <vocabulary>sumur</vocabulary>. Pintu itulah yang masuk ke dalam lubang sumur sehingga menjadi sumur.', 'Kanji ini menggunakan bacaan kun''yomi pada setiap kanjinya, entah kenapa. Anda sudah mempelajari pembacaan kun''yomi untuk kedua kanji ini sebagai pembacaan utama, hati-hati dengan 戸 yang diberi rendaku sehingga menjadi ど, bukan と.', 'Dengan baik')
    RETURNING id INTO v_6883_dengan_baik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '合わせる', 'untuk-bergabung-bersama', 14, 145, 'Anda tahu bahwa arti kanji alternatif untuk 合 adalah <kanji>join</kanji>, itulah yang kami gunakan di sini. Bentuk kata kerja dari join adalah <vocabulary>bergabung bersama</vocabulary>, dan bisa juga berarti <vocabulary>menyatukan</vocabulary> dan <vocabulary>mencocokkan</vocabulary>.', 'Bacaannya berasal dari 合う, jadi kalau kamu tahu bacaan itu kamu pasti tahu bacaan ini juga.', 'Untuk Bergabung Bersama, Untuk Menyatukan, Untuk Mencocokkan')
    RETURNING id INTO v_6946_untuk_bergabung_bersama;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', 'お疲れ様', 'kerja-bagus', 14, 146, 'Kamu seorang 疲れ (lelah) 様 (kehormatan yang mengacu pada siapapun yang disebutkan). Anda mengatakan ini kepada orang-orang ketika mereka telah melakukan pekerjaan dengan baik — di akhir hari kerja atau setelah latihan keras, misalnya. Saya kira idenya adalah jika mereka lelah, mereka telah melakukan pekerjaan dengan baik. Beri tahu rekan kerja Anda お疲れ様でした kapan mereka berangkat hari itu, atau cukup gunakan お疲れ dalam situasi santai bersama teman!', 'Bacaannya berasal dari 疲れ dan 様, digabungkan menjadi satu kata.', 'Kerja bagus, Terima Kasih Atas Kerja Keras Anda, Itu Cukup Untuk Hari Ini')
    RETURNING id INTO v_7449_kerja_bagus;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '性', 'jenis-kelamin', 14, 147, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.

性 adalah kata yang agak formal untuk berbicara tentang <vocabulary>gender</vocabulary> dan <vocabulary>sex</vocabulary>, termasuk hasrat atau aktivitas seksual. Ini juga merupakan sufiks umum untuk menggambarkan <vocabulary>sifat</vocabulary> sesuatu. 安全性 mengacu pada seberapa aman sesuatu itu secara alami, misalnya, dan ウィルス性 menggambarkan sesuatu yang disebabkan oleh virus, seperti virus pneumonia.', 'Bacaannya sama dengan kanji yang Anda pelajari, artinya Anda tahu bacaannya!', 'Jenis kelamin, Alam, Seks')
    RETURNING id INTO v_7539_jenis_kelamin;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '動き', 'pergerakan', 14, 148, 'Ini adalah versi kata benda dari kanji <kanji>bergerak</kanji>. Jadi artinya <vocabulary>gerakan</vocabulary>.', 'Ini adalah bacaan yang sama yang Anda pelajari dari kata 動く. Jika Anda mengetahui kata itu, Anda pasti tahu cara membaca kata ini!', 'Pergerakan, Aktivitas, Kecenderungan, Perkembangan, Mengubah')
    RETURNING id INTO v_7541_pergerakan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '周り', 'lingkar', 14, 149, 'Ini adalah versi kata benda dari kanji <kanji>keliling</kanji>, jadi artinya <vocabulary>keliling</vocabulary> juga.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Anda benar-benar ingin mengukur <vocabulary>keliling</vocabulary> sesuatu tetapi sepertinya tidak ada apa pun di sekitarnya. Saat itulah Anda teringat, "<reading>Mah Wa</reading>kacang! (まわ)." Kacang kenari di saku Anda memiliki <vocabulary>tepian</vocabulary> yang mudah diukur.', 'Lingkar, Perimeter, Tepian, Lingkungan, Lokalitas, Lingkungan')
    RETURNING id INTO v_7584_lingkar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '深さ', 'kedalaman', 14, 150, 'Ini adalah versi kata benda dari kanji <kanji>dalam</kanji>, jadi artinya <vocabulary>kedalaman</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda sudah mempelajari bacaan ini ketika mempelajari 深い jadi Anda harus bisa membaca yang ini juga!', 'Kedalaman, Kedalaman')
    RETURNING id INTO v_7585_kedalaman;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '周期', 'siklus', 14, 151, 'Jika Anda mengikuti <kanji>keliling</kanji> suatu <kanji>periode waktu</kanji>, Anda akan kembali ke awal dan membuat <vocabulary>cycle</vocabulary> penuh. Peristiwa dalam sejarah selalu terulang bukan?', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Siklus, Periode')
    RETURNING id INTO v_7638_siklus;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '理性', 'alasan', 14, 152, 'Jika Anda memiliki <kanji>akal</kanji> di <kanji>sifat</kanji> Anda, Anda memiliki <vocabulary>akal</vocabulary>, <vocabulary>akal</vocabulary> dan <vocabulary>intellect</vocabulary>.

Ini adalah "akal" seperti dalam pemikiran logis.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Alasan, Nalar, Intelek')
    RETURNING id INTO v_7639_alasan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '待合', 'ruang-tunggu', 14, 153, 'Tempat Anda <kanji>menunggu</kanji> untuk <kanji>bergabung</kanji> dengan orang lain adalah <vocabulary>ruang tunggu</vocabulary> atau <vocabulary>tempat pertemuan</vocabulary>.', 'Bacaan kata ini sama-sama bacaan kun''yomi, tapi seperti hiragana yang biasanya menonjol dimasukkan ke dalamnya. 待ち → 待, 合い → 合 dan pengucapannya juga sama. Saya tahu ini membingungkan, tetapi begitu Anda memahaminya, Anda tidak akan pernah lupa!', 'Ruang tunggu, Tempat Pertemuan')
    RETURNING id INTO v_7688_ruang_tunggu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '言葉つき', 'artikulasi', 14, 154, 'Ingat bagaimana 言葉 berarti "bahasa?" Nah, cara Anda "melampirkan" bahasa (付き) pada sesuatu adalah <vocabulary>diksi</vocabulary> Anda. Setiap orang mempunyai 言葉つき masing-masing ketika berbicara. Bagaimana Anda mendeskripsikan 言葉つき Anda?

言葉つき mengacu pada karakteristik <vocabulary>cara seseorang berbicara</vocabulary>, termasuk kata-kata yang dipilihnya, cara mengucapkannya, dan gaya bicaranya secara keseluruhan.', 'Bacaan kata ini sama-sama bacaan kun''yomi. Anda telah mempelajari kedua bacaan ini sekarang jadi Anda seharusnya bisa membacanya sendiri.', 'Artikulasi, Bagaimana Seseorang Berbicara')
    RETURNING id INTO v_7696_artikulasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '具合', 'kondisi', 14, 155, 'Anda harus menemukan <kanji>alat</kanji> yang tepat untuk <kanji>sesuai</kanji> <vocabulary>kondisi</vocabulary> atau <vocabulary>state</vocabulary> Anda. Jika Anda memiliki kondisi <vocabulary>kesehatan</vocabulary>, alatnya adalah pil, atau olahraga, atau teman di kehidupan nyata. Tapi itu selalu tergantung pada kondisi Anda saat ini.', 'Kata ini terdiri dari bacaan on''yomi untuk 具 dan bacaan kun''yomi untuk 合. Anda telah mempelajari keduanya, jadi Anda seharusnya bisa membaca kata ini juga!', 'Kondisi, Negara, Kesehatan')
    RETURNING id INTO v_7739_kondisi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '意図的', 'disengaja', 14, 156, 'Anda tidak akan meletakkan <kanji>ide</kanji> Anda dalam format <kanji>diagram</kanji> <kanji>~seperti</kanji> jika tidak <vocabulary>disengaja</vocabulary>. Melakukan hal itu membutuhkan banyak usaha. Jadi Anda hanya dapat membuat diagram seperti hal-hal <vocabulary>dengan sengaja</vocabulary>!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda belum mempelajari bacaan ini untuk 図, jadi inilah mnemonik untuk membantu Anda:

Anda <vocabulary>sengaja</vocabulary>mematikan <reading>jari kaki</reading> (と) Anda sepanjang waktu! Jika jari kakimu <vocabulary>sengaja</vocabulary> kamu terluka, kamu boleh keluar kelas dan bekerja! Ini adalah cedera yang sangat sederhana, tetapi Anda tidak dapat melakukan hal lain saat cedera itu terjadi, jadi Anda selalu melakukannya dengan sengaja untuk keluar dari situasi tersebut.', 'Disengaja, Sesuai Tujuan')
    RETURNING id INTO v_7752_disengaja;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '近代的', 'kontemporer', 14, 157, 'Sesuatu yang <kanji>dekat</kanji> <kanji>periode</kanji> <kanji>seperti</kanji> sangatlah <vocabulary>kontemporer</vocabulary>. Tetapi jika sepertinya itu berasal dari periode yang tidak dekat dengan tempat Anda berada... buanglah! <Kosakata>modern</vocabulary> tidak cukup untuk menyentuh tangan Anda!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Kontemporer, Modern')
    RETURNING id INTO v_7753_kontemporer;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '意地悪', 'jahat', 14, 158, 'Seseorang yang <kanji>idenya</kanji>nya <kanji>dibumikan</kanji>di dalam <kanji>kejahatan</kanji> adalah <vocabulary>jahat</vocabulary>, <vocabulary>jahat</vocabulary> <vocabulary>brengsek</vocabulary>!', 'Bacaan ini merupakan gabungan dari bacaan on''yomi untuk 意 dan 地, serta bacaan kun''yomi untuk 悪. Anda sudah mempelajari semuanya, tapi karena 地 memiliki dua bacaan on''yomi, berikut adalah mnemonik untuk membantu Anda mengingat mana yang akan digunakan:

<vocabulary>Berbahaya</vocabulary>, <vocabulary>jahat</vocabulary> <vocabulary>brengsek</vocabulary> dikirim ke <reading>Je</reading>sus (じ) untuk menyelesaikannya. Jika ada yang bisa membereskan orang-orang brengsek itu, itu adalah Yesus!', 'Jahat, Berarti, Berengsek')
    RETURNING id INTO v_8669_jahat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '合図', 'sinyal', 14, 159, '<kanji>diagram</kanji> yang dilihat semua orang <kanji>bergabung</kanji> bersama-sama adalah <vocabulary>sinyal</vocabulary> atau <vocabulary>tanda</vocabulary>.', 'Kata ini menggunakan bacaan kun''yomi untuk 合 dan bacaan on''yomi untuk 図. Anda sudah mengenal keduanya sekarang, jadi Anda harus bisa membaca ini juga!', 'Sinyal, Tanda')
    RETURNING id INTO v_8700_sinyal;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '本能', 'naluri', 14, 160, '<kanji>kemampuan</kanji> yang <kanji>asal</kanji>Anda mulai gunakan adalah <vocabulary>naluri</vocabulary>. Hewan mempunyai banyak hal karena mereka tidak pandai belajar. Mereka harus mulai mengenal mereka sejak awal.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Naluri')
    RETURNING id INTO v_8749_naluri;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '運動会', 'hari-olahraga', 14, 161, 'Ingat bagaimana 運動 berarti "olahraga?" Saat Anda <kanji>bertemu</kanji> dengan sekelompok orang untuk berolahraga, ini disebut <vocabulary>Hari Olahraga</vocabulary>! Ini adalah hari di sekolah-sekolah di Jepang di mana semua orang melakukan aktivitas fisik bersama! Menyenangkan dan juga sangat melelahkan!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Hari Olahraga')
    RETURNING id INTO v_8750_hari_olahraga;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '人参', 'wortel', 14, 162, 'Apa yang Anda gunakan agar <kanji>orang</kanji> <kanji>berpartisipasi</kanji> dalam sesuatu? Sebuah <vocabulary>wortel</vocabulary>, tentu saja. Anda pernah mendengar tentang "wortel dan tongkat", bukan? Jadi lain kali Anda ingin seseorang berpartisipasi, tawarkan mereka wortel.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Anda belum mempelajari bacaan ini untuk 参, jadi inilah mnemonik untuk membantu Anda:

Anda menginginkan <vocabulary>wortel</vocabulary>, tetapi sepertinya Anda tidak dapat menemukannya. Anda mencari di lemari es, di taman, dan bahkan di tempat sampah. Akhirnya Anda berhenti mencari wortel dan duduk ketika... aduh! Wortel itu ada di dalam <reading>jean</reading> (じん) Anda sepanjang waktu!', 'Wortel')
    RETURNING id INTO v_8805_wortel;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '温まる', 'untuk-pemanasan', 14, 163, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu bahwa kata ini adalah kata kerja. Kanji 温 berarti <kanji>hangat</kanji>. Jadi kata kerjanya 温まる berarti <kosa kata>memanaskan</vocabulary> atau <vocabulary>menjadi hangat</vocabulary>. 

温まる bersifat intransitif, jadi tidak diperlukan objek langsung. Kucing Anda menjadi hangat di bawah sinar matahari, misalnya. Tidak ada objek langsung, bukan? Petunjuknya adalah 温まる diakhiri dengan okurigana yang berima dengan ある, dan kata kerja semacam itu cenderung intransitif!', 'Pembacaan kanji sama dengan 温かい dan 温める.', 'Untuk Pemanasan, Untuk Menjadi Hangat')
    RETURNING id INTO v_8954_untuk_pemanasan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '苺', 'stroberi', 14, 164, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Pembacaan kosakata ini sama dengan pembacaan yang Anda pelajari dengan kanji. Pergi makan stroberi untuk merayakannya!', 'Stroberi')
    RETURNING id INTO v_8975_stroberi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '狼', 'serigala', 14, 165, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Pembacaan kosakata ini sama dengan pembacaan yang Anda pelajari dengan kanji.', 'Serigala')
    RETURNING id INTO v_8984_serigala;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '狼男', 'manusia-serigala', 14, 166, 'Apa kata lain dari <kanji>serigala</kanji> <kanji>manusia</kanji>? <kosa kata>manusia serigala</vocabulary>, tentu saja.', 'Anda telah mempelajari cara membaca 狼 baik dalam kanji maupun kosa kata. Bacaan 男 berasal dari kosakata 男. Gabungkan semuanya dan Anda mendapatkan <reading>おおかみおとこ</reading>. Aduh.', 'manusia serigala')
    RETURNING id INTO v_8985_manusia_serigala;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '行', 'baris-teks', 14, 167, 'Anda menulis kata <kanji>go</kanji> pada <vocabulary>baris teks</vocabulary>. Lihat kata "pergi" pada <vocabulary>baris</vocabulary> tersebut, dan pikirkan ke mana Anda akan pergi.

Kata ini juga dapat digunakan untuk <vocabulary>row</vocabulary>s (garis horizontal di Excel dan spreadsheet lainnya).', 'Ada dua pembacaan on''yomi untuk kanji ini, tetapi jika digunakan untuk mengartikan baris teks, maka diucapkan sebagai ぎょう. Berikut ini mnemonik untuk membantu Anda mengingatnya:

Anda menulis <vocabulary>baris teks</vocabulary> lain yang meminta beberapa <reading>gyo</reading>za (ぎょう). Anda menulis baris teks itu dengan perlahan dan hati-hati, dengan tulisan tangan terbaik Anda. Ternyata Anda pergi ke restoran gyoza dan ingin memastikan bahwa koki gyoza Anda terkesan, sehingga mereka memberi Anda banyak gyoza.', 'Baris Teks, Garis, Baris')
    RETURNING id INTO v_9243_baris_teks;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '毛皮', 'bulu', 14, 168, 'Kata ini cukup jelas. Anda memiliki <kanji>bulu</kanji> dan <kanji>kulit</kanji>, membuat sebuah kata yang berarti <vocabulary>bulu</vocabulary> atau <vocabulary>pelt</vocabulary>, seperti jenis yang dapat digunakan untuk membuat pakaian.', 'Ini merupakan kasus khusus karena kedua kanji tersebut menggunakan bacaan kun''yomi pada kata ini. Untungnya, Anda sudah mengetahui bacaan kun''yomi dari mempelajari kosakata 毛 dan 皮 sebelumnya. Hati-hati dengan rendaku pada kanji kedua, 皮.', 'Bulu, Melempari, Bulu Hewan')
    RETURNING id INTO v_9264_bulu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '明らか', 'jelas', 14, 169, 'Saat keadaan <kanji>cerah</kanji>, segala sesuatunya menjadi lebih <vocabulary>jelas</vocabulary>, <vocabulary>jelas</vocabulary> dan <vocabulary>jelas</vocabulary>.', 'Karena ini adalah kata yang terdiri dari kanji dengan hiragana di dalamnya, bisa dipastikan kata tersebut menggunakan kun''yomi. Sayangnya, 明 sedikit rumit dan memiliki beberapa di antaranya. Jadi, inilah mnemonik untuk membantu Anda mengingat yang satu ini:

<vocabulary>Jelas</vocabulary> yang Anda butuhkan hanyalah <reading>sebuah kunci</reading> (あき) untuk membuka pintu ini. Ini seperti, <vocabulary>jelas</vocabulary> secara terang-terangan. Kuncinya ada di sana. Anda benar-benar hanya membutuhkan kunci. Apakah kamu melupakannya? Tentu saja Anda melakukannya…', 'Jelas, Jernih, Jelas')
    RETURNING id INTO v_9274_jelas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '世話', 'peduli', 14, 170, '<kanji>generasi</kanji> yang lebih tua kebanyakan <kanji>berbicara</kanji> tentang satu hal: <vocabulary>care</vocabulary>. Semua orang ingin menerima perawatan setelah mereka dewasa, bukan?', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Ingatlah bahwa 世 ada せ di sini, dan bukan せい!', 'Peduli, Menjaga')
    RETURNING id INTO v_9301_peduli;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '空き家', 'rumah-kosong', 14, 171, 'Anda telah mengetahui bahwa 空く berarti "menjadi kosong", bukan? Nah, terapkan itu pada <kanji>rumah</kanji> dan Anda akan mendapatkan <vocabulary>rumah kosong</vocabulary> atau <vocabulary>rumah tak berpenghuni</vocabulary>.

空き家 mengacu pada rumah yang tidak lagi ditinggali. Seringkali ini menyiratkan bahwa rumah tersebut telah kosong selama beberapa waktu, mungkin karena kurangnya calon pembeli atau penyewa.', 'Bacaan 空き adalah bacaan yang kamu pelajari dengan 空く, jadi kamu harusnya mahir dalam hal itu. 家 menggunakan bacaan baru, namun — や — jadi inilah mnemonik untuk membantu Anda mengingatnya:

Saat makelar barang tak bergerak Jepang menunjukkan <vocabulary>rumah kosong</vocabulary>, Anda mungkin akan mengatakan "<reading>yah</reading> (や)" padanya. Jepang memiliki banyak <vocabulary>rumah kosong</vocabulary> bagus yang harganya jauh lebih murah dibandingkan rata-rata pasar, jadi ketika Anda melihat harganya, Anda akan berteriak, "Oh yah! Heck yah! Daftarkan saya!"', 'Rumah Kosong, Rumah Tak Berpenghuni')
    RETURNING id INTO v_9475_rumah_kosong;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3034_kasus, 'Kasus', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3034_kasus, 'Keadaan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3034_kasus, 'Situasi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3129_untuk_membuat_seseorang_menunggu, 'Untuk Membuat Seseorang Menunggu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3129_untuk_membuat_seseorang_menunggu, 'Untuk Membuat Seseorang Menunggu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3241_kawan, 'Kawan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3241_kawan, 'Pendamping', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3345_festival, 'Festival', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3395_kimono, 'Kimono', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3395_kimono, 'Pakaian', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3396_pakaian_dalam, 'Pakaian dalam', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3397_baju_renang, 'Baju renang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3397_baju_renang, 'Baju Renang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3397_baju_renang, 'Pakaian renang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3489_tepat_waktu_untuk, 'Tepat Waktu Untuk', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3489_tepat_waktu_untuk, 'Agar Tepat Waktu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3489_tepat_waktu_untuk, 'Agar Tepat Waktu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3497_kenalan, 'Kenalan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3503_berdiri, 'Berdiri', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3503_berdiri, 'Menunggu dengan Sia-sia', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3585_merasa, 'Merasa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3585_merasa, 'Kesan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3585_merasa, 'Nalar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3602_setiap_orang, 'Setiap orang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3602_setiap_orang, 'Semua', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3602_setiap_orang, 'Semua orang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3637_tolong_bantu_saya, 'Tolong Bantu Saya', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3637_tolong_bantu_saya, 'Silakan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3637_tolong_bantu_saya, 'Jika Anda Bersikap Baik', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3642_gedung_utama, 'Gedung Utama', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3642_gedung_utama, 'Gedung ini', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3650_penghapus, 'Penghapus', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3650_penghapus, 'Karet', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3651_niat_jahat, 'Niat Jahat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3651_niat_jahat, 'Kebencian', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3651_niat_jahat, 'Sakit hati', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3652_pendakian_gunung, 'Pendakian Gunung', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3653_frase_populer, 'Frase Populer', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3653_frase_populer, 'Frase menarik', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3653_frase_populer, 'Kata Populer', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3653_frase_populer, 'Kata kunci', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3654_lagu_populer, 'Lagu Populer', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3655_pengecualian, 'Pengecualian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3656_contoh, 'Contoh', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3656_contoh, 'Contoh', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3657_misalnya, 'Misalnya', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3657_misalnya, 'Misalnya', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3657_misalnya, 'Seandainya Itu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3658_contoh_kalimat, 'Contoh Kalimat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3658_contoh_kalimat, 'Kalimat Model', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3658_contoh_kalimat, 'Contoh Kalimat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3660_asosiasi, 'Asosiasi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3660_asosiasi, 'Organisasi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3660_asosiasi, 'Masyarakat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3661_kerja_sama, 'Kerja sama', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3661_kerja_sama, 'Kolaborasi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3661_kerja_sama, 'Bantuan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3662_akan_datang, 'Akan Datang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3662_akan_datang, 'Untuk Pergi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3662_akan_datang, 'Untuk Mengunjungi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3662_akan_datang, 'Untuk Dikalahkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3662_akan_datang, 'Menjadi Rugi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3663_suatu_saat, 'Suatu Saat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3663_suatu_saat, 'Sekali Sekitar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3663_suatu_saat, 'Satu Putaran', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3664_lingkungan, 'Lingkungan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3664_lingkungan, 'Perimeter', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3664_lingkungan, 'Lingkar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3665_peringatan_tahunan, 'Peringatan tahunan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3666_untuk_mengelilingi, 'Untuk Mengelilingi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3666_untuk_mengelilingi, 'Untuk Melampirkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3667_suasana, 'Suasana', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3667_suasana, 'Suasana', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3667_suasana, 'Suasana', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3667_suasana, 'Suasana hati', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3668_keras, 'Keras', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3668_keras, 'Keras', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3668_keras, 'Tegas', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3669_keras_kepala, 'Keras kepala', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3670_dasar, 'Dasar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3670_dasar, 'Dasar-dasar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3671_empat_musim, 'Empat Musim', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3671_empat_musim, 'Empat Musim', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3672_penyelesaian, 'Penyelesaian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3672_penyelesaian, 'Menyelesaikan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3672_penyelesaian, 'Menyelesaikan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3672_penyelesaian, 'Kesimpulan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3673_menyelesaikan, 'Menyelesaikan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3673_menyelesaikan, 'Sempurna', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3673_menyelesaikan, 'Kesempurnaan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3673_menyelesaikan, 'Kelengkapan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3674_penyelesaian, 'Penyelesaian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3674_penyelesaian, 'Selesai', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3675_keinginan_hati, 'Keinginan Hati', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3675_keinginan_hati, 'Keinginan yang sungguh-sungguh', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3676_sayangnya, 'Sayangnya', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3676_sayangnya, 'Sayang sekali', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3676_sayangnya, 'Sangat disesalkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3676_sayangnya, 'Mengecewakan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3677_sifat_manusia, 'Sifat manusia', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3677_sifat_manusia, 'Naluri', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3678_perempuan, 'Perempuan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3678_perempuan, 'Wanita', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3678_perempuan, 'Wanita', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3679_penyakit_menular_seksual, 'Penyakit Menular Seksual', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3679_penyakit_menular_seksual, 'Std', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3680_pria, 'Pria', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3680_pria, 'Pria', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3680_pria, 'Pria', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3684_untuk_melipat_sesuatu, 'Untuk Melipat Sesuatu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3684_untuk_melipat_sesuatu, 'Untuk Menghancurkan Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3685_dengan_masalah, 'Dengan Masalah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3685_dengan_masalah, 'Berharga', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3685_dengan_masalah, 'Berharga', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3685_dengan_masalah, 'Langka', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3686_patah_tulang, 'Patah Tulang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3686_patah_tulang, 'Patah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3686_patah_tulang, 'Fraktur Tulang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3687_kekecewaan, 'Kekecewaan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3687_kekecewaan, 'Putus asa', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3688_mengharapkan, 'Mengharapkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3688_mengharapkan, 'Harapan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3688_mengharapkan, 'Menginginkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3689_berharap, 'Berharap', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3689_berharap, 'Untuk Keinginan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3689_berharap, 'Untuk Berharap', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3690_menginginkan, 'Menginginkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3690_menginginkan, 'Mengharapkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3690_menginginkan, 'Aspirasi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3692_kayu, 'Kayu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3692_kayu, 'Kayu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3693_bahan_bahan, 'Bahan-bahan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3693_bahan_bahan, 'Bahan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3694_kayu, 'Kayu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3694_kayu, 'Kayu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3694_kayu, 'Kayu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3695_bundel, 'Bundel', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3695_bundel, 'Kelompok', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3696_janji, 'Janji', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3696_janji, 'Janji temu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3696_janji, 'Pakta', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3697_pinus, 'Pinus', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3697_pinus, 'Pohon pinus', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3698_jarum_pinus, 'Jarum Pinus', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3700_untuk_lulus_ujian, 'Untuk Lulus Ujian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3700_untuk_lulus_ujian, 'Untuk Lulus Ujian', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3701_kepribadian, 'Kepribadian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3704_sisa, 'Sisa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3704_sisa, 'Sisa', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3704_sisa, 'Sisa', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3704_sisa, 'Residu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3705_untuk_tetap_tertinggal, 'Untuk Tetap Tertinggal', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3705_untuk_tetap_tertinggal, 'Untuk Tetap', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3705_untuk_tetap_tertinggal, 'Untuk Tetap Tertinggal', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3706_lembur, 'Lembur', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3710_memasak, 'Memasak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3710_memasak, 'Masakan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3710_memasak, 'Piring', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3711_al, '-al', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3711_al, '-Menyukai', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3711_al, 'Khas Dari', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3712_sangat_jepang, 'Sangat Jepang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3712_sangat_jepang, 'Biasanya orang Jepang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3713_tujuan, 'Tujuan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3713_tujuan, 'Sasaran', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3713_tujuan, 'Motif', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3718_reservasi, 'Reservasi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3718_reservasi, 'Janji temu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3719_tentang, 'Tentang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3719_tentang, 'Sekitar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3721_bakat, 'Bakat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3722_kemampuan, 'Kemampuan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3722_kemampuan, 'Kemampuan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3723_bisnis_pertunjukan, 'Bisnis Pertunjukan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3723_bisnis_pertunjukan, 'Industri Hiburan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3724_pelawak, 'Pelawak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3724_pelawak, 'Pemain', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3724_pelawak, 'Penghibur', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3725_geisha, 'Geisha', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3728_tulang, 'Tulang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3798_untuk_menenangkan_diri, 'Untuk Menenangkan Diri', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3880_untuk_mencerna, 'Untuk Mencerna', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3880_untuk_mencerna, 'Untuk Menghabiskan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3881_menghilang, 'Menghilang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3881_menghilang, 'Untuk Keluar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3881_menghilang, 'Untuk Mematikan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3882_perasaan_buruk, 'Perasaan Buruk', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3882_perasaan_buruk, 'Merasa Buruk', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3882_perasaan_buruk, 'Merasa Mengerikan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3882_perasaan_buruk, 'Tidak menyenangkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3882_perasaan_buruk, 'Bruto', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3883_untuk_streaming, 'Untuk Streaming', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3883_untuk_streaming, 'Mengalir', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3884_untuk_memindahkan_sesuatu, 'Untuk Memindahkan Sesuatu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3885_untuk_memakai, 'Untuk Memakai', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3885_untuk_memakai, 'Untuk Dipakai', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3886_untuk_belajar, 'Untuk Belajar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3887_untuk_bepergian, 'Untuk Bepergian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3887_untuk_bepergian, 'Untuk Melakukan Perjalanan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3889_untuk_membangunkan_seseorang, 'Untuk Membangunkan Seseorang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3889_untuk_membangunkan_seseorang, 'Untuk Menyebabkan Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3890_wisatawan, 'Wisatawan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3890_wisatawan, 'Turis', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3891_mulut_buruk, 'Mulut Buruk', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3891_mulut_buruk, 'Bicara Sampah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3897_bagus, 'Bagus', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3897_bagus, 'Baik', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3897_bagus, 'Memuaskan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3902_untuk_mengatur, 'Untuk Mengatur', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3902_untuk_mengatur, 'Untuk Mengatur', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3902_untuk_mengatur, 'Untuk Menyortir', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3909_otomatis, 'Otomatis', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3913_kelulusan, 'Kelulusan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3919_harapan, 'Harapan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3919_harapan, 'Mengharapkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3919_harapan, 'Aspirasi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3923_kompromi, 'Kompromi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3923_kompromi, 'Menyerah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3927_gangguan_pencernaan, 'Gangguan pencernaan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3944_mengharapkan, 'Mengharapkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3944_mengharapkan, 'Untuk Mengantisipasi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3945_memutar_sushi, 'Memutar Sushi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3945_memutar_sushi, 'Sushi Sabuk Konveyor', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3945_memutar_sushi, 'Sushi Berputar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3946_untuk_memutar, 'Untuk Memutar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3946_untuk_memutar, 'Untuk Berputar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4149_permainan, 'Permainan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4149_permainan, 'Cocok', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4854_untuk_memahami, 'Untuk Memahami', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4854_untuk_memahami, 'Untuk Memahami', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5619_toko_tutup, 'Toko Tutup', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5619_toko_tutup, 'Toko Tertutup', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5619_toko_tutup, 'Menutup Toko', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5619_toko_tutup, 'Menutup Toko', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5620_pembukaan_dan_penutupan, 'Pembukaan Dan Penutupan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6799_kami, 'Kami', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6827_kaleng_kosong, 'Kaleng Kosong', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6883_dengan_baik, 'Dengan baik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6946_untuk_bergabung_bersama, 'Untuk Bergabung Bersama', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6946_untuk_bergabung_bersama, 'Untuk Menyatukan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6946_untuk_bergabung_bersama, 'Untuk Mencocokkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7449_kerja_bagus, 'Kerja bagus', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7449_kerja_bagus, 'Terima Kasih Atas Kerja Keras Anda', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7449_kerja_bagus, 'Itu Cukup Untuk Hari Ini', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7539_jenis_kelamin, 'Jenis kelamin', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7539_jenis_kelamin, 'Alam', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7539_jenis_kelamin, 'Seks', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7541_pergerakan, 'Pergerakan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7541_pergerakan, 'Aktivitas', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7541_pergerakan, 'Kecenderungan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7541_pergerakan, 'Perkembangan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7541_pergerakan, 'Mengubah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7584_lingkar, 'Lingkar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7584_lingkar, 'Perimeter', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7584_lingkar, 'Tepian', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7584_lingkar, 'Lingkungan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7584_lingkar, 'Lokalitas', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7584_lingkar, 'Lingkungan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7585_kedalaman, 'Kedalaman', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7585_kedalaman, 'Kedalaman', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7638_siklus, 'Siklus', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7638_siklus, 'Periode', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7639_alasan, 'Alasan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7639_alasan, 'Nalar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7639_alasan, 'Intelek', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7688_ruang_tunggu, 'Ruang tunggu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7688_ruang_tunggu, 'Tempat Pertemuan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7696_artikulasi, 'Artikulasi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7696_artikulasi, 'Bagaimana Seseorang Berbicara', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7739_kondisi, 'Kondisi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7739_kondisi, 'Negara', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7739_kondisi, 'Kesehatan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7752_disengaja, 'Disengaja', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7752_disengaja, 'Sesuai Tujuan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7753_kontemporer, 'Kontemporer', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7753_kontemporer, 'Modern', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8669_jahat, 'Jahat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8669_jahat, 'Berarti', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8669_jahat, 'Berengsek', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8700_sinyal, 'Sinyal', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8700_sinyal, 'Tanda', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8749_naluri, 'Naluri', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8750_hari_olahraga, 'Hari Olahraga', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8805_wortel, 'Wortel', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8954_untuk_pemanasan, 'Untuk Pemanasan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8954_untuk_pemanasan, 'Untuk Menjadi Hangat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8975_stroberi, 'Stroberi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8984_serigala, 'Serigala', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8985_manusia_serigala, 'manusia serigala', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9243_baris_teks, 'Baris Teks', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9243_baris_teks, 'Garis', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9243_baris_teks, 'Baris', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9264_bulu, 'Bulu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9264_bulu, 'Melempari', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9264_bulu, 'Bulu Hewan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9274_jelas, 'Jelas', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9274_jelas, 'Jernih', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9274_jelas, 'Jelas', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9301_peduli, 'Peduli', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9301_peduli, 'Menjaga', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9475_rumah_kosong, 'Rumah Kosong', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9475_rumah_kosong, 'Rumah Tak Berpenghuni', false, true);

  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3034_kasus, 'ばあい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3129_untuk_membuat_seseorang_menunggu, 'またせる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3241_kawan, 'なかま', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3345_festival, 'まつり', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3395_kimono, 'きもの', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3396_pakaian_dalam, 'したぎ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3397_baju_renang, 'みずぎ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3489_tepat_waktu_untuk, 'まにあう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3497_kenalan, 'しりあい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3503_berdiri, 'まちぼうけ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3585_merasa, 'かんじ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3602_setiap_orang, 'みなさま', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3637_tolong_bantu_saya, 'おねがいします', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3642_gedung_utama, 'ほんかん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3650_penghapus, 'けしごむ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3650_penghapus, 'けしゴム', NULL, false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3651_niat_jahat, 'わるぎ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3652_pendakian_gunung, 'やまのぼり', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3653_frase_populer, 'りゅうこうご', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3654_lagu_populer, 'りゅうこうか', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3655_pengecualian, 'れいがい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3656_contoh, 'いちれい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3657_misalnya, 'たとえば', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3658_contoh_kalimat, 'れいぶん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3660_asosiasi, 'きょうかい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3661_kerja_sama, 'きょうりょく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3662_akan_datang, 'まいる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3663_suatu_saat, 'いっしゅう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3664_lingkungan, 'しゅうい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3665_peringatan_tahunan, 'しゅうねん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3666_untuk_mengelilingi, 'かこむ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3667_suasana, 'ふんいき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3668_keras, 'かたい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3669_keras_kepala, 'がんこ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3670_dasar, 'きほん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3671_empat_musim, 'しき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3672_penyelesaian, 'かんりょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3673_menyelesaikan, 'かんぜん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3674_penyelesaian, 'かんせい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3675_keinginan_hati, 'ねんがん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3676_sayangnya, 'ざんねん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3677_sifat_manusia, 'じんせい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3678_perempuan, 'じょせい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3679_penyakit_menular_seksual, 'せいびょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3680_pria, 'だんせい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3684_untuk_melipat_sesuatu, 'おる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3685_dengan_masalah, 'せっかく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3686_patah_tulang, 'こっせつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3687_kekecewaan, 'しつぼう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3688_mengharapkan, 'のぞみ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3689_berharap, 'のぞむ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3690_menginginkan, 'がんぼう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3692_kayu, 'もくざい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3693_bahan_bahan, 'ざいりょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3694_kayu, 'ざいもく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3695_bundel, 'たば', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3696_janji, 'やくそく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3697_pinus, 'まつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3698_jarum_pinus, 'まつば', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3700_untuk_lulus_ujian, 'ごうかくする', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3701_kepribadian, 'せいかく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3704_sisa, 'のこり', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3705_untuk_tetap_tertinggal, 'のこる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3706_lembur, 'ざんぎょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3710_memasak, 'りょうり', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3711_al, 'てき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3712_sangat_jepang, 'にほんてき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3713_tujuan, 'もくてき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3718_reservasi, 'よやく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3719_tentang, 'やく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3721_bakat, 'さいのう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3722_kemampuan, 'のうりょく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3723_bisnis_pertunjukan, 'げいのうかい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3724_pelawak, 'げいにん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3725_geisha, 'げいしゃ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3728_tulang, 'ほね', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3798_untuk_menenangkan_diri, 'おちつく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3880_untuk_mencerna, 'しょうかする', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3881_menghilang, 'きえる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3882_perasaan_buruk, 'きもちわるい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3883_untuk_streaming, 'ながれる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3884_untuk_memindahkan_sesuatu, 'うごかす', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3885_untuk_memakai, 'つける', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3886_untuk_belajar, 'べんきょうする', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3887_untuk_bepergian, 'りょこうする', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3889_untuk_membangunkan_seseorang, 'おこす', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3890_wisatawan, 'りょこうしゃ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3891_mulut_buruk, 'わるぐち', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3897_bagus, 'りょうこう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3902_untuk_mengatur, 'せいりする', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3909_otomatis, 'じどう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3913_kelulusan, 'そつぎょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3919_harapan, 'きぼう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3923_kompromi, 'だきょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3927_gangguan_pencernaan, 'しょうかふりょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3944_mengharapkan, 'きたいする', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3945_memutar_sushi, 'かいてんずし', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3946_untuk_memutar, 'かいてんする', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4149_permainan, 'しあい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4854_untuk_memahami, 'りかいする', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5619_toko_tutup, 'へいてん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5620_pembukaan_dan_penutupan, 'かいへい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6799_kami, 'おれら', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6827_kaleng_kosong, 'あきかん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6883_dengan_baik, 'いど', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6946_untuk_bergabung_bersama, 'あわせる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7449_kerja_bagus, 'おつかれさま', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7539_jenis_kelamin, 'せい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7541_pergerakan, 'うごき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7584_lingkar, 'まわり', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7585_kedalaman, 'ふかさ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7638_siklus, 'しゅうき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7639_alasan, 'りせい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7688_ruang_tunggu, 'まちあい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7696_artikulasi, 'ことばつき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7739_kondisi, 'ぐあい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7752_disengaja, 'いとてき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7753_kontemporer, 'きんだいてき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8669_jahat, 'いじわる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8700_sinyal, 'あいず', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8749_naluri, 'ほんのう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8750_hari_olahraga, 'うんどうかい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8805_wortel, 'にんじん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8954_untuk_pemanasan, 'あたたまる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8975_stroberi, 'いちご', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8984_serigala, 'おおかみ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8985_manusia_serigala, 'おおかみおとこ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9243_baris_teks, 'ぎょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9264_bulu, 'けがわ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9274_jelas, 'あきらか', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9301_peduli, 'せわ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9475_rumah_kosong, 'あきや', NULL, true, true);

  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3034_kasus, '私の場合は、それでうまくいきました。', 'Dalam kasus saya, itu berhasil bagi saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3034_kasus, 'この場合は、どうすればいいですか？', 'Apa yang harus saya lakukan dalam situasi ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3034_kasus, 'その場合はプロを呼んだ方がいいと思う。', 'Saya pikir dalam hal ini, lebih baik memanggil seorang profesional.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3129_untuk_membuat_seseorang_menunggu, '人を待たせるのは良くないよ。', 'Tidak baik membiarkan orang menunggu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3129_untuk_membuat_seseorang_menunggu, '一体いつまで待たせるつもりですか？', 'Berapa lama lagi kamu akan membuatku menunggu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3129_untuk_membuat_seseorang_menunggu, 'お待たせしてすみません。いや〜バスにえらく長いこと待たされましてね。', 'Maaf telah membuatmu menunggu begitu lama. Saya harus menunggu bus begitu lama.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3241_kawan, 'コウイチとは同じ会社の仲間です。', 'Koichi dan aku adalah teman dari perusahaan yang sama.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3241_kawan, 'このシャツはゴルフ仲間にもらったんだ。', 'Saya mendapat baju ini dari teman golf saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3241_kawan, '学校での厳しい一日を終えて、仲間たちとリラックスをした。', 'Saya dan teman-teman bersantai setelah seharian bekerja keras di sekolah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3345_festival, '私たちは毎年この町の祭りに出ます。', 'Kami berpartisipasi dalam festival kota ini setiap tahun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3345_festival, '今日は一年一度の祭りの日です。', 'Hari ini adalah hari festival setahun sekali.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3345_festival, '日本の多くのお祭りは、仏教や神道と結びついています。', 'Banyak festival di Jepang yang berhubungan dengan agama Budha atau Shinto.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3395_kimono, '私は着物が好きです。', 'Saya suka kimono.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3395_kimono, 'ステキなお着物ですね。', 'Kimonomu bagus sekali.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3395_kimono, 'デパートで着物を買いました。', 'Saya membeli kimono di department store.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3396_pakaian_dalam, '下着売り場はあちらです。', 'Bagian pakaian dalam ada di sana.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3396_pakaian_dalam, '最近は、私は下着はネットで注文することが多いです。', 'Akhir-akhir ini saya sering memesan pakaian dalam secara online.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3396_pakaian_dalam, 'おおっ、それって勝負下着？かっこいいね！', 'Oh, apakah itu pakaian dalam spesialmu? Terlihat keren!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3397_baju_renang, '水着、ちゃんと持ってきた？', 'Apakah Anda ingat untuk membawa baju renang Anda?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3397_baju_renang, 'あの水着、かわいい！', 'Baju renang itu lucu!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3397_baju_renang, 'あ、見て。水着がセール中だよ。', 'Oh, lihat. Barang Baju Renang sudah habis terjual.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3489_tepat_waktu_untuk, '今から出て、間に合うと思う？', 'Apa menurutmu aku akan berhasil jika aku pergi sekarang?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3489_tepat_waktu_untuk, '今すぐタクシーに乗れば、まだ間に合うかもしれません。', 'Jika kita naik taksi sekarang, kita mungkin masih sampai tepat waktu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3489_tepat_waktu_untuk, 'ごめん！ラーメン食べるのに思ったより時間がかかって、待ち合わせに間に合いそうにない。', 'Maaf! Makan ramen memakan waktu lebih lama dari yang saya kira, dan saya tidak akan datang ke pertemuan tepat waktu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3497_kenalan, 'お知り合いですか？', 'Apakah kalian saling kenal?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3497_kenalan, '知り合いだから、ちょっと聞いてみるよ。', 'Karena saya mengenal orang itu, saya akan menanyakannya kepada mereka.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3497_kenalan, 'アイツと知り合いだとはゼッタイにバレたくない。', 'Saya benar-benar tidak ingin diketahui bahwa saya mengenal mereka.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3503_berdiri, '今、待ちぼうけ中だよ。 みんな来るのかな？', 'Saat ini aku sedang menunggu sendirian. Saya ingin tahu apakah semua orang akan datang?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3503_berdiri, 'ダマされてたことに気づかず、さびれた駅で三時間も待ちぼうけをしていました。', 'Tanpa sadar saya telah tertipu, saya akhirnya menunggu sendirian di stasiun yang sepi selama tiga jam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3503_berdiri, '待ちぼうけを食らったと思わないように、明日のミーティングが中止になったこと、ミサキさんにもちゃんと教えといてあげてね？', 'Pastikan untuk memberi tahu Misaki bahwa pertemuan besok telah dibatalkan agar dia tidak merasa terbebani, oke?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3585_merasa, 'あの人感じ悪いよね。', 'Orang itu sepertinya tidak menyenangkan, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3585_merasa, 'このカフェ、レトロな感じがすごく好きなんだよね。', 'Saya sangat menyukai nuansa retro kafe ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3585_merasa, 'コウイチさん、社長になるって、どんな感じですか？', 'Bagaimana rasanya menjadi presiden perusahaan, Tuan Koichi?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3602_setiap_orang, '私が今ここにいるのは、皆様のおかげです。', 'Berkat kalian semua saya ada di sini sekarang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3602_setiap_orang, '皆様、ご起立ください。', 'Semuanya, tolong berdiri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3602_setiap_orang, 'このプロジェクトを成功させるには、皆様のお力が必要なんです！', 'Kami membutuhkan bantuan semua orang untuk menyukseskan proyek ini!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3637_tolong_bantu_saya, '大人のチケットを二枚、お願いします。', 'Tolong, dua tiket dewasa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3637_tolong_bantu_saya, 'そこをなんとか、お願いします。どうにかなりませんか？', 'Tolong lakukan sesuatu mengenai hal itu. Tidak bisakah kamu membuatnya berhasil?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3637_tolong_bantu_saya, '神様、お願いします！日本語が上手くなりたいんです。', 'Tolong Tuhan! Saya ingin fasih berbahasa Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3642_gedung_utama, 'あれ、本館にはどうやって行けばいいんだっけ？', 'Oh ya, saya lupa, bagaimana caranya menuju gedung utama?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3642_gedung_utama, 'じゃあ、本館の入り口に九時で！', 'Kalau begitu, ayo kita bertemu di pintu masuk utama jam sembilan!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3642_gedung_utama, 'トイレは本館の１Fにあります。', 'Toilet terletak di lantai satu bangunan utama.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3650_penghapus, '日本の消しゴムはクオリティがすごく高い。', 'Penghapus Jepang memiliki kualitas yang sangat tinggi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3650_penghapus, 'ねえ、消しゴム持ってる？', 'Hei, apakah kamu punya penghapus?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3650_penghapus, 'クリスマスに、彼女に消しゴムの形のイヤリングをプレゼントしたら、フラれました。', 'Aku dicampakkan saat memberinya anting-anting berbentuk penghapus sebagai hadiah Natal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3651_niat_jahat, 'ごめんなさい、悪気はなかったんです。', 'Maafkan aku, aku tidak bermaksud jahat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3651_niat_jahat, '悪気がないのは分かってるけど、今のはヒドすぎるよ。', 'Saya tahu Anda tidak bermaksud jahat, tetapi apa yang baru saja Anda katakan terlalu kasar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3651_niat_jahat, '悪気がない方がタチが悪いよ。ナチュラルにやってるんだから、どうしようもないよ。', 'Masalahnya adalah ketika tidak ada niat buruk, hal itu menjadi lebih berbahaya. Mereka melakukannya secara alami, jadi tidak ada yang bisa dilakukan untuk mengatasinya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3652_pendakian_gunung, '山田さんって、山登りするんですか？', 'Apakah Anda pergi mendaki gunung, Tuan Yamada?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3652_pendakian_gunung, '先日、友人と山登りに行ってきました。', 'Suatu hari, saya pergi mendaki gunung bersama seorang teman.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3652_pendakian_gunung, '山登りをなめちゃいけないけど、山登りの後にソフトクリームをなめるのは最高です。', 'Mendaki gunung tidak boleh dianggap remeh, namun mengonsumsi es krim soft serve setelah pendakian adalah yang terbaik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3653_frase_populer, '最近の流行語は全然分かりません。', 'Saya tidak tahu satu pun kata kunci terbaru.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3653_frase_populer, '毎年ほんとに色んな流行語が生まれるよね。', 'Banyak slogan baru yang lahir setiap tahunnya ya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3653_frase_populer, 'どの流行語が、今年の流行語大賞に選ばれると思う？', 'Menurut Anda, frasa populer manakah yang akan dipilih untuk kata kunci tahun ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3654_lagu_populer, 'え、「流行歌」って言葉、ちょっと古くない？おじいちゃんとかおばあちゃんっぽい。', 'Tunggu, bukankah istilah "ryūkōka" sudah ketinggalan zaman? Kedengarannya lebih seperti sesuatu yang dikatakan kakek-nenek.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3654_lagu_populer, 'ワシは今時の流行歌は全然分からんぞ。', 'Saya sama sekali tidak tahu lagu-lagu trendi akhir-akhir ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3654_lagu_populer, 'これって50年代の流行歌のリメイクなんだって。', 'Saya dengar ini adalah remake dari lagu populer tahun 1950-an.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3655_pengecualian, 'このレストランの料理は例外なくどれもおいしいです。', 'Semua hidangan di restoran ini lezat tanpa terkecuali.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3655_pengecualian, 'そのケースは例外中の例外だと思いますよ。', 'Saya pikir kasus itu merupakan pengecualian terhadap pengecualian.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3655_pengecualian, '社長の気分が良ければ、例外的にOKをもらえることもあるそうです。', 'Saya pernah mendengar bahwa jika suasana hati presiden sedang baik, terkadang dia akan membuat pengecualian dan mengatakan tidak apa-apa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3656_contoh, 'これはほんの一例にすぎません。', 'Ini hanyalah salah satu contoh.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3656_contoh, '画像は一例です。', 'Gambar hanyalah sebuah contoh.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3656_contoh, 'こちらのエピソードはあくまで一例です。', 'Episode ini hanyalah salah satu contoh.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3657_misalnya, '例えば、昔はすごく人気があったけど、今は落ちぶれてしまった人がいたとしましょう。', 'Sebagai contoh, katakanlah ada seseorang yang dulunya sangat populer namun sekarang sudah tidak populer lagi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3657_misalnya, '例えば、林でコヨーテに出くわした時、あなたならどうしますか？', 'Misalnya, jika Anda bertemu seekor anjing hutan di hutan, apa yang akan Anda lakukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3657_misalnya, 'いやいや、例えばの話だよ、例えばの！', 'Tidak, tidak, aku hanya menceritakan kisah bagaimana-jika, hanya cerita bagaimana-jika!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3658_contoh_kalimat, 'この例文、ちょっとおかしくない？', 'Bukankah contoh kalimat ini agak aneh?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3658_contoh_kalimat, 'ワニカニの例文の中で一番好きな文章を教えてください。', 'Beri tahu kami contoh kalimat WaniKani mana yang menjadi favorit Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3658_contoh_kalimat, 'あれ、例文が新しくなってる。', 'Oh, contoh kalimatnya sudah diperbarui.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3660_asosiasi, 'ワニカニ協会の会員になりませんか？', 'Apakah Anda ingin menjadi anggota Asosiasi WaniKani?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3660_asosiasi, '明日は協会の集まりがあるので、六時に起こしてください。', 'Saya harus menghadiri rapat organisasi besok, jadi tolong bangunkan saya jam enam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3660_asosiasi, '僕はこの協会で、イベントマネージャーをしています。', 'Saya bekerja sebagai manajer acara untuk asosiasi ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3661_kerja_sama, '皆様、ご協力ありがとうございます！', 'Terima kasih atas kerja sama Anda!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3661_kerja_sama, 'タクヤが協力してくれたんだ。', 'Takuya membantu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3661_kerja_sama, '私たちに協力するふりをしてくれませんか？', 'Maukah Anda berpura-pura bekerja sama dengan kami?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3662_akan_datang, 'いやー、参るな。そんなこと言われても、ムリなものはムリだからな。', 'Ya ampun, ini sulit. Meskipun mereka mengatakan demikian, ada hal-hal yang mustahil.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3662_akan_datang, 'お正月には毎年家族で神社に参ります。', 'Setiap Tahun Baru, keluarga saya mengunjungi kuil bersama.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3662_akan_datang, 'いざ、参らん！', 'Ayo pergi!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3663_suatu_saat, 'あのランナーは、最後の一周で十位から一位になった。', 'Pelari itu naik dari posisi kesepuluh ke posisi pertama pada putaran terakhir.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3663_suatu_saat, 'コウイチはグラウンド一周を三分台で走ります。', 'Koichi dapat berlari satu putaran lintasan dalam tiga hingga empat menit.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3663_suatu_saat, '来年は家族で世界一周旅行に出かけるんです。', 'Tahun depan, keluargaku akan melakukan perjalanan keliling dunia.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3664_lingkungan, 'あの女性の周囲にはいつもヤクザ風の男がいる。', 'Wanita itu selalu ditemani pria-pria tipe yakuza.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3664_lingkungan, 'コウイチは周囲の目を気にしながら黒いビルに入っていきました。', 'Waspada terhadap pengintaian orang-orang di sekitarnya, Koichi memasuki gedung hitam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3664_lingkungan, '周囲の人のこと、もうちょっと考えた方がいいんじゃない？', 'Mungkin Anda harus lebih mempertimbangkan orang-orang di sekitar Anda?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3664_lingkungan, 'この島は、周囲6キロの小さな島です。', 'Ini adalah pulau kecil dengan keliling enam km.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3665_peringatan_tahunan, '周年記念イベントの準備で忙しい。', 'Kami sedang sibuk mempersiapkan acara ulang tahunnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3665_peringatan_tahunan, 'トーフグは、来年で十周年になるので、コウイチは周年プロジェクトを予定しています。', 'Tahun berikutnya adalah ulang tahun Tofugu yang ke 10, jadi Koichi merencanakan proyek ulang tahunnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3665_peringatan_tahunan, '明日は私たちが出会ってから、十五周年の記念日です。', 'Besok menandai peringatan 15 tahun saat kita pertama kali bertemu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3666_untuk_mengelilingi, 'こうやってみんなで火を囲むのって楽しいね。', 'Menyenangkan sekali berkumpul di sekitar api unggun seperti ini bersama semua orang, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3666_untuk_mengelilingi, '日本は海に囲まれた国です。', 'Jepang adalah negara yang dikelilingi oleh laut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3666_untuk_mengelilingi, 'ひらがなの「め」の字を丸で囲んで、「ぬ」の字を四角で囲んでください。', 'Lingkari karakter hiragana "<ja>め</ja>" dengan lingkaran dan lingkari karakter "<ja>ぬ</ja>" dengan kotak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3667_suasana, 'このカフェ、いい感じの雰囲気だね。', 'Kafe ini memiliki suasana yang menyenangkan, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3667_suasana, 'オフィスの雰囲気はどんな感じですか？', 'Seperti apa suasana di kantor?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3667_suasana, 'さっきのミーティング、雰囲気やばかったね。', 'Suasana pertemuan tadi lumayan intens ya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3668_keras, 'このお肉、ちょっと固い。', 'Daging ini agak keras.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3668_keras, '父の決心は固いと思います。', 'Saya pikir keputusan ayah saya tegas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3668_keras, '兄は、口が固いことで有名です。', 'Kakak laki-laki saya dikenal sebagai orang yang bisa menjaga rahasia.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3669_keras_kepala, 'アイツ、めっちゃ頑固だよ。', 'Dia sangat keras kepala.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3669_keras_kepala, 'これを使うと、頑固なシミもすぐ落ちるんだって。', 'Saya dengar ini bisa menghilangkan noda membandel dengan cepat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3669_keras_kepala, 'おじいちゃんって頑固者だよね。', 'Kakek itu keras kepala ya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3670_dasar, 'うちの社員は基本的にはみんな良い人ばかりだよ。', 'Pada dasarnya seluruh karyawan kami adalah orang-orang baik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3670_dasar, 'これ知らないのはまずいよ。	基本中の基本だよ？', 'Tidak baik jika Anda tidak mengetahui hal ini. Ini seperti hal mendasar yang mutlak, Anda tahu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3670_dasar, 'このプランの基本料金っていくらですか？', 'Berapa biaya dasar untuk paket ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3671_empat_musim, '日本には四季があります。', 'Jepang memiliki empat musim.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3671_empat_musim, 'うちのレストランでは、料理を通じてお客様に四季を感じていただきたいなと思っています。', 'Di restoran kami, kami bertujuan untuk membuat pelanggan merasakan empat musim melalui hidangan kami.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3671_empat_musim, 'ここでは美しい四季の花々が一年中楽しめます。', 'Di sini, Anda dapat menikmati bunga musiman yang indah sepanjang tahun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3672_penyelesaian, '作戦完了！', 'Misi selesai!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3672_penyelesaian, '注文完了したよ！', 'Saya menyelesaikan pesanan!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3672_penyelesaian, 'まずはこのアプリのインストールを完了させてください。', 'Pertama, selesaikan instalasi aplikasi ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3673_menyelesaikan, '君には完全に負けたよ。', 'Anda benar-benar mengalahkan saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3673_menyelesaikan, '残念ながら、コウイチには完全なアリバイがあります。', 'Sayangnya, Koichi punya alibi yang sempurna.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3673_menyelesaikan, '私はあなたの意見に完全に同意します。', 'Saya sepenuhnya setuju dengan pendapat Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3674_penyelesaian, '完成前に起こしてもらえますか？', 'Bisakah Anda membangunkan saya sebelum selesai?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3674_penyelesaian, 'さあ、もうすぐ完成ですよ。', 'Baiklah, sekarang hampir selesai.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3674_penyelesaian, '新しい日本語学習アプリが完成するのが楽しみです。', 'Saya menantikan penyelesaian aplikasi pembelajaran bahasa Jepang yang baru.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3675_keinginan_hati, 'ついに、念願のマイホームを手に入れました！', 'Akhirnya, saya mendapatkan rumah impian yang telah lama saya nantikan!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3675_keinginan_hati, 'ニュース見た？原田選手、念願の１部リーグ入りだって！', 'Apakah Anda melihat beritanya? Harada berhasil mencapai liga teratas seperti yang selalu dia inginkan!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3675_keinginan_hati, 'やったー！ついに念願の彼氏ができたよー！', 'Hore! Setelah sekian lama menunggu, akhirnya aku punya pacar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3676_sayangnya, 'それは残念すぎますね。', 'Sangat disayangkan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3676_sayangnya, '折角のチャンスだったのに、残念です。', 'Itu adalah kesempatan yang langka, jadi sayang sekali saya melewatkannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3676_sayangnya, '残念ながら、そのようですね。', 'Sayangnya, tampaknya hal itu benar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3677_sifat_manusia, '私は、大学で人性学を勉強しています。', 'Saya sedang belajar etologi di universitas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3677_sifat_manusia, '私は、キリストは神性と人性という二つの本性を持つという両性せつを支持します。', 'Saya mendukung pendapat diofisit bahwa Yesus mempunyai dua kodrat: kodrat ilahi dan kodrat manusia.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3677_sifat_manusia, '人性論における人間の本性において、私は結局人の性質は善悪を共に備えていると思います。', 'Mengenai pembahasan sifat asli manusia dalam Konfusianisme, saya percaya bahwa sifat manusia dilengkapi dengan sisi baik dan sisi jahat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3678_perempuan, '女性用トイレはあちらです。', 'Toilet wanita ada di sana.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3678_perempuan, 'お客様が女性でも男性でも、サービスは同じにすべきじゃないですか？', 'Bukankah pelayanannya harus sama bagi pelanggan perempuan dan laki-laki?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3678_perempuan, '当時は、先生が私のことを一人の大人の女性として見てくれていると思ってうれしかったんです。', 'Saat itu, saya senang memikirkan guru melihat saya sebagai wanita dewasa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3679_penyakit_menular_seksual, '性病にかかってしまいました。', 'Saya terjangkit penyakit menular seksual.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3679_penyakit_menular_seksual, '性病にだけはゼッタイになりたくないんで。', 'Karena saya sama sekali tidak ingin terkena penyakit menular seksual.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3679_penyakit_menular_seksual, '彼氏に性病をうつされたんで、別れました。', 'Saya putus dengan pacar saya karena dia menularkan penyakit menular seksual kepada saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3680_pria, 'あの男性の名前を知っていますか。', 'Tahukah kamu nama orang itu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3680_pria, 'それって、男性ホルモンのせいじゃない？', 'Bukankah itu karena hormon pria?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3680_pria, 'このオフィスには男性の会社員が約百名、女性の会社員が約七十名います。', 'Di kantor ini terdapat sekitar seratus pekerja kantoran laki-laki dan sekitar tujuh puluh pekerja kantoran perempuan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3684_untuk_melipat_sesuatu, '今からギョウザの皮を折るところです。', 'Saya akan melipat bungkus gyoza sekarang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3684_untuk_melipat_sesuatu, 'もう少しで足の骨を折るところでした。', 'Saya hampir mematahkan tulang di kaki saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3684_untuk_melipat_sesuatu, 'その紙を折った時に、指を切ってしまったんだ。', 'Ketika saya sedang melipat kertas, saya mendapat potongan kertas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3685_dengan_masalah, '俺の折角のアドバイスをムダにするつもりなのか？', 'Apakah Anda akan membuang nasihat berharga saya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3685_dengan_masalah, '折角来たのに、お店やってなくて残念だったね。でも折角だし、近くの他のお店に行ってみようか。', 'Sayang sekali tokonya tidak buka meski sudah jauh-jauh datang. Tapi karena kita sudah sampai di sini, bisakah kita mencoba pergi ke toko terdekat lainnya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3685_dengan_masalah, '折角苦労して手に入れた宝石を、彼女は気に入ってくれなかった。', 'Dia tidak menyukai perhiasan yang harus saya dapatkan dengan susah payah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3685_dengan_masalah, 'うーん。折角イメチェンするいい機会だし、後ろ髪を三十センチくらい切ってもらおうかな。', 'Hmm. Ini adalah kesempatan langka untuk melakukan perubahan, jadi menurutku rambutku akan dipotong sekitar tiga puluh sentimeter di bagian belakang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3686_patah_tulang, '骨折してますね。', 'Tulangmu patah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3686_patah_tulang, 'びっくりした。骨折したのかと思った！', 'Saya terkejut. Saya pikir itu rusak!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3686_patah_tulang, '最近どうしてるの？私は足の小指を骨折した以外は、いつも通りだよ。', 'Bagaimana kabarmu akhir-akhir ini? Saya baik-baik saja seperti biasa, kecuali jari kelingking saya patah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3687_kekecewaan, '君には失望したよ。', 'aku kecewa padamu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3687_kekecewaan, 'この映画を見た後は、何とも言えない失望感を感じました。', 'Setelah menonton film ini, saya merasakan kekecewaan yang tak terlukiskan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3687_kekecewaan, '期待するからこそ、期待通りにいかない時に失望しちゃうんだよ。最初から期待しなければ失望もしないさ。', 'Kekecewaan datang ketika segala sesuatunya tidak berjalan sesuai harapan, justru karena Anda punya ekspektasi. Jika Anda tidak mengharapkan apa pun sejak awal, Anda juga tidak akan kecewa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3688_mengharapkan, 'あなたの望みは何ですか。', 'Apa keinginanmu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3688_mengharapkan, '君の望みなら、僕は何でもしてあげるよ。', 'Jika itu keinginanmu, aku akan melakukan apa pun untukmu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3688_mengharapkan, '正直、人生、望み通りに行くことの方が少ないんだよ。', 'Sejujurnya, dalam hidup, jarang sekali segala sesuatunya berjalan sesuai rencana.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3689_berharap, '何事もないことを望むよ。', 'Saya berharap tidak terjadi apa-apa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3689_berharap, 'あまり多くを望むと、自分がしんどくなるよ。', 'Kamu akan kelelahan jika berharap terlalu banyak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3689_berharap, 'ミドリさんは、どんな生活を望んでいるんですか？', 'Kehidupan seperti apa yang kamu inginkan, Midori-san?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3690_menginginkan, 'まあ、これはただの私の願望です。', 'Yah, ini hanya angan-anganku saja.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3690_menginginkan, '人は皆、願望を持ちます。願望のない人なんていませんよ。', 'Setiap orang mempunyai keinginan. Tidak ada orang yang tidak punya keinginan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3690_menginginkan, '私には、いつか大きなプリンを作って一人でムシャムシャ食べたいという願望があります。', 'Saya memiliki keinginan untuk suatu hari nanti membuat puding besar dan melahap semuanya sendiri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3692_kayu, '明日、ホームセンターに木材を買いに行く予定です。', 'Saya berencana pergi ke pusat rumah untuk membeli kayu besok.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3692_kayu, 'こないだ初めて、木材でDIYしたんだ。', 'Suatu hari, saya mencoba DIY dengan kayu untuk pertama kalinya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3692_kayu, 'えーっ、マジックアルハンブラに木材使ったものがあるの、知らなかった。かわいい！', 'Oh, aku tidak tahu ada sesuatu yang terbuat dari kayu di Magic Alhambra! Imut-imut!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3693_bahan_bahan, '材料は何ですか？', 'Apa bahan-bahannya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3693_bahan_bahan, '材料の二倍の水を入れてください。', 'Silakan tuangkan dua bagian air untuk satu bagian bahan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3693_bahan_bahan, 'ウドンの材料って、これだけなんですか！？', 'Apakah ini semua bahan untuk udon?!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3694_kayu, 'なんで材木にクイックルワイパーをかけてるの？', 'Mengapa Anda mengepel kayu itu dengan penghapus Quickle?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3694_kayu, '明日の朝一番に材木屋さんに電話してみるよ。', 'Saya akan mencoba menelepon tempat penebangan kayu besok pagi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3694_kayu, 'このトラックで、ここから材木店まで材木を運ぶんです。', 'Dengan truk ini, kami mengangkut kayu dari sini ke tempat penebangan kayu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3695_bundel, '花束よりも札束の方がほしいです。', 'Saya lebih suka memiliki segepok uang daripada sebuket bunga.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3695_bundel, 'ブロッコリー、一束２００円だって。', 'Dikatakan brokoli harganya 200 yen per tandan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3695_bundel, 'そこにバラバラになってるコピー用紙、束にしといてもらえない？', 'Bisakah Anda mengumpulkan lembaran-lembaran kertas fotokopi itu untuk saya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3696_janji, 'うん、分かった。約束する！', 'Tentu, mengerti. Saya berjanji!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3696_janji, 'ひどい。誰にも言わない約束だったじゃん。', 'Itu buruk sekali. Itu adalah janji untuk tidak memberitahu siapa pun, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3696_janji, 'すいません、その日は他に約束があるんです。', 'Maaf, saya punya komitmen lain pada hari itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3697_pinus, 'お正月用の松のイラストが完成しました！', 'Ilustrasi pohon pinus untuk Tahun Baru sudah selesai!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3697_pinus, '松の木から松ぼっくりが落ちてきてわたしの頭に当たった。', 'Sebuah kerucut pinus jatuh dari pohon pinus dan mengenai kepalaku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3697_pinus, '松を買うのに一時間も待つとは思ってもみなかった。', 'Saya tidak menyangka harus menunggu satu jam hanya untuk membeli pinus.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3698_jarum_pinus, 'へー、松の葉っぱのこと「松葉」って言うんだ。知らなかった。', 'Oh, jadi daun pinus disebut "matsuba" Saya tidak tahu itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3698_jarum_pinus, '最近、松エキスたっぷりの松葉ジュースにハマっています。', 'Saya baru-baru ini terpikat pada jus daun pinus yang kaya akan ekstrak pinus.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3698_jarum_pinus, '見て、お客さんから松葉ガニもらった。', 'Lihat, saya menerima kepiting Matsuba dari klien saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3700_untuk_lulus_ujian, 'ゼッタイ合格するぞ！', 'Saya pasti akan lulus!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3700_untuk_lulus_ujian, 'まだ合格したかどうかは分かりません。', 'Kami masih belum tahu apakah Anda lulus atau tidak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3700_untuk_lulus_ujian, '来月の日本語能力試験N2に合格できるように、毎日勉強しています。', 'Saya belajar setiap hari agar bisa lulus JLPT N2 bulan depan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3701_kepribadian, 'うちの子はおっとりした性格です。', 'Anak saya memiliki kepribadian yang tenang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3701_kepribadian, 'え、ヤバ。その女、性格めっちゃ悪いね。', 'Oh, itu tidak bagus. Wanita itu memiliki kepribadian yang sangat buruk.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3701_kepribadian, '性格良くて、イケメンで、お金持ちで、私のことが大好きな人、どこかにいないかな？', 'Di mana saya dapat menemukan seseorang dengan kepribadian yang baik, tampan, kaya, dan sangat mencintai saya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3704_sisa, '残りの水はどこに行ったの？', 'Dimana sisa airnya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3704_sisa, '最近、残りの人生についてよく考えるんだ。', 'Akhir-akhir ini, aku banyak memikirkan tentang sisa hidupku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3704_sisa, 'さあ、残り時間は5分を切りました。', 'Ya, kita punya waktu kurang dari lima menit lagi sekarang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3705_untuk_tetap_tertinggal, '私はここに残るよ。', 'Saya akan tinggal di sini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3705_untuk_tetap_tertinggal, 'クッキー、残っちゃったね。', 'Kuenya tertinggal, ya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3705_untuk_tetap_tertinggal, 'キャンプに行かずに家に残って、残っていたカレーを食べました。', 'Saya tinggal di rumah daripada pergi berkemah dan memakan sisa kari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3706_lembur, '今日、残業あるかも。', 'Hari ini, mungkin ada lembur.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3706_lembur, '残業中に森さんからラインが来て、残業後に二人でバルに行くことになったんだ。', 'Saat lembur, aku menerima pesan LINE dari Pak Mori, dan kami akhirnya pergi ke bar bersama sepulang kerja.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3706_lembur, 'サービス残業ばっかりでイヤになるよ。残業代ちゃんと出してほしい。', 'Sungguh frustasi jika hanya mendapat lembur yang tidak dibayar. Saya ingin mereka membayar upah lembur yang layak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3710_memasak, 'メニューには魚料理がたくさんございますが、みなさんどれになさいますか？', 'Ada banyak ikan di menunya. Apa yang didapat semua orang?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3710_memasak, 'マミは、カリフラワーを白いブロッコリーだと思って料理していました。', 'Mami mengira kembang kol hanyalah brokoli putih dan memasaknya sesuai dengan itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3710_memasak, '料理はほとんど出来ません。', 'Saya hampir tidak bisa memasak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3711_al, '自分的には上手にアメリカ的なスピーチができたと思ってたんだけどな。', 'Saya pribadi berpikir saya mampu menyampaikan pidato gaya Amerika dengan cukup baik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3711_al, 'あのはにかんだ感じのスマイルが、個人的にめっちゃツボなんだよね。', 'Senyumannya yang malu-malu benar-benar membuatku tersinggung.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3711_al, 'もう少し具体的に教えてくれませんか？', 'Bisakah Anda memberi saya informasi yang lebih spesifik?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3712_sangat_jepang, 'めっちゃ日本的な考え方だよね。', 'Itu cara berpikir orang Jepang, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3712_sangat_jepang, 'うんうん、かなり日本的な発想だなと思った。', 'Ya, ya, menurutku itu cara berpikir orang Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3712_sangat_jepang, 'このウドン屋、ニューヨークにあるのに、日本的なシステムのお店なんだね。', 'Restoran udon ini walaupun di New York, tapi beroperasi dengan sistem ala Jepang ya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3713_tujuan, '一体、目的は何なんですか？', 'Apa tujuanmu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3713_tujuan, '学生さんのサポートを目的としたビジネスをしています。', 'Saya menjalankan bisnis yang bertujuan untuk mendukung siswa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3713_tujuan, '私たちの目的は、皆さんに楽しく日本語を勉強してもらうことです。', 'Tujuan kami adalah agar semua orang menikmati belajar bahasa Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3718_reservasi, 'パーマとカットの予約をしたいんですけど。', 'Bisakah saya membuat janji untuk potong rambut dan pengeritingan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3718_reservasi, '夏休みに日本へ行くなら早めに予約した方がいいですよ。', 'Jika Anda berencana pergi ke Jepang saat liburan musim panas, ada baiknya memesan lebih awal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3718_reservasi, 'こちらのアイテムは、先行予約を受付中です！', 'Item ini saat ini tersedia untuk pre-order!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3719_tentang, 'このゴボウの長さは約２メートルです。', 'Panjang burdock ini kurang lebih dua meter.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3719_tentang, '今までで、約百万人の人がトーフグのフェイスブックページに「いいね」をした。', 'Sekitar satu juta orang menyukai halaman Facebook Tofugu sejauh ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3719_tentang, 'その会社では約三年間働いていました。', 'Saya bekerja di perusahaan itu selama kurang lebih tiga tahun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3721_bakat, '君、才能あるね！', 'Anda punya bakat!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3721_bakat, '私には何の才能もありません。', 'Saya tidak punya bakat sama sekali.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3721_bakat, '外国語を勉強するのに才能がいると思いますか。', 'Apakah menurut Anda Anda perlu berbakat untuk belajar bahasa asing?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3722_kemampuan, '彼女はテレポートの能力を持っています。', 'Dia mempunyai kemampuan untuk berteleportasi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3722_kemampuan, '彼、コミュニケーション能力が高いよね。', 'Dia memiliki kemampuan komunikasi yang kuat, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3722_kemampuan, 'この仕事ではどんな能力が求められていると思いますか？', 'Menurut Anda, keterampilan apa yang dibutuhkan untuk pekerjaan ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3723_bisnis_pertunjukan, '私、芸能界に入りたいんです。', 'Saya ingin bergabung dengan industri hiburan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3723_bisnis_pertunjukan, '日本の芸能界ってどんなとこですか？', 'Seperti apa industri hiburan di Jepang?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3723_bisnis_pertunjukan, '最近はヒマがあれば、芸能界のゴシップニュースばっかり見てる。', 'Akhir-akhir ini, setiap kali aku punya waktu luang, aku selalu menonton berita gosip tentang industri hiburan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3724_pelawak, 'あの芸人、めっちゃおもしろいね！', 'Komedian itu lucu sekali, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3724_pelawak, '僕たち、芸人になりたいんです。', 'Kami ingin menjadi komedian.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3724_pelawak, '彼は根っからの芸人かもしれない。', 'Dia mungkin adalah seorang pemain yang terlahir secara alami.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3725_geisha, 'あの芸者と私の間には、何一つ共通点がありません。', 'Geisha itu dan aku tidak punya kesamaan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3725_geisha, '京都を旅行している時に、芸者さんを見ました。', 'Ketika saya bepergian di Kyoto, saya melihat seorang geisha.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3725_geisha, 'あのYouTuberは元芸者なんで、色々な事情をよく知っているんですよ。', 'YouTuber itu dulunya seorang geisha, jadi dia tahu banyak tentang berbagai hal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3728_tulang, 'これは魚の骨です。', 'Ini adalah tulang ikan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3728_tulang, 'え、骨、折れたの！？', 'Hah, tulangnya patah!?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3728_tulang, '骨付きチキンが食べたいな。', 'Saya merasa ingin makan ayam di tulang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3798_untuk_menenangkan_diri, 'あー、やっぱり自分の家が一番落ち着くわ。', 'Ah, menurutku rumahku sendiri adalah tempat yang paling menenangkan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3798_untuk_menenangkan_diri, 'お母さん、落ち着いて聞いてください。', 'Bu, tolong dengarkan dengan tenang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3798_untuk_menenangkan_diri, 'ビエトは赤ちゃんを落ち着かせるのが上手い。', 'Viet pandai menenangkan bayi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3880_untuk_mencerna, 'これは消化するのに時間がかかると思うよ。', 'Saya pikir ini akan memerlukan waktu untuk dicerna.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3880_untuk_mencerna, 'うちのネコは、いつも魚の皮をうまく消化できないんです。', 'Kucing saya selalu kesulitan mencerna kulit ikan dengan baik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3880_untuk_mencerna, 'まだ消化しづらいものはやめといた方がいいんじゃない？', 'Anda mungkin ingin menghindari hal-hal yang sulit dicerna untuk saat ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3881_menghilang, 'これ、消しゴムで消えるよ。', 'Ini akan dihapus dengan penghapus.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3881_menghilang, 'デジタルタトゥーは一生消えないからね。', 'Tato digital tidak hilang seumur hidup lho.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3881_menghilang, 'やばい、データが全部消えちゃった！', 'Oh tidak, semua datanya hilang!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3882_perasaan_buruk, 'この絵、めっちゃ気持ち悪い。', 'Gambar ini sungguh menyeramkan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3882_perasaan_buruk, '食べすぎて気持ち悪い。', 'Saya merasa mual karena makan terlalu banyak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3882_perasaan_buruk, '気持ち悪いこと言わないでよ！', 'Jangan mengatakan hal-hal yang menjijikkan!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3883_untuk_streaming, '近くを流れる川の水は、とてもきれいでした。', 'Air yang mengalir di sungai terdekat sangat bersih.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3883_untuk_streaming, 'そこでは、ゆっくりとした時間が流れていました。', 'Di sana, waktu mengalir dengan lambat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3883_untuk_streaming, '彼女のスピーカーから僕の好きなヘビメタの曲が流れてきて、びっくりしました。', 'Saya terkejut ketika lagu heavy metal favorit saya mulai diputar dari speakernya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3884_untuk_memindahkan_sesuatu, '私一人でこのピアノを動かすのはムリです。', 'Tidak mungkin saya menggerakkan piano ini sendirian.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3884_untuk_memindahkan_sesuatu, 'ちょっと車を動かしてくる！', 'Aku akan memindahkan mobilnya dengan sangat cepat!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3884_untuk_memindahkan_sesuatu, 'デスクワークをしながら、ちょこちょこ体を動かしています。', 'Aku menggerakkan tubuhku kesana kemari sambil mengerjakan pekerjaan meja.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3885_untuk_memakai, 'こういうイヤリング、着ける？', 'Apakah Anda ingin memakai anting seperti ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3885_untuk_memakai, '私、アクセサリーを着けるの、あんまり好きじゃないんです。', 'Saya tidak terlalu suka memakai aksesoris.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3885_untuk_memakai, 'どうやって速読を身に着けたんですか？', 'Bagaimana Anda belajar membaca cepat?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3886_untuk_belajar, 'ちゃんと毎日勉強するんだよ。', 'Anda harus belajar setiap hari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3886_untuk_belajar, '勉強することは好きなんですが、本を読むことはキライなんです。', 'Saya suka belajar tetapi saya tidak suka membaca.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3886_untuk_belajar, '学校は勉強しに行くところですよ。', 'Sekolah adalah tempat Anda belajar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3887_untuk_bepergian, 'いつ旅行する予定なんですか？', 'Kapan Anda berencana bepergian?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3887_untuk_bepergian, 'あー、旅行したいな。', 'Ah, aku ingin bepergian.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3887_untuk_bepergian, '初めて北海道旅行した時に、そこに行った。', 'Saya pergi ke sana ketika saya bepergian ke Hokkaido untuk pertama kalinya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3889_untuk_membangunkan_seseorang, 'ゼッタイ起こすなよ。', 'Jangan bangunkan dia untuk apa pun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3889_untuk_membangunkan_seseorang, '明日の朝、起こしてくれない？', 'Bisakah kamu membangunkanku besok pagi?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3889_untuk_membangunkan_seseorang, 'その人、仕事で問題を起こして、首になったんだよ。', 'Orang itu menyebabkan masalah di tempat kerja dan dipecat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3889_untuk_membangunkan_seseorang, 'ビエットが100%正しいよ。今すぐコウイチ起こすべきだよ。', 'Anda benar sekali, Viet! Kita harus membangunkan Koichi sekarang juga!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3890_wisatawan, 'このスキー場に来るのは、ほとんど外国人旅行者です。', 'Kebanyakan pengunjung yang datang ke resor ski ini adalah wisatawan mancanegara.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3890_wisatawan, 'ユニバは海外旅行者が多いから、平日でも空いてないんだよ。', 'Universal Studios Jepang ramai bahkan di hari kerja karena banyak turis asing.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3890_wisatawan, 'どこの国でも旅行者向けの飲食店は高めなことが多いですよ。', 'Di banyak negara, harga restoran yang ditujukan untuk turis cenderung mahal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3891_mulut_buruk, 'あの人、人の悪口ばっかり言うから苦手なんだよね。', 'Aku tidak menyukai orang itu karena dia selalu menjelek-jelekkan orang lain.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3891_mulut_buruk, 'それって、悪口じゃなくない？', 'Tidak dianggap menjelek-jelekkan seseorang, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3891_mulut_buruk, 'みんなが私の悪口を言っているのを聞いちゃったんだよね。', 'Aku mendengar semua orang berbicara di belakangku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3897_bagus, '良好なコミュニケーションをとるために必要なこととは何だと思いますか？', 'Menurut Anda apa yang diperlukan untuk komunikasi yang efektif?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3897_bagus, 'コンディションを良好に保つには、日々のお手入れが欠かせません。', 'Untuk menjaga kondisi baik, perawatan sehari-hari sangat penting.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3897_bagus, '術後はしばらく良好でしたが、一年後に病気が再発したんです。', 'Setelah operasi, semuanya baik-baik saja untuk sementara waktu, tetapi penyakitnya kembali muncul setahun kemudian.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3902_untuk_mengatur, 'このデータを全て整理するには、かなり時間がかかると思います。', 'Saya rasa perlu waktu cukup lama untuk mengatur semua data ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3902_untuk_mengatur, 'ちょっと一回、話を整理させてもらっていいかな？', 'Bolehkah saya meluangkan waktu sejenak untuk menyusun cerita Anda?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3902_untuk_mengatur, 'あの社員に、デスクを整理するよう言っておいて！', 'Beritahu karyawan itu untuk merapikan mejanya!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3909_otomatis, 'え、これ全自動なんですか？', 'Hah, apakah ini sepenuhnya otomatis?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3909_otomatis, 'スマホでのデータは、全て自動でクラウドにアップロードするようにセッティングしています。', 'Saya telah mengatur semua data di ponsel cerdas saya untuk diunggah secara otomatis ke cloud.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3909_otomatis, '自動ドアだって知らなかったんだよ。', 'Saya bahkan tidak menyadari itu adalah pintu otomatis.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3913_kelulusan, '日本では三月が卒業のシーズンです。', 'Di Jepang, bulan Maret adalah musim kelulusan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3913_kelulusan, 'アイドルグループTFG48のワニカニ子ちゃんが卒業を発表しました。', 'WaniKaniko-chan dari grup idola TFG48 telah mengumumkan kelulusannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3913_kelulusan, '卒業しても、大人になっても、私たち、ずっと親友だよね？', 'Bahkan setelah lulus, bahkan setelah dewasa, kita akan selalu menjadi sahabat, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3919_harapan, 'まだ希望はある。', 'Kami masih memiliki harapan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3919_harapan, 'これで、希望は全て失われました。', 'Sekarang semua harapan hilang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3919_harapan, 'お座席のご希望はございますか？', 'Apakah Anda memiliki preferensi tempat duduk?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3923_kompromi, '妥協したくないの。', 'Saya tidak ingin menyerah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3923_kompromi, 'うまく妥協することができなくて、ちょっとメンタルやられちゃってたんだよね。', 'Saya sedikit kesulitan secara mental karena saya tidak bisa berkompromi dengan baik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3923_kompromi, '仕事を妥協するのはよくないよ。', 'Tidak baik berkompromi dengan pekerjaan Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3927_gangguan_pencernaan, '消化不良で気持ち悪い。', 'Saya merasa mual karena gangguan pencernaan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3927_gangguan_pencernaan, '先生に相談したんだけど、まだよく分からなくて消化不良ですごくモヤモヤしてるんだよね。', 'Aku berkonsultasi dengan guru, tapi aku masih belum bisa memahaminya dengan baik, jadi aku merasa sangat frustasi karena tidak mencernanya dengan baik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3927_gangguan_pencernaan, 'ただの消化不良じゃないですか？ほら、消化に悪い物たくさん食べてたし。', 'Bukankah itu hanya gangguan pencernaan? Maksud saya, Anda memang makan banyak makanan berat yang sulit dicerna.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3944_mengharapkan, 'そうならないことを期待するよ。', 'Saya harap itu tidak terjadi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3944_mengharapkan, 'あまり期待しないでくださいね。', 'Jangan berharap terlalu banyak dariku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3944_mengharapkan, '今年は母親以外の女子からのバレンタインのチョコレートを期待しています。', 'Saya menantikan coklat Valentine dari gadis-gadis selain ibu saya tahun ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3945_memutar_sushi, '新しく回転ずしのお店がオープンした。', 'Toko sushi conveyor belt baru dibuka.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3945_memutar_sushi, '日本に行ったら、回転ずしに行って見たいです。', 'Jika saya pergi ke Jepang, saya ingin mengunjungi restoran sushi conveyor belt.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3945_memutar_sushi, '回転ずし屋でバイトを始めました。', 'Saya mulai bekerja paruh waktu di sebuah restoran sushi berputar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3946_untuk_memutar, 'あ、このイス、回転するイスなんだ。', 'Oh, kursi ini adalah kursi putar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3946_untuk_memutar, 'あのピッチャーはボールを回転させるのが上手い。', 'Pelempar itu pandai memutar bola.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3946_untuk_memutar, '頭をフル回転させて、がんばってクイズに答えました。', 'Saya mengerahkan otak saya sepenuhnya dan melakukan yang terbaik untuk menjawab pertanyaan kuis.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4149_permainan, '良かったらもう一試合しませんか？', 'Jika Anda tidak keberatan, mengapa kita tidak bermain game lain bersama-sama?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4149_permainan, 'サッカーの試合はどうでしたか？', 'Bagaimana pertandingan sepak bolanya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4149_permainan, '「あの野球の試合は本当にひどかったね。」「本当にそうだね。」', '"Pertandingan bisbol itu sungguh buruk." "Ya, ceritakan padaku tentang hal itu."');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4854_untuk_memahami, 'トーフグのアメリカン・ジョークを理解するのに時間がかかりました。', 'Butuh beberapa saat bagi saya untuk memahami lelucon Amerika Tofugu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4854_untuk_memahami, '皆さんに本当に理解してもらえるようなレッスンになるよう、心がけています。', 'Saya berusaha keras untuk memastikan bahwa pelajaran dapat dipahami oleh semua orang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4854_untuk_memahami, 'お前がアイツのことを好きなのは理解するけど、あいつがお前にキスをするのはイヤだよ。', 'Aku mengerti kamu mencintainya, tapi aku tidak ingin dia menciummu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4854_untuk_memahami, '仲良くするためには、相手の立場や気持ちを理解することが大切です。', 'Agar bisa rukun, penting untuk memahami posisi dan perasaan orang lain.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5619_toko_tutup, '本日閉店。', 'Toko tutup hari ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5619_toko_tutup, 'え、あそこのコンビニ、閉店しちゃったの？', 'Oh, apakah toko serba ada itu sudah tutup?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5619_toko_tutup, 'うちのお店は、午前10時開店で、午後8時閉店となります。', 'Toko kami buka jam 10 pagi dan tutup jam 8 malam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5620_pembukaan_dan_penutupan, 'これがとびらの開閉スイッチです。', 'Ini adalah saklar buka dan tutup pintu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5620_pembukaan_dan_penutupan, 'このボタンで電車のドアの開閉をするんです。', 'Anda menggunakan tombol ini untuk membuka dan menutup pintu kereta.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5620_pembukaan_dan_penutupan, '車に乗りながらリモコンでシャッターの開閉が出来るので、すごく楽になりました。', 'Mampu membuka dan menutup penutup pintu garasi dengan remote saat berada di dalam mobil membuat segalanya menjadi lebih mudah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6799_kami, 'よかったら、今から俺らとカラオケ行かない？', 'Jika Anda mau, bagaimana kalau pergi karaoke bersama kami sekarang?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6799_kami, '俺ら、今、ちょうど学校出たとこだよ。', 'Kami baru saja keluar dari sekolah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6799_kami, 'え、俺ら、それはちょっとムリだわ。', 'Oh, kami tidak yakin kami bisa melakukan itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6799_kami, 'ごめん。 俺らがこの会話をするのは明らかにすごく早すぎたよな。でも、ただ、俺はお前と結婚したいと思ってるってこと、言いたかったんだ。', 'Saya minta maaf. Jelas masih terlalu dini bagi kita untuk membicarakan hal ini, tapi aku hanya ingin memberitahumu bahwa aku ingin menikah denganmu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6827_kaleng_kosong, '空き缶はここに入れてください。', 'Tolong taruh kaleng kosong di sini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6827_kaleng_kosong, 'なんでこんなとこに空き缶があるの？', 'Mengapa ada kaleng kosong di sini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6827_kaleng_kosong, '空き缶はリサイクルできるはずだよ。', 'Kaleng kosong harus dapat didaur ulang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6883_dengan_baik, 'あそこに井戸があるよ。', 'Ada sumur di sana.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6883_dengan_baik, '井戸に入ってはいけないよ。', 'Anda tidak boleh masuk ke dalam sumur.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6883_dengan_baik, 'え、今、井戸から声がしなかった？', 'Tunggu, bukankah kamu baru saja mendengar suara yang datang dari dalam sumur?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6883_dengan_baik, 'この井戸の水は飲み水ではありません。', 'Air dari sumur ini bukan air minum.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6883_dengan_baik, 'よくひえた井戸水を飲むと、つめたいアイスクリームを食べた時のように頭がキーンといたみました。', 'Saat saya minum air dingin dari sumur, saya mengalami brain freeze seperti saat saya makan es krim dingin.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6946_untuk_bergabung_bersama, '彼は相手のペースに合わせるのが上手いよね。', 'Dia pandai menyamai kecepatan orang lain, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6946_untuk_bergabung_bersama, 'このセーターに合わせる上着がない。', 'Saya tidak punya jaket yang cocok dengan sweter ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6946_untuk_bergabung_bersama, 'ムリして人に合わせる必要はないよ。', 'Anda tidak perlu memaksakan diri untuk menyesuaikan diri dengan orang lain.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7449_kerja_bagus, 'お疲れ様！よくがんばったね。', 'Kerja bagus! Anda bekerja keras.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7449_kerja_bagus, 'お疲れ様でした、所長。お先に失礼します。', 'Terima kasih atas kerja keras Anda, ketua. Aku akan pergi sekarang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7449_kerja_bagus, '市長さん、お疲れ様です。今、ちょっとお時間よろしいですか？', 'Terima kasih atas kerja keras Anda, Pak Walikota. Apakah Anda punya waktu saat ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7449_kerja_bagus, '私の妻は私の背広をハンガーに掛ける時に、「今日も一日お仕事お疲れ様でした」といつも言ってくれるんです。	', 'Saat istriku meletakkan jaketku di gantungan, dia selalu berkata, "Terima kasih sudah bekerja keras lagi hari ini."');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7539_jenis_kelamin, '性のところ、女性に丸しておいたよ！', 'Di bagian gender, saya lingkari perempuan!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7539_jenis_kelamin, 'この本は、性教育のための本です。', 'Buku ini untuk pendidikan seks.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7539_jenis_kelamin, '体の性差は、性ホルモンの働きによって作り上げられているのです。', 'Perbedaan fisik antara kedua jenis kelamin diciptakan oleh aksi hormon seks.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7541_pergerakan, '相手の動きをよく見て！', 'Perhatikan baik-baik pergerakan lawanmu!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7541_pergerakan, '今週のマーケットは、あまり動きがありませんでした。', 'Pada minggu ini, pasar tidak banyak menunjukkan pergerakan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7541_pergerakan, 'あの人、何だか動きが不自然ですね。', 'Gerakan orang itu sedikit tidak wajar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7584_lingkar, '周りがギザギザになっているコインを集めています。', 'Saya mengumpulkan koin dengan tepi bergerigi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7584_lingkar, '大好きな事があるなら、周りが何と言おうと、それをやりつづけるべきだよ。', 'Jika ada sesuatu yang Anda sukai, Anda harus tetap mempertahankannya, apa pun yang dikatakan orang lain.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7584_lingkar, 'いつも周りの目が気になるんです。', 'Saya selalu khawatir tentang apa yang orang lain pikirkan tentang saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7585_kedalaman, 'このプールの深さを教えて下さい。', 'Bisakah Anda memberi tahu saya kedalaman kolam ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7585_kedalaman, '意外と深さがあってびっくりしたよ。', 'Saya terkejut dengan betapa dalamnya kedalamannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7585_kedalaman, '百メートルの深さまでハシゴで下りました。', 'Saya menuruni tangga hingga kedalaman 100 meter.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7638_siklus, '私の生理周期はいつも大体２８日です。', 'Siklus menstruasi saya biasanya sekitar dua puluh delapan hari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7638_siklus, '人の人生って、山あり谷ありが１２年周期で回っているらしいよ。', 'Nampaknya kehidupan masyarakat berputar naik turun dalam siklus sekitar 12 tahun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7638_siklus, '東北の天気は短い周期で変わる。', 'Cuaca di Tohoku berubah dalam waktu singkat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7639_alasan, 'お酒を飲みすぎて、完全に理性を失ってしまっていました。', 'Saya terlalu banyak minum dan kehilangan akal sehat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7639_alasan, 'できるものなら、いつだって理性的でいたいと思っていますよ。', 'Jika memungkinkan, saya selalu ingin bersikap rasional.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7639_alasan, 'ダメだと分かっていたが、理性を保ってなかったんだ。', 'Aku mengerti bahwa itu tidak ada harapan, tapi aku tidak bisa berpegang pada alasan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7688_ruang_tunggu, '待合で待ってるね！', 'Aku akan menunggumu di ruang tunggu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7688_ruang_tunggu, '病院の待合で高校の時の友人にバッタリ会いました。', 'Saya bertemu dengan seorang teman SMA secara tak terduga di ruang tunggu rumah sakit.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7688_ruang_tunggu, '合図をしたら、待合でスクワットを始めてください。', 'Mulailah berjongkok di tempat pertemuan atas isyarat saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7696_artikulasi, '声は子どもの声だったが、言葉つきはまるで大人だった。', 'Suaranya seperti suara anak-anak, tetapi kata-katanya adalah suara orang dewasa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7696_artikulasi, 'あの社員は言葉つきがハキハキしていて好感がもてますね。', 'Diksi jelas pekerja itu memberiku kesan yang baik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7696_artikulasi, 'しばらくぶりに会った友人の言葉つきがかなり変わっていてびっくりした。', 'Saya terkejut melihat betapa banyak perubahan bahasa teman saya sejak saya melihatnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7739_kondisi, '母の具合があまりよくないんです。', 'Kondisi ibu saya tidak terlalu baik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7739_kondisi, 'なんかめっちゃ具合悪そうだね。', 'Kamu tidak tampak hebat sama sekali.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7739_kondisi, 'ちょっと昨日から具合が良くなくて。', 'Cuacaku sedikit buruk kemarin.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7752_disengaja, 'それは意図的に作り出されたプロパガンダの画像じゃないでしょうか。', 'Gambar itu sepertinya sengaja dibuat untuk propaganda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7752_disengaja, 'でもそれちょっと、意図的な作り話っぽくない？', 'Tapi bukankah menurut Anda itu terdengar seperti cerita yang sengaja dibuat-buat?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7752_disengaja, '誰かが意図的に情報をコントロールしているんだ。', 'Seseorang dengan sengaja mengendalikan informasi tersebut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7753_kontemporer, 'とても近代的ですね。', 'Benar-benar kekinian bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7753_kontemporer, '近代的なデザインが気に入りました。', 'Saya suka desain kontemporer.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7753_kontemporer, 'とても近代的な考え方ですね。', 'Itu cara berpikir yang sangat modern.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7753_kontemporer, '50年代の米国の方が今より近代的に見える気がする。', 'Saya merasa Amerika Serikat pada tahun 1950-an terlihat lebih modern dibandingkan saat ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8669_jahat, '意地悪しちゃダメだよ。', 'Anda tidak seharusnya jahat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8669_jahat, 'そんな意地悪なこと言わないでよ。', 'Jangan katakan hal-hal jahat seperti itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8669_jahat, 'どうして妹に意地悪ばっかりするの！', 'Kenapa kamu begitu jahat pada adik perempuanku?!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8700_sinyal, '私が合図をしたら、大きくジャンプをしてください。', 'Saat saya memberi sinyal, silakan lompat tinggi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8700_sinyal, 'サムは、親指を上げて合図を送った。', 'Sam memberi isyarat dengan mengacungkan jempolnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8700_sinyal, 'それがスタートの合図でした。', 'Itu adalah sinyal untuk memulai.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8749_naluri, '本能的にヤバイって感じたんだよね。', 'Secara naluriah saya merasa itu berbahaya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8749_naluri, 'かわいい！母性本能くすぐられる。', 'Imut-imut! Itu menggelitik naluri keibuan saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8749_naluri, 'それは人間の本能です。', 'Itu naluri manusia.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8750_hari_olahraga, '明日は運動会です。', 'Besok adalah hari olahraga.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8750_hari_olahraga, '運動会の日、雨じゃないといいんですが。', 'Saya harap tidak turun hujan pada hari pertemuan atletik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8750_hari_olahraga, '運動会に向けて、毎日練習しています。', 'Kami berlatih setiap hari untuk persiapan festival olahraga.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8805_wortel, 'この人参スープ、おいしい！', 'Sup wortel ini enak!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8805_wortel, '酒好きの王様に、人参リキュールをプレゼントした。', 'Saya menghadiahkan minuman keras wortel kepada Raja yang menyukai alkohol.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8805_wortel, '何でも食べれるけど、人参だけはムリです。', 'Saya bisa makan apa saja, tapi wortel adalah satu-satunya makanan yang tidak bisa saya makan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8954_untuk_pemanasan, 'シャワーの水が温まるまで、ここで待ちます。', 'Sampai air pancurannya menghangat, aku akan menunggu di sini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8954_untuk_pemanasan, 'このヒーターだと、部屋が温まるのにかなり時間がかかる。', 'Dengan pemanas ini, dibutuhkan banyak waktu agar ruangan menjadi hangat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8954_untuk_pemanasan, '一キロ走って、体が温まってきた。', 'Setelah berlari 1km, badan saya mulai menghangat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8975_stroberi, '今年の苺は高いです。', 'Stroberi tahun ini mahal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8975_stroberi, 'あのスーパーに、白い苺が売ってるよ。', 'Toko kelontong itu menjual stroberi putih.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8975_stroberi, '苺サンデーか苺パフェ、どっちにしようかな。', 'Aku ingin tahu apakah aku harus memilih sundae stroberi atau parfait stroberi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8984_serigala, '私は狼に育てられました。', 'Saya dibesarkan oleh serigala.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8984_serigala, '狼の赤ちゃんたちは元気にしています。', 'Bayi serigala baik-baik saja.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8984_serigala, 'この辺りは夜になると狼の鳴き声が聞こえます。', 'Di sekitar sini, Anda bisa mendengar lolongan serigala di malam hari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8985_manusia_serigala, 'また狼男が出たらしい。', 'Saya mendengar bahwa manusia serigala lain telah muncul.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8985_manusia_serigala, '狼男をいじめるのはやめろ！', 'Berhenti mengganggu manusia serigala!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8985_manusia_serigala, '今日は病気で仕事を休んで狼男の映画を見た。', 'Saya sakit hari ini jadi saya mengambil cuti kerja dan menonton film tentang manusia serigala.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9243_baris_teks, 'カタカナのサ行の文字は全て読めますよ。', 'Saya bisa membaca semua huruf katakana dari baris sa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9243_baris_teks, 'こんなに長い文、一行には入らないよ。', 'Kalimat sepanjang ini tidak akan muat dalam satu baris pun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9243_baris_teks, 'こういう大切な時に行間を読めない大人っているよね。', 'Pada saat-saat penting seperti ini, beberapa orang dewasa kesulitan membaca yang tersirat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9243_baris_teks, 'Excelやスプレッドシートでは、横方向のラインのことを「行」といいます。', 'Di Excel dan spreadsheet lainnya, garis horizontal disebut "baris".');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9264_bulu, '羊の毛皮はあたたかい。', 'Kulit domba itu hangat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9264_bulu, 'これはヒョウの毛皮のコートです。', 'Ini adalah mantel bulu macan tutul.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9264_bulu, '私はゼッタイに毛皮を着ません。', 'Saya tidak akan pernah memakai bulu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9274_jelas, 'あなたのお母さんがワイン好きなのは明らかです。', 'Jelas sekali ibumu sangat menyukai anggur.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9274_jelas, '彼にアイルランド人の血が入ってることが明らかになりました。', 'Ternyata dia memiliki warisan Irlandia dalam darahnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9274_jelas, '今日のコウイチは明らかにおかしい。', 'Koichi jelas bertingkah aneh hari ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9301_peduli, '日本ではお世話になりました。', 'Terima kasih atas kebaikan Anda yang luar biasa di Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9301_peduli, 'あんたは本当に世話のかかる子だね！', 'Anda benar-benar anak dengan pemeliharaan tinggi!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9301_peduli, 'ヤバイ！赤子の世話、思ってたよりめっちゃキツイわ。', 'Astaga! Merawat bayi jauh lebih sulit dari yang saya kira.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9475_rumah_kosong, 'あの家はもうずっと空き家になってるんだ。', 'Rumah itu sudah lama kosong.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9475_rumah_kosong, 'やったー！タダで空き家をかりれることになった！', 'Hore! Saya mendapat kesempatan untuk menyewa rumah kosong secara gratis!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9475_rumah_kosong, '空き家を活用してコミュニティスペースにする空き家プロジェクトを始めました。', 'Kami telah memulai proyek rumah kosong untuk memanfaatkan rumah-rumah kosong sebagai ruang komunitas.');

  -- 4. PREREQUISITES
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_888_meminta, id FROM items WHERE type = 'radical' AND (slug = '230' OR id = '230') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_888_meminta, id FROM items WHERE type = 'radical' AND (slug = '184' OR id = '184') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_896_contoh, id FROM items WHERE type = 'radical' AND (slug = '75' OR id = '75') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_896_contoh, id FROM items WHERE type = 'radical' AND (slug = '132' OR id = '132') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_896_contoh, id FROM items WHERE type = 'radical' AND (slug = '128' OR id = '128') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_897_lulus, id FROM items WHERE type = 'radical' AND (slug = '8' OR id = '8') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_897_lulus, id FROM items WHERE type = 'radical' AND (slug = '9' OR id = '9') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_897_lulus, id FROM items WHERE type = 'radical' AND (slug = '15' OR id = '15') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_898_kerja_sama, id FROM items WHERE type = 'radical' AND (slug = '15' OR id = '15') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_898_kerja_sama, id FROM items WHERE type = 'radical' AND (slug = '13' OR id = '13') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_899_ikut, id FROM items WHERE type = 'radical' AND (slug = '140' OR id = '140') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_899_ikut, id FROM items WHERE type = 'radical' AND (slug = '18' OR id = '18') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_899_ikut, id FROM items WHERE type = 'radical' AND (slug = '38' OR id = '38') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_900_lingkar, id FROM items WHERE type = 'radical' AND (slug = '169' OR id = '169') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_901_mengelilingi, id FROM items WHERE type = 'radical' AND (slug = '16' OR id = '16') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_901_mengelilingi, r_246_dengan_baik);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_902_keras, id FROM items WHERE type = 'radical' AND (slug = '16' OR id = '16') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_902_keras, id FROM items WHERE type = 'radical' AND (slug = '69' OR id = '69') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_903_musim, id FROM items WHERE type = 'radical' AND (slug = '135' OR id = '135') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_903_musim, id FROM items WHERE type = 'radical' AND (slug = '34' OR id = '34') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_904_sempurna, id FROM items WHERE type = 'radical' AND (slug = '78' OR id = '78') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_904_sempurna, id FROM items WHERE type = 'radical' AND (slug = '64' OR id = '64') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_905_mengharapkan, id FROM items WHERE type = 'radical' AND (slug = '31' OR id = '31') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_905_mengharapkan, id FROM items WHERE type = 'radical' AND (slug = '26' OR id = '26') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_905_mengharapkan, id FROM items WHERE type = 'radical' AND (slug = '102' OR id = '102') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_906_pikiran, id FROM items WHERE type = 'radical' AND (slug = '238' OR id = '238') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_906_pikiran, id FROM items WHERE type = 'radical' AND (slug = '65' OR id = '65') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_907_melipat, id FROM items WHERE type = 'radical' AND (slug = '63' OR id = '63') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_907_melipat, id FROM items WHERE type = 'radical' AND (slug = '115' OR id = '115') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_908_harapan, id FROM items WHERE type = 'radical' AND (slug = '212' OR id = '212') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_908_harapan, id FROM items WHERE type = 'radical' AND (slug = '43' OR id = '43') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_908_harapan, id FROM items WHERE type = 'radical' AND (slug = '48' OR id = '48') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_909_kayu, id FROM items WHERE type = 'radical' AND (slug = '23' OR id = '23') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_909_kayu, r_264_bakat);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_910_bundel, id FROM items WHERE type = 'radical' AND (slug = '219' OR id = '219') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_911_pinus, id FROM items WHERE type = 'radical' AND (slug = '23' OR id = '23') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_911_pinus, r_237_publik);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_912_sisa, id FROM items WHERE type = 'radical' AND (slug = '132' OR id = '132') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_912_sisa, r_8782_batang);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_914_target, id FROM items WHERE type = 'radical' AND (slug = '52' OR id = '52') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_914_target, r_236_kolam);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_915_janji, id FROM items WHERE type = 'radical' AND (slug = '86' OR id = '86') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_915_janji, r_236_kolam);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_916_seni, id FROM items WHERE type = 'radical' AND (slug = '90' OR id = '90') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_916_seni, id FROM items WHERE type = 'radical' AND (slug = '159' OR id = '159') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_917_dasar, id FROM items WHERE type = 'radical' AND (slug = '205' OR id = '205') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_917_dasar, id FROM items WHERE type = 'radical' AND (slug = '17' OR id = '17') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_918_jenis_kelamin, id FROM items WHERE type = 'radical' AND (slug = '232' OR id = '232') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_918_jenis_kelamin, id FROM items WHERE type = 'radical' AND (slug = '210' OR id = '210') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_920_status, id FROM items WHERE type = 'radical' AND (slug = '23' OR id = '23') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_920_status, id FROM items WHERE type = 'radical' AND (slug = '180' OR id = '180') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_921_kemampuan, id FROM items WHERE type = 'radical' AND (slug = '140' OR id = '140') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_921_kemampuan, id FROM items WHERE type = 'radical' AND (slug = '43' OR id = '43') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_921_kemampuan, id FROM items WHERE type = 'radical' AND (slug = '57' OR id = '57') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_924_tulang, id FROM items WHERE type = 'radical' AND (slug = '121' OR id = '121') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_924_tulang, id FROM items WHERE type = 'radical' AND (slug = '76' OR id = '76') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_924_tulang, id FROM items WHERE type = 'radical' AND (slug = '43' OR id = '43') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_925_lembut, id FROM items WHERE type = 'radical' AND (slug = '8772' OR id = '8772') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_925_lembut, id FROM items WHERE type = 'radical' AND (slug = '19' OR id = '19') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_926_suasana, id FROM items WHERE type = 'radical' AND (slug = '119' OR id = '119') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_926_suasana, r_247_bagian);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_927_keras_kepala, id FROM items WHERE type = 'radical' AND (slug = '64' OR id = '64') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_927_keras_kepala, id FROM items WHERE type = 'radical' AND (slug = '184' OR id = '184') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1514_tertutup, id FROM items WHERE type = 'radical' AND (slug = '214' OR id = '214') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1514_tertutup, r_264_bakat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1918_dengan_baik, r_246_dengan_baik);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_8963_stroberi, id FROM items WHERE type = 'radical' AND (slug = '90' OR id = '90') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_8963_stroberi, id FROM items WHERE type = 'radical' AND (slug = '107' OR id = '107') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_8967_serigala, r_144_hewan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_8967_serigala, id FROM items WHERE type = 'radical' AND (slug = '8822' OR id = '8822') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3034_kasus, id FROM items WHERE type = 'kanji' AND (slug = '694' OR id = '694') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3034_kasus, id FROM items WHERE type = 'kanji' AND (slug = '852' OR id = '852') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3129_untuk_membuat_seseorang_menunggu, id FROM items WHERE type = 'kanji' AND (slug = '726' OR id = '726') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3241_kawan, id FROM items WHERE type = 'kanji' AND (slug = '776' OR id = '776') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3241_kawan, id FROM items WHERE type = 'kanji' AND (slug = '701' OR id = '701') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3345_festival, id FROM items WHERE type = 'kanji' AND (slug = '823' OR id = '823') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3395_kimono, id FROM items WHERE type = 'kanji' AND (slug = '846' OR id = '846') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3395_kimono, id FROM items WHERE type = 'kanji' AND (slug = '718' OR id = '718') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3396_pakaian_dalam, id FROM items WHERE type = 'kanji' AND (slug = '451' OR id = '451') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3396_pakaian_dalam, id FROM items WHERE type = 'kanji' AND (slug = '846' OR id = '846') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3397_baju_renang, id FROM items WHERE type = 'kanji' AND (slug = '479' OR id = '479') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3397_baju_renang, id FROM items WHERE type = 'kanji' AND (slug = '846' OR id = '846') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3489_tepat_waktu_untuk, id FROM items WHERE type = 'kanji' AND (slug = '701' OR id = '701') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3489_tepat_waktu_untuk, id FROM items WHERE type = 'kanji' AND (slug = '852' OR id = '852') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3497_kenalan, id FROM items WHERE type = 'kanji' AND (slug = '631' OR id = '631') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3497_kenalan, id FROM items WHERE type = 'kanji' AND (slug = '852' OR id = '852') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3503_berdiri, id FROM items WHERE type = 'kanji' AND (slug = '726' OR id = '726') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3585_merasa, id FROM items WHERE type = 'kanji' AND (slug = '862' OR id = '862') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3602_setiap_orang, id FROM items WHERE type = 'kanji' AND (slug = '895' OR id = '895') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3602_setiap_orang, id FROM items WHERE type = 'kanji' AND (slug = '865' OR id = '865') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3637_tolong_bantu_saya, k_888_meminta);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3642_gedung_utama, id FROM items WHERE type = 'kanji' AND (slug = '487' OR id = '487') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3642_gedung_utama, id FROM items WHERE type = 'kanji' AND (slug = '873' OR id = '873') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3650_penghapus, id FROM items WHERE type = 'kanji' AND (slug = '819' OR id = '819') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3651_niat_jahat, id FROM items WHERE type = 'kanji' AND (slug = '829' OR id = '829') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3651_niat_jahat, id FROM items WHERE type = 'kanji' AND (slug = '548' OR id = '548') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3652_pendakian_gunung, id FROM items WHERE type = 'kanji' AND (slug = '455' OR id = '455') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3652_pendakian_gunung, id FROM items WHERE type = 'kanji' AND (slug = '845' OR id = '845') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3653_frase_populer, id FROM items WHERE type = 'kanji' AND (slug = '818' OR id = '818') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3653_frase_populer, id FROM items WHERE type = 'kanji' AND (slug = '580' OR id = '580') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3653_frase_populer, id FROM items WHERE type = 'kanji' AND (slug = '764' OR id = '764') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3654_lagu_populer, id FROM items WHERE type = 'kanji' AND (slug = '818' OR id = '818') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3654_lagu_populer, id FROM items WHERE type = 'kanji' AND (slug = '580' OR id = '580') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3654_lagu_populer, id FROM items WHERE type = 'kanji' AND (slug = '761' OR id = '761') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3655_pengecualian, k_896_contoh);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3655_pengecualian, id FROM items WHERE type = 'kanji' AND (slug = '521' OR id = '521') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3656_contoh, id FROM items WHERE type = 'kanji' AND (slug = '440' OR id = '440') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3656_contoh, k_896_contoh);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3657_misalnya, k_896_contoh);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3658_contoh_kalimat, k_896_contoh);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3658_contoh_kalimat, id FROM items WHERE type = 'kanji' AND (slug = '475' OR id = '475') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3660_asosiasi, k_898_kerja_sama);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3660_asosiasi, id FROM items WHERE type = 'kanji' AND (slug = '566' OR id = '566') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3661_kerja_sama, k_898_kerja_sama);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3661_kerja_sama, id FROM items WHERE type = 'kanji' AND (slug = '447' OR id = '447') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3662_akan_datang, k_899_ikut);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3663_suatu_saat, id FROM items WHERE type = 'kanji' AND (slug = '440' OR id = '440') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3663_suatu_saat, k_900_lingkar);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3664_lingkungan, k_900_lingkar);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3664_lingkungan, k_901_mengelilingi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3665_peringatan_tahunan, k_900_lingkar);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3665_peringatan_tahunan, id FROM items WHERE type = 'kanji' AND (slug = '546' OR id = '546') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3666_untuk_mengelilingi, k_901_mengelilingi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3667_suasana, k_926_suasana);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3667_suasana, k_901_mengelilingi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3667_suasana, id FROM items WHERE type = 'kanji' AND (slug = '548' OR id = '548') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3668_keras, k_902_keras);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3669_keras_kepala, k_927_keras_kepala);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3669_keras_kepala, k_902_keras);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3670_dasar, k_917_dasar);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3670_dasar, id FROM items WHERE type = 'kanji' AND (slug = '487' OR id = '487') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3671_empat_musim, id FROM items WHERE type = 'kanji' AND (slug = '485' OR id = '485') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3671_empat_musim, k_903_musim);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3672_penyelesaian, k_904_sempurna);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3672_penyelesaian, id FROM items WHERE type = 'kanji' AND (slug = '465' OR id = '465') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3673_menyelesaikan, k_904_sempurna);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3673_menyelesaikan, id FROM items WHERE type = 'kanji' AND (slug = '610' OR id = '610') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3674_penyelesaian, k_904_sempurna);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3674_penyelesaian, id FROM items WHERE type = 'kanji' AND (slug = '780' OR id = '780') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3675_keinginan_hati, k_906_pikiran);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3675_keinginan_hati, k_888_meminta);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3676_sayangnya, k_912_sisa);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3676_sayangnya, k_906_pikiran);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3677_sifat_manusia, id FROM items WHERE type = 'kanji' AND (slug = '444' OR id = '444') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3677_sifat_manusia, k_918_jenis_kelamin);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3678_perempuan, id FROM items WHERE type = 'kanji' AND (slug = '454' OR id = '454') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3678_perempuan, k_918_jenis_kelamin);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3679_penyakit_menular_seksual, k_918_jenis_kelamin);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3679_penyakit_menular_seksual, id FROM items WHERE type = 'kanji' AND (slug = '773' OR id = '773') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3680_pria, id FROM items WHERE type = 'kanji' AND (slug = '555' OR id = '555') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3680_pria, k_918_jenis_kelamin);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3684_untuk_melipat_sesuatu, k_907_melipat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3685_dengan_masalah, k_907_melipat);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3685_dengan_masalah, id FROM items WHERE type = 'kanji' AND (slug = '592' OR id = '592') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3686_patah_tulang, k_924_tulang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3686_patah_tulang, k_907_melipat);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3687_kekecewaan, id FROM items WHERE type = 'kanji' AND (slug = '654' OR id = '654') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3687_kekecewaan, k_908_harapan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3688_mengharapkan, k_908_harapan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3689_berharap, k_908_harapan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3690_menginginkan, k_888_meminta);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3690_menginginkan, k_908_harapan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3692_kayu, id FROM items WHERE type = 'kanji' AND (slug = '478' OR id = '478') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3692_kayu, k_909_kayu);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3693_bahan_bahan, k_909_kayu);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3693_bahan_bahan, id FROM items WHERE type = 'kanji' AND (slug = '878' OR id = '878') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3694_kayu, k_909_kayu);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3694_kayu, id FROM items WHERE type = 'kanji' AND (slug = '478' OR id = '478') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3695_bundel, k_910_bundel);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3696_janji, k_915_janji);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3696_janji, k_910_bundel);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3697_pinus, k_911_pinus);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3698_jarum_pinus, k_911_pinus);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3698_jarum_pinus, id FROM items WHERE type = 'kanji' AND (slug = '750' OR id = '750') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3700_untuk_lulus_ujian, id FROM items WHERE type = 'kanji' AND (slug = '852' OR id = '852') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3700_untuk_lulus_ujian, k_920_status);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3701_kepribadian, k_918_jenis_kelamin);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3701_kepribadian, k_920_status);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3704_sisa, k_912_sisa);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3705_untuk_tetap_tertinggal, k_912_sisa);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3706_lembur, k_912_sisa);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3706_lembur, id FROM items WHERE type = 'kanji' AND (slug = '756' OR id = '756') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3710_memasak, id FROM items WHERE type = 'kanji' AND (slug = '878' OR id = '878') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3710_memasak, id FROM items WHERE type = 'kanji' AND (slug = '669' OR id = '669') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3711_al, k_914_target);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3712_sangat_jepang, id FROM items WHERE type = 'kanji' AND (slug = '476' OR id = '476') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3712_sangat_jepang, id FROM items WHERE type = 'kanji' AND (slug = '487' OR id = '487') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3712_sangat_jepang, k_914_target);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3713_tujuan, id FROM items WHERE type = 'kanji' AND (slug = '492' OR id = '492') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3713_tujuan, k_914_target);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3718_reservasi, id FROM items WHERE type = 'kanji' AND (slug = '854' OR id = '854') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3718_reservasi, k_915_janji);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3719_tentang, k_915_janji);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3721_bakat, id FROM items WHERE type = 'kanji' AND (slug = '468' OR id = '468') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3721_bakat, k_921_kemampuan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3722_kemampuan, k_921_kemampuan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3722_kemampuan, id FROM items WHERE type = 'kanji' AND (slug = '447' OR id = '447') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3723_bisnis_pertunjukan, k_916_seni);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3723_bisnis_pertunjukan, k_921_kemampuan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3723_bisnis_pertunjukan, id FROM items WHERE type = 'kanji' AND (slug = '728' OR id = '728') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3724_pelawak, k_916_seni);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3724_pelawak, id FROM items WHERE type = 'kanji' AND (slug = '444' OR id = '444') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3725_geisha, k_916_seni);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3725_geisha, id FROM items WHERE type = 'kanji' AND (slug = '690' OR id = '690') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3728_tulang, k_924_tulang);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3798_untuk_menenangkan_diri, id FROM items WHERE type = 'kanji' AND (slug = '749' OR id = '749') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3798_untuk_menenangkan_diri, id FROM items WHERE type = 'kanji' AND (slug = '846' OR id = '846') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3880_untuk_mencerna, id FROM items WHERE type = 'kanji' AND (slug = '819' OR id = '819') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3880_untuk_mencerna, id FROM items WHERE type = 'kanji' AND (slug = '607' OR id = '607') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3881_menghilang, id FROM items WHERE type = 'kanji' AND (slug = '819' OR id = '819') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3882_perasaan_buruk, id FROM items WHERE type = 'kanji' AND (slug = '548' OR id = '548') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3882_perasaan_buruk, id FROM items WHERE type = 'kanji' AND (slug = '727' OR id = '727') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3882_perasaan_buruk, id FROM items WHERE type = 'kanji' AND (slug = '829' OR id = '829') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3883_untuk_streaming, id FROM items WHERE type = 'kanji' AND (slug = '818' OR id = '818') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3884_untuk_memindahkan_sesuatu, id FROM items WHERE type = 'kanji' AND (slug = '827' OR id = '827') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3885_untuk_memakai, id FROM items WHERE type = 'kanji' AND (slug = '846' OR id = '846') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3886_untuk_belajar, id FROM items WHERE type = 'kanji' AND (slug = '813' OR id = '813') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3886_untuk_belajar, id FROM items WHERE type = 'kanji' AND (slug = '667' OR id = '667') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3887_untuk_bepergian, id FROM items WHERE type = 'kanji' AND (slug = '816' OR id = '816') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3887_untuk_bepergian, id FROM items WHERE type = 'kanji' AND (slug = '580' OR id = '580') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3889_untuk_membangunkan_seseorang, id FROM items WHERE type = 'kanji' AND (slug = '740' OR id = '740') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3890_wisatawan, id FROM items WHERE type = 'kanji' AND (slug = '816' OR id = '816') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3890_wisatawan, id FROM items WHERE type = 'kanji' AND (slug = '580' OR id = '580') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3890_wisatawan, id FROM items WHERE type = 'kanji' AND (slug = '690' OR id = '690') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3891_mulut_buruk, id FROM items WHERE type = 'kanji' AND (slug = '829' OR id = '829') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3891_mulut_buruk, id FROM items WHERE type = 'kanji' AND (slug = '452' OR id = '452') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3897_bagus, id FROM items WHERE type = 'kanji' AND (slug = '805' OR id = '805') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3897_bagus, id FROM items WHERE type = 'kanji' AND (slug = '779' OR id = '779') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3902_untuk_mengatur, id FROM items WHERE type = 'kanji' AND (slug = '863' OR id = '863') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3902_untuk_mengatur, id FROM items WHERE type = 'kanji' AND (slug = '669' OR id = '669') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3909_otomatis, id FROM items WHERE type = 'kanji' AND (slug = '578' OR id = '578') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3909_otomatis, id FROM items WHERE type = 'kanji' AND (slug = '827' OR id = '827') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3913_kelulusan, k_897_lulus);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3913_kelulusan, id FROM items WHERE type = 'kanji' AND (slug = '756' OR id = '756') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3919_harapan, k_905_mengharapkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3919_harapan, k_908_harapan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3923_kompromi, k_925_lembut);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3923_kompromi, k_898_kerja_sama);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3927_gangguan_pencernaan, id FROM items WHERE type = 'kanji' AND (slug = '819' OR id = '819') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3927_gangguan_pencernaan, id FROM items WHERE type = 'kanji' AND (slug = '607' OR id = '607') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3927_gangguan_pencernaan, id FROM items WHERE type = 'kanji' AND (slug = '563' OR id = '563') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3927_gangguan_pencernaan, id FROM items WHERE type = 'kanji' AND (slug = '805' OR id = '805') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3944_mengharapkan, id FROM items WHERE type = 'kanji' AND (slug = '839' OR id = '839') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3944_mengharapkan, id FROM items WHERE type = 'kanji' AND (slug = '726' OR id = '726') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3945_memutar_sushi, id FROM items WHERE type = 'kanji' AND (slug = '569' OR id = '569') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3945_memutar_sushi, id FROM items WHERE type = 'kanji' AND (slug = '747' OR id = '747') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3946_untuk_memutar, id FROM items WHERE type = 'kanji' AND (slug = '569' OR id = '569') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3946_untuk_memutar, id FROM items WHERE type = 'kanji' AND (slug = '747' OR id = '747') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4149_permainan, id FROM items WHERE type = 'kanji' AND (slug = '1029' OR id = '1029') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4149_permainan, id FROM items WHERE type = 'kanji' AND (slug = '852' OR id = '852') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4854_untuk_memahami, id FROM items WHERE type = 'kanji' AND (slug = '669' OR id = '669') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4854_untuk_memahami, id FROM items WHERE type = 'kanji' AND (slug = '1150' OR id = '1150') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5619_toko_tutup, k_1514_tertutup);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5619_toko_tutup, id FROM items WHERE type = 'kanji' AND (slug = '625' OR id = '625') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5620_pembukaan_dan_penutupan, id FROM items WHERE type = 'kanji' AND (slug = '753' OR id = '753') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5620_pembukaan_dan_penutupan, k_1514_tertutup);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6799_kami, id FROM items WHERE type = 'kanji' AND (slug = '1883' OR id = '1883') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6827_kaleng_kosong, id FROM items WHERE type = 'kanji' AND (slug = '601' OR id = '601') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6827_kaleng_kosong, id FROM items WHERE type = 'kanji' AND (slug = '1898' OR id = '1898') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6883_dengan_baik, k_1918_dengan_baik);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6883_dengan_baik, id FROM items WHERE type = 'kanji' AND (slug = '509' OR id = '509') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6946_untuk_bergabung_bersama, id FROM items WHERE type = 'kanji' AND (slug = '852' OR id = '852') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7449_kerja_bagus, id FROM items WHERE type = 'kanji' AND (slug = '1926' OR id = '1926') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7449_kerja_bagus, id FROM items WHERE type = 'kanji' AND (slug = '865' OR id = '865') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7539_jenis_kelamin, k_918_jenis_kelamin);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7541_pergerakan, id FROM items WHERE type = 'kanji' AND (slug = '827' OR id = '827') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7584_lingkar, k_900_lingkar);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7585_kedalaman, id FROM items WHERE type = 'kanji' AND (slug = '831' OR id = '831') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7638_siklus, k_900_lingkar);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7638_siklus, id FROM items WHERE type = 'kanji' AND (slug = '839' OR id = '839') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7639_alasan, id FROM items WHERE type = 'kanji' AND (slug = '669' OR id = '669') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7639_alasan, k_918_jenis_kelamin);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7688_ruang_tunggu, id FROM items WHERE type = 'kanji' AND (slug = '726' OR id = '726') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7688_ruang_tunggu, id FROM items WHERE type = 'kanji' AND (slug = '852' OR id = '852') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7696_artikulasi, id FROM items WHERE type = 'kanji' AND (slug = '593' OR id = '593') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7696_artikulasi, id FROM items WHERE type = 'kanji' AND (slug = '750' OR id = '750') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7739_kondisi, id FROM items WHERE type = 'kanji' AND (slug = '710' OR id = '710') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7739_kondisi, id FROM items WHERE type = 'kanji' AND (slug = '852' OR id = '852') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7752_disengaja, id FROM items WHERE type = 'kanji' AND (slug = '811' OR id = '811') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7752_disengaja, id FROM items WHERE type = 'kanji' AND (slug = '585' OR id = '585') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7752_disengaja, k_914_target);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7753_kontemporer, id FROM items WHERE type = 'kanji' AND (slug = '596' OR id = '596') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7753_kontemporer, id FROM items WHERE type = 'kanji' AND (slug = '530' OR id = '530') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7753_kontemporer, k_914_target);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8669_jahat, id FROM items WHERE type = 'kanji' AND (slug = '811' OR id = '811') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8669_jahat, id FROM items WHERE type = 'kanji' AND (slug = '608' OR id = '608') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8669_jahat, id FROM items WHERE type = 'kanji' AND (slug = '829' OR id = '829') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8700_sinyal, id FROM items WHERE type = 'kanji' AND (slug = '852' OR id = '852') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8700_sinyal, id FROM items WHERE type = 'kanji' AND (slug = '585' OR id = '585') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8749_naluri, id FROM items WHERE type = 'kanji' AND (slug = '487' OR id = '487') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8749_naluri, k_921_kemampuan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8750_hari_olahraga, id FROM items WHERE type = 'kanji' AND (slug = '752' OR id = '752') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8750_hari_olahraga, id FROM items WHERE type = 'kanji' AND (slug = '827' OR id = '827') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8750_hari_olahraga, id FROM items WHERE type = 'kanji' AND (slug = '566' OR id = '566') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8805_wortel, id FROM items WHERE type = 'kanji' AND (slug = '444' OR id = '444') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8805_wortel, k_899_ikut);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8954_untuk_pemanasan, id FROM items WHERE type = 'kanji' AND (slug = '842' OR id = '842') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8975_stroberi, k_8963_stroberi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8984_serigala, k_8967_serigala);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8985_manusia_serigala, k_8967_serigala);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8985_manusia_serigala, id FROM items WHERE type = 'kanji' AND (slug = '555' OR id = '555') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9243_baris_teks, id FROM items WHERE type = 'kanji' AND (slug = '580' OR id = '580') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9264_bulu, id FROM items WHERE type = 'kanji' AND (slug = '513' OR id = '513') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9264_bulu, id FROM items WHERE type = 'kanji' AND (slug = '539' OR id = '539') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9274_jelas, id FROM items WHERE type = 'kanji' AND (slug = '626' OR id = '626') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9301_peduli, id FROM items WHERE type = 'kanji' AND (slug = '527' OR id = '527') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9301_peduli, id FROM items WHERE type = 'kanji' AND (slug = '705' OR id = '705') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9475_rumah_kosong, id FROM items WHERE type = 'kanji' AND (slug = '601' OR id = '601') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9475_rumah_kosong, id FROM items WHERE type = 'kanji' AND (slug = '660' OR id = '660') LIMIT 1;

END $$;
