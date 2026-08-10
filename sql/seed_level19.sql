-- ====================================================
-- KaniGani — Seed Data Level 19 (v2, relasional)
-- Auto-generated with Indonesian Slugs
-- ====================================================

DO $$
DECLARE
  -- ============ RADICAL IDs (Level 19) ============
  r_263_menjadi UUID; r_265_lubang_hitam UUID; r_266_direktur UUID; r_268_alasan UUID; r_272_ego UUID; r_362_benar UUID;

  -- ============ KANJI IDs (Level 19) ============
  k_1057_menambahkan UUID; k_1058_musim UUID; k_1059_mengurangi UUID; k_1060_memesan UUID; k_1061_membentuk UUID; k_1062_kain UUID; k_1063_mudah UUID; k_1064_kekayaan UUID; k_1065_muda UUID; k_1066_bagian_pidato UUID; k_1067_serangga UUID; k_1068_klik UUID; k_1070_lidah UUID; k_1071_konter_buku UUID; k_1072_luar_angkasa UUID; k_1073_di_udara UUID; k_1074_sibuk UUID; k_1076_kelompok UUID; k_1077_kekerasan UUID; k_1078_mencampur UUID; k_1079_kerusuhan UUID; k_1080_muda UUID; k_1081_mendapatkan UUID; k_1082_memperbarui UUID; k_1083_melanjutkan UUID; k_1084_bawa_serta UUID; k_1085_baik_secara_moral UUID; k_1087_melibatkan UUID; k_1121_seruling UUID; k_1553_kentang UUID; k_1725_mengubur UUID;

  -- ============ VOCABULARY IDs (Level 19) ============
  v_2634_untuk_keluar UUID; v_2711_dunia UUID; v_3243_rekonsiliasi UUID; v_3376_sedih UUID; v_3546_panca_indera UUID; v_3708_postingan_pekerjaan UUID; v_4010_buah UUID; v_4057_kamis UUID; v_4058_rabu UUID; v_4141_lidah_bercabang UUID; v_4166_menjadi_dalam_gangguan UUID; v_4167_perkelahian UUID; v_4168_kebingungan UUID; v_4169_sukaria UUID; v_4170_konter_buku UUID; v_4171_tiga_buku UUID; v_4172_delapan_buku UUID; v_4173_satu_buku UUID; v_4174_volume_terpisah UUID; v_4175_tidak_bertanggung_jawab UUID; v_4176_tenaga_nuklir UUID; v_4177_peningkatan UUID; v_4178_baik_dan_jahat UUID; v_4179_kelompok UUID; v_4180_pendaftaran UUID; v_4182_musim UUID; v_4183_luar_angkasa UUID; v_4184_petugas_polisi UUID; v_4185_isi UUID; v_4186_kecurigaan UUID; v_4187_kata_sifat UUID; v_4190_wakame UUID; v_4191_kain UUID; v_4192_dompet UUID; v_4193_kasur UUID; v_4194_selimut UUID; v_4195_murid UUID; v_4196_budha UUID; v_4197_orang_percaya UUID; v_4198_untuk_memperoleh UUID; v_4199_keuntungan UUID; v_4200_baik_dalam UUID; v_4201_bujukan UUID; v_4202_sibuk UUID; v_4203_kekasih UUID; v_4205_revisi UUID; v_4206_kegagalan_total UUID; v_4207_konbu UUID; v_4208_mudah UUID; v_4209_kemudahan UUID; v_4210_bertindak_dengan_kekerasan UUID; v_4211_kekerasan UUID; v_4212_brutal UUID; v_4213_berkeliaran UUID; v_4214_acar_plum UUID; v_4216_sejarah_akademik UUID; v_4220_untuk_mencampur_sesuatu UUID; v_4222_untuk_mengurangi UUID; v_4223_pengurangan UUID; v_4224_festival_musiman UUID; v_4225_untuk_terlibat_dengan UUID; v_4226_untuk_melanjutkan UUID; v_4227_satu_demi_satu UUID; v_4228_lidah UUID; v_4229_keengganan_terhadap_makanan_panas UUID; v_4230_muda UUID; v_4231_orang_muda UUID; v_4232_muda UUID; v_4233_kata_benda UUID; v_4234_kata_kerja UUID; v_4235_lirik_lagu UUID; v_4236_partikel_tata_bahasa UUID; v_4237_angka UUID; v_4238_kata_kerja_intransitif UUID; v_4239_ketidaksadaran UUID; v_4240_dana_swasta UUID; v_4241_utang UUID; v_4242_serial UUID; v_4243_untuk_dibawa_serta UUID; v_4244_plutokrat UUID; v_4245_sangat UUID; v_4246_pintu_keluar_darurat UUID; v_4247_peringkat UUID; v_4248_memesan UUID; v_4249_mengurangi_pesanan UUID; v_4250_meningkatkan_pesanan UUID; v_4251_urutan_tempat_duduk UUID; v_4252_urutan_kronologis UUID; v_4253_pesanan_aiueo UUID; v_4348_terperinci UUID; v_4349_kantor_polisi UUID; v_4358_seruling UUID; v_4359_peluit_uap UUID; v_4367_untuk_menambahkan UUID; v_4368_partisipasi UUID; v_4372_untuk_menghubungi UUID; v_5760_kentang UUID; v_5761_ubi_jalar_panggang UUID; v_5762_kentang UUID; v_5810_rombongan_drama UUID; v_6301_untuk_mengubur UUID; v_6811_satu_hewan_kecil UUID; v_7480_bagian_pidato UUID; v_7550_untuk_menghafal UUID; v_7551_geng UUID; v_7552_sibuk UUID; v_7591_sukacita UUID; v_7593_setiap_hari UUID; v_7647_hubungan UUID; v_7695_kesedihan UUID; v_7761_di_udara UUID; v_8674_ras_campuran UUID; v_8944_untuk_mengubah_sesuatu UUID; v_9019_minum_alkohol UUID; v_9039_serangga UUID; v_9044_bawa_pulang UUID; v_9268_tahun_sebelumnya UUID; v_9295_untuk_melewati_ke UUID; v_9303_seperti_yang_diharapkan UUID; v_9304_untuk_ditumpuk UUID; v_9360_semua_arah UUID;

BEGIN

  DELETE FROM items WHERE level = 19;

  -- 1. RADICALS
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '成', 'menjadi', 19, 1, 'Radikal ini sama dengan kanji. Artinya <radikal>menjadi</radikal>.')
    RETURNING id INTO r_263_menjadi;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '复', 'lubang-hitam', 19, 2, 'Anda menembakkan senjata Anda ke arah matahari di musim dingin, membuatnya meledak dan berubah menjadi <radikal>lubang hitam</radikal>. Hebat, sekarang musim dingin permanen dan lubang hitam menyedot semua yang ada di Bumi ke dalamnya - termasuk senjata Anda dan beberapa pemain ski malang yang sedang menjalani hidup mereka di sekitar tepi lubang hitam.')
    RETURNING id INTO r_265_lubang_hitam;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '司', 'direktur', 19, 3, 'Radikal ini sama dengan kanji. Artinya <radikal>direktur</radikal>.')
    RETURNING id INTO r_266_direktur;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '由', 'alasan', 19, 4, 'Radikal ini sama dengan kanji. Artinya <radikal>alasan</radikal>.')
    RETURNING id INTO r_268_alasan;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '我', 'ego', 19, 5, 'Ada seorang pemabuk yang mengulurkan jarinya. Dia menatap mereka. Menyadari siapa dia. Dia menjadi sadar akan <radikal>ego</radikal> miliknya. Sekarang dia sadar akan dirinya sendiri, egonya mungkin akan meningkat juga. sial.')
    RETURNING id INTO r_272_ego;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '右', 'benar', 19, 6, 'Radikal ini sama dengan kanji. Artinya <radikal>benar</radikal>.')
    RETURNING id INTO r_362_benar;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_263_menjadi, 'Menjadi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_265_lubang_hitam, 'Lubang Hitam', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_266_direktur, 'Direktur', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_268_alasan, 'Alasan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_272_ego, 'ego', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_362_benar, 'Benar', true, true);

  -- 2. KANJIS
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '加', 'menambahkan', 19, 7, '<radical>kekuatan</radikal> dari <radical>mulut</radikal> memungkinkan Anda <kanji>menambahkan</kanji> kata untuk membentuk sebuah kalimat. Kagumi kekuatan aditif luar biasa yang dimiliki mulut Anda! Anda menggabungkan kata-kata dengan cara yang luar biasa!', 'Orang tuamu sangat bangga karena kamu bisa <kanji>menambahkan</kanji> kata-kata sehingga mereka mengejutkanmu dengan <reading>ca</reading>r (か) yang baru. Wow! Anda menambahkan beberapa stiker ke bumper Anda dan menambahkan playlist favorit Anda ke radio mobil. Ayo mengemudi.')
    RETURNING id INTO k_1057_menambahkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '節', 'musim', 19, 8, 'Di bagian bawah <radical>bambu</radical> <radical>root</radical>, terdapat <radical>cap</radical> yang memberitahukan Anda <kanji>musim</kanji> saat pemotongannya.

Selain itu, pada stempel tersebut juga terdapat informasi mengenai kondisi <kanji>sambungan</kanji> bambu, karena tidak ada seorang pun yang mau membeli bambu yang sambungannya rusak!', 'Perangko <kanji>musim</kanji> ini ditandai pada <membaca>set</reading> bambu (せつ). Anda tidak bisa membeli satu buah pisang atau satu buah anggur pun, dan begitu saja, jika Anda menginginkan bambu musiman yang bagus, Anda harus membelinya dalam satuan set.')
    RETURNING id INTO k_1058_musim;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '減', 'mengurangi', 19, 9, 'Arahkan <radical>tsunami</radical> ke <radical>mulut</radical> <radical>anjing</radical> untuk <kanji>mengurangi</kanji> jumlah air yang menerpa area sekitar.', 'Setelah Anda dan anjing Anda <kanji>mengurangi</kanji> kekuatan tsunami, <reading>Gen</reading>ji (げん) keluar untuk mengucapkan terima kasih. Tsunami itu akan menghanyutkan rumah Genji, yang akan memaksanya untuk mengurangi aktivitas playboynya yang sembrono.')
    RETURNING id INTO k_1059_mengurangi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '順', 'memesan', 19, 10, 'Ketika mereka bermigrasi ke <radical>sungai</radical>, sekelompok <radical>geoducks</radical> harus melakukannya dalam <kanji>urutan</kanji> dan <kanji>urutan</kanji> tertentu.', 'Sebenarnya, mereka masuk dalam <kanji>urutan</kanji> bulan lahir, mulai dari <reading>Juni</reading> (じゅん). Tidak ada yang tahu mengapa mereka mengikuti <kanji>urutan</kanji> yang berbasis di bulan Juni ini. Namun geoduck yang lahir di bulan Juni selalu menempati urutan pertama dalam urutan migrasi.')
    RETURNING id INTO k_1060_memesan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '容', 'membentuk', 19, 11, 'Jika Anda meletakkan <radical>atap</radikal> di atas <radikal>lembah</radikal> maka <kanji>bentuknya</kanji> akan berubah. <kanji>penampilannya</kanji> akan berubah total!', '<kanji>penampilan</kanji> barunya tampak familier bagi Anda, seperti cangkir <read>yo</reading>gurt (よう) yang besar! Sebuah lembah dengan atap di atasnya tampak persis seperti cangkir yogurt. Hah!')
    RETURNING id INTO k_1061_membentuk;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '布', 'kain', 19, 12, 'Bagi seorang <radical>narwhal</radical>, <radical>handuk</radical> hanyalah <kanji>kain</kanji> biasa. Mereka selalu basah jadi hanya kain handuk yang mereka tahu.', 'Jika kamu menggunakan <kanji>kain</kanji> jenis ini untuk pakaian dan selimut, orang akan memanggilmu <reading>foo</reading>l (ふ). Mereka mengira Anda adalah orang bodoh yang tidak bisa membedakan antara kain manusia dan kain handuk.')
    RETURNING id INTO k_1062_kain;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '易', 'mudah', 19, 13, 'Kanji <radikal>mudah</radikal> dan kanji <kanji>mudah</kanji> adalah sama!', 'Bacaan <kanji>mudah</kanji> apa untuk kanji ini? <membaca>い</membaca>! Kedengarannya mudah dimulai dengan!')
    RETURNING id INTO k_1063_mudah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '財', 'kekayaan', 19, 14, 'Berikan beberapa <radical>kerang</radikal> kepada orang yang <radical>berbakat</radikal> dan mereka tidak akan kesulitan mengumpulkan <kanji>kekayaan</kanji>. Orang yang berbakat bisa menghasilkan uang dari apa saja, jadi kerang itu seperti mode mudah.', 'Orang berbakat ini benar-benar mulai mengumpulkan <kanji>kekayaan</kanji> ketika <reading>cy</reading>borg (さい) mereka terungkap. Itu adalah cyborg setengah manusia, setengah kerang yang memainkan <reading>xy</reading>lophone (ざい), dan semua orang ingin membelinya.')
    RETURNING id INTO k_1064_kekayaan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '若', 'muda', 19, 15, 'Ada <radical>bunga</radical> di <radical>kanan</radical> Anda untuk menunjukkan bahwa Anda masih <kanji>muda</kanji>. Tubuh Anda masih bekerja, Anda bahagia, seluruh hidup Anda ada di depan Anda! Dan semuanya berbau seperti bunga.', 'Saat <kanji>muda</kanji> melihat ke kanan, mereka akan melihat masa depan mereka: <reading>walke</reading>r (わか). Anda tahu, alat logam dengan bola tenis di bagian bawahnya untuk memastikan tidak menggores lantai. Segalanya mungkin menjadi bunga dan kebahagiaan saat ini, tetapi masa depan Anda sedang dalam perjalanan.')
    RETURNING id INTO k_1065_muda;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '詞', 'bagian-pidato', 19, 16, 'Apa yang Anda <radikal>katakan</radikal> kepada <radikal>direktur</radikal> akan langsung dinilai. Anda kesulitan memahami <kanji>bagian pidato</kanji> ini, jadi dia mencoba membantu Anda. Tapi Anda mengatakannya berulang kali dan dia terus mengatakan Anda salah.', 'Sutradara bertanya lagi, "Apa bagian pidato untuk kata <reading>shee</reading>p (し)?"')
    RETURNING id INTO k_1066_bagian_pidato;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '昆', 'serangga', 19, 17, 'Jika <radical>matahari</radikal> <radikal>dibandingkan</radikal> dengan <kanji>serangga</kanji>, Anda akan melihat bahwa keduanya berkilau, namun matahari jauh lebih bersinar daripada serangga.', 'Saat Anda sedang mendekatkan <kanji>serangga</kanji> ke matahari sebagai perbandingan, sekawanan <reading>con</reading>dors (こん) terbang lewat, menghalangi sinar matahari. Ada begitu banyak burung condor yang berhasil menghalangi sinar matahari sepenuhnya.')
    RETURNING id INTO k_1067_serangga;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '閥', 'klik', 19, 18, 'Pingsan di depan <radical>gerbang</radikal> Anda terletak seorang mantan <radikal>pemimpin</radikal>. Dia sekarang adalah <radikal>pemabuk</radikal>, tapi pernah menjadi anggota <kanji>klik</kanji> populer yang disebut <kanji>Klan</kanji> Anak Keren. Klannya telah berantakan, dan dia tidak lagi memiliki kelompok yang bisa disebut miliknya.', 'Akhirnya kamu muak dan bosan dengan pemimpin <kanji>klan</kanji> yang terhanyut ini dan kamu mengumpulkan <kanji>klik</kanji>mu sendiri untuk mengusir orang ini dari gerbang dan propertimu. Kamu dan temanmu mengambil beberapa <read>kelelawar</reading> (ばつ) dan menggunakan pemukul tersebut untuk mengalahkan pemimpin pemabuk. Dipukul dengan tongkat membuatnya takut, dan dia bergegas pergi.')
    RETURNING id INTO k_1068_klik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '舌', 'lidah', 19, 19, 'Radikal <radikal>lidah</radikal> dan kanji <kanji>lidah</kanji> sama persis! Ya ampun!', 'Anda tertidur lelap di tempat tidur ketika <kanji>lidah</kanji> Anda keluar dari mulut dan Anda mulai ngiler, mengeluarkan air liur ke seluruh <reading>sprei</reading> (した). Anda bangun dengan sepetak kain basah di dekat mulut Anda dan menyeka air liur dari wajah Anda. Orang penting Anda melihat semuanya.')
    RETURNING id INTO k_1070_lidah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '冊', 'konter-buku', 19, 20, 'Anda menggunakan <radical>rak buku</radical> sebagai <kanji>penghitung buku</kanji>. Duh. Apa, maukah kamu menghitungnya satu per satu? Oke, mungkin saja, tapi Anda harus menghitungnya selagi masih bagus dan terorganisir di rak. Jika tidak, menghitung akan sangat merepotkan.', 'Anda menggunakan metode <kanji>penghitung buku</kanji> ini untuk menghitung semua buku yang dimiliki <reading>Satsu</reading>ki (さつ) di rumahnya. Ingat dia? Dia punya banyak sekali buku, tapi dia masih seorang gadis kecil jadi dia butuh bantuan. Di situlah pengetahuan penghitung buku Anda berguna.')
    RETURNING id INTO k_1071_konter_buku;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '宇', 'luar-angkasa', 19, 21, 'Anda menggunakan <radical>atap</radical> untuk menjaga diri Anda <radical>kering</radical> dan aman dari <kanji>luar angkasa</kanji>. Lihatlah ke luar, di atas atap Anda, dan Anda akan melihat ruang luar terbentang di atas Anda.', 'Mengapa di <kanji>luar angkasa</kanji> tidak kering, Anda bertanya? Karena semua <read>u</reading>ni (う) berenang di atas sana. Mereka mempunyai duri-duri yang jelek, basah, runcing dan tersebar dimana-mana.')
    RETURNING id INTO k_1072_luar_angkasa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '宙', 'di-udara', 19, 22, 'Anda melompat dari <radical>atap</radical> karena <radical>alasan</radical> dan sekarang Anda melayang di <kanji>di udara</kanji>! Anda menendang kaki Anda sedikit dan menggerakkan lengan Anda seperti berada di dalam air, namun Anda tetap saja terjebak di udara.', 'Saat Anda berputar sedikit di <kanji>di udara</kanji> Anda melihat ke atas dan melihat <reading>Chew</reading>bacca (ちゅう) menatap Anda dari pesawat luar angkasa. Dia tertawa dengan tawa Chewbacca-nya dan Anda menyadari bahwa dia telah menjebak Anda dalam balok traktornya.')
    RETURNING id INTO k_1073_di_udara;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '忙', 'sibuk', 19, 23, 'Anda akan melatih <radical>jiwa</radikal> Anda hingga <radikal>kematian</radikal> jika Anda terlalu <kanji>sibuk</kanji>. Menjadi sibuk tidak baik untuk jiwa Anda. Beristirahatlah. Pergi berlibur. Jangan terlalu sibuk hingga menghancurkan diri sendiri.', 'Luangkan waktu dari <kanji>kesibukan</kanji> Anda dan lakukan <reading>membungkuk</reading>ling (ぼう) sesekali. Faktanya, Anda mungkin harus bermain bowling setidaknya seminggu sekali. Tidak ada yang mengembalikan energi ke dalam hidup Anda seperti bermain bowling yang menenangkan.')
    RETURNING id INTO k_1074_sibuk;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '団', 'kelompok', 19, 24, 'Gunakan <radical>mulut</radical> Anda untuk melakukan <radical>pengukuran</radical> dari <kanji>grup</kanji> ini. Rentangkan saja mulut Anda ke sekeliling setiap orang. Bawa semuanya ke sana.', '<kanji>Grup</kanji> ini sangat besar sehingga Anda memerlukan waktu hingga <reading>fajar</reading> (だん) untuk mengukurnya: beratnya <reading>ton</reading> (とん) juga!')
    RETURNING id INTO k_1076_kelompok;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '暴', 'kekerasan', 19, 25, 'Saat <radical>matahari</radikal> <radikal>bersama</radikal> dengan <radikal>air</radikal>, hanya <kanji>kekerasan</kanji> yang dapat terjadi. Mereka tidak bisa bergaul dengan baik. Matahari suka melawan air dan air suka melawan matahari. Banyak sekali kekerasan.', 'Namun setelah beberapa saat, matahari dan air sudah muak dengan <kanji>kekerasan</kanji>. Mereka memutuskan untuk menyelesaikan perbedaan mereka dengan permainan persahabatan <reading>bow</reading>ling (ぼう). Bowling adalah cara yang bagus untuk menghilangkan stres dan pada akhirnya, mereka terikat karenanya.')
    RETURNING id INTO k_1077_kekerasan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '混', 'mencampur', 19, 26, '<radikal>tsunami</radikal> yang mengamuk muncul di samping <radikal>matahari</radikal> yang tenang. Saat Anda mencoba <radikal>membandingkan</radikal> kedua hal ini, jelas bahwa keduanya tidak dapat <kanji>dicampur</kanji>. Jika terjadi tsunami, kemungkinan besar akan menghalangi matahari.', 'Tepat sebelum tsunami menerjang Anda, sebuah <reading>con</reading>dor (こん) terbang dari langit dan menangkap Anda. Condor ini pasti merupakan <kanji>campuran</kanji> — condor normal tidak cukup kuat untuk mengangkat manusia. Condor harus dicampur dengan yang lain. Seperti pterodaktil.')
    RETURNING id INTO k_1078_mencampur;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '乱', 'kerusuhan', 19, 27, 'Jika Anda menusuk <radical>lidah</radikal> seseorang dengan <radical>payung</radikal>, itu pasti akan memicu <kanji>kerusuhan</kanji> dan menyebabkan <kanji>gangguan</kanji>. Tak seorang pun suka ditusuk lidahnya dengan payung, jadi mereka mungkin akan membalas, dan sebelum Anda menyadarinya, Anda sudah menghadapi kerusuhan besar-besaran. Lihat apa yang telah kamu lakukan.', 'Baru saja kamu menyadari kalau pria yang lidahmu tusuk dengan payungmu itu tak lain adalah Pria Macho <reading>Ran</reading>dy Savage (らん). Menjadi pegulat profesional, Pria Macho Randy Savage siap untuk menyerah pada saat itu juga. <kanji>kerusuhan</kanji> segera meletus. Ini adalah pertarungan kerajaan dengan Anda dan Randy di pusat gempa.')
    RETURNING id INTO k_1079_kerusuhan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '徒', 'muda', 19, 28, '“Jangan <radical>berkeliaran</radikal> – <radikal>berlari</radikal>, <kanji>Junior</kanji>!” kata Indiana Jones Senior kepada Indiana Jones Junior. Mereka melarikan diri dari situasi sulit dan Junior hanya berkeliaran seperti orang bodoh. Bukan waktunya bermalas-malasan, ini waktunya berlari!', 'Memutuskan untuk tidak bermalas-malasan lagi, Indiana Jones <kanji>Junior</kanji> menuruti nasihat ayahnya dan mulai berlari. Sayangnya dia tidak memperhatikan di mana kakinya berada dan dia mematikan <reading>to</reading>e (と) pada batu bergerigi. Jari kakinya sangat sakit sehingga dia tidak tahan untuk berlari lebih lama lagi.')
    RETURNING id INTO k_1080_muda;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '得', 'mendapatkan', 19, 29, 'Jika Anda <radical>berkeliaran</radical> di sekitar <radical>matahari</radical> <radical>kuil</radical>, kemungkinan besar Anda akan <kanji>memperoleh</kanji> sesuatu. Ketika kamu bermalas-malasan seperti itu sepertinya kamu sedang menunggu sesuatu, jadi jika seseorang menaruh sesuatu di tanganmu dan kamu kebetulan mendapatkannya, ya, tidak ada yang bisa menyalahkanmu karena hal itu.', 'Kamu berhasil <kanji>memperoleh</kanji> tembakau, tapi saat kamu hendak meninggalkan <reading>Toku</reading>gawa (とく) Ieyasu datang menghampirimu!! Atau setidaknya, hantunya melakukannya. Dia menatap mata Anda dan berkata, "Saya tidak menemukan shogun agar Anda mendapatkan barang ilegal dan membunuh tubuh Anda di tanah saya."')
    RETURNING id INTO k_1081_mendapatkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '改', 'memperbarui', 19, 30, 'Penting untuk memfokuskan <radical>diri</radical> di <radical>musim dingin</radical> sehingga seseorang dapat muncul <kanji>diperbarui</kanji>! Anda tidak bisa pergi keluar di musim dingin tanpa kedinginan atau sakit, jadi habiskan musim dingin dengan fokus pada ANDA.', 'Musim dingin berakhir dan, <kanji>diperbarui</kanji>ed, Anda siap memulai hobi baru: <reading>kay</reading>aking (かい)! Tidak ada yang mengatakan pembaruan seperti kayak baru dan tujuan hidup.')
    RETURNING id INTO k_1082_memperbarui;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '続', 'melanjutkan', 19, 31, 'Anda harus mengumpulkan <radical>thread</radical> untuk <radical>dijual</radical> jika Anda ingin <kanji>melanjutkan</kanji> hidup. Anda ingin mencari nafkah, bukan? Pastikan Anda terus menjual thread itu setiap hari!', 'Anda harus <kanji>terus</kanji> menjual thread tersebut karena geng sepeda Boso<reading>zoku</reading> (ぞく) memaksa Anda melakukannya. Anda lihat? Jika ingin terus hidup, kamu harus menenangkan geng Bosozoku ini. Anda sebaiknya terus menjual!')
    RETURNING id INTO k_1083_melanjutkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '連', 'bawa-serta', 19, 32, '<radical>Skuter</radikal> dan <radikal>mobil</radikal> Anda adalah barang yang selalu <kanji>bawa</kanji> bersama Anda. Pastikan semuanya <kanji>terhubung</kanji> dengan baik agar Anda tidak kehilangannya!', 'Anda <kanji>membawa serta</kanji> skuter dan mobil Anda. Apa pun yang lain, Anda dapat melakukan <reading>ren</reading>tal (れん) untuk!')
    RETURNING id INTO k_1084_bawa_serta;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '善', 'baik-secara-moral', 19, 33, '<radikal>domba</radikal> kehilangan <radikal>tanduk</radikal> di <radikal>tanah</radikal> sehingga ia mengambilnya di <radikal>mulut</radikal> untuk dibawa ke seseorang yang <kanji>baik secara moral</kanji> untuk memasangkannya kembali ke kepalanya. Domba tidak mempunyai tangan, sehingga domba harus mengambil tanduk dari tanah dengan mulutnya. Seseorang yang jahat akan membunuh dombanya dan mencuri tanduknya, jadi domba tersebut harus menemukan seseorang yang <kanji>baik</kanji> untuk memasangkannya kembali.', 'Karena Anda <kanji>baik secara moral</kanji>, Anda memutuskan untuk tidak membunuh domba dan mengambil organnya. Sebaliknya, sebagai seorang praktisi ajaran <kanji>baik</kanji> dari <reading>Zen</reading> (ぜん) Buddhisme, Anda memutuskan untuk membantu domba-domba tersebut. Ajaran Zen Anda telah meningkatkan kekuatan kemampuan penyembuhan Anda, sehingga Anda dapat menyembuhkan domba dalam waktu singkat.')
    RETURNING id INTO k_1085_baik_secara_moral;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '絡', 'melibatkan', 19, 34, 'Jika Anda meletakkan <radical>utas</radikal> di tengah-tengah <radikal>ciuman</radikal>, Anda akan <kanji>menjerat</kanji> itu. Segala sesuatunya bisa menjadi sangat berantakan dalam sebuah ciuman, jadi menambahkan benang ke dalam ciuman pasti akan menjeratnya.', 'Ini tidak berjalan dengan baik, jadi kamu mencabut benang ciuman aneh itu dan <kanji>menjeratnya</kanji> di sekitar <reading>rack</reading> (らく). Untung rak itu ada di sana! Jauh lebih baik jika Anda mengikatnya di rak saat Anda mencoba mencium seseorang.')
    RETURNING id INTO k_1087_melibatkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '笛', 'seruling', 19, 35, 'Di dalam hutan <radikal>bambu</radikal>, seseorang menanyakan <radikal>alasan</radikal> Anda berada di sana, dan Anda menjelaskan tujuannya untuk memanen bambu untuk membuat <kanji>seruling</kanji>.', 'Anda menebang bambu dan memotong <kanji>seruling</kanji>. Anda mulai memainkan sebuah lagu. Anda tahu alasannya. Sebuah pesawat luar angkasa alien terbang ke bawah dan menjatuhkan sebuah kotak berisi <reading>teknologi</reading> (てき) alien di depan Anda.')
    RETURNING id INTO k_1121_seruling;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '芋', 'kentang', 19, 36, 'Jika Anda melihat beberapa <radical>bunga</radical> yang <radical>kering</radical>, tarik ke atas dan Anda akan menemukan <kanji>kentang</kanji>.', '<kanji>Kentang</kanji>es benar-benar <reading>emo</reading> (いも) karena caranya mengeringkan bunga. Orang emo dan kentang sama-sama suka mengeringkan bunga.')
    RETURNING id INTO k_1553_kentang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '埋', 'mengubur', 19, 37, '<radical>tanah</radical> di sebelah <radical>desa</radical> Anda adalah tempat Anda <kanji>mengubur</kanji> orang mati. Manusia tidak hidup selamanya, jadi setiap desa mempunyai sepetak tanah yang khusus digunakan untuk menguburkan benda mati.', 'Anda tidak hanya <kanji>mengubur</kanji> kerabat yang meninggal di sini. Anda juga menguburkan hewan peliharaan Anda yang mati <read>u</reading>ni (う) di tanah itu. Anda pikir memiliki universitas sebagai hewan peliharaan adalah ide yang bagus. Sayang sekali universitas membutuhkan air untuk bertahan hidup.')
    RETURNING id INTO k_1725_mengubur;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1057_menambahkan, 'Menambahkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1058_musim, 'Musim', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1058_musim, 'Persendian', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1059_mengurangi, 'Mengurangi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1060_memesan, 'Memesan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1060_memesan, 'Urutan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1061_membentuk, 'Membentuk', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1061_membentuk, 'Penampilan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1062_kain, 'Kain', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1063_mudah, 'Mudah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1064_kekayaan, 'Kekayaan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1065_muda, 'Muda', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1066_bagian_pidato, 'Bagian Pidato', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1066_bagian_pidato, 'Partikel Pidato', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1066_bagian_pidato, 'Partikel Pidato', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1066_bagian_pidato, 'Partikel Tata Bahasa', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1067_serangga, 'Serangga', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1068_klik, 'Klik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1068_klik, 'Klan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1070_lidah, 'Lidah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1071_konter_buku, 'Konter Buku', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1071_konter_buku, 'Konter Untuk Buku', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1072_luar_angkasa, 'Luar Angkasa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1073_di_udara, 'Di udara', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1074_sibuk, 'Sibuk', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1076_kelompok, 'Kelompok', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1077_kekerasan, 'Kekerasan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1078_mencampur, 'Mencampur', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1079_kerusuhan, 'Kerusuhan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1079_kerusuhan, 'Kekacauan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1080_muda, 'Muda', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1080_muda, 'Pengikut', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1081_mendapatkan, 'Mendapatkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1082_memperbarui, 'Memperbarui', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1083_melanjutkan, 'Melanjutkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1084_bawa_serta, 'Bawa serta', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1084_bawa_serta, 'Menghubungkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1085_baik_secara_moral, 'Baik Secara Moral', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1085_baik_secara_moral, 'Bagus', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1087_melibatkan, 'Melibatkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1087_melibatkan, 'Melilit', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1087_melibatkan, 'Membelitkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1121_seruling, 'Seruling', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1553_kentang, 'Kentang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1725_mengubur, 'Mengubur', true, true);

  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1057_menambahkan, 'か', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1057_menambahkan, 'くわ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1058_musim, 'せつ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1058_musim, 'ふし', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1059_mengurangi, 'げん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1059_mengurangi, 'へ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1060_memesan, 'じゅん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1061_membentuk, 'よう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1061_membentuk, 'い', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1062_kain, 'ふ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1062_kain, 'ぬの', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1063_mudah, 'い', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1063_mudah, 'えき', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1063_mudah, 'やさ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1064_kekayaan, 'さい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1064_kekayaan, 'ざい', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1065_muda, 'わか', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1065_muda, 'も', 'kunyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1065_muda, 'じゃく', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1066_bagian_pidato, 'し', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1067_serangga, 'こん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1068_klik, 'ばつ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1070_lidah, 'した', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1070_lidah, 'ぜつ', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1071_konter_buku, 'さつ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1072_luar_angkasa, 'う', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1073_di_udara, 'ちゅう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1074_sibuk, 'ぼう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1074_sibuk, 'いそが', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1076_kelompok, 'だん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1076_kelompok, 'とん', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1077_kekerasan, 'ぼう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1077_kekerasan, 'ばく', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1077_kekerasan, 'あば', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1078_mencampur, 'こん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1078_mencampur, 'ま', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1078_mencampur, 'こ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1079_kerusuhan, 'らん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1079_kerusuhan, 'みだ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1080_muda, 'と', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1081_mendapatkan, 'とく', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1081_mendapatkan, 'え', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1081_mendapatkan, 'う', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1082_memperbarui, 'かい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1082_memperbarui, 'あらた', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1083_melanjutkan, 'ぞく', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1083_melanjutkan, 'つづ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1084_bawa_serta, 'れん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1084_bawa_serta, 'つ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1084_bawa_serta, 'つら', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1085_baik_secara_moral, 'ぜん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1087_melibatkan, 'らく', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1087_melibatkan, 'から', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1121_seruling, 'てき', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1121_seruling, 'ふえ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1553_kentang, 'いも', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1725_mengubur, 'う', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1725_mengubur, 'うず', 'kunyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1725_mengubur, 'まい', 'onyomi', false, false);

  -- 3. VOCABULARIES
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '外れる', 'untuk-keluar', 19, 38, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja.

Anda sudah mempelajari 外す, yang digunakan saat ANDA menghapus sesuatu. 外れる, sebaliknya berarti <vocabulary>keluar</vocabulary>, atau <vocabulary>keluar</vocabulary>. Ini digunakan ketika sesuatu berakhir di luar tempat yang seharusnya — seperti steker yang keluar dari stopkontak. 

Untuk mengingat perbedaannya dengan 外す, coba bayangkan betapa <reading>jarang</reading> (れる) colokan bisa lepas dengan sendirinya, dibandingkan saat Anda dengan sengaja melepasnya. Agak langka, bukan?

Secara lebih kiasan, 外れる juga bisa menggambarkan kapan ekspektasi Anda meleset — hasilnya berakhir "di luar" apa yang Anda harapkan.', 'Ketika sesuatu <vocabulary>akan lepas</vocabulary>, sebaiknya Anda bergegas dan mengenakan setelan <reading>haz</reading>mat (はず) Anda. Entah bahan beracun apa yang bisa menyembur keluar saat benda ini lepas. Lebih baik ambil semua tindakan pencegahan yang diperlukan.', 'Untuk Keluar, Untuk Mati, Untuk Nona')
    RETURNING id INTO v_2634_untuk_keluar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '世', 'dunia', 19, 39, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Karena kata ini terdiri dari satu kanji, maka menggunakan bacaan kun''yomi. Berikut ini mnemonik untuk membantu Anda mengingatnya: 

Karena Anda memiliki generasi-generasi yang membentuk <vocabulary>world</vocabulary> ini, pikirkanlah generasi rapper. Apa yang selalu mereka katakan (tentu saja saya tidak tahu apa-apa tentang rap)? Mereka mengatakan "<reading>Yo</reading> yo yo!" (よ).', 'Dunia, Masyarakat, Usia, Generasi')
    RETURNING id INTO v_2711_dunia;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '仲直り', 'rekonsiliasi', 19, 40, '直り adalah bentuk kata benda dari 直る, yang sudah Anda ketahui artinya "diperbaiki". Ketika <kanji>hubungan</kanji> diperbaiki, Anda mendapatkan <vocabulary>rekonsiliasi</vocabulary>. Dengan kata lain, Anda <vocabulary>berdamai</vocabulary> atau <vocabulary>berbaikan</vocabulary> dengan seseorang. Bagus untukmu.', 'Bacaannya adalah bacaan kun''yomi. 仲 sama seperti biasanya, dan 直り menggunakan bacaan dari 直る. Bagus dan mudah!', 'Rekonsiliasi, Berdamai, Cari muka')
    RETURNING id INTO v_3243_rekonsiliasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '悲しい', 'sedih', 19, 41, 'Ini adalah kanji tunggal dengan しい di akhir, jadi kamu tahu itu kata sifat. Apa bentuk kata sifat dari <kanji>sad</kanji>? <vocabulary>menyedihkan</vocabulary>, sayangnya.', 'Anda mempelajari bacaan ini dengan 悲しむ, hore!', 'Sedih')
    RETURNING id INTO v_3376_sedih;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '五感', 'panca-indera', 19, 42, '<kanji>Lima</kanji> <kanji>perasaan</kanji> yang Anda miliki adalah apa? Penglihatan, pendengaran, pengecapan, sentuhan dan penciuman (jangan hitung yang keenam dimana anda melihat orang mati). Inilah <vocabulary>panca indera</vocabulary> yang mungkin Anda miliki.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Panca indera, Panca indra')
    RETURNING id INTO v_3546_panca_indera;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '求人', 'postingan-pekerjaan', 19, 43, 'Saat Anda <kanji>meminta</kanji>mencari <kanji>orang</kanji>, Anda memasang <vocabulary>postingan pekerjaan</vocabulary> karena Anda <vocabulary>mencari pekerja</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Karena 人 memiliki dua bacaan on''yomi, berikut adalah mnemonik untuk membantu Anda mengingat mana yang harus digunakan:

Saat Anda melihat <vocabulary>postingan pekerjaan</vocabulary>, Anda melihat mereka semua mencari orang-orang dengan <reading>cu</reading>cumbers dan <reading>jean</reading>s (きゅうじん). Itulah satu-satunya kualifikasi yang mereka incar, mentimun dan jeans.', 'Postingan Pekerjaan, Mencari Pekerja')
    RETURNING id INTO v_3708_postingan_pekerjaan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '果物', 'buah', 19, 44, '<kanji>buah</kanji> <kanji>benda</kanji> hanyalah <vocabulary>buah</vocabulary>.

Berbeda dengan 果実, yang terdengar formal dan ilmiah, 果物 adalah kata umum sehari-hari untuk buah-buahan yang dapat dimakan — apel, jeruk, pisang, dan sebagainya. Anda akan melihatnya dalam frasa seperti 果物を食べる (makan buah) dan 果物屋 (toko buah).', 'Pembacaan untuk ini merupakan pengecualian, setidaknya untuk bagian 果. Untuk mengingat bagian ini, bayangkan diri Anda meminta beberapa <vocabulary>buah</vocabulary>. <read>Bolehkah saya</reading> (くだ) minta buah?', 'Buah')
    RETURNING id INTO v_4010_buah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '木曜日', 'kamis', 19, 45, 'Ini adalah hari dalam seminggu. Anda tahu ini karena ada 曜日 di dalamnya. Tapi hari apa dalam seminggu ini? Hari <kanji>pohon</kanji> dalam seminggu adalah <vocabulary>Kamis</vocabulary>. Hari pohon datang setelah hari air (yaitu hari Rabu, untuk Hari Air-Rabu!). Pohon membutuhkan air untuk tumbuh, itulah sebabnya pohon muncul tepat setelah air.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Berhati-hatilah agar ひ menjadi び seperti pada kata 曜日.', 'Kamis')
    RETURNING id INTO v_4057_kamis;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '水曜日', 'rabu', 19, 46, 'Ini adalah hari dalam seminggu. Anda tahu ini karena ada 曜日 di dalamnya. Tapi hari apa dalam seminggu ini? Hari <kanji>air</kanji> dalam seminggu adalah tempat air mengalir. Bayangkan hari Rabu (hari punuk) seperti bukit besar di tengah minggu Anda. Apa yang berasal dari perbukitan dan mengalir turun darinya? Air! Itu sebabnya "hari air" adalah <vocabulary>Rabu</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Berhati-hatilah agar ひ menjadi び seperti pada kata 曜日.', 'Rabu')
    RETURNING id INTO v_4058_rabu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '二枚舌', 'lidah-bercabang', 19, 47, 'Anda memiliki <kanji>dua</kanji> <kanji>benda datar</kanji> yang membentuk <kanji>lidah</kanji> Anda. Lidah macam apa yang terdiri dari dua hal? Itu adalah lidah yang terbelah, itulah <vocabulary>lidah bercabang</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Itu berlaku untuk dua kanji pertama, tapi 舌 sebenarnya menggunakan kun''yomi. Tidak hanya itu, di sini dibaca sebagai じた, dan bukan した.', 'Lidah Bercabang, Bermuka dua')
    RETURNING id INTO v_4141_lidah_bercabang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '乱れる', 'menjadi-dalam-gangguan', 19, 48, 'Kanjinya berarti <kanji>kerusuhan</kanji>, tetapi kata versi kata kerjanya ini tidak berarti "kerusuhan". Ini lebih seperti <vocabulary>berada dalam kekacauan</vocabulary>. Tapi kalau dipikir-pikir, kalau sedang rusuh dan gila, pasti kacau, jadi anggap saja seperti itu. Anda dapat membedakan ini dari kata masa depan 乱す karena dengan れる Anda tahu bahwa <read>jarang</reading> menjadi seperti ini. Anda tidak melakukannya, tapi itu hanya terjadi sesekali (jarang) jadi Anda memanfaatkannya.', 'Ketika semuanya kacau, inilah kesempatan Anda! Anda berlari ke bar, memecahkan jendela, dan mengambil semua <reading>mead</reading> (みだ) yang dapat Anda bawa.', 'Menjadi Dalam Gangguan, Menjadi berantakan, Menjadi Gangguan, Menjadi Terganggu')
    RETURNING id INTO v_4166_menjadi_dalam_gangguan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '乱戦', 'perkelahian', 19, 49, '<kanji>kerusuhan</kanji> dari <kanji>perang</kanji> adalah saat segalanya menjadi kacau. Ini adalah <vocabulary>huru-hara</vocabulary>!

乱戦 mengacu pada <kosa kata>pertempuran kacau</vocabulary>. Ini dapat menggambarkan peperangan sebenarnya, pertandingan olahraga, atau skenario kompetitif lainnya di mana segala sesuatunya menjadi kacau dan tidak terorganisir.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Perkelahian, Pertempuran Chaotic')
    RETURNING id INTO v_4167_perkelahian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '混乱', 'kebingungan', 19, 50, 'Terjadi <kanji>kerusuhan</kanji> dan semuanya menjadi <kanji>campur aduk</kanji>! Tentu saja ada banyak <vocabulary>kebingungan</vocabulary> di dalamnya.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kebingungan, Kekacauan, Kekacauan')
    RETURNING id INTO v_4168_kebingungan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '乱交', 'sukaria', 19, 51, '<kanji>campuran</kanji> besar orang membentuk semacam <kanji>kerusuhan</kanji>. Anda mungkin berpikir ini akan menjadi sesuatu yang lebih kejam, tapi sebenarnya ini hanyalah <vocabulary>pesta</vocabulary>. Saya kira banyak pencampuran, dan tidak terlalu banyak pengorganisasian di pihak penyelenggara pesta, setidaknya menurut urutan kanji ini.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Sukaria, Pergaulan bebas')
    RETURNING id INTO v_4169_sukaria;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '〜冊', 'konter-buku', 19, 52, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya juga sama. Ini mungkin diperlakukan seperti on''yomi jukugo karena melekat pada sesuatu (seperti angka!).', 'Konter Buku, Konter Untuk Buku')
    RETURNING id INTO v_4170_konter_buku;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '三冊', 'tiga-buku', 19, 53, '<kanji>Tiga</kanji> <kanji>buku</kanji> sama dengan <vocabulary>tiga buku</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Tiga Buku, Tiga Jilid')
    RETURNING id INTO v_4171_tiga_buku;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '八冊', 'delapan-buku', 19, 54, 'Bila Anda memiliki <kanji>delapan</kanji> <kanji>buku</kanji> Anda memiliki <vocabulary>delapan buku</vocabulary>. Ini adalah contoh cara menghitung buku, jadi jika Anda memiliki delapan buku, inilah yang akan Anda katakan.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Bagian はち dipersingkat seperti yang sering terjadi ketika dihadapkan pada situasi seperti ini, menjadikannya はっ.冊 semuanya normal, dan untuk "buku". Har!', 'Delapan Buku, Delapan Volume')
    RETURNING id INTO v_4172_delapan_buku;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '一冊', 'satu-buku', 19, 55, 'Ketika Anda memiliki <kanji>satu</kanji> <kanji>buku</kanji> Anda sebenarnya hanya memiliki <vocabulary>satu buku</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Bagian 一 sering disingkat menjadi いっ.', 'Satu Buku, Satu Jilid')
    RETURNING id INTO v_4173_satu_buku;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '別冊', 'volume-terpisah', 19, 56, 'Biasanya Anda menyebut <kanji>buku</kanji> sebagai "volume" jika buku tersebut berbentuk set, bukan? Memang seperti itu, tapi <kanji>terpisah</kanji>, menjadikannya <vocabulary>volume terpisah</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Namun, べつ disingkat menjadi べっ, mungkin karena itu adalah つ dan itulah gunanya つ untuk mencari nafkah dalam kata-kata jukugo.', 'Volume Terpisah')
    RETURNING id INTO v_4174_volume_terpisah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', 'いい加減', 'tidak-bertanggung-jawab', 19, 57, 'Anda <kanji>menambahkan</kanji> dan Anda <kanji>mengurangi</kanji>. Ini membawa Anda kembali ke nol. Sama sekali tidak ada gunanya melakukan tindakan tersebut. Benar-benar <vocabulary>tidak ada gunanya</vocabulary>. Faktanya, menurut saya itu benar-benar <vocabulary>tidak bertanggung jawab</vocabulary> dari Anda. Tambahan いい berarti "bagus", seperti dalam kalimat "bagus, kamu sudah tahu betapa tidak ada gunanya hal itu, sekarang berhenti."', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Tidak bertanggung jawab, Tidak ada gunanya, Tidak berdasar, Ceroboh')
    RETURNING id INTO v_4175_tidak_bertanggung_jawab;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '原子力', 'tenaga-nuklir', 19, 58, '<kanji>kekuatan</kanji> dari <kanji>atom</kanji> (原子) adalah <vocabulary>tenaga nuklir</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Tenaga Nuklir, Energi Nuklir, Kekuatan Atom, Energi Atom')
    RETURNING id INTO v_4176_tenaga_nuklir;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '改善', 'peningkatan', 19, 59, 'Ketika Anda <kanji>memperbarui</kanji> sesuatu dan hasilnya <kanji>baik secara moral</kanji>, itu jelas merupakan <vocabulary>peningkatan</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Peningkatan, Perbaikan')
    RETURNING id INTO v_4177_peningkatan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '善悪', 'baik-dan-jahat', 19, 60, 'Anda memiliki <kanji>secara moral baik</kanji> dan <kanji>buruk</kanji>. Inilah pertarungan antara <vocabulary>baik dan jahat</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Baik Dan Jahat, Benar dan Salah')
    RETURNING id INTO v_4178_baik_dan_jahat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '集団', 'kelompok', 19, 61, '<kanji>grup</kanji> yang telah <kanji>dikumpulkan</kanji>bersama adalah sekelompok orang. Ini adalah <vocabulary>grup</vocabulary> atau <vocabulary>kerumunan</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kelompok, Kerumunan')
    RETURNING id INTO v_4179_kelompok;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '入団', 'pendaftaran', 19, 62, 'Jika Anda <kanji>memasuki</kanji> suatu <kanji>grup</kanji>, itu disebut <vocabulary>pendaftaran</vocabulary> atau <vocabulary>pendaftaran</vocabulary>. Anda <vocabulary>bergabung</vocabulary> dengan grup.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Pendaftaran, Bergabung, Pendaftaran')
    RETURNING id INTO v_4180_pendaftaran;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '季節', 'musim', 19, 63, '<kanji>musim</kanji> <kanji>musim</kanji> adalah <vocabulary>musim</vocabulary>. Siapa yang suka musim dingin? Ini adalah favoritku 季節.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Musim')
    RETURNING id INTO v_4182_musim;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '宇宙', 'luar-angkasa', 19, 64, '<kanji>udara</kanji> dari <kanji>luar angkasa</kanji> adalah ruang yang berada di luar angkasa yaitu <vocabulary>luar angkasa</vocabulary>, <vocabulary>ruang</vocabulary>, dan <vocabulary>alam semesta</vocabulary>!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Luar Angkasa, Ruang angkasa, Semesta')
    RETURNING id INTO v_4183_luar_angkasa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '警官', 'petugas-polisi', 19, 65, 'Anda tahu bagaimana 警察 adalah "polisi"? Ya, ini semacam itu. Kali ini ada seseorang dari <kanji>pemerintah</kanji> yang mencoba <kanji>memperingatkan</kanji> tentang hal-hal buruk yang Anda lakukan. Orang ini, seperti 警察 adalah <vocabulary>petugas polisi</vocabulary>. Ini agak informal, jadi Anda mungkin juga mengatakan ini berarti <vocabulary>cop</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Petugas Polisi, Polisi, Polisi')
    RETURNING id INTO v_4184_petugas_polisi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '内容', 'isi', 19, 66, '<kanji>Di dalam</kanji> <kanji>bentuk</kanji> itu... ada sesuatu di dalamnya. Apa saja <vocabulary>isi</vocabulary>?', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Isi, Zat')
    RETURNING id INTO v_4185_isi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '容疑', 'kecurigaan', 19, 67, 'Anda memiliki <kanji>penampilan</kanji> <kanji>keraguan</kanji> tentang Anda. Itu karena Anda <vocabulary>dicurigai</vocabulary>. Ada <vocabulary>tuduhan</vocabulary> terhadap Anda. Oh tidak!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kecurigaan, Mengenakan biaya')
    RETURNING id INTO v_4186_kecurigaan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '形容詞', 'kata-sifat', 19, 68, '<kanji>bagian ucapan</kanji> yang menciptakan <kanji>bentuk</kanji> dan <kanji>bentuk</kanji> sebuah kata adalah sesuatu yang bersifat deskriptif (bagaimanapun, bentuk dan wujudnya ada di sana!). Bentuk dan bentuk bagian pidato ini adalah <vocabulary>kata sifat</vocabulary>. Kamu cantik sekali!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kata sifat')
    RETURNING id INTO v_4187_kata_sifat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '若布', 'wakame', 19, 69, '<kanji>muda</kanji> <kanji>kain</kanji> karena alasan tertentu adalah <vocabulary>wakame</vocabulary> rumput laut. Jika Anda belum pernah mendengar tentang wakame sebelumnya, carilah. Ini enak dan sangat baik untukmu. Rumput laut itu seperti kain di laut ya? Nah, kain muda ini bagus dan lembut serta tipis, seperti wakame. Saya membayangkan anak muda juga lembut dan kurus, itulah sebabnya pakaian muda disebut wakame.

Perhatikan bahwa kata ini lebih umum ditulis dalam kana, seperti わかめ atau ワカメ.', '若い menggunakan bacaan yang sama dengan yang Anda pelajari dengan kanji, tetapi bacaan untuk 布 sama sekali tidak teratur. Jika Anda dapat memahami artinya, Anda dapat menggunakannya untuk mengingat bacaannya (karena keduanya sama), tetapi berikut adalah mnemonik yang dapat membantu Anda untuk berjaga-jaga:

Anda sedang makan <vocabulary>wakame</vocabulary> dan tiba-tiba Anda melihat <reading>目</reading> (め) menatap ke arah Anda. Anda tidak tahu rumput laut punya mata!', 'Wakame, Rumput Laut Wakame')
    RETURNING id INTO v_4190_wakame;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '布', 'kain', 19, 70, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Karena kata ini terdiri dari satu kanji, maka sebaiknya menggunakan bacaan kun''yomi. Saat mempelajari kanji, Anda tidak mempelajari cara membacanya, jadi inilah mnemonik untuk membantu Anda dengan kata ini: Ambil <kanji>kain</kanji> Anda dan letakkan di atas kepala Anda. Itu terjadi karena tepat pada <read>siang</reading> (ぬの) matahari berada di tengah langit dan membakar kulit kepala Anda. Jadi, kamu menutupinya dengan kain. Bayangkan diri Anda menyetel alarm di siang hari untuk membantu Anda fokus pada siang hari.', 'Kain, Kain')
    RETURNING id INTO v_4191_kain;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '財布', 'dompet', 19, 71, '<kanji>kekayaan</kanji> <kanji>kain</kanji> Anda adalah <vocabulary>dompet</vocabulary> Anda. Sungguh, dompet hanyalah sehelai kain yang kamu simpan di saku yang didalamnya terdapat harta kekayaanmu, bukan? Ini juga bisa menjadi <vocabulary>dompet</vocabulary> Anda, terutama jika Anda tinggal di Inggris Raya.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Dompet, Tas kecil')
    RETURNING id INTO v_4192_dompet;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '布団', 'kasur', 19, 72, 'Masukkan beberapa <kanji>kain</kanji> ke dalam <kanji>grup</kanji> dan Anda akan mendapatkan <vocabulary>futon</vocabulary>. Itu hanya jenis <vocabulary>sprei</vocabulary> atau <vocabulary>alas tidur</vocabulary> yang lembut dan nyaman yang ingin Anda gunakan untuk meringkuk.

Perlu diingat bahwa kata ini berbeda dengan versi bahasa Inggrisnya. Kami tidak berbicara tentang tempat tidur sofa untuk kamar asrama Anda di sini. Dalam bahasa Jepang, 布団 adalah alas tidur tradisional yang Anda letakkan di lantai pada malam hari dan disimpan pada siang hari. 布団 bisa merujuk pada alas tidur, <vocabulary>selimut</vocabulary> yang menutupinya, atau kedua benda tersebut sebagai satu set.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Namun, bacaan untuk 団 adalah bacaan sekunder yang sesuai dengan kanji, jadi berhati-hatilah. Jika Anda bisa memahami arti kata ini, kemungkinan besar Anda sudah tahu cara mengejanya, jadi bawalah ke bahasa Jepang.', 'Kasur, Seperai, Matras Tidur, Selimut')
    RETURNING id INTO v_4193_kasur;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '毛布', 'selimut', 19, 73, '<kanji>bulu</kanji> <kanji>kain</kanji> bukanlah sesuatu yang bisa Anda buang begitu saja. Anda mungkin akan mengubah kain bulu hangat ini menjadi <vocabulary>selimut</vocabulary> yang bagus.

毛布 biasanya merujuk secara spesifik pada <vocabulary>selimut wol</vocabulary>, bukan selimut misalnya.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Selimut, Selimut Wol')
    RETURNING id INTO v_4194_selimut;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '生徒', 'murid', 19, 74, 'Seseorang yang <kanji>junior</kanji> dalam <kanji>kehidupan</kanji> adalah <vocabulary>siswa</vocabulary> atau <vocabulary>pupil</vocabulary>. Ini seperti bagaimana 先生 adalah seseorang yang datang sebelum Anda dalam hidup. Keren cara kerjanya, bukan? Oke 生徒, kembali bekerja!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Murid, Murid')
    RETURNING id INTO v_4195_murid;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '仏教徒', 'budha', 19, 75, 'Anda tahu 仏教 berarti “Agama Buddha” jadi <kanji>pengikut</kanji> agama Buddha adalah <vocabulary>Buddhisme</vocabulary>.', 'Tambahkan bacaan on’yomi untuk 徒 pada kata yang sudah Anda ketahui. Selesai!', 'Budha')
    RETURNING id INTO v_4196_budha;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '信徒', 'orang-percaya', 19, 76, 'Seorang <kanji>junior</kanji> <kanji>percaya</kanji>r adalah <vocabulary>orang percaya</vocabulary> atau <vocabulary>pengikut</vocabulary>. Mereka tentu saja bukan pemimpin atau apa pun karena status junior mereka, tapi setidaknya mereka ada di sana, dan setidaknya mereka percaya. Oh, dan permisi, bolehkah saya meluangkan waktu sebentar? Saya ingin bercerita tentang kehebatan Crabigator....', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Orang percaya, Pengikut')
    RETURNING id INTO v_4197_orang_percaya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '得る', 'untuk-memperoleh', 19, 77, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>memperoleh</kanji> jadi versi kosakata kata kerjanya adalah <vocabulary>to acquire</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: Anda perlu <vocabulary>memperoleh</vocabulary> sebuah <reading>e</reading>lephant (え) untuk koleksi gajah Anda. Jika Anda tidak mendapatkan gajah, Anda akan terlihat seperti orang bodoh di depan teman pengumpul gajah Anda.', 'Untuk Memperoleh, Untuk Mendapatkan, Untuk memperoleh')
    RETURNING id INTO v_4198_untuk_memperoleh;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '得', 'keuntungan', 19, 78, 'Ketika Anda mampu <kanji>memperoleh</kanji> apa pun yang Anda inginkan, Anda mulai melihat <vocabulary>manfaat</vocabulary> dari segala sesuatu di sekitar Anda dan mulai <vocabulary>mendapatkan keuntungan</vocabulary> darinya. Bukankah kamu sangat luar biasa?', 'Pembacaannya sama dengan kanji yang Anda pelajari. <membaca>とく</membaca>!', 'Keuntungan, Laba, Keuntungan, Memperoleh')
    RETURNING id INTO v_4199_keuntungan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '得意', 'baik-dalam', 19, 79, 'Saat Anda bisa <kanji>memperoleh</kanji> <kanji>ide</kanji> dengan cepat, Anda harus terbiasa dengan apa pun yang Anda lakukan. Jika Anda memperoleh ide dengan cara ini, kemungkinan besar Anda <vocabulary>baik</vocabulary> atau <vocabulary>terampil dalam</vocabulary> tindakan ini.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Baik Dalam, Terampil Di, Poin Kuat, Khusus, keahlian')
    RETURNING id INTO v_4200_baik_dalam;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '説得', 'bujukan', 19, 80, 'Anda <kanji>memperoleh</kanji> <kanji>teori</kanji> demi teori. Dalam melakukan ini, Anda memiliki banyak teori di kepala Anda. Anda menggunakan semua teori ini sebagai alat untuk <vocabulary>persuasi</vocabulary>. Teori-teori ini akan memungkinkan Anda <vocabulary>meyakinkan</vocabulary> siapa pun tentang apa pun.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.説 disingkat menjadi せっ.', 'Bujukan, Meyakinkan')
    RETURNING id INTO v_4201_bujukan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '忙しい', 'sibuk', 19, 81, 'Ini adalah kanji tunggal dengan しい di akhir, artinya merupakan kata sifat. Apa bentuk kata sifat dari <kanji>sibuk</kanji>? Ini juga <vocabulary>sibuk</vocabulary>.', 'Kamu <vocabulary>sibuk</vocabulary> karena kamu harus mengurus <reading>ice ogre</reading> (いそが) temanmu akhir pekan ini. Anda tidak tahu mengapa Anda menyetujui hal ini, Anda cukup sibuk, tetapi sekarang Anda tidak akan pernah menyelesaikan apa pun dengan mengurus raksasa es kecil ini.', 'Sibuk')
    RETURNING id INTO v_4202_sibuk;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '恋人', 'kekasih', 19, 82, '<kanji>orang</kanji> yang <kanji>romantis</kanji> adalah seseorang yang melakukan hal-hal romantis bersamamu. Orang itu adalah <vocabulary>kekasih</vocabulary> Anda.', 'Bacaannya agak aneh. itu adalah dua kata terpisah 恋 dan 人 yang digabungkan, sehingga menjadi <reading>こいびと</reading>. Oooh lala. Dua kata bersatu seperti dua orang yang bersatu. mentah.', 'Kekasih, Lainnya yang Penting, Pacar, Pacar perempuan')
    RETURNING id INTO v_4203_kekasih;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '改正', 'revisi', 19, 83, '<kanji>Memperbarui</kanji> dan membuat sesuatu <kanji>benar</kanji>. Saat Anda melakukan ini, Anda sedang melakukan <vocabulary>revisi</vocabulary>, <vocabulary>amandemen</vocabulary>, atau <vocabulary>alteration</vocabulary>. Ah, jauh lebih baik sekarang.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Revisi, Amandemen, Perubahan')
    RETURNING id INTO v_4205_revisi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '大失敗', 'kegagalan-total', 19, 84, 'Anda tahu bagaimana 失敗 itu sebuah kesalahan? Ya, <kanji>kesalahan</kanji> besar</kanji> akan menjadi <vocabulary>gagal total</vocabulary> atau <vocabulary>kesalahan besar</vocabulary>. Sangat buruk!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Mengetahui 失敗 sendiri juga akan membantu.', 'Kegagalan Total, Kesalahan Besar, Bencana, Kegagalan Epik')
    RETURNING id INTO v_4206_kegagalan_total;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '昆布', 'konbu', 19, 85, '<kanji>Serangga</kanji> <kanji>kain</kanji> sebenarnya adalah <vocabulary>konbu</vocabulary>. <vocabulary>Rumput laut Konbu</vocabulary> sangat umum di Jepang, dan rasanya lezat. Dan serangga juga suka menggunakannya sebagai kain. Mereka membuat semua pakaian mereka dari konbu.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Bagian 布 diubah menjadi ぶ, mungkin karena jika suatu makanan tidak memiliki <vocabulary>konbu</vocabulary> Anda mengucapkan <reading>boo</reading> (ぶ).', 'Konbu, Kombu, Rumput Laut Konbu, Rumput Laut Kombu')
    RETURNING id INTO v_4207_konbu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '易しい', 'mudah', 19, 86, 'Ini adalah kanji tunggal dengan い di akhir, artinya Anda tahu itu mungkin kata sifat. Apa bentuk kata sifat dari <kanji>mudah</kanji>? Ini juga <vocabulary>mudah</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak mempelajarinya dengan kanji ini, jadi inilah mnemonik yang dapat membantu Anda: Segalanya <vocabulary>mudah</vocabulary> untuk Anda lakukan. Mengapa? Karena Anda sendiri tidak melakukan apa pun. Anda bertanya kepada orang lain. Anda mengatakan hal-hal seperti, "Hei, bisakah kamu mengambilkan saya air?" Mereka mengucapkan "<reading>yassah!</reading>" (やさ) dengan sangat antusias.', 'Mudah, Sederhana Untuk Dilakukan')
    RETURNING id INTO v_4208_mudah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '容易', 'kemudahan', 19, 87, '<kanji>bentuk</kanji> di depan Anda adalah <kanji>mudah</kanji>. Apapun itu, Anda akan dapat melakukannya dengan <vocabulary>mudah</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kemudahan, Dengan mudah, Mudah, Sederhana')
    RETURNING id INTO v_4209_kemudahan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '暴れる', 'bertindak-dengan-kekerasan', 19, 88, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>kekerasan</kanji>. "Melakukan kekerasan" kedengarannya tidak bagus, jadi kata ini adalah <vocabulary>bertindak dengan kekerasan</vocabulary> atau <vocabulary>mengamuk</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik yang dapat membantu Anda: Anda akan <vocabulary>mengamuk</vocabulary> di mana-mana. Kamu jadi gila. Anda akan <vocabulary>bertindak kekerasan</vocabulary>. Kemudian, seorang penyihir yang tenang melangkah ke depan Anda dan menggumamkan "<reading>aba</reading>ra kadabara," (あば) yang menyebabkan Anda segera tenang.', 'Bertindak dengan Kekerasan, Menjadi Marah')
    RETURNING id INTO v_4210_bertindak_dengan_kekerasan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '暴力', 'kekerasan', 19, 89, '<kanji>kekuatan</kanji> dari <kanji>kekerasan</kanji> lebih merupakan <vocabulary>kekerasan</vocabulary>, dan merupakan <vocabulary>kekuatan</vocabulary> yang harus diperhitungkan.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kekerasan, Memaksa')
    RETURNING id INTO v_4211_kekerasan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '乱暴', 'brutal', 19, 90, '<kanji>Kerusuhan</kanji> dan <kanji>kekerasan</kanji>. Kedengarannya buruk! Kedengarannya seperti tempat yang penuh kekerasan, karena kerusuhan adalah <vocabulary>kekerasan</vocabulary> dan <vocabulary>kekerasan</vocabulary> juga merupakan kekerasan!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Brutal, Kekerasan, Menyerang')
    RETURNING id INTO v_4212_brutal;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '暴走', 'berkeliaran', 19, 91, '<kanji>Kekerasan</kanji> <kanji>berlari</kanji>... terdengar seperti lari maraton yang salah. Tidak, ini adalah saat Anda berlarian dan Anda semua melakukan kekerasan. Cara yang lebih baik untuk menggambarkan hal ini adalah dengan mengatakan "<vocabulary>menjadi liar</vocabulary>" atau "<vocabulary>kehabisan kendali</vocabulary>."', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Berkeliaran, Kehabisan Kendali')
    RETURNING id INTO v_4213_berkeliaran;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '梅干し', 'acar-plum', 19, 92, 'Anda tahu 梅 adalah buah plum Jepang, dan 干す berarti "mengeringkan sesuatu". Jadi jika Anda menggabungkannya sebagai 梅干し, Anda akan mendapatkan buah plum kering, bukan? Ya, semacam itu. Anda harus mengasinkannya sebelum mengeringkannya, jadi kita dapat mengatakan 梅干し berarti <vocabulary>acar plum</vocabulary> atau <vocabulary>acar ume</vocabulary>. Dan jika Anda tahu nama Jepangnya, Anda juga bisa menyebutnya dengan nama itu: <vocabulary>umeboshi</vocabulary>.', 'Pembacaan yang satu ini, seperti halnya maknanya, agak rumit. Ini menggunakan dua bacaan kun''yomi yang telah Anda pelajari sebelumnya. Jadi ada うめ ditambah ほし, yang berasal dari 干す tetapi di sini diberi rendaku menjadi ぼし. Dengan kata lain, うめぼし. Saya kira proses pengawetan telah merusak pembacaan kata ini. Tapi Anda harus menghadapinya, karena makanan ini biasa saja dan enak! 

Selain itu, kamu mungkin sering melihat ini ditulis sebagai 梅干, di mana し menjadi malu atau semacamnya dan bersembunyi, namun bacaannya tetap sama: うめぼし.', 'Acar Plum, Acar Ume, Umeboshi')
    RETURNING id INTO v_4214_acar_plum;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '学歴', 'sejarah-akademik', 19, 93, '<kanji>studi</kanji> <kanji>sejarah</kanji> Anda? Pasti ada cara yang lebih terpelajar untuk menjelaskan hal ini… Ah, ya, itu adalah <vocabulary>sejarah akademis</vocabulary> Anda. Anda tahu, seperti sekolah menengah atas dan universitas tempat Anda lulus — <vocabulary>latar belakang pendidikan</vocabulary> Anda. Hal yang sangat penting di Jepang.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Sejarah Akademik, Latar Belakang Pendidikan')
    RETURNING id INTO v_4216_sejarah_akademik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '混ぜる', 'untuk-mencampur-sesuatu', 19, 94, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>mencampur</kanji>, jadi versi kosakata kata kerjanya adalah <vocabulary>mencampur sesuatu</vocabulary>, <vocabulary>mengaduk sesuatu</vocabulary>, atau <vocabulary>meramu sesuatu</vocabulary>. 

Ini adalah saat seseorang aktif melakukan mixing. Anda dapat mengingat hal ini karena <reading>mereka</reading> (ぜる) melakukan mixing sendiri, bukan hanya duduk-duduk dan menunggu sesuatu tercampur secara alami dengan sendirinya.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Orang yang mengajarimu cara <vocabulary>mencampur sesuatu</vocabulary> adalah <reading>ma</reading> (ま) kamu. Ibumu selalu mencampurkan makanan lezat: sup, kari, adonan kue — bahkan koktail sesekali. Dia seorang ahli mixer, dan dia mewariskan keterampilan mixing-nya kepada Anda.

Anda juga dapat menggunakan kosakata 交ぜる level 5 untuk membantu Anda mengingat, karena memiliki arti dan bacaan yang sama!', 'Untuk Mencampur Sesuatu, Untuk Mengaduk Sesuatu, Untuk Memadukan Sesuatu')
    RETURNING id INTO v_4220_untuk_mencampur_sesuatu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '減る', 'untuk-mengurangi', 19, 95, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>mengurangi</kanji> sehingga versi kosakata kata kerjanya adalah <vocabulary>menurunkan</vocabulary> atau <vocabulary>menjadi dikurangi</vocabulary>.

Perhatikan bahwa kata ini bersifat intransitif, jadi Anda tidak secara aktif mengurangi atau mengurangi sesuatu di sini — kata ini hanya berkurang, baik dengan sendirinya atau sebagai hasil alami dari suatu proses atau tindakan.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda:

Segala sesuatu di sekitarmu mulai <vocabulary>berkurang</vocabulary>, jadi kamu hanya tertawa gugup "<reading>heh</reading> (へ)..." Pertama, kamu menyadari gajimu menurun. "Heh… Penggajian pasti ada kesalahan bulan ini." Kemudian, Anda melihat saldo bank Anda juga berkurang. “Heh… Mungkin hanya kesalahan sistem… Heh…” Akhirnya, Anda melihat nilai saham Anda turun dengan kecepatan yang mengkhawatirkan. “Heh… Mereka akan naik kembali… Benar? Heh… Heheh…”', 'Untuk Mengurangi, Akan Menurun, Untuk Mendapatkan Menurun')
    RETURNING id INTO v_4222_untuk_mengurangi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '減法', 'pengurangan', 19, 96, 'Apa yang dimaksud dengan <kanji>metode</kanji> untuk <kanji>mengurangi</kanji> sesuatu? Nah, Anda mengambil sesuatu. Anda melakukan <vocabulary>pengurangan</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Perhatikan bahwa ほう berubah menjadi ぽう. Hal ini karena Anda mencoba untuk mengurangi <reading>Po</reading>lar (ぽう) beruang dari area sekitar Anda karena mereka sangat berbahaya dan Anda menggunakan cologne yang terbuat dari daging.', 'Pengurangan')
    RETURNING id INTO v_4223_pengurangan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '節句', 'festival-musiman', 19, 97, 'Bayangkan <kanji>paragraf</kanji> dari sebuah <kanji>musim</kanji> nantinya. Ini adalah bagian kecil dari musim ini, tetapi layak untuk ditulis. Itu adalah <vocabulary>festival musiman</vocabulary>. Ini menyenangkan!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Perlu diingat bahwa せつ disingkat menjadi せっ sama seperti banyak つ yang dilakukan dalam situasi ini.', 'Festival Musiman')
    RETURNING id INTO v_4224_festival_musiman;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '絡む', 'untuk-terlibat-dengan', 19, 98, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>menjerat</kanji>, namun versi kata kerja ini biasanya digunakan dalam arti kiasan, jadi artinya <vocabulary>to be terlibat dengan</vocabulary>, seperti dalam 事件に絡む (terlibat dalam suatu kejadian).

絡む masih bisa menggambarkan sesuatu yang seperti benang yang melilit sesuatu yang lain, seperti ツタが木に絡む (pohon ivy melilit pohon), jadi ini juga berarti <vocabulary>menjadi kusut</vocabulary> dan <vocabulary>melilit</vocabulary>. Perhatikan bahwa penggunaan ini masih bersifat intransitif karena berfokus pada keadaan sesuatu yang terjalin, dan に menandai lokasi tindakan, bukan objek langsung.

Untuk mengingat bahwa ini bersifat intransitif, bayangkan tiba-tiba mendengar banyak <read>moo</reading>ing (む) dan berbalik dan menemukan bahwa sapi Anda entah bagaimana terjerat. Mereka semua tiba-tiba menjadi terikat. BAGAIMANA??', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda:

Ada kecelakaan yang kebetulan membuat Anda <vocabulary>terlibat</vocabulary> di kelas <reading>から</reading>て, yang mana biasanya <vocabulary>terlibat</vocabulary> selama sparring. Kali ini anggota tubuh Anda dan pasangan benar-benar berada dalam kekacauan besar. Semoga berhasil keluar dari itu.', 'Untuk Terlibat Dengan, Menjadi Kusut, Untuk menjalin')
    RETURNING id INTO v_4225_untuk_terlibat_dengan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '続く', 'untuk-melanjutkan', 19, 99, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>melanjutkan</kanji> sehingga versi kosakata kata kerjanya adalah <vocabulary>melanjutkan</vocabulary>. Silakan lanjutkan.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: <reading>Dua orang</reading>des (つづ) mulai <vocabulary>to continue</vocabulary>. Saya khawatir kalian berdua harus tinggal di sini. Ini adalah klub malam khusus pria.', 'Untuk Melanjutkan')
    RETURNING id INTO v_4226_untuk_melanjutkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '続々', 'satu-demi-satu', 19, 100, 'Ketika Anda <kanji>melanjutkan</kanji> dan kemudian Anda <kanji>melanjutkan</kanji> lagi (itulah kanji <kanji>pengulang</kanji>), Anda akan mengalami <vocabulary>satu demi satu</vocabulary>. Lanjutkan terus lanjutkan!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Satu demi satu, Berturut-turut, Dalam Suksesi')
    RETURNING id INTO v_4227_satu_demi_satu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '舌', 'lidah', 19, 101, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Menggunakan bacaan yang sama yang Anda pelajari dengan kanji. Silakan gunakan <vocabulary>lidah</vocabulary> Anda dan ucapkan bacaan tersebut dengan lantang... "<reading>した</reading>."', 'Lidah')
    RETURNING id INTO v_4228_lidah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '猫舌', 'keengganan-terhadap-makanan-panas', 19, 102, '<kanji>Lidah</kanji> <kanji>kucing</kanji> karena alasan tertentu dikaitkan dengan <vocabulary>keengganan terhadap makanan panas</vocabulary>. Saya rasa saya belum pernah melihat kucing meminum susu mendidih, tapi terserah. Bayangkan saja seekor kucing menjilati sesuatu yang sangat panas dan ketakutan. Kucing tidak menyukai makanan panas, itulah sebabnya ia tidak menyukai makanan panas.', 'Pembacaannya adalah dua kosakata yang disatukan secara terpisah, seperti yang Anda harapkan dari kanji yang berhubungan dengan bagian tubuh. Jadi, 猫 ditambah 舌 = <membaca>ねこじた</reading>. Ingatlah bahwa 舌 di sini dibaca sebagai じた, dan bukan した.', 'Keengganan Terhadap Makanan Panas')
    RETURNING id INTO v_4229_keengganan_terhadap_makanan_panas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '若い', 'muda', 19, 103, 'Ini adalah kanji tunggal dengan い di akhir, artinya Anda tahu itu mungkin kata sifat. Apa bentuk kata sifat dari <kanji>muda</kanji>? Itu <vocabulary>muda</vocabulary>.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji. Oh betapa menyenangkannya menjadi <vocabulary>muda</vocabulary> dan bisa mengingatnya.', 'Muda, Muda')
    RETURNING id INTO v_4230_muda;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '若者', 'orang-muda', 19, 104, '<kanji>muda</kanji> <kanji>seseorang</kanji> adalah <vocabulary>orang muda</vocabulary>.', 'Membaca untuk yang satu ini sungguh menyebalkan. 若 sama dengan apa yang Anda pelajari dengan kanji (わか), tetapi 者 adalah もの, bukan itu yang Anda pelajari. Bayangkan ini: <vocabulary>anak muda</vocabulary> melakukan apa yang mereka inginkan. Mereka tidak mengikuti tradisi atau melakukan apa pun sesuai keinginan Anda, seperti halnya membaca kata ini. Aksi mereka juga bikin pengen banget <read>mengerang</reading> (もの) karena ugh, anak muda. Keluar dari halaman rumputku.', 'Orang Muda')
    RETURNING id INTO v_4231_orang_muda;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '若々しい', 'muda', 19, 105, 'Sesuatu <kanji>muda</kanji> <kanji>muda</kanji> memiliki <vocabulary>muda</vocabulary>ness di sisinya. Oh, menjadi awet muda dan <vocabulary>tampak muda</vocabulary> lagi!', 'Bacaannya adalah bacaan yang Anda pelajari dengan kanji. Hal yang sama berlaku untuk kanji pengulang.', 'Muda, Tampak Muda')
    RETURNING id INTO v_4232_muda;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '名詞', 'kata-benda', 19, 106, '<kanji>nama</kanji> <kanji>bagian pidato</kanji> adalah saat Anda memberi nama sesuatu. Bagian pidato manakah yang memiliki nama di dalamnya? Itu akan menjadi <vocabulary>kata benda</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kata benda')
    RETURNING id INTO v_4233_kata_benda;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '動詞', 'kata-kerja', 19, 107, '<kanji>part of Speech</kanji> yang mewakili <kanji>bergerak</kanji> adalah part of Speech yang menggambarkan tindakan. Itu adalah <vocabulary>kata kerja</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kata kerja')
    RETURNING id INTO v_4234_kata_kerja;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '歌詞', 'lirik-lagu', 19, 108, '<kanji>bagian pidato</kanji> dari sebuah <kanji>lagu</kanji> adalah bagian dari lagu di mana Anda berbicara (alias bernyanyi). Ini adalah bagian kata dari lagu tersebut. Ini adalah <vocabulary>lirik lagu</vocabulary>. Adakah yang siap untuk beberapa カラオケ?', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Lirik Lagu, Lirik')
    RETURNING id INTO v_4235_lirik_lagu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '助詞', 'partikel-tata-bahasa', 19, 109, '<kanji>bagian pidato</kanji> yang dimaksudkan untuk <kanji>membantu</kanji> tata bahasa Anda hanyalah hal-hal kecil. Mereka menyatukan tata bahasa dan kata-kata, dan itu saja. Ini adalah <vocabulary>partikel tata bahasa</vocabulary> atau hanya <vocabulary>partikel</vocabulary> biasa.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Partikel Tata Bahasa, Partikel, Kata belakang')
    RETURNING id INTO v_4236_partikel_tata_bahasa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '数詞', 'angka', 19, 110, '<kanji>angka</kanji> <kanji>bagian pidato</kanji> adalah <vocabulary>angka</vocabulary> atau <vocabulary>kata angka</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Angka, Kata Angka')
    RETURNING id INTO v_4237_angka;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '自動詞', 'kata-kerja-intransitif', 19, 111, 'Ingat bagaimana 動詞 berarti "kata kerja"? Ketika tindakan kata kerja terjadi oleh<kanji>dirinya</kanji> atau oleh subjek itu sendiri, maka itu adalah <vocabulary>verba intransitive</vocabulary>.

Dengan kata lain, ia tidak memerlukan objek langsung untuk menyelesaikan aksinya. Ini adalah kata kerja seperti 行く atau 着く atau 消える. Mereka melakukan sesuatu, namun mereka tidak melakukannya <em>kepada</em> siapa pun atau apa pun. Dapatkah Anda memikirkan 自動詞 lainnya dalam bahasa Jepang?', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kata Kerja Intransitif')
    RETURNING id INTO v_4238_kata_kerja_intransitif;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '無意識', 'ketidaksadaran', 19, 112, 'Tahu bagaimana 意識 itu "kesadaran"? Bagaimana jika <kanji>kesadaran</kanji> ini tidak ada (alias <kanji>tidak ada</kanji>)? Saat itulah ia menjadi <vocabulary>ketidaksadaran</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Namun, mengetahui cara membaca 意識 akan membantu.', 'Ketidaksadaran, Tanpa disadari, Tidak disengaja')
    RETURNING id INTO v_4239_ketidaksadaran;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '私財', 'dana-swasta', 19, 113, '<kanji>Pribadi</kanji> <kanji>kekayaan</kanji> adalah <vocabulary>dana pribadi</vocabulary> atau <vocabulary>dana milik Anda</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Dana Swasta, Dana Sendiri, Milik Pribadi, Dana Pribadi')
    RETURNING id INTO v_4240_dana_swasta;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '借財', 'utang', 19, 114, '<kanji>kekayaan</kanji> yang Anda <kanji>pinjam</kanji> adalah <vocabulary>hutang</vocabulary> Anda.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Namun, pastikan Anda mengingat ざい di atas さい. Mengapa? Karena Anda mendapatkan semua hutang ini saat mencoba membeli <reading>Z</reading>ion.', 'Utang')
    RETURNING id INTO v_4241_utang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '連続', 'serial', 19, 115, 'Jika Anda <kanji>membawa serta</kanji> dan <kanji>melanjutkan</kanji> sesuatu, Anda membuat versi <vocabulary>serial</vocabulary> darinya. Ayo ikut sekarang. Oke, lanjutkan! Ayo ikut sekarang. Oke, lanjutkan! Mungkin beginilah cara Lord of the Rings dibuat. Ayo ikut sekarang.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Serial, Berurutan, berturut-turut, Seri')
    RETURNING id INTO v_4242_serial;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '連れる', 'untuk-dibawa-serta', 19, 116, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>membawa serta</kanji> sehingga versi kosakata kata kerjanya adalah <kosa kata> membawa serta</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak mempelajari cara membaca tersebut dengan kanji ini, jadi inilah mnemonik yang dapat membantu Anda: <vocabulary>apa yang ingin Anda bawa</vocabulary>? Wah. Sebanyak itu? Kenapa kamu punya <reading>dua</reading> (つ) dari semuanya?', 'Untuk dibawa serta, Untuk Membawa Seseorang')
    RETURNING id INTO v_4243_untuk_dibawa_serta;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '財閥', 'plutokrat', 19, 117, '<kanji>kekayaan</kanji> <kanji>klan</kanji> adalah sekelompok orang yang melakukan apa pun yang mereka bisa untuk mendapatkan uang mereka. Inilah <vocabulary>plutokrat</vocabulary> dunia, tapi Anda juga bisa menyebut mereka <vocabulary>kelompok keuangan</vocabulary>.

財閥, atau <vocabulary>zaibatsu</vocabulary>, adalah konglomerat besar yang dikendalikan oleh keluarga yang terkemuka di Jepang hingga akhir Perang Dunia II. Beberapa, seperti Mitsubishi, bertahan dalam bentuk modern. Anda mungkin melihat zaibatsu disebutkan dalam buku-buku tentang sejarah atau ekonomi Jepang.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Plutokrat, Klik Keuangan, Zaibatsu')
    RETURNING id INTO v_4244_plutokrat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '非常に', 'sangat', 19, 118, 'Ketika sesuatu bergerak menuju <kanji>darurat</kanji> (非常), itu adalah sesuatu yang <vocabulary>sangat</vocabulary>, <vocabulary>extreme</vocabulary> buruk. Seperti, <vocabulary>sangat</vocabulary> begitu. Ini gila.', 'Bacaannya langsung dari kata 非常 yang semoga sudah kalian ketahui ya sekarang!', 'Sangat, Sangat, Sangat')
    RETURNING id INTO v_4245_sangat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '非常口', 'pintu-keluar-darurat', 19, 119, 'Anda tahu bagaimana 非常 berarti <kanji>darurat</kanji> dan bagaimana 口 bisa menjadi semacam pintu masuk (seperti dalam 入り口, misalnya)? Nah, jika itu masalahnya, maka Anda memiliki pintu darurat. Biasanya Anda melarikan diri dari keadaan darurat, sehingga menjadikan ini sebagai <vocabulary>pintu keluar darurat</vocabulary>.', 'Bacaannya adalah kata 非常 dan 口 digabungkan menjadi satu. Hal yang membuat ini aneh adalah campuran bacaan kun dan on''yomi. Saya kira segalanya akan menjadi kacau ketika Anda mengalami keadaan darurat.', 'Pintu Keluar Darurat')
    RETURNING id INTO v_4246_pintu_keluar_darurat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '順位', 'peringkat', 19, 120, '<kanji>urutan</kanji> tempat Anda <kanji>peringkat</kanji> adalah <vocabulary>peringkat</vocabulary> atau <vocabulary>standing</vocabulary> Anda di antara yang lain dalam daftar. Kalahkan skor tinggi itu, Ryu!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Peringkat, Kedudukan')
    RETURNING id INTO v_4247_peringkat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '順番', 'memesan', 19, 121, 'Saat Anda masuk dalam <kanji>urutan</kanji> dari <kanji>putaran</kanji> itulah <vocabulary>urutan</vocabulary>. Ini juga mewakili <vocabulary>giliran seseorang</vocabulary> dalam urutan tersebut.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Memesan, Giliran Seseorang')
    RETURNING id INTO v_4248_memesan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '大きい順', 'mengurangi-pesanan', 19, 122, 'Ketika <kanji>urutan</kanji> dari <kanji>besar</kanji> (ke kecil), yang dimaksud adalah <vocabulary>menurunkan urutan</vocabulary>. Itu <vocabulary>yang terbesar dulu</vocabulary>.', 'Pembacaannya adalah kata 大きい ditambah bacaan 順 yang Anda pelajari dengan kanji.', 'Mengurangi Pesanan, Urutan Menurun, Terbesar Pertama')
    RETURNING id INTO v_4249_mengurangi_pesanan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '小さい順', 'meningkatkan-pesanan', 19, 123, 'Ketika sesuatu dimulai dari <kanji>kecil</kanji> dan berjalan dalam <kanji>urutan</kanji>, maka itu berada dalam <vocabulary>urutan menaik</vocabulary>, atau <vocabulary>yang terkecil terlebih dahulu</vocabulary>.', 'Bacaannya adalah kata 小さい ditambah bacaan 順.', 'Meningkatkan Pesanan, Urutan Menaik, Yang terkecil terlebih dahulu')
    RETURNING id INTO v_4250_meningkatkan_pesanan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '席順', 'urutan-tempat-duduk', 19, 124, '<kanji>Urutan</kanji> dari <kanji>kursi</kanji> adalah <vocabulary>urutan tempat duduk</vocabulary>. Semuanya, silakan duduk di posisi yang semestinya.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Urutan Tempat Duduk')
    RETURNING id INTO v_4251_urutan_tempat_duduk;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '年代順', 'urutan-kronologis', 19, 125, 'Anda memasukkan <kanji>tahun</kanji> dalam <kanji>urutan</kanji> dari <kanji>periode</kanji> kemunculannya dan Anda benar-benar menyusunnya dalam <vocabulary>urutan kronologis</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Urutan Kronologis')
    RETURNING id INTO v_4252_urutan_kronologis;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '五十音順', 'pesanan-aiueo', 19, 126, 'Ini sedikit membingungkan bagi seseorang yang tidak terbiasa dengan bahasa Jepang. Anda memiliki <kanji>lima puluh</kanji> <kanji>suara</kanji>. Kemudian, mereka berada dalam <kanji>urutan</kanji> tertentu. Jadi, lima puluh bunyi ini adalah suku kata bahasa Jepang. Itu hiragana/katakana, mungkin berasal dari zaman dulu ketika ada lebih banyak suara dibandingkan sekarang. Jadi, "lima puluh bunyi berurutan" membentuk <kosa kata>urutan aiueo</vocabulary>, dengan "aiueo" adalah あいうえお yang mewakili lima kolom.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Pesanan Aiueo, Urutan Suku Kata')
    RETURNING id INTO v_4253_pesanan_aiueo;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '細かい', 'terperinci', 19, 127, 'Ini adalah kata sifat yang memanfaatkan arti kedua dari 細, <kanji>detail</kanji>. Jadi, ini artinya <vocabulary>detail</vocabulary> atau <vocabulary>fine</vocabulary>!

Anda dapat mengingat bahwa yang ini "detail" atau "baik" karena かい membuat Anda berpikir tentang <reading>coy</reading>otes. Hobi Anda adalah membuat model kereta api yang sangat detail dan bagus hanya dari daging mentah. Namun, ini berarti coyote sering datang dan menghancurkan semua hasil karya bagus Anda.', 'Kata ini mempunyai bacaan yang berbeda dari yang telah Anda pelajari sejauh ini, jadi inilah mnemonik untuk membantu Anda:

Setelah coyote menghancurkan model kereta api Anda, dia menggigit kepala Anda, membuat Anda mengalami <read>koma</reading> (こま) yang tidak terbatas.', 'Terperinci, Bagus, Kecil, Remeh')
    RETURNING id INTO v_4348_terperinci;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '警察署', 'kantor-polisi', 19, 128, '<kanji>kantor pemerintah</kanji> untuk polisi (警察) adalah <vocabulary>kantor polisi</vocabulary>, karena di situlah mereka berkumpul, bukan?', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kantor Polisi')
    RETURNING id INTO v_4349_kantor_polisi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '笛', 'seruling', 19, 129, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Karena kata ini terdiri dari satu kanji, maka sebaiknya menggunakan bacaan kun''yomi. Saat mempelajari kanji, Anda tidak mempelajari cara membacanya, jadi inilah mnemonik untuk membantu Anda dengan kata ini: Anggaplah Anda sedang mencoba <kanji>bersiul</kanji>, namun Anda tidak bisa. Yang keluar hanyalah udara. Anda membuat suara "<reading>Fuuuuuuueh</reading>" berulang-ulang, karena Anda tidak bisa menghentikan keseluruhan siulannya. Silakan berpura-pura melakukan itu (atau melakukannya secara nyata).', 'Seruling, Peluit')
    RETURNING id INTO v_4358_seruling;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '汽笛', 'peluit-uap', 19, 130, '<kanji>uap</kanji> <kanji>seruling</kanji> adalah seruling yang berbunyi menggunakan uap. Satu-satunya saat saya bisa membayangkan hal ini terjadi adalah melalui <vocabulary>peluit uap</vocabulary>. Choo chooooo!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Peluit Uap')
    RETURNING id INTO v_4359_peluit_uap;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '加える', 'untuk-menambahkan', 19, 131, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. 

Kanji itu sendiri berarti <kanji>menambahkan</kanji> dan kata ini adalah versi kata kerjanya: <vocabulary>to add</vocabulary>.

Ini adalah kata kerja transitif, artinya Anda menambahkan sesuatu yang lain. Anda menambahkan hidung pada manusia salju Anda, misalnya.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Anda memutuskan <vocabulary>untuk menambahkan</vocabulary> sesuatu dan kemudian <vocabulary>menambahkan</vocabulary> sesuatu yang lain, dan Anda berakhir dengan <reading>qua</reading>ntity (くわ) yang cukup banyak. Teruslah menambahkan dan menambahkan selamanya. Betapa besarnya KUANTITAS yang Anda miliki sekarang!', 'Untuk Menambahkan, Untuk Menyertakan')
    RETURNING id INTO v_4367_untuk_menambahkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '参加', 'partisipasi', 19, 132, 'Saat Anda <kanji>berpartisipasi</kanji>, <kanji>menambahkan</kanji> diri Anda ke aktivitas, itulah <vocabulary>partisipasi</vocabulary>. Bagus sekali, Anda mendapat bintang emas karena berpartisipasi!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Partisipasi')
    RETURNING id INTO v_4368_partisipasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '連絡する', 'untuk-menghubungi', 19, 133, 'Anda <kanji>membawa</kanji> sebuah pesan dan <kanji>menjeratnya</kanji> ke dalam telepon. Dari sana, pesan tersebut akan dikirim ke orang tersebut agar Anda <vocabulary>menghubungi</vocabulary> mereka.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Untuk Menghubungi, Untuk Menghubungi, Untuk Menghubungi')
    RETURNING id INTO v_4372_untuk_menghubungi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '芋', 'kentang', 19, 134, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji.', 'Kentang')
    RETURNING id INTO v_5760_kentang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '焼き芋', 'ubi-jalar-panggang', 19, 135, '<kanji>Panggang</kanji>d <kanji>kentang</kanji> sebenarnya adalah <vocabulary>ubi panggang</vocabulary> (atau <vocabulary>ubi panggang</vocabulary>). Meski secara harfiah hanya kentang, sebagian besar penutur bahasa Jepang otomatis teringat ubi ketika mendengar kata ini. enak! 🍠', 'Bacaannya adalah bacaan dari 焼く dan 芋 yang disatukan.', 'Ubi Jalar Panggang, Ubi Jalar Panggang')
    RETURNING id INTO v_5761_ubi_jalar_panggang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', 'じゃが芋', 'kentang', 19, 136, '<kanji>kentang</kanji> adalah <vocabulary>kentang</vocabulary>. Lebih khusus lagi, <vocabulary>kentang putih</vocabulary>.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji.', 'Kentang, Kentang Putih')
    RETURNING id INTO v_5762_kentang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '劇団', 'rombongan-drama', 19, 137, '<kanji>drama</kanji> <kanji>grup</kanji> adalah <vocabulary>grup drama</vocabulary> atau <vocabulary>perusahaan teater</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Rombongan Drama, Perusahaan Teater')
    RETURNING id INTO v_5810_rombongan_drama;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '埋める', 'untuk-mengubur', 19, 138, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>mengubur</kanji> jadi versi kosakata kata kerjanya adalah <vocabulary>to burry</vocabulary> juga.

埋める juga bisa berarti <vocabulary>mengisi</vocabulary>, dan bisa merujuk pada mengisi lubang, kekosongan, atau celah. Perhatikan bahwa kata ini dapat digunakan untuk merujuk pada mengisi lubang dan celah kiasan juga, seperti lubang dalam keuangan seseorang!', 'Anda mempelajari bacaan ini dengan kanji, betapa menyenangkannya bagi Anda!

Namun, kamu mungkin memperhatikan bahwa selain うめる, ada bacaan lain juga: うずめる. うめる digunakan untuk tindakan mengubur sesuatu atau mengisi lubang, sementara うずめる digunakan ketika menggambarkan penutup atau penyembunyian sesuatu, atau ketika membenamkan wajah seseorang ke dalam sesuatu (seperti kucing berbulu halus!)', 'Untuk Mengubur, Untuk Mengisi')
    RETURNING id INTO v_6301_untuk_mengubur;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '一匹', 'satu-hewan-kecil', 19, 139, '<kanji>Satu</kanji> <kanji>hewan kecil</kanji> adalah <vocabulary>satu hewan kecil</vocabulary>. Gunakan ini untuk menghitung hewan kecil seperti kucing dan anjing.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri. Hati-hati dengan pemendekan dan rendaku.', 'Satu Hewan Kecil')
    RETURNING id INTO v_6811_satu_hewan_kecil;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '品詞', 'bagian-pidato', 19, 140, 'Sebuah <kanji>produk</kanji> dari <kanji>part of Speech</kanji> lebih merupakan <vocabulary>part of Speech</vocabulary>. Kejahatan menghasilkan kejahatan, begitulah.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Bagian Pidato')
    RETURNING id INTO v_7480_bagian_pidato;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '覚える', 'untuk-menghafal', 19, 141, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>menghafal</kanji> jadi versi kata kerjanya adalah <vocabulary>to menghafal</vocabulary>. Seharusnya <kosakata>tidak terlalu sulit untuk diingat</vocabulary>, bukan?', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan salah satu bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda:

Cara terbaik <vocabulary>menghafal</vocabulary> dan <vocabulary>mengingat</vocabulary> sesuatu adalah dengan membuat lagu dan memutarnya di <reading>oboe</reading> (おぼ) Anda. Sesuatu tentang memainkannya membuatnya Anda bisa menghafal apa saja. Kamu sangat berbakat.', 'Untuk Menghafal, Untuk Diingat, Untuk Belajar, Untuk Mengambil')
    RETURNING id INTO v_7550_untuk_menghafal;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '連中', 'geng', 19, 142, 'Orang yang ingin Anda <kanji>ajak</kanji> ke <kanji>tengah</kanji> di suatu tempat mungkin adalah orang yang cukup Anda kenal. Mereka adalah <vocabulary>geng</vocabulary> Anda, mereka adalah <vocabulary>orang-orang</vocabulary>.

Namun, kata ini sering kali memiliki kesan negatif, seperti "orang-orang itu tidak bisa dipercaya" atau "mereka adalah kelompok yang egois".', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Selama Anda mengetahui bacaan kanji ini, Anda seharusnya bisa membaca kata ini dengan baik.', 'Geng, Teman-teman, Kelompok, Perusahaan')
    RETURNING id INTO v_7551_geng;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '多忙', 'sibuk', 19, 143, 'Jika Anda memiliki <kanji>banyak</kanji> <kanji>sibuk</kanji> hari, berarti Anda bahkan lebih <vocabulary>sibuk</vocabulary> dari yang Anda kira!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Sibuk')
    RETURNING id INTO v_7552_sibuk;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '喜び', 'sukacita', 19, 144, 'Ini adalah versi kata benda dari kanji <kanji>bersukacita</kanji>, jadi artinya <vocabulary>joy</vocabulary> dan <vocabulary>delight</vocabulary>. Anda bersukacita karena ada banyak alasan untuk <vocabulary>kegembiraan</vocabulary> Anda.', 'Kamu sudah mempelajari bacaan ini ketika kamu mempelajari 喜ぶ jadi kamu seharusnya bisa membaca yang ini juga!', 'Sukacita, Sukacita, Lagu, Pengangkatan')
    RETURNING id INTO v_7591_sukacita;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '連日', 'setiap-hari', 19, 145, 'Apa yang terjadi jika Anda <kanji>membawa serta</kanji> suatu <kanji>sehari</kanji>? Ini menjadi <vocabulary>setiap hari</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Setiap hari, Hari Demi Hari, Untuk Hari-Hari Terakhir, Sehari-hari, Berkepanjangan')
    RETURNING id INTO v_7593_setiap_hari;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '関連', 'hubungan', 19, 146, 'Jika Anda <kanji>membawa</kanji> beberapa hal yang <kanji>terkait</kanji>, Anda akan dapat memahami <vocabulary>hubungan</vocabulary> mereka dengan lebih baik.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Hubungan, Koneksi, Relevansi, Korelasi')
    RETURNING id INTO v_7647_hubungan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '悲しみ', 'kesedihan', 19, 147, 'Ini adalah versi kata benda dari kanji <kanji>sad</kanji>, jadi artinya <vocabulary>sadness</vocabulary>.', 'Anda mempelajari bacaan ini dengan 悲しむ, hore!', 'Kesedihan, Duka, Duka, Ketidakbahagiaan, Kesulitan')
    RETURNING id INTO v_7695_kesedihan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '宙', 'di-udara', 19, 148, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan kanji yang Anda pelajari, artinya Anda tahu bacaannya!', 'Di udara, Udara, Ruang angkasa')
    RETURNING id INTO v_7761_di_udara;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '混血', 'ras-campuran', 19, 149, 'Jika Anda memiliki <kanji>darah campuran</kanji> <kanji>darah</kanji>, beberapa orang mungkin mengatakan Anda berasal dari <vocabulary>ras campuran</vocabulary>. Miliki itu!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Ras Campuran, Orang Tua Campuran')
    RETURNING id INTO v_8674_ras_campuran;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '改める', 'untuk-mengubah-sesuatu', 19, 150, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja.

Kanji itu sendiri berarti <kanji>memperbarui</kanji>, dan arti kata kerja ini tidak jauh berbeda. Apa yang Anda lakukan jika Anda memperbarui sesuatu, biasanya untuk menjadikannya lebih baik? Anda akan <vocabulary>mengubah sesuatu</vocabulary>, <vocabulary>merevisi sesuatu</vocabulary>, atau <vocabulary>memperbaiki sesuatu</vocabulary>. Kata kerja ini bersifat transitif, sehingga memerlukan objek langsung.

改める adalah kata formal ketika Anda secara aktif melakukan perubahan atau perbaikan, seperti memperbaiki kesalahan atau mereformasi sistem. Anda juga dapat menggunakannya ketika Anda memutuskan untuk mengubah perilaku atau memperbarui cara Anda melakukan sesuatu.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda:

Biasanya ketika kita ingin <vocabulary>mengubah sesuatu</vocabulary>, kita ingin menjadikannya <reading>新た</reading> (あらた), bukan? Keluar dari yang lama, masuk dengan 新た, seperti kata mereka.', 'Untuk Mengubah Sesuatu, Untuk Merevisi Sesuatu, Untuk Memperbaiki Sesuatu')
    RETURNING id INTO v_8944_untuk_mengubah_sesuatu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '飲酒', 'minum-alkohol', 19, 151, '<kanji>Minum</kanji> <kanji>alkohol</kanji> adalah <vocabulary>minum alkohol</vocabulary>, atau hanya <vocabulary>minum</vocabulary>. Ini selalu mengacu pada alkohol.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda belum mempelajari cara membaca 飲 ini, jadi inilah mnemonik yang dapat membantu Anda:

Di manakah tempat yang bagus untuk <vocabulary>minum alkohol</vocabulary>? Sebuah <read>penginapan</reading> (いん), tentu saja!', 'Minum Alkohol, Minum')
    RETURNING id INTO v_9019_minum_alkohol;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '昆虫', 'serangga', 19, 152, '<kanji>serangga</kanji> <kanji>serangga</kanji> adalah... coba tebak! <vocabulary>serangga</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan on''yomi kanji. Anda mempelajari bacaan ini untuk 昆 ketika Anda mempelajari kanji, tetapi Anda belum mempelajari on''yomi untuk 虫, jadi inilah mnemonik yang dapat membantu Anda:

Tahukah kamu bahwa <vocabulary>serangga</vocabulary> adalah makanan favorit <reading>Mengunyah</reading>bacca (ちゅう)? Dia terpesona oleh semua jenis serangga, dan memeliharanya di dalam kotak sebagai hewan peliharaan. Ada juga beberapa dari mereka yang merangkak di bulunya.', 'Serangga, Serangga')
    RETURNING id INTO v_9039_serangga;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', 'お持ち帰り', 'bawa-pulang', 19, 153, 'Saat Anda <kanji>memegang</kanji>makanan dan <kanji>pulang</kanji>dengan membawa makanan tersebut, kemungkinan besar Anda akan mendapatkan <vocabulary>bawa pulang</vocabulary>.', 'Anda sudah belajar cara membaca 持つ dan 帰る, jadi Anda juga harus bisa membaca ini.', 'Bawa pulang')
    RETURNING id INTO v_9044_bawa_pulang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '一昨年', 'tahun-sebelumnya', 19, 154, 'Ingat bagaimana 一昨日 berarti "hari sebelum hari terakhir"? Demikian pula, <kanji>satu</kanji> tahun <kanji>sebelum</kanji> dengan <kanji>tahun</kanji> tersebut adalah <vocabulary>tahun sebelum</vocabulary> terakhir.', 'Terakhir kali Anda membuang sesuatu ke tempat sampah adalah <vocabulary>tahun lalu</vocabulary>. Mengapa? Karena Anda mendapatkan tempat sampah dengan fitur <reading>auto</reading> <reading>tossi</reading>ng (おととし). Teknologi yang luar biasa!', 'Tahun Sebelumnya')
    RETURNING id INTO v_9268_tahun_sebelumnya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '通じる', 'untuk-melewati-ke', 19, 155, 'Baiklah, lihat ini — kata kerja lain untuk kanji <kanji>melewati</kanji>! Anda sudah belajar 通る (melewati) dan 通う (mengunjungi secara rutin), namun yang ini menambah nuansa lain. Artinya <vocabulary>untuk melewati</vocabulary>, dengan penekanan pada perjalanan dari titik A ke titik B melalui rute tertentu.

通じる digunakan untuk banyak hal berbeda yang melibatkan orang dan tempat yang dihubungkan, atau sesuatu yang disampaikan dari satu titik ke titik lain. Baik itu jalan menuju kota tertentu, panggilan telepon yang sampai ke penerimanya, atau kata-kata atau perasaan yang disampaikan kepada seseorang, penekanannya adalah pada koneksi dan transmisi.', 'Seperti kata kerja lain yang diakhiri dengan じる, kata kerja ini sebenarnya menggunakan on''yomi dalam kanjinya, bukan kun''yomi! Anda belajar membaca itu dengan kanji, jadi sebaiknya Anda pergi ke sini.', 'Untuk Melewati Ke, Untuk Menyeberang, Untuk Memimpin')
    RETURNING id INTO v_9295_untuk_melewati_ke;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '流石', 'seperti-yang-diharapkan', 19, 156, '<kanji>Aliran</kanji> yang berisi <kanji>batu</kanji> seperti… hal paling alami yang pernah ada. Itu hanya <vocabulary>seperti yang diharapkan</vocabulary>. 

Perhatikan bahwa Anda juga akan menemukan ini ditulis dalam kana, tetapi artinya sama.', 'Sayangnya, bacaan untuk ini merupakan pengecualian total yang harus Anda hafalkan, jadi inilah mnemonik untuk membantu Anda:

<vocabulary>seperti yang diharapkan</vocabulary>, <reading>saus ga</reading>l (さすが) Anda menyelamatkan hari itu. Hidangan yang Anda masak terlihat agak kosong sampai teman Anda menuangkan saus ke atasnya. Itu terlihat seperti aliran sungai yang mengalir di atas bebatuan kering saat dia menuangkan saus. Seperti yang Anda harapkan dari gadis saus Anda.', 'Seperti yang diharapkan, Sama seperti, Tentu saja')
    RETURNING id INTO v_9303_seperti_yang_diharapkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '重なる', 'untuk-ditumpuk', 19, 157, 'Jika Anda ingat 重ねる, Anda akan mengenali ini sebagai versi intransitif dari kata kerja tersebut. Secara harafiah, ini berarti <vocabulary>ditumpuk</vocabulary>, namun sering kali digunakan juga berarti <vocabulary>bertepatan</vocabulary>, <vocabulary>tumpang tindih</vocabulary>, atau <vocabulary>mengumpulkan</vocabulary>.

Seperti yang sering kami rekomendasikan untuk kata-kata yang lebih rumit atau sulit diterjemahkan seperti ini, lihat kombinasi kata umum dan kalimat konteks kami untuk melihat bagaimana kata ini digunakan!', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda telah mempelajarinya dengan 重ねる, namun jika Anda lupa, berikut adalah mnemonik untuk membantu Anda mengingatnya:

Semua kotak <vocabulary>yang bertumpuk</vocabulary> ini ada di sini karena Anda baru saja pindah ke <reading>casa</reading> (かさ) baru Anda. Selamat! Sekarang saatnya membongkar setiap kotak yang telah <vocabulary>akumulasi</vocabulary>d. Selamat bersenang-senang.', 'Untuk Ditumpuk, Bertepatan, Untuk Tumpang Tindih, Untuk Akumulasi')
    RETURNING id INTO v_9304_untuk_ditumpuk;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '東西南北', 'semua-arah', 19, 158, 'Jika sesuatu terjadi di <kanji>timur</kanji>, <kanji>barat</kanji>, <kanji>selatan</kanji>, dan <kanji>utara</kanji>, maka hal itu terjadi di <vocabulary>segala arah</vocabulary>. Apa arah lain yang ada? Itu semuanya.

Kata ini biasanya muncul dalam ungkapan seperti 東西南北を見る (melihat ke segala arah). Namun bisa juga digunakan secara lebih harafiah yang berarti <vocabulary>timur barat selatan utara</vocabulary>, alias <vocabulary>arah mata angin</vocabulary>.', 'Kata ini menggunakan bacaan on''yomi untuk keempat kanjinya. Anda pernah melihatnya sebelumnya, jadi ini tidak akan terlalu sulit. Hati-hati dengan rendaku ganda itu — さい berubah menjadi ざい dan ほく berubah menjadi ぼく.', 'Semua Arah, Timur Barat Selatan Utara, Arah Kardinal')
    RETURNING id INTO v_9360_semua_arah;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2634_untuk_keluar, 'Untuk Keluar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2634_untuk_keluar, 'Untuk Mati', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2634_untuk_keluar, 'Untuk Nona', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2711_dunia, 'Dunia', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2711_dunia, 'Masyarakat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2711_dunia, 'Usia', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2711_dunia, 'Generasi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3243_rekonsiliasi, 'Rekonsiliasi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3243_rekonsiliasi, 'Berdamai', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3243_rekonsiliasi, 'Cari muka', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3376_sedih, 'Sedih', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3546_panca_indera, 'Panca indera', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3546_panca_indera, 'Panca indra', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3708_postingan_pekerjaan, 'Postingan Pekerjaan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3708_postingan_pekerjaan, 'Mencari Pekerja', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4010_buah, 'Buah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4057_kamis, 'Kamis', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4058_rabu, 'Rabu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4141_lidah_bercabang, 'Lidah Bercabang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4141_lidah_bercabang, 'Bermuka dua', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4166_menjadi_dalam_gangguan, 'Menjadi Dalam Gangguan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4166_menjadi_dalam_gangguan, 'Menjadi berantakan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4166_menjadi_dalam_gangguan, 'Menjadi Gangguan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4166_menjadi_dalam_gangguan, 'Menjadi Terganggu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4167_perkelahian, 'Perkelahian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4167_perkelahian, 'Pertempuran Chaotic', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4168_kebingungan, 'Kebingungan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4168_kebingungan, 'Kekacauan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4168_kebingungan, 'Kekacauan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4169_sukaria, 'Sukaria', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4169_sukaria, 'Pergaulan bebas', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4170_konter_buku, 'Konter Buku', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4170_konter_buku, 'Konter Untuk Buku', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4171_tiga_buku, 'Tiga Buku', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4171_tiga_buku, 'Tiga Jilid', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4172_delapan_buku, 'Delapan Buku', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4172_delapan_buku, 'Delapan Volume', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4173_satu_buku, 'Satu Buku', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4173_satu_buku, 'Satu Jilid', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4174_volume_terpisah, 'Volume Terpisah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4175_tidak_bertanggung_jawab, 'Tidak bertanggung jawab', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4175_tidak_bertanggung_jawab, 'Tidak ada gunanya', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4175_tidak_bertanggung_jawab, 'Tidak berdasar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4175_tidak_bertanggung_jawab, 'Ceroboh', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4176_tenaga_nuklir, 'Tenaga Nuklir', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4176_tenaga_nuklir, 'Energi Nuklir', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4176_tenaga_nuklir, 'Kekuatan Atom', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4176_tenaga_nuklir, 'Energi Atom', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4177_peningkatan, 'Peningkatan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4177_peningkatan, 'Perbaikan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4178_baik_dan_jahat, 'Baik Dan Jahat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4178_baik_dan_jahat, 'Benar dan Salah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4179_kelompok, 'Kelompok', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4179_kelompok, 'Kerumunan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4180_pendaftaran, 'Pendaftaran', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4180_pendaftaran, 'Bergabung', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4180_pendaftaran, 'Pendaftaran', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4182_musim, 'Musim', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4183_luar_angkasa, 'Luar Angkasa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4183_luar_angkasa, 'Ruang angkasa', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4183_luar_angkasa, 'Semesta', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4184_petugas_polisi, 'Petugas Polisi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4184_petugas_polisi, 'Polisi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4184_petugas_polisi, 'Polisi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4185_isi, 'Isi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4185_isi, 'Zat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4186_kecurigaan, 'Kecurigaan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4186_kecurigaan, 'Mengenakan biaya', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4187_kata_sifat, 'Kata sifat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4190_wakame, 'Wakame', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4190_wakame, 'Rumput Laut Wakame', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4191_kain, 'Kain', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4191_kain, 'Kain', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4192_dompet, 'Dompet', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4192_dompet, 'Tas kecil', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4193_kasur, 'Kasur', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4193_kasur, 'Seperai', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4193_kasur, 'Matras Tidur', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4193_kasur, 'Selimut', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4194_selimut, 'Selimut', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4194_selimut, 'Selimut Wol', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4195_murid, 'Murid', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4195_murid, 'Murid', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4196_budha, 'Budha', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4197_orang_percaya, 'Orang percaya', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4197_orang_percaya, 'Pengikut', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4198_untuk_memperoleh, 'Untuk Memperoleh', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4198_untuk_memperoleh, 'Untuk Mendapatkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4198_untuk_memperoleh, 'Untuk memperoleh', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4199_keuntungan, 'Keuntungan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4199_keuntungan, 'Laba', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4199_keuntungan, 'Keuntungan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4199_keuntungan, 'Memperoleh', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4200_baik_dalam, 'Baik Dalam', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4200_baik_dalam, 'Terampil Di', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4200_baik_dalam, 'Poin Kuat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4200_baik_dalam, 'Khusus', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4200_baik_dalam, 'keahlian', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4201_bujukan, 'Bujukan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4201_bujukan, 'Meyakinkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4202_sibuk, 'Sibuk', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4203_kekasih, 'Kekasih', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4203_kekasih, 'Lainnya yang Penting', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4203_kekasih, 'Pacar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4203_kekasih, 'Pacar perempuan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4205_revisi, 'Revisi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4205_revisi, 'Amandemen', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4205_revisi, 'Perubahan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4206_kegagalan_total, 'Kegagalan Total', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4206_kegagalan_total, 'Kesalahan Besar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4206_kegagalan_total, 'Bencana', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4206_kegagalan_total, 'Kegagalan Epik', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4207_konbu, 'Konbu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4207_konbu, 'Kombu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4207_konbu, 'Rumput Laut Konbu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4207_konbu, 'Rumput Laut Kombu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4208_mudah, 'Mudah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4208_mudah, 'Sederhana Untuk Dilakukan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4209_kemudahan, 'Kemudahan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4209_kemudahan, 'Dengan mudah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4209_kemudahan, 'Mudah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4209_kemudahan, 'Sederhana', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4210_bertindak_dengan_kekerasan, 'Bertindak dengan Kekerasan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4210_bertindak_dengan_kekerasan, 'Menjadi Marah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4211_kekerasan, 'Kekerasan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4211_kekerasan, 'Memaksa', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4212_brutal, 'Brutal', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4212_brutal, 'Kekerasan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4212_brutal, 'Menyerang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4213_berkeliaran, 'Berkeliaran', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4213_berkeliaran, 'Kehabisan Kendali', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4214_acar_plum, 'Acar Plum', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4214_acar_plum, 'Acar Ume', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4214_acar_plum, 'Umeboshi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4216_sejarah_akademik, 'Sejarah Akademik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4216_sejarah_akademik, 'Latar Belakang Pendidikan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4220_untuk_mencampur_sesuatu, 'Untuk Mencampur Sesuatu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4220_untuk_mencampur_sesuatu, 'Untuk Mengaduk Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4220_untuk_mencampur_sesuatu, 'Untuk Memadukan Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4222_untuk_mengurangi, 'Untuk Mengurangi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4222_untuk_mengurangi, 'Akan Menurun', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4222_untuk_mengurangi, 'Untuk Mendapatkan Menurun', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4223_pengurangan, 'Pengurangan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4224_festival_musiman, 'Festival Musiman', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4225_untuk_terlibat_dengan, 'Untuk Terlibat Dengan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4225_untuk_terlibat_dengan, 'Menjadi Kusut', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4225_untuk_terlibat_dengan, 'Untuk menjalin', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4226_untuk_melanjutkan, 'Untuk Melanjutkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4227_satu_demi_satu, 'Satu demi satu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4227_satu_demi_satu, 'Berturut-turut', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4227_satu_demi_satu, 'Dalam Suksesi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4228_lidah, 'Lidah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4229_keengganan_terhadap_makanan_panas, 'Keengganan Terhadap Makanan Panas', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4230_muda, 'Muda', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4230_muda, 'Muda', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4231_orang_muda, 'Orang Muda', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4232_muda, 'Muda', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4232_muda, 'Tampak Muda', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4233_kata_benda, 'Kata benda', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4234_kata_kerja, 'Kata kerja', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4235_lirik_lagu, 'Lirik Lagu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4235_lirik_lagu, 'Lirik', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4236_partikel_tata_bahasa, 'Partikel Tata Bahasa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4236_partikel_tata_bahasa, 'Partikel', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4236_partikel_tata_bahasa, 'Kata belakang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4237_angka, 'Angka', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4237_angka, 'Kata Angka', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4238_kata_kerja_intransitif, 'Kata Kerja Intransitif', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4239_ketidaksadaran, 'Ketidaksadaran', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4239_ketidaksadaran, 'Tanpa disadari', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4239_ketidaksadaran, 'Tidak disengaja', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4240_dana_swasta, 'Dana Swasta', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4240_dana_swasta, 'Dana Sendiri', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4240_dana_swasta, 'Milik Pribadi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4240_dana_swasta, 'Dana Pribadi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4241_utang, 'Utang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4242_serial, 'Serial', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4242_serial, 'Berurutan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4242_serial, 'berturut-turut', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4242_serial, 'Seri', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4243_untuk_dibawa_serta, 'Untuk dibawa serta', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4243_untuk_dibawa_serta, 'Untuk Membawa Seseorang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4244_plutokrat, 'Plutokrat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4244_plutokrat, 'Klik Keuangan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4244_plutokrat, 'Zaibatsu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4245_sangat, 'Sangat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4245_sangat, 'Sangat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4245_sangat, 'Sangat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4246_pintu_keluar_darurat, 'Pintu Keluar Darurat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4247_peringkat, 'Peringkat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4247_peringkat, 'Kedudukan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4248_memesan, 'Memesan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4248_memesan, 'Giliran Seseorang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4249_mengurangi_pesanan, 'Mengurangi Pesanan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4249_mengurangi_pesanan, 'Urutan Menurun', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4249_mengurangi_pesanan, 'Terbesar Pertama', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4250_meningkatkan_pesanan, 'Meningkatkan Pesanan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4250_meningkatkan_pesanan, 'Urutan Menaik', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4250_meningkatkan_pesanan, 'Yang terkecil terlebih dahulu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4251_urutan_tempat_duduk, 'Urutan Tempat Duduk', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4252_urutan_kronologis, 'Urutan Kronologis', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4253_pesanan_aiueo, 'Pesanan Aiueo', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4253_pesanan_aiueo, 'Urutan Suku Kata', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4348_terperinci, 'Terperinci', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4348_terperinci, 'Bagus', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4348_terperinci, 'Kecil', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4348_terperinci, 'Remeh', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4349_kantor_polisi, 'Kantor Polisi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4358_seruling, 'Seruling', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4358_seruling, 'Peluit', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4359_peluit_uap, 'Peluit Uap', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4367_untuk_menambahkan, 'Untuk Menambahkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4367_untuk_menambahkan, 'Untuk Menyertakan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4368_partisipasi, 'Partisipasi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4372_untuk_menghubungi, 'Untuk Menghubungi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4372_untuk_menghubungi, 'Untuk Menghubungi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4372_untuk_menghubungi, 'Untuk Menghubungi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5760_kentang, 'Kentang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5761_ubi_jalar_panggang, 'Ubi Jalar Panggang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5761_ubi_jalar_panggang, 'Ubi Jalar Panggang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5762_kentang, 'Kentang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5762_kentang, 'Kentang Putih', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5810_rombongan_drama, 'Rombongan Drama', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5810_rombongan_drama, 'Perusahaan Teater', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6301_untuk_mengubur, 'Untuk Mengubur', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6301_untuk_mengubur, 'Untuk Mengisi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6811_satu_hewan_kecil, 'Satu Hewan Kecil', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7480_bagian_pidato, 'Bagian Pidato', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7550_untuk_menghafal, 'Untuk Menghafal', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7550_untuk_menghafal, 'Untuk Diingat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7550_untuk_menghafal, 'Untuk Belajar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7550_untuk_menghafal, 'Untuk Mengambil', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7551_geng, 'Geng', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7551_geng, 'Teman-teman', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7551_geng, 'Kelompok', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7551_geng, 'Perusahaan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7552_sibuk, 'Sibuk', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7591_sukacita, 'Sukacita', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7591_sukacita, 'Sukacita', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7591_sukacita, 'Lagu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7591_sukacita, 'Pengangkatan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7593_setiap_hari, 'Setiap hari', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7593_setiap_hari, 'Hari Demi Hari', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7593_setiap_hari, 'Untuk Hari-Hari Terakhir', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7593_setiap_hari, 'Sehari-hari', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7593_setiap_hari, 'Berkepanjangan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7647_hubungan, 'Hubungan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7647_hubungan, 'Koneksi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7647_hubungan, 'Relevansi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7647_hubungan, 'Korelasi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7695_kesedihan, 'Kesedihan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7695_kesedihan, 'Duka', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7695_kesedihan, 'Duka', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7695_kesedihan, 'Ketidakbahagiaan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7695_kesedihan, 'Kesulitan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7761_di_udara, 'Di udara', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7761_di_udara, 'Udara', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7761_di_udara, 'Ruang angkasa', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8674_ras_campuran, 'Ras Campuran', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8674_ras_campuran, 'Orang Tua Campuran', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8944_untuk_mengubah_sesuatu, 'Untuk Mengubah Sesuatu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8944_untuk_mengubah_sesuatu, 'Untuk Merevisi Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8944_untuk_mengubah_sesuatu, 'Untuk Memperbaiki Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9019_minum_alkohol, 'Minum Alkohol', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9019_minum_alkohol, 'Minum', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9039_serangga, 'Serangga', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9039_serangga, 'Serangga', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9044_bawa_pulang, 'Bawa pulang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9268_tahun_sebelumnya, 'Tahun Sebelumnya', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9295_untuk_melewati_ke, 'Untuk Melewati Ke', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9295_untuk_melewati_ke, 'Untuk Menyeberang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9295_untuk_melewati_ke, 'Untuk Memimpin', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9303_seperti_yang_diharapkan, 'Seperti yang diharapkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9303_seperti_yang_diharapkan, 'Sama seperti', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9303_seperti_yang_diharapkan, 'Tentu saja', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9304_untuk_ditumpuk, 'Untuk Ditumpuk', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9304_untuk_ditumpuk, 'Bertepatan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9304_untuk_ditumpuk, 'Untuk Tumpang Tindih', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9304_untuk_ditumpuk, 'Untuk Akumulasi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9360_semua_arah, 'Semua Arah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9360_semua_arah, 'Timur Barat Selatan Utara', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9360_semua_arah, 'Arah Kardinal', false, true);

  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2634_untuk_keluar, 'はずれる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2711_dunia, 'よ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3243_rekonsiliasi, 'なかなおり', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3376_sedih, 'かなしい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3546_panca_indera, 'ごかん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3708_postingan_pekerjaan, 'きゅうじん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4010_buah, 'くだもの', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4057_kamis, 'もくようび', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4058_rabu, 'すいようび', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4141_lidah_bercabang, 'にまいじた', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4166_menjadi_dalam_gangguan, 'みだれる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4167_perkelahian, 'らんせん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4168_kebingungan, 'こんらん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4169_sukaria, 'らんこう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4170_konter_buku, 'さつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4171_tiga_buku, 'さんさつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4172_delapan_buku, 'はっさつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4173_satu_buku, 'いっさつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4174_volume_terpisah, 'べっさつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4175_tidak_bertanggung_jawab, 'いいかげん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4176_tenaga_nuklir, 'げんしりょく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4177_peningkatan, 'かいぜん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4178_baik_dan_jahat, 'ぜんあく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4179_kelompok, 'しゅうだん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4180_pendaftaran, 'にゅうだん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4182_musim, 'きせつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4183_luar_angkasa, 'うちゅう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4184_petugas_polisi, 'けいかん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4185_isi, 'ないよう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4186_kecurigaan, 'ようぎ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4187_kata_sifat, 'けいようし', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4190_wakame, 'わかめ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4191_kain, 'ぬの', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4192_dompet, 'さいふ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4193_kasur, 'ふとん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4194_selimut, 'もうふ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4195_murid, 'せいと', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4196_budha, 'ぶっきょうと', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4197_orang_percaya, 'しんと', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4198_untuk_memperoleh, 'える', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4199_keuntungan, 'とく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4200_baik_dalam, 'とくい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4201_bujukan, 'せっとく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4202_sibuk, 'いそがしい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4203_kekasih, 'こいびと', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4205_revisi, 'かいせい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4206_kegagalan_total, 'だいしっぱい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4207_konbu, 'こんぶ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4207_konbu, 'こぶ', NULL, false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4208_mudah, 'やさしい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4209_kemudahan, 'ようい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4210_bertindak_dengan_kekerasan, 'あばれる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4211_kekerasan, 'ぼうりょく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4212_brutal, 'らんぼう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4213_berkeliaran, 'ぼうそう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4214_acar_plum, 'うめぼし', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4216_sejarah_akademik, 'がくれき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4220_untuk_mencampur_sesuatu, 'まぜる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4222_untuk_mengurangi, 'へる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4223_pengurangan, 'げんぽう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4224_festival_musiman, 'せっく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4225_untuk_terlibat_dengan, 'からむ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4226_untuk_melanjutkan, 'つづく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4227_satu_demi_satu, 'ぞくぞく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4228_lidah, 'した', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4229_keengganan_terhadap_makanan_panas, 'ねこじた', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4230_muda, 'わかい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4231_orang_muda, 'わかもの', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4232_muda, 'わかわかしい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4233_kata_benda, 'めいし', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4234_kata_kerja, 'どうし', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4235_lirik_lagu, 'かし', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4236_partikel_tata_bahasa, 'じょし', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4237_angka, 'すうし', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4238_kata_kerja_intransitif, 'じどうし', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4239_ketidaksadaran, 'むいしき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4240_dana_swasta, 'しざい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4241_utang, 'しゃくざい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4242_serial, 'れんぞく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4243_untuk_dibawa_serta, 'つれる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4244_plutokrat, 'ざいばつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4245_sangat, 'ひじょうに', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4246_pintu_keluar_darurat, 'ひじょうぐち', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4247_peringkat, 'じゅんい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4248_memesan, 'じゅんばん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4249_mengurangi_pesanan, 'おおきいじゅん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4250_meningkatkan_pesanan, 'ちいさいじゅん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4251_urutan_tempat_duduk, 'せきじゅん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4252_urutan_kronologis, 'ねんだいじゅん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4253_pesanan_aiueo, 'ごじゅうおんじゅん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4348_terperinci, 'こまかい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4349_kantor_polisi, 'けいさつしょ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4358_seruling, 'ふえ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4359_peluit_uap, 'きてき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4367_untuk_menambahkan, 'くわえる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4368_partisipasi, 'さんか', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4372_untuk_menghubungi, 'れんらくする', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5760_kentang, 'いも', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5761_ubi_jalar_panggang, 'やきいも', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5762_kentang, 'じゃがいも', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5810_rombongan_drama, 'げきだん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6301_untuk_mengubur, 'うめる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6301_untuk_mengubur, 'うずめる', NULL, false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6811_satu_hewan_kecil, 'いっぴき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7480_bagian_pidato, 'ひんし', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7550_untuk_menghafal, 'おぼえる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7551_geng, 'れんちゅう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7552_sibuk, 'たぼう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7591_sukacita, 'よろこび', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7593_setiap_hari, 'れんじつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7647_hubungan, 'かんれん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7695_kesedihan, 'かなしみ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7761_di_udara, 'ちゅう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8674_ras_campuran, 'こんけつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8944_untuk_mengubah_sesuatu, 'あらためる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9019_minum_alkohol, 'いんしゅ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9039_serangga, 'こんちゅう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9044_bawa_pulang, 'おもちかえり', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9268_tahun_sebelumnya, 'おととし', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9268_tahun_sebelumnya, 'いっさくねん', NULL, false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9295_untuk_melewati_ke, 'つうじる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9303_seperti_yang_diharapkan, 'さすが', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9304_untuk_ditumpuk, 'かさなる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9360_semua_arah, 'とうざいなんぼく', NULL, true, true);

  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2634_untuk_keluar, '風が強くて矢がターゲットから外れてしまった。', 'Angin bertiup kencang, dan anak panahnya meleset dari sasaran.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2634_untuk_keluar, '今日は雨だと思ったのに、予想が外れた。', 'Saya pikir hari ini akan turun hujan, tetapi prediksi saya meleset.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2634_untuk_keluar, 'プラグが外れたので、Mr.ロボットは「ありがとう」と言えなくなった。', 'Sejak dicabut, Pak Robot tidak lagi bisa mengucapkan, "terima kasih", lagi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2711_dunia, 'このアプリは、まだ世に出ていません。', 'Aplikasi ini masih belum terkenal di dunia.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2711_dunia, '世の中には色々な人がいるもんですね。', 'Ada banyak jenis orang di dunia, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2711_dunia, '日本語で「この世」とは生きている時の今の世界、「あの世」とは死後の世界のことです。', 'Dalam bahasa Jepang, “dunia ini” mengacu pada dunia saat ini ketika kita masih hidup, dan “dunia lain” mengacu pada dunia setelah kematian.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3243_rekonsiliasi, '仲直りしようよ。', 'Ayo berbaikan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3243_rekonsiliasi, '大人になってから仲直りの仕方が分からなくなったんだ。', 'Sejak saya dewasa, saya tidak tahu cara merias wajah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3243_rekonsiliasi, '一体全体、コウイチはどうやってマリオブラザーズを仲直りさせたの？', 'Bagaimana Koichi mewujudkan rekonsiliasi antara Mario bersaudara?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3376_sedih, '悲しいけど、しょうがないよ。', 'Ini menyedihkan, tapi mau bagaimana lagi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3376_sedih, 'それは悲しすぎるね。', 'Itu terlalu menyedihkan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3376_sedih, 'モモちゃんが悲しい気持ちの時は、お父さんもお母さんも悲しい気持ちになってしまうのよ。', 'Saat kamu merasa sedih, Momo, baik ayahmu maupun aku sendiri tidak bahagia.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3546_panca_indera, '五感のうちどれか一つを失ってしまうとしたら、どれを選びますか？また、その理由も教えてください。', 'Jika Anda harus kehilangan salah satu dari kelima indera Anda, manakah yang akan Anda serahkan? Tolong beritahu saya juga alasannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3546_panca_indera, 'うちのレストランの料理は五感で楽しめる料理となっています。', 'Hidangan di restoran kami dirancang untuk dinikmati dengan kelima indera.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3546_panca_indera, '毎日、五感をしっかり使って生活することはとても大切なことです。', 'Menggunakan kelima indera dalam kehidupan sehari-hari sangatlah penting.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3708_postingan_pekerjaan, '兄の会社で求人してるみたいですよ。', 'Sepertinya perusahaan saudaraku sedang membuka lowongan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3708_postingan_pekerjaan, '毎日新しい求人が出ていないか、オンラインでチェックしてます。', 'Setiap hari, saya memeriksa online untuk melihat apakah ada lowongan pekerjaan baru.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3708_postingan_pekerjaan, 'このデザイナーの求人ポスターは、皮肉な事にデザインが全くダメだね。', 'Ironisnya, poster pekerjaan desainer ini sama sekali tidak didesain dengan baik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4010_buah, '私はいつも朝ごはんに果物を食べます。', 'Saya selalu makan buah untuk sarapan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4010_buah, '果物の中では、イチジクが一番好きです。', 'Dari semua buah, saya paling suka buah ara.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4010_buah, 'お皿の上には、色とりどりの果物がならんでいました。', 'Buah-buahan berwarna-warni disusun di atas piring.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4010_buah, '植物学では、トマトは果物に分類されるんです。', 'Secara botani, tomat tergolong buah-buahan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4057_kamis, '木曜日は六時からピアノなんです。', 'Saya ada les piano pada hari Kamis pukul enam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4057_kamis, 'そうじは木曜日にしようと思ってます。', 'Saya berencana untuk membersihkan pada hari Kamis.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4057_kamis, '木曜日からセキが出てるんです。', 'Saya menderita batuk sejak hari Kamis.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4058_rabu, '水曜日にするべきことは、大きく分けて三つあります。', 'Apa yang harus kita lakukan pada hari Rabu secara kasar dapat dibagi menjadi tiga hal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4058_rabu, '水曜日までに終わらせます。', 'Saya akan menyelesaikannya pada hari Rabu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4058_rabu, '毎週水曜日、学校の後プールに行って泳いでいます。', 'Setiap hari Rabu, saya pergi ke kolam renang sepulang sekolah dan berenang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4141_lidah_bercabang, '政治家達の二枚舌にはもうウンザリだよ。', 'Saya muak dengan omongan ganda para politisi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4141_lidah_bercabang, 'あいつは二枚舌だから気をつけた方がいいよ。', 'Lidahnya bercabang, jadi berhati-hatilah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4141_lidah_bercabang, '上司は二枚舌で、「自分で考えろ！」と「言われた通りやれ！」の二つが口グセなんです。', 'Bos saya munafik, sering berkata "pikirkan sendiri!" dan "lakukan apa yang diperintahkan!"');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4166_menjadi_dalam_gangguan, '生理前はいつもPMSでメンタルが乱れるんです。', 'Saya selalu mengalami PMS dan gangguan jiwa sebelum haid.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4166_menjadi_dalam_gangguan, '最近、食生活が乱れがちなんですよね。', 'Akhir-akhir ini pola makan saya cenderung sedikit tidak teratur.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4166_menjadi_dalam_gangguan, '強風でヘアスタイルが乱れてしまった。', 'Angin kencang mengganggu gaya rambut saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4167_perkelahian, 'あの試合はまれに見る乱戦だった。', 'Permainan itu gratis untuk semua yang jarang kita lihat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4167_perkelahian, 'ちょっと乱戦気味になったけど、勝てたからオールオッケー！', 'Segalanya berubah menjadi gratis untuk semua, tapi sejak kami menang, semuanya baik-baik saja!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4167_perkelahian, 'セール初日、モールは人でごった返しになり、まるで大乱戦のようだった。', 'Di hari pertama penjualan, mal menjadi sangat ramai, seperti semacam battle royale.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4168_kebingungan, 'その町は、山火事で大混乱となっていた。', 'Kebakaran hutan membawa kekacauan besar di kota.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4168_kebingungan, '色んなことが一気に起こりすぎて、ちょっと混乱しています。', 'Terlalu banyak hal yang terjadi sekaligus dan saya sedikit bingung.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4168_kebingungan, '頭が混乱している時に話しかけられると、さらに混乱するんでやめてもらえませんか？', 'Kalau kamu bicara padaku saat aku sedang bingung, aku akan semakin bingung, jadi bisakah kamu berhenti?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4169_sukaria, 'かの女は、乱交のと中で、舌をだらりと出して気ぜつしてしまったんです。', 'Lidahnya terjulur dan dia pingsan saat pesta seks.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4169_sukaria, 'いい加減、乱交するのは止めなよ。みんなドン引きだよ。', 'Hei, sudah saatnya kamu berhenti melakukan pergaulan bebas, kamu sudah membuat semua orang menjauhinya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4169_sukaria, '「何か今日の俺、マジでイケてる。ひょっとしたらアイツらの乱交パーティにも誘われちゃうかも。」「ははは〜。そうだといいね。」', '"Aku terlihat sangat baik hari ini, aku mungkin diminta untuk ikut pesta seks." "Haha. Kamu berharap!"');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4170_konter_buku, '何冊くらいいると思う？', 'Menurut Anda, berapa banyak buku yang kami perlukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4170_konter_buku, '友達にもあげたかったので、その本を十冊買いました。', 'Saya ingin memberikan buku itu kepada teman-teman saya juga, jadi saya membeli sepuluh eksemplar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4170_konter_buku, 'クーポン冊子を一冊もらいました。', 'Saya menerima satu buku kupon.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4171_tiga_buku, 'この図書館では、本は三冊まで借りれます。', 'Di perpustakaan ini, Anda dapat meminjam hingga tiga buku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4171_tiga_buku, '週末に三冊全部読むのは、ちょっと無理かも。', 'Saya mungkin tidak bisa membaca ketiga buku tersebut dalam satu akhir pekan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4171_tiga_buku, 'お前から借りたミステリー小説のうち、三冊がどこかに消えたんだよ。これこそ本当のミステリーだ。', 'Tiga novel misteri yang saya pinjam dari Anda telah hilang entah kemana. Itu adalah misteri yang nyata.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4172_delapan_buku, '学生は八人だから、教科書は八冊必要です。', 'Karena jumlah siswanya delapan, maka diperlukan delapan buku pelajaran.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4172_delapan_buku, '今日は外に出ず、一日中マンガを読んでいて、合計で八冊読みました。', 'Saya tidak keluar rumah hari ini dan membaca komik sepanjang hari, totalnya ada delapan komik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4172_delapan_buku, 'お金がなくてイスが買えないので、本を八冊つみ上げてイスの代わりにしています。', 'Saya tidak punya uang dan tidak bisa membeli kursi, jadi saya menggunakan delapan buku sebagai kursi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4173_satu_buku, 'このマンガは一冊四百八十円です。', 'Manga ini berharga 480 yen untuk satu volume.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4173_satu_buku, 'これは、世界に一冊しかない絵本です。', 'Hanya satu salinan dari buku bergambar khusus ini yang ada di dunia.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4173_satu_buku, 'あなたのために旅の間に読める本を一冊買っておいたの。タイトルは『地図』よ。', 'Aku membelikanmu buku untuk dibaca selama perjalananmu. Judulnya adalah "Peta".');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4174_volume_terpisah, '私はこのコミックの別冊を集めています。', 'Saya mengumpulkan edisi terpisah dari komik ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4174_volume_terpisah, '母は私に別冊少年ジャンプを買ってくれました。', 'Ibu saya membelikan saya Shonen Jump edisi terpisah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4174_volume_terpisah, '別冊の表紙のモデル、見た？めっちゃカッコいいよ！', 'Apakah Anda melihat model di sampul buku lainnya? Ini sangat keren!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4175_tidak_bertanggung_jawab, 'あんないい加減な人、見たことありません。', 'Saya belum pernah melihat orang yang begitu lemah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4175_tidak_bertanggung_jawab, 'そういういい加減な情報を流すの、いい加減やめろよ！', 'Anda harus berhenti memberikan informasi buruk seperti itu!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4175_tidak_bertanggung_jawab, 'このサービスはいい加減すぎます。いい加減、改善すべきですよ。', 'Layanan ini kikuk. Sudah waktunya untuk beberapa perbaikan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4176_tenaga_nuklir, '私は原子力の利用には反対です。', 'Saya menentang penggunaan energi nuklir.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4176_tenaga_nuklir, '私の父は、以前は原子力発電所で仕事をしていました。', 'Ayah saya dulu bekerja di pembangkit listrik tenaga nuklir.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4176_tenaga_nuklir, 'コウイチはゴジラと戦うために、原子力で動くワニカニロボットを作った。', 'Koichi membuat robot WaniKani bertenaga nuklir untuk melawan Godzilla.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4177_peningkatan, 'このシステムにはまだ改善が必要です。', 'Sistem ini masih perlu perbaikan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4177_peningkatan, 'ユーザーのフィードバックを元に、サービスを改善しました。', 'Berdasarkan masukan pengguna, kami telah meningkatkan layanan kami.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4177_peningkatan, 'このミーティングは、プロジェクトの改善点を話し合うためのものです。', 'Pertemuan ini untuk membahas perbaikan proyek.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4178_baik_dan_jahat, 'さすがにこの年なら善悪は分かるでしょ。', 'Pastinya di usia segini, mereka sudah bisa membedakan mana yang benar dan mana yang salah, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4178_baik_dan_jahat, '最近は善悪の区別がつかない学生が多すぎる気がします。', 'Saya merasa terlalu banyak siswa saat ini yang tidak mampu membedakan mana yang benar dan mana yang salah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4178_baik_dan_jahat, 'このロボットは、ヒーロー番組から善悪を学びました。', 'Robot ini belajar tentang kebaikan dan kejahatan dari pertunjukan pahlawan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4179_kelompok, '集団で行動するのが苦手なんです。', 'Aku tidak pandai berakting dalam kelompok.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4179_kelompok, 'その国に行くなら、テロリスト集団に気をつけなくちゃいけませんよ。', 'Jika Anda pergi ke negara itu, Anda harus berhati-hati terhadap kelompok teroris.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4179_kelompok, '集団でイジメをするなんて、最低ですよ！', 'Menindas seseorang secara berkelompok itu menjijikkan!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4180_pendaftaran, 'このチームには、入団テストを受けて合格した人だけが入団できます。', 'Hanya mereka yang telah mengikuti dan lulus uji coba yang dapat bergabung dengan tim ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4180_pendaftaran, 'これを見てイチローのマリナーズ入団当初のシチュエーションを思い出しました。', 'Hal ini mengingatkan saya pada situasi Ichiro saat pertama kali bergabung dengan Mariners.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4180_pendaftaran, 'その教団に入団しても、何の得にもならないよ。', 'Anda tidak akan mendapatkan apa pun dengan bergabung dengan organisasi keagamaan itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4182_musim, 'その服、ちょっと季節外れじゃない？', 'Bukankah pakaianmu sedikit keluar dari musimnya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4182_musim, 'もう秋も終わりかぁ。季節が変わるの早すぎない？', 'Musim gugur sudah berakhir. Bukankah musim berganti terlalu cepat?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4182_musim, '季節の変わり目には体調をくずしやすいものです。', 'Sangat mudah untuk jatuh sakit saat pergantian musim.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4183_luar_angkasa, '私の彼は、宇宙一カッコいいです。', 'Cowokku adalah cowok paling keren di alam semesta.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4183_luar_angkasa, '宇宙の果てには何があると思いますか。', 'Menurut Anda apa yang ada di akhir alam semesta?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4183_luar_angkasa, '宇宙人ガイドとの宇宙旅行はどうでしたか？', 'Bagaimana perjalanan luar angkasa Anda dengan pemandu alien?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4184_petugas_polisi, '彼のお父さんは警官だよ。', 'Ayahnya adalah seorang petugas polisi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4184_petugas_polisi, '昨日、警官に道を聞きました。', 'Saya menanyakan arah kepada petugas polisi kemarin.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4184_petugas_polisi, 'その警官の名前は、舌をかみそうな名前だった。', 'Nama petugas polisi itu seperti twister lidah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4185_isi, 'プレゼンの内容、すごく分かりやすかったです。', 'Isi presentasi Anda sangat mudah dipahami.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4185_isi, 'そっちが気になって内容が全然頭に入ってこない。', 'Saking terganggunya, isinya tidak meresap sama sekali.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4185_isi, '私は人の話を聞きながら内容を頭の中でまとめるのが苦手なので、ミーティングではあまり発言できません。', 'Karena saya tidak pandai merangkum informasi di kepala sambil mendengarkan orang lain, saya tidak banyak bicara saat rapat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4186_kecurigaan, 'ビエトに殺人の容疑がかかっているらしい。', 'Rupanya, Viet dicurigai melakukan pembunuhan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4186_kecurigaan, 'コウイチの証言で、ビエトの容疑は晴れました。', 'Kesaksian Koichi menghilangkan kecurigaan Viet.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4186_kecurigaan, '部長、駅でタバコをゴミ箱に入れたら、火事になって駅が全焼しちゃったらしいんだよ。その容疑で今警察署にいるんだって。', 'Saya mendengar manajer membuang rokoknya ke tempat sampah di stasiun dan rokok itu terbakar lalu membakar stasiun tersebut. Dia sekarang berada di kantor polisi atas tuduhan itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4187_kata_sifat, '「大きい」は形容詞です。', '"Besar" adalah kata sifat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4187_kata_sifat, 'え、「キレイ」って「い形容詞」じゃなくて「な形容詞」なんですか？', 'Apa, "kirei" bukan "kata sifat-i", tapi "kata sifat-na"?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4187_kata_sifat, 'このシチュエーションにぴったりのいい形容詞が思いつきません。', 'Saya tidak dapat menemukan kata sifat yang bagus yang dapat menggambarkan situasi ini dengan baik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4190_wakame, '若布スープを一つ下さい。', 'Bisakah saya minta semangkuk sup wakame?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4190_wakame, '今日の晩ご飯は若布ご飯です。', 'Makan malam hari ini adalah nasi wakame.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4190_wakame, '若布とキュウリの和え物は私の大好物です。', 'Salad wakame dan mentimun adalah favoritku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4191_kain, 'カラフルでかわいい布ですね。', 'Ini adalah kain yang berwarna-warni dan lucu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4191_kain, 'この布でクッションカバーを作るつもりなんです。', 'Saya akan membuat sarung bantal dengan kain ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4191_kain, 'え、紙オムツじゃなくて布オムツを使ってるんですか？', 'Oh, kamu menggunakan popok kain dibandingkan popok sekali pakai?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4192_dompet, '彼女はGUCCIの財布を使っています。', 'Dia menggunakan dompet GUCCI.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4192_dompet, '私の財布はいつも空っぽです。', 'Dompetku selalu kosong.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4192_dompet, 'すいません、財布を落としましたよ！', 'Permisi, dompet Anda terjatuh!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4193_kasur, 'あー、今すぐ布団に入りたい！', 'Ah, aku ingin memakai selimutku sekarang!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4193_kasur, '羽毛布団の洗い方、知ってる？', 'Tahukah Anda cara mencuci selimut bulu angsa?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4193_kasur, '干した布団のにおいは死んだダニのにおいなんだよ。', 'Bau sprei kering adalah bau tungau debu yang mati.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4194_selimut, 'ソファの上に毛布が一枚あります。', 'Ada satu selimut di sofa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4194_selimut, 'その毛布、ダンボール箱に入れてもらっていい？', 'Bisakah Anda memasukkan selimut ke dalam kotak karton?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4194_selimut, '日本の家の部屋って冬は寒いから、うちではみんな、かけ布団の下に毛布を使ってます。', 'Rumah Jepang cenderung dingin di musim dingin, jadi di rumah kami, semua orang menggunakan selimut wol di bawah selimut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4195_murid, '生徒がロボットだったら、宿題もちゃんと出すし、先生も楽だろうな。', 'Jika siswa adalah robot, mereka akan selalu menyerahkan pekerjaan rumahnya dan guru akan lebih mudah melakukannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4195_murid, '高校までは生徒のことを「生徒」とよぶけど、大学では学生のことを「生徒」とはよばないよ。', 'Kami menyebut siswa sebagai "murid" hingga sekolah menengah atas, namun kami tidak menyebut mahasiswa sebagai "murid".');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4195_murid, 'このクラスの先生は、生徒一人一人のことを対等に見てくれます。', 'Para guru di kelas ini memandang setiap siswa secara setara.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4196_budha, '私たちは仏教徒です。', 'Kami adalah umat Buddha.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4196_budha, 'この国には仏教徒よりもキリスト教徒の方が多くいます。', 'Jumlah umat Kristen di negara ini lebih banyak dibandingkan umat Budha.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4196_budha, 'どうして日本人は、ほとんどの人が仏教徒なのに、クリスマスパーティーをするの？', 'Mengapa orang Jepang mengadakan pesta Natal padahal sebagian besar penduduknya beragama Buddha?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4197_orang_percaya, 'トーフグにはたくさん信徒がいます。', 'Ada banyak orang yang percaya pada Tofugu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4197_orang_percaya, 'ワニカニの信徒数は、今、何人くらいだと思いますか？', 'Menurut Anda, berapa jumlah penganut WaniKani di sana saat ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4197_orang_percaya, '私の両親は、オウム真理教の信徒でした。', 'Orang tua saya adalah pengikut aliran sesat Aum Shinrikyo.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4198_untuk_memperoleh, '大学では知識だけでなく、多くの人間関係を得ることもできます。', 'Di bangku kuliah, kamu tidak hanya bisa menimba ilmu, tapi juga banyak menjalin hubungan dengan banyak orang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4198_untuk_memperoleh, 'この会社に入社したら、お金以外に何が得られますか？', 'Jika saya bergabung dengan perusahaan ini, apa yang saya dapatkan selain uang?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4198_untuk_memperoleh, '彼は努力の結果、大きな成功を得ました。', 'Dia telah mencapai kesuksesan besar sebagai hasil dari usahanya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4199_keuntungan, 'お得なクーポンはいかがですか？', 'Apakah Anda ingin kupon murah?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4199_keuntungan, 'ルックスがいい人はゼッタイに得だと思います。', 'Saya percaya bahwa memiliki ketampanan merupakan suatu keuntungan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4199_keuntungan, 'そんな事して、一体何の得があるっていうの？誰の得にもならないでしょ！', 'Apa untungnya melakukan hal seperti itu? Itu bukan kepentingan siapa pun!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4200_baik_dalam, '一番得意な料理は何ですか。', 'Apa hidangan khasmu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4200_baik_dalam, '彼はプログラミングが得意です。', 'Dia pandai pemrograman.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4200_baik_dalam, '彼は物事を分類するのがあまり得意ではありません。', 'Dia tidak pandai mengklasifikasikan sesuatu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4201_bujukan, '彼女は上司を説得するためにプレゼンをしました。', 'Dia membuat presentasi untuk membujuk atasannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4201_bujukan, '彼女はパーティーに行かせてもらえるよう親を説得しました。', 'Dia mencoba meyakinkan orang tuanya untuk mengizinkannya pergi ke pesta.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4201_bujukan, '彼の言葉にはいつも説得力があります。', 'Kata-katanya selalu membawa kekuatan persuasif.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4202_sibuk, '最近、とても忙しいんです。', 'Aku sangat sibuk akhir-akhir ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4202_sibuk, '忙しすぎて、頭がクラクラしています。', 'Aku sangat sibuk hingga kepalaku pusing.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4202_sibuk, '今日は忙しくて、ランチを食べる時間もありませんでした。', 'Hari ini sangat sibuk sehingga saya bahkan tidak punya waktu untuk makan siang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4203_kekasih, '恋人は今までいたことがありません。', 'Saya belum pernah punya pacar sebelumnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4203_kekasih, '友人に、恋人からモラハラを受けてると相談されました。', 'Seorang teman saya bercerita kepada saya tentang pelecehan yang dilakukan oleh pacarnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4203_kekasih, '日本ではクリスマスは恋人たちがデートをする日です。', 'Di Jepang, Natal adalah hari bagi pasangan untuk berkencan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4205_revisi, '四月から、JR山手線のダイヤが改正されます。', 'Jadwal Jalur JR Yamanote akan direvisi pada bulan April.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4205_revisi, 'インターネットの改正料金、もうチェックしましたか？', 'Sudahkah Anda memeriksa tarif Internet yang direvisi?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4205_revisi, 'その市民団体は、公共の場でオナラを禁止する法の改正を求めました。', 'Kelompok masyarakat sipil menyerukan perubahan undang-undang yang melarang kentut di tempat umum.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4206_kegagalan_total, 'そのプロジェクトは大失敗に終わりました。', 'Proyek ini berakhir dengan kegagalan besar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4206_kegagalan_total, 'それはとんだ大失敗でしたね。', 'Itu adalah kesalahan besar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4206_kegagalan_total, '私の大失敗のせいで、今月はワニカニの売り上げが五十パーセントも減ってしまいました。', 'Karena kegagalan saya, penjualan WaniKani turun lima puluh persen bulan ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4207_konbu, '昆布でダシを取りました。', 'Saya membuat kaldu dengan kombu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4207_konbu, '私は塩昆布が大好きです。', 'Saya suka rumput laut asin.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4207_konbu, 'コンビニで昆布おにぎりを買いました。', 'Saya membeli bola nasi rumput laut di toko serba ada.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4208_mudah, 'え、こんなに易しい問題も分からないの？', 'Apa, kamu bahkan tidak bisa memahami soal semudah itu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4208_mudah, '今日のテストは易しいテストだって聞いてたんだけど、私には全然易しくなかった。', 'Kudengar ujian hari ini adalah ujian yang mudah, tapi bagiku itu tidak mudah sama sekali.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4208_mudah, 'アンパンマンは、ことばは小さい子でも分かるように易しいですが、内容はガチです。', 'Anpanman menggunakan bahasa sederhana yang bahkan anak kecil pun dapat memahaminya, namun isinya sendiri serius.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4209_kemudahan, 'そんな事は容易に想像できますよね？', 'Sangat mudah untuk membayangkan hal seperti itu, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4209_kemudahan, 'こうなることは容易に予想できただろう。', 'Kita bisa dengan mudah memperkirakan hal ini akan terjadi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4209_kemudahan, '一度やり始めたことを止めるのは容易ではありません。', 'Tidak mudah untuk berhenti melakukan sesuatu setelah Anda mulai melakukannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4210_bertindak_dengan_kekerasan, 'その先生は、暴れる子をなんとか落ち着かせました。', 'Guru itu entah bagaimana berhasil menenangkan anak nakal itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4210_bertindak_dengan_kekerasan, 'あそこにナイフを持って暴れる危険人物がいるので、気をつけてください。', 'Hati-hati, ada pria berbahaya dengan pisau mengamuk di sana.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4210_bertindak_dengan_kekerasan, 'その店員に、一万円札を細かくしてくれるようたのんだら、急に暴れ出したんだよ。', 'Yang kulakukan hanyalah meminta pegawai toko untuk memecahkan tagihan 10.000 yenku dan dia tiba-tiba membuatku ketakutan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4211_kekerasan, '暴力には反対です。', 'Saya menentang kekerasan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4211_kekerasan, '私たちは、父の家庭内暴力が原因で家を出ました。', 'Kami meninggalkan rumah karena kekerasan dalam rumah tangga yang dilakukan ayah saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4211_kekerasan, 'あの男の暴力について、仏教徒としてではなく、一人の人間としてのあなたの意見を聞かせてくれませんか？', 'Bisakah Anda memberi saya pendapat Anda tentang kekerasan yang dilakukan pria itu, bukan sebagai seorang Buddhis, tapi sebagai manusia?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4212_brutal, 'どこでそんな乱暴な言葉を覚えてきたの？', 'Di mana Anda belajar bahasa kasar seperti itu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4212_brutal, 'クラスに一人、ちょっと乱暴な子がいるみたいなんだよね。', 'Tampaknya ada seorang anak di kelas yang agak kasar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4212_brutal, 'みんなが乱暴にするから、すぐにボロボロになっちゃうのよ。', 'Semua orang sangat kasar terhadapnya, mereka cepat rusak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4213_berkeliaran, 'アイツ最近ちょっと暴走気味だよね。', 'Orang itu menjadi sedikit liar akhir-akhir ini, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4213_berkeliaran, '暴走したトラックが、オフィスにつっこんで来たんです。	', 'Sebuah truk yang melarikan diri menabrak kantor kami.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4213_berkeliaran, '小学校の横を120キロのスピードで走る暴走ベンツのビデオがネットで話題になっています。', 'Sebuah video Mercedes Benz yang melaju dengan kecepatan 120 kilometer per jam di samping sebuah sekolah dasar beredar di Internet.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4214_acar_plum, '私は梅干しおにぎりが大好きです。', 'Saya suka bola nasi umeboshi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4214_acar_plum, '梅干しは塩分が多いので、食べすぎには注意です。', 'Plum kering mengandung banyak garam, jadi berhati-hatilah untuk tidak memakannya terlalu banyak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4214_acar_plum, '梅干しは何に混ぜて食べても美味しい。', 'Umeboshi membuat apa pun yang Anda campurkan terasa enak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4216_sejarah_akademik, 'それ、学歴サギですよね？', 'Itu penipuan akademis, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4216_sejarah_akademik, '学歴がないのがコンプレックスなんです。', 'Saya memiliki rasa rendah diri karena kurangnya pendidikan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4216_sejarah_akademik, '私の父にとっては、学歴が全てなんです。', 'Bagi ayah saya, latar belakang akademis adalah segalanya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4216_sejarah_akademik, '学歴はふつうだけど、ワニカニ歴は長いですよ。', 'Riwayat akademisku biasa saja, tapi riwayat WaniKani-ku panjang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4220_untuk_mencampur_sesuatu, '混ぜるな危険！', 'Jangan mencampurnya. Itu berbahaya!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4220_untuk_mencampur_sesuatu, 'トンカツソースとマヨネーズを混ぜたら最高に美味しいよ！', 'Rasanya luar biasa enak jika Anda mencampurkan saus tonkatsu dengan mayones.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4220_untuk_mencampur_sesuatu, 'ねぇ、気をつけた方がいいよ。あの男がさっきあんたの飲み物に何か混ぜてたのを見たよ。', 'Hei, kamu harus hati-hati, aku melihat pria itu mencampurkan sesuatu ke dalam minumanmu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4222_untuk_mengurangi, 'エクササイズすると、ウツになるリスクも減るんだって！', 'Mereka mengatakan bahwa saat Anda berolahraga, risiko depresi juga menurun!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4222_untuk_mengurangi, 'ウルトラプロセスフードを食べないようにしたら、十日で体重がニキロ減りました。', 'Ketika saya berhenti makan makanan ultra-olahan, berat badan saya turun dua kilogram dalam sepuluh hari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4222_untuk_mengurangi, 'イライラしやすい人は「他人にギブしすぎ」なんだよ。最初から何もしないか、相手が返せる分だけギブするようにするか、相手に期待しないようにすると、ストレスが劇的に減るよ。', 'Orang yang mudah frustrasi adalah orang yang “memberi terlalu banyak kepada orang lain”. Jika Anda tidak melakukan apa pun sejak awal, hanya memberikan apa yang bisa mereka berikan, atau berhenti mengharapkan imbalan apa pun, stres Anda akan berkurang drastis.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4223_pengurangan, '私は数学者で、大学で数学の減法を研究しています。', 'Saya seorang ahli matematika dan sedang mempelajari pengurangan matematika di perguruan tinggi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4223_pengurangan, '物理の問題で、ベクトル減法はあまり見ませんが、たまに出てくることがあります。', 'Dalam soal fisika, kita tidak terlalu sering menemukan pengurangan vektor, tetapi terkadang muncul.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4223_pengurangan, '先日、加法をマスターしたので今日からは減法を学びます。', 'Saya menguasai penjumlahan beberapa hari yang lalu, jadi saya akan mulai belajar pengurangan hari ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4224_festival_musiman, 'もうすぐモモの節句なので、ひな人形を出しました。', 'Saya mengeluarkan boneka hina karena Festival Anak Perempuan sudah dekat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4224_festival_musiman, '節句って、美味しいものが食べられるから、私は大好きです。', 'Saya suka festival musiman karena makanannya yang lezat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4224_festival_musiman, '日本の五節句を全部言えますか。', 'Bisakah Anda menyebutkan kelima festival musiman di Jepang?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4225_untuk_terlibat_dengan, 'これ、色んな問題が絡んでて、やっかいな問題なんですよね。', 'Ini adalah masalah yang rumit karena banyaknya masalah yang terlibat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4225_untuk_terlibat_dengan, 'アイツ、お金が絡むと人が変わるよな。', 'Orang itu berubah kalau ada hubungannya dengan uang, ya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4225_untuk_terlibat_dengan, 'タンがノドにずっと絡んでて、気持ち悪いんだよね。', 'Dahak saya tersangkut di tenggorokan, dan sungguh tidak nyaman.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4225_untuk_terlibat_dengan, 'パスタにしっかりソースが絡んでて、美味しい！', 'Sausnya tercampur rata dengan pasta, enak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4225_untuk_terlibat_dengan, '酒を飲んで人に絡む人は苦手です。', 'Saya tidak suka orang yang minum dan mengganggu orang lain.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4226_untuk_melanjutkan, '今の彼と、こんなに長く続くとは思ってませんでした。', 'Saya tidak berpikir itu akan bertahan lama dengan pacar saya saat ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4226_untuk_melanjutkan, '五日も雨が続いています。', 'Hujan telah turun selama lima hari berturut-turut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4226_untuk_melanjutkan, '起きたらすぐにワニカニをするようにしてたんだけど、それが一年間も続いたんだ！すごくない？でも、まだレベルは１９だよ。', 'Saya memutuskan untuk melakukan WaniKani segera setelah bangun tidur, dan saya terus melakukannya selama setahun penuh! Bukankah itu luar biasa? Tapi saya masih di level sembilan belas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4227_satu_demi_satu, 'オフィスの出口から社員が続々と出てきた。', 'Karyawan keluar dari pintu keluar kantor, satu demi satu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4227_satu_demi_satu, '新しいアイドルが続々とデビューする中、彼女だけは中々デビューできずにいました。', 'Sementara idola baru debut satu demi satu, dialah satu-satunya yang tidak dapat melakukan debut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4227_satu_demi_satu, 'それについては、新事実も続々と明らかになってきましたね。', 'Pengungkapan baru tentang hal itu terus terungkap.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4228_lidah, '舌をヤケドしちゃったんです。', 'Aku membakar lidahku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4228_lidah, '舌のしびれはもう取れましたか？', 'Apakah rasa kebas di lidahmu sudah hilang?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4228_lidah, 'その生徒は、先生に向かって舌打ちをしました。', 'Murid itu mendecakkan lidahnya pada gurunya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4229_keengganan_terhadap_makanan_panas, 'ごめんなさい。私、猫舌なんです。', 'Saya minta maaf. Saya tidak bisa makan makanan panas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4229_keengganan_terhadap_makanan_panas, '私が猫舌だってこと、忘れてない？', 'Apakah kamu tidak lupa bahwa aku tidak menyukai makanan panas?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4229_keengganan_terhadap_makanan_panas, 'コウイチは猫舌なので、いつもフーフーしてスープを食べます。', 'Koichi mempunyai lidah yang sensitif, jadi dia selalu meniup supnya sebelum memakannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4230_muda, '若いっていいなぁ。', 'Senang rasanya menjadi muda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4230_muda, '彼は若いころ、日本に留学していたことがあります。', 'Dia belajar di Jepang ketika dia masih muda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4230_muda, 'もう若い子のノリには付いていけません。', 'Saya tidak bisa lagi mengikuti semangat anak muda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4231_orang_muda, 'この若者はすごいよ。大物になる前にサインをもらっておいた方がいいよ。', 'Pria muda ini luar biasa. Anda harus mendapatkan tanda tangannya sebelum dia menjadi orang terkenal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4231_orang_muda, '若者たちは日本の未来なんですよ。もっと若者の声をしっかり聞きましょうよ！', 'Generasi muda adalah masa depan Jepang. Mari kita dengarkan lebih seksama suara anak muda!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4231_orang_muda, 'その若者は薬の中で座薬が一番好きだそうです。', 'Rupanya, pemuda itu paling menyukai supositoria dari semua obat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4232_muda, 'おばあちゃんっていつまでたっても若々しいよね。', 'Nenek, tidak peduli berapa lama waktu berlalu kamu selalu terlihat awet muda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4232_muda, 'そのファッション、ちょっと若々しすぎない？', 'Tidakkah menurut Anda jenis fesyen seperti itu terlalu muda untuk Anda cari?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4232_muda, '東洋医学では、黒ゴマや黒ニンニク、黒米など黒い物を食べると若々しさを保てると言われています。', 'Pengobatan oriental mengatakan bahwa mengonsumsi makanan berwarna hitam seperti wijen hitam, bawang putih hitam, dan nasi hitam membuat kita awet muda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4233_kata_benda, '「コーヒー」は名詞です。', '"Kopi" adalah kata benda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4233_kata_benda, 'これは可算名詞ですか、不可算名詞ですか？', 'Apakah ini kata benda yang dapat dihitung atau tidak dapat dihitung?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4233_kata_benda, '「しりとり」では固有名詞は使えませんよ。', 'Anda tidak dapat menggunakan kata benda yang tepat di Shiritori.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4234_kata_kerja, '「be動詞」って何ですか？', 'Apa yang dimaksud dengan "menjadi kata kerja?"');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4234_kata_kerja, 'え！？「doctor」って動詞としても使えるの？', 'Apa? Bisakah "dokter" digunakan sebagai kata kerja?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4234_kata_kerja, '日本語の動詞は基本、文の最後に来るんですよ。', 'Kata kerja bahasa Jepang pada dasarnya muncul di akhir kalimat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4235_lirik_lagu, 'ここから歌詞が思い出せないんだよね。', 'Saya tidak ingat lirik dari sini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4235_lirik_lagu, 'この歌詞、めっちゃいいね！誰が書いたの？', 'Lirik ini sangat bagus! Siapa yang menulisnya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4235_lirik_lagu, 'とっても若者らしい歌詞ですね。', 'Itu adalah lirik yang sangat muda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4236_partikel_tata_bahasa, 'この助詞の使い方を教えてくれませんか？', 'Bisakah Anda memberi tahu saya cara menggunakan partikel ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4236_partikel_tata_bahasa, '私は日本語の文法の助詞が苦手です。', 'Saya tidak pandai dengan partikel dalam tata bahasa Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4236_partikel_tata_bahasa, '今日はクラスの女子と助詞について学びました。', 'Hari ini saya belajar tentang partikel dengan gadis-gadis di kelas saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4237_angka, 'マイクさんは、どうやって数詞を覚えたんですか？', 'Bagaimana caramu menghafal angka, Mike?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4237_angka, '日本語には数詞がたくさんありすぎて、ちょっとパニクってます。', 'Saya sedikit panik karena banyak sekali kata angka dalam bahasa Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4237_angka, '日本語の数詞が勉強できるゲームがあればいいのに。', 'Saya berharap ada permainan yang bisa membantu saya mempelajari angka Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4238_kata_kerja_intransitif, 'これって自動詞ですか？', 'Apakah ini kata kerja intransitif?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4238_kata_kerja_intransitif, '自動詞「進む」の可能形は、「進める」です。', 'Bentuk potensial dari kata kerja intransitif “to advance” adalah “sesuatu yang maju.”');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4238_kata_kerja_intransitif, 'え、「marry」って自動詞じゃないの？', 'Apa, "menikah" bukan merupakan kata kerja intransitif?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4239_ketidaksadaran, '彼女は無意識にその曲を口ずさんでいました。', 'Dia tanpa sadar menyenandungkan lagu itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4239_ketidaksadaran, 'その無意識にツメをかむクセは直した方がいいよ。', 'Kebiasaan menggigit kuku yang tidak disengaja harus diperbaiki.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4239_ketidaksadaran, '彼はきっと、自分と対等だと思わない人間は無意識に見下してるんだよ。', 'Saya yakin dia secara tidak sadar memandang rendah siapa pun yang dia anggap tidak setara.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4240_dana_swasta, '今は私財を全て投げうって、ボランティア活動をしています。', 'Saat ini saya menjadi sukarelawan, setelah membuang semua barang pribadi saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4240_dana_swasta, '母のために、私財で安心して母をあずけられる老人ホームを作ることにしました。', 'Saya memutuskan untuk membangun panti jompo untuk ibu saya di mana saya dapat meninggalkannya dengan tenang dengan dana pribadi saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4240_dana_swasta, 'ワニカニの売り上げが安定したら、コウイチは私財を投じてフグ毒研究センターを作るつもりです。', 'Setelah penjualan Wanikani stabil, Koichi berencana menginvestasikan dana pribadinya untuk membangun pusat penelitian racun ikan buntal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4241_utang, '返す目どが立っていないのに、借財をするのは良くないよ。', 'Tidak baik mengambil hutang jika tidak tahu cara membayarnya kembali.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4241_utang, 'トーフグが多がくの借財をかかえているというのは本当ですか？', 'Benarkah Tofugu punya hutang yang banyak?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4241_utang, 'フグが暗殺された後、サーモンに残されたのは借財だけだということが明らかになった。', 'Setelah pembunuhan Fugu, menjadi jelas bahwa satu-satunya hal yang dia tinggalkan untuk Salmon adalah hutang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4242_serial, '彼は連続で賞を受賞しました。', 'Dia memenangkan penghargaan berturut-turut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4242_serial, '三日連続でカレーはちょっと…。', 'Kari tiga hari berturut-turut agak berlebihan...');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4242_serial, '今、この連続ドラマにハマっています。', 'Saya sekarang terpikat pada serial drama ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4243_untuk_dibawa_serta, 'このイベントでは、赤ちゃんを連れる人がほとんどでした。', 'Kebanyakan orang yang hadir di acara ini ditemani oleh bayinya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4243_untuk_dibawa_serta, 'よく母親に連れられて、コミュニティーセンターへ行っていたのを覚えています。', 'Saya ingat ibu saya biasa mengajak saya ke pusat komunitas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4243_untuk_dibawa_serta, 'うちの子が、子犬を一匹、連れて帰ってきました。', 'Anak saya membawa pulang seekor anak anjing.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4244_plutokrat, 'あの財閥は戦前から日本を支配している。', 'Konglomerat itu telah memerintah Jepang sejak sebelum perang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4244_plutokrat, 'せっかく有名な財閥で働いてたのに、どうしてわざわざうちにインターンしに来たの？', 'Anda bekerja untuk konglomerat terkenal, jadi mengapa Anda datang ke sini untuk magang untuk kami?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4244_plutokrat, 'もし私が財閥のオーナーの犬だったら、毎日ステーキを食べるんだろうな。', 'Jika saya adalah anjing pemilik konglomerat, saya mungkin akan makan steak setiap hari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4245_sangat, 'ありがとうございます。非常に助かります。', 'Terima kasih banyak. Ini sangat membantu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4245_sangat, '正直、そのニュースには非常にショックを受けました。', 'Terus terang, saya sangat terkejut dengan berita tersebut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4245_sangat, '非常に残念ですが、三田さんはプロジェクトチームから外れることになりました。', 'Dengan sangat menyesal kami informasikan bahwa Pak Mita tidak lagi menjadi bagian dari tim proyek.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4246_pintu_keluar_darurat, 'この建物には非常口が二ヶ所あります。', 'Ada dua pintu darurat di gedung ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4246_pintu_keluar_darurat, '非常口はそこの通路を左に行ったところにあります。', 'Anda akan melihat pintu keluar darurat ketika Anda belok kiri di koridor itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4246_pintu_keluar_darurat, '不良高校生がクラスをサボってくつろぐ場所と言えば非常口のかいだんの下ですよね？', 'Kalau kamu memikirkan tempat di mana siswa sekolah menengah nakal membolos dan berkumpul, itu pasti berada di bawah tangga pintu keluar darurat, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4247_peringkat, '順位ってそんなに大事？', 'Apakah peringkat itu penting?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4247_peringkat, '日本語の試験の順位が発表されました。', 'Peringkat dari ujian bahasa Jepang terungkap.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4247_peringkat, '順位なんかいちいち気にしてたらやってられないよ。', 'Saya tidak dapat melakukannya jika saya harus mengkhawatirkan setiap peringkat secara terpisah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4248_memesan, 'みんなで順番に使いましょう！', 'Mari kita semua bergantian menggunakannya!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4248_memesan, '今、スーパーでレジの順番を待っているところです。', 'Aku sedang berada di supermarket, menunggu giliranku di kasir.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4248_memesan, 'ジャンケンで順番を決めましょう。', 'Mari kita putuskan urutannya dengan batu-gunting-kertas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4249_mengurangi_pesanan, 'これらの会社を売上高の大きい順にならべなさい。', 'Cantumkan perusahaan-perusahaan ini dalam urutan pendapatannya menurun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4249_mengurangi_pesanan, 'このゲームでは、最初にみんなでサイコロをふって、サイコロの目が大きい順にプレイします。', 'Dalam permainan ini, semua orang melempar dadu bersama-sama di awal, lalu bermain secara berurutan dari lemparan tertinggi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4249_mengurangi_pesanan, 'この順番、小さい順と大きい順、どっちにする方がいいと思う？', 'Urutan mana yang menurut Anda lebih baik, naik atau turun?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4250_meningkatkan_pesanan, '答えの数字は、小さい順に書くのがルールです。', 'Aturannya adalah menulis nomor jawaban dalam urutan menaik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4250_meningkatkan_pesanan, 'PERが小さい順に会社をならべました。', 'Perusahaan terdaftar dalam urutan PER yang meningkat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4250_meningkatkan_pesanan, '『ザ・マインド』は、無言で小さい順に1から100の数字を出していくシンプルなカードゲームです。', '"The Mind" adalah permainan kartu sederhana di mana pemain secara diam-diam memainkan kartu bernomor dalam urutan menaik dari satu hingga seratus.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4251_urutan_tempat_duduk, '席順はあいうえお順にしました。', 'Urutan tempat duduknya dalam urutan aiueo.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4251_urutan_tempat_duduk, 'このクラスでは、毎週月曜日に席順が変わります。', 'Di kelas ini, urutan tempat duduk berubah setiap hari Senin.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4251_urutan_tempat_duduk, '席順はクジで決めたいと思いますが、目の悪い人は先に申し出てください。', 'Kami akan menentukan urutan tempat duduk dengan undian, tetapi jika penglihatan Anda buruk, harap beri tahu saya terlebih dahulu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4252_urutan_kronologis, 'このミュージアムでは、アーティストの作品が年代順にディスプレイされています。', 'Di museum ini, karya seni para seniman ditampilkan secara kronologis.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4252_urutan_kronologis, 'それぞれのバンドのヒット曲を年代順にならべてみました。', 'Saya mengaransemen setiap lagu hit band dalam urutan kronologis.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4252_urutan_kronologis, 'このデータベースでは、年代順でも五十音順でもサーチできるようになっています。', 'Dalam database ini, Anda dapat mencari dalam urutan kronologis atau aiueo.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4253_pesanan_aiueo, '町名は五十音順にならんでいます。', 'Nama-nama kota dicantumkan dalam urutan aiueo.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4253_pesanan_aiueo, '僕の名前は、五十音順だといつも一番最初になります。', 'Nama saya selalu berada di urutan pertama dalam urutan aiueo.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4253_pesanan_aiueo, 'リストは好き順とかじゃなく、ただの五十音順なので、悪しからず。', 'Daftar ini bukan berdasarkan urutan preferensi atau apa pun, hanya berdasarkan urutan aiueo, jadi mohon jangan ditunda oleh hal itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4348_terperinci, '私は細かいことはあまり気にしない性格です。', 'Saya bukan orang yang berorientasi pada detail.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4348_terperinci, 'じゃあ、このキャベツを細かくきざんでください。', 'Lalu, cincang halus kubis ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4348_terperinci, '今、細かいお金しかありません。', 'Saya hanya punya sedikit uang kembalian sekarang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4349_kantor_polisi, 'この近くに警察署はありますか？', 'Apakah ada kantor polisi di dekat sini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4349_kantor_polisi, '警察署って、なんだか入りづらいよね。', 'Kantor polisi terasa sulit untuk dimasuki, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4349_kantor_polisi, '警察署に行ってみたけど、パトロール中なのか警官が一人もいなかったんです。', 'Saya pergi ke kantor polisi, tetapi tidak ada satu pun petugas di sana. Mungkin mereka sedang berpatroli.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4358_seruling, 'そこで試合終了の笛が鳴ってしまった。', 'Saat itulah peluit tanda berakhirnya pertandingan dibunyikan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4358_seruling, '公園を歩いていると、風とともに笛の音が聞こえてきました。', 'Saat saya berjalan melewati taman, saya mendengar suara seruling disertai angin.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4358_seruling, 'あの男性は笛をピーピー鳴らしながらダンスをすることで有名です。', 'Pria itu terkenal menari sambil membunyikan peluitnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4359_peluit_uap, 'マドの外から、汽車の汽笛が聞こえてきました。', 'Kami mendengar peluit kereta uap datang dari luar jendela.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4359_peluit_uap, 'いいか？汽笛が鳴ったら、船の上で三回ジャンプするんだぞ？', 'Anda siap? Saat peluit dibunyikan, kamu akan melompat tiga kali saat berada di kapal, oke?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4359_peluit_uap, '夜風に乗って、さびしい汽笛の音が、遠くまでひびきました。', 'Suara peluit uap yang sepi bergema jauh di kejauhan tertiup angin malam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4367_untuk_menambahkan, 'ここで少し塩を加えると味が引き立ちます。', 'Menambahkan sedikit garam di sini akan meningkatkan rasanya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4367_untuk_menambahkan, 'このアプリを使うと、動画にアニメを加えることができます。', 'Aplikasi ini memungkinkan Anda untuk menambahkan animasi ke video Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4367_untuk_menambahkan, '何事も一手間加えるだけで、グッと良くなるものなんですよね。', 'Menambahkan sedikit usaha ekstra bisa sangat meningkatkan segalanya, lho.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4368_partisipasi, '参加方法はこちらです。', 'Berikut cara berpartisipasi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4368_partisipasi, 'あなたもトーフグの忘年会に参加しませんか。きっと楽しいですよ。', 'Mengapa kamu tidak berpartisipasi dalam pesta akhir tahun Tofugu? Ini akan menyenangkan!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4368_partisipasi, '日曜日、京都のお寺の座禅の会に参加してきました。', 'Pada hari Minggu, saya menghadiri sesi zazen di sebuah kuil di Kyoto.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4372_untuk_menghubungi, '会社を首になったら連絡するよ。', 'Saya akan menghubungi Anda setelah saya dipecat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4372_untuk_menghubungi, 'あなたとはエンを切りたいので、もう連絡してこないでください。', 'Aku ingin memutuskan hubungan denganmu, jadi tolong jangan pernah menghubungiku lagi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4372_untuk_menghubungi, 'ごめん、行かなきゃ。予定を調べて、後で折り返し連絡するよ。', 'Maaf, aku harus pergi. Saya akan memeriksa jadwal saya dan menghubungi Anda kembali.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5760_kentang, 'この芋、レンジでチンしてくれない？', 'Bisakah Anda memasukkan kentang ini ke microwave?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5760_kentang, 'え、芋って四千種類もあるの？知らなかった。', 'Apa, ada 4.000 jenis kentang? Saya tidak mengetahuinya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5760_kentang, 'キャンプに行った時、友達とたき火で芋を焼きました。', 'Saat kami pergi berkemah, saya dan teman-teman memanggang kentang di api unggun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5761_ubi_jalar_panggang, '私は焼き芋が好きです。', 'Saya suka kentang panggang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5761_ubi_jalar_panggang, '学祭で焼き芋を出すことになりました。', 'Telah diputuskan bahwa kami akan menyajikan ubi panggang di festival sekolah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5761_ubi_jalar_panggang, '焼き芋が美味しい季節になりましたね。', 'Ini musim dimana ubi panggang rasanya enak, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5762_kentang, 'じゃが芋のスープを作りました。', 'Saya membuat sup kentang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5762_kentang, 'おばあちゃんが、美味しいじゃが芋のコロッケを買ってきてくれました。', 'Nenek saya membelikan kami kroket kentang yang enak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5762_kentang, 'じゃが芋の皮にはビタミンがあるから、じゃが芋は皮はむかずに皮ごと食べる方がいいんだよ。', 'Kulit kentang mengandung vitamin, jadi lebih baik makan kentang dengan kulitnya, bukan dikupas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5810_rombongan_drama, '彼は新しい劇団を立ち上げました。', 'Dia mendirikan perusahaan teater baru.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5810_rombongan_drama, '彼女は有名な劇団の一員です。', 'Dia adalah anggota dari perusahaan teater terkenal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5810_rombongan_drama, '劇団四季に入るのが私の目標です。', 'Tujuan saya adalah bergabung dengan Perusahaan Teater Shiki.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6301_untuk_mengubur, '記事の空白はイラストで埋める？それとも広告で？', 'Haruskah kita mengisi ruang kosong di artikel dengan ilustrasi, atau dengan iklan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6301_untuk_mengubur, 'あの猫のモフモフに顔を埋めたい！', 'Aku ingin membenamkan wajahku di bulu halus kucing itu!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6301_untuk_mengubur, '学生バイトがあけたシフトの穴を埋めるために、急に来てくれって言われたんです。', 'Saya dipanggil dalam waktu singkat untuk mengisi lowongan shift yang ditinggalkan oleh seorang pekerja pelajar paruh waktu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6301_untuk_mengubur, 'きっとだれかがもう話をしてると思うんだけど、私達、あの肉屋をあんたの庭に埋めたのさ。良かったかな。', 'Saya yakin seseorang sudah memberi tahu Anda, tapi kami menguburkan tukang daging di halaman rumah Anda. Saya harap Anda tidak keberatan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6811_satu_hewan_kecil, 'そこには、一匹のカエルが座っていた。', 'Seekor katak sedang duduk di sana.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6811_satu_hewan_kecil, '朝起きると、目の前にハムスターが一匹いた。', 'Ketika saya bangun di pagi hari, ada seekor hamster di depan saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6811_satu_hewan_kecil, 'アイツって、ほんと一匹狼だよなー。', 'Orang itu benar-benar penyendiri, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7480_bagian_pidato, '品詞にはどんなものがあるか教えてください。', 'Tolong beri tahu saya hal-hal apa saja yang kami miliki untuk bagian pidato.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7480_bagian_pidato, '今日は英語の品詞の見分け方をお教えします。', 'Hari ini saya akan mengajari Anda cara membedakan bagian-bagian pidato dalam bahasa Inggris.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7480_bagian_pidato, '品詞についての本を書いたんですが、今、どうすればたくさんの冊数を売ることができるのか考えています。', 'Saya menulis buku tentang bagian-bagian pidato dan saat ini saya sedang memikirkan bagaimana saya bisa menjual banyak salinannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7550_untuk_menghafal, '私は人の顔を覚えるのが苦手です。', 'Saya tidak pandai mengingat wajah orang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7550_untuk_menghafal, 'よくそんなに細かい事を覚えていますね。', 'Bagaimana Anda bisa mengingat detail seperti ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7550_untuk_menghafal, '私はワニカニを使って漢字を覚えました。', 'Saya belajar karakter kanji menggunakan WaniKani.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7551_geng, 'あの連中はいつもくだらない話ばかりしている。', 'Orang-orang itu selalu melakukan percakapan bodoh.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7551_geng, 'よっぱらい連中には近づかない方がいいぜ。', 'Anda tidak boleh dekat dengan sekelompok pemabuk.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7551_geng, 'うちの息子は、最近悪い連中と付き合っているみたいで、少し心配です。', 'Anakku sepertinya salah bergaul akhir-akhir ini dan aku sedikit khawatir.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7552_sibuk, 'ここ最近、多忙で全然ワニカニのレビューができてません。', 'Akhir-akhir ini, saya sangat sibuk sehingga saya tidak bisa melakukan review apa pun tentang WaniKani sama sekali.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7552_sibuk, '彼は多忙な生活を送っています。', 'Dia menjalani kehidupan yang sibuk.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7552_sibuk, '男が「多忙」で会えないって言うのはウソだよ。多忙でも時間は作れるもん。会えない理由は「金がない」か「気持ちがない」かのどっちかだよ。', 'Ketika seorang pria mengatakan dia "terlalu sibuk" untuk bertemu, biasanya itu bohong. Meski sibuk, dia bisa meluangkan waktu. Alasan sebenarnya untuk tidak bertemu adalah karena "kurangnya uang" atau "kurangnya minat".');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7591_sukacita, '犬はシッポをふって喜びを表します。', 'Anjing mengekspresikan kegembiraannya dengan mengibaskan ekornya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7591_sukacita, '私たちは、他人と喜びを分かち合うことで、より幸せを感じることができます。', 'Kita akan lebih bahagia ketika kita berbagi kebahagiaan kita dengan orang lain.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7591_sukacita, 'このロボットには喜びや楽しさといったポジティブな感情はありません。', 'Robot ini tidak memiliki emosi positif seperti kegembiraan atau kesenangan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7593_setiap_hari, 'マスコミはそのニュースを連日報道しました。', 'Media melaporkan berita itu setiap hari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7593_setiap_hari, '今年の北海道は連日大雪です。', 'Tahun ini, Hokkaido mengalami hujan salju lebat setiap hari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7593_setiap_hari, 'そのイベントには連日たくさんの人がやって来ました。', 'Banyak orang datang ke acara tersebut hari demi hari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7647_hubungan, 'IT関連の仕事をしています。', 'Saya melakukan pekerjaan yang berhubungan dengan IT.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7647_hubungan, 'もしかすると、この問題は以前の問題と関連があるのかもしれません。', 'Mungkin masalah ini ada hubungannya dengan masalah sebelumnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7647_hubungan, 'あのユーザーは映画好きで、いつも映画関連のポストをしている。', 'Pengguna tersebut adalah penggemar film dan selalu melakukan postingan terkait film.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7695_kesedihan, '悲しみを乗りこえるには時間が必要です。', 'Anda perlu waktu untuk mengatasi kesedihan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7695_kesedihan, '悲しみへの一番の薬は、チョコアイスです。', 'Obat kesedihan terbaik adalah es krim coklat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7695_kesedihan, 'ポチが死んだという知らせを聞いて、悲しみに打ちひしがれていました。', 'Aku diliputi kesedihan ketika mendengar berita kematian Pochi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7761_di_udara, 'うちの猫はたまに口を開けて宙を見る時があります。', 'Kucing saya sesekali membuka mulutnya dan menatap ke angkasa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7761_di_udara, '今は何もかもが宙ぶらりんで、やる気ゼロなんです。', 'Saat ini semuanya dalam ketidakpastian dan saya tidak punya motivasi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7761_di_udara, 'ポケットから札束を取り出し、宙にバラまく時のコウイチの顔が好きだ。', 'Saya suka wajah Koichi ketika dia mengeluarkan uang dari sakunya dan melemparkannya ke udara.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8674_ras_campuran, '動物は、別の種が混血することはめったにありません。', 'Jarang ada hewan yang mencampurkan ras satu sama lain.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8674_ras_campuran, 'コウイチは日本人とアメリカ人の混血です。', 'Koichi adalah campuran Jepang dan Amerika.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8674_ras_campuran, '今度の映画では、ヴァンパイアと人間の混血の女の子の役を演じるんです。', 'Dalam filmku yang akan datang, aku berperan sebagai seorang gadis yang merupakan campuran antara vampir dan manusia.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8944_untuk_mengubah_sesuatu, '日を改めることにしました。', 'Kami memutuskan untuk mengubah tanggalnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8944_untuk_mengubah_sesuatu, 'その考え方は改めた方がいいよ。', 'Anda harus memperbaiki cara berpikir seperti itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8944_untuk_mengubah_sesuatu, '話し合った通りに計画を一部改めた。', 'Saat kami berdiskusi, kami merevisi sebagian dari rencana.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9019_minum_alkohol, '飲酒をやめようと思った一番の理由は何ですか？', 'Apa alasan utama Anda memutuskan untuk berhenti minum alkohol?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9019_minum_alkohol, '飲酒はお金がかかるし、体に悪いでしょう。', 'Minum itu mahal dan buruk bagimu, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9019_minum_alkohol, 'あいつ、未成年に飲酒させたらしいよ。', 'Kudengar pria itu mengajak anak di bawah umur untuk minum.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9039_serangga, '彼は昆虫学者です。', 'Dia adalah seorang ahli entomologi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9039_serangga, 'いつか朝ご飯に昆虫を食べる日が来るだろう。', 'Suatu hari kita semua akan makan serangga untuk sarapan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9039_serangga, '私の一番好きな昆虫はアリジゴクです。', 'Serangga favorit saya adalah larva antlion.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9044_bawa_pulang, 'これはお持ち帰りでお願いします。', 'Saya ingin yang ini pergi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9044_bawa_pulang, 'どうする、お店で食べる？お持ち帰りにする？', 'Apa yang harus kita lakukan, makan di restoran? Dapatkan bawa pulang?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9044_bawa_pulang, 'こちら、二番さんのお持ち帰りのオーダーのお品になります！', 'Ini pesanan bawa pulang untuk pelanggan nomor dua!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9268_tahun_sebelumnya, '一昨年の市長って誰だったっけ？', 'Siapa lagi walikota dua tahun lalu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9268_tahun_sebelumnya, '一昨年から毎日ジョギングをしています。', 'Saya telah jogging setiap hari sejak dua tahun lalu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9268_tahun_sebelumnya, '一昨年、ハウステンボスでハウステンボス歌劇団のショーを見てきました。', 'Tahun lalu, saya menonton pertunjukan Huis Ten Bosch Revue di Huis Ten Bosch.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9295_untuk_melewati_ke, 'この言い方でも意味は通じるけど、ちょっと不自然かな。', 'Maknanya akan tetap tersampaikan dengan ungkapan ini, tetapi kedengarannya agak tidak wajar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9295_untuk_melewati_ke, '彼とは、インターネットを通じて知り合いました。', 'Saya bertemu dengannya melalui internet.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9295_untuk_melewati_ke, '言葉は通じなくても、心が通じることはあります。', 'Meski kata-kata tidak bisa dipahami, hati masih bisa terhubung.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9295_untuk_melewati_ke, 'あの人、全然話が通じないんですよ。エイリアンと話してるみたいな感覚になります。', 'Tidak ada yang saya katakan yang dapat sampai kepada orang itu; rasanya seperti aku sedang berbicara dengan alien.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9295_untuk_melewati_ke, 'この地下通路は駅に通じています。', 'Lorong bawah tanah ini mengarah ke stasiun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9303_seperti_yang_diharapkan, 'すごーい！流石ですね。', 'Wah, itu luar biasa! Seperti yang diharapkan dari Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9303_seperti_yang_diharapkan, '流石のオレでもこれはムリだわ。', 'Bahkan aku tidak bisa melakukan ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9303_seperti_yang_diharapkan, '流石、ニコラスケイジだね！', 'Sama seperti Nic Cage yang melakukan itu!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9303_seperti_yang_diharapkan, 'ミーティングが七つもあってさ、今日は流石につかれたよ。', 'Saya sudah mengadakan tujuh pertemuan penuh hari ini, jadi tidak heran saya lelah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9304_untuk_ditumpuk, 'ここをクリックすると、文字が上に重なるから読めなくなるんだ。バグかな？', 'Saat saya klik di sini, teksnya tumpang tindih dan tidak dapat dibaca. Apakah menurut Anda itu bug?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9304_untuk_ditumpuk, 'どうしよう、子どものバースデーパーティーと仕事の日が重なってしまった。', 'Apa yang harus saya lakukan? Pesta ulang tahun anak saya jatuh pada hari kerja.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9304_untuk_ditumpuk, '原因は一つじゃありません。様々な要因が重なって、こうなってしまったんです。 ', 'Penyebabnya tidak hanya satu. Berbagai faktor berkumpul untuk menjadikannya seperti ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9360_semua_arah, '東西南北に道があって、どちらに行こうかまよいました。', 'Ada jalan ke segala arah, dan saya tidak bisa memutuskan jalan mana yang harus diambil.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9360_semua_arah, '彼は東西南北を見回し、どこへ行けばいいのか考えました。', 'Dia melihat ke segala arah, bertanya-tanya ke mana dia harus pergi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9360_semua_arah, '東西南北に星がきらめき、夜空はまるで宝石箱のようでした。', 'Bintang berkilauan ke segala arah, dan langit malam bagaikan kotak perhiasan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9360_semua_arah, 'コンパスを使うと、東西南北のどちらの方角を向いているのかが分かります。', 'Kompas akan memberi tahu Anda ke arah mana Anda menghadap, timur, barat, selatan, atau utara.');

  -- 4. PREREQUISITES
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1057_menambahkan, id FROM items WHERE type = 'radical' AND (slug = '13' OR id = '13') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1057_menambahkan, id FROM items WHERE type = 'radical' AND (slug = '16' OR id = '16') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1058_musim, id FROM items WHERE type = 'radical' AND (slug = '85' OR id = '85') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1058_musim, id FROM items WHERE type = 'radical' AND (slug = '196' OR id = '196') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1058_musim, id FROM items WHERE type = 'radical' AND (slug = '145' OR id = '145') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1059_mengurangi, id FROM items WHERE type = 'radical' AND (slug = '103' OR id = '103') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1059_mengurangi, id FROM items WHERE type = 'radical' AND (slug = '9389' OR id = '9389') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1059_mengurangi, id FROM items WHERE type = 'radical' AND (slug = '16' OR id = '16') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1060_memesan, id FROM items WHERE type = 'radical' AND (slug = '21' OR id = '21') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1060_memesan, id FROM items WHERE type = 'radical' AND (slug = '184' OR id = '184') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1061_membentuk, id FROM items WHERE type = 'radical' AND (slug = '78' OR id = '78') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1061_membentuk, id FROM items WHERE type = 'radical' AND (slug = '249' OR id = '249') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1062_kain, id FROM items WHERE type = 'radical' AND (slug = '26' OR id = '26') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1062_kain, id FROM items WHERE type = 'radical' AND (slug = '102' OR id = '102') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1063_mudah, id FROM items WHERE type = 'radical' AND (slug = '172' OR id = '172') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1064_kekayaan, id FROM items WHERE type = 'radical' AND (slug = '94' OR id = '94') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1064_kekayaan, id FROM items WHERE type = 'radical' AND (slug = '264' OR id = '264') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1065_muda, id FROM items WHERE type = 'radical' AND (slug = '90' OR id = '90') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1065_muda, r_362_benar);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1066_bagian_pidato, id FROM items WHERE type = 'radical' AND (slug = '117' OR id = '117') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1066_bagian_pidato, r_266_direktur);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1067_serangga, id FROM items WHERE type = 'radical' AND (slug = '22' OR id = '22') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1067_serangga, id FROM items WHERE type = 'radical' AND (slug = '161' OR id = '161') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1068_klik, id FROM items WHERE type = 'radical' AND (slug = '214' OR id = '214') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1068_klik, id FROM items WHERE type = 'radical' AND (slug = '75' OR id = '75') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1068_klik, id FROM items WHERE type = 'radical' AND (slug = '194' OR id = '194') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1070_lidah, id FROM items WHERE type = 'radical' AND (slug = '174' OR id = '174') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1071_konter_buku, id FROM items WHERE type = 'radical' AND (slug = '226' OR id = '226') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1072_luar_angkasa, id FROM items WHERE type = 'radical' AND (slug = '78' OR id = '78') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1072_luar_angkasa, id FROM items WHERE type = 'radical' AND (slug = '61' OR id = '61') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1073_di_udara, id FROM items WHERE type = 'radical' AND (slug = '78' OR id = '78') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1073_di_udara, r_268_alasan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1074_sibuk, id FROM items WHERE type = 'radical' AND (slug = '232' OR id = '232') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1074_sibuk, id FROM items WHERE type = 'radical' AND (slug = '212' OR id = '212') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1076_kelompok, id FROM items WHERE type = 'radical' AND (slug = '16' OR id = '16') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1076_kelompok, id FROM items WHERE type = 'radical' AND (slug = '74' OR id = '74') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1077_kekerasan, id FROM items WHERE type = 'radical' AND (slug = '22' OR id = '22') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1077_kekerasan, id FROM items WHERE type = 'radical' AND (slug = '269' OR id = '269') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1077_kekerasan, id FROM items WHERE type = 'radical' AND (slug = '45' OR id = '45') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1078_mencampur, id FROM items WHERE type = 'radical' AND (slug = '103' OR id = '103') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1078_mencampur, id FROM items WHERE type = 'radical' AND (slug = '22' OR id = '22') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1078_mencampur, id FROM items WHERE type = 'radical' AND (slug = '161' OR id = '161') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1079_kerusuhan, id FROM items WHERE type = 'radical' AND (slug = '174' OR id = '174') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1079_kerusuhan, id FROM items WHERE type = 'radical' AND (slug = '211' OR id = '211') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1080_muda, id FROM items WHERE type = 'radical' AND (slug = '99' OR id = '99') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1080_muda, id FROM items WHERE type = 'radical' AND (slug = '124' OR id = '124') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1081_mendapatkan, id FROM items WHERE type = 'radical' AND (slug = '99' OR id = '99') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1081_mendapatkan, id FROM items WHERE type = 'radical' AND (slug = '22' OR id = '22') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1081_mendapatkan, id FROM items WHERE type = 'radical' AND (slug = '192' OR id = '192') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1082_memperbarui, id FROM items WHERE type = 'radical' AND (slug = '228' OR id = '228') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1082_memperbarui, id FROM items WHERE type = 'radical' AND (slug = '60' OR id = '60') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1083_melanjutkan, id FROM items WHERE type = 'radical' AND (slug = '86' OR id = '86') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1083_melanjutkan, id FROM items WHERE type = 'radical' AND (slug = '439' OR id = '439') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1084_bawa_serta, id FROM items WHERE type = 'radical' AND (slug = '114' OR id = '114') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1084_bawa_serta, id FROM items WHERE type = 'radical' AND (slug = '93' OR id = '93') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1085_baik_secara_moral, id FROM items WHERE type = 'radical' AND (slug = '136' OR id = '136') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1085_baik_secara_moral, id FROM items WHERE type = 'radical' AND (slug = '8767' OR id = '8767') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1085_baik_secara_moral, id FROM items WHERE type = 'radical' AND (slug = '1' OR id = '1') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1085_baik_secara_moral, id FROM items WHERE type = 'radical' AND (slug = '16' OR id = '16') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1087_melibatkan, id FROM items WHERE type = 'radical' AND (slug = '86' OR id = '86') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1087_melibatkan, id FROM items WHERE type = 'radical' AND (slug = '180' OR id = '180') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1121_seruling, id FROM items WHERE type = 'radical' AND (slug = '85' OR id = '85') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1121_seruling, r_268_alasan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1553_kentang, id FROM items WHERE type = 'radical' AND (slug = '90' OR id = '90') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1553_kentang, id FROM items WHERE type = 'radical' AND (slug = '61' OR id = '61') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1725_mengubur, id FROM items WHERE type = 'radical' AND (slug = '17' OR id = '17') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1725_mengubur, id FROM items WHERE type = 'radical' AND (slug = '125' OR id = '125') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2634_untuk_keluar, id FROM items WHERE type = 'kanji' AND (slug = '521' OR id = '521') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2711_dunia, id FROM items WHERE type = 'kanji' AND (slug = '527' OR id = '527') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3243_rekonsiliasi, id FROM items WHERE type = 'kanji' AND (slug = '776' OR id = '776') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3243_rekonsiliasi, id FROM items WHERE type = 'kanji' AND (slug = '630' OR id = '630') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3376_sedih, id FROM items WHERE type = 'kanji' AND (slug = '837' OR id = '837') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3546_panca_indera, id FROM items WHERE type = 'kanji' AND (slug = '470' OR id = '470') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3546_panca_indera, id FROM items WHERE type = 'kanji' AND (slug = '862' OR id = '862') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3708_postingan_pekerjaan, id FROM items WHERE type = 'kanji' AND (slug = '913' OR id = '913') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3708_postingan_pekerjaan, id FROM items WHERE type = 'kanji' AND (slug = '444' OR id = '444') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4010_buah, id FROM items WHERE type = 'kanji' AND (slug = '1005' OR id = '1005') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4010_buah, id FROM items WHERE type = 'kanji' AND (slug = '718' OR id = '718') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4057_kamis, id FROM items WHERE type = 'kanji' AND (slug = '478' OR id = '478') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4057_kamis, id FROM items WHERE type = 'kanji' AND (slug = '961' OR id = '961') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4057_kamis, id FROM items WHERE type = 'kanji' AND (slug = '476' OR id = '476') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4058_rabu, id FROM items WHERE type = 'kanji' AND (slug = '479' OR id = '479') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4058_rabu, id FROM items WHERE type = 'kanji' AND (slug = '961' OR id = '961') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4058_rabu, id FROM items WHERE type = 'kanji' AND (slug = '476' OR id = '476') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4141_lidah_bercabang, id FROM items WHERE type = 'kanji' AND (slug = '441' OR id = '441') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4141_lidah_bercabang, id FROM items WHERE type = 'kanji' AND (slug = '1051' OR id = '1051') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4141_lidah_bercabang, k_1070_lidah);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4166_menjadi_dalam_gangguan, k_1079_kerusuhan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4167_perkelahian, k_1079_kerusuhan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4167_perkelahian, id FROM items WHERE type = 'kanji' AND (slug = '803' OR id = '803') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4168_kebingungan, k_1078_mencampur);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4168_kebingungan, k_1079_kerusuhan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4169_sukaria, k_1079_kerusuhan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4169_sukaria, id FROM items WHERE type = 'kanji' AND (slug = '565' OR id = '565') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4170_konter_buku, k_1071_konter_buku);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4171_tiga_buku, id FROM items WHERE type = 'kanji' AND (slug = '449' OR id = '449') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4171_tiga_buku, k_1071_konter_buku);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4172_delapan_buku, id FROM items WHERE type = 'kanji' AND (slug = '446' OR id = '446') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4172_delapan_buku, k_1071_konter_buku);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4173_satu_buku, id FROM items WHERE type = 'kanji' AND (slug = '440' OR id = '440') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4173_satu_buku, k_1071_konter_buku);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4174_volume_terpisah, id FROM items WHERE type = 'kanji' AND (slug = '785' OR id = '785') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4174_volume_terpisah, k_1071_konter_buku);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4175_tidak_bertanggung_jawab, k_1057_menambahkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4175_tidak_bertanggung_jawab, k_1059_mengurangi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4176_tenaga_nuklir, id FROM items WHERE type = 'kanji' AND (slug = '995' OR id = '995') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4176_tenaga_nuklir, id FROM items WHERE type = 'kanji' AND (slug = '462' OR id = '462') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4176_tenaga_nuklir, id FROM items WHERE type = 'kanji' AND (slug = '447' OR id = '447') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4177_peningkatan, k_1082_memperbarui);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4177_peningkatan, k_1085_baik_secara_moral);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4178_baik_dan_jahat, k_1085_baik_secara_moral);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4178_baik_dan_jahat, id FROM items WHERE type = 'kanji' AND (slug = '829' OR id = '829') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4179_kelompok, id FROM items WHERE type = 'kanji' AND (slug = '754' OR id = '754') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4179_kelompok, k_1076_kelompok);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4180_pendaftaran, id FROM items WHERE type = 'kanji' AND (slug = '445' OR id = '445') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4180_pendaftaran, k_1076_kelompok);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4182_musim, id FROM items WHERE type = 'kanji' AND (slug = '903' OR id = '903') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4182_musim, k_1058_musim);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4183_luar_angkasa, k_1072_luar_angkasa);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4183_luar_angkasa, k_1073_di_udara);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4184_petugas_polisi, id FROM items WHERE type = 'kanji' AND (slug = '1023' OR id = '1023') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4184_petugas_polisi, id FROM items WHERE type = 'kanji' AND (slug = '1018' OR id = '1018') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4185_isi, id FROM items WHERE type = 'kanji' AND (slug = '500' OR id = '500') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4185_isi, k_1061_membentuk);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4186_kecurigaan, k_1061_membentuk);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4186_kecurigaan, id FROM items WHERE type = 'kanji' AND (slug = '894' OR id = '894') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4187_kata_sifat, id FROM items WHERE type = 'kanji' AND (slug = '589' OR id = '589') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4187_kata_sifat, k_1061_membentuk);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4187_kata_sifat, k_1066_bagian_pidato);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4190_wakame, k_1065_muda);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4190_wakame, k_1062_kain);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4191_kain, k_1062_kain);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4192_dompet, k_1064_kekayaan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4192_dompet, k_1062_kain);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4193_kasur, k_1062_kain);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4193_kasur, k_1076_kelompok);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4194_selimut, id FROM items WHERE type = 'kanji' AND (slug = '513' OR id = '513') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4194_selimut, k_1062_kain);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4195_murid, id FROM items WHERE type = 'kanji' AND (slug = '850' OR id = '850') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4195_murid, k_1080_muda);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4196_budha, id FROM items WHERE type = 'kanji' AND (slug = '956' OR id = '956') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4196_budha, id FROM items WHERE type = 'kanji' AND (slug = '668' OR id = '668') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4196_budha, k_1080_muda);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4197_orang_percaya, id FROM items WHERE type = 'kanji' AND (slug = '940' OR id = '940') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4197_orang_percaya, k_1080_muda);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4198_untuk_memperoleh, k_1081_mendapatkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4199_keuntungan, k_1081_mendapatkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4200_baik_dalam, k_1081_mendapatkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4200_baik_dalam, id FROM items WHERE type = 'kanji' AND (slug = '811' OR id = '811') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4201_bujukan, id FROM items WHERE type = 'kanji' AND (slug = '1026' OR id = '1026') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4201_bujukan, k_1081_mendapatkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4202_sibuk, k_1074_sibuk);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4203_kekasih, id FROM items WHERE type = 'kanji' AND (slug = '1024' OR id = '1024') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4203_kekasih, id FROM items WHERE type = 'kanji' AND (slug = '444' OR id = '444') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4205_revisi, k_1082_memperbarui);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4205_revisi, id FROM items WHERE type = 'kanji' AND (slug = '488' OR id = '488') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4206_kegagalan_total, id FROM items WHERE type = 'kanji' AND (slug = '453' OR id = '453') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4206_kegagalan_total, id FROM items WHERE type = 'kanji' AND (slug = '654' OR id = '654') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4206_kegagalan_total, id FROM items WHERE type = 'kanji' AND (slug = '1004' OR id = '1004') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4207_konbu, k_1067_serangga);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4207_konbu, k_1062_kain);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4208_mudah, k_1063_mudah);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4209_kemudahan, k_1061_membentuk);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4209_kemudahan, k_1063_mudah);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4210_bertindak_dengan_kekerasan, k_1077_kekerasan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4211_kekerasan, k_1077_kekerasan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4211_kekerasan, id FROM items WHERE type = 'kanji' AND (slug = '447' OR id = '447') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4212_brutal, k_1079_kerusuhan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4212_brutal, k_1077_kekerasan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4213_berkeliaran, k_1077_kekerasan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4213_berkeliaran, id FROM items WHERE type = 'kanji' AND (slug = '595' OR id = '595') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4214_acar_plum, id FROM items WHERE type = 'kanji' AND (slug = '1007' OR id = '1007') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4214_acar_plum, id FROM items WHERE type = 'kanji' AND (slug = '1014' OR id = '1014') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4216_sejarah_akademik, id FROM items WHERE type = 'kanji' AND (slug = '599' OR id = '599') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4216_sejarah_akademik, id FROM items WHERE type = 'kanji' AND (slug = '1069' OR id = '1069') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4220_untuk_mencampur_sesuatu, k_1078_mencampur);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4222_untuk_mengurangi, k_1059_mengurangi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4223_pengurangan, k_1059_mengurangi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4223_pengurangan, id FROM items WHERE type = 'kanji' AND (slug = '949' OR id = '949') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4224_festival_musiman, k_1058_musim);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4224_festival_musiman, id FROM items WHERE type = 'kanji' AND (slug = '1053' OR id = '1053') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4225_untuk_terlibat_dengan, k_1087_melibatkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4226_untuk_melanjutkan, k_1083_melanjutkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4227_satu_demi_satu, k_1083_melanjutkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4227_satu_demi_satu, id FROM items WHERE type = 'kanji' AND (slug = '856' OR id = '856') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4228_lidah, k_1070_lidah);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4229_keengganan_terhadap_makanan_panas, id FROM items WHERE type = 'kanji' AND (slug = '959' OR id = '959') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4229_keengganan_terhadap_makanan_panas, k_1070_lidah);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4230_muda, k_1065_muda);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4231_orang_muda, k_1065_muda);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4231_orang_muda, id FROM items WHERE type = 'kanji' AND (slug = '690' OR id = '690') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4232_muda, k_1065_muda);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4232_muda, id FROM items WHERE type = 'kanji' AND (slug = '856' OR id = '856') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4233_kata_benda, id FROM items WHERE type = 'kanji' AND (slug = '544' OR id = '544') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4233_kata_benda, k_1066_bagian_pidato);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4234_kata_kerja, id FROM items WHERE type = 'kanji' AND (slug = '827' OR id = '827') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4234_kata_kerja, k_1066_bagian_pidato);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4235_lirik_lagu, id FROM items WHERE type = 'kanji' AND (slug = '761' OR id = '761') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4235_lirik_lagu, k_1066_bagian_pidato);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4236_partikel_tata_bahasa, id FROM items WHERE type = 'kanji' AND (slug = '680' OR id = '680') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4236_partikel_tata_bahasa, k_1066_bagian_pidato);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4237_angka, id FROM items WHERE type = 'kanji' AND (slug = '703' OR id = '703') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4237_angka, k_1066_bagian_pidato);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4238_kata_kerja_intransitif, id FROM items WHERE type = 'kanji' AND (slug = '578' OR id = '578') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4238_kata_kerja_intransitif, id FROM items WHERE type = 'kanji' AND (slug = '827' OR id = '827') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4238_kata_kerja_intransitif, k_1066_bagian_pidato);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4239_ketidaksadaran, id FROM items WHERE type = 'kanji' AND (slug = '1008' OR id = '1008') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4239_ketidaksadaran, id FROM items WHERE type = 'kanji' AND (slug = '811' OR id = '811') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4239_ketidaksadaran, id FROM items WHERE type = 'kanji' AND (slug = '1012' OR id = '1012') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4240_dana_swasta, id FROM items WHERE type = 'kanji' AND (slug = '923' OR id = '923') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4240_dana_swasta, k_1064_kekayaan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4241_utang, id FROM items WHERE type = 'kanji' AND (slug = '1039' OR id = '1039') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4241_utang, k_1064_kekayaan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4242_serial, k_1084_bawa_serta);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4242_serial, k_1083_melanjutkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4243_untuk_dibawa_serta, k_1084_bawa_serta);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4244_plutokrat, k_1064_kekayaan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4244_plutokrat, k_1068_klik);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4245_sangat, id FROM items WHERE type = 'kanji' AND (slug = '1013' OR id = '1013') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4245_sangat, id FROM items WHERE type = 'kanji' AND (slug = '1011' OR id = '1011') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4246_pintu_keluar_darurat, id FROM items WHERE type = 'kanji' AND (slug = '1013' OR id = '1013') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4246_pintu_keluar_darurat, id FROM items WHERE type = 'kanji' AND (slug = '1011' OR id = '1011') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4246_pintu_keluar_darurat, id FROM items WHERE type = 'kanji' AND (slug = '452' OR id = '452') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4247_peringkat, k_1060_memesan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4247_peringkat, id FROM items WHERE type = 'kanji' AND (slug = '782' OR id = '782') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4248_memesan, k_1060_memesan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4248_memesan, id FROM items WHERE type = 'kanji' AND (slug = '696' OR id = '696') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4249_mengurangi_pesanan, id FROM items WHERE type = 'kanji' AND (slug = '453' OR id = '453') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4249_mengurangi_pesanan, k_1060_memesan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4250_meningkatkan_pesanan, id FROM items WHERE type = 'kanji' AND (slug = '463' OR id = '463') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4250_meningkatkan_pesanan, k_1060_memesan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4251_urutan_tempat_duduk, id FROM items WHERE type = 'kanji' AND (slug = '1003' OR id = '1003') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4251_urutan_tempat_duduk, k_1060_memesan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4252_urutan_kronologis, id FROM items WHERE type = 'kanji' AND (slug = '546' OR id = '546') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4252_urutan_kronologis, id FROM items WHERE type = 'kanji' AND (slug = '530' OR id = '530') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4252_urutan_kronologis, k_1060_memesan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4253_pesanan_aiueo, id FROM items WHERE type = 'kanji' AND (slug = '470' OR id = '470') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4253_pesanan_aiueo, id FROM items WHERE type = 'kanji' AND (slug = '448' OR id = '448') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4253_pesanan_aiueo, id FROM items WHERE type = 'kanji' AND (slug = '606' OR id = '606') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4253_pesanan_aiueo, k_1060_memesan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4348_terperinci, id FROM items WHERE type = 'kanji' AND (slug = '996' OR id = '996') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4349_kantor_polisi, id FROM items WHERE type = 'kanji' AND (slug = '1023' OR id = '1023') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4349_kantor_polisi, id FROM items WHERE type = 'kanji' AND (slug = '1019' OR id = '1019') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4349_kantor_polisi, id FROM items WHERE type = 'kanji' AND (slug = '1022' OR id = '1022') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4358_seruling, k_1121_seruling);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4359_peluit_uap, id FROM items WHERE type = 'kanji' AND (slug = '1038' OR id = '1038') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4359_peluit_uap, k_1121_seruling);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4367_untuk_menambahkan, k_1057_menambahkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4368_partisipasi, id FROM items WHERE type = 'kanji' AND (slug = '899' OR id = '899') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4368_partisipasi, k_1057_menambahkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4372_untuk_menghubungi, k_1084_bawa_serta);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4372_untuk_menghubungi, k_1087_melibatkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5760_kentang, k_1553_kentang);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5761_ubi_jalar_panggang, id FROM items WHERE type = 'kanji' AND (slug = '1040' OR id = '1040') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5761_ubi_jalar_panggang, k_1553_kentang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5762_kentang, k_1553_kentang);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5810_rombongan_drama, id FROM items WHERE type = 'kanji' AND (slug = '1569' OR id = '1569') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5810_rombongan_drama, k_1076_kelompok);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6301_untuk_mengubur, k_1725_mengubur);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6811_satu_hewan_kecil, id FROM items WHERE type = 'kanji' AND (slug = '440' OR id = '440') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6811_satu_hewan_kecil, id FROM items WHERE type = 'kanji' AND (slug = '1891' OR id = '1891') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7480_bagian_pidato, id FROM items WHERE type = 'kanji' AND (slug = '967' OR id = '967') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7480_bagian_pidato, k_1066_bagian_pidato);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7550_untuk_menghafal, id FROM items WHERE type = 'kanji' AND (slug = '1025' OR id = '1025') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7551_geng, k_1084_bawa_serta);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7551_geng, id FROM items WHERE type = 'kanji' AND (slug = '469' OR id = '469') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7552_sibuk, id FROM items WHERE type = 'kanji' AND (slug = '570' OR id = '570') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7552_sibuk, k_1074_sibuk);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7591_sukacita, id FROM items WHERE type = 'kanji' AND (slug = '976' OR id = '976') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7593_setiap_hari, k_1084_bawa_serta);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7593_setiap_hari, id FROM items WHERE type = 'kanji' AND (slug = '476' OR id = '476') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7647_hubungan, id FROM items WHERE type = 'kanji' AND (slug = '982' OR id = '982') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7647_hubungan, k_1084_bawa_serta);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7695_kesedihan, id FROM items WHERE type = 'kanji' AND (slug = '837' OR id = '837') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7761_di_udara, k_1073_di_udara);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8674_ras_campuran, k_1078_mencampur);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8674_ras_campuran, id FROM items WHERE type = 'kanji' AND (slug = '619' OR id = '619') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8944_untuk_mengubah_sesuatu, k_1082_memperbarui);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9019_minum_alkohol, id FROM items WHERE type = 'kanji' AND (slug = '755' OR id = '755') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9019_minum_alkohol, id FROM items WHERE type = 'kanji' AND (slug = '743' OR id = '743') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_9039_serangga, k_1067_serangga);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9039_serangga, id FROM items WHERE type = 'kanji' AND (slug = '553' OR id = '553') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9044_bawa_pulang, id FROM items WHERE type = 'kanji' AND (slug = '727' OR id = '727') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9044_bawa_pulang, id FROM items WHERE type = 'kanji' AND (slug = '930' OR id = '930') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9268_tahun_sebelumnya, id FROM items WHERE type = 'kanji' AND (slug = '440' OR id = '440') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9268_tahun_sebelumnya, id FROM items WHERE type = 'kanji' AND (slug = '947' OR id = '947') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9268_tahun_sebelumnya, id FROM items WHERE type = 'kanji' AND (slug = '546' OR id = '546') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9295_untuk_melewati_ke, id FROM items WHERE type = 'kanji' AND (slug = '665' OR id = '665') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9303_seperti_yang_diharapkan, id FROM items WHERE type = 'kanji' AND (slug = '818' OR id = '818') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9303_seperti_yang_diharapkan, id FROM items WHERE type = 'kanji' AND (slug = '493' OR id = '493') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9304_untuk_ditumpuk, id FROM items WHERE type = 'kanji' AND (slug = '735' OR id = '735') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9360_semua_arah, id FROM items WHERE type = 'kanji' AND (slug = '627' OR id = '627') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9360_semua_arah, id FROM items WHERE type = 'kanji' AND (slug = '581' OR id = '581') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9360_semua_arah, id FROM items WHERE type = 'kanji' AND (slug = '634' OR id = '634') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9360_semua_arah, id FROM items WHERE type = 'kanji' AND (slug = '517' OR id = '517') LIMIT 1;

END $$;
