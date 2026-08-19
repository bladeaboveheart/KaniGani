-- ====================================================
-- KaniGani — Seed Data Level 47 (v2, relasional)
-- Auto-generated with Indonesian Slugs
-- ====================================================

DO $$
DECLARE
  -- ============ RADICAL IDs (Level 47) ============
  r_401_tugas UUID; r_402_melambai UUID; r_431_penguin UUID;
  -- ============ KANJI IDs (Level 47) ============
  k_1977_menghancurkan UUID; k_1978_lengket UUID; k_1979_kosmetik UUID; k_1980_penipuan UUID; k_1981_berbohong UUID; k_1982_kabut UUID; k_1983_pohon_willow UUID; k_1984_italia UUID; k_1985_membantu UUID; k_1986_shaku UUID; k_1987_menyedihkan UUID; k_1988_bibir UUID; k_1989_pagar UUID; k_1990_menabrak UUID; k_1991_kemiripan UUID; k_1992_wanita_tua UUID; k_1993_jurang UUID; k_1994_topi UUID; k_1995_uang_tunai UUID; k_1996_sakit_hati UUID; k_1997_membenci UUID; k_1998_istirahat UUID; k_1999_kipas_lipat UUID; k_2000_pintu UUID; k_2001_menyisipkan UUID; k_2002_telapak UUID; k_2003_menetes UUID; k_2004_memasak UUID; k_2005_menyegarkan UUID; k_2006_tikar_tatami UUID; k_2007_jernih UUID; k_2008_sumpit UUID; k_2009_batang_tubuh UUID; k_2010_sumbu UUID; k_2011_pelangi UUID; k_2049_handuk UUID; k_8991_memanggang UUID;
  -- ============ VOCABULARY IDs (Level 47) ============
  v_3638_keinginan_yang_sepenuh_hati UUID; v_4072_khususnya UUID; v_4435_hak_hak_perempuan UUID; v_6709_puncak UUID; v_6721_untuk_digosok UUID; v_6993_banzai UUID; v_7007_untuk_menumpahkan_sesuatu UUID; v_7054_melihat UUID; v_7056_untuk_melembabkan UUID; v_7058_puing UUID; v_7059_pembubukan UUID; v_7060_menjadi_lengket UUID; v_7061_tanah_liat UUID; v_7062_adhesi UUID; v_7063_rias UUID; v_7064_untuk_menipu UUID; v_7065_tipuan UUID; v_7066_menipu UUID; v_7067_kekeliruan UUID; v_7068_kabut UUID; v_7069_kabut_tebal UUID; v_7070_kabut_pagi UUID; v_7071_pohon_willow UUID; v_7072_distrik_lampu_merah UUID; v_7073_komik_haiku UUID; v_7074_ise UUID; v_7075_keelokan_semarak UUID; v_7076_bantuan UUID; v_7077_kolonel UUID; v_7078_besar UUID; v_7079_letnan_kolonel UUID; v_7080_shaku UUID; v_7081_pita_pengukur UUID; v_7082_disayangkan UUID; v_7083_menyedihkan UUID; v_7084_duka UUID; v_7085_bibir UUID; v_7086_bibir_bawah UUID; v_7087_bibir_atas UUID; v_7088_dinding UUID; v_7089_tembok_lumpur UUID; v_7090_menembak_jatuh UUID; v_7091_menabrak UUID; v_7092_kekurangan UUID; v_7093_tiba_tiba UUID; v_7095_wanita_tua UUID; v_7096_nenek UUID; v_7097_jurang UUID; v_7098_kain_piring UUID; v_7099_kain_debu UUID; v_7100_topi UUID; v_7101_uang UUID; v_7102_uang_kertas UUID; v_7103_untuk_menyimpan_dendam UUID; v_7104_menyesali UUID; v_7105_untuk_membenci UUID; v_7106_cinta_dan_benci UUID; v_7107_untuk_beristirahat UUID; v_7108_istirahat UUID; v_7109_untuk_penggemar UUID; v_7110_kipas_listrik UUID; v_7111_kipas_lipat UUID; v_7112_pintu UUID; v_7113_pintu_gerbang UUID; v_7114_ilustrasi_buku UUID; v_7115_cerita_sampingan UUID; v_7116_insersi UUID; v_7117_telapak UUID; v_7118_konduktor_kereta_api UUID; v_7119_tamak UUID; v_7120_menetes UUID; v_7121_setetes_air UUID; v_7122_tetes_intravena UUID; v_7124_memasak_untuk_diri_sendiri UUID; v_7125_memasak UUID; v_7126_penanak_nasi UUID; v_7127_menyegarkan UUID; v_7128_counter_untuk_tikar_tatami UUID; v_7129_tikar_tatami UUID; v_7130_kejelasan UUID; v_7131_sumpit UUID; v_7132_sumpit_yang_dapat_dibelah UUID; v_7133_batang_tubuh UUID; v_7134_tubuh UUID; v_7135_inti UUID; v_7136_pelangi UUID; v_7137_berwarna_pelangi UUID; v_7138_nona_muda UUID; v_7139_tanpa_alas_kaki UUID; v_7141_pendapatan UUID; v_7142_memburu UUID; v_7143_untuk_menyikat_gigi UUID; v_7144_untuk_membuat_sesuatu_jelas UUID; v_7146_kerusakan_katamari UUID; v_7147_ujung_tombak UUID; v_7148_berkat UUID; v_7448_keadaan_lengket UUID; v_8999_senbei UUID; v_9000_teh_hijau UUID; v_9060_untuk_mengukir_sesuatu UUID; v_9128_kerikil UUID; v_9292_ayah_seseorang UUID;

BEGIN

  DELETE FROM items WHERE level = 47;

  -- 1. RADICALS
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '務', 'tugas', 47, 1, 'Ini sama dengan kanji <radical>Tugas</radical>.')
    RETURNING id INTO r_401_tugas;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '波', 'melambai', 47, 2, 'Radikal ini sama dengan kanji. Artinya <radikal>gelombang</radikal>.')
    RETURNING id INTO r_402_melambai;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '敝', 'penguin', 47, 3, 'Ada sirip yang terbungkus handuk di musim dingin. Siapa yang mengeringkan sirip ikan ini untuk dimakan? Seekor <radikal>penguin</radikal>.')
    RETURNING id INTO r_431_penguin;
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_401_tugas, 'Tugas', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_402_melambai, 'Melambai', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_431_penguin, 'Penguin', true, true);

  -- 2. KANJIS
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '砕', 'menghancurkan', 47, 4, 'Ambil <radical>batu</radical> ini dan lemparkan ke <radical>sembilan</radical> <radical>cross</radical>es untuk <kanji>menghancurkan</kanji> mereka! Ini seperti bowling kuno, tetapi alih-alih menggulingkan batu ini untuk merobohkan salib, Anda ingin menghancurkannya hingga berkeping-keping!', 'Saat Anda <kanji>menghancurkan</kanji> salib ini, Anda memikirkan <reading>cy</reading>borg (さい) Anda dan betapa Anda ingin menghancurkan orang-orang yang mengambilnya dari Anda. Cyborgmu juga sangat pandai menghancurkan sesuatu. Anda bisa hancur bersama, jika Anda tidak harus menjualnya.')
    RETURNING id INTO k_1977_menghancurkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '粘', 'lengket', 47, 5, '<radical>Nasi</radikal> <radikal>keberuntungan</radikal> Anda <kanji>lengket</kanji>. Nasi itu lengket. Begitu juga dengan rejeki berasmu. Nasi ketan rezeki Anda karena seluruhnya terbuat dari ketan.', 'Beras ini sangat <kanji>lengket</kanji> sehingga Anda dapat membuat <reading>nen</reading>doroids (ねん) darinya. Nasib berasmu bahkan lebih bernilai sekarang karena kamu bisa membuat nendoroid edisi terbatas dari beras tersebut.')
    RETURNING id INTO k_1978_lengket;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '粧', 'kosmetik', 47, 6, 'Duduk dengan aman di bawah <radical>kanopi</radikal> Anda mengambil <radikal>beras</radikal> dan <radikal>kotoran</radikal>, mencampurnya, dan menciptakan <kanji>kosmetik</kanji> unik untuk wajah Anda.', 'Kamu memerlukan <kanji>kosmetik</kanji> ini karena kamu ada pertemuan dengan <reading>Shou</reading>gun (しょう) yang akan datang. Anda ingin membuatnya terkesan, dan Anda tidak ingin orang lain meniru penampilan Anda.')
    RETURNING id INTO k_1979_kosmetik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '欺', 'penipuan', 47, 7, 'Seekor <radical>kepiting</radikal> akan berusaha menyembunyikan <radikal>kekurangannya</radikal> dengan <kanji>kebohongan</kanji>. Berbohong, mencuri, berpura-pura—tidak ada tipu daya yang berlebihan bagi seekor kepiting.', '<kanji>Penipuan</kanji> hanya dapat membawa Anda sejauh ini, dan kepiting akan segera ditangkap, diadili atas kejahatan dan penutupannya, dan dijatuhi hukuman mati melalui <reading>gui</reading>llotine (ぎ).')
    RETURNING id INTO k_1980_penipuan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '詐', 'berbohong', 47, 8, 'Mereka <radikal>mengatakan</radikal> <radikal>kunci</radikal> untuk mengatakan <kanji>kebohongan</kanji> adalah dengan mempercayai kebohongan itu sendiri. Mereka mengatakan bahwa jika Anda memercayai kebohongan Anda sendiri, orang lain juga akan mempercayainya. Ini adalah kuncinya.', '<kanji>kebohongan</kanji> yang kamu katakan adalah tentang tidak mencuri <reading>gergaji</reading> temanmu (さ). Anda benar-benar mencuri gergajinya. Dia melihatmu mencuri gergajinya, tapi sekarang kamu mencoba berbohong untuk menghindarinya. Ini tidak berjalan dengan baik.')
    RETURNING id INTO k_1981_berbohong;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '霧', 'kabut', 47, 9, '<radical>hujan</radical> sedang turun di <radical>tombak</radical> Anda yang memiliki <radical>musim dingin</radical> <radical>kekuatan</radical>. Saat hujan hangat menerpa tombak musim dingin Anda yang dingin, <kanji>kabut</kanji> akan tercipta.', 'Melalui <kanji>kabut</kanji> Anda melihat bentuk <reading>kiri</reading>n (きり) yang mistis. Anda hanya dapat melihat garis besarnya melalui kabut, tetapi Anda tahu garis itu ada di sana.')
    RETURNING id INTO k_1982_kabut;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '柳', 'pohon-willow', 47, 10, '<radikal>pohon</radikal> yang <radikal>dicap</radikal> dengan satu pola, kemudian <radikal>dicap</radikal> dengan pola lain, berulang-ulang, adalah pohon <kanji>willow</kanji>.', '<reading>Ryu</reading> (りゅう) dari Street Fighter sangat menyukai pohon <kanji>willow</kanji>. Ryu sangat mencintai mereka sehingga dia bermesraan dengan mereka. Ryu membuka mulut sambil mencium pohon willow. Anda sedang menonton ini. Hal ini sedang terjadi.')
    RETURNING id INTO k_1983_pohon_willow;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '伊', 'italia', 47, 11, 'Seorang <radical>pemimpin</radikal> dan <radikal>Wolverine</radikal> melakukan <radikal>slide</radikal> ke <kanji>Italia</kanji>. Pemimpin Wolverine adalah Profesor X, dan mereka berdua meluncur ke Italia. Menyenangkan sekali!', 'Sebelum Profesor X dapat turun dari perosotan ke <kanji>Italia</kanji>, sebuah <read>ea</reading>gle (い) besar menukik ke bawah dan menariknya keluar dari kursi rodanya. Elang itu sangat kuat. Selamat tinggal, Profesor X!')
    RETURNING id INTO k_1984_italia;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '佐', 'membantu', 47, 12, '<radical>pemimpin</radikal> kru <radical>narwhal</radical> <radical>konstruksi</radical> membutuhkan semua <kanji>bantuan</kanji> yang bisa dia dapatkan. Narwhal memulai pembangunan kota bawah laut. Pemimpinnya tahu bahwa narwhal adalah pekerja konstruksi yang keras, tetapi mereka memerlukan bantuan untuk membangun kota ini.', 'Kemudian Anda menemukan <reading>gergaji</reading> (さ) yang akan sangat <kanji>membantu</kanji>. Gergaji ini sangat kuat dan akan banyak membantu Anda dan tim konstruksi narwhal Anda. Anda harus segera menggunakan gergaji ini.')
    RETURNING id INTO k_1985_membantu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '尺', 'shaku', 47, 13, '<radical>udang</radikal> ini panjangnya persis <kanji>shaku</kanji>, atau <kanji>kaki Jepang</kanji>. Begitulah cara mereka menciptakan bentuk pengukuran ini. Mereka mengukur panjang udang ini dan itu adalah panjang kaki orang Jepang yang mereka anggap sebagai shaku. Itu sama dengan 30,3 cm, sangat dekat dengan satu kaki kekaisaran.', 'Bagaimana <kanji>shaku</kanji>, <kanji>kaki Jepang</kanji>, diucapkan oleh <reading>Shaq</reading> (しゃく) dalam bahasa Jepang? Mengapa Shaq mengucapkannya shaku. Ini diucapkan shaku dalam bahasa Inggris dan Jepang.')
    RETURNING id INTO k_1986_shaku;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '哀', 'menyedihkan', 47, 14, 'Dengan <radical>penutup</radikal>, Anda memukul <radikal>mulut</radikal> dan kemudian <radikal>menendang</radikal> seperti pecundang yang <kanji>menyedihkan</kanji>. Anda menendang tutupnya, meskipun itu adalah kesalahan Anda sehingga Anda memukul mulut Anda sendiri dengan itu. Ini bukan salah tutupnya. Anda tidak perlu menendangnya. Anda menyedihkan.', 'Anda menendang tutupnya untuk terakhir kalinya dan tutupnya memantul ke dinding dan mengenai <reading>mata</reading> (あい). Betapa <kanji>menyedihkan</kanji>. Kamu adalah kekacauan yang menyedihkan. Anda seharusnya tidak pernah membuka tutupnya. Sekarang mata dan mulutmu sakit, dasar bodoh.')
    RETURNING id INTO k_1987_menyedihkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '唇', 'bibir', 47, 15, 'Sebuah <radical>longsor</radikal> keluar dari <radical>mulut</radikal> Anda dan menciptakan <kanji>bibir</kanji> Anda. Sebelum terjadinya tanah longsor, Anda hanya mempunyai lubang mulut yang terbuka lebar.', 'Sekarang Anda dapat menggunakan <kanji>bibir</kanji> baru Anda untuk menikmati <reading>bir Kuchi</reading> (くちびる) yang enak dan dingin. Orang Kuchi adalah pengembara Pashtun Afghanistan. Mereka kurang dikenal karena birnya yang luar biasa. Dan Anda belum pernah bisa memasukkan bir lezat ini ke dalam mulut Anda, tetapi sekarang Anda memiliki bibir, Anda bisa memasukkan semuanya ke dalam mulut Anda.')
    RETURNING id INTO k_1988_bibir;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '塀', 'pagar', 47, 16, 'Di <radical>tanah</radical> terdapat <radical>bendera</radical> dan <radical>tanduk</radical> yang dijajarkan dengan <radical>lentera</radical> yang melekat padanya, membuat <kanji>pagar</kanji>. Kelihatannya agak aneh, tetapi hal-hal ini pastinya dimaksudkan untuk memagari sesuatu.', 'Anda ingin tahu <kanji>pagar</kanji> ini dipagari, jadi melangkahlah lebih dekat. Saat cahaya dari lentera semakin terang, Anda melihat bahwa pagar itu dikelilingi oleh satu ton <reading>jerami</reading> (へい).')
    RETURNING id INTO k_1989_pagar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '墜', 'menabrak', 47, 17, 'Sebuah <radical>bangunan</radical> jatuh ke dalam <radical>tanah</radical> ketika <radical>babi</radical> dengan <radical>tanduk</radical> <kanji>menabrak</kanji> ke dalamnya. Bangunan itu benar-benar runtuh ke tanah ketika babi bertanduk menyerangnya.', 'Anda menarik babi malang itu keluar dari reruntuhan <kanji>kecelakaan</kanji>. Ia belum mati, namun ada benturan keras di kepalanya dan kini ia mengira ia seekor burung. "<reading>DUA</reading>T (つい)!" kata babi. "Tweet, twit, twit!" Babi yang malang dan bingung.')
    RETURNING id INTO k_1990_menabrak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '如', 'kemiripan', 47, 18, 'Dengan <radikal>mulut</radikal> <radikal>wanita</radikal>, kamu memiliki <kanji>kemiripan</kanji> denganku.', 'Kamu memiliki <kanji>kemiripan</kanji> dengan <reading>Jo</reading>-Anne (じょ) saat kamu memakai mulut itu.')
    RETURNING id INTO k_1991_kemiripan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '婆', 'wanita-tua', 47, 19, 'Sebuah <radikal>gelombang</radikal> menghantam <radikal>wanita</radikal>, mengubahnya menjadi <kanji>wanita tua</kanji>! Ombak menyapu seluruh riasan wanita itu, memperlihatkan bahwa dia adalah seorang wanita tua. Riasan yang dia pakai membuatnya tampak seperti wanita yang jauh lebih muda, tetapi begitu gelombang menyapu riasannya, dia terungkap sebagai wanita tua.', 'Dalam upaya mengalihkan perhatian Anda dari fakta bahwa dia sebenarnya adalah <kanji>wanita tua</kanji>, wanita tua itu mulai <read>baa</reading> (ば) dan bertingkah seperti domba. Wanita tua itu berkata, "Baa! Baa!" dan melompat-lompat seperti domba.')
    RETURNING id INTO k_1992_wanita_tua;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '崖', 'jurang', 47, 20, 'Terdapat <radical>gunung</radical> di atas tumpukan <radical>tanah</radical> dengan <radical>tebing</radical> yang curam. Hal ini agak berlebihan, namun gunung dan tanah justru membuat <kanji>tebing</kanji> semakin besar, curam, dan menakutkan.', 'Anda tidak dapat mempercayai betapa besarnya <kanji>tebing</kanji> dengan gunung dan tanahnya. Kamu melihatnya begitu lama, kamu hanya menjadi <reading>gawker</reading> (がけ) yang tidak bisa berhenti menatap tebing besar itu. Ini sangat besar.')
    RETURNING id INTO k_1993_jurang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '帽', 'topi', 47, 21, 'Anda mengambil <radical>handuk</radical> dan melilitkannya di kepala Anda untuk mencegah <radical>matahari</radical> masuk ke <radical>mata</radical> Anda. Anda telah menemukan... <kanji>topi</kanji>!', 'Setelah menemukan <kanji>topi</kanji>, Anda ingin memamerkannya kepada semua orang, jadi Anda pergi ke gang <reading>busur</reading>ling (ぼう). Anda benar-benar menonjol dalam pukulan bowling demi pukulan dengan topi baru Anda yang mewah, dan sebelum Anda menyadarinya, orang-orang telah menciptakan istilah untuk topi baja Anda yang funky. Benar — Anda menjadi nama yang sama dengan topi bowler ikonik!')
    RETURNING id INTO k_1994_topi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '幣', 'uang-tunai', 47, 22, '<radical>penguin</radical> di sana sepertinya memiliki <radical>handuk</radical> yang diisi dengan <kanji>uang tunai</kanji>.', 'Mata Anda mengikuti <kanji>uang tunai</kanji>, dan Anda menyaksikan penguin memasukkannya, handuk, dan semuanya, ke dalam tumpukan <read>jerami</reading> (へい). Penguin yang cerdas, orang tidak mencari uang dalam jerami, mereka terlalu sibuk mencari jarum suntik.')
    RETURNING id INTO k_1995_uang_tunai;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '恨', 'sakit-hati', 47, 23, 'Sebuah <radikal>jiwa</radikal> hanya akan menghuni <radikal>akar</radikal> jika ia menyimpan <kanji>dendam</kanji>. Pernahkah Anda melihat pohon yang bagus dan berhantu? TIDAK! Mereka selalu marah dan berusaha mendapatkan seseorang kembali untuk sesuatu.', 'Jika Anda melihat salah satu pohon <kanji>dendam</kanji> ini, mungkin pohon tersebut dihuni oleh jiwa seorang <reading>con</reading>dor (こん). Manusia cenderung membunuh condor dan mengambil pohonnya untuk membangun rumah dan membuat tisu toilet. Jadi condor menyimpan dendam yang sangat buruk terhadap kita, sehingga jiwa mereka akhirnya terjebak di banyak pohon.')
    RETURNING id INTO k_1996_sakit_hati;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '憎', 'membenci', 47, 24, '<radical>jiwa</radikal> <radikal>topeng</radikal> membantu Anda melihat bagian terdalam dari jiwa seseorang. Anda melihat sekeliling dan pada semua orang Anda hanya melihat <kanji>benci</kanji>.', 'Ternyata Anda tidak melihat orang normal. Kamu melihat begitu banyak <kanji>kebencian</kanji> karena semua orang yang kamu lihat sebenarnya hanyalah sekelompok <reading>zo</reading>mbies (ぞう).')
    RETURNING id INTO k_1997_membenci;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '憩', 'istirahat', 47, 25, 'Anda menyimpan <radical>lidah</radikal> Anda pada <radikal>diri</radikal> Anda untuk memberikan <radikal>hati</radikal> Anda <kanji>istirahat</kanji>. Anda telah berbicara dan menggerakkan lidah sepanjang hari untuk mengungkapkan perasaan Anda. Hal ini telah melelahkan lidah dan hati Anda, sehingga Anda menghentikan gerakan lidah Anda dan memutuskan bahwa Anda perlu waktu istirahat.', 'Apa cara yang lebih baik untuk <kanji>beristirahat</kanji> selain makan <reading>ca</reading>ke (けい)! Tidak perlu bicara. Nikmati saja nikmatnya cita rasa kue di lidah Anda dan rasakan hati Anda menghela nafas lega.')
    RETURNING id INTO k_1998_istirahat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '扇', 'kipas-lipat', 47, 26, 'Setelah melewati <radical>pintu</radical>, Anda menggunakan <radical>bulu</radical> untuk memberikan sentuhan akhir pada <kanji>kipas lipat</kanji>. Pintunya mengarah ke bengkel kipas lipat tempat Anda membuat semua kipas lipat. Kipas lipat ini sekarang sudah lengkap karena Anda telah menambahkan bulu ke dalamnya. Betapa indahnya itu.', 'Pelanggan <kanji>kipas lipat</kanji> terbesar Anda adalah <reading>cen</reading>taur (せん). Centaur ini sangat menyukai kipas lipat Anda dan yang baru saja Anda buat dengan bulu ini adalah pesanan terbaru centaur. Anda kembali keluar dari pintu Anda dan mengirimkan kipas lipat ini ke centaur.')
    RETURNING id INTO k_1999_kipas_lipat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '扉', 'pintu', 47, 27, 'Apa yang akan dicuri oleh <radical>pintu</radical> <radical>penjahat</radical>? Sebuah <kanji>pintu</kanji>, tentu saja, tapi secara spesifik adalah <kanji>pintu berengsel</kanji>. Tahukah Anda, jenis yang bisa dibuka dan ditutup? Itulah arti pintu 扉.', 'Untuk melindungi <kanji>pintu</kanji> Anda, Anda mendapatkan bantuan dari <reading>飛び Ra</reading> (とびら). 飛び Ra adalah versi terbang (飛び) dari Ra, dewa matahari Mesir. Setiap kali penjahat mencoba mencuri pintu Anda, 飛び Ra terbang keluar dari baliknya dan membutakan mereka dengan kecerahan dewa mataharinya.')
    RETURNING id INTO k_2000_pintu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '挿', 'menyisipkan', 47, 28, 'Anda memiliki <radical>jari</radical> di <radical>ribu</radical> dan ketika melihat ke arah <radical>matahari</radical> Anda memutuskan ingin <kanji>memasukkannya</kanji> ke sana.', 'Anda <kanji>memasukkan</kanji> satu jari, jari itu langsung terbakar, dan <reading>sou</reading>l (そう)-nya terbang keluar sambil berteriak sesaat sebelum menghilang. Hmm. Anda memasukkan jari yang lain dan saat jari itu terbakar, jiwa kecil lainnya keluar sambil memekik, "KENAPA KAU MASUKKAN SAYA DI SANA!" dan hilang.')
    RETURNING id INTO k_2001_menyisipkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '掌', 'telapak', 47, 29, 'Jika kamu ingin menutupi <radical>mulut</radical> <radical>Viking</radical> dengan <radical>tangan</radical> kamu, kamu harus menggunakan <kanji>telapak tangan</kanji> kamu. Mengapa telapak tangan? Nah, jika Anda melakukannya dengan mulut ke mulut, Anda seperti meninju si Viking… dan Anda tidak ingin meninju seorang Viking. Itu sebabnya kamu menggunakan telapak tangan.', 'Teknik sentuhan Viking menggunakan <kanji>telapak tangan</kanji> ini dikembangkan oleh <reading>Shou</reading>gun (しょう). Shogun harus berhadapan dengan banyak orang Viking yang suka bersuara keras, jadi dia belajar menggunakan telapak tangannya untuk menutup mulut mereka.')
    RETURNING id INTO k_2002_telapak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '滴', 'menetes', 47, 30, '<radikal>tsunami</radikal> menghantam <radikal>mohawk</radikal> Anda dan mulai <kanji>menetes</kanji>. Air akibat tsunami terus menetes dari mohawk Anda lama setelah tsunami berlalu. Ada banyak air di rambut Anda sekarang, jadi mungkin akan menetes sebentar.', 'Untungnya, Anda memproklamirkan diri sebagai <reading>teknisi</reading> (てき), jadi Anda mengembangkan perangkat untuk menghentikan <kanji>tetesan</kanji> tetesan air. Perangkat teknisi Anda ini seperti helm pengering rambut. Anda menaruhnya di atas mohawk Anda, itu berfungsi, dan rambut Anda kering! Menjadi seorang teknisi memang ada manfaatnya.')
    RETURNING id INTO k_2003_menetes;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '炊', 'memasak', 47, 31, 'Tanpa <radical>api</radikal>, Anda akan <radikal>kekurangan</radikal> kemampuan untuk <kanji>memasak</kanji> apa pun. Anda benar-benar membutuhkan api untuk memasak dengan benar. Memiliki api akan memastikan usaha memasak apa pun yang Anda coba tidak akan gagal.', 'Anda <kanji>memasak</kanji> makanan Anda secara merata dengan <reading>mengayunkan</reading>ng (すい) bolak-balik di atas api. Anda mengayunkannya ke kiri, Anda mengayunkannya ke kanan. Anda mengayunkannya ke sana kemari. Semua ayunan ini memastikan makanan dimasak dengan benar.')
    RETURNING id INTO k_2004_memasak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '爽', 'menyegarkan', 47, 32, '<radical>besar</radical> <radical>harta</radical> <radical>harta</radical> <radical>harta</radical> <radical>harta</radical> <kanji>menyegarkan</kanji>! Maaf, saya tidak bisa mengucapkan harta karun harta karun tanpa mengucapkannya empat kali. Melihat? Saya melakukannya lagi. Bagaimanapun, harta karun harta karun yang besar ini sungguh menyegarkan. Sudah lama sekali Anda tidak menemukan harta karun, jadi menemukan harta karun sebesar ini sungguh menyegarkan.', 'Kamu pernah merasakan <reading>asam</reading> (さわ) di mulutmu karena tidak bisa menemukan harta karun harta karun dalam waktu yang lama, tapi sekarang setelah kamu menemukan yang besar ini, rasa asamnya sudah hilang sama sekali dan sangat <kanji>menyegarkan</kanji>!')
    RETURNING id INTO k_2005_menyegarkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '畳', 'tikar-tatami', 47, 33, 'Pada <radical>sawah</radical> terdapat <radical>dahi</radical> dengan <radical>topi</radical>. Letaknya di atas area <kanji>tatami mat</kanji>.', 'Siapa yang membuat altar <kanji>tatami mat</kanji> yang menyeramkan ini? Itu adalah <reading>Joe</reading> (じょう), buruh tani yang tinggal di desamu yang semakin memprihatinkan.')
    RETURNING id INTO k_2006_tikar_tatami;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '瞭', 'jernih', 47, 34, 'Gosokkan <radical>arang</radikal> di bawah <radical>mata</radikal> Anda jika Anda ingin melihat <kanji>dengan jelas</kanji>. Para pemain olah raga juga menggosokkan arang di bawah mata mereka agar dapat melihat dengan jelas dan jelas di bawah terik matahari.', 'Anda harus memiliki penglihatan yang <kanji>jelas</kanji> karena Anda akan berangkat dengan perahu <reading>baris</reading> (りょう) Anda. Cahaya dari air menyinari mata Anda dan Anda membutuhkan arang untuk menjernihkannya. Jika tidak, Anda akan menabrak pantai atau melewati air terjun hingga mati.')
    RETURNING id INTO k_2007_jernih;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '箸', 'sumpit', 47, 35, 'Anda memberikan <radical>bambu</radical> kepada <radical>seseorang</radical> dan mereka menjadikannya <kanji>sumpit</kanji>. Mereka sangat berbakat mengubah bambu menjadi sumpit bambu. Seseorang ini ahli dalam profesinya.', 'Sekarang gunakan <kanji>sumpit</kanji> itu untuk memakan <reading>hash</reading> (はし) coklat yang lezat! Untuk itulah sumpit dibuat. Untuk itulah mereka selalu dibuat.')
    RETURNING id INTO k_2008_sumpit;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '胴', 'batang-tubuh', 47, 36, '<radical>bulan</radical> <radical>sama</radical> dengan <kanji>batang tubuh</kanji> Anda. Anda harus memiliki tubuh yang sangat besar agar bisa sama dengan bulan.', '<kanji>batang badan</kanji>mu menjadi sangat besar karena semua <reading>adonan</reading>kacang (どう) yang kamu makan. Anda makan begitu banyak donat sehingga tubuh Anda menjadi seukuran bulan dan kemudian Anda melayang ke luar angkasa dengan tarikan gravitasi Anda sendiri dan segalanya. Donat adalah hal yang berbahaya.')
    RETURNING id INTO k_2009_batang_tubuh;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '芯', 'sumbu', 47, 37, 'Ada <radikal>bunga</radikal> yang tumbuh di sekitar <radikal>hati</radikal> dengan <kanji>sumbu</kanji> yang mencuat darinya. Jantung adalah pengorbanan kepada dewa-dewa tua dan energi kehidupan dikeluarkan dari sumbu yang terbakar untuk memberi makan bunga. Sumbu terbakar, melepaskan kekuatan jantung yang menyebar ke tanah di sekitar jantung sehingga menyebabkan bunga tumbuh.', 'Terkadang <kanji>sumbu</kanji> yang membakar hati tidak cukup untuk membuat bunga tumbuh dengan baik dan mereka haus akan darah dari <reading>tulang kering</reading> (しん) Anda. Jadi, kamu mengiris tulang keringmu dengan pisau pengorbanan dan meneteskan darahmu ke bunga iblis yang haus.')
    RETURNING id INTO k_2010_sumbu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '虹', 'pelangi', 47, 38, '<radical>serangga</radikal> yang mengkhususkan diri dalam <radikal>konstruksi</radikal> membangun <kanji>pelangi</kanji>. Pernahkah Anda bertanya-tanya dari mana datangnya pelangi? Serangga konstruksi membangunnya. Serangga konstruksi membangun pelangi.', 'Serangga pembangun <kanji>pelangi</kanji> ini sangat <membaca>membutuhkan</reading> (にじ). Dia membutuhkan karena dia membutuhkan semua orang untuk melihat pelanginya dan memuji dia atas apa yang telah dia lakukan. "Lihatlah pelangiku! Lihatlah betapa bagusnya pelangiku! Aku sangat membutuhkan! Membutuhkan pujian dan pengakuan!"')
    RETURNING id INTO k_2011_pelangi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '巾', 'handuk', 47, 39, 'Kanji dan radikalnya sama, jadi mengingat arti kanji ini semudah memastikan Anda mengetahui radikal untuk <radical>handuk</radical> terlebih dahulu! Jika Anda tahu radikalnya, Anda pasti tahu kanji ini juga berarti <kanji>handuk</kanji>.', 'Anda tahu siapa yang menyukai <kanji>handuk</kanji>? <read>Kerabat</reading>g (きん) dari Inggris. Dia sangat menyukai handuk sehingga dia berkeliling dan menaruh きん di setiap handuk di negeri ini, jadi kamu selalu memikirkannya setiap kali kamu menggunakannya.')
    RETURNING id INTO k_2049_handuk;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '煎', 'memanggang', 47, 40, 'Jika hanya <radical>depan</radikal> sesuatu yang <radikal>mendidih</radikal>, Anda harus <kanji>memanggang</kanji> berikutnya. Memanggang adalah cara terbaik untuk memasak sesuatu hingga matang — terutama jika Anda hanya berhasil merebus bagian depannya saja.', 'Apa yang ingin kamu <kanji>panggang</kanji>? Sebuah <membaca>cen</reading>taur (せん). Mudah-mudahan Anda memiliki oven yang cukup besar untuk memanggangnya, karena centaur tidaklah kecil.')
    RETURNING id INTO k_8991_memanggang;
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1977_menghancurkan, 'Menghancurkan', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_1977_menghancurkan, 'さい', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_1977_menghancurkan, 'くだ', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1978_lengket, 'Lengket', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_1978_lengket, 'ねん', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_1978_lengket, 'ねば', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1979_kosmetik, 'Kosmetik', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_1979_kosmetik, 'しょう', true, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1980_penipuan, 'Penipuan', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_1980_penipuan, 'ぎ', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_1980_penipuan, 'あざむ', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1981_berbohong, 'Berbohong', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_1981_berbohong, 'さ', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_1981_berbohong, 'いつわ', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1982_kabut, 'Kabut', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_1982_kabut, 'きり', true, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_1982_kabut, 'む', false, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1983_pohon_willow, 'Pohon willow', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_1983_pohon_willow, 'りゅう', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_1983_pohon_willow, 'やなぎ', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1984_italia, 'Italia', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_1984_italia, 'い', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_1984_italia, 'だ', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1985_membantu, 'Membantu', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_1985_membantu, 'さ', true, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1986_shaku, 'Shaku', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1986_shaku, 'Kaki Jepang', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_1986_shaku, 'しゃく', true, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1987_menyedihkan, 'Menyedihkan', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_1987_menyedihkan, 'あい', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_1987_menyedihkan, 'あわ', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1988_bibir, 'Bibir', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_1988_bibir, 'くちびる', true, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_1988_bibir, 'しん', false, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1989_pagar, 'Pagar', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_1989_pagar, 'へい', true, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1990_menabrak, 'Menabrak', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_1990_menabrak, 'つい', true, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1991_kemiripan, 'Kemiripan', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_1991_kemiripan, 'じょ', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_1991_kemiripan, 'ごと', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1992_wanita_tua, 'Wanita Tua', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_1992_wanita_tua, 'ば', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_1992_wanita_tua, 'ばあ', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1993_jurang, 'Jurang', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_1993_jurang, 'がけ', true, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_1993_jurang, 'がい', false, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1994_topi, 'Topi', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_1994_topi, 'ぼう', true, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1995_uang_tunai, 'Uang tunai', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_1995_uang_tunai, 'へい', true, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1996_sakit_hati, 'Sakit hati', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_1996_sakit_hati, 'こん', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_1996_sakit_hati, 'うら', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1997_membenci, 'Membenci', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_1997_membenci, 'ぞう', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_1997_membenci, 'にく', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1998_istirahat, 'Istirahat', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_1998_istirahat, 'けい', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_1998_istirahat, 'いこ', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1999_kipas_lipat, 'Kipas Lipat', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_1999_kipas_lipat, 'せん', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_1999_kipas_lipat, 'おうぎ', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_1999_kipas_lipat, 'あお', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2000_pintu, 'Pintu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2000_pintu, 'Pintu Berengsel', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2000_pintu, 'とびら', true, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2000_pintu, 'ひ', false, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2001_menyisipkan, 'Menyisipkan', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2001_menyisipkan, 'そう', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2001_menyisipkan, 'さ', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2002_telapak, 'Telapak', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2002_telapak, 'しょう', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2002_telapak, 'てのひら', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2003_menetes, 'Menetes', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2003_menetes, 'てき', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2003_menetes, 'したた', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2003_menetes, 'しずく', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2004_memasak, 'Memasak', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2004_memasak, 'すい', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2004_memasak, 'た', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2005_menyegarkan, 'Menyegarkan', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2005_menyegarkan, 'さわ', true, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2005_menyegarkan, 'そう', false, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2006_tikar_tatami, 'tikar tatami', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2006_tikar_tatami, 'じょう', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2006_tikar_tatami, 'たたみ', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2007_jernih, 'Jernih', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2007_jernih, 'りょう', true, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2008_sumpit, 'Sumpit', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2008_sumpit, 'はし', true, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2009_batang_tubuh, 'Batang tubuh', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2009_batang_tubuh, 'どう', true, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2010_sumbu, 'Sumbu', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2010_sumbu, 'しん', true, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2011_pelangi, 'Pelangi', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2011_pelangi, 'にじ', true, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2011_pelangi, 'こう', false, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2049_handuk, 'Handuk', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2049_handuk, 'きん', true, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_8991_memanggang, 'Memanggang', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_8991_memanggang, 'せん', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_8991_memanggang, 'い', false, 'kunyomi');

  -- 3. VOCABULARIES
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '心願', 'keinginan-yang-sepenuh-hati', 47, 41, 'Hal yang <kanji>hati</kanji> <kanji>minta</kanji> Anda adalah apa yang diinginkan hati Anda. Ini adalah <vocabulary>keinginan tulus</vocabulary> Anda.

心願 sering ditemukan dalam frasa 心願成就 (pemenuhan keinginan yang tulus), biasa digunakan dalam konteks ritual sembahyang di kuil Shinto atau kuil Buddha.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.')
    RETURNING id INTO v_3638_keinginan_yang_sepenuh_hati;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '取り分け', 'khususnya', 47, 42, 'Anda 取り (mengambil) dan kemudian 分け (membagi) sesuatu. Namun Anda harus <vocabulary>terutama</vocabulary> berhati-hati untuk tidak memberikan bagian yang tidak setara kepada siapa pun. Hal ini sangat penting karena kita berurusan dengan uang, dan orang-orang akan menyerang dan menyerang Anda jika Anda tidak terlalu akurat.

Perhatikan bahwa kata ini biasanya ditulis dalam huruf kana.', 'Bacaannya berasal dari kata 取る dan 分ける. Selama Anda mengetahui kata-kata itu, Anda seharusnya bisa membaca yang ini juga.')
    RETURNING id INTO v_4072_khususnya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '女権', 'hak-hak-perempuan', 47, 43, '<kanji>hak</kanji> seorang <kanji>wanita</kanji> terdiri dari <vocabulary>hak-hak wanita</vocabulary>.

Ini adalah kata formal yang sering digunakan di awal kata majemuk, seperti 女権拡張運動 (gerakan perluasan hak-hak perempuan). Dalam percakapan sehari-hari, Anda cukup mengucapkan 女性の権利 untuk membicarakan hak-hak perempuan.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.')
    RETURNING id INTO v_4435_hak_hak_perempuan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '岳', 'puncak', 47, 44, '<kanji>puncak</kanji> gunung adalah <vocabulary>puncak</vocabulary> atau <vocabulary>gunung</vocabulary>.', 'Karena kata ini terdiri dari satu kanji, kemungkinan besar menggunakan bacaan kun''yomi. Anda tidak mempelajari bacaan ini, jadi inilah mnemonik untuk membantu Anda: 

Saat Anda mendaki ke puncak <vocabulary>peak</vocabulary>, Anda begitu takjub menemukan vegetasi di ketinggian ini. Satu-satunya yang tumbuh di sini, dan dalam jumlah besar, adalah <reading>竹</reading> (たけ). Faktanya, hal ini menghambat kemajuan Anda ke puncak, dan itu merepotkan. Seolah-olah sedang menjaga sesuatu...')
    RETURNING id INTO v_6709_puncak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '擦れる', 'untuk-digosok', 47, 45, 'Ini adalah versi intransitif dari 擦る, jadi artinya <vocabulary>digosok</vocabulary>. Hal ini sering kali menyiratkan kerusakan, yang dalam hal ini dapat berarti <vocabulary>diseret</vocabulary> atau <vocabulary>tergores</vocabulary>, misalnya saat lutut Anda tersangkut di dinding yang kasar.', 'Anda tentu tidak ingin <vocabulary>lutut Anda terserempet</vocabulary>. Jika itu terjadi, Anda akan <reading>menuntut</reading> (す). Namun <reading>cos</reading>t (こす) untuk menggugat cukup tinggi, jadi berhati-hatilah agar tidak terkena dampaknya!

Tergantung pada bacaan yang Anda gunakan, nuansanya sedikit berubah. Misalnya, すれる adalah pilihan yang biasa digunakan saat Anda berbicara tentang lutut Anda yang tergores atau celana jins yang sudah usang. Untuk kegunaan lain, keduanya sering kali dapat dipertukarkan.')
    RETURNING id INTO v_6721_untuk_digosok;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '万歳', 'banzai', 47, 46, '<kanji>Sepuluh ribu</kanji> <kanji>tahun</kanji>! Itu waktu yang lama. Ini adalah kata untuk frasa bahasa Jepang yang berubah menjadi bahasa Inggris, <vocabulary>banzai</vocabulary>!

万歳 adalah kata ceria yang digunakan untuk meneriakkan "<vocabulary>hore</vocabulary>!" saat merayakan sesuatu yang baik. Karena biasanya diucapkan dengan kedua tangan terangkat, tindakan <vocabulary>mengangkat tangan</vocabulary> juga bisa disebut sebagai 万歳. Hal ini sering digunakan ketika berbicara dengan anak-anak, seperti ketika menyuruh mereka mengangkat tangan untuk melepas baju.

Dan karena mengangkat tangan juga bisa berarti "<vocabulary>Saya menyerah</vocabulary>" di Jepang, 万歳 terkadang bisa berarti demikian juga. Jadi pada dasarnya, itu adalah "Hore, kita berhasil!" atau "Itu saja, aku sudah selesai." Ini benar-benar mencakup semua basis Anda!', 'Pembacaannya tidak sama dengan pembacaan normal 万. Itu ばん, bukan まん. Dan 歳 mendapat rendaku. Tapi, karena kata "banzai" sangat terkenal, Anda mungkin masih ingat bacaan ini: ばんざい (<vocabulary>Hore</vocabulary>)!

Dan jika terlalu sulit dan Anda tidak dapat mengingatnya, Anda masih dapat mengucapkan ばんざい (<vocabulary>Saya menyerah</vocabulary>). Pada dasarnya, pada akhirnya Anda akan mengucapkan ばんざい, jadi pada akhirnya Anda akan mengingatnya… setidaknya secara teori.')
    RETURNING id INTO v_6993_banzai;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '零す', 'untuk-menumpahkan-sesuatu', 47, 47, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>nol</kanji>, namun versi vocab verbanya berarti <vocabulary>menumpahkan sesuatu</vocabulary> atau <vocabulary>menjatuhkan sesuatu</vocabulary>. Anggap saja seperti ini, jika Anda menumpahkan sesuatu, pada akhirnya akan mencapai <kanji>nol</kanji>.', 'Bayangkan Anda sedang minum air bersama seseorang. Saat Anda berdua merebusnya bersama-sama, airnya mendidih cukup deras. Namun berhati-hatilah — Anda akan <read>menumpahkan</reading> air panas ke mana-mana!')
    RETURNING id INTO v_7007_untuk_menumpahkan_sesuatu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '眺め', 'melihat', 47, 48, '眺める berarti "menatap". Versi kata bendanya adalah <vocabulary>view</vocabulary> atau <vocabulary>scene</vocabulary>. Itu yang sedang Anda lihat.', 'Bacaannya sama dengan 眺める.')
    RETURNING id INTO v_7054_melihat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '湿らせる', 'untuk-melembabkan', 47, 49, 'Ingat bagaimana 湿る berarti "menjadi lembab"? Ini adalah versi di mana Anda melakukan pelembapan, menjadikannya <vocabulary>melembabkan</vocabulary> atau <vocabulary>meredam</vocabulary>.', 'Bacaannya sama dengan 湿る.')
    RETURNING id INTO v_7056_untuk_melembabkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '砕石', 'puing', 47, 50, '<kanji>Batu</kanji> yang dihancurkan adalah batu yang dihancurkan. Itu adalah <vocabulary>puing-puing</vocabulary> dan <vocabulary>pecahan batu</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7058_puing;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '粉砕', 'pembubukan', 47, 51, 'Untuk <kanji>bubuk</kanji> saya akan <kanji>menghancurkan</kanji>! Jika saya melakukan itu, itu adalah <vocabulary>penghancuran</vocabulary> dan <vocabulary>smashing</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7059_pembubukan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '粘る', 'menjadi-lengket', 47, 52, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>lengket</kanji> dan versi kosakata kata kerjanya adalah <vocabulary>menjadi lengket</vocabulary>. Bisa juga berarti <vocabulary>bertekun</vocabulary>, karena jika Anda lekat dengan keadaan, pantang menyerah dan pantang menyerah. Anda benar-benar bertahan dengan bertahan.', 'Apakah saya akan menyerah? Saya <read>tidak akan pernah</reading> (ねば) menyerah! Aku juga tidak akan pernah lepas darimu.')
    RETURNING id INTO v_7060_menjadi_lengket;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '粘土', 'tanah-liat', 47, 53, '<kanji>Lengket</kanji> <kanji>tanah</kanji> adalah <vocabulary>tanah liat</vocabulary>. Coba pikirkan tentang merasakan tanah liatnya. Lengket apalagi kalau masih segar dan basah ya?', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7061_tanah_liat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '粘着', 'adhesi', 47, 54, 'Jika sesuatu yang <kanji>lengket</kanji> <kanji>memakai</kanji> sesuatu yang lain di atasnya, maka benda itu akan saling menempel karena ada <vocabulary>adhesi</vocabulary> di antara keduanya.

粘着 mengacu pada sifat perekat suatu bahan, terutama pada kata majemuk seperti 粘着テープ (pita perekat). Istilah ini sering kali menggambarkan perilaku orang-orang yang tidak bisa melepaskan suatu masalah tertentu dan terus membicarakannya dengan cara yang tidak diinginkan.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7062_adhesi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '化粧', 'rias', 47, 55, '<kanji>Ubah</kanji> wajah Anda dengan <kanji>kosmetik</kanji>! Ini melalui <vocabulary>makeup</vocabulary> atau, tentu saja, <vocabulary>kosmetik</vocabulary>.', 'Bacaan 化 merupakan bacaan baru, け. Untuk mengingat hal ini, pikirkan tentang seseorang yang memakai <vocabulary>riasan</vocabulary>. Mereka selesai memakainya, lalu Anda berkata "<reading>K, tunjukkan</reading> (けしょう) saya!"')
    RETURNING id INTO v_7063_rias;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '欺く', 'untuk-menipu', 47, 56, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>penipuan</kanji>, jadi ketika Anda melakukan penipuan, Anda <vocabulary>menipu</vocabulary> seseorang.', 'Sebagai manusia, semua orang pasti tahu siapa Anda. Anda tidak bisa menipu orang seperti itu. Tapi, <reading>sebagai moo</reading> (あざむ)... yang saya maksud adalah sapi... tidak akan ada yang tahu siapa Anda.')
    RETURNING id INTO v_7064_untuk_menipu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '詐欺', 'tipuan', 47, 57, 'Jika ada <kanji>kebohongan</kanji> dan <kanji>kebohongan</kanji> dalam interaksi Anda dengan orang lain, Anda melakukan <vocabulary>penipuan</vocabulary>, Anda melakukan <vocabulary>scam</vocabulary>, Anda <vocabulary>menipu</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7065_tipuan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '詐取', 'menipu', 47, 58, 'Anda menggunakan <kanji>kebohongan</kanji> untuk <kanji>mengambil</kanji> apa yang Anda inginkan. Saat itulah Anda <vocabulary>menipu</vocabulary> atau <vocabulary>menipu</vocabulary> seseorang untuk mendapatkan barangnya. Beraninya kamu!

詐取 mengacu pada tindakan memperoleh sesuatu secara curang, biasanya uang atau properti, melalui praktik penipuan. Istilah ini bersifat formal dan sering digunakan dalam konteks hukum.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7066_menipu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '詐称', 'kekeliruan', 47, 59, 'Jika Anda <kanji>berbohong</kanji> tentang <kanji>gelar</kanji> Anda, gelar yang mewakili siapa Anda, maka itu adalah <vocabulary>kekeliruan</vocabulary>. Sebuah <vocabulary>pernyataan yang salah</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7067_kekeliruan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '霧', 'kabut', 47, 60, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Pembacaan kosakatanya sama dengan yang Anda pelajari dengan kanji.')
    RETURNING id INTO v_7068_kabut;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '黒い霧', 'kabut-tebal', 47, 61, '<kanji>kabut</kanji> hitam</kanji> akan menjadi <vocabulary>kabut tebal</vocabulary> atau <vocabulary>kerudung hitam</vocabulary> yang menutupi tindakan atau kejahatan mencurigakan. Ini bukanlah awan kabut atau selubung fisik, ini adalah tempat Anda menyembunyikan perbuatan buruk Anda, secara metaforis.', 'Bacaannya berasal dari 黒い dan 霧.')
    RETURNING id INTO v_7069_kabut_tebal;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '朝霧', 'kabut-pagi', 47, 62, '<kanji>Pagi</kanji> <kanji>kabut</kanji> adalah <vocabulary>kabut pagi</vocabulary>, karena merupakan kabut di pagi hari. Menurutku, ini jenis kabut terbaik.', 'Bacaannya adalah bacaan yang dipelajari dengan kedua kanji tersebut. Hati-hati dengan rendaku.')
    RETURNING id INTO v_7070_kabut_pagi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '柳', 'pohon-willow', 47, 63, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', '<kanji>willow</kanji> yang Anda miliki di luar adalah pohon willow yang cerewet, selalu meminta lebih banyak air. Itu <reading>yah cerewet</reading> <vocabulary>weeping willow</vocabulary>.')
    RETURNING id INTO v_7071_pohon_willow;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '花柳', 'distrik-lampu-merah', 47, 64, '<kanji>bunga</kanji> <kanji>willow</kanji> karena alasan tertentu adalah <vocabulary>distrik lampu merah</vocabulary>. Bayangkan saja sebuah distrik lampu merah yang teduh, dan tepat di tengahnya ada pohon willow yang berbunga.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7072_distrik_lampu_merah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '川柳', 'komik-haiku', 47, 65, '<kanji>sungai</kanji> dengan <kanji>willow</kanji>... lucu sekali! <vocabulary>komik haiku</vocabulary> yang hebat sekali. Coba pikirkan komik haiku tentang sungai willow, jika bisa.

Sungai Willow
Mengalir ke hulu seperti salmon
Ini tidak lucu', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Dan untuk kali ini kanji 川 tidak menggunakan bacaan kun''yomi. Saat Anda memikirkan <vocabulary>komik haiku</vocabulary>, pikirkan sesuatu yang lucu... seperti <reading>cen</reading>taur (せん), melakukan aksi stand-up dengan haiku komedi.')
    RETURNING id INTO v_7073_komik_haiku;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '伊勢', 'ise', 47, 66, 'Tempat dengan <kanji>kekuatan</kanji> <kanji>Italia</kanji> adalah tempat yang dikenal sebagai <vocabulary>Ise</vocabulary>. Itu adalah wilayah Jepang yang memiliki semenanjung yang bagus, menurutku. Langsung membaca untuk yang satu ini mungkin merupakan pilihan terbaik Anda.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri. Hati-hati saja, karena ini menggunakan せ, bukan せい yang biasa Anda lihat.')
    RETURNING id INTO v_7074_ise;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '伊達', 'keelokan-semarak', 47, 67, 'Apa yang <kanji>Italia</kanji> <kanji>capai</kanji> berbeda dari yang lain? <vocabulary>Flamboyan</vocabulary>! Mereka mendefinisikan ulang <vocabulary>chic</vocabulary> dan <vocabulary>stylishness</vocabulary>, memukau semua orang dengan penampilan mereka yang tidak malu-malu.

Kata ini bukan hanya tentang fashion; itu juga untuk tindakan yang flamboyan dan menarik perhatian. Meskipun kata ini kuno, Anda masih menemukannya dalam frasa seperti 伊達眼鏡 (kacamata fashion) atau 伊達に〜はしていない (tidak melakukan sesuatu untuk pertunjukan).', 'Pembacaan kedua kanji tersebut belum pernah Anda lihat sebelumnya. Jadi, inilah mnemonik untuk membantu Anda mengingat:

Jadi, bagaimana Italia mencapai <kosakata>flamboyan</vocabulary>-nya? Karena ini mewujudkan esensi <reading>Da</reading>n<reading>te</reading> (だて) yang berani—bersemangat, menawan, dan <vocabulary>chic</vocabulary> dalam segala hal. Di Italia, pengaruh Dante merupakan bukti nyata keanggunan yang flamboyan.')
    RETURNING id INTO v_7075_keelokan_semarak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '補佐', 'bantuan', 47, 68, '<kanji>tambahan</kanji> dari <kanji>bantuan</kanji> adalah bentuk <vocabulary>bantuan</vocabulary>.

補佐 adalah kata formal untuk tindakan memberikan <vocabulary>dukungan</vocabulary> kepada seorang pemimpin atau orang yang bertanggung jawab. Ini juga bisa merujuk pada peran resmi atau organisasi, seperti 部長補佐 (seorang manajer umum <vocabulary>asisten</vocabulary>).', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7076_bantuan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '大佐', 'kolonel', 47, 69, '<kanji>besar</kanji> <kanji>bantuan</kanji> adalah <vocabulary>kolonel</vocabulary> atau <vocabulary>kapten angkatan laut</vocabulary>. Mereka mengarungi lautan, membantu orang-orang yang membutuhkan dengan melawan orang-orang jahat.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7077_kolonel;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '少佐', 'besar', 47, 70, '<kanji>sedikit</kanji> yang <kanji>membantu</kanji> adalah <vocabulary>mayor</vocabulary> atau <vocabulary>letnan komandan</vocabulary>. Mereka adalah segelintir orang yang siap membantu di ketentaraan, menurut kanji kata ini.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7078_besar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '中佐', 'letnan-kolonel', 47, 71, '<kanji>tengah</kanji> <kanji>bantuan</kanji> di angkatan darat atau laut adalah <vocabulary>letnan kolonel</vocabulary> atau <vocabulary>panglima angkatan laut</vocabulary>. Saya kira peringkat ini berada di skala peringkat menengah atau menengah ke atas?', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7079_letnan_kolonel;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '尺', 'shaku', 47, 72, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji.')
    RETURNING id INTO v_7080_shaku;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '巻尺', 'pita-pengukur', 47, 73, 'Sebuah <kanji>gulungan</kanji> dari <kanji>shaku</kanji>. Jadi, gulungannya sudah digulung, kan? Dan shaku adalah bentuk pengukuran Jepang yang lebih tua. Jika benda pengukur digulung ke dalam wadah seperti gulungan... akan jadi apa benda itu? <vocabulary>pita pengukur</vocabulary>!', 'Bacaan 巻 adalah bacaan 巻く yang dimasukkan ke dalam kanji. Pembacaan 尺 adalah pembacaan normal dari 尺. Hati-hati dengan rendaku.')
    RETURNING id INTO v_7081_pita_pengukur;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '哀れ', 'disayangkan', 47, 74, 'Jika ada sesuatu yang <kanji>menyedihkan</kanji> maka Anda harus memiliki <vocabulary>kasihan</vocabulary> padanya. Seharusnya kamu juga merasakan sedikit <vocabulary>kesedihan</vocabulary> dan <vocabulary>kesedihan</vocabulary> karenanya, karena sungguh, menyedihkan sekali!', 'Kamu melihat sesuatu yang kamu rasakan sangat menyedihkan sehingga kamu merasa <vocabulary>kasihan</vocabulary> dan hanya berpikir... <reading>aww</reading> (あわ), itu sungguh menyedihkan.')
    RETURNING id INTO v_7082_disayangkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '可哀想', 'menyedihkan', 47, 75, 'Skenario <kanji>mungkin</kanji> <kanji>menyedihkan</kanji> yang mungkin Anda <kanji>bayangkan</kanji> mungkin tidak hanya menyedihkan. Ini benar-benar <vocabulary>menyedihkan</vocabulary> dan <vocabulary>menyedihkan</vocabulary>, pastinya.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Ya, setidaknya sebagian besar memang demikian. Untuk mengingat bacaan 哀 bayangkan seseorang yang <vocabulary>menyedihkan</vocabulary> kehilangan rumahnya. Mereka mungkin <vocabulary>menyedihkan</vocabulary> tetapi suatu saat setelah kehilangan rumah, mereka memutuskan bahwa kap mobil Anda akan menjadi tempat tinggal yang baik. Anda pasti bertanya kepada mereka, "<reading>Mengapa</reading> (わい) mobil saya?" Ada begitu banyak mobil lain yang bisa digunakan oleh orang menyedihkan ini untuk berkemah, tetapi mereka memilih mobil Anda.')
    RETURNING id INTO v_7083_menyedihkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '悲哀', 'duka', 47, 76, 'Aku <kanji>sedih</kanji> dan <kanji>menyedihkan</kanji> dalam perasaanku. <vocabulary>kesedihan</vocabulary> yang begitu mendalam! <vocabulary>kesedihan</vocabulary> dari perasaan sedih dan menyedihkan saya.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.')
    RETURNING id INTO v_7084_duka;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '唇', 'bibir', 47, 77, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji.')
    RETURNING id INTO v_7085_bibir;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '下唇', 'bibir-bawah', 47, 78, '<kanji>bawah</kanji> <kanji>bibir</kanji> adalah <vocabulary>bibir bawah</vocabulary> atau <vocabulary>bibir bawah</vocabulary> Anda.', 'したくちびる hanya menggabungkan bacaan vocab kun''yomi untuk 下 dan bacaan kun''yomi yang Anda pelajari dengan kanji untuk 唇.')
    RETURNING id INTO v_7086_bibir_bawah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '上唇', 'bibir-atas', 47, 79, '<kanji>di atas</kanji> <kanji>bibir</kanji> adalah <vocabulary>bibir atas</vocabulary>.', 'Pembacaan 上 agak aneh, melainkan うわ, bukan うえ. Ini hampir seperti うえ, hanya sedikit berbeda.')
    RETURNING id INTO v_7087_bibir_atas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '塀', 'dinding', 47, 80, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji.')
    RETURNING id INTO v_7088_dinding;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '土塀', 'tembok-lumpur', 47, 81, '<kanji>tanah</kanji> <kanji>pagar</kanji> adalah pagar yang terbuat dari tanah. Biasanya ini berbentuk <vocabulary>dinding lumpur</vocabulary> atau <vocabulary>dinding tanah</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri. Hati-hati dengan rendaku.')
    RETURNING id INTO v_7089_tembok_lumpur;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '撃墜', 'menembak-jatuh', 47, 82, '<kanji>serangan</kanji> yang menyebabkan <kanji>tabrakan</kanji> adalah saat Anda <vocabulary>menembak jatuh</vocabulary> sesuatu, biasanya pesawat terbang.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7090_menembak_jatuh;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '墜落', 'menabrak', 47, 83, 'Jika Anda <kanji>jatuh</kanji> dan <kanji>jatuh</kanji> maka Anda <vocabulary>jatuh</vocabulary> atau <vocabulary>jatuh</vocabulary>, atau mungkin keduanya.

墜落 mengacu pada jatuh dari ketinggian dan berakhir dengan tabrakan, seperti pesawat terbang atau satelit yang jatuh ke tanah.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7091_menabrak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '欠如', 'kekurangan', 47, 84, 'Anda <kanji>kurang</kanji> <kanji>kesamaan</kanji> dengan apa pun di luar sana. Anda benar-benar <vocabulary>kekurangan</vocabulary> sesuatu yang memberi Anda kemiripan. Itu adalah <vocabulary>kekurangan</vocabulary>, atau semacamnya.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7092_kekurangan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '突如', 'tiba-tiba', 47, 85, 'Ketika sesuatu memiliki <kanji>tiba-tiba</kanji> <kanji>kemiripan</kanji>, kita menyebutnya terjadi <vocabulary>tiba-tiba</vocabulary>, atau <vocabulary>tiba-tiba</vocabulary>.

Perhatikan bahwa kata ini relatif formal dan agak sastra.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7093_tiba_tiba;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '老婆', 'wanita-tua', 47, 86, '<kanji>lansia</kanji> <kanji>wanita tua</kanji> hanyalah <vocabulary>wanita tua</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7095_wanita_tua;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', 'お婆さん', 'nenek', 47, 87, 'Seorang <kanji>wanita tua</kanji>, meskipun memiliki gelar kehormatan dan お tetaplah <vocabulary>wanita tua</vocabulary>. Dia mungkin juga <vocabulary>nenek</vocabulary> Anda, jadi bersikaplah baik!', 'Meskipun dia adalah <vocabulary>nenek</vocabulary> Anda, ada sesuatu yang salah. Kamu memperhatikan wajahnya dengan seksama. Dia seekor domba! <read>Baa!</reading> (ばあ).')
    RETURNING id INTO v_7096_nenek;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '崖', 'jurang', 47, 88, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Karena ini adalah kata yang terdiri dari satu kanji dan tidak ada yang lain, Anda dapat berasumsi bahwa kata ini akan menggunakan bacaan kun''yomi. Pembacaan yang Anda pelajari untuk kanji ini kebetulan merupakan pembacaan kun''yomi juga. Jadi jika Anda tahu kanjinya, Anda tahu bacaannya.')
    RETURNING id INTO v_7097_jurang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '布巾', 'kain-piring', 47, 89, '<kanji>kain</kanji> <kanji>handuk</kanji> hanyalah sebuah handuk kain. Pada dasarnya ini dikenal sebagai <vocabulary>kain piring</vocabulary> atau <vocabulary>handuk teh</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7098_kain_piring;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '雑巾', 'kain-debu', 47, 90, '<kanji>lain-lain</kanji> <kanji>kain</kanji> adalah <vocabulary>kain debu</vocabulary> atau <vocabulary>kain rumah</vocabulary>. Itu hanya kain yang Anda gunakan untuk hal-hal acak.', 'Pembacaan 雑 berbeda dari apa yang telah Anda pelajari. Bukannya ざつ, tapi ぞう. Bayangkan saja menggunakan <vocabulary>kain debu</vocabulary> ini untuk menyeka <reading>象</reading> (ぞう). Batangnya sangat berdebu.')
    RETURNING id INTO v_7099_kain_debu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '帽子', 'topi', 47, 91, '<kanji>topi</kanji> <kanji>anak</kanji> adalah <vocabulary>topi</vocabulary> atau <vocabulary>cap</vocabulary>. Sayangnya, itu tidak dibuat dari anak-anak, kecuali Anda gila.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7100_topi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '貨幣', 'uang', 47, 92, '<kanji>pengangkutan</kanji> <kanji>uang tunai</kanji> masuk. Apa yang dimaksud dengan pengiriman uang tunai? Itu hanya <vocabulary>uang</vocabulary>, <vocabulary>currency</vocabulary>, atau <vocabulary>coinage</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7101_uang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '紙幣', 'uang-kertas', 47, 93, '<kanji>Kertas</kanji> <kanji>uang tunai</kanji> adalah <vocabulary>uang kertas</vocabulary>.', 'Kata ini menggunakan bacaan on''yomi untuk 紙 meskipun Anda bersusah payah mempelajari bacaan kun''yomi. Tahukah kamu <vocabulary>uang kertas</vocabulary> terbuat dari <reading>shee</reading>p (し)? Ya, sebagian domba, tapi pasti ada domba di sana. Itu sebabnya Anda bisa mencuci uang kertas bersama kaos Anda di mesin cuci.')
    RETURNING id INTO v_7102_uang_kertas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '恨む', 'untuk-menyimpan-dendam', 47, 94, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>dendam</kanji> dan versi kosakata kata kerjanya adalah <vocabulary>to hold a grudge</vocabulary>.', 'Siapa yang paling kamu benci? Itu adalah <reading>kamu, Ra</reading> (うら). Kamu dan matahari bodohmu.')
    RETURNING id INTO v_7103_untuk_menyimpan_dendam;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '痛恨', 'menyesali', 47, 95, '<kanji>rasa sakit</kanji> <kanji>dendam</kanji> adalah rasa sakit yang Anda rasakan karena dendam. Aku harap aku bisa mengubah dendamku. Ini adalah <vocabulary>penyesalan</vocabulary> saya.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7104_menyesali;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '憎む', 'untuk-membenci', 47, 96, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>benci</kanji> dan versi kosakata kata kerjanya adalah <vocabulary>to hat</vocabulary> atau <vocabulary>to detest</vocabulary>.', 'Apa yang paling kamu benci dan benci? <membaca>肉</membaca> (にく). Hal itu menjijikkan, dan Anda membencinya.')
    RETURNING id INTO v_7105_untuk_membenci;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '愛憎', 'cinta-dan-benci', 47, 97, 'Jika Anda memiliki <kanji>cinta</kanji> dan <kanji>benci</kanji> maka Anda memiliki <vocabulary>cinta dan benci</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7106_cinta_dan_benci;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '憩う', 'untuk-beristirahat', 47, 98, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>beristirahat</kanji> dan versi kosakata kata kerjanya adalah <vocabulary>to rest</vocabulary> atau <vocabulary>to relax</vocabulary>.', 'Saya akan <vocabulary>beristirahat</vocabulary> dan memainkan beberapa <reading>Ico</reading> (いこ) di PlayStation lama.')
    RETURNING id INTO v_7107_untuk_beristirahat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '休憩', 'istirahat', 47, 99, '<kanji>istirahat</kanji> <kanji>istirahat</kanji> adalah <vocabulary>istirahat</vocabulary>. <vocabulary>istirahat</vocabulary>. <vocabulary>reses</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7108_istirahat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '扇ぐ', 'untuk-penggemar', 47, 100, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>kipas lipat</kanji> dan karena Anda tidak melakukan "kipas lipat" apa pun, kata ini berarti <vocabulary>mengipasi</vocabulary>.', 'Bayangkan diri Anda mencoba <vocabulary>mengipasi</vocabulary> diri Anda dengan seorang penggemar <reading>青</reading> (あお). Entah kenapa kipas berwarna biru terasa lebih sejuk. Mungkin karena warnanya es/air?')
    RETURNING id INTO v_7109_untuk_penggemar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '扇風機', 'kipas-listrik', 47, 101, '<kanji>kipas lipat</kanji> <kanji>angin</kanji> <kanji>mesin</kanji> adalah mesin yang meniupkan angin seperti kipas lipat. Itu adalah <vocabulary>kipas listrik</vocabulary> atau <vocabulary>kipas elektronik</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri. Hati-hati dengan rendaku.')
    RETURNING id INTO v_7110_kipas_listrik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '扇子', 'kipas-lipat', 47, 102, '<kanji>anak</kanji> dari <kanji>kipas lipat</kanji>, karena alasan tertentu, adalah <vocabulary>kipas lipat</vocabulary>. Saya kira ada berbagai ukuran kipas lipat, dan ini adalah jenis yang lebih kecil dan mudah diatur yang dapat Anda bawa dengan mudah dan membuatnya lebih kecil dengan melipatnya, itulah sebabnya kipas lipat ini merupakan versi "anak-anak". Tapi masih kipas lipat.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda pernah melihat す yang dibaca untuk 子 sebelumnya, namun berikut adalah mnemonik untuk berjaga-jaga: 

Bayangkan bagaimana kamu secara tidak sengaja mengipasi tetesan keringat ke wajah seorang pria saat kamu mengipasi dirimu terlalu keras dengan <vocabulary>kipas lipat</vocabulary>, menyebabkan dia <reading>menuntut</reading> (す). Dituntut karena kecerobohan kipas lipat?! Orang Amerika benar-benar sadar hukum...')
    RETURNING id INTO v_7111_kipas_lipat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '扉', 'pintu', 47, 103, 'Seperti kanji, ini berarti <vocabulary>pintu</vocabulary>.

Anda sudah mempelajari 戸 (pintu), tetapi 扉 sedikit berbeda. Meskipun 戸 dapat mengacu pada segala jenis pintu (walaupun sering kali merupakan pintu geser), 扉 lebih spesifik mengacu pada <kosakata>pintu berengsel</vocabulary>, termasuk hal-hal seperti gerbang atau panel yang dapat dibuka dengan engsel.

Karena 扉 membangkitkan gambaran pintu yang terbuka, terkadang juga digunakan secara metaforis. Misalnya, halaman depan sebuah buku bisa disebut 扉, dan Anda juga akan melihat ekspresi seperti 心の扉 (pintu menuju hati).', 'Kata ini terdiri dari satu kanji, jadi kamu tahu mungkin kata itu menggunakan bacaan kun''yomi. Untungnya, itulah bacaan とびら yang Anda pelajari dengan kanji!')
    RETURNING id INTO v_7112_pintu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '門扉', 'pintu-gerbang', 47, 104, 'Apa itu <kanji>gerbang</kanji> <kanji>pintu</kanji>? <vocabulary>pintu gerbang</vocabulary>, meskipun kita masih bisa menyebutnya <vocabulary>gate</vocabulary> dalam bahasa Inggris.

門扉 adalah kata formal yang lebih sering Anda temui dalam tulisan atau pembicaraan arsitektur. Biasanya mengacu secara khusus pada bagian gerbang yang dapat digeser atau diayunkan terbuka (dengan kata lain, pintunya).', 'Ini adalah kata jukugo yang menggunakan bacaan on''yomi. Anda telah mempelajari pembacaan もん untuk 門, namun Anda belum melihat pembacaan ひ untuk 扉 (ditambah lagi, kata ini diubah menjadi ぴ). Berikut ini mnemonik untuk membantu Anda mengingat bacaan rendaku itu:

<vocabulary>pintu gerbang</vocabulary> sering kali berbau seperti <reading>kencing</reading> (ぴ). Mengapa? Anjing dan pemabuk sama-sama suka buang air kecil di gerbang <vocabulary>gate</vocabulary>, itulah alasannya.')
    RETURNING id INTO v_7113_pintu_gerbang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '挿絵', 'ilustrasi-buku', 47, 105, 'Jika Anda <kanji>memasukkan</kanji> <kanji>gambar</kanji> ke dalam buku, itu akan menjadi <vocabulary>ilustrasi buku</vocabulary>.', 'Bacaan yang digunakan untuk 挿絵 sungguh luar biasa. Bukannya そう, tapi さし. Saat Anda memikirkan <vocabulary>ilustrasi buku</vocabulary>, pikirkan ilustrasi <reading>sash</reading>. Hanya gambar demi gambar selempang. Ikat pinggang ungu. Ikat pinggang berwarna hijau. Ikat pinggang yang mencolok. Buku yang aneh, hanya memiliki ilustrasi ikat pinggang.

絵, bagaimanapun, adalah bacaan yang Anda pelajari dengan kanji, jadi setidaknya Anda memilikinya.')
    RETURNING id INTO v_7114_ilustrasi_buku;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '挿話', 'cerita-sampingan', 47, 106, '<kanji>Masukkan</kanji> beberapa <kanji>pembicaraan</kanji> tambahan ke dalam sebuah cerita, dan Anda akan mendapatkan <vocabulary>cerita sampingan</vocabulary>!

挿話 adalah kata yang relatif formal yang mengacu pada <vocabulary>anekdot</vocabulary> pendek atau <vocabulary>episode</vocabulary> kecil yang dimasukkan ke dalam sebuah cerita yang tidak penting bagi narasi utama namun menambahkan beberapa konteks, latar belakang, atau rasa tambahan.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7115_cerita_sampingan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '挿入', 'insersi', 47, 107, 'Jika Anda <kanji>memasukkan</kanji> dan <kanji>memasukkan</kanji> sesuatu, Anda melakukan <vocabulary>penyisipan</vocabulary> padanya.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7116_insersi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '掌', 'telapak', 47, 108, 'Kanji berarti <kanji>telapak tangan</kanji>, begitu pula kosakatanya! Ini adalah <vocabulary>telapak tangan</vocabulary> Anda, seperti halnya <vocabulary>telapak tangan</vocabulary>.

Yang perlu diperhatikan di sini adalah Anda biasanya akan melihat "telapak tangan" dalam bahasa Jepang ditulis sebagai 手のひら. Kanji ini tidak umum tetapi maknanya tetap sama.', 'Dimana <vocabulary>telapak tangan</vocabulary> anda? Ada di <baca>手のdi sini</read> (てのひら) Anda. Di sini. Aku menunjuk ke telapak tanganmu dan berkata, “tanganmu di sini, disitulah letak telapak tanganmu.”

Hal penting lainnya tentang kanji ini adalah dapat dibaca sebagai たなごころ. Anda tidak akan sering melihatnya dibaca seperti ini, jadi kami hanya mengajari Anda bacaan utama.')
    RETURNING id INTO v_7117_telapak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '車掌', 'konduktor-kereta-api', 47, 109, 'Siapakah orang yang memiliki <kanji>mobil</kanji> di <kanji>telapak tangan</kanji> di tangannya?車 di sini sebenarnya berasal dari 電車 (kereta), jadi orang ini adalah <vocabulary>kondektur kereta</vocabulary>. Coba pikirkan — <vocabulary>kondektur</vocabulary> menangani hal-hal seperti memeriksa tiket, membuat pengumuman, dan memberikan sinyal kepada pengemudi, jadi segala sesuatu yang terjadi di kereta benar-benar ada di tangan mereka… eh, telapak tangan. 

Perhatikan bahwa saat ini, bahkan banyak orang Jepang yang mencampuradukkan 車掌 dengan 運転士 (pengemudi). Namun, 車掌 bukanlah orang yang mengemudikan kereta — mereka lebih seperti pengawas kereta secara keseluruhan, yang bertugas mengatur penumpang dan mengawasi keselamatan.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7118_konduktor_kereta_api;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '掌握', 'tamak', 47, 110, 'Letakkan sesuatu di <kanji>telapak tangan</kanji> Anda dan <kanji>pegang</kanji> benda tersebut. Sekarang hal itu ada dalam genggaman Anda — Anda <vocabulary>menggenggam</vocabulary> itu.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7119_tamak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '滴る', 'menetes', 47, 111, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>menetes</kanji> dan versi kosakata kata kerjanya adalah <vocabulary>menetes</vocabulary>.', '<vocabulary>Menetes</vocabulary> menetes menetes di kepalamu... apa yang menetes di kepalamu? Anda berdiri di bawah toilet yang bocor. Tetesannya terdengar seperti "<reading>sh*t, ta-ta</reading> (したた), dan setiap tetesannya mengeluarkan bunyi "ta" karena kental dan kotor.')
    RETURNING id INTO v_7120_menetes;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '水滴', 'setetes-air', 47, 112, '<kanji>air</kanji> <kanji>tetesan</kanji> adalah <vocabulary>tetesan air</vocabulary> atau <vocabulary>tetesan air</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7121_setetes_air;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '点滴', 'tetes-intravena', 47, 113, '<kanji>Titik</kanji> <kanji>tetesan</kanji> adalah tetesan yang turun sedikit demi sedikit. Ini adalah tetesan dari <vocabulary>tetesan intravena</vocabulary>. 

Dulu, ini adalah cara untuk membicarakan tetesan air hujan, atau tetesan air yang jatuh. Namun saat ini kami hanya menggunakannya untuk <vocabulary>IV infus</vocabulary>s.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7122_tetes_intravena;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '自炊', 'memasak-untuk-diri-sendiri', 47, 114, '<kanji>diri</kanji> <kanji>juru masak</kanji> adalah <vocabulary>memasak untuk diri sendiri</vocabulary>. Lebih baik keluarkan baki TV.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7124_memasak_untuk_diri_sendiri;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '炊事', 'memasak', 47, 115, '<kanji>memasak</kanji>dan <kanji>kejadian</kanji> hanyalah tindakan <vocabulary>memasak</vocabulary>. Itu adalah <vocabulary>pekerjaan dapur</vocabulary>. 

炊事 mengacu pada tugas-tugas yang terlibat dalam persiapan makanan sebagai bagian dari kehidupan sehari-hari. Ini adalah kata yang relatif formal dan tidak umum digunakan seperti 料理, tetapi Anda mungkin melihatnya digunakan dalam daftar pekerjaan atau tugas rumah tangga, seperti dalam deskripsi pekerjaan untuk pengurus rumah tangga.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7125_memasak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '炊飯器', 'penanak-nasi', 47, 116, '<kanji>koki</kanji> <kanji>makanan</kanji> <kanji>wadah</kanji> adalah wadah yang digunakan untuk memasak makanan pokok utama di Jepang. Dalam hal ini adalah <vocabulary>penanak nasi</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7126_penanak_nasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '爽やか', 'menyegarkan', 47, 117, 'Ini adalah versi kata benda dari kanji, menjadikannya <vocabulary>menyegarkan</vocabulary> juga.

爽やか umumnya menggambarkan sesuatu yang ringan, menyenangkan, dan membangkitkan semangat. Anda bisa menggunakannya untuk hal-hal seperti semilir angin pagi yang sejuk, aroma buah-buahan yang menyegarkan, atau bahkan untuk orang yang memberikan kesan rapi dan menawan.', 'Bacaannya sama dengan bacaan yang Anda pelajari dengan kanji!')
    RETURNING id INTO v_7127_menyegarkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '〜畳', 'counter-untuk-tikar-tatami', 47, 118, 'Huruf 〜 menunjukkan jumlah tikar tatami, dan bagian 畳 tentu saja adalah "tatami". Jadi, ini adalah <vocabulary>penghitung tikar tatami</vocabulary>. Biasanya digunakan untuk menunjukkan seberapa besar sebuah apartemen atau sesuatu. Oh, apartemenmu 12 tikar tatami? Bagus dan besar!', 'Bacaannya sama dengan yang Anda pelajari dengan kanji.')
    RETURNING id INTO v_7128_counter_untuk_tikar_tatami;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '畳', 'tikar-tatami', 47, 119, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya langsung berasal dari arti vocabnya yaitu <vocabulary>tatami mat</vocabulary>. Khususnya bagian たたみ.')
    RETURNING id INTO v_7129_tikar_tatami;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '明瞭', 'kejelasan', 47, 120, 'Sesuatu yang <kanji>cerah</kanji> dan <kanji>jelas</kanji> memiliki <vocabulary>kejelasan</vocabulary> dan <vocabulary>clearness</vocabulary> yang hebat. Lihat saja sesuatu dengan kecerahan dan kejelasan seperti itu! Ada begitu banyak kejelasan!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7130_kejelasan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '箸', 'sumpit', 47, 121, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji.')
    RETURNING id INTO v_7131_sumpit;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '割り箸', 'sumpit-yang-dapat-dibelah', 47, 122, '<kanji>Sumpit</kanji>yang dapat dibagi</kanji>adalah sumpit yang dapat dibelah. Itu adalah <vocabulary>sumpit yang bisa dibelah</vocabulary>, hampir selalu terbuat dari sejenis kayu.', 'Bacaannya berasal dari 割る dan 箸 disatukan. Hati-hati dengan rendaku.')
    RETURNING id INTO v_7132_sumpit_yang_dapat_dibelah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '胴', 'batang-tubuh', 47, 123, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji.')
    RETURNING id INTO v_7133_batang_tubuh;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '胴体', 'tubuh', 47, 124, '<kanji>batang tubuh</kanji> <kanji>tubuh</kanji> Anda adalah area tubuh yang merupakan batang tubuh Anda. Itu adalah <vocabulary>tubuh</vocabulary> dan <vocabulary>trunk</vocabulary> dan <vocabulary>torso</vocabulary> Anda, bergantung pada jenis tubuh yang Anda miliki.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_7134_tubuh;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '芯', 'inti', 47, 125, 'Kanji berarti <kanji>sumbu</kanji> dan kata ini juga berarti <vocabulary>wick</vocabulary>, namun kata ini lebih sering berarti <vocabulary>inti</vocabulary> dari hal-hal panjang lainnya. Hal-hal seperti <vocabulary>pensil</vocabulary> dan <vocabulary>marrow</vocabulary>.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji.')
    RETURNING id INTO v_7135_inti;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '虹', 'pelangi', 47, 126, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji.')
    RETURNING id INTO v_7136_pelangi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '虹色', 'berwarna-pelangi', 47, 127, '<kanji>Pelangi</kanji> <kanji>berwarna</kanji>benda adalah <vocabulary>berwarna pelangi</vocabulary>.', 'Bacaannya adalah bacaan kanji untuk 虹 dan 色.')
    RETURNING id INTO v_7137_berwarna_pelangi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', 'お嬢さん', 'nona-muda', 47, 128, 'Menambahkan お di depan dan さん di belakang <kanji>rindu</kanji> merupakan cara yang sangat terhormat dalam memanggil<vocabulary>wanita muda</vocabulary>. Kata ini juga dapat digunakan untuk menyebut <kosakata>anak perempuan</vocabulary> seseorang dengan cara yang sopan.

Perhatikan bahwa generasi tua cenderung menggunakan kata ini untuk menyebut langsung seorang wanita muda. Namun berhati-hatilah saat melakukannya sendiri, karena mungkin akan terlihat terlalu formal!', 'Pembacaan 嬢 sama dengan yang Anda pelajari untuk kanji, artinya Anda harus sudah mengetahuinya!')
    RETURNING id INTO v_7138_nona_muda;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '裸足', 'tanpa-alas-kaki', 47, 129, 'Jika Anda memiliki <kanji>telanjang</kanji> <kanji>kaki</kanji>, itu berarti Anda tidak mengenakan apa pun di kaki Anda, sehingga membuat Anda <vocabulary>bertelanjang kaki</vocabulary>.', 'Pembacaan di sini agak aneh. Ini seperti kata 裸 (はだか) dan 足 (あし) digabungkan menjadi satu kata.裸 menjadi はだ dan 足 menjadi し. Bayangkan saja seperti ini: Kamu <vocabulary>bertelanjang kaki</vocabulary> terlalu lama, dan karena itu, kamu tidak memiliki kaki lagi, meskipun kamu pernah <reading>memiliki ashi</reading> (はだし) di masa lalu.')
    RETURNING id INTO v_7139_tanpa_alas_kaki;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '稼ぎ', 'pendapatan', 47, 130, '稼ぐ adalah "untuk mendapatkan penghasilan". Ini adalah versi kata benda. Ini hanyalah <vocabulary>penghasilan</vocabulary>, hal-hal yang Anda peroleh.', 'Bacaannya berasal dari 稼ぐ.')
    RETURNING id INTO v_7141_pendapatan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '〜狩り', 'memburu', 47, 131, 'Anda tahu bahwa 狩り sedang berburu. Ini adalah hal yang sama (<vocabulary>berburu</vocabulary>). Bedanya, yang ini dilampirkan dengan kata lain untuk menentukan jenis perburuan yang Anda lakukan.', 'Bacaannya sama dengan 狩り, namun karena mengikuti kata lain, maka diberi rendaku. Berikut ini mnemonik untuk membantu mengingat rendaku.

Berburu bisa menjadi <read>feminin</reading> (がり), jika Anda berdandan seperti pemburu yang girly.')
    RETURNING id INTO v_7142_memburu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '歯を磨く', 'untuk-menyikat-gigi', 47, 132, '磨く adalah "memoles" atau "bersinar." Jika Anda melakukan itu pada <kanji>gigi</kanji> Anda, Anda sedang menyikatnya. Itu sebabnya ini <vocabulary>menyikat gigi</vocabulary>.', 'Bacaannya berasal dari 歯 dan 磨く, disatukan.')
    RETURNING id INTO v_7143_untuk_menyikat_gigi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '澄ます', 'untuk-membuat-sesuatu-jelas', 47, 133, '澄む adalah "menjadi jelas" - ini adalah saat Anda membuat sesuatu menjadi jelas, karena Anda <reading>harus</reading>t (ます) memperjelasnya. Anda harus melakukannya. Itu sebabnya ini adalah <vocabulary>untuk memperjelas sesuatu</vocabulary> atau <vocabulary>untuk memperjelas sesuatu</vocabulary>.

Ini juga bisa berarti <vocabulary>to strain</vocabulary> bila digunakan bersama dengan 耳, seperti dalam 耳を澄ます, "menyaring telinga".', 'Bacaannya sama dengan kanji, jadi kalau kalian tahu pasti jawaban ini akan jelas juga.')
    RETURNING id INTO v_7144_untuk_membuat_sesuatu_jelas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '塊魂', 'kerusakan-katamari', 47, 134, '<kanji>benjolan</kanji> <kanji>roh</kanji> adalah gumpalan roh yang digunakan dalam game terkenal <vocabulary>Katamari Damacy</vocabulary>.', 'Bacaannya adalah 塊 dan 魂 disatukan. Hati-hati dengan rendaku.')
    RETURNING id INTO v_7146_kerusakan_katamari;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '矛先', 'ujung-tombak', 47, 135, '<kanji>tombak</kanji> <kanji>depan</kanji> adalah bagian paling depan dari tombak. Itulah <vocabulary>point of spear</vocabulary> atau <vocabulary>spearpoint</vocabulary>.', 'Bacaannya berasal dari versi kosakata 矛 dan 先 yang digabungkan menjadi satu.')
    RETURNING id INTO v_7147_ujung_tombak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', 'お陰で', 'berkat', 47, 136, '陰 adalah bayangan, dan menambahkan お ke dalamnya akan membuatnya menjadi kehormatan. Itu menjadi bayangan seseorang yang sangat penting, dan berarti <vocabulary>terima kasih</vocabulary>, seperti dalam "berkat kamu, aku bisa lulus ujian." Ini awalnya berasal dari gagasan berada dalam bayang-bayang para dewa, yang melindungi dan membantu Anda!

Jika itu sulit untuk diingat, pikirkan tentang naungan yang membantu Anda. Mungkin <vocabulary>berkat</vocabulary> <kanji>teduh</kanji> kamu bisa bertahan dari panasnya gurun.', 'Bacaannya berasal dari kata 陰. <vocabulary>Berkat</vocabulary> kosakata lainnya, Anda dapat membaca yang ini!')
    RETURNING id INTO v_7148_berkat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '粘々', 'keadaan-lengket', 47, 137, '<kanji>Lengket</kanji> <kanji>lengket</kanji> sesuatu benar-benar <vocabulary>lengket</vocabulary> dan ditutupi dengan <vocabulary>lengket</vocabulary>.', 'Bacaannya berasal dari 粘る. Saya kira Anda <reading>tidak pernah</reading> ingin menyentuh sesuatu yang <vocabulary>lengket</vocabulary>.')
    RETURNING id INTO v_7448_keadaan_lengket;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '煎餅', 'senbei', 47, 138, 'Apa yang Anda dapatkan saat <kanji>memanggang</kanji> <kanji>mochi</kanji>? <vocabulary>Senbei</vocabulary>, <vocabulary>kerupuk nasi</vocabulary> Jepang yang renyah!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda belum mempelajari on''yomi untuk kanji kedua, tetapi jika Anda mengingat arti kata tersebut, Anda akan langsung membacanya. Jika Anda mengalami kesulitan, berikut ini mnemonik untuk membantu:

Anda duduk sambil makan <vocabulary>senbei</vocabulary> di sebelah <reading>bay</reading> (べい), sambil memandang ke air sambil mengunyah.')
    RETURNING id INTO v_8999_senbei;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '煎茶', 'teh-hijau', 47, 139, 'Saat Anda <kanji>memanggang</kanji> <kanji>teh</kanji>, Anda mendapatkan <vocabulary>teh hijau</vocabulary>, juga dikenal sebagai <vocabulary>teh daun hijau</vocabulary>atau <vocabulary>sencha</vocabulary>.

Sebenarnya ada berbagai cara untuk membuat teh hijau, tapi untuk keperluan mnemonik ini, bayangkan saja teh hijau selalu dipanggang!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_9000_teh_hijau;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '彫る', 'untuk-mengukir-sesuatu', 47, 140, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>mengukir</kanji> dan versi kata kerjanya adalah <vocabulary>to mengukir sesuatu</vocabulary>, atau <vocabulary>mengukir sesuatu</vocabulary>.

Ini merupakan kata kerja transitif, artinya dapat mengambil objek langsung. Anda mengukir huruf pada batu, dan Anda mengukir wajah menakutkan pada labu. Huruf-huruf itu dan wajah itu adalah objekmu.', 'Bayangkan mencoba <vocabulary>memahat sesuatu</vocabulary> menggunakan <reading>cangkul</reading> (ほ). Gagangnya yang panjang membuatnya menjadi alat yang tidak praktis untuk mengukir. Sekarang bayangkan semua kesulitan yang Anda alami saat mengukirnya.')
    RETURNING id INTO v_9060_untuk_mengukir_sesuatu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '砂利', 'kerikil', 47, 141, 'Jika <kanji>pasir</kanji> menghasilkan banyak <kanji>keuntungan</kanji>, ia akan membengkak dan menjadi <vocabulary>kerikil</vocabulary>. Mereka seperti kucing gemuk di pantai.', 'Anda mempelajari cara membaca 利 dengan kanji, namun cara membaca 砂 tidak beraturan, jadi inilah mnemonik yang dapat membantu Anda:

Anda sedang berjalan melewati <vocabulary>kerikil</vocabulary> yang besar dan gemuk itu, ketika tumpukan kerikil tersebut mulai bergerak, dan sesuatu tiba-tiba melompat ke arah Anda. Itu... <read>ja</reading>guar (じゃ)! Berlari!')
    RETURNING id INTO v_9128_kerikil;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '親父', 'ayah-seseorang', 47, 142, '<kanji>orang tua</kanji> <kanji>ayah</kanji> seseorang hanyalah <vocabulary>ayahnya</vocabulary>. 

Perhatikan bahwa 親父 memiliki nada maskulin dan agak vulgar. Kata ini bisa merujuk pada ayah Anda sendiri, ayah orang lain, atau <vocabulary>pria paruh baya</vocabulary> yang bersahabat dengan Anda. Saat tidak berbicara tentang ayahmu sendiri, sebaiknya tambahkan さん di akhir, sehingga menjadi 親父さん.', 'Sayangnya, pembacaan untuk ini merupakan pengecualian. 親 menggunakan kun''yomi おや, dan 父 menggunakan bacaan じ yang kamu pelajari dengan 叔父. Anda telah mempelajari semua bacaan ini sebelumnya, jadi selama Anda mengingatnya, Anda siap melakukannya. Jika belum, lihatlah mnemonik untuk bacaan ini di halaman kosakata mereka!')
    RETURNING id INTO v_9292_ayah_seseorang;
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3638_keinginan_yang_sepenuh_hati, 'Keinginan yang Sepenuh Hati', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3638_keinginan_yang_sepenuh_hati, 'Harapan yang Sepenuh Hati', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_3638_keinginan_yang_sepenuh_hati, 'しんがん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3638_keinginan_yang_sepenuh_hati, '私はその神社で心願成就の御札を買いました。', 'Saya membeli jimat di kuil untuk membantu memenuhi keinginan hati saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3638_keinginan_yang_sepenuh_hati, 'このおまもりは、どのような心願も成就させる魔法のおまもりです。', 'Jimat ini memiliki kekuatan magis untuk memenuhi segala keinginan hati.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3638_keinginan_yang_sepenuh_hati, 'このお寺では、毎日護摩を焚いて、人々の心願を祈願しています。', 'Di kuil ini, mereka melakukan ritual api harian yang disebut "goma" untuk mendoakan terpenuhinya keinginan tulus masyarakat.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4072_khususnya, 'Khususnya', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_4072_khususnya, 'とりわけ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4072_khususnya, '取り分けコウイチがどなっている時に、ビエトは一人静かに笑っていました。', 'Viet tertawa kecil pada dirinya sendiri, terutama saat Koichi berteriak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4072_khususnya, 'ついにJLPT1に合格したんですが、トーフグには取り分け感謝しています。', 'Saya akhirnya lulus JLPT N1 dan saya sangat mengapresiasi Tofugu untuk itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4072_khususnya, '今日は取り分け寒いという訳ではない。', 'Hari ini tidak terlalu dingin.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4435_hak_hak_perempuan, 'Hak-Hak Perempuan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4435_hak_hak_perempuan, 'Hak-Hak Perempuan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_4435_hak_hak_perempuan, 'じょけん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4435_hak_hak_perempuan, '遠い昔、日本は女権社会でした。', 'Dahulu kala, perempuan Jepang mempunyai lebih banyak hak dibandingkan laki-laki.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4435_hak_hak_perempuan, 'ツイッターのアカウント名にエビの絵文字がついている人は、フェミニスト（女権主義者）です。', 'Orang yang nama akun Twitternya memiliki emoji udang adalah seorang feminis.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4435_hak_hak_perempuan, '西洋と違い、日本では歴史上、大きな女権拡張運動は起きていない。', 'Berbeda dengan negara-negara Barat, Jepang tidak memiliki sejarah gerakan hak-hak perempuan yang kuat.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6709_puncak, 'Puncak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6709_puncak, 'Gunung', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_6709_puncak, 'たけ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6709_puncak, '富山県には、剣の山という意味の、剣岳と呼ばれる山があります。', 'Ada sebuah gunung bernama Tsurugidake, yang secara harfiah berarti Gunung Pedang, di prefektur Toyama.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6721_untuk_digosok, 'Untuk Digosok', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6721_untuk_digosok, 'Untuk Digembalakan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6721_untuk_digosok, 'Untuk Dikikis', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_6721_untuk_digosok, 'すれる', true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_6721_untuk_digosok, 'こすれる', false);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6721_untuk_digosok, 'ペティコートは、スカートが肌と擦れることを防ぎます。', 'Rok dalam mencegah rok bergesekan dengan kulit Anda.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6993_banzai, 'Banzai', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6993_banzai, 'Hore', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6993_banzai, 'Mengangkat Tangan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6993_banzai, 'Saya Menyerah', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_6993_banzai, 'ばんざい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6993_banzai, 'トフグのコウイチに万歳三唱をしましょう！万歳！万歳！万歳！', 'Tiga sorakan untuk Koichi dari Tofugu! Hore keren! Hore keren! Hore keren!');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7007_untuk_menumpahkan_sesuatu, 'Untuk Menumpahkan Sesuatu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7007_untuk_menumpahkan_sesuatu, 'Untuk Menjatuhkan Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7007_untuk_menumpahkan_sesuatu, 'Untuk Meneteskan Air Mata', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7007_untuk_menumpahkan_sesuatu, 'こぼす', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7007_untuk_menumpahkan_sesuatu, '「あんた、今カーペットに珈琲を零したでしょう？」「しまった!ごめん!」「ごめんで済んだら警察はいらないわよ！」', '"Apakah kamu baru saja menumpahkan kopi di karpet?" "Oh tidak! Maaf." "Jika maaf telah menyelesaikan semuanya, kita tidak membutuhkan polisi!"');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7054_melihat, 'Melihat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7054_melihat, 'Pemandangan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7054_melihat, 'Prospek', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7054_melihat, 'ながめ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7054_melihat, 'シャワーの後、髪の毛が半乾きのまましばらく部屋の窓からの眺めを見つめていました。', 'Usai mandi, ia memandangi pemandangan di luar jendela kamarnya sebentar dengan rambut yang masih lembap.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7056_untuk_melembabkan, 'Untuk Melembabkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7056_untuk_melembabkan, 'Untuk Meredam', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7056_untuk_melembabkan, 'しめらせる', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7056_untuk_melembabkan, 'キッチンペーパーをちょっと湿らせて拭きました。', 'Saya membasahi sedikit handuk kertas dan menyekanya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7056_untuk_melembabkan, '植物の根を湿らせてから植えると、土になじみやすいんですよ。', 'Melembabkan akar tanaman sebelum ditanam membantu akar tanaman menempel di tanah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7056_untuk_melembabkan, '少しでも暑さを和らげるために、タオルを湿らせて首に巻きました。', 'Untuk meredakan sedikit rasa panas, aku membasahi handuk dan melilitkannya di leherku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7056_untuk_melembabkan, '唇を舐めて湿らせることは、結局その後乾燥させてしまうことになりうるので、あまりいいことではありません。', 'Menjilat bibir untuk melembabkannya tidak baik karena malah bisa mengeringkannya.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7058_puing, 'Puing', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7058_puing, 'Batu Pecah', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7058_puing, 'さいせき', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7058_puing, 'この道は現在砕石舗装工事中です。', 'Saat ini jalan tersebut sedang diaspal.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7059_pembubukan, 'Pembubukan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7059_pembubukan, 'Menghancurkan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7059_pembubukan, 'ふんさい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7059_pembubukan, '私の従兄弟は、転んで左足の膝のお皿を粉砕骨折しました。', 'Sepupu saya terjatuh dan mengalami patah tulang di tempurung lutut kirinya.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7060_menjadi_lengket, 'Menjadi Lengket', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7060_menjadi_lengket, 'Untuk Bertekun', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7060_menjadi_lengket, 'ねばる', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7060_menjadi_lengket, 'ええっ！あのセールスマンまだうちの母ちゃんと話をしてるよ。粘るね〜！', 'Wow! Penjual itu masih berbicara dengan ibu saya. Sungguh gigih!');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7061_tanah_liat, 'Tanah liat', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7061_tanah_liat, 'ねんど', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7061_tanah_liat, '粘土を買おうかなと思ってるの？', 'Apakah Anda berpikir untuk membeli tanah liat?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7062_adhesi, 'Adhesi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7062_adhesi, 'Perekat', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7062_adhesi, 'ねんちゃく', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7062_adhesi, 'どうして粘着テープを宝石箱に仕舞っているの？', 'Mengapa Anda menyimpan pita perekat di kotak perhiasan Anda?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7063_rias, 'Rias', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7063_rias, 'Kosmetik', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7063_rias, 'けしょう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7063_rias, '出産後お肌の調子が悪くってさ〜。前に言ってたおススメの化粧品の名前教えてくれない？', 'Kulit saya semakin memburuk sejak saya melahirkan. Merek kosmetik apa yang Anda rekomendasikan sebelumnya?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7064_untuk_menipu, 'Untuk Menipu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7064_untuk_menipu, 'Untuk menipu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7064_untuk_menipu, 'Untuk menipu', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7064_untuk_menipu, 'あざむく', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7064_untuk_menipu, '孝志は彼女をうまく欺いた。', 'Takashi berhasil menipu pacarnya.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7065_tipuan, 'Tipuan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7065_tipuan, 'Penipuan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7065_tipuan, 'Tipuan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7065_tipuan, 'さぎ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7065_tipuan, '色々な詐欺の手口について知りたいなら、ジェニーに聞いたらいいよ。', 'Jika ingin mengetahui berbagai trik penipuan, sebaiknya tanyakan pada Jenny.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7065_tipuan, 'うちのお婆ちゃん、オレオレ詐欺にあって、百万円を騙し取られたんだ。', 'Nenek saya ditipu satu juta yen dalam penipuan palsu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7065_tipuan, '詐欺を働いて告訴された経験はおありですか。', 'Pernahkah Anda dituduh melakukan penipuan?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7066_menipu, 'Menipu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7066_menipu, 'Menipu', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7066_menipu, 'さしゅ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7066_menipu, '私は偽の売買契約書で、お金を詐取されました。', 'Uang saya ditipu oleh akta kepemilikan palsu.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7067_kekeliruan, 'Kekeliruan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7067_kekeliruan, 'Pernyataan Palsu', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7067_kekeliruan, 'さしょう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7067_kekeliruan, '庭師は彼女が年齢を詐称していることにすぐに気がつきましたが、何も言いませんでした。', 'Tukang kebun segera menyadari bahwa usianya salah diartikan tetapi tidak mengatakan apa pun.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7068_kabut, 'Kabut', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7068_kabut, 'Kabut', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7068_kabut, 'きり', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7068_kabut, '七夕の日、朝は霧がかかっていましたが、お昼には晴れました。', 'Pada hari Tanabata, cuaca berkabut pada pagi hari, namun cerah pada siang hari.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7069_kabut_tebal, 'Kabut Tebal', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7069_kabut_tebal, 'Kerudung Hitam', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7069_kabut_tebal, 'Ditutupi', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7069_kabut_tebal, 'くろいきり', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7069_kabut_tebal, 'ホームステイ先のお父さんが、今日の夕飯の際に黒い霧事件について説明をしてくれました。', 'Ayah saya yang tinggal di rumah menjelaskan Skandal Kabut Hitam kepada saya saat makan malam.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7070_kabut_pagi, 'Kabut Pagi', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7070_kabut_pagi, 'あさぎり', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7070_kabut_pagi, 'チャリティーオークションで、朝霧から山々が浮き出ている素晴らしく美しい絵を落札しました。', 'Pada sebuah lelang amal, saya berhasil menawar sebuah lukisan pegunungan yang sangat indah yang menembus kabut pagi.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7071_pohon_willow, 'Pohon willow', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7071_pohon_willow, 'Willow Menangis', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7071_pohon_willow, 'やなぎ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7071_pohon_willow, 'あの居酒屋の柳模様の暖簾が好きなのよね。', 'Saya suka desain pohon willow di tirai restoran Izakaya itu.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7072_distrik_lampu_merah, 'Distrik Lampu Merah', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7072_distrik_lampu_merah, 'かりゅう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7072_distrik_lampu_merah, '彼は花柳小説の有名な著者ですよ。', 'Dia adalah penulis novel distrik lampu merah yang terkenal.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7073_komik_haiku, 'Komik Haiku', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7073_komik_haiku, 'せんりゅう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7073_komik_haiku, 'ここにあなたの川柳を書いてもらえませんか？', 'Bisakah kamu menulis senryumu di sini?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7074_ise, 'ise', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7074_ise, 'いせ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7074_ise, '伊勢神宮には、一度行ってみた方がいいよ。', 'Kamu harus pergi mengunjungi Kuil Ise sekali.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7075_keelokan_semarak, 'Keelokan semarak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7075_keelokan_semarak, 'Cantik', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7075_keelokan_semarak, 'gaya', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7075_keelokan_semarak, 'だて', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7075_keelokan_semarak, '伊達巻きはおせち料理の中で私が好きなものの一つです。', 'Dari semua makanan yang disajikan saat Tahun Baru Jepang, datemaki adalah salah satu favorit saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7075_keelokan_semarak, 'え、それって伊達眼鏡だったんですか？てっきり度が入ってるんだと思ってました。', 'Oh, jadi itu hanya kacamata fashion? Saya selalu berasumsi mereka memiliki lensa resep di dalamnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7075_keelokan_semarak, 'あはは、伊達に日本で生活はしてないですよ。これくらいの日本語なら任せてください。', 'Haha, saya belum tinggal di Jepang hanya untuk pertunjukan. Kalau bahasa Jepang pada level ini, serahkan saja padaku.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7076_bantuan, 'Bantuan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7076_bantuan, 'Mendukung', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7076_bantuan, 'Asisten', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7076_bantuan, 'ほさ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7076_bantuan, '私はトーフグ営業部の補佐として働きました。', 'Saya bekerja sebagai asisten di departemen penjualan Tofugu.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7077_kolonel, 'Kolonel', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7077_kolonel, 'Kapten Angkatan Laut', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7077_kolonel, 'たいさ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7077_kolonel, '大佐にお会いできるのを楽しみにしています。', 'Saya tak sabar untuk bertemu kolonel.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7078_besar, 'Besar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7078_besar, 'Letnan Komandan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7078_besar, 'しょうさ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7078_besar, 'その少佐は、大佐に飲み物を奢ると言ってきかなかった。', 'Letnan itu bersikeras untuk membelikan kolonel minuman.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7079_letnan_kolonel, 'Letnan kolonel', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7079_letnan_kolonel, 'Komandan Angkatan Laut', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7079_letnan_kolonel, 'Komandan Sayap', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7079_letnan_kolonel, 'ちゅうさ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7079_letnan_kolonel, '中佐は、日本への移住に反対することを決めた。', 'Letnan Kolonel memutuskan untuk tidak berimigrasi ke Jepang.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7080_shaku, 'Shaku', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7080_shaku, 'Kaki Jepang', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7080_shaku, 'しゃく', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7080_shaku, 'うちのチワワに二平方尺の犬小屋を作ってあげました。', 'Saya membuat rumah anjing seluas dua kaki persegi untuk Chihuahua kami.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7081_pita_pengukur, 'Pita pengukur', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7081_pita_pengukur, 'Pita Pengukur', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7081_pita_pengukur, 'まきじゃく', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7081_pita_pengukur, 'この巻尺で胸囲を測るのを手伝ってもらえませんか。', 'Bisakah Anda membantu saya mengukur dada saya dengan pita pengukur ini?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7082_disayangkan, 'Disayangkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7082_disayangkan, 'Duka', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7082_disayangkan, 'Duka', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7082_disayangkan, 'あわれ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7082_disayangkan, '衣食住もままならない彼らの事を哀れに思います。', 'Saya kasihan pada mereka karena mereka tidak mempunyai cukup makanan, pakaian, atau tempat tinggal.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7083_menyedihkan, 'Menyedihkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7083_menyedihkan, 'Miskin', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7083_menyedihkan, 'Menyedihkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7083_menyedihkan, 'Menyedihkan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7083_menyedihkan, 'かわいそう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7083_menyedihkan, 'お酒を付き合い程度にしか飲まない人のこと、なんだか可哀想だなって思うんだよね。', 'Entah bagaimana, saya merasa kasihan pada orang yang hanya minum untuk bersosialisasi.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7084_duka, 'Duka', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7084_duka, 'Duka', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7084_duka, 'Kesedihan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7084_duka, 'ひあい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7084_duka, 'ベーコンを取り上げられたプードルは、悲哀と悲しみに満ちた声でクーンクーンと鳴いていました。', 'Anjing pudel yang dagingnya telah diambil itu merengek dengan suara penuh duka dan duka.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7085_bibir, 'Bibir', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7085_bibir, 'くちびる', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7085_bibir, 'たらこ唇にコンプレックスを感じるって言うけど、僕は君の唇、とっても可愛いと思うよ。', 'Kamu bilang kamu punya rasa rendah diri pada bibir cemberutmu, tapi menurutku itu sangat lucu.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7086_bibir_bawah, 'Bibir Bawah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7086_bibir_bawah, 'Bibir Bawah', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7086_bibir_bawah, 'したくちびる', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7086_bibir_bawah, '赤ちゃんは、木綿のミトンをしていたにも関わらず、下唇を引っ掻いてしまった。', 'Meski memakai sarung tangan berbahan katun, bibir bawahnya tetap saja tergores.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7086_bibir_bawah, '「お金が無いから、今週は外食出来ないの。」と言って、瞳は下唇をかんだ。', '"Aku tidak bisa makan di luar minggu ini karena aku bangkrut." Kata Hitomi sambil menggigit bibir bawahnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7086_bibir_bawah, '古代鮫ヘリコプリオン、とにかく下唇がすごいから、一度ググってみて！', 'Bibir bawah hiu purba Helicoprion sungguh menakjubkan. Anda harus mencarinya di Google!');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7087_bibir_atas, 'Bibir Atas', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7087_bibir_atas, 'Bibir Atas', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7087_bibir_atas, 'うわくちびる', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7087_bibir_atas, '疲れると、上唇がよく腫れちゃうんですよね。', 'Kalau saya capek biasanya bibir atas saya bengkak.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7088_dinding, 'Dinding', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7088_dinding, 'Pagar', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7088_dinding, 'へい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7088_dinding, 'ブロック塀の取付け費用がいくらかかるのかが知りたいんですが。', 'Saya ingin tahu berapa biaya pemasangan dinding balok beton.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7089_tembok_lumpur, 'Tembok Lumpur', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7089_tembok_lumpur, 'Tembok Tanah', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7089_tembok_lumpur, 'どべい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7089_tembok_lumpur, 'あなたの家の土塀をよじ登っている人がいたので、それをお知らせするためにお電話させて頂きました。', 'Saya menelepon untuk memberi tahu Anda bahwa saya melihat seseorang memanjat dinding lumpur Anda.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7090_menembak_jatuh, 'Menembak Jatuh', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7090_menembak_jatuh, 'Menembak Jatuh Pesawat', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7090_menembak_jatuh, 'げきつい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7090_menembak_jatuh, 'iPhoneで軍事飛行機がヘリコプターを撃墜する瞬間を撮影しました。', 'IPhone saya menangkap momen ketika pesawat militer menembak jatuh helikopter.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7091_menabrak, 'Menabrak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7091_menabrak, 'Jatuh', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7091_menabrak, 'ついらく', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7091_menabrak, 'あのジェット機の墜落は人為的ミスが原因だったと思う？', 'Apakah menurut Anda jet itu jatuh karena kesalahan manusia?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7092_kekurangan, 'Kekurangan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7092_kekurangan, 'Kekurangan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7092_kekurangan, 'けつじょ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7092_kekurangan, 'ビタミンB1が欠如すると、脚気になるかもしれないですよ。', 'Kekurangan vitamin B1 dapat menyebabkan beri-beri.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7093_tiba_tiba, 'Tiba-tiba', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7093_tiba_tiba, 'Tiba-tiba', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7093_tiba_tiba, 'とつじょ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7093_tiba_tiba, '彼女が突如彼をセクハラで訴え始めたのには理由があります。', 'Ada alasan mengapa dia tiba-tiba dituduh melakukan pelecehan seksual.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7095_wanita_tua, 'Wanita Tua', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7095_wanita_tua, 'Wanita Lanjut Usia', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7095_wanita_tua, 'ろうば', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7095_wanita_tua, 'あの老婆は絶対に賭博を認めようとしないんだ。', 'Wanita tua itu tidak akan pernah menyetujui perjudian.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7096_nenek, 'Nenek', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7096_nenek, 'Wanita Lanjut Usia', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7096_nenek, 'おばあさん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7096_nenek, 'この度は本当にご愁傷様です。あなたのお婆さんはとても素敵な人だったので、あなたのお爺さんの代わりに私が一緒にいられればいいのにといつも願っていたほどですよ。残念ながら願いは叶いませんでしたがね。', 'Saya sangat menyesal atas kehilangan Anda. Nenekmu adalah wanita yang baik sehingga aku selalu berharap dia bersamaku, bukan kakekmu. Sayangnya, keinginanku tidak pernah terkabul.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7097_jurang, 'Jurang', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7097_jurang, 'がけ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7097_jurang, '崖っぷちではさすがに携帯圏外だったわ。', 'Tentu saja ponselku tidak mendapat sinyal di tepi tebing.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7097_jurang, '彼は崖の下を覗き込んだ。', 'Dia mengintip dari tepi tebing.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7098_kain_piring, 'Kain Piring', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7098_kain_piring, 'Handuk Teh', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7098_kain_piring, 'ふきん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7098_kain_piring, '誰かが棒のてっぺんに、日の丸の代わりに布巾をはためかせたみたいですね。', 'Nampaknya ada yang menaruh kain lap piring di atas tiang, bukannya bendera nasional Jepang.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7099_kain_debu, 'Kain Debu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7099_kain_debu, 'Kain Rumah', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7099_kain_debu, 'ぞうきん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7099_kain_debu, 'コウイチに雑巾を売り込もうと電話を掛けたんだけど、全く相手にされなかったよ。', 'Aku menelepon Koichi untuk mencoba menjual kain lap kami kepadanya, tapi dia tidak mau berurusan denganku.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7100_topi, 'Topi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7100_topi, 'Topi', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7100_topi, 'ぼうし', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7100_topi, 'こないだ海でフグって名前のめちゃくちゃ大きい男に会ったんだけど、その人シルクハットみたいな帽子被っててさぁ、…あ、そういう感じの帽子、分かる？', 'Suatu hari saya bertemu dengan pria bertubuh sangat besar bernama Fugu di lautan dan dia mengenakan sesuatu yang tampak seperti topi, Anda tahu topi semacam itu?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7101_uang, 'Uang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7101_uang, 'Mata uang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7101_uang, 'Koin', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7101_uang, 'かへい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7101_uang, '私は実は、昔の貨幣の収集家なんです。', 'Saya sebenarnya seorang kolektor koin kuno.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7102_uang_kertas, 'Uang kertas', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7102_uang_kertas, 'Catatan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7102_uang_kertas, 'Tagihan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7102_uang_kertas, 'しへい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7102_uang_kertas, 'アメリカに行くと、お財布に紙幣がギッシリ入るのでお金持ちになった気がするんですよね。まあ、それは全部一ドル札なんですが。', 'Setiap kali saya pergi ke Amerika, saya merasa kaya dengan semua uang di dompet saya. Padahal, semuanya adalah uang satu dolar.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7103_untuk_menyimpan_dendam, 'Untuk Menyimpan Dendam', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7103_untuk_menyimpan_dendam, 'うらむ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7103_untuk_menyimpan_dendam, 'どうしてあのスタントマンを恨んでいるんだい？', 'Mengapa kamu menaruh dendam pada stuntman itu?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7104_menyesali, 'Menyesali', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7104_menyesali, 'Sedih', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7104_menyesali, 'Penyesalan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7104_menyesali, 'Rasa bersalah', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7104_menyesali, 'つうこん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7104_menyesali, '痛恨のミスをしてしまい、彼にアドバイスしてもらうはめになりました。', 'Saya melakukan kesalahan yang saya sesali dan akhirnya meminta nasihatnya.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7105_untuk_membenci, 'Untuk Membenci', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7105_untuk_membenci, 'Untuk Membenci', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7105_untuk_membenci, 'にくむ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7105_untuk_membenci, '私は母を憎んだが、母も同様に私のことを憎んでいました。', 'Aku benci ibuku dan dia juga membenciku.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7106_cinta_dan_benci, 'Cinta dan Benci', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7106_cinta_dan_benci, 'あいぞう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7106_cinta_dan_benci, 'この愛憎の入り混じった気持ちをコントロールするのはもう無理だよ。', 'Saya tidak bisa lagi mengendalikan perasaan campur aduk antara cinta dan benci ini.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7107_untuk_beristirahat, 'Untuk Beristirahat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7107_untuk_beristirahat, 'Untuk Bersantai', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7107_untuk_beristirahat, 'いこう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7107_untuk_beristirahat, 'この山小屋でちょっと憩わないか。', 'Mengapa kita tidak beristirahat sebentar di gubuk ini?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7108_istirahat, 'Istirahat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7108_istirahat, 'Merusak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7108_istirahat, 'Reses', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7108_istirahat, 'Istirahat', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7108_istirahat, 'きゅうけい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7108_istirahat, '交互に休憩を取りましょう。', 'Mari kita istirahat secara bergantian.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7108_istirahat, '今までに、休憩を取ることを考えたことはありますか。', 'Pernahkah Anda berpikir untuk istirahat?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7109_untuk_penggemar, 'Untuk Penggemar', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7109_untuk_penggemar, 'あおぐ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7109_untuk_penggemar, '重ね着しすぎてすごく暑いんだけど、ちょっと私に向かって扇いでくれない？', 'Saya memakai terlalu banyak lapisan dan panas sekali. Bisakah kamu mengipasiku?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7110_kipas_listrik, 'Kipas Listrik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7110_kipas_listrik, 'Kipas Elektronik', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7110_kipas_listrik, 'せんぷうき', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7110_kipas_listrik, '時計のチクタクという音と、扇風機のブーンという音しか聞こえなかった。', 'Satu-satunya yang bisa kudengar hanyalah suara detak jam dan deru kipas angin listrik.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7111_kipas_lipat, 'Kipas Lipat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7111_kipas_lipat, 'Kipas Kertas Tradisional', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7111_kipas_lipat, 'Kipas Kertas', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7111_kipas_lipat, 'せんす', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7111_kipas_lipat, 'この扇子は特価で買ったんですよ。', 'Saya membeli kipas lipat ini secara spesial.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7112_pintu, 'Pintu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7112_pintu, 'Pintu Berengsel', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7112_pintu, 'とびら', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7112_pintu, 'おい、ふざけている場合か！扉を開けろ！', 'Hei, ini tidak lucu! Buka pintunya!');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7113_pintu_gerbang, 'Pintu Gerbang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7113_pintu_gerbang, 'Gerbang', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7113_pintu_gerbang, 'もんぴ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7113_pintu_gerbang, '私が門扉の前で待っていると、誰かが割り込んできました。', 'Saat aku sedang menunggu di depan gerbang, seseorang memotong di depanku.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7114_ilustrasi_buku, 'Ilustrasi Buku', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7114_ilustrasi_buku, 'さしえ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7114_ilustrasi_buku, 'アイツの話によると、彼女、本の挿絵を描いてるんだってさ。', 'Menurutnya, dia menggambar ilustrasi untuk buku.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7115_cerita_sampingan, 'Cerita Sampingan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7115_cerita_sampingan, 'Anekdot', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7115_cerita_sampingan, 'Episode', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7115_cerita_sampingan, 'そうわ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7115_cerita_sampingan, 'これには、面白い挿話があるんですよ。', 'Ada anekdot menarik mengenai hal ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7115_cerita_sampingan, 'ワニカニが出来るまでの、ちょっとした挿話があれば教えてください。', 'Jika Anda mempunyai anekdot tentang pembuatan WaniKani, silakan bagikan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7115_cerita_sampingan, '『吾輩は猫である』の中で特に面白い挿話は、猫が初めて餅を口にする場面です。', 'Salah satu episode yang sangat lucu dalam "I Am a Cat" adalah bagian di mana kucing memakan mochi untuk pertama kalinya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7115_cerita_sampingan, 'この小説の魅力は、本筋の合間に織り込まれた心温まる挿話にある。', 'Pesona novel ini terletak pada sketsa-sketsa mengharukan yang terjalin di sela-sela jalan cerita utamanya.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7116_insersi, 'Insersi', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7116_insersi, 'そうにゅう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7116_insersi, 'このパラグラフの間にアヤのイラストを挿入するのはどうでしょうか。', 'Mengapa kita tidak menyisipkan ilustrasi Aya di antara paragraf-paragraf ini?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7117_telapak, 'Telapak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7117_telapak, 'Telapak Tangan Seseorang', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7117_telapak, 'てのひら', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7117_telapak, '掌サイズの小さな電子辞書を買いました。', 'Saya membeli kamus elektronik kecil seukuran telapak tangan.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7118_konduktor_kereta_api, 'Konduktor Kereta Api', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7118_konduktor_kereta_api, 'Konduktor', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7118_konduktor_kereta_api, 'しゃしょう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7118_konduktor_kereta_api, '車掌は、乗客たちを待たせていることについて、お詫びをした。', 'Kondektur kereta meminta maaf kepada penumpang karena membuat mereka menunggu.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7119_tamak, 'Tamak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7119_tamak, 'Perebutan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7119_tamak, 'Memegang', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7119_tamak, 'しょうあく', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7119_tamak, '恐らく気づいていないと思うが、コウイチ大統領は全てを掌握しているんだよ。', 'Anda mungkin belum menyadarinya, tapi presiden Koichi memegang kekuasaan absolut.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7120_menetes, 'Menetes', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7120_menetes, 'したたる', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7120_menetes, '彼の額から、血が滴り落ちました。', 'Darah menetes dari dahinya.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7121_setetes_air, 'Setetes Air', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7121_setetes_air, 'Tetesan Air', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7121_setetes_air, 'すいてき', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7121_setetes_air, '車の窓には水滴がついています。', 'Tetesan air bertaburan di jendela mobil.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7122_tetes_intravena, 'Tetes Intravena', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7122_tetes_intravena, 'IV Tetes', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7122_tetes_intravena, 'てんてき', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7122_tetes_intravena, '点滴を受けた後、彼は綿密な診察を受けました。', 'Setelah mendapat infus, dia diperiksa secara menyeluruh.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7124_memasak_untuk_diri_sendiri, 'Memasak Untuk Diri Sendiri', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7124_memasak_untuk_diri_sendiri, 'じすい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7124_memasak_untuk_diri_sendiri, '忙しいけど、ちゃんと自炊してるよ。実際、昨日の夜はラタトゥイユっていう野菜の煮込み料理を作ったよ。', 'Saya sibuk, tapi saya memasak sendiri. Sebenarnya tadi malam saya membuat masakan sayur rebus bernama ratatouille.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7125_memasak, 'Memasak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7125_memasak, 'Pekerjaan Dapur', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7125_memasak, 'すいじ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7125_memasak, '僕たちは、炊事をする男を雇った。', 'Kami mempekerjakan seorang pria untuk melakukan pekerjaan dapur.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7126_penanak_nasi, 'Penanak nasi', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7126_penanak_nasi, 'すいはんき', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7126_penanak_nasi, '私達はみんな、剛志が炊飯器を買うのを楽しみにしています。', 'Kami semua menantikan Takeshi membeli rice cooker.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7127_menyegarkan, 'Menyegarkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7127_menyegarkan, 'Segar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7127_menyegarkan, 'Menyegarkan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7127_menyegarkan, 'さわやか', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7127_menyegarkan, '爽やかな海の風が肌に心地よかった。', 'Angin laut yang segar terasa nyaman di kulitku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7127_menyegarkan, '箱を開けると、パイナップルの爽やかな香りが部屋に広がった。', 'Saat saya membuka kotaknya, aroma segar nanas memenuhi ruangan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7127_menyegarkan, 'お気に入りのワンピに袖を通すと、いつも気分が爽やかになる。', 'Mengenakan gaun favoritku selalu membangkitkan semangatku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7127_menyegarkan, '爽やかなイケメンが横を通り過ぎたので、思わず三度見をしちゃいました。', 'Seorang pria berwajah segar melewati saya dan saya harus melakukan pengambilan tiga kali lipat.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7128_counter_untuk_tikar_tatami, 'Counter Untuk Tikar Tatami', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7128_counter_untuk_tikar_tatami, 'Penghitung Tikar Tatami', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7128_counter_untuk_tikar_tatami, 'じょう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7128_counter_untuk_tikar_tatami, '10.5畳で毎月のお家賃が一万円のこの部屋は、早い者勝ちの物件です。', 'Kamar sepuluh setengah tikar hanya dengan 10.000 yen per bulan ini merupakan penawaran siapa cepat dia dapat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7128_counter_untuk_tikar_tatami, '四畳半の部屋は、その頃のふたりの愛にはちょうどいい広さだった。', 'Kamar berukuran empat setengah tatami adalah ukuran yang tepat untuk cinta mereka saat itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7128_counter_untuk_tikar_tatami, '畳の部屋でなくても、「六畳一間」と言えば大体の広さが伝わります。', 'Meskipun tidak ada tatami, jika Anda mengucapkan "rokujō hitoma", hal tersebut tetap menyampaikan gambaran tentang ukuran ruangan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7128_counter_untuk_tikar_tatami, '畳には「江戸間」「京間」「団地間」などのサイズがあり、同じ6畳でも広さがちがいます。これを知らないと、「6畳なのにせまい」「6畳のカーペットが合わない」などのトラブルが起こることがあります。', 'Tikar tatami tersedia dalam berbagai ukuran seperti "Edo-ma", "Kyo-ma", dan "Danchi-ma", sehingga ruangan dengan 6 tatami pun dapat bervariasi dalam ukuran sebenarnya.
Jika Anda tidak menyadarinya, Anda mungkin mengalami masalah seperti berpikir "Ini 6 tatami, tapi rasanya kecil" atau "Karpet 6 tatami tidak muat."');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7129_tikar_tatami, 'tikar tatami', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7129_tikar_tatami, 'Tatami', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7129_tikar_tatami, 'たたみ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7129_tikar_tatami, '私は畳の上に脱ぎ捨てられた、表裏が逆になった皺々のワイシャツを見つけました。', 'Saya menemukan bagian dalam kemejanya yang kusut di tatami tempat dia melemparkannya.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7130_kejelasan, 'Kejelasan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7130_kejelasan, 'Jelasnya', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7130_kejelasan, 'Jernih', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7130_kejelasan, 'めいりょう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7130_kejelasan, 'さすがベテランアナウンサーなだけあって、彼女はとてもよく聞き取れる明瞭な声でその質問に答えました。', 'Seperti yang diharapkan dari seorang penyiar veteran seperti dia, dia menjawab pertanyaan dengan suara yang mudah dimengerti dan jelas.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7131_sumpit, 'Sumpit', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7131_sumpit, 'はし', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7131_sumpit, '口コミがあっという間に広がって、その折りたたみ式の陶器のお箸はとても人気が出ました。', 'Informasi dari mulut ke mulut menyebar dengan cepat dan sumpit keramik yang dapat dilipat menjadi sangat populer.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7132_sumpit_yang_dapat_dibelah, 'Sumpit yang Dapat Dibelah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7132_sumpit_yang_dapat_dibelah, 'Sumpit Kayu yang Dapat Dibelah', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7132_sumpit_yang_dapat_dibelah, 'わりばし', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7132_sumpit_yang_dapat_dibelah, '日本の首相を歓迎するために、通りは割り箸で飾られました。', 'Jalanan dihiasi dengan sumpit untuk menyambut perdana menteri Jepang.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7133_batang_tubuh, 'Batang tubuh', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7133_batang_tubuh, 'Perut', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7133_batang_tubuh, 'Pinggang', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7133_batang_tubuh, 'どう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7133_batang_tubuh, '剣道の試合で、コウイチは竹刀で相手の胴を完璧に討ち取りました。', 'Dalam pertandingan kendo, Koichi memukul bagian bawah badan lawan dengan sempurna menggunakan pedang bambunya.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7134_tubuh, 'Tubuh', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7134_tubuh, 'Belalai', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7134_tubuh, 'Batang tubuh', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7134_tubuh, 'どうたい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7134_tubuh, '君は今までみた中で一番胴体が長いよ。', 'Anda memiliki tubuh terpanjang yang pernah saya lihat.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7135_inti, 'Inti', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7135_inti, 'Sumbu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7135_inti, 'Pensil', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7135_inti, 'Sumsum', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7135_inti, 'しん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7135_inti, 'お買い得だったので、HBのシャー芯を百ケース買いました。', 'Saya membeli seratus kotak pensil mekanik HB karena harganya murah.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7136_pelangi, 'Pelangi', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7136_pelangi, 'にじ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7136_pelangi, 'はためく日本国旗の上には、美しい虹が掛かっていた。', 'Ada pelangi indah di atas bendera Jepang yang berkibar.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7137_berwarna_pelangi, 'Berwarna Pelangi', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7137_berwarna_pelangi, 'にじいろ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7137_berwarna_pelangi, '虹色の山葵を購入してみたんですが、味はまんま山葵ですね。', 'Saya membeli wasabi berwarna pelangi tapi rasanya seperti wasabi biasa.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7138_nona_muda, 'Nona Muda', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7138_nona_muda, 'Merindukan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7138_nona_muda, 'Anak perempuan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7138_nona_muda, 'おじょうさん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7138_nona_muda, '部長のお嬢さんは確か歌手志望じゃなかったですっけ？', 'Bukankah putri manajer itu seorang penyanyi yang ingin menjadi penyanyi?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7139_tanpa_alas_kaki, 'Tanpa alas kaki', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7139_tanpa_alas_kaki, 'はだし', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7139_tanpa_alas_kaki, '水虫になりたくないなら、スリッパを裸足で履かない方がいいですよ。', 'Anda tidak boleh memakai sandal tanpa alas kaki jika tidak ingin terkena penyakit kutu air.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7141_pendapatan, 'Pendapatan', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7141_pendapatan, 'かせぎ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7141_pendapatan, '稼ぎがそんなに多くないので、何によくお金を使っているか習慣を見直して節約するために家計簿をつけています。', 'Penghasilan kami tidak terlalu tinggi, jadi saya membuat buku rekening anggaran untuk melihat kebiasaan belanja kami guna menghemat uang.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7142_memburu, 'Memburu', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7142_memburu, 'がり', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7142_memburu, '鹿狩り用の見張り台は、今は大きなブルーシートで覆われています。', 'Platform pengamatan yang kami gunakan untuk berburu rusa sekarang ditutupi terpal biru besar.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7143_untuk_menyikat_gigi, 'Untuk Menyikat Gigi', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7143_untuk_menyikat_gigi, 'はをみがく', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7143_untuk_menyikat_gigi, '「どうして歯を磨かないの？」「だって、食べ物の味が口に残っているのが好きなんだもん。それっていけないことかしら？」', '"Kenapa kamu tidak menyikat gigi?" “Karena aku suka rasa makanan yang bertahan di mulutku! Apa yang salah dengan itu?!');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7144_untuk_membuat_sesuatu_jelas, 'Untuk Membuat Sesuatu Jelas', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7144_untuk_membuat_sesuatu_jelas, 'Untuk Menghapus Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7144_untuk_membuat_sesuatu_jelas, 'Untuk menyaring', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7144_untuk_membuat_sesuatu_jelas, 'すます', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7144_untuk_membuat_sesuatu_jelas, '今立て込んでるんだ。後で戻ってきてから泥水を澄ますよ。', 'Aku sedang melakukan sesuatu. Saya akan kembali lagi nanti dan membuat air berlumpur menjadi jernih.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7144_untuk_membuat_sesuatu_jelas, '私は、一つ上の階からコンスタントに聞こえてくる気味の悪い金切り声を聞くために、耳を澄ましました。', 'Aku menajamkan telingaku untuk mendengar pekikan samar namun terus-menerus datang dari lantai atas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7144_untuk_membuat_sesuatu_jelas, '少佐は、大佐に怒られても澄ました顔をしていた。', 'Sang Mayor tetap memasang wajah tenang bahkan ketika Kolonel sedang marah padanya.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7146_kerusakan_katamari, 'Kerusakan Katamari', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7146_kerusakan_katamari, 'かたまりだましい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7146_kerusakan_katamari, '最近は塊魂というゲームをプレイしています。', 'Saya baru-baru ini memainkan game bernama Katamari Damacy.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7147_ujung_tombak, 'Ujung Tombak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7147_ujung_tombak, 'Titik tombak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7147_ujung_tombak, 'Brunt', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7147_ujung_tombak, 'ほこさき', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7147_ujung_tombak, 'でも、どうしてハッカーは攻撃の矛先を俺たちに向けてきたんだ？', 'Namun, mengapa para peretas mengarahkan serangan terberatnya kepada kami?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7148_berkat, 'Berkat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7148_berkat, 'Karena', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7148_berkat, 'おかげで', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7148_berkat, '伊達さんがうちの子を見ていてくれたお陰で気兼ねなく買い物ができました。', 'Terima kasih atas perhatian Anda terhadap anak saya, Ms. Date, saya dapat berbelanja dengan bebas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7148_berkat, '両親がプレゼントしてくれた羽毛布団のお陰で、最近布団から出るのがかなり辛い。', 'Karena selimut bulu angsa yang diberikan orang tuaku, sangat sulit untuk bangun dari tempat tidur akhir-akhir ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7148_berkat, '皆様のお陰で、我々は甲子園球場で開催されている高校野球のトーナメントで、準々決勝にまで進出することができました。', 'Terima kasih kepada semuanya, kami bisa melaju ke perempat final Turnamen Bisbol Sekolah Menengah Nasional Jepang yang diadakan di stadion Koshien.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7448_keadaan_lengket, 'Keadaan lengket', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7448_keadaan_lengket, 'Lengket', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_7448_keadaan_lengket, 'ねばねば', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7448_keadaan_lengket, '綿棒で犬の耳垢を取ったら何だか粘々していたんですが、それは普通ですか。', 'Saya menghilangkan kotoran telinga anjing saya dengan kapas dan rasanya agak lengket. Apakah itu normal?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8999_senbei, 'Senbei', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8999_senbei, 'Kerupuk Beras', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8999_senbei, 'せんべい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8999_senbei, 'これは東京土産の煎餅です。', 'Ini kerupuk nasi, oleh-oleh dari Tokyo.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8999_senbei, 'やっぱり煎餅には煎茶が合うよね。', 'Teh hijau selalu cocok dengan senbei.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8999_senbei, 'ビエトは苛々して煎餅を投げた。', 'Viet kesal dan melempar kerupuk nasi.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9000_teh_hijau, 'Teh hijau', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9000_teh_hijau, 'Teh Daun Hijau', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9000_teh_hijau, 'Sencha', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_9000_teh_hijau, 'せんちゃ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9000_teh_hijau, '煎茶を入れたので良かったら飲みませんか。', 'Saya membuat teh hijau. Apakah Anda mau?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9000_teh_hijau, 'スタバの煎茶グリーンアップルが大好きなんです。', 'Saya suka teh apel hijau sencha Starbucks.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9000_teh_hijau, '私の兄はホットケーキに煎茶をかけて食べるんです。', 'Kakakku menuangkan teh daun hijau ke atas pancake.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9060_untuk_mengukir_sesuatu, 'Untuk Mengukir Sesuatu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9060_untuk_mengukir_sesuatu, 'Untuk Mengukir Sesuatu', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_9060_untuk_mengukir_sesuatu, 'ほる', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9060_untuk_mengukir_sesuatu, 'その石には仏像が彫ってありました。', 'Ada gambar Buddha yang diukir di batu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9060_untuk_mengukir_sesuatu, 'この由緒ある神社の前には、白鳥が彫られた門がある。', 'Di depan kuil bersejarah ini, terdapat sebuah gerbang dengan ukiran angsa di atasnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9060_untuk_mengukir_sesuatu, '工場で、彫刻機を使って文字を彫る仕事を担当しています。', 'Di pabrik, saya bertugas mengukir teks menggunakan mesin ukiran.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9128_kerikil, 'Kerikil', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_9128_kerikil, 'じゃり', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9128_kerikil, 'アスファルトは、砂利を石油で固めたものなんですよ。', 'Aspal adalah kerikil yang dikeraskan dengan minyak bumi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9128_kerikil, 'ウラン鉱山はこの砂利道の先にあります。', 'Tambang uranium berada di ujung jalan berkerikil ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9128_kerikil, '折角野菜を育てられるのに、庭に砂利を敷いてしまうのはもったいないと思うんだけど。', 'Saya pikir akan sangat disayangkan jika kita menyebarkan kerikil di kebun ketika kita bisa menanam sayuran.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9292_ayah_seseorang, 'Ayah seseorang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9292_ayah_seseorang, 'Pria Paruh Baya', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9292_ayah_seseorang, 'Ayah', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_9292_ayah_seseorang, 'おやじ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9292_ayah_seseorang, 'お前の親父さん、元気？', 'Bagaimana kabar ayahmu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9292_ayah_seseorang, 'あのヒゲ親父、ホント頑固なんだから。', 'Pria berjanggut itu sangat keras kepala.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9292_ayah_seseorang, '俺は小さい頃から、親父の背中を見て育った。', 'Saya tumbuh dengan memperhatikan punggung ayah saya sejak usia muda.');

  -- 4. PREREQUISITES
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1977_menghancurkan, id FROM items WHERE character = '石' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1977_menghancurkan, id FROM items WHERE character = '九' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1977_menghancurkan, id FROM items WHERE character = '十' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1978_lengket, id FROM items WHERE character = '米' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1978_lengket, id FROM items WHERE character = '占' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1979_kosmetik, id FROM items WHERE character = '米' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1979_kosmetik, id FROM items WHERE character = '广' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1979_kosmetik, id FROM items WHERE character = '土' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1980_penipuan, id FROM items WHERE character = '其' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1980_penipuan, id FROM items WHERE character = '欠' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1981_berbohong, id FROM items WHERE character = '言' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1981_berbohong, id FROM items WHERE character = '乍' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1982_kabut, id FROM items WHERE character = '雨' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1982_kabut, id FROM items WHERE character = '矛' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1982_kabut, id FROM items WHERE character = '夂' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1982_kabut, id FROM items WHERE character = '力' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1983_pohon_willow, id FROM items WHERE character = '木' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1983_pohon_willow, id FROM items WHERE character = '卩' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1984_italia, id FROM items WHERE character = 'ｲ' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1984_italia, id FROM items WHERE character = 'ヨ' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1984_italia, id FROM items WHERE character = '丿' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1985_membantu, id FROM items WHERE character = 'ｲ' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1985_membantu, id FROM items WHERE character = 'ナ' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1985_membantu, id FROM items WHERE character = '工' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1986_shaku, id FROM items WHERE character = '尺' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1987_menyedihkan, id FROM items WHERE character = '亠' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1987_menyedihkan, id FROM items WHERE character = '口' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1987_menyedihkan, id FROM items WHERE character = '/radicals/kick.svg' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1988_bibir, id FROM items WHERE character = '辰' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1988_bibir, id FROM items WHERE character = '口' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1989_pagar, id FROM items WHERE character = '土' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1989_pagar, id FROM items WHERE character = '尸' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1989_pagar, id FROM items WHERE character = '丷' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1989_pagar, id FROM items WHERE character = '开' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1990_menabrak, id FROM items WHERE character = '阝' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1990_menabrak, id FROM items WHERE character = '丷' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1990_menabrak, id FROM items WHERE character = '豕' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1990_menabrak, id FROM items WHERE character = '土' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1991_kemiripan, id FROM items WHERE character = '女' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1991_kemiripan, id FROM items WHERE character = '口' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1992_wanita_tua, r_402_melambai);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1992_wanita_tua, id FROM items WHERE character = '女' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1993_jurang, id FROM items WHERE character = '山' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1993_jurang, id FROM items WHERE character = '厂' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1993_jurang, id FROM items WHERE character = '土' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1994_topi, id FROM items WHERE character = '巾' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1994_topi, id FROM items WHERE character = '日' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1994_topi, id FROM items WHERE character = '目' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1995_uang_tunai, r_431_penguin);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1995_uang_tunai, id FROM items WHERE character = '巾' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1996_sakit_hati, id FROM items WHERE character = '忄' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1996_sakit_hati, id FROM items WHERE character = '艮' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1997_membenci, id FROM items WHERE character = '忄' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1997_membenci, id FROM items WHERE character = '曽' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1998_istirahat, id FROM items WHERE character = '舌' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1998_istirahat, id FROM items WHERE character = '自' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1998_istirahat, id FROM items WHERE character = '心' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1999_kipas_lipat, id FROM items WHERE character = '戸' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_1999_kipas_lipat, id FROM items WHERE character = '羽' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2000_pintu, id FROM items WHERE character = '戸' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2000_pintu, id FROM items WHERE character = '非' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2001_menyisipkan, id FROM items WHERE character = '扌' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2001_menyisipkan, id FROM items WHERE character = '千' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2001_menyisipkan, id FROM items WHERE character = '日' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2002_telapak, id FROM items WHERE character = '龸' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2002_telapak, id FROM items WHERE character = '口' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2002_telapak, id FROM items WHERE character = '手' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2003_menetes, id FROM items WHERE character = '氵' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2003_menetes, id FROM items WHERE character = '啇' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2004_memasak, id FROM items WHERE character = '火' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2004_memasak, id FROM items WHERE character = '欠' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2005_menyegarkan, id FROM items WHERE character = '大' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2005_menyegarkan, id FROM items WHERE character = 'メ' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2006_tikar_tatami, id FROM items WHERE character = '田' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2006_tikar_tatami, id FROM items WHERE character = '冖' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2006_tikar_tatami, id FROM items WHERE character = '且' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2007_jernih, id FROM items WHERE character = '目' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2007_jernih, id FROM items WHERE character = '尞' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2008_sumpit, id FROM items WHERE character = '竹' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2008_sumpit, id FROM items WHERE character = '者' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2009_batang_tubuh, id FROM items WHERE character = '月' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2009_batang_tubuh, id FROM items WHERE character = '同' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2010_sumbu, id FROM items WHERE character = '艹' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2010_sumbu, id FROM items WHERE character = '心' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2011_pelangi, id FROM items WHERE character = '虫' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2011_pelangi, id FROM items WHERE character = '工' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2049_handuk, id FROM items WHERE character = '巾' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_8991_memanggang, id FROM items WHERE character = '前' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_8991_memanggang, id FROM items WHERE character = '灬' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_3638_keinginan_yang_sepenuh_hati, id FROM items WHERE character = '心' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_3638_keinginan_yang_sepenuh_hati, id FROM items WHERE character = '願' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_4072_khususnya, id FROM items WHERE character = '取' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_4072_khususnya, id FROM items WHERE character = '分' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_4435_hak_hak_perempuan, id FROM items WHERE character = '女' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_4435_hak_hak_perempuan, id FROM items WHERE character = '権' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_6709_puncak, id FROM items WHERE character = '岳' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_6721_untuk_digosok, id FROM items WHERE character = '擦' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_6993_banzai, id FROM items WHERE character = '万' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_6993_banzai, id FROM items WHERE character = '歳' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7007_untuk_menumpahkan_sesuatu, id FROM items WHERE character = '零' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7054_melihat, id FROM items WHERE character = '眺' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7056_untuk_melembabkan, id FROM items WHERE character = '湿' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7058_puing, k_1977_menghancurkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7058_puing, id FROM items WHERE character = '石' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7059_pembubukan, id FROM items WHERE character = '粉' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7059_pembubukan, k_1977_menghancurkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7060_menjadi_lengket, k_1978_lengket);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7061_tanah_liat, k_1978_lengket);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7061_tanah_liat, id FROM items WHERE character = '土' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7062_adhesi, k_1978_lengket);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7062_adhesi, id FROM items WHERE character = '着' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7063_rias, id FROM items WHERE character = '化' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7063_rias, k_1979_kosmetik);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7064_untuk_menipu, k_1980_penipuan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7065_tipuan, k_1981_berbohong);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7065_tipuan, k_1980_penipuan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7066_menipu, k_1981_berbohong);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7066_menipu, id FROM items WHERE character = '取' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7067_kekeliruan, k_1981_berbohong);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7067_kekeliruan, id FROM items WHERE character = '称' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7068_kabut, k_1982_kabut);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7069_kabut_tebal, id FROM items WHERE character = '黒' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7069_kabut_tebal, k_1982_kabut);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7070_kabut_pagi, id FROM items WHERE character = '朝' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7070_kabut_pagi, k_1982_kabut);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7071_pohon_willow, k_1983_pohon_willow);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7072_distrik_lampu_merah, id FROM items WHERE character = '花' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7072_distrik_lampu_merah, k_1983_pohon_willow);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7073_komik_haiku, id FROM items WHERE character = '川' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7073_komik_haiku, k_1983_pohon_willow);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7074_ise, k_1984_italia);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7074_ise, id FROM items WHERE character = '勢' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7075_keelokan_semarak, k_1984_italia);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7075_keelokan_semarak, id FROM items WHERE character = '達' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7076_bantuan, id FROM items WHERE character = '補' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7076_bantuan, k_1985_membantu);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7077_kolonel, id FROM items WHERE character = '大' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7077_kolonel, k_1985_membantu);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7078_besar, id FROM items WHERE character = '少' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7078_besar, k_1985_membantu);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7079_letnan_kolonel, id FROM items WHERE character = '中' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7079_letnan_kolonel, k_1985_membantu);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7080_shaku, k_1986_shaku);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7081_pita_pengukur, id FROM items WHERE character = '巻' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7081_pita_pengukur, k_1986_shaku);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7082_disayangkan, k_1987_menyedihkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7083_menyedihkan, id FROM items WHERE character = '可' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7083_menyedihkan, k_1987_menyedihkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7083_menyedihkan, id FROM items WHERE character = '想' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7084_duka, id FROM items WHERE character = '悲' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7084_duka, k_1987_menyedihkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7085_bibir, k_1988_bibir);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7086_bibir_bawah, id FROM items WHERE character = '下' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7086_bibir_bawah, k_1988_bibir);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7087_bibir_atas, id FROM items WHERE character = '上' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7087_bibir_atas, k_1988_bibir);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7088_dinding, k_1989_pagar);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7089_tembok_lumpur, id FROM items WHERE character = '土' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7089_tembok_lumpur, k_1989_pagar);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7090_menembak_jatuh, id FROM items WHERE character = '撃' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7090_menembak_jatuh, k_1990_menabrak);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7091_menabrak, k_1990_menabrak);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7091_menabrak, id FROM items WHERE character = '落' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7092_kekurangan, id FROM items WHERE character = '欠' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7092_kekurangan, k_1991_kemiripan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7093_tiba_tiba, id FROM items WHERE character = '突' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7093_tiba_tiba, k_1991_kemiripan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7095_wanita_tua, id FROM items WHERE character = '老' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7095_wanita_tua, k_1992_wanita_tua);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7096_nenek, k_1992_wanita_tua);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7097_jurang, k_1993_jurang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7098_kain_piring, id FROM items WHERE character = '布' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7098_kain_piring, k_2049_handuk);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7099_kain_debu, id FROM items WHERE character = '雑' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7099_kain_debu, k_2049_handuk);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7100_topi, k_1994_topi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7100_topi, id FROM items WHERE character = '子' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7101_uang, id FROM items WHERE character = '貨' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7101_uang, k_1995_uang_tunai);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7102_uang_kertas, id FROM items WHERE character = '紙' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7102_uang_kertas, k_1995_uang_tunai);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7103_untuk_menyimpan_dendam, k_1996_sakit_hati);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7104_menyesali, id FROM items WHERE character = '痛' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7104_menyesali, k_1996_sakit_hati);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7105_untuk_membenci, k_1997_membenci);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7106_cinta_dan_benci, id FROM items WHERE character = '愛' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7106_cinta_dan_benci, k_1997_membenci);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7107_untuk_beristirahat, k_1998_istirahat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7108_istirahat, id FROM items WHERE character = '休' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7108_istirahat, k_1998_istirahat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7109_untuk_penggemar, k_1999_kipas_lipat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7110_kipas_listrik, k_1999_kipas_lipat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7110_kipas_listrik, id FROM items WHERE character = '風' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7110_kipas_listrik, id FROM items WHERE character = '機' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7111_kipas_lipat, k_1999_kipas_lipat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7111_kipas_lipat, id FROM items WHERE character = '子' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7112_pintu, k_2000_pintu);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7113_pintu_gerbang, id FROM items WHERE character = '門' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7113_pintu_gerbang, k_2000_pintu);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7114_ilustrasi_buku, k_2001_menyisipkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7114_ilustrasi_buku, id FROM items WHERE character = '絵' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7115_cerita_sampingan, k_2001_menyisipkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7115_cerita_sampingan, id FROM items WHERE character = '話' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7116_insersi, k_2001_menyisipkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7116_insersi, id FROM items WHERE character = '入' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7117_telapak, k_2002_telapak);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7118_konduktor_kereta_api, id FROM items WHERE character = '車' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7118_konduktor_kereta_api, k_2002_telapak);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7119_tamak, k_2002_telapak);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7119_tamak, id FROM items WHERE character = '握' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7120_menetes, k_2003_menetes);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7121_setetes_air, id FROM items WHERE character = '水' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7121_setetes_air, k_2003_menetes);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7122_tetes_intravena, id FROM items WHERE character = '点' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7122_tetes_intravena, k_2003_menetes);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7124_memasak_untuk_diri_sendiri, id FROM items WHERE character = '自' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7124_memasak_untuk_diri_sendiri, k_2004_memasak);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7125_memasak, k_2004_memasak);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7125_memasak, id FROM items WHERE character = '事' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7126_penanak_nasi, k_2004_memasak);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7126_penanak_nasi, id FROM items WHERE character = '飯' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7126_penanak_nasi, id FROM items WHERE character = '器' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7127_menyegarkan, k_2005_menyegarkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7128_counter_untuk_tikar_tatami, k_2006_tikar_tatami);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7129_tikar_tatami, k_2006_tikar_tatami);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7130_kejelasan, id FROM items WHERE character = '明' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7130_kejelasan, k_2007_jernih);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7131_sumpit, k_2008_sumpit);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7132_sumpit_yang_dapat_dibelah, id FROM items WHERE character = '割' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7132_sumpit_yang_dapat_dibelah, k_2008_sumpit);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7133_batang_tubuh, k_2009_batang_tubuh);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7134_tubuh, k_2009_batang_tubuh);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7134_tubuh, id FROM items WHERE character = '体' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7135_inti, k_2010_sumbu);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7136_pelangi, k_2011_pelangi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7137_berwarna_pelangi, k_2011_pelangi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7137_berwarna_pelangi, id FROM items WHERE character = '色' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7138_nona_muda, id FROM items WHERE character = '嬢' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7139_tanpa_alas_kaki, id FROM items WHERE character = '裸' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7139_tanpa_alas_kaki, id FROM items WHERE character = '足' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7141_pendapatan, id FROM items WHERE character = '稼' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7142_memburu, id FROM items WHERE character = '狩' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7143_untuk_menyikat_gigi, id FROM items WHERE character = '歯' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7143_untuk_menyikat_gigi, id FROM items WHERE character = '磨' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7144_untuk_membuat_sesuatu_jelas, id FROM items WHERE character = '澄' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7146_kerusakan_katamari, id FROM items WHERE character = '塊' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7146_kerusakan_katamari, id FROM items WHERE character = '魂' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7147_ujung_tombak, id FROM items WHERE character = '矛' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7147_ujung_tombak, id FROM items WHERE character = '先' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7148_berkat, id FROM items WHERE character = '陰' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7448_keadaan_lengket, k_1978_lengket);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_7448_keadaan_lengket, id FROM items WHERE character = '々' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8999_senbei, k_8991_memanggang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8999_senbei, id FROM items WHERE character = '餅' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_9000_teh_hijau, k_8991_memanggang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_9000_teh_hijau, id FROM items WHERE character = '茶' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_9060_untuk_mengukir_sesuatu, id FROM items WHERE character = '彫' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_9128_kerikil, id FROM items WHERE character = '砂' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_9128_kerikil, id FROM items WHERE character = '利' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_9292_ayah_seseorang, id FROM items WHERE character = '親' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_9292_ayah_seseorang, id FROM items WHERE character = '父' LIMIT 1;

END $$;