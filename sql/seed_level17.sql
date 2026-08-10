-- ====================================================
-- KaniGani — Seed Data Level 17 (v2, relasional)
-- Auto-generated with Indonesian Slugs
-- ====================================================

DO $$
DECLARE
  -- ============ RADICAL IDs (Level 17) ============
  r_209_pidana UUID; r_251_kenyamanan UUID; r_252_tidak_ada UUID; r_253_semoga_beruntung UUID; r_254_harimau UUID; r_255_puisi UUID; r_422_penjaga UUID; r_8786_cacing UUID; r_8825_festival UUID;

  -- ============ KANJI IDs (Level 17) ============
  k_837_sedih UUID; k_976_bersuka_cita UUID; k_995_asli UUID; k_996_tipis UUID; k_997_obat UUID; k_998_hidung UUID; k_999_samping UUID; k_1000_tentara UUID; k_1001_aula UUID; k_1002_garam UUID; k_1003_kursi UUID; k_1004_kegagalan UUID; k_1005_buah UUID; k_1007_um UUID; k_1008_tidak_ada UUID; k_1009_mengikat UUID; k_1010_menyebabkan UUID; k_1011_normal UUID; k_1012_cerdas UUID; k_1013_ketidakadilan UUID; k_1014_kering UUID; k_1015_sangat UUID; k_1016_mengarungi UUID; k_1018_pemerintah UUID; k_1019_tebakan UUID; k_1020_dasar UUID; k_1021_cinta UUID; k_1022_kantor_pemerintah UUID; k_1023_memperingatkan UUID; k_1024_roman UUID; k_1025_menghafal UUID; k_1026_teori UUID; k_1027_ilusi UUID; k_1412_terperinci UUID; k_1569_drama UUID;

  -- ============ VOCABULARY IDs (Level 17) ============
  v_3421_kata_asing UUID; v_3797_menjadi_sedih_tentang UUID; v_3823_untuk_bersukacita UUID; v_3845_untuk_menyembuhkan UUID; v_3934_sebelum_masehi UUID; v_3935_sarapan UUID; v_3937_cengeng UUID; v_3938_menangis UUID; v_3939_makan_malam UUID; v_3940_makan_siang UUID; v_3941_keinginan_seseorang UUID; v_3951_kansai UUID; v_3953_sisi_kanan UUID; v_3954_sisi_kiri UUID; v_3955_di_dalam UUID; v_3956_di_luar UUID; v_3957_kedua_sisi UUID; v_3958_sisi_timur UUID; v_3960_personil_militer UUID; v_3961_lengan UUID; v_3962_tentara UUID; v_3963_prajurit_as UUID; v_3964_menyebabkan UUID; v_3965_atom UUID; v_3966_karya_asli UUID; v_3970_kafetaria UUID; v_3971_garam UUID; v_3972_air_garam UUID; v_3973_rasa_asin UUID; v_3974_dana_pemerintah UUID; v_3975_diplomat UUID; v_3976_menebak UUID; v_3977_kesimpulan UUID; v_3978_kursi UUID; v_3979_ketiadaan UUID; v_3980_kehadiran UUID; v_3981_kursi_terbuka UUID; v_3982_selalu UUID; v_3983_kehidupan_sehari_hari UUID; v_3984_kewajaran UUID; v_3985_untuk_mengeringkan_sesuatu UUID; v_3986_cuaca_kering UUID; v_3987_gangguan UUID; v_3988_ilusi UUID; v_3989_halusinasi UUID; v_3990_fantasi UUID; v_3991_dasar UUID; v_3992_dasar_hati_seseorang UUID; v_3993_palung UUID; v_3997_cinta UUID; v_3998_patah_hati UUID; v_3999_cinta UUID; v_4000_patriotisme UUID; v_4001_cinta UUID; v_4002_mencintai_diri_sendiri UUID; v_4003_cinta_seksual UUID; v_4004_prefektur_aichi UUID; v_4005_untuk_dikalahkan UUID; v_4006_kegagalan UUID; v_4007_kemenangan_atau_kekalahan UUID; v_4008_pecundang UUID; v_4009_sangat UUID; v_4015_um UUID; v_4016_anggur_ume UUID; v_4017_perundingan UUID; v_4018_tak_berdaya UUID; v_4019_tidak_ada_hari_libur UUID; v_4020_anonim UUID; v_4021_segar_bugar UUID; v_4022_ketidaktahuan UUID; v_4023_irasional UUID; v_4024_bebas UUID; v_4025_tipis UUID; v_4027_tanda_tangan UUID; v_4028_obat UUID; v_4029_studi_farmasi UUID; v_4031_narkoba UUID; v_4032_obat UUID; v_4036_nalar UUID; v_4037_penjelasan UUID; v_4038_novel UUID; v_4039_legenda UUID; v_4040_hipotesa UUID; v_4041_ilustrasi UUID; v_4042_pengetahuan UUID; v_4043_kesadaran UUID; v_4044_polisi UUID; v_4045_keadaan_darurat UUID; v_4046_hidung UUID; v_4047_ingus UUID; v_4048_ujung_hidung UUID; v_4049_bersenandung UUID; v_4050_mimisan UUID; v_4054_sabtu UUID; v_4055_minggu UUID; v_4062_sertifikat UUID; v_4107_untuk_menulis_ulang UUID; v_4347_pelaut_angkatan_laut UUID; v_5365_terperinci UUID; v_5366_detail UUID; v_5367_tidak_dikenal UUID; v_5806_drama UUID; v_5807_komedi UUID; v_5808_tragedi UUID; v_5809_dramatis UUID; v_5811_teater UUID; v_5812_opera UUID; v_7150_rasanya_tidak_enak UUID; v_7546_tentara UUID; v_7547_mustahil UUID; v_7548_samping UUID; v_7588_untuk_diubah UUID; v_7590_tanpa UUID; v_7643_kesimpulan UUID; v_7644_kesunyian UUID; v_7700_untuk_mencintai UUID; v_7701_seperti_biasanya UUID; v_7757_kekasih UUID; v_8672_cinta UUID; v_8709_hari_sebelum_terakhir UUID; v_9087_anak_muda UUID; v_9337_kepala UUID; v_9493_asosiasi UUID; v_9499_buah UUID; v_9506_faktor UUID;

BEGIN

  DELETE FROM items WHERE level = 17;

  -- 1. RADICALS
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '非', 'pidana', 17, 1, 'Lihat dua kepalan tangan yang mencengkeram dua palang vertikal? Mereka mungkin termasuk <radikal>penjahat</radikal>, karena penjahat akan dipenjarakan. Tampaknya palang di sebelah kiri juga telah bengkok, seperti penjahat yang mencoba melarikan diri. Oh tidak…')
    RETURNING id INTO r_209_pidana;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '楽', 'kenyamanan', 17, 2, 'Radikal ini sama dengan kanji. Artinya <radikal>kenyamanan</radikal>.')
    RETURNING id INTO r_251_kenyamanan;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '無', 'tidak-ada', 17, 3, 'Semua orang menggunakan perosotan (丿) untuk keluar dari banyak sangkar kecil (匚) yang Anda coba rebus (灬), sehingga Anda tidak mendapatkan <radikal>apa-apa</radikal>. Sama sekali tidak ada apa pun di dalam sangkar mendidih itu. Yang mana, sejujurnya, bermanfaat bagi Anda. Siapapun yang melakukan aksi seperti itu tidak berhak mendapatkan… apa pun. Tidak ada sama sekali.')
    RETURNING id INTO r_252_tidak_ada;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '吉', 'semoga-beruntung', 17, 4, 'Seorang samurai membuka mulutnya untuk mendoakan <radikal>semoga sukses</radikal>. Samurai biasanya dianggap tipe yang kuat dan pendiam, tetapi sebelum pertempuran besar apa pun, mereka membuka mulut untuk mengatakan satu hal satu sama lain: "semoga berhasil!"')
    RETURNING id INTO r_253_semoga_beruntung;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '虍', 'harimau', 17, 5, 'Ini adalah radikal <radikal>harimau</radikal>. Coba bayangkan seekor harimau yang menerkam huruf "t" kecil — lihat kaki belakangnya terentang ke kiri, dan cakar depannya menjangkau huruf "t"? Jelas, huruf "t" itu juga berarti "harimau".')
    RETURNING id INTO r_254_harimau;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '苟', 'puisi', 17, 6, 'Paragraf berbunga-bunga bukan sekadar tulisan biasa. Berbunga-bunga, yang membuatnya menjadi <radikal>puisi</radikal>.')
    RETURNING id INTO r_255_puisi;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '兑', 'penjaga', 17, 7, 'Radikal ini terdiri dari tanduk dan kakak laki-laki. Mengapa tanduk? Itu adalah bagian dari seragam <radical>penjaga</radikal> kakakmu yang baru. Dia sekarang adalah penjaga bank atau museum. Dan tanduknya sebenarnya adalah bagian dari topi pengawalnya, yang tentu saja membuatnya menjadi penjaga yang lebih mengintimidasi.')
    RETURNING id INTO r_422_penjaga;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '/radicals/worm-8786.svg', 'cacing', 17, 8, '“Mulut tanah” adalah mulut yang memakan tanah. Hewan yang mampu melakukan hal ini dengan baik adalah <radikal>cacing</radikal>. Nom nom nom.')
    RETURNING id INTO r_8786_cacing;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '祭', 'festival', 17, 9, 'Radikal ini sama dengan kanji. Artinya <radikal>festival</radikal>.')
    RETURNING id INTO r_8825_festival;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_209_pidana, 'Pidana', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_251_kenyamanan, 'Kenyamanan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_252_tidak_ada, 'Tidak ada', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_253_semoga_beruntung, 'Semoga beruntung', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_254_harimau, 'Harimau', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_255_puisi, 'Puisi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_422_penjaga, 'Penjaga', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_8786_cacing, 'Cacing', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_8825_festival, 'Festival', true, true);

  -- 2. KANJIS
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '悲', 'sedih', 17, 10, '<radikal>penjahat</radikal> <radikal>hati</radikal> akan selalu <kanji>sedih</kanji>. Tidak ada yang memilih kehidupan kriminal jika mereka bahagia. Dan meski dari luar mereka tampak baik-baik saja, jauh di lubuk hati mereka sungguh sedih.', 'Perasaan <kanji>sedih</kanji> memenuhi tubuh penjahat dengan <reading>he</reading>at (ひ). Panas ini menyebar dan memancar keluar. Jika Anda berjalan di samping mereka di jalan, Anda akan merasakan panas yang menyedihkan melayang di dekat Anda.')
    RETURNING id INTO k_837_sedih;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '喜', 'bersuka-cita', 17, 11, 'Jika ada <radical>drum</radical> di <radical>mulut</radical> Anda, inilah waktunya untuk <kanji>bersukacita</kanji>! Dan karena gendang mulutmu, kegembiraanmu akan nyaring dan menggelegar!', 'Anda dengan keras <kanji>bersukacita</kanji> untuk sesaat ketika tiba-tiba seseorang berlari dan memasukkan <membaca>kunci</reading> (き) ke dalam mulut Anda, menguncinya hingga tertutup. Anda tidak bisa bersukacita lagi! Anda memerlukan kunci itu untuk membuka kunci mulut Anda!')
    RETURNING id INTO k_976_bersuka_cita;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '原', 'asli', 17, 12, 'Radikal <radikal>asli</radikal> dan kanji <kanji>asli</kanji> adalah sama!

Kanji ini juga bisa berarti <kanji>bidang</kanji>, mungkin karena seperti itulah keadaan awalnya sebelum ada manusia: hanya sekumpulan bidang.', 'Pahlawan <kanji>asli</kanji> Jepang adalah <reading>Gen</reading>ji (げん), dari "Kisah Genji."')
    RETURNING id INTO k_995_asli;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '細', 'tipis', 17, 13, 'Jika Anda mengambil <radical>benang</radikal> dan menanam <radical>sawah</radikal> di atasnya, sawah tersebut akan menjadi sangat <kanji>tipis</kanji>, namun juga <kanji>detail</kanji>.', 'Sawah <kanji>tipis</kanji> ini untuk <reading>cy</reading>borg (さい) Anda. Anda memberi cyborg Anda perut manusia yang sangat tipis, sehingga ia hanya dapat mencerna satu baris nasi dalam satu waktu.')
    RETURNING id INTO k_996_tipis;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '薬', 'obat', 17, 14, '<radical>Bunga</radical> dapat digunakan untuk <radical>kenyamanan</radical>, tetapi juga untuk <kanji>obat</kanji>. Memang menyenangkan mencium bunga karena wanginya harum, tapi bunga juga bisa digunakan sebagai obat untuk menyembuhkan orang.', 'Cara terbaik untuk mengangkut semua <kanji>obat</kanji> di darat adalah dengan <reading>yak</reading> (やく). Yak berukuran besar, kuat, dan sangat mampu mengangkut obat bunga seperti ini.')
    RETURNING id INTO k_997_obat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '鼻', 'hidung', 17, 15, 'Anda sendirian<radical>diri</radical> dan Anda harus memeriksa <radical>sawah</radical> Anda — semuanya <radical>dua puluh</radical>! Untungnya, Anda memiliki <kanji>hidung</kanji> yang luar biasa, sehingga Anda dapat dengan cepat menilai keadaan dua puluh sawah Anda hanya dengan beberapa hirupan.', 'Saat Anda mengendus sawah, bau tak terduga tercium di <kanji>hidung</kanji> Anda: <reading>花</reading>s (はな). Oh tidak — apakah Anda secara tidak sengaja menanam 花s dan bukannya padi? Oh baiklah, mereka membuat hidungmu berada dalam keadaan bahagia sehingga kamu benar-benar berpikir segalanya akan lebih baik dengan cara ini.')
    RETURNING id INTO k_998_hidung;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '側', 'samping', 17, 16, '<radikal>pemimpin</radikal> <radikal>kerang</radikal> memiliki <radikal>pisau</radikal> di <kanji>sisinya</kanji>. Tapi tidak apa-apa, jangan khawatir — bahkan itu akan membuatnya tampak lebih tangguh dalam pertempuran dan seperti pemimpin.', 'Siapa yang menusukkan pisau ini ke sisi <kanji>pemimpin kerang</kanji>? Tuan <reading>Gawa</reading>in (がわ), ksatria Meja Bundar. Dia mengira dia adalah Ksatria Hijau dan menikamnya dari samping sebelum menyadari kesalahannya.')
    RETURNING id INTO k_999_samping;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '兵', 'tentara', 17, 17, 'Saat kamu mengayunkan <radical>kapak</radikal>, <radikal>tanah</radikal> akan tertutup oleh <radikal>sirip</radikal>, karena kamu adalah seorang <kanji>prajurit</kanji>. Hanya prajurit kapak yang terampil yang dapat membuat potongan yang tepat untuk menentukan sirip ikan seperti itu.', 'Uh-oh, sepertinya <kanji>prajurit</kanji> kapak ini begitu bersemangat untuk memotong sirip ikannya hingga dia tidak memikirkan bagaimana dia akan memasaknya. Satu-satunya benda di sekitar yang dapat menyalakan api adalah tumpukan <reading>jerami</reading> (へい). Memang itu bukan yang terbaik, tapi setidaknya ikan ini bisa matang.')
    RETURNING id INTO k_1000_tentara;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '堂', 'aula', 17, 18, 'Seorang <radikal>Viking</radikal> akan mengosongkan <radikal>mulut</radikal> dari semua <radikal>kotoran</radikal> di <kanji>aula</kanji> yang besar. Mereka semua berkumpul di semacam <kanji>ruang publik</kanji> dan membuang semua kotoran (secara harafiah dan kiasan) yang mereka punya.', 'Saat para Viking berkumpul untuk menumpahkan kotoran di <kanji>aula</kanji> mereka, mereka juga mengisi wajah mereka dengan <reading>dou</reading>ghnuts (どう). Ah ya, orang Viking suka makan donat ketika mereka berbicara tentang sampah.')
    RETURNING id INTO k_1001_aula;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '塩', 'garam', 17, 19, 'Di <radical>tanah</radikal>, ada <radikal>senjata</radikal>. <radikal>mulutnya</radikal> mengarah ke <radikal>pelat</radikal>. Apa yang ada di piring? Wah, itu <kanji>garam</kanji>!', 'Saat kamu melihat <kanji>garam</kanji>, kamu berpikir, "<reading>Dia berhutang banyak</reading> padaku, jadi aku akan mengambil garamnya!" Siapa dia, kamu bertanya? Dia adalah wanita pemilik garam. Dan pistolnya di tanah, tentu saja.')
    RETURNING id INTO k_1002_garam;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '席', 'kursi', 17, 20, 'Dalam <radical>yurt</radical> Anda menggunakan <radical>handuk</radical> sebagai <kanji>kursi</kanji>.', 'Sesuatu tentang menggunakan handuk sebagai <kanji>kursi</kanji> sangat <reading>seksi</reading> (せき) bagi Anda. Mungkin karena Anda mengasosiasikannya dengan orang-orang seksi yang menggunakan kursi handuk di pantai.')
    RETURNING id INTO k_1003_kursi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '敗', 'kegagalan', 17, 21, '<radical>kerang</radical> yang tidak dapat hidup melewati <radical>musim dingin</radical> adalah <kanji>kegagalan</kanji>. Kerang apa pun akan bertahan selama musim dingin, jadi ini merupakan <kanji>kekalahan</kanji> yang cukup memalukan.', 'Cara terbaik untuk menghindari <kanji>kegagalan</kanji> adalah dengan mengucapkan sedikit <reading>hai</reading>ku (はい) untuk mengalihkan perhatian Anda dari rasa dingin. Faktanya, ini bisa berhasil dalam situasi apa pun di mana Anda takut kalah. Ucapkan haiku dengan lantang, itu akan menenangkan saraf Anda dan menghangatkan Anda dari dalam.')
    RETURNING id INTO k_1004_kegagalan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '果', 'buah', 17, 22, 'Radikal <radikal>buah</radikal> dan kanji <kanji>buah</kanji> sama persis! Bodacious!', 'Mereka menjual <kanji>buah</kanji> di toko, dan Anda perlu mengendarai <reading>ca</reading>r (か) Anda untuk sampai ke sana. Mobil adalah cara tercepat untuk menghasilkan buah.')
    RETURNING id INTO k_1005_buah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '梅', 'um', 17, 23, '<radical>pohon</radikal> yang Anda arahkan <radikal>senjata</radikal> dari <radical>jendela</radikal> adalah <kanji>ume</kanji>, alias <kanji>plum Jepang</kanji>. Mengapa? Karena menurut Anda, menghilangkan ume dari pohon plum Jepang adalah cara terbaik untuk memanen buah plum.', 'Anda mungkin pernah mendengar <kanji>ume</kanji> sebelumnya, bergantung pada paparan Anda terhadap Jepang, namun <reading>ume</reading> (うめ) adalah <kanji>plum Jepang</kanji>.')
    RETURNING id INTO k_1007_um;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '無', 'tidak-ada', 17, 24, 'Kanji <radikal>tidak ada</radikal> dan kanji <kanji>tidak ada</kanji> sama persis! Wah!', '<kanji>Tidak ada</kanji> yang bisa <reading>melotot</reading> (む) seperti sapi yang bisa melenguh. Sapi adalah yang terbaik dalam hal melenguh. Itu faktanya.')
    RETURNING id INTO k_1008_tidak_ada;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '結', 'mengikat', 17, 25, 'Anda menggunakan <radical>benang</radikal> untuk <radikal>keberuntungan</radikal> dengan <kanji>mengikat</kanji>dua jari menjadi satu. Anda <kanji>mengikat</kanji> dengan bagus dan erat.', 'Setelah Anda <kanji>mengikat</kanji> jari Anda, keberuntungan mulai mengalir masuk. Secara harfiah. Tiba-tiba <reading>ketsu</reading>p (けつ) mulai turun dari langit.')
    RETURNING id INTO k_1009_mengikat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '因', 'menyebabkan', 17, 26, '<radical>Mulut</radikal> Anda begitu <radikal>besar</radikal> sehingga menjadi <kanji>penyebab</kanji> dari semua masalah Anda.', 'Mulut besarmu adalah <kanji>penyebab</kanji> di balik semua teman dan keluargamu pindah ke <reading>penginapan</reading> (いん). Mereka pindah ke penginapan sehingga mereka tidak perlu tinggal bersama Anda dan mendengar Anda berbicara lagi.')
    RETURNING id INTO k_1010_menyebabkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '常', 'normal', 17, 27, '<radical>viking</radical> dengan <radical>mulut</radical> <radical>handuk</radical> adalah hal yang <kanji>normal</kanji> sepenuhnya. Itu <kanji>biasa</kanji>.', 'Adalah <kanji>normal</kanji> bagi seorang viking untuk memiliki handuk mulut, tetapi teman buruh tani Anda yang ceroboh <reading>Joe</reading>(じょう) juga memiliki handuk mulut. Itu adalah kebiasaan yang hanya <kanji>normal</kanji> bagi orang viking, jadi mengapa dia memilikinya?')
    RETURNING id INTO k_1011_normal;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '識', 'cerdas', 17, 28, 'Jika kamu bisa <radical>mengatakan</radical> seperti apa <radical>suara</radical> yang dihasilkan oleh seorang <radical>pemabuk</radical>, kamu pasti sangat <kanji>cerdas</kanji>. Hanya sedikit orang yang bisa membedakan suara apa yang dibuat oleh seorang pemabuk, tapi Anda — bisa dibilang begitu, karena Anda adalah pendengar yang sangat <kanji>diskriminatif</kanji>.', '<kanji>Membedakan</kanji> individu seperti Anda dianggap <reading>cantik</reading> (しき). Apa yang lebih keren dari cara mendengarkan Anda yang <kanji>diskriminatif</kanji>?')
    RETURNING id INTO k_1012_cerdas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '非', 'ketidakadilan', 17, 29, 'Seorang <radikal>penjahat</radikal> telah melakukan <kanji>ketidakadilan</kanji> terhadap dunia atau orang lain. Menjadi penjahat adalah hal yang <kanji>negatif</kanji>, dan meskipun itu hanya sebuah <kanji>kesalahan</kanji>, itu tetaplah sebuah kejahatan.', 'Saat kamu melakukan <kanji>ketidakadilan</kanji>, kamu akan mengetahuinya karena <reading>dia</reading>at (ひ) memenuhi tubuhmu. Mungkin Anda belum pernah melakukan hal besar apa pun, namun saat Anda membuat <kanji>kesalahan</kanji> wajah Anda terasa panas dan wajah Anda memerah!')
    RETURNING id INTO k_1013_ketidakadilan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '干', 'kering', 17, 30, 'Kanji <radikal>kering</radikal> dan kanji <kanji>kering</kanji> adalah sama!', 'Anda perlu <kanji>mengeringkan</kanji> Genghis <reading>Khan</reading> (かん). Dia benci basah, seperti semua orang Mongol, jadi tugas Anda adalah mengeringkan seluruh tubuhnya. Dan pakaiannya, dan kudanya. Bahkan, saat hujan, Anda harus berkendara di sampingnya agar tetap kering dengan memegang payung di atas kepalanya.')
    RETURNING id INTO k_1014_kering;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '是', 'sangat', 17, 31, 'Haruskah Anda membiarkan <radical>matahari</radical> menyinari <radical>rak mantel</radical> Anda? <kanji>Tentu saja</kanji>! Anda benar-benar harus memanfaatkan sifat menyegarkan dan menghilangkan bau alami dari matahari.', 'Anda <kanji>benar-benar</kanji> menyukai efek sinar matahari di rak mantel Anda — hingga sebuah <reading>ze</reading>ppelin (ぜ) terbang di atas kepala dan menghalanginya. Anda benar-benar harus membuat zeppelin ini bergerak, secepatnya.')
    RETURNING id INTO k_1015_sangat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '渉', 'mengarungi', 17, 32, '<radikal>tsunami</radikal> akan datang, dan Anda ingin <radikal>berjalan</radikal> melewatinya, jadi Anda harus <kanji>menyeberangi</kanji> itu. Anda tidak berjalan melintasi tsunami, Anda <kanji>menyeberang</kanji> melintasinya.', 'Kemampuanmu <kanji>menyeberangi</kanji> tsunami ini membuat semua orang yang menyaksikannya terkesan, terutama <reading>Shou</reading>gun (しょう). Sekarang setelah Anda mengajarinya bahwa tsunami dapat diarungi, dia akan mulai mengirimkan pasukannya melewati mereka alih-alih menunggu mereka lewat.')
    RETURNING id INTO k_1016_mengarungi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '官', 'pemerintah', 17, 33, 'Di bawah <radical>atap</radikal> ini ada <radikal>beruang</radikal> yang bekerja untuk <kanji>pemerintah</kanji>. Jika Anda melihat beruang di alam liar, Anda mungkin takut dan mencoba lari, tetapi jika Anda melihat beruang di dalam gedung di bawah atap, jangan takut! Itu hanya tanggung jawab pemerintah.', '<kanji>pemerintahan</kanji> pertama yang mengizinkan beruang didirikan oleh <reading>Khan</reading> Jenghis (かん). Dia ingin menaklukkan orang dan kemudian menggunakannya seefisien mungkin. Dia menemukan bahwa beruang sangat berguna di gedung-gedung pemerintah sebagai pegawai pemerintah.')
    RETURNING id INTO k_1018_pemerintah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '察', 'tebakan', 17, 34, 'Jika Anda berada di <radical>atap</radical> <radical>festival</radical> Anda harus <kanji>menebak</kanji> apa yang sebenarnya terjadi di bawah Anda. Anda bisa melihat ada wahana dan mungkin makanan? Baunya seperti makanan. Namun Anda harus menebak secara spesifik karena Anda berada di atasnya dan bukan di dalamnya.', 'Untuk mendapatkan <kanji>tebakan</kanji> yang lebih baik, mintalah bantuan <reading>Satsu</reading>ki (さつ). Dia adalah gadis kecil yang Anda kenal dari beberapa mnemonik sebelumnya, dan dia kebetulan berada di atap bersama Anda. Bayangkan dia saat Anda bertanya, "Apa tebakanmu, Satsuki?"')
    RETURNING id INTO k_1019_tebakan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '底', 'dasar', 17, 35, 'Di bawah <radical>kanopi</radikal> <radical>klan</radikal> Anda menggali di <radikal>tanah</radikal>, mencoba mencapai <kanji>bawah</kanji>. Mereka ingin membangun rumah bagus yang dapat ditinggali seluruh klan Anda, tetapi mereka harus menyelesaikannya terlebih dahulu sebelum mulai membangun.', 'Tiba-tiba seseorang di dalam lubang berteriak bahwa mereka telah mencapai <kanji>dasar</kanji>, tetapi lubang itu penuh dengan air dan mereka semua <read>rendam</reading> (そこ)!')
    RETURNING id INTO k_1020_dasar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '愛', 'cinta', 17, 36, 'Kenakan <radical>cleat</radical> agar Anda dapat mencium <radical>dahi</radical> kekasih Anda di <radical>jantung</radical> <radical>musim dingin</radical> — itulah <kanji>cinta</kanji>. Anda akan menantang cuaca musim dingin yang keras demi cinta, jadi kenakan sepatu Anda agar bisa memegang salju dengan lebih baik. Tentu, Anda bisa saja menunggu cuaca lebih baik untuk melihat mereka, tapi itu bukan cinta sejati, bukan?', 'Berjalan melewati salju musim dingin dengan mengenakan cleat, Anda harus tetap memperhatikan hadiahnya. Ini adalah perjalanan yang sangat sulit, namun Anda tetap memperhatikan hadiahnya, yaitu <kanji>cinta</kanji> Anda dan waktu yang akan Anda habiskan bersama mereka.')
    RETURNING id INTO k_1021_cinta;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '署', 'kantor-pemerintah', 17, 37, 'Lemparkan <radical>jaring</radikal> ke <radical>seseorang</radikal> sehingga Anda dapat menyeret mereka ke <kanji>kantor pemerintah</kanji> dan mendapatkan <kanji>tanda tangan</kanji> mereka.', 'Setelah semuanya selesai di <kanji>kantor pemerintah</kanji> dan Anda mendapatkan <kanji>tanda tangan</kanji> orang tersebut, Anda mengajak mereka keluar untuk melihat <membaca>pertunjukan</reading> (しょ). Menandatangani dokumen di kantor pemerintah tidak pernah menyenangkan, namun pertunjukan yang bagus setelahnya membuat semuanya sepadan.')
    RETURNING id INTO k_1022_kantor_pemerintah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '警', 'memperingatkan', 17, 38, 'Anda memiliki <radical>puisi</radikal> tentang <radical>musim dingin</radikal> yang Anda <radikal>ucapkan</radikal> untuk <kanji>memperingatkan</kanji> orang agar tidak pergi ke luar. Di musim dingin dingin dan berbahaya! Anda <kanji>menegur</kanji> siapa pun dan semua orang yang Anda lihat pergi ke luar sana dengan puisi musim dingin Anda yang menakutkan.', 'Untuk memastikan orang-orang mendengarkan <kanji>peringatan</kanji> Anda, Anda mengancam akan mengambil <reading>ca</reading>ke (けい) mereka. Orang-orang akan melakukan apa saja demi kue, jadi ketika Anda mengungkitnya, mereka benar-benar menganggap serius upaya Anda untuk memperingatkan mereka tentang musim dingin.')
    RETURNING id INTO k_1023_memperingatkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '恋', 'roman', 17, 39, '<radical>Berkali-kali</radical> dan lagi, <radical>hati</radical> Anda kembali kepada orang yang sama. Apakah ini <kanji>romansa</kanji>? Apakah kamu sedang <kanji>cinta</kanji>?', 'Tapi, ingatlah bahwa <kanji>romansa</kanji> Anda bukanlah sebuah <reading>ren</reading>tal (れん). Anda benar-benar ingin memesannya untuk orang yang tepat!')
    RETURNING id INTO k_1024_roman;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '覚', 'menghafal', 17, 40, '<radical>Viking</radical> <radical>lihat</radical>, Viking <kanji>hafal</kanji>. Begitulah cara orang Viking mempelajari berbagai hal. Mereka melihat sesuatu, lalu menghafalnya. Cukup sederhana sebenarnya.

Bisa juga berarti <kanji>bangun</kanji>. Ingatlah bahwa Viking tidak dapat melihat jika mereka tidak bangun. Lagipula, tidak akan ada yang perlu dihafal jika mata mereka masih tertutup!', 'Setiap pagi, seekor <reading>ayam</reading> (かく) berkokok dan membangunkan para Viking. Melihat hal tersebut, salah satu orang Viking <kanji>menghafal</kanji> ayam berkokok agar ia bisa menirunya dan mengerjai rekan-rekan Vikingnya.')
    RETURNING id INTO k_1025_menghafal;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '説', 'teori', 17, 41, 'Apa yang Anda <radikal>katakan</radikal> kepada <radikal>penjaga</radikal>? <kanji>Teori</kanji>mu tentang bagaimana benda yang dia jaga bahkan tidak nyata. Ya, kamu sudah mengetahui semuanya. Anda punya waktu sebentar. Pada titik ini, wajar jika Anda menceritakan teori Anda kepada penjaga yang membuang-buang waktunya.', 'Penjaga mendengarkan <kanji>teori</kanji> Anda tetapi kemudian dia mengatakannya SENDIRI! Dia pikir ada dua <reading>set</reading> (せつ) item yang dijaga, dan dia hanya menjaga satu. Menurut teorinya, keduanya mungkin nyata! Teorinya lebih masuk akal, bukan?')
    RETURNING id INTO k_1026_teori;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '幻', 'ilusi', 17, 42, 'Anda menyembunyikan <radical>kotoran</radikal> dalam <radikal>jubah</radikal> sebagai bagian dari <kanji>ilusi</kanji> dalam pertunjukan sulap Anda. Tindakan Anda agak kotor dan ini melibatkan penciptaan ilusi hilangnya kotoran dengan menyembunyikannya di dalam lipatan jubah Anda.', 'Entah bagaimana <kanji>ilusi</kanji> jubah kotoran berjalan dengan sangat baik. Penonton memberi Anda tepuk tangan meriah dan tepat di tengahnya ada <reading>Gen</reading>ji (げん). Dia berjalan ke arah Anda, menyeka air mata dari matanya, dan berkata, "Jubah ilusi Anda sangat indah. Saya harus memilikinya!"')
    RETURNING id INTO k_1027_ilusi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '詳', 'terperinci', 17, 43, 'Mereka <radikal>mengatakan</radikal> <radikal>domba</radikal> adalah makhluk <kanji>detail</kanji>. Maksudku, aku tidak pernah mengira domba itu sangat detail, tapi itulah yang mereka katakan.', 'Alasan mengapa domba-domba ini begitu <kanji>detail</kanji> adalah karena mereka mencoba mengesankan <read>Shou</reading>gun (しょう). Jika mereka cukup mewah, mungkin Shougun tidak akan membunuh mereka untuk diambil dagingnya dan dijadikan wol sebagai pakaian.')
    RETURNING id INTO k_1412_terperinci;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '劇', 'drama', 17, 44, 'Seekor <radikal>harimau</radikal> membunuh <radikal>babi</radikal> dengan <radikal>pisau</radikal> dalam <kanji>drama</kanji> baru tentang dunia binatang! Harimau dan babi dulunya berteman ketika mereka masih muda, tetapi sekarang mereka adalah musuh bebuyutan dan harimau hanya menikam babi tepat di dada dengan pisau.', '<kanji>Drama</kanji> ini dipentaskan oleh <reading>Gecki</reading> (げき), tokek peliharaan masa kecil Anda. Gecki memainkan semua peran, karena seperti yang diketahui oleh penggemar drama sejati, pertunjukan satu tokek adalah bentuk seni tertinggi.')
    RETURNING id INTO k_1569_drama;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_837_sedih, 'Sedih', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_976_bersuka_cita, 'Bersuka cita', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_976_bersuka_cita, 'Senang sekali', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_976_bersuka_cita, 'Senang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_995_asli, 'Asli', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_995_asli, 'Mendasar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_995_asli, 'Bidang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_996_tipis, 'Tipis', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_996_tipis, 'Terperinci', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_997_obat, 'Obat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_997_obat, 'Obat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_997_obat, 'Narkoba', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_998_hidung, 'Hidung', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_999_samping, 'Samping', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1000_tentara, 'Tentara', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1001_aula, 'Aula', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1001_aula, 'Kamar Umum', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1002_garam, 'Garam', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1003_kursi, 'Kursi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1004_kegagalan, 'Kegagalan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1004_kegagalan, 'Mengalahkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1005_buah, 'Buah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1007_um, 'Um', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1007_um, 'Plum Jepang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1008_tidak_ada, 'Tidak ada', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1009_mengikat, 'Mengikat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1009_mengikat, 'Mengikat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1010_menyebabkan, 'Menyebabkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1011_normal, 'Normal', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1011_normal, 'Biasa', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1011_normal, 'Biasa', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1012_cerdas, 'Cerdas', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1012_cerdas, 'Mendiskriminasi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1012_cerdas, 'Tahu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1013_ketidakadilan, 'Ketidakadilan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1013_ketidakadilan, 'Negatif', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1013_ketidakadilan, 'Kesalahan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1014_kering, 'Kering', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1015_sangat, 'Sangat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1016_mengarungi, 'Mengarungi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1016_mengarungi, 'Menyeberang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1018_pemerintah, 'Pemerintah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1019_tebakan, 'Tebakan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1020_dasar, 'Dasar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1021_cinta, 'Cinta', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1022_kantor_pemerintah, 'Kantor Pemerintah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1022_kantor_pemerintah, 'Tanda tangan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1023_memperingatkan, 'Memperingatkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1023_memperingatkan, 'Menegur', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1024_roman, 'Roman', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1024_roman, 'Cinta', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1025_menghafal, 'Menghafal', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1025_menghafal, 'Bangun', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1026_teori, 'Teori', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1027_ilusi, 'Ilusi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1412_terperinci, 'Terperinci', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1569_drama, 'Drama', true, true);

  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_837_sedih, 'ひ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_837_sedih, 'かな', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_976_bersuka_cita, 'き', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_976_bersuka_cita, 'よろこ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_995_asli, 'げん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_995_asli, 'はら', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_996_tipis, 'さい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_996_tipis, 'ほそ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_996_tipis, 'こま', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_997_obat, 'やく', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_997_obat, 'くすり', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_998_hidung, 'はな', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_998_hidung, 'び', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_999_samping, 'がわ', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_999_samping, 'そば', 'kunyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_999_samping, 'そく', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1000_tentara, 'へい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1000_tentara, 'ひょう', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1001_aula, 'どう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1002_garam, 'しお', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1002_garam, 'えん', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1003_kursi, 'せき', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1004_kegagalan, 'はい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1004_kegagalan, 'やぶ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1005_buah, 'か', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1005_buah, 'くだ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1005_buah, 'は', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1007_um, 'うめ', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1007_um, 'ばい', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1008_tidak_ada, 'む', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1008_tidak_ada, 'ぶ', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1008_tidak_ada, 'な', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1009_mengikat, 'けつ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1009_mengikat, 'むす', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1009_mengikat, 'ゆ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1010_menyebabkan, 'いん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1010_menyebabkan, 'よ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1011_normal, 'じょう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1011_normal, 'つね', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1012_cerdas, 'しき', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1013_ketidakadilan, 'ひ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1014_kering, 'かん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1014_kering, 'ほ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1014_kering, 'ひ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1015_sangat, 'ぜ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1016_mengarungi, 'しょう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1016_mengarungi, 'わた', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1018_pemerintah, 'かん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1019_tebakan, 'さつ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1020_dasar, 'そこ', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1020_dasar, 'てい', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1021_cinta, 'あい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1021_cinta, 'まな', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1022_kantor_pemerintah, 'しょ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1023_memperingatkan, 'けい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1024_roman, 'れん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1024_roman, 'こい', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1025_menghafal, 'かく', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1025_menghafal, 'おぼ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1025_menghafal, 'さ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1026_teori, 'せつ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1026_teori, 'と', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1027_ilusi, 'げん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1027_ilusi, 'まぼろし', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1412_terperinci, 'しょう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1412_terperinci, 'くわ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1569_drama, 'げき', 'onyomi', true, true);

  -- 3. VOCABULARIES
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '外来語', 'kata-asing', 17, 45, 'Anda tahu kata 外来 berarti "diimpor". Jadi, gabungkan itu dengan kanji untuk <kanji>bahasa</kanji> dan Anda akan mendapatkan kata yang diimpor, alias <vocabulary>kata pinjaman</vocabulary>. Ada banyak kata seperti ini dalam bahasa Jepang, yang menjadikan kata ini penting. Faktanya, hampir semua yang ada di katakana adalah 外来語.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kata Asing, Kata yang Dipinjam, Kata pinjaman')
    RETURNING id INTO v_3421_kata_asing;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '悲しむ', 'menjadi-sedih-tentang', 17, 46, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri artinya <kanji>sedih</kanji> dan kata kerja ini bersifat transitif, jadi artinya <vocabulary>sedih terhadap</vocabulary> sesuatu. Huu huu.', 'Jika kamu sedang <vocabulary>menjadi sedih tentang</vocabulary> sesuatu saat ini, itu adalah <reading>kana</reading> (かな). Jangan gunakan kana saat Anda mencoba mempelajari kanji! Kamu akan sedih selamanya jika kamu terjebak menggunakan kana sepanjang hidupmu, jadi jangan biarkan kebiasaan itu dimulai dari sekarang ya sobat.', 'Menjadi Sedih Tentang, Menjadi Sedih Oleh')
    RETURNING id INTO v_3797_menjadi_sedih_tentang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '喜ぶ', 'untuk-bersukacita', 17, 47, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>bersukacita</kanji> sehingga versi kosakata kata kerjanya adalah <vocabulary>bersukacita</vocabulary>. Meskipun <vocabulary>menjadi bahagia</vocabulary> mungkin terdengar sedikit lebih alami.', 'Anda mulai <vocabulary>bersukacita</vocabulary> dengan mengatakan, "<reading>Yo, rock on</reading> (よろこ)!" Sekarang Anda tahu bagaimana bersukacita mulai sekarang. Di gereja atau kuil? "Yo, ayolah!" Sempurna.', 'Untuk bersukacita, Menjadi Bahagia, Menjadi Senang')
    RETURNING id INTO v_3823_untuk_bersukacita;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '治す', 'untuk-menyembuhkan', 17, 48, 'Kanji berarti <kanji>menyembuhkan</kanji>, jadi kata kerja ini berarti <vocabulary>menyembuhkan</vocabulary>, <vocabulary>menyembuhkan</vocabulary> atau <vocabulary>meringankan</vocabulary> sesuatu. 

Kata kerja ini digunakan ketika seseorang secara aktif menyembuhkan sesuatu. (Penyakitnya tidak sembuh dengan sendirinya.) Bagaimana Anda bisa mengingatnya? Karena ketika kamu mencoba menyembuhkan seseorang dan kamu membuat kesalahan, mereka bisa <read>menuntut</reading> (す). Pada dasarnya, menyembuhkan seseorang berarti berisiko dituntut.', 'Kata ini menggunakan bacaan kun''yomi yang tidak Anda pelajari dengan kanji, jadi inilah mnemoniknya:

Aku ingin kamu <vocabulary>menyembuhkan</vocabulary> dia, dan aku ingin kamu menyembuhkannya sekarang juga <read>sekarang</reading> (なお). SEKARANG SEKARANG SEKARANG!

Ini juga memiliki kesamaan bacaan dengan 直す, kata serupa yang telah Anda pelajari berarti "memperbaiki". Memperbaiki dan menyembuhkan pada dasarnya sama bukan? Sebut saja saya gila, tapi mungkin ada hubungan etimologis yang dapat membantu Anda mengingat bacaan ini.', 'Untuk Menyembuhkan, Untuk Menyembuhkan, Untuk Kemudahan')
    RETURNING id INTO v_3845_untuk_menyembuhkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '紀元前', 'sebelum-masehi', 17, 49, 'Ingat bagaimana 紀元後 adalah "Common Era", atau "anno Domini"? Ini kebalikannya karena memiliki <kanji>sebelum</kanji> (前), bukan 後. Itu <vocabulary>Sebelum Tarikh Masehi</vocabulary> atau <vocabulary>Sebelum Masehi</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Ini juga akan membantu jika Anda sudah tahu cara membaca 紀元後, karena Anda hanya perlu mengingat 前.', 'Sebelum Masehi, SM, Sebelum Masehi, SM')
    RETURNING id INTO v_3934_sebelum_masehi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '朝ご飯', 'sarapan', 17, 50, '<kanji>pagi</kanji> <kanji>makanan</kanji> adalah makanan yang Anda makan di pagi hari. Itulah <vocabulary>sarapan</vocabulary>.', 'Bacaannya adalah yang Anda pelajari dengan kanji. Ini juga seperti kosakatanya: 朝 seperti versi kosakatanya, あさ dan ご飯 seperti kata yang kamu pelajari, ごはん.', 'Sarapan')
    RETURNING id INTO v_3935_sarapan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '泣き虫', 'cengeng', 17, 51, 'Anda pernah melihat bahwa 泣く berarti menangis, jadi Anda mungkin bisa menebak bahwa 泣き hanyalah "menangis". Anda juga telah melihat betapa jarangnya memanggil seseorang dengan 虫 merupakan hal yang menyenangkan. Jadi, apa sebutan kejam yang bisa Anda berikan kepada seseorang yang menangis? Bagaimana dengan <vocabulary>bayi cengeng</vocabulary>?', 'Bacaannya berasal dari 泣く dan 虫. Selama Anda setuju dengan kedua kata itu, Anda seharusnya bisa membaca yang ini juga.', 'cengeng')
    RETURNING id INTO v_3937_cengeng;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '泣き声', 'menangis', 17, 52, '<kanji>tangisan</kanji> <kanji>suara</kanji> adalah suara <vocabulary>menangis</vocabulary> atau <vocabulary>isak</vocabulary>. Jangan menangis! Kanji akan menjadi lebih mudah suatu hari nanti!', 'Bacaannya berasal dari vocab kata 泣く dan 声. Selama kamu tahu dua kata itu oke, kamu pasti bisa membaca kata ini juga!', 'Menangis, Menangis')
    RETURNING id INTO v_3938_menangis;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '晩ご飯', 'makan-malam', 17, 53, '<kanji>malam</kanji> <kanji>makanan</kanji> adalah makanan yang Anda makan di malam hari. Itulah <vocabulary>makan malam</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Makan malam, Makan malam')
    RETURNING id INTO v_3939_makan_malam;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '昼ご飯', 'makan-siang', 17, 54, '<kanji>siang</kanji> <kanji>makanan</kanji> adalah makanan yang Anda makan pada siang hari. Makanan apa itu? Ini <vocabulary>makan siang</vocabulary> yang lezat dan lezat.

Seperti kebanyakan kata makanan, 昼ご飯 sering digunakan dengan awalan kehormatan お, sehingga menjadikannya お昼ご飯. Kadang-kadang Anda akan melihat ini disingkat menjadi hanya お昼, tapi jangan tertipu, karena masih berarti "makan siang" — bagian ご飯 tersirat.', 'Bacaannya berasal dari kata 昼 dan ご飯. Jika Anda tahu cara membaca kata-kata itu, Anda juga bisa membaca kata ini.', 'Makan siang')
    RETURNING id INTO v_3940_makan_siang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '願い事', 'keinginan-seseorang', 17, 55, 'Anda tahu bahwa お願い berarti "permintaan", dan 事 dapat berarti "sesuatu". Nah, permintaan terhadap suatu hal tertentu bisa juga disebut <vocabulary>keinginan seseorang</vocabulary> atau <vocabulary>doa</vocabulary>. Apakah kamu mempunyai 願い事 di hatimu saat ini? Tentu saja! Jangan khawatir, kamu bisa memberitahuku.', 'Bacaannya berasal dari kata お願い dan 事. Jika Anda tahu cara membacanya, Anda seharusnya bisa membaca kata ini juga. Ingatlah bahwa 事 adalah rendaku, jadi dibaca ごと.', 'Keinginan Seseorang, Doa, Mengharapkan')
    RETURNING id INTO v_3941_keinginan_seseorang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '関西', 'kansai', 17, 56, 'Dapatkan <kanji>terhubung</kanji> ke <kanji>barat</kanji> Jepang dengan mengunjungi <vocabulary>Kansai</vocabulary>! 

関西 adalah wilayah di Jepang bagian barat yang mencakup kota-kota seperti Osaka, Kyoto, dan Kobe. Untuk sampai ke Jepang Barat, Anda harus melewati (atau melewatinya), sehingga Anda dapat menganggapnya sebagai permulaan geografis Jepang bagian barat.', 'Ini adalah kata jukugo yang menggunakan bacaan on''yomi.西 on''yomi biasanya adalah せい, yang pernah Anda lihat sebelumnya, tetapi dalam kata ini adalah さい. Berikut ini mnemonik untuk membantu Anda mengingatnya:

Ugh, bacaan rumit seperti yang ada di <vocabulary>Kansai</vocabulary> benar-benar membuat kamu ingin <reading>sigh</reading> (さい).', 'Kansai')
    RETURNING id INTO v_3951_kansai;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '右側', 'sisi-kanan', 17, 57, '<kanji>kanji> <kanji>Sisi</kanji> adalah <vocabulary>sisi kanan</vocabulary>.', 'Bacaannya seluruhnya adalah bacaan kosakata kun''yomi. Anda seharusnya sudah mengetahui pembacaan kosakata kata 右 sekarang. Selain itu, bacaan 側 juga merupakan bacaan yang Anda pelajari dengan kanji dan juga kata 側.', 'Sisi Kanan, Sisi Kanan')
    RETURNING id INTO v_3953_sisi_kanan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '左側', 'sisi-kiri', 17, 58, '<kanji>kiri</kanji> <kanji>Sisi</kanji> adalah <vocabulary>sisi kiri</vocabulary>. Sesederhana itu.', 'Bacaannya kali ini adalah bacaan vocab kun''yomi. Ambil saja kosakata 左 dan tambahkan ke 側 untuk mendapatkan <reading>ひだりがわ</reading>.', 'Sisi Kiri, Sisi Kiri')
    RETURNING id INTO v_3954_sisi_kiri;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '内側', 'di-dalam', 17, 59, '<kanji>di dalam</kanji> <kanji>sisi</kanji> adalah <vocabulary>di dalam</vocabulary>. Sedikit berlebihan tetapi sangat masuk akal.', 'Bacaannya adalah bacaan kun''yomi. Dengan 側 Anda sudah mempelajarinya. Dengan 内 Anda juga sudah belajar membaca. Gabungkan keduanya dan Anda mendapatkan うちがわ. Jika Anda lupa, inilah mnemonik untuk membantu Anda mengingat bagian うち yang mengganggu itu. Apa yang membuat Anda tertarik? "<reading>Oo, chee</reading>se!" (うち) Keju telah menarikmu masuk. Anda begitu gembira hingga berseru, "Oo, keju!"', 'Di dalam')
    RETURNING id INTO v_3955_di_dalam;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '外側', 'di-luar', 17, 60, '<kanji>di luar</kanji> <kanji>di luar</kanji> adalah <vocabulary>di luar</vocabulary>.', 'Kata ini menggunakan bacaan kun''yomi dari kanji. Karena Anda mempelajari bacaan kun''yomi untuk 外 dengan kosakata, Anda seharusnya baik-baik saja di sini.', 'Di luar, Sisi Luar, Luar')
    RETURNING id INTO v_3956_di_luar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '両側', 'kedua-sisi', 17, 61, '<kanji>Kedua</kanji> <kanji>sisi</kanji> adalah <vocabulary>kedua sisi</vocabulary>. Sisi mana? Kedua belah pihak.

両側 biasanya mengacu pada kedua sisi dalam arti fisik, seperti mengatakan ada rumah di kedua sisi jalan atau pegangan tangan di kedua sisi tangga.', 'Kanji pertama mengambil bacaan on''yomi dan kanji kedua mengambil bacaan kun''yomi. Untungnya Anda sudah mengenal keduanya!', 'Kedua Sisi')
    RETURNING id INTO v_3957_kedua_sisi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '東側', 'sisi-timur', 17, 62, '<kanji>timur</kanji> <kanji>Sisi</kanji> adalah <vocabulary>sisi timur</vocabulary>.', 'Kata ini menggunakan bacaan kun''yomi yang pertama kali Anda pelajari dengan setiap kanji. Selama Anda ingat ini adalah kun''yomi ganda, Anda siap melakukannya.', 'Sisi Timur, Timur')
    RETURNING id INTO v_3958_sisi_timur;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '兵員', 'personil-militer', 17, 63, '<kanji>prajurit</kanji> <kanji>anggota</kanji> (atau anggota prajurit) adalah seseorang yang merupakan <vocabulary>personel militer</vocabulary>. Ini juga menunjukkan jumlah <vocabulary>kekuatan militer</vocabulary> yang dimiliki tentara. Semakin banyak anggota prajurit, semakin banyak kekuatan militer dan personel militer yang dimilikinya!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Personil Militer, Kekuatan Militer')
    RETURNING id INTO v_3960_personil_militer;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '兵器', 'lengan', 17, 64, '<kanji>wadah</kanji> yang digunakan oleh <kanji>prajurit</kanji> bukan hanya mangkuk dan barang-barang lainnya, melainkan benda yang menyimpan <vocabulary>lengan</vocabulary> dan <vocabulary>senjata</vocabulary> mereka. Bayangkan wadah tombak dan pedang, penuh dengan senjata!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Lengan, Senjata')
    RETURNING id INTO v_3961_lengan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '兵士', 'tentara', 17, 65, '<kanji>prajurit</kanji> <kanji>samurai</kanji> tetaplah <vocabulary>prajurit</vocabulary> yang lain.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Tentara')
    RETURNING id INTO v_3962_tentara;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '米兵', 'prajurit-as', 17, 66, 'Ingat bagaimana 米国 adalah "Amerika". Ya, lebih dari itu lagi. Dengan 米 mewakili "Amerika" Anda dapat menggabungkannya dengan 兵 (<kanji>prajurit</kanji>) untuk menjadikan diri Anda <vocabulary>tentara AS</vocabulary> / <vocabulary>tentara Amerika</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Prajurit AS, Prajurit Amerika')
    RETURNING id INTO v_3963_prajurit_as;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '原因', 'menyebabkan', 17, 67, '<kanji>asli</kanji> <kanji>penyebab</kanji> adalah bagaimana Anda bisa terlibat dalam kekacauan ini. Lupakan semua hal yang diakibatkannya, <vocabulary>penyebab</vocabulary> yang pertama adalah <vocabulary>asal</vocabulary> dan <vocabulary>sumber</vocabulary> dari apa yang sedang terjadi saat ini. Anda dapat menentukan satu hal yang menyebabkan semua ini!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Menyebabkan, Asal, Sumber')
    RETURNING id INTO v_3964_menyebabkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '原子', 'atom', 17, 68, '<kanji>asli</kanji> <kanji>anak</kanji> dari segala sesuatu adalah <vocabulary>atom</vocabulary>. Anak itulah yang darinya segala sesuatu diciptakan, sebab ia adalah anak yang asli. Atom adalah bahan penyusun segala sesuatu!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Atom')
    RETURNING id INTO v_3965_atom;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '原作', 'karya-asli', 17, 69, 'Hal <kanji>asli</kanji> yang Anda <kanji>buat</kanji> adalah <vocabulary>karya asli</vocabulary>. Menurut saya, lebih baik memiliki yang asli daripada salinan.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Karya Asli')
    RETURNING id INTO v_3966_karya_asli;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '食堂', 'kafetaria', 17, 70, '<kanji>makan</kanji>ing <kanji>aula</kanji> adalah ruangan besar tempat Anda makan. Di ruangan besar manakah Anda makan? Bagaimana dengan <vocabulary>kafetaria</vocabulary>, <vocabulary>ruang makan</vocabulary>, atau <vocabulary>restoran</vocabulary>?', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kafetaria, Ruang Makan, Restoran')
    RETURNING id INTO v_3970_kafetaria;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '塩', 'garam', 17, 71, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji, tidak perlu garam tambahan.', 'Garam')
    RETURNING id INTO v_3971_garam;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '塩水', 'air-garam', 17, 72, '<kanji>Air</kanji> yang mengandung <kanji>garam</kanji> adalah <vocabulary>air garam</vocabulary> atau <vocabulary>air asin</vocabulary>.

Berbeda dengan "air asin" dalam bahasa Inggris, yang sering kali berarti air laut, 塩水 mengacu pada air apa pun yang mengandung sedikit garam, termasuk air laut, air garam untuk berkumur, dan garam medis.', 'Kata ini menggunakan bacaan kun''yomi, yang pernah Anda lihat dengan kosakata 塩 dan 水. Gabungkan keduanya dan Anda mendapatkan しおみず.

Kata ini juga dapat dibaca dengan bacaan on''yomi, namun versi tersebut lebih formal. しおみず biasanya untuk air asin dalam konteks sehari-hari, seperti memasak atau berkumur. えんすい lebih umum digunakan dalam konteks ilmiah atau untuk kategorisasi resmi, seperti ketika mengacu pada danau air asin.', 'Air Garam, Air Asin')
    RETURNING id INTO v_3972_air_garam;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '塩味', 'rasa-asin', 17, 73, '<kanji>garam</kanji> <kanji>rasa</kanji> adalah <vocabulary>rasa asin</vocabulary>.

塩味 secara spesifik merujuk pada <kosakata>rasa asin</vocabulary> yang ditemukan dalam makanan atau minuman. Biasanya digunakan dalam masakan untuk mendeskripsikan profil rasa suatu hidangan atau pada kemasan makanan untuk menunjukkan bahwa makanan tersebut memiliki <vocabulary>rasa asin</vocabulary>.', 'Ini menggunakan bacaan kun''yomi, yang pernah Anda lihat dengan kosakata 塩 dan 味. Gabungkan keduanya dan Anda akan mendapatkan しおあじ.

Ini juga bisa dibaca dengan on''yomi, dan しおあじ dan えんみ bisa merujuk pada profil rasa asin. Secara tradisional, えんみ lebih formal dan diperuntukkan bagi seni kuliner dan acara memasak, namun kini populer di kalangan anak muda dan lebih sering muncul dalam percakapan sehari-hari tentang makanan. Namun, untuk keripik kentang rasa asin, selalu しおあじ.', 'Rasa Asin, Rasa asin, Rasa Asin')
    RETURNING id INTO v_3973_rasa_asin;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '官金', 'dana-pemerintah', 17, 74, '<kanji>Pemerintah</kanji> <kanji>emas</kanji> (alias uang) adalah <vocabulary>dana pemerintah</vocabulary>.

官金 adalah kata formal untuk <vocabulary>uang pemerintah</vocabulary>. Anda mungkin menemukannya dalam berita atau diskusi mengenai belanja publik, terutama terkait dengan penanganan atau penyalahgunaan uang negara.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Dana Pemerintah, Uang Pemerintah')
    RETURNING id INTO v_3974_dana_pemerintah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '外交官', 'diplomat', 17, 75, 'Seseorang dari <kanji>luar</kanji> yang datang untuk <kanji>bercampur</kanji> dengan <kanji>pemerintah</kanji> adalah <vocabulary>diplomat</vocabulary>. Sungguh, itu yang dilakukan diplomat, bukan? Mereka datang dari luar (negara). Mereka berbaur dengan pemerintah, dan mereka melakukan apa yang harus mereka lakukan!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Diplomat')
    RETURNING id INTO v_3975_diplomat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '察する', 'menebak', 17, 76, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>menebak</kanji> jadi versi kosakata kata kerjanya adalah <vocabulary>menebak</vocabulary>. Alternatifnya, Anda dapat mempelajarinya sebagai <vocabulary>untuk merasakan</vocabulary> atau <vocabulary>untuk menduga</vocabulary>.', 'Pembacaannya sebenarnya sama dengan yang Anda pelajari dengan kanji, namun さつ disingkat menjadi さっ. Jika Anda harus <vocabulary>menebak</vocabulary> pastikan menebak dengan つ yang lebih pendek.', 'Menebak, Untuk Merasakan, Untuk berasumsi, Untuk menyimpulkan')
    RETURNING id INTO v_3976_menebak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '察知', 'kesimpulan', 17, 77, 'Oke, jadi Anda <kanji>menebak</kanji> tetapi Anda juga <kanji>tahu</kanji>. Anda bisa membuat <vocabulary>inference</vocabulary> tentang apa jawabannya... Anda tidak 100% yakin, tapi Anda merasa tahu, padahal Anda hanya menebak-nebak.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Anda tahu bagian 察, meskipun di sini disingkat menjadi さっ. Namun, Anda tidak mempelajari on''yomi 知 saat mempelajari kanji, jadi inilah mnemonik yang dapat membantu Anda:

Satu <vocabulary>inference</vocabulary> yang dapat dibuat oleh semua orang adalah Anda mungkin ingin makan <reading>chee</reading>se (ち). Serius, itu tertulis di seluruh wajahmu. Anda dapat mencoba menyembunyikannya, tetapi semua orang melihat betapa panas dan terganggunya Anda di bagian produk susu. Tidak perlu pembaca pikiran untuk <vocabulary>merasakan</vocabulary> betapa buruknya keinginan Anda untuk makan keju.', 'Kesimpulan, Menyimpulkan, Nalar')
    RETURNING id INTO v_3977_kesimpulan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '席', 'kursi', 17, 78, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji. Silakan duduk dan bersantai.', 'Kursi')
    RETURNING id INTO v_3978_kursi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '欠席', 'ketiadaan', 17, 79, 'Ketika <kanji>kursi</kanji> <kanji>kekurangan</kanji>orang yang seharusnya ada di dalamnya, ada <vocabulary>absen</vocabulary>. Dimana Johnny? Ketidakhadiran lagi? Ugh. Johnny. Ayo.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Perhatikan bahwa けつ disingkat menjadi けっ seperti yang sering terjadi ketika berada dalam situasi seperti ini.', 'Ketiadaan, Ketidakhadiran')
    RETURNING id INTO v_3979_ketiadaan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '出席', 'kehadiran', 17, 80, 'Orang-orang yang <kanji>keluar</kanji> dari <kanji>kursi</kanji> mereka di akhir pertunjukan adalah jumlah orang yang muncul, tidak termasuk kursi kosong. Inilah <vocabulary>kehadiran</vocabulary> yang sebenarnya.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Perhatikan saja しゅつ diubah menjadi しゅっ, seperti yang dilakukan banyak つ dalam situasi ini.', 'Kehadiran')
    RETURNING id INTO v_3980_kehadiran;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '空席', 'kursi-terbuka', 17, 81, '<kanji>langit</kanji> <kanji>kursi</kanji> adalah tempat duduk yang penuh dengan langit (alias tidak ada apa-apa!). Ini adalah <vocabulary>kursi kosong</vocabulary> atau <vocabulary>kursi terbuka</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kursi Terbuka, Kursi Kosong, Kursi Gratis')
    RETURNING id INTO v_3981_kursi_terbuka;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '常に', 'selalu', 17, 82, 'Partikel に di sini merupakan petunjuk bahwa kata tersebut merupakan kata keterangan. Kata keterangan mendeskripsikan tindakan, lalu apa yang dimaksud dengan tindakan <kanji>normal</kanji>? Ini adalah sesuatu yang <vocabulary>selalu</vocabulary>, atau <vocabulary>terus-menerus</vocabulary> Anda lakukan. Itu yang menjadikannya normal!', 'Bacaannya adalah bacaan kun''yomi yang belum kamu pelajari. Untuk mempelajarinya, pikirkan ini:

Saya <vocabulary>selalu</vocabulary> <reading>menyetel</reading> (つね) biola saya, namun hari ini saya tidak menyetelnya. Jadi, sekarang suaraku terdengar buruk. Bayangkan betapa buruknya suara biola saya yang tidak disetel, dibandingkan dengan bunyinya yang selalu terdengar.', 'Selalu, Selalu, Terus menerus')
    RETURNING id INTO v_3982_selalu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '日常', 'kehidupan-sehari-hari', 17, 83, '<kanji>Normal</kanji> <kanji>hari</kanji> adalah apa yang Anda alami dalam <vocabulary>kehidupan sehari-hari</vocabulary> biasa. Ini adalah <vocabulary>kehidupan normal</vocabulary> Anda.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kehidupan Sehari-hari, Kehidupan Biasa, Kehidupan Sehari-hari, Biasa, Biasa, Setiap hari, Biasa')
    RETURNING id INTO v_3983_kehidupan_sehari_hari;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '常識', 'kewajaran', 17, 84, '<kanji>Normal</kanji> <kanji>mencermati</kanji> adalah penegasan yang Anda lakukan setiap hari, tanpa berpikir. Semua hal yang Anda lakukan adalah <vocabulary>akal sehat</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kewajaran, Pengetahuan Umum')
    RETURNING id INTO v_3984_kewajaran;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '干す', 'untuk-mengeringkan-sesuatu', 17, 85, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>kering</kanji> dan versi kosakata kata kerjanya adalah <vocabulary>mengeringkan sesuatu</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak mempelajarinya dengan kanji ini, jadi inilah mnemonik yang dapat membantu Anda: Mengapa Anda perlu <vocabulary>mengeringkan sesuatu</vocabulary>? Karena seseorang menggunakan <reading>selang</reading> (ほす) dan membuat semuanya basah. Ugh, sebaiknya jangan biarkan selang itu keluar lagi...', 'Untuk Mengeringkan Sesuatu, Untuk Mengeringkan Sesuatu')
    RETURNING id INTO v_3985_untuk_mengeringkan_sesuatu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '干天', 'cuaca-kering', 17, 86, 'Ingat bagaimana 天気 adalah cuaca (dan seberapa sering 天 mengacu pada benda langit?). Nah, ketika langit kering, Anda mengalami <vocabulary>cuaca kering</vocabulary>.

Perhatikan bahwa 干天 cukup kuno dan Anda akan menemukannya terutama dalam penulisan formal dan ekspresi himpunan tingkat lanjut.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Cuaca Kering, Kekeringan')
    RETURNING id INTO v_3986_cuaca_kering;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '干渉', 'gangguan', 17, 87, 'Saat Anda <kanji>menyeberangi</kanji>sungai, dan tiba-tiba Anda merasakan perasaan <kanji>kering</kanji> di sekitar Anda, hal tersebut tidak masuk akal untuk sesuatu yang basah. Kekeringan ini merupakan <vocabulary>gangguan</vocabulary>. Ini adalah <vocabulary>intervensi</vocabulary> yang mencoba menghentikan Anda untuk terus maju.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Gangguan, Intervensi')
    RETURNING id INTO v_3987_gangguan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '幻', 'ilusi', 17, 88, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna. Anda juga bisa menambahkan <vocabulary>phantom</vocabulary> pada artinya, karena phantom itu seperti <vocabulary>ilusi</vocabulary>.', 'Karena kata ini terdiri dari satu kanji, maka sebaiknya menggunakan bacaan kun''yomi. Saat mempelajari kanji, Anda tidak mempelajari cara membacanya, jadi inilah mnemonik untuk membantu Anda dengan kata ini: Anda melihat ke atas untuk melihat <vocabulary>ilusi</vocabulary> yang gila. Anda tidak percaya itu nyata. Master Roshi, dari Dragonball, berdiri di depan Anda (Anda mengira dia kartun!). Kemudian, dia membagi dirinya menjadi jutaan versi, menciptakan <reading>gerombolan Roshi</reading> (まぼろし). Massa ini kemudian melatih banyak orang untuk bertarung.', 'Ilusi, Hantu, Hantu')
    RETURNING id INTO v_3988_ilusi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '幻覚', 'halusinasi', 17, 89, '<kanji>ilusi</kanji> yang Anda alami saat <kanji>bangun</kanji> adalah <vocabulary>halusinasi</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Halusinasi')
    RETURNING id INTO v_3989_halusinasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '幻想', 'fantasi', 17, 90, 'Sebuah <kanji>ilusi</kanji> yang Anda <kanji>bayangkan</kanji> adalah <vocabulary>fantasi</vocabulary> besar Anda (ini juga merupakan <vocabulary>ilusi</vocabulary>). Tapi ini masuk akal, bukan? Ilusi tetaplah ilusi, tentu saja. Tapi, saat Anda membayangkannya, itu menjadi fantasi Anda!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Fantasi, Ilusi')
    RETURNING id INTO v_3990_fantasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '底', 'dasar', 17, 91, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Kosakata ini menggunakan bacaan yang sama seperti yang Anda pelajari dengan kanji. Dimainkan dengan baik!', 'Dasar')
    RETURNING id INTO v_3991_dasar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '心底', 'dasar-hati-seseorang', 17, 92, '<kanji>hati</kanji> <kanji>bawah</kanji> adalah <vocabulary>dasar hati seseorang</vocabulary>. Apakah Anda ingin belajar kanji? Apakah Anda ingin mempelajarinya dari 心底? Oke, baiklah, kalau begitu Anda bisa melanjutkan ke bacaan.', 'Kata ini menggunakan bacaan on''yomi untuk kanji pertama dan bacaan kun''yomi untuk kanji kedua. Anda sudah mempelajari keduanya, jadi Anda harus bisa membacanya juga!', 'Dasar Hati Seseorang, Bagian Bawah Hatiku')
    RETURNING id INTO v_3992_dasar_hati_seseorang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '川底', 'palung', 17, 93, '<kanji>sungai</kanji> <kanji>dasar</kanji> adalah <vocabulary>dasar sungai</vocabulary>, juga dikenal sebagai <vocabulary>dasar sungai</vocabulary>.', 'Bacaannya adalah bacaan yang Anda pelajari dengan kanji. Jangan lupa rendaku untuk 底!', 'Palung, Dasar Sungai')
    RETURNING id INTO v_3993_palung;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '恋', 'cinta', 17, 94, 'Saat kamu memiliki <kanji>romansa</kanji> kamu juga memiliki <vocabulary>cinta</vocabulary>! Jenis cinta romantis yang lembek dan mengalir. Namun berhati-hatilah. Kata ini tidak memiliki arti yang sama dengan kanjinya. Tapi, begitulah romantisme. Semuanya menjadi gila dan berubah menjadi cinta dengan sangat cepat.', 'Karena kata ini terdiri dari satu kanji, maka sebaiknya menggunakan bacaan kun''yomi. Saat mempelajari kanji, Anda tidak mempelajari cara membacanya, jadi inilah mnemonik untuk membantu Anda dengan kata ini: <vocabulary>cinta</vocabulary> Anda bukan pada seseorang, melainkan pada ikan <reading>Koi</reading> (こい) raksasa yang Anda temui kemarin. Ikannya sangat... sangat... tampan! Anda akan mendapatkan hati yang bermunculan di atas kepala Anda setiap kali Anda memikirkan tentang koi ini!', 'Cinta')
    RETURNING id INTO v_3997_cinta;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '失恋', 'patah-hati', 17, 95, '<kanji>kesalahan</kanji> dari <kanji>romansa</kanji> bukanlah romansa itu sendiri, melainkan ketika semuanya berantakan. Itu adalah saat kamu mengalami <vocabulary>patah hati</vocabulary> atau <vocabulary>cinta tak berbalas</vocabulary>. Pernahkah Anda merasakan kesalahan dalam percintaan? Jika ya, ingatlah kembali masa itu, dan pikirkan betapa buruknya kesalahan itu.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Patah hati, Patah Hati, Cinta Tak Terbalas')
    RETURNING id INTO v_3998_patah_hati;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '愛', 'cinta', 17, 96, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan kanji. Itu kanji <vocabulary>cinta</vocabulary> yang sebenarnya.', 'Cinta')
    RETURNING id INTO v_3999_cinta;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '愛国心', 'patriotisme', 17, 97, 'Ketika Anda memiliki <kanji>cinta</kanji> untuk <kanji>negara</kanji> jauh di dalam <kanji>hati</kanji> Anda, itulah <vocabulary>patriotisme</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Patriotisme')
    RETURNING id INTO v_4000_patriotisme;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '恋愛', 'cinta', 17, 98, 'Ketika Anda memiliki <kanji>romansa</kanji> dan <kanji>cinta</kanji> semuanya dalam satu paket. Ya, itulah <vocabulary>cinta</vocabulary>! Ah sayang! Ini adalah kata yang digunakan ketika berbicara tentang cinta. Anda tidak menggunakan ini untuk mengatakan "Aku cinta kamu."', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Cinta, Roman')
    RETURNING id INTO v_4001_cinta;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '自愛', 'mencintai-diri-sendiri', 17, 99, 'Jika Anda <kanji>mencintai</kanji> <kanji>diri</kanji> Anda, itulah <vocabulary>mencintai diri sendiri</vocabulary>. Anda kebanyakan akan melihat kata ini sebagai bagian dari rangkaian frasa ご自愛下さい, yang digunakan dalam email dan sejenisnya untuk mengingatkan penerimanya agar bersikap baik pada diri mereka sendiri. Variasi lainnya termasuk ご自愛くださいませ, ご自愛を, dan ご自愛のほどを.', 'Bacaannya adalah yang Anda pelajari dengan kanji, Anda mencintai diri sendiri.', 'Mencintai diri sendiri, Merawat Diri Sendiri')
    RETURNING id INTO v_4002_mencintai_diri_sendiri;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '性愛', 'cinta-seksual', 17, 100, '<kanji>Gender</kanji> <kanji>cinta</kanji> adalah jenis cinta yang ada hubungannya dengan bagian gender. Itulah <vocabulary>cinta seksual</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Cinta Seksual')
    RETURNING id INTO v_4003_cinta_seksual;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '愛知県', 'prefektur-aichi', 17, 101, '<kanji>Cinta</kanji> <kanji>Kenali</kanji> <kanji>Prefektur</kanji>! Saya ingin tinggal di sini, karena orang harus mengenal cinta! Tentu saja, kami tidak menyebutnya demikian dalam bahasa Inggris. Anda harus mengetahui bacaan kanji untuk mengetahui bacaan di prefektur ini, yaitu <vocabulary>Prefektur Aichi</vocabulary> (lompat ke bacaan untuk mengetahuinya).', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Anda tidak mempelajari on''yomi 知 saat mempelajari kanji, jadi inilah mnemonik untuk membantu Anda:

Tahukah Anda apa yang sangat ingin mereka ketahui di <vocabulary>Prefektur Aichi</vocabulary>? <read>Chee</reading>se (ち). Orang-orang di Aichi, mereka benar-benar tahu segalanya tentang keju. Jangan pernah membawanya ke pesta anggur dan keju, karena, kawan — mereka akan menceritakan fakta keju kepada Anda sepanjang malam.', 'Prefektur Aichi')
    RETURNING id INTO v_4004_prefektur_aichi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '敗れる', 'untuk-dikalahkan', 17, 102, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>kalah</kanji>, jadi ini berarti <vocabulary>kalah</vocabulary>, tapi juga <vocabulary>tidak berhasil</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: Anda telah dikalahkan. Anda berbaring di tanah, dan para penggemar di sekitar stadion merasa muak dengan penampilan Anda. Beberapa hipster menghampiri Anda dan berkata: "<reading>Yah, Boo</reading>" (やぶ) mengacu pada betapa buruknya kinerja Anda. "Tidak, boo!", balasmu. "Yah boo", kata mereka lagi.', 'Untuk Dikalahkan, Menjadi Tidak Berhasil')
    RETURNING id INTO v_4005_untuk_dikalahkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '失敗', 'kegagalan', 17, 103, '<kanji>kesalahan</kanji> dan <kanji>kegagalan</kanji>, semuanya menjadi satu. Ini pasti merupakan satu <vocabulary>kegagalan</vocabulary> dan <vocabulary>kesalahan</vocabulary> besar yang Anda buat.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Namun, 失 diperpendek, dan 敗 diberi rendaku. Jangan buat itu 失敗.', 'Kegagalan, Kesalahan')
    RETURNING id INTO v_4006_kegagalan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '勝敗', 'kemenangan-atau-kekalahan', 17, 104, 'Anda memiliki <kanji>menang</kanji> dan Anda memiliki <kanji>kalah</kanji>. Saat Anda membicarakan keduanya dalam satu kata, Anda memiliki <kosakata>kemenangan atau kekalahan</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kemenangan Atau Kekalahan, Menang Atau Kalah, Hasil')
    RETURNING id INTO v_4007_kemenangan_atau_kekalahan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '敗者', 'pecundang', 17, 105, '<kanji>yang kalah</kanji>dari <kanji>seseorang</kanji> adalah <vocabulary>yang kalah</vocabulary> atau <vocabulary>yang kalah</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Pecundang, Yang Dikalahkan')
    RETURNING id INTO v_4008_pecundang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '是非', 'sangat', 17, 106, '<kanji>Benar-benar</kanji> sebuah <kanji>ketidakadilan</kanji>! Kita harus <vocabulary>secara mutlak</vocabulary> menghukum pelakunya, <vocabulary>dengan segala cara</vocabulary>. Namun pertama-tama, kita mungkin harus mendefinisikan <vocabulary>benar dan salah</vocabulary>.

Kata ini berarti "mutlak" jika digunakan sebagai kata keterangan, dan itulah penggunaan yang paling sering Anda dengar dalam percakapan. Namun, sebagai kata benda, kata ini berarti "benar dan salah", seperti apakah sesuatu itu benar atau salah, atau baik atau buruk.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Sangat, Tentu saja, Benar Dan Salah')
    RETURNING id INTO v_4009_sangat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '梅', 'um', 17, 107, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji. Arti ini juga sama dengan arti kanji/vocabnya, meskipun Anda juga bisa menganggapnya sebagai <vocabulary> plum Jepang</vocabulary> jika Anda mau.', 'Um, Plum Jepang')
    RETURNING id INTO v_4015_um;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '梅酒', 'anggur-ume', 17, 108, '<kanji>Alkohol</kanji> yang berasal dari <kanji>ume</kanji> adalah <vocabulary>anggur ume</vocabulary>. Bisa juga disebut <vocabulary>anggur plum</vocabulary> atau <vocabulary>minuman keras plum</vocabulary>. Jika Anda sudah cukup umur, cobalah rasanya, rasanya enak!', 'Pembacaannya hanyalah pembacaan kanji yang telah dipelajari. Bagaimana kalau bersulang untuk kata-kata yang mudah dibaca!', 'Anggur Ume, Anggur Plum, Minuman Keras Plum, Umeshu')
    RETURNING id INTO v_4016_anggur_ume;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '交渉', 'perundingan', 17, 109, 'Saat Anda <kanji>menyeberangi</kanji> ke dalam berbagai hal dan <kanji>mencampuradukkan</kanji> semuanya, Anda terlibat dalam <vocabulary>negosiasi</vocabulary>. Tapi itulah yang dimaksud dengan negosiasi, bukan? Anda harus segera masuk ke sana, melewati kotoran. Kemudian, Anda harus mencampuradukkan dan berkompromi antara kedua belah pihak.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Perundingan')
    RETURNING id INTO v_4017_perundingan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '無力', 'tak-berdaya', 17, 110, 'Ketika <kanji>kekuatan</kanji> Anda <kanji>tidak berarti apa-apa</kanji>, Anda <vocabulary>tidak berdaya</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Ada beberapa kemungkinan untuk 力, jadi inilah mnemonik untuk membantu Anda mengingat mana yang harus digunakan: 

Anda tahu 力 menggunakan bacaan りょく di sini karena Anda benar-benar <vocabulary>tidak berdaya</vocabulary> ketika mereka <reading>mengunci</reading> (りょく) Anda. Siapa "mereka"? Saya tidak tahu, tetapi apakah Anda mendengar bunyi klik kunci di belakang Anda? Itu berarti kamu tidak berdaya sekarang.', 'Tak berdaya, Ketidakberdayaan, Ketidakberdayaan')
    RETURNING id INTO v_4018_tak_berdaya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '無休', 'tidak-ada-hari-libur', 17, 111, 'Jika <kanji>istirahat</kanji> <kanji>tidak ada</kanji> maka <vocabulary>tidak ada hari libur</vocabulary>. Jika tidak ada hari libur, berarti suatu tempat <vocabulary>selalu buka</vocabulary>, <vocabulary>nonstop</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Tidak Ada Hari Libur, Selalu Terbuka, Nonstop')
    RETURNING id INTO v_4019_tidak_ada_hari_libur;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '無名', 'anonim', 17, 112, 'Seseorang yang tidak memiliki "<kanji>tidak ada</kanji>" untuk <kanji>nama</kanji>-nya sedang mencoba untuk tetap <vocabulary>anonymous</vocabulary> atau hanya <vocabulary>unknown</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Anonim, Tidak dikenal')
    RETURNING id INTO v_4020_anonim;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '無事', 'segar-bugar', 17, 113, '<kanji>tidak ada</kanji> <kanji>kejadian</kanji> adalah kejadian di mana tidak terjadi apa-apa pada Anda, atau setidaknya tidak ada hal buruk — yang berarti Anda <vocabulary>aman dan sehat</vocabulary>. Fiuh! 

Selain berarti <vocabulary>aman</vocabulary>, 無事 juga dapat menggambarkan situasi di mana segala sesuatunya berjalan <vocabulary>tanpa hambatan</vocabulary>.', 'Satu hal yang tidak aman dan sehat adalah pembacaan 無 pada kata ini. Bukannya む, melainkan ぶ. Mengapa? Karena Anda mengira itu aman dan sehat, tetapi Anda tertipu. Ada hantu dimana-mana, semuanya melompat keluar dan berteriak <reading>Boo!</reading> (ぶ) padamu. Rasakan kejutannya. Anda pikir itu aman dan sehat!', 'Segar bugar, Aman, Tanpa Hambatan')
    RETURNING id INTO v_4021_segar_bugar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '無知', 'ketidaktahuan', 17, 114, 'Saat Anda <kanji>tidak tahu</kanji> <kanji>apa pun</kanji> (Jon Snow), Anda tidak tahu apa pun. Ini adalah <vocabulary>ketidaktahuan</vocabulary>, yaitu <vocabulary>ignorant</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Anda tidak mempelajari on''yomi 知 saat mempelajari kanji, jadi inilah mnemonik untuk membantu Anda:

Apa hal terburuk yang harus dijalani dalam <vocabulary>ketidaktahuan</vocabulary>? Mungkin <reading>chee</reading>se (ち). Bisakah Anda bayangkan tidak mengenal cheddar dari Swiss? Atau gouda dari brie? Bayangkan kehidupan menyedihkan dan hampa yang akan Anda jalani jika Anda <vocabulary>tidak tahu</vocabulary> akan keajaiban keju.', 'Ketidaktahuan, Kurang pengetahuan')
    RETURNING id INTO v_4022_ketidaktahuan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '無茶', 'irasional', 17, 115, 'Bayangkan <kanji>tidak minum apa pun</kanji> selain <kanji>teh</kanji> selama seminggu penuh. Kedengarannya benar-benar <vocabulary>tidak rasional</vocabulary>, bukan? Rencana diet <vocabulary>sembrono</vocabulary> seperti itu terkesan <vocabulary>berlebihan</vocabulary>.

無茶 sering digunakan untuk menunjukkan bahwa ada sesuatu yang bertentangan dengan akal sehat; atau mengkritik atau tidak menyetujui tindakan atau situasi tertentu yang mungkin dianggap sembrono atau berlebihan.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Irasional, Ceroboh, Berlebihan')
    RETURNING id INTO v_4023_irasional;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '無料', 'bebas', 17, 116, 'Jika <kanji>biaya</kanji> <kanji>tidak ada</kanji> maka <vocabulary>gratis</vocabulary> dan <vocabulary>tanpa biaya</vocabulary>!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Bebas, Tanpa Biaya')
    RETURNING id INTO v_4024_bebas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '細い', 'tipis', 17, 117, 'Ini adalah kanji tunggal dengan い di akhir, artinya Anda tahu itu mungkin kata sifat. Apa bentuk kata sifat dari <kanji>tipis</kanji>? Kata ini juga <vocabulary>tipis</vocabulary>, meski bisa juga <vocabulary>ramping</vocabulary>.

細い digunakan untuk benda linier atau silinder, seperti 細い糸 (benang tipis) atau 細い指 (jari ramping). Kata ini juga muncul dalam ungkapan yang secara kiasan berarti "kurus", seperti 食が細い (nafsu makannya sedikit) dan 声が細い (suaranya lemah).', 'Tahukah Anda apa lagi yang <vocabulary>kurus</vocabulary> dan <vocabulary>ramping</vocabulary>? <read>selang</reading> taman (ほそ). Bayangkan meneteskan air tipis ke beberapa tanaman dengan selang taman ramping Anda, sambil mengagumi betapa ramping dan rampingnya tanaman tersebut.', 'Tipis, Ramping')
    RETURNING id INTO v_4025_tipis;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '署名', 'tanda-tangan', 17, 118, '署 bisa berarti "kantor pemerintah" atau "tanda tangan", bukan? Ya, <kanji>tanda tangan</kanji> <kanji>nama</kanji> Anda sebenarnya hanyalah <vocabulary>tanda tangan</vocabulary> Anda. Tolong tanda tangan di garis putus-putus!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Tanda tangan, Penandatanganan')
    RETURNING id INTO v_4027_tanda_tangan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '薬', 'obat', 17, 119, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna. Jika Anda sedang mencari obat di Jepang, carilah tanda ini.', 'Karena kata ini terdiri dari satu kanji, maka sebaiknya menggunakan bacaan kun''yomi. Saat mempelajari kanji, Anda tidak mempelajari cara membacanya, jadi inilah mnemonik untuk membantu Anda dengan kata ini: Anda memerlukan <vocabulary>obat</vocabulary>, stat! Tapi, tak seorang pun mau memberimu obat apa pun. Kamu terus bertanya pada apotekermu, Yuri, apakah dia mau memberimu obat. Dia bilang tidak. Kamu menjadi kesal, dan kamu <reading>memaki yuri</reading> (くすり) keluar. Dia memberimu obat setelah kamu mengumpatnya.', 'Obat, Obat, Narkoba')
    RETURNING id INTO v_4028_obat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '薬学', 'studi-farmasi', 17, 120, 'Orang yang <kanji>belajar</kanji> tentang <kanji>kedokteran</kanji> sedang mempelajari <vocabulary>studi farmasi</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Studi Farmasi, Farmakologi, Ilmu farmasi')
    RETURNING id INTO v_4029_studi_farmasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '薬物', 'narkoba', 17, 121, '<kanji>Obat</kanji> <kanji>benda</kanji> ini adalah jenis yang buruk, itu adalah <vocabulary>obat</vocabulary>!

Sebagai kata yang berdiri sendiri, 薬物 umumnya mengacu pada (seringkali) obat-obatan terlarang yang menyebabkan kecanduan atau memiliki efek stimulasi. Tergantung pada konteksnya, kata ini juga dapat merujuk pada obat-obatan farmasi (alias <vocabulary>medicine</vocabulary>), namun dalam hal ini, biasanya digunakan pada senyawa seperti 薬物アレルギー (alergi obat).', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Narkoba, Obat')
    RETURNING id INTO v_4031_narkoba;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '薬用', 'obat', 17, 122, 'Sesuatu yang <kanji>digunakan</kanji>d untuk <kanji>obat</kanji> adalah <vocabulary>obat</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Obat, Penggunaan Obat')
    RETURNING id INTO v_4032_obat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '感覚', 'nalar', 17, 123, 'Anda tahu bagaimana kami menggunakan <kanji>perasaan</kanji> untuk <kanji>menghafal</kanji> sesuatu di WaniKani? Saya meminta Anda untuk merasa marah atau sedih atau bahagia saat membayangkan cerita mnemonik. Saya juga meminta Anda untuk menggunakan <vocabulary>indera</vocabulary> Anda, karena perasaan paling baik dihafal ketika Anda menggunakan <vocabulary>indera</vocabulary>. Ini juga bisa merujuk pada <kosakata>sensasi</vocabulary> tertentu atau bahkan <vocabulary>selera</vocabulary> seseorang dalam hal humor atau mode!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Nalar, Indra, Sensasi')
    RETURNING id INTO v_4036_nalar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '説明', 'penjelasan', 17, 124, 'Saat Anda membuat <kanji>teori</kanji> <kanji>cerah</kanji> Anda (dan jelas serta mudah dipahami), Anda pasti sudah mendapatkan <vocabulary>penjelasan</vocabulary> yang bagus untuk teori tersebut. Sebelumnya, pikiran semua orang gelap dan suram. Namun ketika Anda memberikan penjelasannya, penjelasannya menjadi jelas dan mudah dimengerti! Hore!

説明 adalah kata umum sehari-hari yang digunakan ketika menjelaskan sesuatu yang tidak diketahui atau asing agar dapat dimengerti. Anda mungkin melihatnya saat menjelaskan cara menggunakan perangkat atau mendeskripsikan suatu situasi, misalnya.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Penjelasan, Keterangan')
    RETURNING id INTO v_4037_penjelasan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '小説', 'novel', 17, 125, '<kanji>teori</kanji> kecil</kanji> adalah gagasan yang Anda miliki dan dituangkan di atas kertas. Mungkin itu ide tentang kehidupan yang Anda tulis dalam bentuk <vocabulary>novel</vocabulary>?', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Novel')
    RETURNING id INTO v_4038_novel;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '伝説', 'legenda', 17, 126, 'Ketika orang <kanji>menyebarkan</kanji> sebuah <kanji>teori</kanji> selama berabad-abad, hal itu dapat berubah menjadi <vocabulary>legenda</vocabulary>, atau <vocabulary>cerita legendaris</vocabulary>. Seperti bagaimana “teori” pedang Raja Arthur berubah menjadi legenda Excalibur.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Anda hanya perlu mengingat bahwa 伝 dibaca sebagai でん dalam kasus ini. Bayangkan saja diri Anda duduk di <reading>ruang kerja</reading> (でん) sambil merasa nyaman dan mendengarkan teori tentang <vocabulary>legenda</vocabulary> yang hebat ini.', 'Legenda, Kisah Legendaris')
    RETURNING id INTO v_4039_legenda;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '仮説', 'hipotesa', 17, 127, '<kanji>teori</kanji> <kanji>sementara</kanji> bukanlah teori yang sudah pasti. Faktanya, ini bukanlah sebuah teori sama sekali, ini lebih merupakan <vocabulary>hipotesis</vocabulary>.

Kata ini umumnya digunakan ketika mengacu pada penelitian atau semacam penyelidikan di mana suatu hipotesis diajukan yang perlu diuji dan divalidasi melalui bukti dan eksperimen.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Hipotesa')
    RETURNING id INTO v_4040_hipotesa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '図説', 'ilustrasi', 17, 128, '<kanji>diagram</kanji> <kanji>teori</kanji> adalah <vocabulary>ilustrasi</vocabulary> yang digunakan sebagai <vocabulary>diagram penjelasan</vocabulary>. Bayangkan saja sebuah papan kapur dengan segala macam gambar, menunjukkan cara kerjanya, setidaknya secara teori.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Ilustrasi, Diagram Penjelasan')
    RETURNING id INTO v_4041_ilustrasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '知識', 'pengetahuan', 17, 129, 'Anda <kanji>mencermati</kanji> tentang apa yang Anda <kanji>ketahui</kanji>. Anda memilih apa yang harus disimpan dan apa yang tidak boleh disimpan dalam otak Anda. Ini adalah jumlah <vocabulary>pengetahuan</vocabulary> Anda.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Anda tidak mempelajari on''yomi 知 saat mempelajari kanji, jadi inilah mnemonik untuk membantu Anda:

Apa saja <vocabulary>pengetahuan</vocabulary> yang Anda miliki? <read>Chee</reading>se (ち)! Anda memiliki pengetahuan ensiklopedis yang luas tentang semua keju di dunia. Sebagai ahli bleu sejati, Anda sangat bersyukur karena sebagian besar pengetahuan orang tentang keju penuh dengan lubang.', 'Pengetahuan, Informasi')
    RETURNING id INTO v_4042_pengetahuan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '意識', 'kesadaran', 17, 130, '<kanji>ide</kanji> Anda saat <kanji>mencermati</kanji> sesuatu menunjukkan <vocabulary>kesadaran</vocabulary> Anda dan <vocabulary>kesadaran</vocabulary> terhadap lingkungan sekitar Anda. Anda tidak hanya mengetahui bahwa Anda mempunyai gagasan, tetapi Anda juga memikirkannya dan memahaminya.

意識 sering digunakan dalam kaitannya dengan apakah seseorang sadar atau tidak, seperti dalam konteks medis atau berita. Dalam konteks lain dapat merujuk pada kesadaran akan hal-hal tertentu, seperti kesadaran yang tinggi terhadap permasalahan lingkungan.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kesadaran, Kesadaran')
    RETURNING id INTO v_4043_kesadaran;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '警察', 'polisi', 17, 131, 'Mereka <kanji>memperingatkan</kanji> Anda dan mereka <kanji>menebak</kanji> ketika Anda melakukan kesalahan (tentu saja dengan bukti!). Mereka adalah <vocabulary>polisi</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'POLISI')
    RETURNING id INTO v_4044_polisi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '非常', 'keadaan-darurat', 17, 132, 'Ketika <kanji>ketidakadilan</kanji> terhadap apa yang <kanji>normal</kanji> dilakukan, hal itu menjadikannya <vocabulary>darurat</vocabulary>! 

Meski kurang umum, ini juga bisa digunakan sebagai kata sifat な. Dalam hal ini, artinya adalah <vocabulary>ekstrim</vocabulary> atau <vocabulary>unusual</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Keadaan darurat, Ekstrim, Tidak biasa')
    RETURNING id INTO v_4045_keadaan_darurat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '鼻', 'hidung', 17, 133, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan kanji. Baunya enak, bukan?', 'Hidung')
    RETURNING id INTO v_4046_hidung;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '鼻くそ', 'ingus', 17, 134, 'Jika Anda seperti orang lain yang mempelajari bahasa baru, Anda akan mempelajari kata-kata buruknya terlebih dahulu. Ini bukan kata yang buruk, tapi mengandung kata yang buruk. くそ berarti "sh*t" (seperti dalam "kotoran") dalam bahasa Jepang. Kalau begitu, apa maksud <kanji>hidung</kanji>mu? Itu adalah <vocabulary>ingus</vocabulary> dan <vocabulary>boogers</vocabulary> Anda. Eww, berhenti memakannya!', 'Pembacaannya sama seperti yang Anda pelajari dengan kanji. <membaca>はな</membaca>くそ.', 'Ingus, Booger')
    RETURNING id INTO v_4047_ingus;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '鼻先', 'ujung-hidung', 17, 135, 'Anda tahu bagian <kanji>sebelumnya</kanji> dari <kanji>hidung</kanji> Anda? Bagian hidungmu yang baru saja aku potong? Ya, Anda beruntung, karena itu hanya <vocabulary>ujung hidung</vocabulary>. Saatnya untuk memotong sisanya, selanjutnya!', 'Bacaannya adalah bacaan kosakata kun''yomi. Dengan 鼻 Anda mempelajarinya dengan kanji. Dengan 先 Anda mempelajarinya dengan vocab. Jadi, Anda harus memiliki seluruh bagiannya untuk dapat membaca ini. Ingat, bagian tubuh cenderung mengubah kata menjadi bacaan kun''yomi karena alasan tertentu, tidak terkecuali di sini.', 'Ujung Hidung, Ujung Hidung, Ujung Hidung')
    RETURNING id INTO v_4048_ujung_hidung;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '鼻歌', 'bersenandung', 17, 136, 'Cobalah menyanyikan <kanji>hidung</kanji> <kanji>lagu</kanji>. Bagaimana kedengarannya? Suka <vocabulary>bersenandung</vocabulary> mungkin?', 'Bacaannya sama-sama merupakan bacaan kosakata kun''yomi, mungkin karena 鼻 adalah bagian tubuh, dan bagian tubuh melakukan hal tersebut pada kata-kata jukugo. Anda tahu bacaan 鼻 dari kanji (はな) dan Anda tahu bacaan 歌 dari kosakata 歌 (うた). Gabungkan keduanya dan Anda akan mendapatkan nada senandung dan bacaan yang sangat bagus, はなうた.', 'Bersenandung')
    RETURNING id INTO v_4049_bersenandung;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '鼻血', 'mimisan', 17, 137, '<kanji>hidung</kanji> dengan <kanji>darah</kanji> adalah hidung dengan <vocabulary>mimisan</vocabulary>. Itu adalah <vocabulary>hidung berdarah</vocabulary>.', 'Bacaannya adalah bacaan kosakata kun''yomi. Anda sudah mengetahui pembacaan 鼻 dari kanji dan kosakatanya, dan Anda juga harus mengetahui pembacaan kosakata 血. Gabungkan keduanya dan Anda akan mendapatkan はなち, meskipun Anda ingin mengubah ち menjadi ぢ. Alternatifnya, mungkin (walaupun kurang umum, tapi tidak masalah jika Anda mengubahnya menjadi kanji melalui IME) untuk menuliskannya sebagai はなじ. Kayaknya darahnya tambah sepuluh sepuluh (itu melambangkan darah yang keluar dari hidung itu!). Semburan muncrat muncrat.', 'Mimisan, Hidung Berdarah')
    RETURNING id INTO v_4050_mimisan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '土曜日', 'sabtu', 17, 138, 'Ini adalah hari dalam seminggu. Anda tahu ini karena ada 曜日 di dalamnya. Tapi hari apa dalam seminggu ini? Hari <kanji>kotoran</kanji> adalah hari dimana Anda akhirnya bisa keluar rumah dan menjadi sedikit kotor. Mungkin Anda sedang berkebun di halaman, bermain bisbol di taman, atau bahkan mengendarai sepeda motor trail ke suatu tempat bersama teman. Atau mungkin Anda hanya berbaring telungkup di tanah karena Anda minum terlalu banyak di hari Jumat. Apa pun yang terjadi, <vocabulary>Sabtu</vocabulary> adalah hari untuk bersantai dan kotor.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Berhati-hatilah agar ひ menjadi び seperti pada kata 曜日.', 'Sabtu')
    RETURNING id INTO v_4054_sabtu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '日曜日', 'minggu', 17, 139, 'Ini adalah hari dalam seminggu. Anda tahu ini karena ada 曜日 di dalamnya. Tapi hari apa dalam seminggu ini? Hari <kanji>Minggu</kanji> dalam seminggu adalah <vocabulary>Minggu</vocabulary>. Tidak ada yang lebih mudah dari itu bagi Anda. Beruntung!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Berhati-hatilah agar ひ menjadi び seperti pada kata 曜日.', 'Minggu')
    RETURNING id INTO v_4055_minggu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '証明書', 'sertifikat', 17, 140, 'Ingat bagaimana 証明 berarti "bukti"? Nah, ketika Anda <kanji>menulis</kanji> bukti atas sesuatu, Anda memiliki <vocabulary>sertifikat</vocabulary>.

Ini dapat digunakan untuk berbagai jenis <vocabulary>bukti tertulis</vocabulary>, seperti 卒業証明書 (surat kelulusan), 身分証明書 (tanda pengenal pribadi), dan banyak lagi.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Mengetahui bacaan 証明 juga akan membantu.', 'Sertifikat, Bukti Tertulis')
    RETURNING id INTO v_4062_sertifikat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '書き直す', 'untuk-menulis-ulang', 17, 141, '書く berarti "menulis" dan 直す berarti "memperbaiki", bukan? Nah, jika Anda menulis sesuatu dan kemudian memutuskan untuk memperbaikinya, Anda harus <vocabulary>menulis ulang</vocabulary> itu. Yup, satu-satunya cara untuk memperbaiki paragraf cakaran ayam yang Anda tulis adalah dengan menulis ulang seluruhnya dari awal, jadi sebaiknya Anda mulai menulis ulang secepatnya.', 'Bacaannya berasal dari 書く dan 直す. Ketahuilah itu dan Anda akan tahu cara membaca kata ini juga!', 'Untuk Menulis Ulang')
    RETURNING id INTO v_4107_untuk_menulis_ulang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '水兵', 'pelaut-angkatan-laut', 17, 142, '<kanji>air</kanji> <kanji>prajurit</kanji> adalah prajurit yang berada di laut. Dengan kata lain, seorang <vocabulary>pelaut angkatan laut</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Pelaut Angkatan Laut, Pelaut, Pelaut')
    RETURNING id INTO v_4347_pelaut_angkatan_laut;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '詳しい', 'terperinci', 17, 143, 'Ini adalah kanji tunggal dengan い di akhir, artinya Anda tahu itu mungkin kata sifat. Apa bentuk kata sifat dari <kanji>detail</kanji>? Ini juga <vocabulary>detail</vocabulary>.', 'Ketika sesuatu <vocabulary>detail</vocabulary>, hal itu terdiri dari <read>qua</reading>ntity (くわ) yang sangat besar dari hal-hal kecil. Dan jika Anda adalah <vocabulary>pakar</vocabulary> dalam suatu hal, Anda juga akan memiliki banyak sekali pengetahuan.', 'Terperinci, Pakar')
    RETURNING id INTO v_5365_terperinci;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '詳細', 'detail', 17, 144, 'Hal-hal yang <kanji>detail</kanji> dan... <kanji>detail</kanji> adalah, ya, <vocabulary>detail</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Detail')
    RETURNING id INTO v_5366_detail;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '不詳', 'tidak-dikenal', 17, 145, 'Ada yang <kanji>tidak</kanji> <kanji>detail</kanji> sama sekali. Saya tidak tahu apa-apa tentang hal itu. Tidak ada detail apa pun. Itu adalah entitas yang <vocabulary>tidak diketahui</vocabulary> sepenuhnya. Itu <vocabulary>tidak teridentifikasi</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Tidak dikenal, Tidak teridentifikasi')
    RETURNING id INTO v_5367_tidak_dikenal;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '劇', 'drama', 17, 146, 'Kanji dan kata-katanya sama persis. Artinya, keduanya juga memiliki makna yang sama (<vocabulary>drama</vocabulary>). Bisa juga berarti <vocabulary>play</vocabulary> atau <vocabulary>show</vocabulary> juga.', 'Bacaannya sama dengan kanji. Tidak ada lagi drama darimu, oke?', 'Drama, Bermain, Menunjukkan')
    RETURNING id INTO v_5806_drama;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '喜劇', 'komedi', 17, 147, '<kanji>Bersukacitalah</kanji> <kanji>drama</kanji> bukanlah sebuah drama melainkan <vocabulary>komedi</vocabulary>, karena itu membuat Anda bersukacita.

喜劇 adalah kata yang relatif formal yang mengacu pada komedi dalam pengertian yang lebih tradisional atau teater panggung. Untuk komedi umum, orang sering mengucapkan お笑い atau コメディ.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Komedi')
    RETURNING id INTO v_5807_komedi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '悲劇', 'tragedi', 17, 148, '<kanji>sedih</kanji> <kanji>Drama</kanji> selalu berakhir dengan <vocabulary>tragedi</vocabulary>. Itu yang membuatnya sedih.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Tragedi')
    RETURNING id INTO v_5808_tragedi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '劇的', 'dramatis', 17, 149, 'Sesuatu yang <kanji>drama</kanji> <kanji>al</kanji> adalah <vocabulary>dramatis</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Dramatis')
    RETURNING id INTO v_5809_dramatis;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '劇場', 'teater', 17, 150, '<kanji>drama</kanji> <kanji>lokasi</kanji> adalah tempat orang melakukan drama. Ini adalah <vocabulary>teater</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Teater, Teater')
    RETURNING id INTO v_5811_teater;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '歌劇', 'opera', 17, 151, 'Sebuah <kanji>lagu</kanji> <kanji>drama</kanji>. Ugh, aku benci ini. Mereka banyak bernyanyi dan sangat dramatis. Ini adalah <vocabulary>opera</vocabulary>.

歌劇 adalah kata formal untuk opera yang biasanya digunakan dalam konteks teater atau artistik. Dalam percakapan sehari-hari, orang biasanya hanya mengucapkan オペラ.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Opera')
    RETURNING id INTO v_5812_opera;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '不味い', 'rasanya-tidak-enak', 17, 152, 'Anda sudah melihat 美味しい pada saat ini. Ini adalah kebalikan dari itu. Daripada 美 kamu punya 不 (tidak), jadi sesuatu yang <kanji>tidak</kanji> memiliki <kanji>rasa</kanji> adalah sesuatu yang rasanya tidak enak, yaitu sesuatu yang <vocabulary>rasanya tidak enak</vocabulary>. Ini juga bisa merujuk pada seseorang yang <vocabulary>tidak terampil</vocabulary> dalam suatu hal.', 'Pembacaannya tidak mengikuti aturan apa pun yang Anda temui. Itu まずい. Pikirkan tentang bagaimana Anda melewati <read>labirin</reading> (まず) yang sangat panjang ini dan bagaimana Anda dijanjikan suguhan lezat yang lezat di akhir untuk melewatinya (Anda adalah tikus percobaan atau semacamnya). Ketika Anda sampai di akhir, inilah hadiahnya! Sungguh menyenangkan! Anda memakannya dan... astaga... <vocabulary>rasanya tidak enak</vocabulary> sehingga Anda bahkan tidak dapat mempercayainya. Pastikan untuk membayangkan rasa yang tidak enak dan kekecewaan yang mengerikan setelah melewati labirin yang sulit itu hanya untuk mendapatkan... keju yang sangat <vocabulary>tidak menggugah selera</vocabulary> ini.', 'Rasanya tidak enak, Tidak menggugah selera, Tidak terampil')
    RETURNING id INTO v_7150_rasanya_tidak_enak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '兵', 'tentara', 17, 153, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan kanji yang Anda pelajari, artinya Anda tahu bacaannya!', 'Tentara, Tentara, Pasukan')
    RETURNING id INTO v_7546_tentara;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '無理', 'mustahil', 17, 154, 'Jika Anda <kanji>tidak melakukan apa pun</kanji> dengan <kanji>alasan</kanji>, maka apa yang Anda coba lakukan adalah <vocabulary>tidak masuk akal</vocabulary> dan mungkin benar-benar <vocabulary>tidak mungkin</vocabulary>. Jika Anda masih mencobanya, Anda mungkin <vocabulary>berlebihan</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Selama Anda mengetahui bacaan kanji ini, Anda seharusnya bisa membaca kata ini dengan baik.', 'Mustahil, Tidak masuk akal, Berlebihan')
    RETURNING id INTO v_7547_mustahil;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '側', 'samping', 17, 155, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Anda telah mempelajari <reading>がわ</reading> sebagai bacaan untuk kanji ini, namun ketika digunakan sendiri sebagai kosakata, maka akan dibaca sebagai <reading>そば</reading>. Berikut ini mnemonik untuk membantu Anda mengingat:

Memiliki orang yang <reading>sadar</reading>(そば) di sisi <vocabulary></vocabulary> Anda adalah hal yang penting ketika Anda sedang mabuk. 

Pikirkan kosakata lain yang menggunakan <reading>がわ</reading>. Dalam kata ini, <kanji>側</kanji> adalah sufiks, jadi akan ada kanji lain yang mendahuluinya.', 'Samping, Sisi Sesuatu, Bagian')
    RETURNING id INTO v_7548_samping;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '変わる', 'untuk-diubah', 17, 156, 'Anda telah melihat bagaimana 変える berarti "mengubah" sesuatu. Kata ini berarti sesuatu yang berubah dengan sendirinya, jadi artinya <vocabulary>berubah</vocabulary> atau <vocabulary>berubah</vocabulary>.

変わる mengacu pada tindakan berubah menjadi sesuatu yang berbeda, dan melibatkan perubahan sifat, penampilan, atau keadaan. Misalnya, kata tersebut dapat menggambarkan perubahan cuaca atau musim, seseorang yang mengalami perubahan nyata dalam penampilan atau perilaku, atau perasaan atau pikiran seseorang yang berkembang seiring berjalannya waktu.

Karena 変わる berarti "menjadi sesuatu yang berbeda", Anda juga dapat menggunakan 変わった dan 変わっている untuk mendeskripsikan seseorang atau sesuatu yang "berbeda dari biasanya". Misalnya, Anda bisa mengucapkan 変わった人 atau 変わっている人 yang berarti "orang aneh".', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda sudah mempelajari bacaan ini jadi Anda harus bisa membacanya!', 'Untuk Diubah, Untuk Berubah, Untuk Diubah')
    RETURNING id INTO v_7588_untuk_diubah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '無し', 'tanpa', 17, 157, 'Ini adalah versi kata benda dari kanji <kanji>tidak ada</kanji>, jadi ketika Anda tidak punya apa-apa, Anda <vocabulary>tanpa</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Ketika kamu <vocabulary>tanpa</vocabulary> kamu juga tidak mempunyai apapun untuk dimakan, sehingga kamu malah <reading>gnashi</reading>ng (なし) gigimu menyatu.', 'Tanpa, Dengan No')
    RETURNING id INTO v_7590_tanpa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '完結', 'kesimpulan', 17, 158, 'Cara <kanji>sempurna</kanji> untuk <kanji>mengikat</kanji> makalah penelitian adalah dengan <vocabulary>kesimpulan</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Kesimpulan, Penyelesaian, Akhir, Penyempurnaan')
    RETURNING id INTO v_7643_kesimpulan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '無言', 'kesunyian', 17, 159, 'Saat Anda <kanji>tidak punya apa-apa</kanji> untuk <kanji>diucapkan</kanji>, Anda duduk dalam <vocabulary>hening</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda tidak mempelajari bacaan ini untuk 言, jadi inilah mnemonik untuk membantu Anda:

Tidak ada yang bisa menembus <vocabulary>silence</vocabulary> seperti <reading>gon</reading>g (ごん). Setelah gonging selesai, Anda benar-benar menyadari betapa sunyinya dunia di sekitar Anda.', 'Kesunyian')
    RETURNING id INTO v_7644_kesunyian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '愛する', 'untuk-mencintai', 17, 160, 'Anda tahu bahwa 愛 berarti <kanji>cinta</kanji>. Jadi, ketika Anda menambahkan する ke dalamnya, Anda menjadikannya kata kerja. Sekarang artinya <vocabulary>mencintai</vocabulary>.', 'Bacaannya sama dengan kanji yang Anda pelajari, artinya Anda tahu bacaannya!', 'Untuk Mencintai')
    RETURNING id INTO v_7700_untuk_mencintai;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '相変わらず', 'seperti-biasanya', 17, 161, '<kanji>saling</kanji> <kanji>perubahan</kanji> yang Anda lakukan dengan orang lain akan berjalan begitu lancar sehingga tampaknya semuanya berjalan <vocabulary>seperti biasa</vocabulary>. Semuanya akan <vocabulary>sama</vocabulary> seperti sebelumnya karena perubahannya saling menguntungkan.', 'Bacaan kata ini sama-sama bacaan kun''yomi. Anda telah mempelajari kedua bacaan ini sekarang jadi Anda seharusnya bisa membacanya sendiri.', 'Seperti biasanya, Seperti biasa, Sama, Seperti Sebelumnya')
    RETURNING id INTO v_7701_seperti_biasanya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '愛人', 'kekasih', 17, 162, '<kanji>orang</kanji> yang Anda <kanji>cintai</kanji> adalah <vocabulary>kekasih</vocabulary> Anda. Woooh! Jangan khawatir, saya tidak akan memberi tahu. Bersenang-senanglah dan jaga keselamatan, anak-anak.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Kekasih, Nyonya')
    RETURNING id INTO v_7757_kekasih;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '愛情', 'cinta', 17, 163, '<kanji>cinta</kanji> <kanji>perasaan</kanji> yang Anda alami berarti Anda berada dalam <vocabulary>cinta</vocabulary>!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Cinta, Kasih sayang')
    RETURNING id INTO v_8672_cinta;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '一昨日', 'hari-sebelum-terakhir', 17, 164, 'Ingat bagaimana Anda mengetahui bahwa 昨日 berarti "kemarin?" Ya, <kanji>satu</kanji> hari <kanji>sebelumnya</kanji> hingga <kanji>hari</kanji> itu adalah <vocabulary>hari sebelum terakhir</vocabulary>.', 'Bacaan ini merupakan pengecualian. Mari gunakan mnemonik ini untuk mengingatnya:

<vocabulary>sehari sebelumnya</vocabulary> kamu membeli <reading>mainan jari kaki "O"</reading> (おととい). Itu adalah mainan anak-anak berbentuk huruf O yang ditaruh di jari kaki. Anda tahu itu terjadi kemarin lusa karena Anda memakai semuanya kemarin, dan sekarang hari ini jari kaki Anda sakit. Andai saja Anda bisa kembali ke <vocabulary>hari sebelum kemarin</vocabulary> untuk mengatakan pada diri sendiri agar tidak membeli mainan O toe itu! Atau setidaknya tidak memakainya sepanjang hari berikutnya!', 'Hari Sebelum Terakhir, Kemarin lusa')
    RETURNING id INTO v_8709_hari_sebelum_terakhir;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '青春', 'anak-muda', 17, 165, 'Masa <kanji>muda</kanji> <kanji>musim semi</kanji> bagi manusia sebenarnya hanyalah <kosakata>masa muda</vocabulary> mereka. Sama seperti tanaman di musim semi, <kosakata>masa remaja</vocabulary> Anda adalah saat Anda mulai tumbuh secara maksimal! Anda bahkan mungkin mengatakan ini adalah <vocabulary>musim semi dalam hidup seseorang</vocabulary>.

Ini umumnya mengacu pada periode ketika Anda adalah remaja dan dewasa muda yang energik. Ini bisa memiliki konotasi pengalaman yang menggembirakan dan perasaan pahit, serta kenangan nostalgia.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda belum mempelajari on''yomi untuk 春, jadi inilah mnemonik untuk membantu Anda:

Jangan biarkan <vocabulary>masa muda</vocabulary> anda terbuang percuma, karena <reading>segera</reading> akan berakhir (しゅん)!', 'Anak muda, Masa remaja, Musim Semi Kehidupan Seseorang')
    RETURNING id INTO v_9087_anak_muda;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '頭部', 'kepala', 17, 166, '<kanji>kepala</kanji> <kanji>bagian</kanji> Anda, atau bagian tubuh Anda yang merupakan kepala Anda, adalah… ya, <vocabulary>kepala</vocabulary> Anda!

Ini adalah cara yang lebih formal untuk mengatakan "kepala" dibandingkan hanya dengan 頭, jadi Anda akan lebih sering menjumpainya dalam konteks medis dan konteks lain yang lebih formal.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda belum mempelajari bacaan ini untuk 頭, jadi inilah mnemonik untuk membantu Anda:

Perlu pemeriksaan pada <vocabulary>kepala</vocabulary> Anda? Lalu <em>pergi</em> ke <reading>とう</reading>きょう! Mereka memiliki… kepala dokter terbaik di Jepang, yang pernah saya dengar. Jadi pergilah ke とうきょう untuk pemeriksaan kepala berikutnya.', 'Kepala')
    RETURNING id INTO v_9337_kepala;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '付き合い', 'asosiasi', 17, 167, 'Anda telah mengetahui bahwa 付き合う berarti "berteman", dan ini adalah versi kata bendanya. Saat Anda berteman dengan seseorang, Anda memiliki <vocabulary>asosiasi</vocabulary> atau <vocabulary>relation</vocabulary> dengan orang tersebut.

付き合い mengacu pada interaksi atau hubungan yang sedang berlangsung dengan orang lain, seperti 人付き合い (hubungan sosial) atau 長い付き合い (pergaulan yang sudah berlangsung lama). Kata ini juga bisa merujuk pada kewajiban yang dihasilkan dari hubungan tersebut, seperti 付き合いで飲みに行く (pergi minum karena kewajiban sosial). Anda mungkin tidak ingin pergi, tapi… masyarakat menuntutnya.

Kadang-kadang Anda juga akan melihatnya dengan sebutan kehormatan お, seperti dalam お付き合い — terutama ketika mengacu pada asosiasi bisnis atau dengan hormat berbicara tentang hubungan romantis.', 'Bacaannya berasal dari 付き合う, jadi jika Anda mengetahuinya, Anda akan baik-baik saja di sini.', 'Asosiasi, Hubungan')
    RETURNING id INTO v_9493_asosiasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '果実', 'buah', 17, 168, 'Anda tahu 果 berarti "buah", tapi ingat bagaimana 実 bisa berarti "buah" juga? Ya, <kanji>buah</kanji> <kanji>buah</kanji> hanya bisa menjadi satu hal: <vocabulary>buah</vocabulary>.

果実 adalah kata yang relatif formal untuk "buah", sering digunakan dalam konteks klasifikasi tumbuhan. Anda akan melihatnya pada label seperti 果実酒 (minuman keras buah), tetapi tidak sebanyak itu dalam percakapan sehari-hari (ada kata yang lebih umum yang akan Anda pelajari nanti).', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Buah')
    RETURNING id INTO v_9499_buah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '要因', 'faktor', 17, 169, 'Jadi kamu <kanji>perlu</kanji> mengetahui <kanji>penyebab</kanji> sesuatu, ya? Kalau begitu, sebaiknya mulailah memeriksa semua <vocabulary>faktor</vocabulary>. Mungkin ada berbagai <vocabulary>penyebab</vocabulary> yang berkontribusi.

要因 adalah kata yang relatif formal yang merujuk pada sesuatu yang membawa pada suatu hasil. Kata ini sering digunakan dalam penjelasan atau analisis untuk menggambarkan penyebab utama yang berkontribusi, terutama ketika menguraikan alasan sesuatu terjadi, seperti 成功の要因 (<vocabulary>faktor kunci</vocabulary> di balik kesuksesan).', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Faktor, Menyebabkan, Faktor Kunci')
    RETURNING id INTO v_9506_faktor;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3421_kata_asing, 'Kata Asing', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3421_kata_asing, 'Kata yang Dipinjam', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3421_kata_asing, 'Kata pinjaman', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3797_menjadi_sedih_tentang, 'Menjadi Sedih Tentang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3797_menjadi_sedih_tentang, 'Menjadi Sedih Oleh', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3823_untuk_bersukacita, 'Untuk bersukacita', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3823_untuk_bersukacita, 'Menjadi Bahagia', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3823_untuk_bersukacita, 'Menjadi Senang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3845_untuk_menyembuhkan, 'Untuk Menyembuhkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3845_untuk_menyembuhkan, 'Untuk Menyembuhkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3845_untuk_menyembuhkan, 'Untuk Kemudahan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3934_sebelum_masehi, 'Sebelum Masehi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3934_sebelum_masehi, 'SM', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3934_sebelum_masehi, 'Sebelum Masehi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3934_sebelum_masehi, 'SM', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3935_sarapan, 'Sarapan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3937_cengeng, 'cengeng', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3938_menangis, 'Menangis', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3938_menangis, 'Menangis', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3939_makan_malam, 'Makan malam', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3939_makan_malam, 'Makan malam', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3940_makan_siang, 'Makan siang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3941_keinginan_seseorang, 'Keinginan Seseorang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3941_keinginan_seseorang, 'Doa', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3941_keinginan_seseorang, 'Mengharapkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3951_kansai, 'Kansai', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3953_sisi_kanan, 'Sisi Kanan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3953_sisi_kanan, 'Sisi Kanan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3954_sisi_kiri, 'Sisi Kiri', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3954_sisi_kiri, 'Sisi Kiri', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3955_di_dalam, 'Di dalam', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3956_di_luar, 'Di luar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3956_di_luar, 'Sisi Luar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3956_di_luar, 'Luar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3957_kedua_sisi, 'Kedua Sisi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3958_sisi_timur, 'Sisi Timur', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3958_sisi_timur, 'Timur', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3960_personil_militer, 'Personil Militer', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3960_personil_militer, 'Kekuatan Militer', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3961_lengan, 'Lengan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3961_lengan, 'Senjata', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3962_tentara, 'Tentara', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3963_prajurit_as, 'Prajurit AS', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3963_prajurit_as, 'Prajurit Amerika', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3964_menyebabkan, 'Menyebabkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3964_menyebabkan, 'Asal', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3964_menyebabkan, 'Sumber', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3965_atom, 'Atom', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3966_karya_asli, 'Karya Asli', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3970_kafetaria, 'Kafetaria', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3970_kafetaria, 'Ruang Makan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3970_kafetaria, 'Restoran', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3971_garam, 'Garam', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3972_air_garam, 'Air Garam', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3972_air_garam, 'Air Asin', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3973_rasa_asin, 'Rasa Asin', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3973_rasa_asin, 'Rasa asin', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3973_rasa_asin, 'Rasa Asin', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3974_dana_pemerintah, 'Dana Pemerintah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3974_dana_pemerintah, 'Uang Pemerintah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3975_diplomat, 'Diplomat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3976_menebak, 'Menebak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3976_menebak, 'Untuk Merasakan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3976_menebak, 'Untuk berasumsi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3976_menebak, 'Untuk menyimpulkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3977_kesimpulan, 'Kesimpulan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3977_kesimpulan, 'Menyimpulkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3977_kesimpulan, 'Nalar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3978_kursi, 'Kursi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3979_ketiadaan, 'Ketiadaan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3979_ketiadaan, 'Ketidakhadiran', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3980_kehadiran, 'Kehadiran', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3981_kursi_terbuka, 'Kursi Terbuka', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3981_kursi_terbuka, 'Kursi Kosong', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3981_kursi_terbuka, 'Kursi Gratis', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3982_selalu, 'Selalu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3982_selalu, 'Selalu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3982_selalu, 'Terus menerus', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3983_kehidupan_sehari_hari, 'Kehidupan Sehari-hari', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3983_kehidupan_sehari_hari, 'Kehidupan Biasa', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3983_kehidupan_sehari_hari, 'Kehidupan Sehari-hari', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3983_kehidupan_sehari_hari, 'Biasa', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3983_kehidupan_sehari_hari, 'Biasa', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3983_kehidupan_sehari_hari, 'Setiap hari', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3983_kehidupan_sehari_hari, 'Biasa', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3984_kewajaran, 'Kewajaran', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3984_kewajaran, 'Pengetahuan Umum', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3985_untuk_mengeringkan_sesuatu, 'Untuk Mengeringkan Sesuatu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3985_untuk_mengeringkan_sesuatu, 'Untuk Mengeringkan Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3986_cuaca_kering, 'Cuaca Kering', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3986_cuaca_kering, 'Kekeringan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3987_gangguan, 'Gangguan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3987_gangguan, 'Intervensi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3988_ilusi, 'Ilusi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3988_ilusi, 'Hantu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3988_ilusi, 'Hantu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3989_halusinasi, 'Halusinasi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3990_fantasi, 'Fantasi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3990_fantasi, 'Ilusi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3991_dasar, 'Dasar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3992_dasar_hati_seseorang, 'Dasar Hati Seseorang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3992_dasar_hati_seseorang, 'Bagian Bawah Hatiku', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3993_palung, 'Palung', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3993_palung, 'Dasar Sungai', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3997_cinta, 'Cinta', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3998_patah_hati, 'Patah hati', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3998_patah_hati, 'Patah Hati', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3998_patah_hati, 'Cinta Tak Terbalas', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3999_cinta, 'Cinta', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4000_patriotisme, 'Patriotisme', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4001_cinta, 'Cinta', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4001_cinta, 'Roman', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4002_mencintai_diri_sendiri, 'Mencintai diri sendiri', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4002_mencintai_diri_sendiri, 'Merawat Diri Sendiri', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4003_cinta_seksual, 'Cinta Seksual', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4004_prefektur_aichi, 'Prefektur Aichi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4005_untuk_dikalahkan, 'Untuk Dikalahkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4005_untuk_dikalahkan, 'Menjadi Tidak Berhasil', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4006_kegagalan, 'Kegagalan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4006_kegagalan, 'Kesalahan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4007_kemenangan_atau_kekalahan, 'Kemenangan Atau Kekalahan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4007_kemenangan_atau_kekalahan, 'Menang Atau Kalah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4007_kemenangan_atau_kekalahan, 'Hasil', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4008_pecundang, 'Pecundang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4008_pecundang, 'Yang Dikalahkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4009_sangat, 'Sangat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4009_sangat, 'Tentu saja', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4009_sangat, 'Benar Dan Salah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4015_um, 'Um', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4015_um, 'Plum Jepang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4016_anggur_ume, 'Anggur Ume', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4016_anggur_ume, 'Anggur Plum', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4016_anggur_ume, 'Minuman Keras Plum', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4016_anggur_ume, 'Umeshu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4017_perundingan, 'Perundingan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4018_tak_berdaya, 'Tak berdaya', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4018_tak_berdaya, 'Ketidakberdayaan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4018_tak_berdaya, 'Ketidakberdayaan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4019_tidak_ada_hari_libur, 'Tidak Ada Hari Libur', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4019_tidak_ada_hari_libur, 'Selalu Terbuka', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4019_tidak_ada_hari_libur, 'Nonstop', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4020_anonim, 'Anonim', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4020_anonim, 'Tidak dikenal', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4021_segar_bugar, 'Segar bugar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4021_segar_bugar, 'Aman', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4021_segar_bugar, 'Tanpa Hambatan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4022_ketidaktahuan, 'Ketidaktahuan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4022_ketidaktahuan, 'Kurang pengetahuan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4023_irasional, 'Irasional', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4023_irasional, 'Ceroboh', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4023_irasional, 'Berlebihan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4024_bebas, 'Bebas', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4024_bebas, 'Tanpa Biaya', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4025_tipis, 'Tipis', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4025_tipis, 'Ramping', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4027_tanda_tangan, 'Tanda tangan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4027_tanda_tangan, 'Penandatanganan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4028_obat, 'Obat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4028_obat, 'Obat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4028_obat, 'Narkoba', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4029_studi_farmasi, 'Studi Farmasi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4029_studi_farmasi, 'Farmakologi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4029_studi_farmasi, 'Ilmu farmasi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4031_narkoba, 'Narkoba', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4031_narkoba, 'Obat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4032_obat, 'Obat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4032_obat, 'Penggunaan Obat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4036_nalar, 'Nalar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4036_nalar, 'Indra', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4036_nalar, 'Sensasi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4037_penjelasan, 'Penjelasan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4037_penjelasan, 'Keterangan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4038_novel, 'Novel', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4039_legenda, 'Legenda', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4039_legenda, 'Kisah Legendaris', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4040_hipotesa, 'Hipotesa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4041_ilustrasi, 'Ilustrasi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4041_ilustrasi, 'Diagram Penjelasan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4042_pengetahuan, 'Pengetahuan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4042_pengetahuan, 'Informasi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4043_kesadaran, 'Kesadaran', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4043_kesadaran, 'Kesadaran', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4044_polisi, 'POLISI', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4045_keadaan_darurat, 'Keadaan darurat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4045_keadaan_darurat, 'Ekstrim', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4045_keadaan_darurat, 'Tidak biasa', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4046_hidung, 'Hidung', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4047_ingus, 'Ingus', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4047_ingus, 'Booger', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4048_ujung_hidung, 'Ujung Hidung', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4048_ujung_hidung, 'Ujung Hidung', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4048_ujung_hidung, 'Ujung Hidung', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4049_bersenandung, 'Bersenandung', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4050_mimisan, 'Mimisan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4050_mimisan, 'Hidung Berdarah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4054_sabtu, 'Sabtu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4055_minggu, 'Minggu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4062_sertifikat, 'Sertifikat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4062_sertifikat, 'Bukti Tertulis', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4107_untuk_menulis_ulang, 'Untuk Menulis Ulang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4347_pelaut_angkatan_laut, 'Pelaut Angkatan Laut', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4347_pelaut_angkatan_laut, 'Pelaut', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4347_pelaut_angkatan_laut, 'Pelaut', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5365_terperinci, 'Terperinci', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5365_terperinci, 'Pakar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5366_detail, 'Detail', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5367_tidak_dikenal, 'Tidak dikenal', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5367_tidak_dikenal, 'Tidak teridentifikasi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5806_drama, 'Drama', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5806_drama, 'Bermain', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5806_drama, 'Menunjukkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5807_komedi, 'Komedi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5808_tragedi, 'Tragedi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5809_dramatis, 'Dramatis', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5811_teater, 'Teater', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5811_teater, 'Teater', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5812_opera, 'Opera', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7150_rasanya_tidak_enak, 'Rasanya tidak enak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7150_rasanya_tidak_enak, 'Tidak menggugah selera', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7150_rasanya_tidak_enak, 'Tidak terampil', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7546_tentara, 'Tentara', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7546_tentara, 'Tentara', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7546_tentara, 'Pasukan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7547_mustahil, 'Mustahil', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7547_mustahil, 'Tidak masuk akal', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7547_mustahil, 'Berlebihan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7548_samping, 'Samping', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7548_samping, 'Sisi Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7548_samping, 'Bagian', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7588_untuk_diubah, 'Untuk Diubah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7588_untuk_diubah, 'Untuk Berubah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7588_untuk_diubah, 'Untuk Diubah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7590_tanpa, 'Tanpa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7590_tanpa, 'Dengan No', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7643_kesimpulan, 'Kesimpulan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7643_kesimpulan, 'Penyelesaian', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7643_kesimpulan, 'Akhir', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7643_kesimpulan, 'Penyempurnaan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7644_kesunyian, 'Kesunyian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7700_untuk_mencintai, 'Untuk Mencintai', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7701_seperti_biasanya, 'Seperti biasanya', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7701_seperti_biasanya, 'Seperti biasa', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7701_seperti_biasanya, 'Sama', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7701_seperti_biasanya, 'Seperti Sebelumnya', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7757_kekasih, 'Kekasih', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7757_kekasih, 'Nyonya', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8672_cinta, 'Cinta', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8672_cinta, 'Kasih sayang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8709_hari_sebelum_terakhir, 'Hari Sebelum Terakhir', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8709_hari_sebelum_terakhir, 'Kemarin lusa', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9087_anak_muda, 'Anak muda', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9087_anak_muda, 'Masa remaja', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9087_anak_muda, 'Musim Semi Kehidupan Seseorang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9337_kepala, 'Kepala', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9493_asosiasi, 'Asosiasi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9493_asosiasi, 'Hubungan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9499_buah, 'Buah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9506_faktor, 'Faktor', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9506_faktor, 'Menyebabkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9506_faktor, 'Faktor Kunci', false, true);

  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3421_kata_asing, 'がいらいご', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3797_menjadi_sedih_tentang, 'かなしむ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3823_untuk_bersukacita, 'よろこぶ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3845_untuk_menyembuhkan, 'なおす', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3934_sebelum_masehi, 'きげんぜん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3935_sarapan, 'あさごはん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3937_cengeng, 'なきむし', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3938_menangis, 'なきごえ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3939_makan_malam, 'ばんごはん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3940_makan_siang, 'ひるごはん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3941_keinginan_seseorang, 'ねがいごと', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3951_kansai, 'かんさい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3953_sisi_kanan, 'みぎがわ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3954_sisi_kiri, 'ひだりがわ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3955_di_dalam, 'うちがわ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3956_di_luar, 'そとがわ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3957_kedua_sisi, 'りょうがわ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3958_sisi_timur, 'ひがしがわ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3960_personil_militer, 'へいいん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3961_lengan, 'へいき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3962_tentara, 'へいし', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3963_prajurit_as, 'べいへい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3964_menyebabkan, 'げんいん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3965_atom, 'げんし', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3966_karya_asli, 'げんさく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3970_kafetaria, 'しょくどう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3971_garam, 'しお', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3972_air_garam, 'しおみず', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3972_air_garam, 'えんすい', NULL, false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3973_rasa_asin, 'しおあじ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3973_rasa_asin, 'えんみ', NULL, false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3973_rasa_asin, 'しおみ', NULL, false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3974_dana_pemerintah, 'かんきん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3975_diplomat, 'がいこうかん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3976_menebak, 'さっする', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3977_kesimpulan, 'さっち', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3978_kursi, 'せき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3979_ketiadaan, 'けっせき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3980_kehadiran, 'しゅっせき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3981_kursi_terbuka, 'くうせき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3982_selalu, 'つねに', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3983_kehidupan_sehari_hari, 'にちじょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3984_kewajaran, 'じょうしき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3985_untuk_mengeringkan_sesuatu, 'ほす', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3986_cuaca_kering, 'かんてん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3987_gangguan, 'かんしょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3988_ilusi, 'まぼろし', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3989_halusinasi, 'げんかく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3990_fantasi, 'げんそう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3991_dasar, 'そこ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3992_dasar_hati_seseorang, 'しんそこ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3993_palung, 'かわぞこ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3997_cinta, 'こい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3998_patah_hati, 'しつれん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3999_cinta, 'あい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4000_patriotisme, 'あいこくしん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4001_cinta, 'れんあい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4002_mencintai_diri_sendiri, 'じあい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4003_cinta_seksual, 'せいあい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4004_prefektur_aichi, 'あいちけん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4005_untuk_dikalahkan, 'やぶれる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4006_kegagalan, 'しっぱい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4007_kemenangan_atau_kekalahan, 'しょうはい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4008_pecundang, 'はいしゃ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4009_sangat, 'ぜひ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4015_um, 'うめ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4016_anggur_ume, 'うめしゅ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4017_perundingan, 'こうしょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4018_tak_berdaya, 'むりょく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4019_tidak_ada_hari_libur, 'むきゅう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4020_anonim, 'むめい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4021_segar_bugar, 'ぶじ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4022_ketidaktahuan, 'むち', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4023_irasional, 'むちゃ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4024_bebas, 'むりょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4025_tipis, 'ほそい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4027_tanda_tangan, 'しょめい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4028_obat, 'くすり', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4029_studi_farmasi, 'やくがく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4031_narkoba, 'やくぶつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4032_obat, 'やくよう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4036_nalar, 'かんかく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4037_penjelasan, 'せつめい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4038_novel, 'しょうせつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4039_legenda, 'でんせつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4040_hipotesa, 'かせつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4041_ilustrasi, 'ずせつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4042_pengetahuan, 'ちしき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4043_kesadaran, 'いしき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4044_polisi, 'けいさつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4045_keadaan_darurat, 'ひじょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4046_hidung, 'はな', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4047_ingus, 'はなくそ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4048_ujung_hidung, 'はなさき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4049_bersenandung, 'はなうた', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4050_mimisan, 'はなぢ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4050_mimisan, 'はなじ', NULL, false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4054_sabtu, 'どようび', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4055_minggu, 'にちようび', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4062_sertifikat, 'しょうめいしょ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4107_untuk_menulis_ulang, 'かきなおす', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4347_pelaut_angkatan_laut, 'すいへい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5365_terperinci, 'くわしい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5366_detail, 'しょうさい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5367_tidak_dikenal, 'ふしょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5806_drama, 'げき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5807_komedi, 'きげき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5808_tragedi, 'ひげき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5809_dramatis, 'げきてき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5811_teater, 'げきじょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5812_opera, 'かげき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7150_rasanya_tidak_enak, 'まずい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7546_tentara, 'へい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7547_mustahil, 'むり', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7548_samping, 'そば', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7548_samping, 'がわ', NULL, false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7588_untuk_diubah, 'かわる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7590_tanpa, 'なし', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7643_kesimpulan, 'かんけつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7644_kesunyian, 'むごん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7700_untuk_mencintai, 'あいする', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7701_seperti_biasanya, 'あいかわらず', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7757_kekasih, 'あいじん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8672_cinta, 'あいじょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8709_hari_sebelum_terakhir, 'おととい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8709_hari_sebelum_terakhir, 'いっさくじつ', NULL, false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8709_hari_sebelum_terakhir, 'おとつい', NULL, false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9087_anak_muda, 'せいしゅん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9337_kepala, 'とうぶ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9493_asosiasi, 'つきあい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9499_buah, 'かじつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9506_faktor, 'よういん', NULL, true, true);

  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3421_kata_asing, 'リュックサックは、外来語ですか？', 'Apakah ransel adalah kata yang asing?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3421_kata_asing, '実は、「イクラ」は、ロシアからの外来語なんです。', 'Faktanya, "ikura" adalah kata pinjaman dari Rusia.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3421_kata_asing, '今の中国語では、たくさんの日本語が外来語として使われています。', 'Dalam bahasa Cina masa kini, banyak kata dalam bahasa Jepang yang digunakan sebagai kata pinjaman.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3421_kata_asing, '日本では外来語を使う事が多いです。たまに日本語と外来語が見分けられないほど、外来語は日本文化の一部になりつつあります。', 'Di Jepang, kita sering menggunakan kata-kata asing. Kata-kata asing sudah menjadi bagian dari budaya Jepang sehingga terkadang kata-kata Jepang dan kata asing sulit dibedakan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3797_menjadi_sedih_tentang, '彼女が悲しむのは見たくありません。', 'Aku tidak ingin melihatnya sedih.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3797_menjadi_sedih_tentang, '人間だけではなく、動物も仲間の死を悲しみます。', 'Hewan, seperti halnya manusia, berduka atas kematian teman-temannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3797_menjadi_sedih_tentang, '彼女は愛するペットが亡くなってとても悲しんでいます。', 'Ia sangat sedih karena kehilangan hewan peliharaan kesayangannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3823_untuk_bersukacita, '息子の喜ぶ顔が見れてとてもうれしいです。', 'Aku sangat senang melihat wajah gembira anakku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3823_untuk_bersukacita, '私のファンだと言う人が一人でもいたら、泣いて喜びます！', 'Jika ada satu orang saja yang mengaku sebagai penggemarku, aku akan menangis dan bersukacita!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3823_untuk_bersukacita, '他人の成功を喜べない自分がキライです。', 'Aku benci diriku sendiri karena tidak bisa menikmati kesuksesan orang lain.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3845_untuk_menyembuhkan, 'この病気を治すには薬が必要です。', 'Pengobatan diperlukan untuk menyembuhkan penyakit ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3845_untuk_menyembuhkan, 'キズを早く治す方法を知っていますか？', 'Tahukah Anda cara menyembuhkan goresan dengan cepat?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3845_untuk_menyembuhkan, 'ノドのイガイガを治すには、ネギを首にくくっておくのが一番です。', 'Untuk menyembuhkan tenggorokan yang gatal, sebaiknya ikat daun bawang di leher Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3934_sebelum_masehi, 'ティラノサウルスがいたのは、紀元前何年ごろまでですか。', 'Sampai tahun berapa SM. apakah Tyrannosaurus hadir?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3934_sebelum_masehi, 'もしタイムマシーンがあったなら、紀元前三千年紀に行ってみたいな。', 'Jika mesin waktu ada, saya ingin pergi ke 3000 SM.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3934_sebelum_masehi, '今日のコウイチは、自分は紀元前の古代ローマからタイムスリップしてきた男だって言ってきかないんです。', 'Saat ini, Koichi menegaskan bahwa dia adalah seorang pria yang telah melakukan perjalanan kembali ke masa lalu dari Roma kuno, B.C.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3935_sarapan, '朝ご飯にはハムとチーズのサンドイッチを作りました。', 'Saya membuat sandwich ham dan keju untuk sarapan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3935_sarapan, 'ウチの朝ご飯は、パンじゃなくご飯と決まっています。', 'Untuk sarapan di rumahku, selalu nasi, bukan roti.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3935_sarapan, '毎朝シリアルを朝ご飯にするのは、あまり体に良くないです。', 'Mengonsumsi sereal untuk sarapan setiap pagi tidak baik untuk kesehatan Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3937_cengeng, '泣き虫コウちゃーん、ほら、コウちゃんの好きなトンネルだよーっ！', 'Hei, Ko-chan yang cengeng. Ini dia terowongan yang kamu suka.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3937_cengeng, 'コウイチだけがビエトが泣き虫だということを知っている。', 'Hanya Koichi yang tahu Viet itu cengeng.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3937_cengeng, 'ウチの子の高熱が中々下がりません。いつもは泣き虫なんですが、今は泣く元気も無いようで、心配です。', 'Demam tinggi anak saya sepertinya tidak kunjung turun. Dia biasanya cengeng, tapi sepertinya dia bahkan tidak punya tenaga untuk menangis sekarang dan aku khawatir.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3938_menangis, '赤ちゃんの泣き声が聞こえます。', 'Aku bisa mendengar bayi menangis.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3938_menangis, 'コウイチの泣き声って、実はめちゃくちゃカワイイんだよ。', 'Tangisan Koichi sebenarnya sangat lucu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3938_menangis, '小さい子の泣き声にイライラするなら、大人だったら自分でヘッドフォンしてノイズキャンセルすれば良いのにって思う。', 'Jika Anda merasa kesal dengan tangisan anak kecil, sebagai orang dewasa, Anda bisa saja memakai headphone dengan peredam bising, menurut saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3939_makan_malam, '晩ご飯、良かったらウチで食べていく？', 'Apakah Anda ingin makan malam di tempat kami?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3939_makan_malam, '晩ご飯の前に、ビールを一気にグビッと飲み干しました。', 'Sebelum makan malam, saya meminum segelas bir sekaligus.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3939_makan_malam, '今日の晩ご飯のオカズは、天日干しで作ったカレイの干物です。', 'Makan malam malam ini adalah ikan flounder yang diasinkan dan dijemur.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3940_makan_siang, '昼ご飯にはカレーライスが食べたいです。', 'Saya ingin makan nasi kari untuk makan siang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3940_makan_siang, '昼ご飯は、ピザを注文しない？', 'Mengapa kita tidak memesan pizza untuk makan siang?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3940_makan_siang, '今日は昼ご飯を食べる時間はありませんでした。', 'Tidak ada waktu untuk makan siang hari ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3941_keinginan_seseorang, '彼女は、一番星に願い事をしました。', 'Dia membuat permintaan pada bintang pertama.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3941_keinginan_seseorang, 'こちらの神社の神様は、願い事を聞いてくださることで有名です。', 'Dewa kuil ini terkenal karena mendengarkan keinginan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3941_keinginan_seseorang, '男は願い事を心に思いながら、手を合わせて祈りました。', 'Pria itu mengatupkan kedua tangannya dalam doa sambil memikirkan keinginannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3951_kansai, 'あのコンビは関西の芸人です。', 'Duo komedi itu berasal dari wilayah Kansai.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3951_kansai, 'こいつは関西は完全に初心者だから、俺らがガイドしてやらないとな。', 'Orang ini benar-benar noob di Kansai, jadi kita harus mengajaknya berkeliling.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3951_kansai, '関東の人と関西の人って折が合わないって聞いたんですが、本当ですか。', 'Saya mendengar bahwa orang-orang Kanto dan orang-orang Kansai tidak akur. Apakah itu benar?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3953_sisi_kanan, '日本の自動車のハンドルは通常右側にあります。', 'Setir mobil Jepang biasanya berada di sisi kanan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3953_sisi_kanan, '右側の目がボヤけるんです。', 'Mata kananku buram.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3953_sisi_kanan, 'コウイチのデスクの右側の引き出しには、塩がたくさん入っています。', 'Ada banyak garam di laci sebelah kanan meja Koichi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3954_sisi_kiri, 'このエスカレーターでは、みんな左側に立っていますね。', 'Kurasa semua orang berdiri di sisi kiri eskalator ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3954_sisi_kiri, '日本は、イギリスと同じで、車は左側通行ですよ。', 'Mereka mengemudi di sebelah kiri di Jepang sama seperti di Inggris.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3954_sisi_kiri, '私は左側を下にして横になる方が好きです。', 'Saya lebih suka berbaring dengan sisi kiri menghadap ke bawah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3955_di_dalam, 'ゾンビを中に入れないために、シャッターを下ろして、内側からカギをかけました。', 'Untuk mengusir zombie, kami menurunkan penutup jendela dan mengunci mereka dari dalam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3955_di_dalam, '右の太ももの内側にトゲがささったみたいです。', 'Sepertinya ada serpihan di bagian dalam paha kananku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3955_di_dalam, '彼女は、美しさが内側からにじみ出ている。', 'Dia memancarkan keindahan dari dalam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3956_di_luar, '外側に開くと思ったら、内側に開くドアだったんだね。', 'Saya pikir pintu ini terbuka ke luar, tapi sebenarnya terbuka ke dalam, saya rasa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3956_di_luar, 'いつもは外側のポケットにカギを入れておくんですけど...おかしいなぁ。', 'Biasanya saya menaruh kunci di saku luar....aneh.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3956_di_luar, 'このタコ焼き器を使えば、ガスコンロでも外側がカリカリにできますよ！', 'Dengan pembuat takoyaki ini, Anda bisa membuat bagian luarnya renyah meski di atas kompor gas!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3957_kedua_sisi, '両側の耳がかゆくてムズムズします。', 'Kedua telingaku terasa sangat gatal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3957_kedua_sisi, 'エスカレーターは本当は安全上、歩かずに止まって両側に立つものなんだよね。', 'Eskalator sebenarnya lebih aman jika Anda berdiri diam tanpa berjalan dan berdiri di kedua sisi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3957_kedua_sisi, '両側に女の子をはべらせたビエトの写真がパパラッチに売りつけられた。', 'Foto Viet, dengan gadis di kedua sisinya, dijual ke paparazzi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3958_sisi_timur, '東側にはふじ山が見えます。', 'Gunung Fuji terlihat di sebelah timur.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3958_sisi_timur, 'バルコニーはアパートの東側にあります。', 'Balkonnya berada di sisi timur apartemen.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3958_sisi_timur, '東側のマドからは、日の出が見られます。', 'Anda bisa melihat matahari terbit dari jendela di sisi timur.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3960_personil_militer, 'もうあの国には、兵員はほとんど残っていません。', 'Hampir tidak ada lagi personel militer yang tersisa di negara itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3960_personil_militer, 'どこもみんな、兵員不足は変わりませんよ。ウチの国だけの問題ではありません。', 'Semua orang di mana pun kekurangan pasukan. Ini bukan hanya masalah bagi negara kita.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3960_personil_militer, '国民たちが私たちのことを信じていない中で、どうやって兵員を集めるつもりなんですか？', 'Bagaimana Anda akan merekrut tentara ketika masyarakat tidak percaya pada kami?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3961_lengan, 'これが俺の最終兵器だ！', 'Ini adalah senjata pamungkasku!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3961_lengan, '化学兵器の研究室で働いていたことがあります。', 'Saya dulu bekerja di laboratorium senjata kimia.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3961_lengan, '私たちは兵器使用の是非について語り合いました。', 'Kami berdiskusi apakah menggunakan senjata itu benar atau salah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3962_tentara, '彼は元兵士です。', 'Dia adalah mantan tentara.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3962_tentara, '300人のうち、残った兵士はわずか14人です。', 'Dari 300 tentara, hanya tersisa 14 tentara.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3962_tentara, '兵士の目は無言で私にそのことを伝えた。', 'Mata prajurit itu diam-diam memberitahuku tentang hal ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3963_prajurit_as, 'あの米兵は、どうして鼻メガネをかけているの？', 'Mengapa tentara AS itu memakai kacamata pince-nez?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3963_prajurit_as, 'ここは米兵がたくさん通るので、通行のジャマにならないようにしてください。', 'Ada banyak tentara AS yang lewat di sini, jadi mohon jangan mengganggu lalu lintas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3963_prajurit_as, 'その米兵は新しい家を建てるために土地を探しています。', 'Tentara Amerika sedang mencari tanah untuk membangun rumah baru.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3964_menyebabkan, 'ケンカの原因は何ですか？', 'Apa penyebab pertengkaran itu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3964_menyebabkan, '原因不明の山火事で、町は大変なことになっています。', 'Karena kebakaran hutan yang tidak diketahui asal usulnya, kota ini berada dalam situasi kacau balau.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3964_menyebabkan, '彼の病気の原因は仕事でのストレスだと言われています。', 'Penyebab penyakitnya dikatakan karena stres akibat pekerjaan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3965_atom, '大学で、原子エネルギーの勉強をしたいと思っています。', 'Saya ingin belajar energi atom di perguruan tinggi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3965_atom, 'この原子の原子番号と原子記号は何だったっけ？', 'Berapakah nomor atom dan lambang atom atom tersebut?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3965_atom, '全ての物は原子や分子でできています。', 'Semuanya terbuat dari atom dan molekul.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3966_karya_asli, 'マンガが原作の映画は、原作の良さを失ってしまうことが多いです。', 'Film buku komik sering kali kehilangan cita rasa karya aslinya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3966_karya_asli, 'シェイクスピアを原作で読んだことはありますか？', 'Pernahkah Anda membaca karya asli Shakespeare?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3966_karya_asli, '原作者の方にサインをもらいました。', 'Saya mendapat tanda tangan dari penulis aslinya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3970_kafetaria, 'お昼ごはん、食堂で食べない？', 'Apakah Anda ingin makan siang di kafetaria?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3970_kafetaria, '私の家の近くには、食堂がいくつかあります。', 'Ada beberapa tempat makan di dekat rumahku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3970_kafetaria, 'さっきトーフグ食堂に行ったんだけど、無名の歌手が無料のワンマンライブをしてたよ。', 'Saat saya pergi ke ruang makan Tofugu beberapa waktu lalu, ada live music gratis dari beberapa penyanyi yang tidak saya kenal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3971_garam, 'もう少し塩が多い方が良いかもしれませんね。', 'Mungkin lebih baik jika diberi sedikit garam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3971_garam, '私は塩ラーメンが大好きです。', 'Saya suka ramen garam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3971_garam, '一才になるまで赤ちゃんには塩をあげない方がいいですよ。', 'Sampai bayi Anda menginjak usia satu tahun, Anda tidak boleh memberinya garam apa pun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3972_air_garam, '私は毎日塩水を飲んでいます。', 'Saya minum air garam setiap hari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3972_air_garam, 'ブロッコリーは、塩水に5分つけておきます。', 'Biarkan brokoli terendam dalam air asin selama lima menit.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3972_air_garam, '海水は塩水なのでキズにしみます。', 'Air laut menimbulkan luka karena asin.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3973_rasa_asin, '塩味が少し足りない気がします。', 'Menurutku rasanya agak kurang asin.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3973_rasa_asin, 'うす塩味のポテトチップスは、あまり人気がありません。', 'Keripik kentang yang diberi sedikit garam tidak begitu populer.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3973_rasa_asin, 'グリークサラダには、塩味の利いたオリーブが欠かせません。', 'Zaitun asin adalah bahan penting dalam salad Yunani.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3974_dana_pemerintah, 'ゼッタイに官金に手を出すんじゃないぞ！', 'Apapun yang terjadi, jangan pernah menyentuh dana pemerintah!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3974_dana_pemerintah, 'あの政治家は官金に目がくらんだんだよ。', 'Politisi itu dibutakan oleh uang pemerintah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3974_dana_pemerintah, '保育園まで公用車に子どもを乗せて行くことは、ある意味で官金の私消に当たると思いますか？', 'Menurut Anda, apakah membawa anak ke tempat penitipan anak dengan mobil pemerintah, dalam arti tertentu, merupakan penyalahgunaan dana pemerintah?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3975_diplomat, '彼は元外交官です。', 'Dia adalah mantan diplomat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3975_diplomat, '私の父は外交官で、世界に数台しかないギターを他の国の外交官からプレゼントされました。', 'Ayah saya adalah seorang diplomat dan seorang diplomat dari negara lain memberinya sebuah gitar langka, yang merupakan salah satu dari sedikit yang ada di dunia.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3975_diplomat, 'その外交官はファッションについては詳しくないようです。', 'Diplomat itu sepertinya tidak tahu banyak tentang fashion.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3976_menebak, '人の気持ちを察する前に、自分の気持ちを大切にするべきです。', 'Sebaiknya kamu menjaga perasaanmu sendiri sebelum kamu menjaga perasaan orang lain.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3976_menebak, '言わなくても、それだけが理由じゃないことくらい察してもらいたかった。	', 'Bahkan tanpa memberitahu mereka, aku ingin mereka setidaknya menebak bahwa itu bukanlah satu-satunya alasan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3976_menebak, '小学生の時、初めて仲良くなった子の母親に名前を言うと、顔色が変わった。それ以後、その子は急に私とつるまなくなった。当時八才だったが、全て察した。', 'Ketika aku masih di sekolah dasar, aku memberitahukan namaku kepada ibu dari teman pertamaku, dan ekspresinya berubah. Setelah itu, anak itu tiba-tiba berhenti bergaul dengan saya. Saya berusia delapan tahun saat itu, tetapi saya memahami segalanya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3977_kesimpulan, '彼女は危険察知能力が高い。', 'Dia sangat pandai merasakan bahaya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3977_kesimpulan, '彼は上司のイライラを察知し、出来るだけ近づかないようにしました。', 'Dia merasakan frustrasi bosnya dan menjauhinya sejauh mungkin.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3977_kesimpulan, 'ビエトと手下たちは、警察の手入れがあることを事前に察知していたようだ。', 'Viet dan prajuritnya sepertinya sudah merasakan bahwa polisi akan menggerebek mereka.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3978_kursi, 'おそれ入りますが、お席をご利用されるさいは、メニューから何か一つご注文をお願いします。', 'Saya khawatir kami meminta pelanggan yang duduk untuk memesan sesuatu dari menu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3978_kursi, '私の右側の席にみんなの荷物をおきましょう。', 'Ayo letakkan tas semua orang di kursi di sebelah kananku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3978_kursi, '「すみませんが、席を詰めて私を座らせてもらえませんか？」「申し訳ないんですが、この席は空いてないんです。」', '"Permisi. Bisakah Anda pindah dan biarkan saya duduk?" "Maaf, kursi ini sudah terisi."');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3979_ketiadaan, '明日は欠席します。', 'Saya akan absen besok.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3979_ketiadaan, '昨日のミーティングの欠席者はゼロでした。', 'Tidak ada yang absen pada pertemuan kemarin.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3979_ketiadaan, 'コロナにかかってしまったので、卒業式は欠席しなくちゃいけませんでした。', 'Saya harus melewatkan upacara wisuda karena saya terkena COVID.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3980_kehadiran, 'すみませんが、出席は不定期になると思います。', 'Saya khawatir kehadiran saya mungkin tidak teratur.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3980_kehadiran, 'コウイチのバースデーパーティーには、出席しない予定です。', 'Saya tidak berencana menghadiri pesta ulang tahun Koichi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3980_kehadiran, '別の便に乗せていただけますか？どうしても、G7に出席しなくてはならないんです。', 'Bisakah Anda memindahkan saya ke penerbangan lain? Saya benar-benar harus menghadiri G7.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3981_kursi_terbuka, 'このフライトに空席はありません。', 'Tidak ada kursi yang tersedia pada penerbangan ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3981_kursi_terbuka, 'まだ空席はたくさんありますか？できれば前の方の席がいいのですが。', 'Apakah masih banyak kursi yang tersisa? Jika memungkinkan, saya lebih suka duduk di depan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3981_kursi_terbuka, 'アメリカでクリスマスに映画を見に行ったら、ほとんど空席でびっくりしました。', 'Saya pergi menonton film pada hari Natal di AS dan saya terkejut melihat bioskop hampir kosong.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3982_selalu, '彼は常に笑顔です。', 'Dia selalu tersenyum.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3982_selalu, '私の母は常に走っています。', 'Ibuku selalu berlari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3982_selalu, '自分の親が常に正しいわけではないことを知るのに、時間がかかる子どももいます。', 'Beberapa anak perlu beberapa saat untuk menyadari bahwa orang tua mereka tidak selalu benar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3983_kehidupan_sehari_hari, '私は日本語で日常会話が出来るようになりたいです。', 'Saya ingin bisa melakukan percakapan sehari-hari dalam bahasa Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3983_kehidupan_sehari_hari, '日常の買い物はアマゾンですませます。', 'Saya melakukan belanja harian saya di Amazon.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3983_kehidupan_sehari_hari, 'コウイチの日常がどんなものなのか知りたいです。', 'Saya ingin tahu seperti apa kehidupan sehari-hari Koichi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3984_kewajaran, '常識のある人たちばかりで、安心しました。', 'Saya lega bahwa kalian memiliki akal sehat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3984_kewajaran, '常識がない人との付き合いはストレスです。', 'Berurusan dengan orang-orang yang tidak memiliki akal sehat memang membuat stres.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3984_kewajaran, '常識的に考えれば、その計画は成功しないだろう。', 'Akal sehat menunjukkan bahwa rencana tersebut tidak akan berhasil.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3985_untuk_mengeringkan_sesuatu, 'え、下着を外に干すの？', 'Oh, apakah kamu menjemur celana dalammu di luar agar kering?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3985_untuk_mengeringkan_sesuatu, 'バスタオルなら、そこに干してあるでしょ？', 'Jika Anda mencari handuk mandi, pasti ada yang tergantung di sana, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3985_untuk_mengeringkan_sesuatu, 'あの芸人、ゼッタイ最近干されてるよね。', 'Saya pikir komedian itu sudah kehilangan kesempatan untuk tampil di televisi akhir-akhir ini. Apakah kamu tidak setuju?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3986_cuaca_kering, 'この神社の池には、どんな干天でもゼッタイに水があったんだって。', 'Dikatakan bahwa kolam di kuil ini tetap memiliki air tidak peduli cuaca kering apa pun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3986_cuaca_kering, 'こちらでは、今までの干天がウソのように、昨夜から急に大雨になっています。', 'Di sini, tiba-tiba hujan mulai turun tadi malam, sangat berbeda dengan cuaca kering yang kita alami selama ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3986_cuaca_kering, 'ここ最近ずっと干天だったせいか、川の水が流れてないんですよね。', 'Mungkin karena selama ini kita mengalami kekeringan, tapi sungai tidak mengalir.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3987_gangguan, '彼女は他人の問題に干渉するのが好きだ。', 'Dia suka ikut campur dalam masalah orang lain.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3987_gangguan, '親が学校生活に干渉しすぎると、子はストレスを感じることがあります。', 'Jika orang tua terlalu ikut campur dalam kehidupan sekolah, anak bisa merasa stres.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3987_gangguan, 'コウイチは、私生活への干渉はしないよう社員たちに注意しました。', 'Koichi memperingatkan para pekerja untuk tidak ikut campur dalam kehidupan pribadinya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3988_ilusi, 'この薬を飲むと、幻が見えますよ。', 'Anda akan dapat melihat penampakan jika Anda meminum obat ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3988_ilusi, '幻の魚をつかまえたぞ！', 'Saya menangkap ikan hantu!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3988_ilusi, 'それはまるで幻のようだった。', 'Itu seperti hantu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3989_halusinasi, 'それ、ただの幻覚じゃない？', 'Bukankah itu hanya halusinasi?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3989_halusinasi, '彼女は時々、ポッドキャストをレコーディングしている時に幻覚が見えるそうです。', 'Saya mendengar bahwa dia terkadang mengalami halusinasi saat merekam podcastnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3989_halusinasi, 'あの森には幻覚を引き起こすキノコが生えていると聞いたことがあります。', 'Saya pernah mendengar bahwa jamur halusinogen tumbuh di hutan itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3990_fantasi, 'それは幻想です。', 'Itu adalah ilusi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3990_fantasi, '秋の京都の夜って、とても幻想的なんですよ。', 'Malam Kyoto di musim gugur sungguh ajaib.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3990_fantasi, '会場の雰囲気がステキすぎて、まるで幻想の世界にいるような気分になりました。', 'Suasana venue begitu indah hingga saya serasa berada di dunia fantasi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3991_dasar, 'クツの底にガムがついてるよ。', 'Ada permen karet yang menempel di bagian bawah sepatu Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3991_dasar, 'ここは底が見えないほど深い。', 'Tempat ini sangat dalam sehingga Anda tidak dapat melihat dasarnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3991_dasar, '底にまだ少し薬が残ってるよ。', 'Masih ada sedikit obat tersisa di bawah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3992_dasar_hati_seseorang, 'コウイチの不治の病が治って、心底うれしいよ。', 'Saya sangat senang karena penyakit Koichi yang tidak dapat disembuhkan sebenarnya telah disembuhkan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3992_dasar_hati_seseorang, '彼の発言を聞いて、心底気持ち悪いと思いました。', 'Menurutku, pernyataannya benar-benar memuakkan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3992_dasar_hati_seseorang, '新しいチーム、みんな良い人ばかりで、心底ホッとしたよ。', 'Saya merasa sangat lega karena semua orang di tim baru adalah orang-orang baik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3993_palung, '川底には水草がたくさん生えていました。', 'Ada banyak tanaman air yang tumbuh di dasar sungai.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3993_palung, 'この川は川底が見えるほどキレイな川です。', 'Sungai ini sangat bersih sehingga Anda bisa melihat dasar sungainya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3993_palung, '彼は、川底でジッとしている大きな石のような男です。', 'Dia seperti batu besar yang diam di dasar sungai.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3997_cinta, '私はまだ、恋をしたことがない。', 'Aku belum benar-benar jatuh cinta.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3997_cinta, '彼は彼女を一目見て、恋に落ちました。', 'Dia memandangnya sekali dan jatuh cinta.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3997_cinta, 'あの神社の池のコイのこと、ずっと考えちゃうの。これって恋の始まりなのかな？', 'Saya terus memikirkan ikan mas di kolam di kuil itu. Apakah ini awal dari cinta?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3998_patah_hati, 'これは失恋を歌った曲です。', 'Ini adalah lagu tentang cinta yang hilang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3998_patah_hati, '失恋して、食事がノドを通らなくなった。', 'Saya patah hati dan tidak bisa memasukkan makanan apa pun ke tenggorokan saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3998_patah_hati, '失恋なんて、日常茶飯事だよ。', 'Patah hati adalah kejadian sehari-hari bagi saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3999_cinta, '彼女はまだ本当の愛を知りません。', 'Dia belum mengetahui cinta sejati.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3999_cinta, 'こんなに切ないなら、愛なんて知りたくなかった！', 'Jika ini akan menyakitkan, kuharap aku tidak pernah tahu apa itu cinta!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3999_cinta, '私はお金は愛より大切だと思います。よく「愛があれば山でも動かせる」なんて言いますが、お金が無いとそんなことできないでしょ。', 'Saya percaya bahwa uang lebih penting daripada cinta. Orang sering berkata, “Cinta bisa memindahkan gunung,” tapi tanpa uang, Anda tidak bisa melakukan hal seperti itu, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4000_patriotisme, '愛国心は無いよりある方がいいでしょう。', 'Lebih baik memiliki patriotisme daripada tidak memilikinya, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4000_patriotisme, '日本に住んでるんだから、日本への愛国心を持つことは自然なことです。', 'Karena Anda tinggal di Jepang, wajar jika Anda memiliki rasa patriotisme terhadap Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4000_patriotisme, '愛国心がやたらに強い男が、トーフグに入社しました。', 'Seorang pria yang sangat patriotik bergabung dengan Tofugu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4001_cinta, '恋愛がなかなか上手くいかないんだよね。', 'Aku kesulitan menemukan cinta.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4001_cinta, '僕だって恋愛したいけど、やり方が分からないんです。', 'Aku juga ingin jatuh cinta, tapi aku tidak tahu caranya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4001_cinta, 'うちの子は、最近恋愛小説ばかり読んでいます。', 'Anak saya akhir-akhir ini membaca novel roman sepanjang waktu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4002_mencintai_diri_sendiri, 'お体ご自愛ください。', 'Tolong jaga dirimu baik-baik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4002_mencintai_diri_sendiri, '今日は自愛デーにすることに自分で決めたので、一日中自愛しまくっちゃいます。', 'Aku sudah memutuskan sendiri bahwa hari ini adalah hari mencintai diri sendiri, jadi aku akan memanjakan diriku sepanjang hari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4002_mencintai_diri_sendiri, '寒くなってきておりますので、くれぐれもご自愛くださいませ。', 'Harap berhati-hati karena cuaca semakin dingin.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4003_cinta_seksual, '大学で、性愛学について勉強しています。', 'Saya sedang mempelajari cinta seksual di universitas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4003_cinta_seksual, '他人の夫婦の性愛に口出しするなんて、下品にもほどがあるよ。', 'Mengganggu hubungan seksual pasangan suami istri lain adalah tindakan yang tidak senonoh.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4003_cinta_seksual, '性欲が無いのか性愛恐怖症なのか自分では判断できません。', 'Saya tidak yakin apakah saya aseksual atau menderita erotofobia.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4004_prefektur_aichi, '愛知県に行ったことがありますか？', 'Pernahkah Anda mengunjungi Prefektur Aichi?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4004_prefektur_aichi, 'そこって愛知県のお店じゃなかったっけ？', 'Bukankah itu tokonya di Prefektur Aichi?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4004_prefektur_aichi, '愛知県には、美しい梅林があります。', 'Ada hutan ume yang indah di Prefektur Aichi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4005_untuk_dikalahkan, 'まさかあのチームがウチみたいな弱小チームに敗れるとは思ってもみなかったよ。', 'Saya tidak pernah menyangka tim itu akan kalah dari tim lemah seperti kami.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4005_untuk_dikalahkan, 'ブルージェイズは、レッドソックスに三対一で敗れました。', 'The Blue Jays kalah dalam pertandingan tersebut dari Red Socks dengan skor 1 hingga 3.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4005_untuk_dikalahkan, '私のおばは、日本が戦争に敗れた日に生まれました。', 'Bibiku lahir pada hari Jepang kalah perang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4006_kegagalan, '失敗しても良いんです。失敗から学ぶことこそが重要なんですから。', 'Tidak apa-apa untuk gagal. Karena belajar dari kesalahan adalah hal yang penting.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4006_kegagalan, 'あの彼がプレゼンで失敗するとは思ってもみませんでした。', 'Saya tidak pernah menyangka dia akan gagal dalam presentasi itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4006_kegagalan, '正直言って、君が作ったこの映画は失敗作だね。でも、一度失敗したからといって、クヨクヨしてちゃダメだよ。誰かも、「成功とは、失敗から失敗へと熱意を失うことなく進んでいける能力である」って言ってただろ？', 'Sejujurnya, film yang Anda buat ini gagal. Namun, Anda tidak bisa membiarkan hal itu membuat Anda putus asa hanya karena Anda gagal sekali. Ada yang bilang kesuksesan adalah kemampuan untuk berpindah dari satu kegagalan ke kegagalan lainnya tanpa kehilangan semangat, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4007_kemenangan_atau_kekalahan, 'その戦いの勝敗なら、昨日の朝決まりましたよ。', 'Hasil pertandingan diputuskan kemarin pagi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4007_kemenangan_atau_kekalahan, 'コウイチのその一言が、勝敗の分かれ目になったんです。', 'Satu kata yang diucapkan Koichi membuat perbedaan antara kemenangan dan kekalahan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4007_kemenangan_atau_kekalahan, '私の両親はいつも、大事なのはプロセスで勝敗は問題ではないと言いますが、私は勝敗こそが重要だと思っています。', 'Orang tua saya selalu mengatakan bahwa yang penting adalah proses dan menang atau kalah tidak penting, tapi saya percaya menang atau kalah adalah yang terpenting.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4008_pecundang, '私は敗者にはなりたくありません。', 'Saya tidak ingin menjadi pecundang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4008_pecundang, '勝者から敗者にかける言葉はないんですよ。', 'Tidak ada kata-kata dari pemenang kepada pecundang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4008_pecundang, 'その歯医者は、生まれながらの敗者であった。', 'Dokter gigi itu dilahirkan untuk menjadi pecundang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4009_sangat, 'また是非日本に来てくださいね。	', 'Tentu saja, silakan kembali ke Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4009_sangat, 'トーフグのパーティーには是非出席させていただきたいと思っています。', 'Saya sangat ingin menghadiri pesta Tofugu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4009_sangat, '是非ともあなたの意見を聞かせてください。', 'Tolong izinkan saya mendengar pendapat Anda dengan segala cara.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4015_um, '私は梅の花が大好きです。', 'Saya suka bunga plum Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4015_um, 'この時期には、毎年庭で取れた梅で、梅ジャムを作るんです。', 'Setiap tahun sekitar waktu ini, saya membuat selai plum dari buah plum yang dipanen dari kebun kami.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4015_um, '「こんなにたくさんの梅の実、どうしたの？」「今日、梅園に行ってきたんだよ。」', '"Dari mana kamu mendapatkan ume sebanyak ini?" “Saya mengunjungi kebun ume hari ini.”');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4016_anggur_ume, '梅酒みたいでおいしい！', 'Enak, seperti anggur prem!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4016_anggur_ume, '日本では、電車の中で梅酒を飲んでもいいんですか？', 'Bolehkah minum anggur prem di kereta di Jepang?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4016_anggur_ume, '彼はいつもビールの後に、梅酒ロックを注文します。', 'Dia selalu memesan anggur prem di bebatuan setelah bir.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4017_perundingan, 'クリステンは、交渉のプロです。', 'Kristen adalah negosiator profesional.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4017_perundingan, 'なんとか交渉してみますが、期待はしないでくださいね。', 'Saya akan mencoba bernegosiasi, tapi tolong jangan mengharapkan apa pun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4017_perundingan, 'やりました！交渉が成立しましたよ！', 'Kami berhasil! Negosiasi telah selesai!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4018_tak_berdaya, '親は無力ですよ。子が大きくなると、してあげられることなんて、ほとんどありません。', 'Orang tua tidak berdaya. Ketika seorang anak tumbuh besar, hanya sedikit yang dapat Anda lakukan untuknya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4018_tak_berdaya, '自分の無力さを知り、情けない気持ちでいっぱいになりました。', 'Aku dipenuhi rasa malu saat menyadari betapa tidak berdayanya diriku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4018_tak_berdaya, 'できないことが多すぎて無力感がハンパないですが、とにかく今日できることをやっていきます。', 'Ada terlalu banyak hal yang tidak dapat saya lakukan, dan saya merasa sangat tidak berdaya, namun saya akan melakukan apa yang saya bisa hari ini, apa pun yang terjadi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4019_tidak_ada_hari_libur, 'コウイチは無休で働いている。', 'Koichi bekerja tanpa libur.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4019_tidak_ada_hari_libur, 'カナエとマミは、無休でワニカニの例文を作っています。', 'Kanae dan Mami membuat contoh kalimat WaniKani tanpa jeda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4019_tidak_ada_hari_libur, 'トーフグのウェブサイトは、24時間年中無休で開いております。', 'Situs web Tofugu selalu buka, dua puluh empat jam sehari, setiap hari sepanjang tahun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4020_anonim, 'フグは、無名のまま死にたくないと思っている。', 'Fugu tidak ingin mati tanpa menyebut nama.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4020_anonim, '彼女は大物だが、無名の新人歌手にも親切だ。', 'Namanya besar, tapi dia juga baik terhadap penyanyi baru yang belum dikenal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4020_anonim, '若手のアーティストの中には、無名でも良い作品を作る人がたくさんいます。', 'Di kalangan seniman muda, banyak sekali seniman anonim yang menghasilkan karya bagus.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4021_segar_bugar, '皆さんが無事で本当に良かったです。', 'Saya sangat senang semua orang selamat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4021_segar_bugar, '無事にアメリカに帰国しました！', 'Saya kembali dengan selamat ke AS!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4021_segar_bugar, '今回のイベントも、無事に終了いたしました！', 'Event ini juga telah berakhir tanpa masalah!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4022_ketidaktahuan, 'コイツ、いくらなんでも無知すぎるだろ。', 'Orang ini terlalu bodoh.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4022_ketidaktahuan, 'もちろん、無知による発言だってことは分かっています。でも、言って良いことと悪いことってありますよね？', 'Tentu saja saya tahu ini adalah pernyataan bodoh. Tapi ada hal yang baik untuk dikatakan dan ada hal yang buruk untuk dikatakan, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4022_ketidaktahuan, '周りの人から、無知なくせに知ったかぶりをするやつだと思われていたらどうしようと心配です。', 'Saya khawatir orang-orang menganggap saya sebagai orang yang bodoh dan sok tahu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4023_irasional, '無茶なこと言わないでよ。', 'Jangan mengatakan hal-hal yang tidak rasional.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4023_irasional, 'そのアイデアは無茶だと思います。', 'Menurut saya, gagasan itu tidak masuk akal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4023_irasional, 'あんまり無茶ばっかりしないでね。みんな心配してるよ。', 'Jangan terlalu gegabah. Semua orang mengkhawatirkanmu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4024_bebas, 'コストコで無料のサンプルを食べ歩くのが好きです。', 'Saya suka berjalan-jalan sambil makan sampel gratis di Costco.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4024_bebas, 'ワニカニは、レベル三まで無料で利用できます。', 'WaniKani tersedia gratis hingga level tiga.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4024_bebas, 'このアプリは無料でダウンロードできます。', 'Aplikasi ini dapat diunduh secara gratis.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4025_tipis, 'もう少し細いペンはありますか？', 'Apakah Anda memiliki pena yang sedikit lebih halus?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4025_tipis, 'この糸はちょっと細すぎますね。', 'Menurut saya thread ini agak terlalu tipis.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4025_tipis, 'ピアニストみたいに細くて長い指だね。', 'Jari-jarimu ramping dan panjang seperti jari seorang pianis.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4027_tanda_tangan, 'ここに署名をお願いします。', 'Bisakah saya mendapatkan tanda tangan Anda di sini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4027_tanda_tangan, '一万人の署名を集めることが目標です。', 'Tujuan kami adalah mengumpulkan 10.000 tanda tangan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4027_tanda_tangan, 'オンライン署名にご協力ください。', 'Silakan menandatangani petisi online kami.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4028_obat, 'これは何の薬ですか？', 'Untuk apa obat ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4028_obat, '薬屋さんで薬をもらってきました。', 'Saya mendapat obatnya di apotek.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4028_obat, 'あの男は、薬づけの生活を送っている。', 'Hidupnya penuh dengan narkoba.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4029_studi_farmasi, '私はこの大学の薬学部に入りたいんです。', 'Saya ingin masuk ke jurusan farmasi di universitas ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4029_studi_farmasi, '彼は、東京大学の薬学部の学生です。', 'Dia adalah mahasiswa departemen farmasi di Universitas Tokyo.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4029_studi_farmasi, 'あの方の息子さんは薬学でPhDを取られたそうです。', 'Putra pria itu mendapat gelar PhD di bidang farmasi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4031_narkoba, '今すぐ薬物をやめろ！', 'Berhenti menggunakan narkoba sekarang juga!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4031_narkoba, 'あのヤクザは薬物取引をしているそうだ。', 'Kudengar yakuza itu melakukan transaksi narkoba.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4031_narkoba, 'どうやらあの薬物使用者には幻覚が見えているらしい。', 'Rupanya, pengguna narkoba itu sedang mengalami halusinasi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4032_obat, 'セールになってたから薬用ローションを買ってみました。', 'Saya membeli lotion obat karena sedang dijual.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4032_obat, '私はいつも薬用石けんを使っています。', 'Saya selalu menggunakan sabun obat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4032_obat, 'この薬局に、薬用リップクリームはありますか？', 'Apakah apotek ini menyediakan obat pelembab bibir?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4036_nalar, '手の感覚がありません。', 'Saya tidak merasakan sensasi di tangan saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4036_nalar, 'トーフグのユーモアの感覚が好きです。', 'Saya suka selera humor Tofugu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4036_nalar, 'シカってすごくバランス感覚が良いんだって。', 'Saya mendengar bahwa rusa memiliki keseimbangan yang sangat baik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4037_penjelasan, '彼は説明が下手です。', 'Dia tidak pandai menjelaskan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4037_penjelasan, 'このボードゲームのルールを説明してもらえますか？', 'Bisakah Anda menjelaskan aturan permainan papan ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4037_penjelasan, '電車のスピードを急に落とした理由を説明してください。', 'Tolong jelaskan mengapa Anda tiba-tiba memperlambat kereta.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4038_novel, 'あなたの一番好きな小説は何ですか？', 'Apa novel favoritmu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4038_novel, 'この小説マジで大好きだわ。これはホンモノだよ。', 'Saya sangat menyukai novel ini. Ini sah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4038_novel, 'お父さん、小説が売れて鼻高々だね。', 'Ayah bersinar bangga karena novelnya laris manis ya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4039_legenda, 'アイルランドの伝説のヒーローと言えば、誰を思いうかべますか？', 'Ketika Anda mendengar "pahlawan legendaris Irlandia", siapa yang terlintas dalam pikiran Anda?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4039_legenda, 'お前めちゃくちゃモテるな！マジで伝説的だよ。', 'Para gadis mencintaimu, kawan. Anda legendaris, sungguh!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4039_legenda, '伝説によると、この海にはワニカニが住んでいるそうです。', 'Menurut legenda, ada WaniKani di lautan ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4040_hipotesa, 'まずは次のような仮説を立てました。', 'Kami mulai dengan hipotesis berikut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4040_hipotesa, 'この仮説が正しいことを立証するには、コウイチの力が必要です。', 'Kita memerlukan bantuan Koichi untuk membuktikan hipotesis ini benar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4040_hipotesa, '成功させたいなら「失敗できる」ようにしておかないと。失敗できなくなると仮説をテストするスピードが落ちますよ。', 'Jika ingin berhasil, Anda harus bisa "gagal". Jika Anda tidak bisa gagal, Anda tidak akan bisa menguji hipotesis Anda dengan cukup cepat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4041_ilustrasi, 'この参考書は図説付きです。', 'Buku referensi ini dilengkapi dengan ilustrasi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4041_ilustrasi, 'アヤが、トーフグ社内の人間関係の図説を作ってくれました。', 'Aya membuat diagram penjelasan tentang hubungan internal Tofugu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4041_ilustrasi, 'もし説明と共に図説があれば、より分かりやすくなるかと思うんですが、どう思いますか？', 'Menurut saya akan lebih mudah dipahami jika ada ilustrasi dan penjelasannya, bagaimana menurut anda?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4042_pengetahuan, '彼は役に立たない知識ばかり知っています。', 'Dia hanya mengetahui pengetahuan yang tidak berguna.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4042_pengetahuan, 'いつもタメになる知識をありがとうございます。', 'Terima kasih selalu memberikan ilmu yang bermanfaat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4042_pengetahuan, '彼は持ち合わせの知識で何とかその場をしのいだ。', 'Ia berhasil melewati situasi tersebut dengan pengetahuan yang dimilikinya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4043_kesadaran, '彼女は意識を失った。', 'Dia kehilangan kesadaran.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4043_kesadaran, 'その方は、意識はありますか？ありませんか？', 'Apakah orang tersebut sadar atau tidak sadar?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4043_kesadaran, 'ブロッコリーは体に良いと読んだので、意識して食べるようにしています。', 'Saya membaca bahwa brokoli baik untuk Anda, jadi saya berusaha secara sadar untuk memakannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4043_kesadaran, '彼っていつも勉強してるし、かなり意識が高いよね。', 'Dia selalu belajar dan cukup sadar, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4044_polisi, '動くな！警察だ。', 'Jangan bergerak! Itu polisi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4044_polisi, 'きっと警察は助けてくれません。', 'Saya yakin polisi tidak akan membantu saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4044_polisi, '警察に電話した方がいいんじゃない？', 'Mungkin kita harus memanggil polisi?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4045_keadaan_darurat, 'この非常ブレーキ、こわれてるかもしれないよ。', 'Saya pikir rem elektronik ini mungkin rusak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4045_keadaan_darurat, '急に非常ベルが鳴り出して、びっくりしました。', 'Alarm darurat tiba-tiba berbunyi dan saya terkejut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4045_keadaan_darurat, 'ポテトチップスは非常食にピッタリです。', 'Keripik kentang adalah makanan darurat yang sempurna.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4046_hidung, 'あそこにいる鼻の赤いトナカイはルドルフです。', 'Rusa kutub dengan hidung merah di sana adalah Rudolph.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4046_hidung, '彼は鼻をかむ音がうるさいです。', 'Dia mengeluarkan suara keras saat membuang ingus.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4046_hidung, '鼻クソをほじるな！', 'Jangan mengupil!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4047_ingus, '鼻くそ、指でほじるとかありえないんだけど。ティッシュ使って取りなよ。', 'Mengupil hidung dengan jari adalah hal yang tidak terpikirkan. Gunakan Kleenex untuk membersihkannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4047_ingus, '電車で鼻くそをほじってこねてる女の人を見てしまい、気分が悪くなりました。', 'Saya merasa mual setelah melihat seorang wanita mengupil dan bermain dengan boogernya di kereta.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4047_ingus, '三才の息子が鼻くそを食べるので、「マナーが悪いよ！」と注意したら、食べる前に「いただきます」と言うようになりました。', 'Setelah saya memarahi putra saya yang berusia tiga tahun karena makan booger dan mengatakan kepadanya bahwa itu adalah perilaku yang buruk, dia mulai mengucapkan "itadakimasu" sebelum memakannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4048_ujung_hidung, '鼻先にマスタードがついてるよ。', 'Anda mendapat mustard di ujung hidung Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4048_ujung_hidung, 'このメイクは、鼻先を高く感じさせるトリックアートを取り入れています。', 'Riasan ini menggabungkan trik untuk membuat hidung tampak lebih mancung.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4048_ujung_hidung, 'その警察犬は、鼻先をヒクヒクさせて、見知らぬ人のにおいをかぎ始めた。', 'Anjing polisi itu mulai menggerakkan ujung hidungnya dan mengendus orang asing itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4049_bersenandung, 'コウイチは、鼻をふくらませながら、鼻歌を歌っていた。', 'Koichi bersenandung sambil membuat hidungnya membengkak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4049_bersenandung, 'ビエトは鼻歌まじりで楽しそうに自転車に乗っていました。', 'Viet dengan gembira mengendarai sepedanya sambil bersenandung.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4049_bersenandung, 'アハハ！お前鼻歌下手すぎだっつーの。', 'LMAO! Kamu sangat buruk dalam bersenandung.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4050_mimisan, '私は鼻血がよく出ます。', 'Saya sering mimisan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4050_mimisan, '急に鼻血が出てきて、びっくりしました。', 'Saya terkejut ketika tiba-tiba saya mimisan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4050_mimisan, '鼻血が出ちゃったんですが、ティッシュってありますか？', 'Saya mimisan, apakah Anda punya tisu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4054_sabtu, '今週は土曜日も仕事です。', 'Minggu ini saya juga bekerja pada hari Sabtu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4054_sabtu, '土曜日は雨みたいですね。', 'Sepertinya akan turun hujan pada hari Sabtu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4054_sabtu, '土曜日の飲み会、行く？', 'Apakah Anda akan pergi ke pesta minum pada hari Sabtu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4055_minggu, '来週の日曜日は予定があります。', 'Saya punya rencana untuk hari Minggu depan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4055_minggu, '日曜日の朝は、毎週教会に行きます。', 'Saya pergi ke gereja setiap Minggu pagi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4055_minggu, '日曜日のハイキングで日焼けをしてしまいました。', 'Saya terluka saat pendakian hari Minggu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4062_sertifikat, '証明書は発行できません。', 'Sertifikat tidak dapat diterbitkan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4062_sertifikat, '身分証明書はお持ちですか？', 'Bisakah saya memeriksa ID Anda?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4062_sertifikat, '電車の中に卒業証明書が入ったカバンを忘れてきてしまった。', 'Saya lupa tas saya dengan sertifikat kelulusan saya di dalam kereta.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4062_sertifikat, 'あなたが月に土地を所有してるなんて本当なんですか？証明書でもあるんですか？', 'Apakah Anda yakin Anda memiliki tanah di bulan? Apakah Anda memiliki bukti tertulis?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4107_untuk_menulis_ulang, '今から書き直すのはムリです。', 'Tidak mungkin untuk menulis ulang sekarang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4107_untuk_menulis_ulang, 'この部分を少し書き直してもらえませんか？', 'Bisakah Anda menulis ulang bagian ini sedikit?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4107_untuk_menulis_ulang, 'その手紙、当時、何度も何度も書き直したんです。', 'Saya menulis ulang surat itu berulang kali pada saat itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4347_pelaut_angkatan_laut, '水兵さんのセーラー服ってどこで買えるんですか？', 'Dimana saya bisa membeli seragam pelaut?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4347_pelaut_angkatan_laut, '「かもめの水兵さん」っていう曲、知ってる？', 'Tahukah anda lagu "The Seagull Sailor"?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4347_pelaut_angkatan_laut, 'あの水兵が、船長にふるえ声で何かを話しているのを見てしまったんだ。', 'Saya kebetulan melihat pelaut itu mengatakan sesuatu kepada kapten dengan suara gemetar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5365_terperinci, 'ずいぶんシメサバについて詳しいんですね。', 'Anda cukup ahli dalam sushi makarel.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5365_terperinci, 'あの人はコンピューターについて詳しそうだ。', 'Orang itu sepertinya tahu banyak tentang komputer.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5365_terperinci, 'おお、マジかよ？ 詳しく教えてくれよ。', 'Wow! Benar-benar? Ceritakan semuanya padaku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5366_detail, 'このユーザーは、いつも詳細なフィードバックを送ってくれます。', 'Pengguna ini sering mengirimkan masukan yang sangat rinci kepada kami.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5366_detail, '詳細を調べている時間がありません。', 'Saya tidak punya cukup waktu untuk mencari detailnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5366_detail, 'このトピックについては詳しくないので、あまり詳細についてはコメントできません。', 'Saya tidak paham dengan topik ini dan tidak dapat mengomentari terlalu banyak detail.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5367_tidak_dikenal, 'ワニカニは、性別不詳のモンスターです。', 'Wanikani adalah monster yang jenis kelaminnya tidak diketahui.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5367_tidak_dikenal, 'イトコは、ほぼ会わないからステータスが不詳なんだよね。', 'Status sepupu saya tidak diketahui karena kami hampir tidak pernah bertemu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5367_tidak_dikenal, 'その人物は、年も性別も全てが不詳だった', 'Orang itu diselimuti misteri, usia dan jenis kelaminnya tidak diketahui.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5806_drama, '図書館で三時から人形劇があるらしいよ。', 'Saya mendengar ada pertunjukan boneka di perpustakaan pada jam 3:00.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5806_drama, 'この劇で馬の役をしているのがオレの兄なんだ。', 'Orang yang berperan sebagai kuda dalam drama ini adalah kakak laki-laki saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5806_drama, '後ろの席の人が劇の最中にずっと指をポキポキ鳴らしてて、すっごくイライラしました。', 'Orang yang duduk di belakang saya terus menjentikkan jarinya selama pertunjukan, dan ini sangat menjengkelkan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5807_komedi, '大阪でヨシモトの新喜劇を見てきました。', 'Saya pergi menonton Komedi Baru Yoshimoto di Osaka.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5807_komedi, 'Netflixに喜劇王チャップリンのドキュメンタリーが上がってたよ。', 'Ada film dokumenter tentang raja komedi Charlie Chaplin yang tersedia di Netflix.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5807_komedi, 'その映画は悲しすぎて、喜劇というよりは悲劇だ。', 'Filmnya terlalu menyedihkan. Ini harusnya disebut tragedi, bukan komedi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5808_tragedi, 'それが悲劇の始まりだった。', 'Itu adalah awal dari tragedi saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5808_tragedi, 'これはまたかなり悲劇的なシチュエーションですね。', 'Ini sungguh merupakan situasi yang cukup tragis.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5808_tragedi, 'あんた、悲劇のヒロインにでもなったつもり？いつまでもクヨクヨしてたって仕方ないでしょ？', 'Apakah Anda mencoba bersikap seperti tokoh utama dalam suatu tragedi? Murung selamanya tidak akan membantu siapa pun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5809_dramatis, '今日は皆さんに、電気代を劇的に安くする方法をお教えします。', 'Hari ini, saya ingin berbagi dengan Anda semua cara untuk mengurangi tagihan listrik Anda secara signifikan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5809_dramatis, '正直、ヘアスタイルを変えるだけで、見た目は劇的に変わります。', 'Sejujurnya, perubahan sederhana pada gaya rambut bisa mengubah penampilan seseorang secara drastis.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5809_dramatis, '私は『劇的ビフォーアフター』という番組が大好きです。', 'Saya suka acara yang berjudul "Drama Sebelum dan Sesudah".');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5811_teater, '劇場のロビーで待ち合わせしましょう。', 'Mari kita bertemu di lobi teater.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5811_teater, 'その映画の劇場公開はいつですか？', 'Kapan filmnya akan dirilis di bioskop?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5811_teater, 'それでは明日、劇場でお待ちしております。', 'Kami nantikan kedatangan Anda besok di teater.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5812_opera, '皆さんは歌劇を見たことがありますか？', 'Pernahkah Anda melihat opera?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5812_opera, '歌劇のチケットはどこで買えますか？', 'Dimana saya bisa membeli tiket opera?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5812_opera, '私はとある歌劇に出ていたフランス人役者のファンになりました。', 'Saya menjadi penggemar aktor Perancis di salah satu opera.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7150_rasanya_tidak_enak, 'あの字はちょっと不味いんじゃない？', 'Tulisan tangannya agak buruk, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7150_rasanya_tidak_enak, 'なんか不味そうなサンドイッチだね。', 'Sandwichnya terlihat kurang menggugah selera, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7150_rasanya_tidak_enak, 'こんなに不味いアボカドスープを飲んだことはありません。', 'Saya belum pernah makan sup alpukat yang rasanya tidak enak seperti ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7546_tentara, 'アメリカ兵からよくガムやチョコレートをもらいました。', 'Tentara Amerika sering memberi kami permen karet dan coklat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7546_tentara, '今回の戦争では、人間ではなくロボット兵が戦っているようです。', 'Dalam perang ini, tampaknya yang akan berperang adalah tentara robot, bukan manusia.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7546_tentara, 'その肉を食べた多くの兵が、食中毒になってしまったそうです。', 'Rupanya, banyak prajurit yang memakan daging tersebut menderita keracunan makanan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7547_mustahil, 'ゼッタイ無理です。', 'Ini benar-benar mustahil.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7547_mustahil, 'あんまり無理なことばかり言わないでください。', 'Tolong jangan terlalu tidak masuk akal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7547_mustahil, '無理しすぎないで、自分の体も大事にしてね。', 'Jangan berlebihan. Jaga dirimu juga.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7548_samping, 'もう少しだけ、側にいてもいい？', 'Bolehkah aku berada di sisimu lebih lama lagi?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7548_samping, 'お母さんの側をはなれちゃダメだよ！', 'Jangan tinggalkan ibu, oke?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7548_samping, 'ソファの側にサボテンがほしいなと思ってるの。', 'Saya sedang berpikir untuk meletakkan kaktus di samping sofa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7588_untuk_diubah, 'あの男は意見がコロコロ変わるので信用できません。', 'Saya tidak bisa mempercayai pria itu karena dia sering mengubah pendapatnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7588_untuk_diubah, '人の考え方は時間とともに変わるものでしょ？', 'Cara berpikir orang-orang berubah seiring berjalannya waktu, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7588_untuk_diubah, 'AIの進歩により、仕事のやり方が大きく変わりました。', 'Kemajuan AI telah mengubah cara kerja dilakukan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7590_tanpa, 'このブドウはタネ無しだから食べやすいですよ。', 'Anggur ini tidak memiliki biji sehingga mudah untuk dimakan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7590_tanpa, 'ドタキャンは無しでお願いしますね！', 'Tolong, jangan ada pembatalan di menit-menit terakhir, oke?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7590_tanpa, 'オレ、金無し、仕事無し、ブサメンの四十代だぜ。なんでオレなんかと付き合いたいの？', 'Saya bangkrut, menganggur, dan seorang pria yang tidak menarik berusia empat puluhan. Mengapa kamu ingin bersama orang sepertiku?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7643_kesimpulan, 'このマンガはまだ完結していません。', 'Manga ini belum selesai.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7643_kesimpulan, 'シリーズ完結後の話をスピンオフとして書きました。', 'Saya menulis spin-off cerita setelah seri tersebut selesai.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7643_kesimpulan, 'この小説は、次号で完結する予定です。', 'Novel ini akan selesai pada edisi berikutnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7644_kesunyian, '毎晩無言電話がかかってくるんです。', 'Setiap malam saya mendapat panggilan telepon iseng tanpa suara.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7644_kesunyian, '彼は無言のまま部屋を出て行った。', 'Dia meninggalkan ruangan tanpa mengucapkan sepatah kata pun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7644_kesunyian, 'トーフグの社員たちは、無言で仕事をしているように見えますが、実はスラックというアプリでチャットしています。', 'Para pekerja Tofugu sepertinya bekerja tanpa suara, namun sebenarnya mereka sedang mengobrol di aplikasi bernama Slack.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7700_untuk_mencintai, 'あのバンパイアは6000年も愛する人のことを待っている。', 'Vampir itu telah menunggu orang yang dicintainya selama 6000 tahun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7700_untuk_mencintai, '私のこと、愛してる？', 'Apakah kamu mencintaiku?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7700_untuk_mencintai, 'コウイチはトーフグのことをとても愛していて、よく「僕の愛するトーフグちゃん」とつぶやいています。', 'Koichi sangat menyukai Tofugu dan sering menggumamkan hal-hal seperti, "Ya ampun Tofugu-chan."');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7701_seperti_biasanya, '相変わらず面白いことをしてるね。', 'Seperti biasa, Anda melakukan sesuatu yang menarik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7701_seperti_biasanya, '彼は相変わらず、つぶやくような小声で、ヒドイことを言いまくっていた。', 'Dia menggumamkan sumpah seperti biasa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7701_seperti_biasanya, '牛さん、相変わらずかっこいい鼻輪をつけてるね。でも、今日は鼻毛が出てるよ。', 'Pak Sapi, seperti biasa, Anda punya cincin hidung yang keren, tapi saya bisa melihat bulu hidung Anda hari ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7757_kekasih, 'お前は愛人にすらなれなかったんだよ。', 'Anda bahkan tidak bisa menjadi kekasihnya!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7757_kekasih, '愛人っぽい顔してるねって言われて、すごくムカつきました。', 'Saya diberitahu bahwa saya terlihat seperti wanita simpanan, dan itu benar-benar membuat saya kesal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7757_kekasih, '今日は愛人の家でご飯食べてくるから、晩ご飯はいらないよ。', 'Saya akan makan malam di rumah majikan saya hari ini, jadi saya tidak perlu makan malam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8672_cinta, '愛情たっぷりのビーフシチューです。', 'Ini adalah sup daging sapi yang penuh cinta.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8672_cinta, '私は両親の愛情を感じたことがありません。', 'Aku belum pernah merasakan kasih sayang orang tuaku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8672_cinta, '愛情不足じゃなくて金欠なんです。愛情なんかいらないから、お金をください。', 'Aku tidak kekurangan cinta, aku kekurangan uang. Aku tidak butuh kasih sayang, aku butuh uang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8709_hari_sebelum_terakhir, '一昨日から熱が出ています。', 'Saya demam sejak kemarin lusa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8709_hari_sebelum_terakhir, '一昨日の朝は、早起きしてジョギングに行きました。', 'Saya bangun pagi-pagi kemarin lusa dan pergi jogging.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8709_hari_sebelum_terakhir, '一昨日の夜は、美しい星空を見ることができました。', 'Malam sebelumnya, saya bisa melihat langit berbintang yang indah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9087_anak_muda, 'これは青春時代の思い出の写真です。', 'Ini adalah foto yang mengabadikan musim semi dalam hidupku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9087_anak_muda, 'まさに青春の１ページって感じだね！', 'Itu seperti sebuah halaman dari masa muda kita!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9087_anak_muda, 'エミ、めっちゃ青春してるじゃん！', 'Emi, kamu sangat menikmati masa mudamu!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9337_kepala, '彼は、サッカーで頭部にケガをしたようです。', 'Sepertinya dia mengalami cedera kepala saat bermain sepak bola.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9337_kepala, 'でも、頭部のレントゲンに問題はなかったそうです。', 'Namun, tampaknya tidak ada masalah dengan rontgen kepalanya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9337_kepala, 'アイツ、わざとお前の頭部をねらったんだよ！', 'Orang itu sengaja mengincar kepalamu!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9493_asosiasi, '金曜日は、仕事上の付き合いで飲みに行くことが多いかな。', 'Pada hari Jumat, saya sering keluar minum karena kewajiban sosial yang berhubungan dengan pekerjaan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9493_asosiasi, '付き合いで来たけど、正直早く帰りたい。', 'Saya di sini karena kewajiban sosial, tapi sejujurnya saya ingin segera pulang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9493_asosiasi, '小谷さんとは、商社時代からの長いお付き合いなんです。', 'Tuan Kotani dan saya memiliki hubungan jangka panjang sejak kami bekerja di perusahaan dagang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9493_asosiasi, '初めまして。サツキさんとお付き合いをさせていただいている、本田サトルと申します。', 'Senang berkenalan dengan Anda. Nama saya Satoru Honda, dan saat ini saya menjalin hubungan dengan Satsuki-san.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9499_buah, 'この木は毎年たくさんの果実をつけてくれます。', 'Pohon ini menghasilkan banyak buah setiap tahunnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9499_buah, 'この果実酒はとてもあまくて美味しいです。', 'Minuman keras buah ini sangat manis dan enak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9499_buah, '春のあたたかな風の中で、小鳥たちが赤い果実をついばんでいた。', 'Di tengah angin musim semi yang hangat, burung-burung kecil sedang mematuk buah merah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9506_faktor, '主な要因は何ですか？', 'Apa faktor utamanya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9506_faktor, 'この問題には多くの要因がある。', 'Ada banyak faktor yang melatarbelakangi masalah ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9506_faktor, '仕事が大きなストレス要因になっているんです。', 'Pekerjaan adalah penyebab utama stres.');

  -- 4. PREREQUISITES
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_837_sedih, r_209_pidana);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_837_sedih, id FROM items WHERE type = 'radical' AND (slug = '65' OR id = '65') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_976_bersuka_cita, id FROM items WHERE type = 'radical' AND (slug = '421' OR id = '421') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_976_bersuka_cita, id FROM items WHERE type = 'radical' AND (slug = '16' OR id = '16') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_995_asli, id FROM items WHERE type = 'radical' AND (slug = '230' OR id = '230') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_996_tipis, id FROM items WHERE type = 'radical' AND (slug = '86' OR id = '86') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_996_tipis, id FROM items WHERE type = 'radical' AND (slug = '51' OR id = '51') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_997_obat, id FROM items WHERE type = 'radical' AND (slug = '90' OR id = '90') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_997_obat, r_251_kenyamanan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_998_hidung, id FROM items WHERE type = 'radical' AND (slug = '109' OR id = '109') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_998_hidung, id FROM items WHERE type = 'radical' AND (slug = '51' OR id = '51') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_998_hidung, id FROM items WHERE type = 'radical' AND (slug = '106' OR id = '106') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_999_samping, id FROM items WHERE type = 'radical' AND (slug = '75' OR id = '75') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_999_samping, id FROM items WHERE type = 'radical' AND (slug = '94' OR id = '94') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_999_samping, id FROM items WHERE type = 'radical' AND (slug = '128' OR id = '128') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1000_tentara, id FROM items WHERE type = 'radical' AND (slug = '115' OR id = '115') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1000_tentara, id FROM items WHERE type = 'radical' AND (slug = '1' OR id = '1') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1000_tentara, id FROM items WHERE type = 'radical' AND (slug = '2' OR id = '2') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1001_aula, id FROM items WHERE type = 'radical' AND (slug = '8769' OR id = '8769') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1001_aula, id FROM items WHERE type = 'radical' AND (slug = '16' OR id = '16') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1001_aula, id FROM items WHERE type = 'radical' AND (slug = '17' OR id = '17') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1002_garam, id FROM items WHERE type = 'radical' AND (slug = '17' OR id = '17') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1002_garam, id FROM items WHERE type = 'radical' AND (slug = '8762' OR id = '8762') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1002_garam, id FROM items WHERE type = 'radical' AND (slug = '16' OR id = '16') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1002_garam, id FROM items WHERE type = 'radical' AND (slug = '84' OR id = '84') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1003_kursi, id FROM items WHERE type = 'radical' AND (slug = '8787' OR id = '8787') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1003_kursi, id FROM items WHERE type = 'radical' AND (slug = '102' OR id = '102') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1004_kegagalan, id FROM items WHERE type = 'radical' AND (slug = '94' OR id = '94') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1004_kegagalan, id FROM items WHERE type = 'radical' AND (slug = '60' OR id = '60') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1005_buah, id FROM items WHERE type = 'radical' AND (slug = '235' OR id = '235') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1007_um, id FROM items WHERE type = 'radical' AND (slug = '23' OR id = '23') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1007_um, id FROM items WHERE type = 'radical' AND (slug = '8762' OR id = '8762') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1007_um, id FROM items WHERE type = 'radical' AND (slug = '107' OR id = '107') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1008_tidak_ada, r_252_tidak_ada);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1009_mengikat, id FROM items WHERE type = 'radical' AND (slug = '86' OR id = '86') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1009_mengikat, r_253_semoga_beruntung);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1010_menyebabkan, id FROM items WHERE type = 'radical' AND (slug = '16' OR id = '16') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1010_menyebabkan, id FROM items WHERE type = 'radical' AND (slug = '18' OR id = '18') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1011_normal, id FROM items WHERE type = 'radical' AND (slug = '8769' OR id = '8769') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1011_normal, id FROM items WHERE type = 'radical' AND (slug = '16' OR id = '16') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1011_normal, id FROM items WHERE type = 'radical' AND (slug = '102' OR id = '102') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1012_cerdas, id FROM items WHERE type = 'radical' AND (slug = '117' OR id = '117') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1012_cerdas, id FROM items WHERE type = 'radical' AND (slug = '197' OR id = '197') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1012_cerdas, id FROM items WHERE type = 'radical' AND (slug = '194' OR id = '194') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1013_ketidakadilan, r_209_pidana);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1014_kering, id FROM items WHERE type = 'radical' AND (slug = '61' OR id = '61') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1015_sangat, id FROM items WHERE type = 'radical' AND (slug = '22' OR id = '22') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1015_sangat, id FROM items WHERE type = 'radical' AND (slug = '420' OR id = '420') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1016_mengarungi, id FROM items WHERE type = 'radical' AND (slug = '103' OR id = '103') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1016_mengarungi, id FROM items WHERE type = 'radical' AND (slug = '245' OR id = '245') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1018_pemerintah, id FROM items WHERE type = 'radical' AND (slug = '78' OR id = '78') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1018_pemerintah, id FROM items WHERE type = 'radical' AND (slug = '8777' OR id = '8777') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1019_tebakan, id FROM items WHERE type = 'radical' AND (slug = '78' OR id = '78') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1019_tebakan, r_8825_festival);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1020_dasar, id FROM items WHERE type = 'radical' AND (slug = '62' OR id = '62') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1020_dasar, id FROM items WHERE type = 'radical' AND (slug = '147' OR id = '147') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1020_dasar, id FROM items WHERE type = 'radical' AND (slug = '1' OR id = '1') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1021_cinta, id FROM items WHERE type = 'radical' AND (slug = '8772' OR id = '8772') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1021_cinta, id FROM items WHERE type = 'radical' AND (slug = '76' OR id = '76') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1021_cinta, id FROM items WHERE type = 'radical' AND (slug = '65' OR id = '65') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1021_cinta, id FROM items WHERE type = 'radical' AND (slug = '60' OR id = '60') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1022_kantor_pemerintah, id FROM items WHERE type = 'radical' AND (slug = '163' OR id = '163') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1022_kantor_pemerintah, id FROM items WHERE type = 'radical' AND (slug = '203' OR id = '203') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1023_memperingatkan, r_255_puisi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1023_memperingatkan, id FROM items WHERE type = 'radical' AND (slug = '60' OR id = '60') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1023_memperingatkan, id FROM items WHERE type = 'radical' AND (slug = '117' OR id = '117') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1024_roman, id FROM items WHERE type = 'radical' AND (slug = '9329' OR id = '9329') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1024_roman, id FROM items WHERE type = 'radical' AND (slug = '65' OR id = '65') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1025_menghafal, id FROM items WHERE type = 'radical' AND (slug = '8769' OR id = '8769') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1025_menghafal, id FROM items WHERE type = 'radical' AND (slug = '91' OR id = '91') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1026_teori, id FROM items WHERE type = 'radical' AND (slug = '117' OR id = '117') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1026_teori, r_422_penjaga);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1027_ilusi, id FROM items WHERE type = 'radical' AND (slug = '87' OR id = '87') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1027_ilusi, id FROM items WHERE type = 'radical' AND (slug = '8780' OR id = '8780') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1412_terperinci, id FROM items WHERE type = 'radical' AND (slug = '117' OR id = '117') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1412_terperinci, id FROM items WHERE type = 'radical' AND (slug = '136' OR id = '136') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1569_drama, r_254_harimau);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1569_drama, id FROM items WHERE type = 'radical' AND (slug = '233' OR id = '233') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1569_drama, id FROM items WHERE type = 'radical' AND (slug = '128' OR id = '128') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3421_kata_asing, id FROM items WHERE type = 'kanji' AND (slug = '521' OR id = '521') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3421_kata_asing, id FROM items WHERE type = 'kanji' AND (slug = '590' OR id = '590') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3421_kata_asing, id FROM items WHERE type = 'kanji' AND (slug = '764' OR id = '764') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3797_menjadi_sedih_tentang, k_837_sedih);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3823_untuk_bersukacita, k_976_bersuka_cita);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3845_untuk_menyembuhkan, id FROM items WHERE type = 'kanji' AND (slug = '978' OR id = '978') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3934_sebelum_masehi, id FROM items WHERE type = 'kanji' AND (slug = '952' OR id = '952') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3934_sebelum_masehi, id FROM items WHERE type = 'kanji' AND (slug = '498' OR id = '498') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3934_sebelum_masehi, id FROM items WHERE type = 'kanji' AND (slug = '633' OR id = '633') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3935_sarapan, id FROM items WHERE type = 'kanji' AND (slug = '695' OR id = '695') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3935_sarapan, id FROM items WHERE type = 'kanji' AND (slug = '955' OR id = '955') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3937_cengeng, id FROM items WHERE type = 'kanji' AND (slug = '950' OR id = '950') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3937_cengeng, id FROM items WHERE type = 'kanji' AND (slug = '553' OR id = '553') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3938_menangis, id FROM items WHERE type = 'kanji' AND (slug = '950' OR id = '950') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3938_menangis, id FROM items WHERE type = 'kanji' AND (slug = '586' OR id = '586') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3939_makan_malam, id FROM items WHERE type = 'kanji' AND (slug = '958' OR id = '958') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3939_makan_malam, id FROM items WHERE type = 'kanji' AND (slug = '955' OR id = '955') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3940_makan_siang, id FROM items WHERE type = 'kanji' AND (slug = '932' OR id = '932') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3940_makan_siang, id FROM items WHERE type = 'kanji' AND (slug = '955' OR id = '955') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3941_keinginan_seseorang, id FROM items WHERE type = 'kanji' AND (slug = '888' OR id = '888') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3941_keinginan_seseorang, id FROM items WHERE type = 'kanji' AND (slug = '708' OR id = '708') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3951_kansai, id FROM items WHERE type = 'kanji' AND (slug = '982' OR id = '982') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3951_kansai, id FROM items WHERE type = 'kanji' AND (slug = '581' OR id = '581') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3953_sisi_kanan, id FROM items WHERE type = 'kanji' AND (slug = '484' OR id = '484') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3953_sisi_kanan, k_999_samping);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3954_sisi_kiri, id FROM items WHERE type = 'kanji' AND (slug = '486' OR id = '486') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3954_sisi_kiri, k_999_samping);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3955_di_dalam, id FROM items WHERE type = 'kanji' AND (slug = '500' OR id = '500') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3955_di_dalam, k_999_samping);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3956_di_luar, id FROM items WHERE type = 'kanji' AND (slug = '521' OR id = '521') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3956_di_luar, k_999_samping);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3957_kedua_sisi, id FROM items WHERE type = 'kanji' AND (slug = '609' OR id = '609') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3957_kedua_sisi, k_999_samping);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3958_sisi_timur, id FROM items WHERE type = 'kanji' AND (slug = '627' OR id = '627') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3958_sisi_timur, k_999_samping);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3960_personil_militer, k_1000_tentara);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3960_personil_militer, id FROM items WHERE type = 'kanji' AND (slug = '821' OR id = '821') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3961_lengan, k_1000_tentara);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3961_lengan, id FROM items WHERE type = 'kanji' AND (slug = '876' OR id = '876') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3962_tentara, k_1000_tentara);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3962_tentara, id FROM items WHERE type = 'kanji' AND (slug = '877' OR id = '877') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3963_prajurit_as, id FROM items WHERE type = 'kanji' AND (slug = '574' OR id = '574') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3963_prajurit_as, k_1000_tentara);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3964_menyebabkan, k_995_asli);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3964_menyebabkan, k_1010_menyebabkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3965_atom, k_995_asli);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3965_atom, id FROM items WHERE type = 'kanji' AND (slug = '462' OR id = '462') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3966_karya_asli, k_995_asli);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3966_karya_asli, id FROM items WHERE type = 'kanji' AND (slug = '584' OR id = '584') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3970_kafetaria, id FROM items WHERE type = 'kanji' AND (slug = '644' OR id = '644') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3970_kafetaria, k_1001_aula);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3971_garam, k_1002_garam);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3972_air_garam, k_1002_garam);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3972_air_garam, id FROM items WHERE type = 'kanji' AND (slug = '479' OR id = '479') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3973_rasa_asin, k_1002_garam);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3973_rasa_asin, id FROM items WHERE type = 'kanji' AND (slug = '812' OR id = '812') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3974_dana_pemerintah, k_1018_pemerintah);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3974_dana_pemerintah, id FROM items WHERE type = 'kanji' AND (slug = '602' OR id = '602') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3975_diplomat, id FROM items WHERE type = 'kanji' AND (slug = '521' OR id = '521') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3975_diplomat, id FROM items WHERE type = 'kanji' AND (slug = '565' OR id = '565') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3975_diplomat, k_1018_pemerintah);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3976_menebak, k_1019_tebakan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3977_kesimpulan, k_1019_tebakan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3977_kesimpulan, id FROM items WHERE type = 'kanji' AND (slug = '631' OR id = '631') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3978_kursi, k_1003_kursi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3979_ketiadaan, id FROM items WHERE type = 'kanji' AND (slug = '646' OR id = '646') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3979_ketiadaan, k_1003_kursi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3980_kehadiran, id FROM items WHERE type = 'kanji' AND (slug = '483' OR id = '483') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3980_kehadiran, k_1003_kursi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3981_kursi_terbuka, id FROM items WHERE type = 'kanji' AND (slug = '601' OR id = '601') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3981_kursi_terbuka, k_1003_kursi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3982_selalu, k_1011_normal);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3983_kehidupan_sehari_hari, id FROM items WHERE type = 'kanji' AND (slug = '476' OR id = '476') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3983_kehidupan_sehari_hari, k_1011_normal);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3984_kewajaran, k_1011_normal);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3984_kewajaran, k_1012_cerdas);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3985_untuk_mengeringkan_sesuatu, k_1014_kering);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3986_cuaca_kering, k_1014_kering);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3986_cuaca_kering, id FROM items WHERE type = 'kanji' AND (slug = '473' OR id = '473') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3987_gangguan, k_1014_kering);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3987_gangguan, k_1016_mengarungi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3988_ilusi, k_1027_ilusi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3989_halusinasi, k_1027_ilusi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3989_halusinasi, k_1025_menghafal);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3990_fantasi, k_1027_ilusi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3990_fantasi, id FROM items WHERE type = 'kanji' AND (slug = '861' OR id = '861') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3991_dasar, k_1020_dasar);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3992_dasar_hati_seseorang, id FROM items WHERE type = 'kanji' AND (slug = '508' OR id = '508') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3992_dasar_hati_seseorang, k_1020_dasar);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3993_palung, id FROM items WHERE type = 'kanji' AND (slug = '456' OR id = '456') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3993_palung, k_1020_dasar);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3997_cinta, k_1024_roman);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3998_patah_hati, id FROM items WHERE type = 'kanji' AND (slug = '654' OR id = '654') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3998_patah_hati, k_1024_roman);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_3999_cinta, k_1021_cinta);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4000_patriotisme, k_1021_cinta);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4000_patriotisme, id FROM items WHERE type = 'kanji' AND (slug = '621' OR id = '621') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4000_patriotisme, id FROM items WHERE type = 'kanji' AND (slug = '508' OR id = '508') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4001_cinta, k_1024_roman);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4001_cinta, k_1021_cinta);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4002_mencintai_diri_sendiri, id FROM items WHERE type = 'kanji' AND (slug = '578' OR id = '578') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4002_mencintai_diri_sendiri, k_1021_cinta);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4003_cinta_seksual, id FROM items WHERE type = 'kanji' AND (slug = '918' OR id = '918') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4003_cinta_seksual, k_1021_cinta);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4004_prefektur_aichi, k_1021_cinta);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4004_prefektur_aichi, id FROM items WHERE type = 'kanji' AND (slug = '631' OR id = '631') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4004_prefektur_aichi, id FROM items WHERE type = 'kanji' AND (slug = '731' OR id = '731') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4005_untuk_dikalahkan, k_1004_kegagalan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4006_kegagalan, id FROM items WHERE type = 'kanji' AND (slug = '654' OR id = '654') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4006_kegagalan, k_1004_kegagalan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4007_kemenangan_atau_kekalahan, id FROM items WHERE type = 'kanji' AND (slug = '738' OR id = '738') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4007_kemenangan_atau_kekalahan, k_1004_kegagalan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4008_pecundang, k_1004_kegagalan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4008_pecundang, id FROM items WHERE type = 'kanji' AND (slug = '690' OR id = '690') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4009_sangat, k_1015_sangat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4009_sangat, k_1013_ketidakadilan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4015_um, k_1007_um);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4016_anggur_ume, k_1007_um);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4016_anggur_ume, id FROM items WHERE type = 'kanji' AND (slug = '743' OR id = '743') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4017_perundingan, id FROM items WHERE type = 'kanji' AND (slug = '565' OR id = '565') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4017_perundingan, k_1016_mengarungi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4018_tak_berdaya, k_1008_tidak_ada);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4018_tak_berdaya, id FROM items WHERE type = 'kanji' AND (slug = '447' OR id = '447') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4019_tidak_ada_hari_libur, k_1008_tidak_ada);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4019_tidak_ada_hari_libur, id FROM items WHERE type = 'kanji' AND (slug = '542' OR id = '542') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4020_anonim, k_1008_tidak_ada);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4020_anonim, id FROM items WHERE type = 'kanji' AND (slug = '544' OR id = '544') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4021_segar_bugar, k_1008_tidak_ada);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4021_segar_bugar, id FROM items WHERE type = 'kanji' AND (slug = '708' OR id = '708') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4022_ketidaktahuan, k_1008_tidak_ada);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4022_ketidaktahuan, id FROM items WHERE type = 'kanji' AND (slug = '631' OR id = '631') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4023_irasional, k_1008_tidak_ada);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4023_irasional, id FROM items WHERE type = 'kanji' AND (slug = '643' OR id = '643') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4024_bebas, k_1008_tidak_ada);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4024_bebas, id FROM items WHERE type = 'kanji' AND (slug = '878' OR id = '878') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4025_tipis, k_996_tipis);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4027_tanda_tangan, k_1022_kantor_pemerintah);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4027_tanda_tangan, id FROM items WHERE type = 'kanji' AND (slug = '544' OR id = '544') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4028_obat, k_997_obat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4029_studi_farmasi, k_997_obat);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4029_studi_farmasi, id FROM items WHERE type = 'kanji' AND (slug = '599' OR id = '599') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4031_narkoba, k_997_obat);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4031_narkoba, id FROM items WHERE type = 'kanji' AND (slug = '718' OR id = '718') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4032_obat, k_997_obat);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4032_obat, id FROM items WHERE type = 'kanji' AND (slug = '525' OR id = '525') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4036_nalar, id FROM items WHERE type = 'kanji' AND (slug = '862' OR id = '862') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4036_nalar, k_1025_menghafal);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4037_penjelasan, k_1026_teori);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4037_penjelasan, id FROM items WHERE type = 'kanji' AND (slug = '626' OR id = '626') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4038_novel, id FROM items WHERE type = 'kanji' AND (slug = '463' OR id = '463') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4038_novel, k_1026_teori);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4039_legenda, id FROM items WHERE type = 'kanji' AND (slug = '777' OR id = '777') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4039_legenda, k_1026_teori);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4040_hipotesa, id FROM items WHERE type = 'kanji' AND (slug = '739' OR id = '739') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4040_hipotesa, k_1026_teori);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4041_ilustrasi, id FROM items WHERE type = 'kanji' AND (slug = '585' OR id = '585') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4041_ilustrasi, k_1026_teori);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4042_pengetahuan, id FROM items WHERE type = 'kanji' AND (slug = '631' OR id = '631') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4042_pengetahuan, k_1012_cerdas);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4043_kesadaran, id FROM items WHERE type = 'kanji' AND (slug = '811' OR id = '811') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4043_kesadaran, k_1012_cerdas);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4044_polisi, k_1023_memperingatkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4044_polisi, k_1019_tebakan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4045_keadaan_darurat, k_1013_ketidakadilan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4045_keadaan_darurat, k_1011_normal);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4046_hidung, k_998_hidung);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4047_ingus, k_998_hidung);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4048_ujung_hidung, k_998_hidung);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4048_ujung_hidung, id FROM items WHERE type = 'kanji' AND (slug = '543' OR id = '543') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4049_bersenandung, k_998_hidung);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4049_bersenandung, id FROM items WHERE type = 'kanji' AND (slug = '761' OR id = '761') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4050_mimisan, k_998_hidung);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4050_mimisan, id FROM items WHERE type = 'kanji' AND (slug = '619' OR id = '619') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4054_sabtu, id FROM items WHERE type = 'kanji' AND (slug = '459' OR id = '459') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4054_sabtu, id FROM items WHERE type = 'kanji' AND (slug = '961' OR id = '961') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4054_sabtu, id FROM items WHERE type = 'kanji' AND (slug = '476' OR id = '476') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4055_minggu, id FROM items WHERE type = 'kanji' AND (slug = '476' OR id = '476') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4055_minggu, id FROM items WHERE type = 'kanji' AND (slug = '961' OR id = '961') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4062_sertifikat, id FROM items WHERE type = 'kanji' AND (slug = '987' OR id = '987') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4062_sertifikat, id FROM items WHERE type = 'kanji' AND (slug = '626' OR id = '626') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4062_sertifikat, id FROM items WHERE type = 'kanji' AND (slug = '962' OR id = '962') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4107_untuk_menulis_ulang, id FROM items WHERE type = 'kanji' AND (slug = '962' OR id = '962') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4107_untuk_menulis_ulang, id FROM items WHERE type = 'kanji' AND (slug = '630' OR id = '630') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4347_pelaut_angkatan_laut, id FROM items WHERE type = 'kanji' AND (slug = '479' OR id = '479') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4347_pelaut_angkatan_laut, k_1000_tentara);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5365_terperinci, k_1412_terperinci);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5366_detail, k_1412_terperinci);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5366_detail, k_996_tipis);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5367_tidak_dikenal, id FROM items WHERE type = 'kanji' AND (slug = '563' OR id = '563') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5367_tidak_dikenal, k_1412_terperinci);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5806_drama, k_1569_drama);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5807_komedi, k_976_bersuka_cita);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5807_komedi, k_1569_drama);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5808_tragedi, k_837_sedih);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5808_tragedi, k_1569_drama);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5809_dramatis, k_1569_drama);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5809_dramatis, id FROM items WHERE type = 'kanji' AND (slug = '914' OR id = '914') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5811_teater, k_1569_drama);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5811_teater, id FROM items WHERE type = 'kanji' AND (slug = '694' OR id = '694') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5812_opera, id FROM items WHERE type = 'kanji' AND (slug = '761' OR id = '761') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5812_opera, k_1569_drama);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7150_rasanya_tidak_enak, id FROM items WHERE type = 'kanji' AND (slug = '563' OR id = '563') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7150_rasanya_tidak_enak, id FROM items WHERE type = 'kanji' AND (slug = '812' OR id = '812') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7546_tentara, k_1000_tentara);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7547_mustahil, k_1008_tidak_ada);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7547_mustahil, id FROM items WHERE type = 'kanji' AND (slug = '669' OR id = '669') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7548_samping, k_999_samping);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7588_untuk_diubah, id FROM items WHERE type = 'kanji' AND (slug = '944' OR id = '944') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7590_tanpa, k_1008_tidak_ada);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7643_kesimpulan, id FROM items WHERE type = 'kanji' AND (slug = '904' OR id = '904') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7643_kesimpulan, k_1009_mengikat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7644_kesunyian, k_1008_tidak_ada);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7644_kesunyian, id FROM items WHERE type = 'kanji' AND (slug = '593' OR id = '593') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7700_untuk_mencintai, k_1021_cinta);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7701_seperti_biasanya, id FROM items WHERE type = 'kanji' AND (slug = '730' OR id = '730') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7701_seperti_biasanya, id FROM items WHERE type = 'kanji' AND (slug = '944' OR id = '944') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7757_kekasih, k_1021_cinta);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7757_kekasih, id FROM items WHERE type = 'kanji' AND (slug = '444' OR id = '444') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8672_cinta, k_1021_cinta);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8672_cinta, id FROM items WHERE type = 'kanji' AND (slug = '891' OR id = '891') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8709_hari_sebelum_terakhir, id FROM items WHERE type = 'kanji' AND (slug = '440' OR id = '440') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8709_hari_sebelum_terakhir, id FROM items WHERE type = 'kanji' AND (slug = '947' OR id = '947') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8709_hari_sebelum_terakhir, id FROM items WHERE type = 'kanji' AND (slug = '476' OR id = '476') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9087_anak_muda, id FROM items WHERE type = 'kanji' AND (slug = '604' OR id = '604') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9087_anak_muda, id FROM items WHERE type = 'kanji' AND (slug = '931' OR id = '931') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9337_kepala, id FROM items WHERE type = 'kanji' AND (slug = '771' OR id = '771') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9337_kepala, id FROM items WHERE type = 'kanji' AND (slug = '721' OR id = '721') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9493_asosiasi, id FROM items WHERE type = 'kanji' AND (slug = '652' OR id = '652') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9493_asosiasi, id FROM items WHERE type = 'kanji' AND (slug = '852' OR id = '852') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_9499_buah, k_1005_buah);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9499_buah, id FROM items WHERE type = 'kanji' AND (slug = '715' OR id = '715') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9506_faktor, id FROM items WHERE type = 'kanji' AND (slug = '737' OR id = '737') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_9506_faktor, k_1010_menyebabkan);

END $$;
