-- ====================================================
-- KaniGani — Seed Data Level 38 (v2, relasional)
-- Auto-generated with Indonesian Slugs
-- ====================================================

DO $$
DECLARE
  -- ============ RADICAL IDs (Level 38) ============
  r_367_cabai UUID; r_368_memikirkan UUID; r_369_prefektur UUID; r_371_memiliki UUID; r_372_gigi UUID;

  -- ============ KANJI IDs (Level 38) ============
  k_1675_tuntutan UUID; k_1676_usia UUID; k_1677_salam UUID; k_1678_putaran UUID; k_1679_menghindari UUID; k_1680_hamil UUID; k_1681_hamil UUID; k_1682_melakukan UUID; k_1683_edisi UUID; k_1684_putar_musik UUID; k_1685_menemani UUID; k_1686_bergabung UUID; k_1687_bersandar UUID; k_1688_sebaliknya UUID; k_1689_pedalaman UUID; k_1690_mempertimbangkan UUID; k_1691_menskors UUID; k_1692_gugus UUID; k_1693_menangani UUID; k_1694_menekan UUID; k_1695_memilih UUID; k_1696_menggambar UUID; k_1697_baki UUID; k_1698_judul UUID; k_1699_tali UUID; k_1700_longgar UUID; k_1701_memperuntukkan UUID; k_1702_menyuap UUID; k_1703_menyuap UUID; k_1704_hadiah UUID; k_1705_melarikan_diri UUID; k_1706_kirim_kembali UUID; k_8861_lutut UUID; k_8966_menggigit UUID; k_8995_cakram UUID; k_9396_tas UUID; k_9469_mengintip UUID;

  -- ============ VOCABULARY IDs (Level 38) ============
  v_3008_luar_negeri UUID; v_3040_bebaskan_dari_penjara UUID; v_4748_batas_waktu UUID; v_6078_untuk_kembali UUID; v_6103_penyadapan UUID; v_6139_perusahaan_perdagangan UUID; v_6140_gen UUID; v_6141_prefektur_nara UUID; v_6142_untuk_menghapuskan UUID; v_6143_untuk_mentransfer UUID; v_6144_untuk_menunjukkan UUID; v_6145_okinawa UUID; v_6146_untuk_mempertahankan UUID; v_6147_restorasi_meiji UUID; v_6148_kunjungan_simpati UUID; v_6149_bola UUID; v_6150_biasa UUID; v_6151_umum UUID; v_6152_sebuah_bantuan UUID; v_6153_untuk_mengandalkan UUID; v_6154_klien UUID; v_6155_absurd UUID; v_6156_tuntutan UUID; v_6157_kebutuhan UUID; v_6158_bertahun_tahun UUID; v_6159_orang_lanjut_usia UUID; v_6160_usia_tua UUID; v_6161_bagus UUID; v_6162_untuk_memutar UUID; v_6163_untuk_dihindari UUID; v_6164_pengungsian UUID; v_6165_pengendalian_kelahiran UUID; v_6166_menjadi_hamil UUID; v_6167_wanita_hamil UUID; v_6168_yang_harus_dilakukan UUID; v_6169_untuk_mencocokkan UUID; v_6170_fatal UUID; v_6171_edisi_pagi UUID; v_6172_edisi_bulanan UUID; v_6173_edisi_malam UUID; v_6174_untuk_menerbitkan UUID; v_6175_edisi_harian UUID; v_6176_pertunjukan_musik UUID; v_6177_pertunjukan_musik UUID; v_6178_untuk_menemani UUID; v_6179_untuk_menemani UUID; v_6181_aneksasi UUID; v_6182_menjadi_condong UUID; v_6183_kecenderungan UUID; v_6184_sebaliknya UUID; v_6185_penolakan UUID; v_6186_jauh_kembali UUID; v_6187_istri UUID; v_6188_pengekangan UUID; v_6189_pertimbangan UUID; v_6190_pertimbangan UUID; v_6191_untuk_mempertaruhkan UUID; v_6192_ingin_sekali UUID; v_6193_gugus UUID; v_6194_ac UUID; v_6195_pemanas UUID; v_6196_untuk_menangani UUID; v_6197_penindasan UUID; v_6198_kontrol UUID; v_6199_pencegah UUID; v_6200_pilihan UUID; v_6201_penggambaran UUID; v_6202_menggambar UUID; v_6203_menggambar UUID; v_6204_baki UUID; v_6205_disk UUID; v_6206_basis UUID; v_6207_simetri UUID; v_6208_nama_kerja UUID; v_6209_orang_pertama UUID; v_6210_bersama UUID; v_6211_rahasia UUID; v_6212_longgar UUID; v_6213_untuk_melonggarkan UUID; v_6214_longgar UUID; v_6215_memperuntukkan UUID; v_6216_untuk_mempercayakan UUID; v_6217_memercayai UUID; v_6218_dipercayakan UUID; v_6219_untuk_memberikan_hadiah UUID; v_6220_penyuapan UUID; v_6221_menyuap UUID; v_6222_untuk_membayar UUID; v_6223_untuk_melarikan_diri UUID; v_6224_melarikan_diri UUID; v_6225_mencapai_home_plate UUID; v_6226_kembali UUID; v_6227_berikan_sesuatu_kembali UUID; v_6228_tahu_rebus UUID; v_6229_untuk_meregangkan_sesuatu UUID; v_6230_untuk_berusaha UUID; v_6231_maupun UUID; v_6232_untuk_melangkah UUID; v_6233_untuk_melebihi UUID; v_6236_tali_lepas UUID; v_6791_rempah_rempah UUID; v_6793_kesabaran UUID; v_7610_menonjol UUID; v_7664_menguap UUID; v_7778_absurd UUID; v_8557_acar_dalam UUID; v_8729_kedalaman UUID; v_8869_lutut UUID; v_8870_tempurung_lutut UUID; v_8983_untuk_menggigit UUID; v_9006_sempurna UUID; v_9068_garis_keturunan UUID; v_9174_bimasakti UUID; v_9272_untuk_memanggang UUID; v_9297_untuk_makan UUID; v_9331_angsuran_pertama UUID; v_9399_tas UUID; v_9490_untuk_mengintip UUID;

BEGIN

  DELETE FROM items WHERE level = 38;

  -- 1. RADICALS
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '辟', 'cabai', 38, 1, 'Anda melihat sesuatu dengan bendera kecil di sebelahnya dan memasukkannya ke dalam mulut Anda. Rasanya pedas! Anda melihat bendera kecil dan tertulis...panas. Anda baru saja makan <radikal>cabai</radikal>.')
    RETURNING id INTO r_367_cabai;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '思', 'memikirkan', 38, 2, 'Radikal ini sama dengan kanji. Artinya <radikal>berpikir</radikal>.')
    RETURNING id INTO r_368_memikirkan;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '県', 'prefektur', 38, 3, 'Radikal ini sama dengan kanji. Artinya <radikal>prefektur</radikal>.')
    RETURNING id INTO r_369_prefektur;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '有', 'memiliki', 38, 4, 'Radikal ini sama dengan kanji. Artinya <radikal>memiliki</radikal>.')
    RETURNING id INTO r_371_memiliki;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '歯', 'gigi', 38, 5, 'Radikal ini sama dengan kanji. Artinya <radikal>gigi</radikal>.')
    RETURNING id INTO r_372_gigi;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_367_cabai, 'cabai', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_368_memikirkan, 'Memikirkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_369_prefektur, 'Prefektur', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_371_memiliki, 'Memiliki', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_372_gigi, 'Gigi', true, true);

  -- 2. KANJIS
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '需', 'tuntutan', 38, 6, 'Di tengah <radical>hujan</radical> aku mengambil <radical>rake</radical> dan mengocoknya, membuat <kanji>menuntut</kanji> agar hujan berhenti! Aku minta hujan ini berhenti sekarang juga! Jangan membuat saya menggoyang penggaruk saya lebih keras dari saat saya menggoyangnya saat ini!', 'Sekarang bayangkan hujan berubah. Tunggu sebentar, ini bukan hujan, ini <reading>ju</reading>es (じゅ)! Anda menggoyangkan penggaruk Anda lebih keras, dan <kanji>menuntut</kanji> agar hujan jus terus berlanjut. Itu tidak mendengarkan permintaan Anda dan berhenti segera setelah Anda mulai mengemasnya. Setidaknya Anda punya cukup untuk satu kotak jus yang sangat kecil.')
    RETURNING id INTO k_1675_tuntutan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '齢', 'usia', 38, 7, 'Anda mendapatkan <radical>gigi</radikal> <radikal>pesanan</radikal>. Anda mendapatkan pesanan gigi ini beberapa kali dalam hidup Anda, bergantung pada <kanji>usia</kanji> Anda.', 'Menambah dan kehilangan gigi bukanlah satu-satunya hal yang bergantung pada <kanji>usia</kanji>. Ada juga usia di mana Anda mendapatkan senjata <reading>ray</reading> (れい) pertama Anda.')
    RETURNING id INTO k_1676_usia;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '宜', 'salam', 38, 8, 'Dengan menunjukkan <radical>atap</radical> dari <radical>topi</radical> Anda, Anda mengirimkan <kanji>salam</kanji>.', 'Saat kamu memberikan <kanji>salam</kanji>, kamu selalu berteriak <reading>YOLO</reading> (よろ) kepada orang lain.')
    RETURNING id INTO k_1677_salam;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '繰', 'putaran', 38, 9, 'Anda memiliki <radical>benang</radikal> dan beberapa <radikal>sirup</radikal> dan Anda perlu <kanji>memutar</kanji> keduanya. Teteskan sirup ke benang dan putar di atas kepala Anda.', 'Saat Anda <kanji>memutar</kanji> sirup, sirup mulai berubah bentuk menjadi <read>coo</reading>kie (く)! Pernahkah Anda membuat kue pintal sirup sebelumnya? Alat pemintalannya membentuk dan memasaknya di udara.')
    RETURNING id INTO k_1678_putaran;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '避', 'menghindari', 38, 10, 'Anda sedang berada di <radical>skuter</radical> dan tiba-tiba seseorang melemparkan <radical>cabai</radical> ke arah Anda dan Anda harus <kanji>menghindar</kanji>.', 'Saat Anda <kanji>menghindari</kanji> cabai, Anda merasakan <membaca>dia</reading>at (ひ) yang kuat memenuhi tubuh Anda. Anda tidak dapat mengetahui apakah panas ini berasal dari upaya menghindar atau jika Anda tidak menghindar dengan benar dan salah satu cabai menyentuh Anda. Atau mungkin skuternya kepanasan.')
    RETURNING id INTO k_1679_menghindari;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '妊', 'hamil', 38, 11, 'Seorang <radikal>wanita</radikal> tidur dengan <radikal>raja</radikal> dan menjadi <kanji>hamil</kanji>. Hanya rajanya yang bukan manusia dan sekarang wanita itu sedang mengandung bayi alien hibrida!', 'Menjadi <kanji>hamil</kanji> dengan makhluk aneh ini, Anda perlu melakukan sesuatu untuk menenangkan Anda. Anda harus memainkan <reading>Nin</reading>tendo (にん). Nintendo benar-benar menenangkan saraf Anda dan membuat hamil bayi mutan bukan lagi masalah besar.')
    RETURNING id INTO k_1680_hamil;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '娠', 'hamil', 38, 12, 'Seorang <radikal>wanita</radikal> yang memiliki <radikal>tanah longsor</radikal> yang sedang bersiap-siap di dalam dirinya sedang <kanji>hamil</kanji>. Dan bayi itu akan keluar seperti tanah longsor.', 'Saat Anda <kanji>hamil</kanji>, bayi terus-menerus menendang Anda dengan <reading>tulang kering</reading> (しん). Bukan kaki mereka, melainkan tulang kering mereka. Dan tulang keringnya sangat keras, izinkan saya memberi tahu Anda.')
    RETURNING id INTO k_1681_hamil;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '致', 'melakukan', 38, 13, '<radical>tahi lalat</radical> di <radical>musim dingin</radical> akan <kanji>melakukan</kanji> apa pun yang Anda minta, jika Anda tahu cara memintanya.', 'Untuk membuat tahi lalat <kanji>melakukan</kanji> apa yang Anda inginkan, berikan saja <reading>chee</reading>se (ち) dalam jumlah besar.')
    RETURNING id INTO k_1682_melakukan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '刊', 'edisi', 38, 14, 'Anda mendapatkan salinan "The <radical>Dry</radical> <radical>Knife</radical>." Ini adalah <kanji>edisi</kanji> terbaru dari majalah yang Anda sukai untuk menjaga pisau Anda tetap kering.', 'Dalam "Pisau Kering" edisi <kanji>kanji> ini, ada artikel besar yang ditulis oleh <reading>Khan</reading> (かん) Genghis tentang bagaimana dia menjaga pisaunya tetap kering saat berkampanye.')
    RETURNING id INTO k_1683_edisi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '奏', 'putar-musik', 38, 15, 'Saat <radical>musim semi</radical> di <radical>surga</radical> mereka <kanji>memainkan musik</kanji>. Bagi manusia fana, telinga manusia terdengar lebih seperti salju yang mencair, kicauan burung, dan tumbuh-tumbuhan yang terbangun.', 'Di surga, orang yang <kanji>memainkan musik</kanji> adalah <reading>sou</reading>ls (そう) orang mati. Mereka punya band yang sangat besar di sana, dan meskipun bagi Anda itu terdengar seperti suara musim semi yang normal, di surga sana ketika jiwa-jiwa memainkan musik, itu lebih seperti band besar yang beranggotakan 100 orang!')
    RETURNING id INTO k_1684_putar_musik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '伴', 'menemani', 38, 16, 'Seorang <radikal>pemimpin</radikal> meminta <radikal>setengah</radikal> anak buahnya untuk <kanji>menemani</kanji> dia dalam misi rahasia. Misi pemimpinnya hanya bersifat sukarela, jadi sangat mengesankan bahwa dia memiliki setengah dari anak buahnya untuk menemaninya.', 'Pemimpin yang Anda putuskan untuk <kanji>menemani</kanji> tidak lain adalah <reading>Han</reading> (はん) Solo. Siapa yang lebih menginspirasi? Saya terkejut tidak lebih dari setengahnya memutuskan untuk menemaninya. Han Solo luar biasa.')
    RETURNING id INTO k_1685_menemani;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '併', 'bergabung', 38, 17, 'Seorang <radikal>pemimpin</radikal> dengan <radikal>tanduk</radikal> mengambil <radikal>lentera</radikal> dan mencari orang untuk <kanji>bergabung</kanji> dengannya. Dia membutuhkan lebih banyak orang untuk bergabung dalam perjuangannya sehingga dia bisa menyingkirkan tanduknya. Dia malu pada mereka, itulah sebabnya dia hanya bepergian di malam hari, karena itu lenteranya.', 'Pemimpinnya mendekati Anda keluar dari kegelapan, lenteranya terangkat tinggi. Oh tidak, bukan orang itu. Anda pernah mendengar tentang masalah klaksonnya dan Anda tidak ingin <kanji>bergabung</kanji> dengannya. Anda melihat sekeliling dan melihat tumpukan <reading>jerami</reading>yang besar (へい). Anda segera melompat ke dalamnya dan bersembunyi darinya.')
    RETURNING id INTO k_1686_bergabung;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '傾', 'bersandar', 38, 18, 'Anda <radical>mengubah</radical> <radical>geoduck</radical> ini karena Anda ingin <kanji>ramping</kanji>. Saat ini ia berdiri tegak, namun Anda ingin agar ia bersandar ke satu sisi.', 'Untuk membuat geoduck <kanji>ramping</kanji> Anda meletakkan sepotong <reading>ca</reading>ke (けい) di salah satu sisinya.')
    RETURNING id INTO k_1687_bersandar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '却', 'sebaliknya', 38, 19, '<radical>masa lalu</radikal> Perangko <radikal></radikal> biasanya menggambarkan gambar yang <kanji>bertentangan</kanji> dengan pandangan saat ini.', 'Jangan menjadi tipe orang yang bertindak <kanji>bertentangan</kanji> dengan yang seharusnya dan malah menjadi seperti <reading>Kyaku</reading> (きゃく) sang pelanggan. Mereka selalu baik dan sopan dan tidak menularkan penyakit ke seluruh populasi.')
    RETURNING id INTO k_1688_sebaliknya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '奥', 'pedalaman', 38, 20, 'Jika ada <radical>tetesan</radikal> di <radical>kepala</radikal> Anda dan <radikal>beras</radikal> <radikal>besar</radikal>, Anda tahu bahwa Anda berada di <kanji>bagian dalam</kanji>. Dan secara interior, maksud saya Anda sebenarnya berada di dalam diri seseorang. Nasinya besar karena sudah menyusut menjadi kecil dan berada di dalam perut seseorang. Tetesan di kepala Anda sebenarnya adalah cairan pencernaan.', 'Saat Anda berada di <kanji>interior</kanji> orang ini, Anda mendengarnya bernyanyi. Dia mulai menyanyikan “<reading>Ok</reading>lahoma” (おく) sekuat tenaga. Potongan besar nasi itu tumpah saat dia bernyanyi dan menari. “OOOok-lahoma, tempat angin datang menyapu dataran!”')
    RETURNING id INTO k_1689_pedalaman;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '慮', 'mempertimbangkan', 38, 21, '<radikal>harimau</radikal> perlu <radikal>berpikir</radikal> dan <kanji>mempertimbangkan</kanji> tindakannya sebelum menyerang. Harimau adalah pemburu yang cerdas, jadi mereka perlu mempertimbangkan semua pilihan dan benar-benar memikirkan situasinya.', 'Akhirnya, harimau berbicara: "Saya <kanji>mempertimbangkan</kanji>akan pergi ke <read>Rio</reading> (りょ). Apakah Anda pernah ke sana?"')
    RETURNING id INTO k_1690_mempertimbangkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '懸', 'menskors', 38, 22, 'Di <radical>prefektur</radikal> Anda, Anda berasal dari <radikal>silsilah</radikal> panjang yang terdiri dari orang-orang yang memiliki <radikal>hati</radikal> yang sama. Ketika jantung diteruskan ke yang berikutnya, ia terbang keluar dari tubuh mereka, dan <kanji>menangguhkan</kanji> di langit, untuk Anda ambil.', 'Anda tiba di hati <kanji>yang ditangguhkan</kanji>. Di depannya, melindunginya, adalah <reading>Ken</reading> (けん) sang samurai.')
    RETURNING id INTO k_1691_menskors;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '房', 'gugus', 38, 23, '<radikal>pintu</radikal> di <radikal>arah</radikal> itu adalah salah satu <kanji>cluster</kanji> pintu. Anda berlari ke arah cluster dan satu pintu menonjol bagi Anda. Anda memasukkannya.', 'Setelah Anda berhasil melewati pintu tersebut, Anda akan menemukan <kanji>kumpulan</kanji> pintu lainnya. Yang mana yang harus dipilih? Ada suara gemuruh keras datang dari belakang salah satunya dan Anda memutuskan untuk membukanya. Di belakangnya, ada seluruh gang <read>bow</reading>ling (ぼう) dan orang-orang bermain bowling dengan keras!')
    RETURNING id INTO k_1692_gugus;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '扱', 'menangani', 38, 24, 'Di mana Anda meletakkan <radical>jari</radical> saat Anda berada di <radical>eskalator</radical>? Di <kanji>pegangan</kanji>! Oke, jadi mungkin itu bukan pegangan dan lebih seperti pagar, tapi demi kanji ini, bayangkan sebuah pegangan saja.', 'Anda meletakkan tangan Anda pada <kanji>pegangan</kanji> dan seorang tua mencondongkan tubuh ke dekat Anda dan berkata, "<reading>暑か</reading>?" (あつか). Dia ingin tahu apakah pegangannya... panas? Sebelum Anda dapat menjawab, dia mengatakannya lagi, dan lagi! “暑か？！ 暑か？！？！ 暑か？！？！？！” teriaknya saat kamu perlahan-lahan menaiki eskalator menjauh darinya.')
    RETURNING id INTO k_1693_menangani;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '抑', 'menekan', 38, 25, 'Gunakan <radical>jari</radical> Anda pada <radical>bajak laut</radical> untuk <kanji>menekan</kanji> dia. Bajak laut kucing itu menyerang Anda, jadi Anda mengambil jari Anda dan mengelus kepalanya dan menggaruk dagunya. Sekarang dia tenang dan tertekan. Dia bahkan tidak ingat kenapa dia menyerangmu.', 'Dia lupa, tapi kamu tahu kamu harus <kanji>menekan</kanji> bajak laut kucing itu karena dia mencoba mencuri <reading>kuning telur</reading> (よく) milikmu. Anda sedang membuat sarapan di kapal Anda dan bajak laut kucing itu menaiki Anda entah dari mana, dan mencoba mengambilnya dengan paksa.')
    RETURNING id INTO k_1694_menekan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '択', 'memilih', 38, 26, 'Masukkan <radical>jari</radical> Anda ke dalam semangkuk <radical>udang</radical> untuk <kanji>memilih</kanji> yang terbaik. Anda mengenal udang Anda dan mengenal mereka dengan baik, jadi Anda tidak akan puas dengan yang kurang dari yang terbaik. Letakkan seluruh lengan Anda di sana dan rasakan sekeliling sampai Anda dapat memilih salah satu yang paling Anda inginkan.', 'Anda melakukan ini di setiap restoran, pesta, dan acara olahraga dalam ruangan dan orang-orang mulai bersikap bijaksana terhadap metode <kanji>pilihan</kanji>udang Anda. Suatu hari, saat Anda mencoba memilih udang, rasa sakit yang tajam menjalar ke jari Anda. Aduh! Anda menarik tangan Anda kembali untuk menemukan... sebuah <reading>taktik</reading> (たく)!')
    RETURNING id INTO k_1695_memilih;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '描', 'menggambar', 38, 27, 'Dengan <radical>jari</radical> Anda memetik beberapa <radical>bunga</radical> di <radical>sawah</radical>, untuk <kanji>menggambar</kanji> mereka. Pernahkah Anda melihat bunga padi? Mereka cantik. Dan jika Anda bisa menggambarnya, Anda bisa menangkap keindahan itu dan menunjukkannya kepada semua orang.', 'Meskipun kamu mencoba <kanji>menggambar</kanji> bunganya sebaik mungkin, setiap kali seseorang melihatnya, mereka mencium bau <reading>B.O.</reading> (びょう). Mungkin karena Anda menggambar dalam waktu lama dan terus berkeringat. Mungkin karena kamu hanyalah orang yang bau. Tapi tak seorang pun ingin melihat gambarmu terlalu lama karena yang tercium hanyalah B.O.')
    RETURNING id INTO k_1696_menggambar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '盤', 'baki', 38, 28, '<radical>Perahu</radical> Anda memegang <radical>senjata</radical> Anda seperti <radical>piring</radical>. Jadi bisa dibilang, itu hanyalah <kanji>baki</kanji> untuk senjatamu.', 'Sayangnya, <kanji>baki</kanji> perahu ini sangat besar, sehingga Anda <reading>dilarang</reading>ned (ばん) dari Asosiasi Baki Perahu Kecil. Para penggemar nampan perahu kecil yang sial itu...')
    RETURNING id INTO k_1697_baki;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '称', 'judul', 38, 29, 'Anda mengambil <radical>biji-bijian</radikal> dan mengubahnya menjadi <radikal>senjata</radikal> yang <radikal>kecil</radikal>, sehingga memberi Anda <kanji>gelar</kanji> Pedagang Senjata Kecil (atau SAD). Selamat!', 'Kata-kata <kanji>judul</kanji> SAD-mu sampai ke <reading>Shou</reading>gun (しょう) dan dia pergi menemuimu. Ketika dia tiba di depan pintu Anda, dengan semua pengawalnya yang mewah, dia memberi Anda sebuah plakat dengan judul Anda di atasnya.')
    RETURNING id INTO k_1698_judul;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '緒', 'tali', 38, 30, 'Jenis <radical>utas</radikal> yang akan Anda lilitkan pada <radical>seseorang</radikal> harus berupa <kanji>kabel</kanji>. Benang biasa tidak akan cukup kuat, jadi Anda pasti menggunakan kabel. 

Ini juga bisa berarti <kanji>koneksi</kanji>, karena tali menciptakan koneksi (dengan mengikat benda-benda menjadi satu).', 'Sebenarnya, Anda mengikat <kanji>tali</kanji> ini pada seseorang sebagai bagian dari <membaca>pertunjukan</reading> (しょ). Pertunjukan seperti apa? Aku seharusnya tidak mengatakannya. Pertunjukan kabel ini tidak gratis, saya akan memberi tahu Anda sebanyak itu.')
    RETURNING id INTO k_1699_tali;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '緩', 'longgar', 38, 31, '<radical>utas</radikal> pada <radikal>sepakbola</radikal> ini adalah <kanji>longgar</kanji>. Kita perlu mengencangkan benang longgar pada sepak bola ini atau sepak bola ini akan berantakan saat kita bermain.', 'Kamu akhirnya mengencangkan benang <kanji>yang longgar</kanji> dan semua temanmu bersorak, “<reading>Kamu ru</reading>le!” (ゆる) Kamu memerintah karena kamu telah memperbaiki benang merah pada sepak bola dan sekarang kamu dapat bermain lagi. Ya! Anda yang berkuasa, kawan!')
    RETURNING id INTO k_1700_longgar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '託', 'memperuntukkan', 38, 32, 'Mereka <radical>mengatakan</radical> jika Anda meletakkan sesuatu di <radical>slide</radical>, tepatnya <radical>tujuh</radical>, itulah cara terbaik untuk <kanji>mengirimkan</kanji> barang kepada seseorang. Mereka mengatakan jika Anda mengirimkan tujuh barang kepada seseorang, Anda harus mengirimkannya dalam bentuk slide. Geser ke bawah. Ketujuh dari mereka.', 'Salah satu dari tujuh hal yang <kanji>serahkan</kanji> kepada orang ini adalah <reading>taktik</reading> (たく). Ini adalah taktik paling tajam yang pernah Anda lihat. Anda menggeser taktik ke bawah slide. Untung tidak ada seorang pun yang terpeleset sekarang, duduk di atas paku itu akan menyakitkan.')
    RETURNING id INTO k_1701_memperuntukkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '賄', 'menyuap', 38, 33, 'Semakin banyak <radikal>kerang</radikal> yang Anda <radikal>miliki</radikal>, semakin banyak Anda dapat <kanji>menyuap</kanji> orang. Hal ini berhasil di masa lalu ketika cangkang adalah uang, dan sekarang juga jika orang yang ingin Anda suap sangat menyukai makanan laut.', 'Baiklah, polisi mengetahui tentang <kanji>suap</kanji>mu, itu tidak berlangsung lama, dan sekarang seluruh keluargamu menyaksikan kamu dimasukkan ke dalam mobil polisi sambil berteriak, "<reading>KENAPA</reading> (わい)?!')
    RETURNING id INTO k_1702_menyuap;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '賂', 'menyuap', 38, 34, 'Seseorang menawari Anda <radical>kerang</radical> sebagai ganti <radical>cium</radical>. Ini adalah <kanji>suap</kanji>! Anda tentu tidak ingin menciumnya, tetapi kerang itu kelihatannya enak.', 'Anda melakukan <kanji>suap</kanji> dan mencium orang tersebut, namun kemudian mereka merebut kerang tersebut dan langsung lari ke <reading>ro</reading>ad (ろ). TIDAK!!')
    RETURNING id INTO k_1703_menyuap;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '贈', 'hadiah', 38, 35, 'Anda mengenakan <radical>kerang</radikal> <radikal>topeng</radikal> setahun sekali dan masuk ke rumah pantai orang, meninggalkan <kanji>hadiah</kanji>.', '"<kanji>hadiah</kanji>" yang Anda tinggalkan? Mereka sebenarnya hanyalah <reading>zo</reading>mbies (ぞう). Anda meninggalkan zombie di rumah-rumah penduduk.')
    RETURNING id INTO k_1704_hadiah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '逃', 'melarikan-diri', 38, 36, 'Anda menggunakan <radical>skuter</radical> saat <radical>pertanda</radical> datang sehingga Anda dapat <kanji>melarikan diri</kanji>.', 'Anda memutuskan untuk <kanji>melarikan diri</kanji> dari pertanda ini dengan masuk dan keluar dari jalanan sibuk <reading>とう</reading>きょう. Saat ini, kamu sudah tahu とうきょう seperti punggung tanganmu, jadi kamu yakin bisa melarikan diri dengan cara ini.')
    RETURNING id INTO k_1705_melarikan_diri;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '還', 'kirim-kembali', 38, 37, 'Ada <radical>skuter</radical> datang ke arah Anda dengan <radical>net</radical> menjebak <radical>zombie</radical> aneh di dalamnya. Anda tidak ingin ini terjadi di sini, jadi Anda memutuskan untuk <kanji>mengirim kembali</kanji> zombie tersebut. (Ini adalah zombie yang aneh karena ia memiliki tanah di atas kepalanya, bukan tanah!)', 'Saat Anda bersiap untuk <kanji>mengirim kembali</kanji> zombie tersebut, Anda membayangkan diri Anda sebagai Jenghis <reading>Khan</reading> (かん). Di atas kudamu (itu hanya skutermu sendiri), kamu menusuk ke depan dengan tombak (tongkat), mengayunkan skuter tempat zombie berada, dan mengirimkannya kembali dari mana datangnya!')
    RETURNING id INTO k_1706_kirim_kembali;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '膝', 'lutut', 38, 38, 'Di bawah <radical>bulan</radical> di bawah <radical>pohon</radical> ada <radical>topi</radical> yang berisi <radical>air</radical>. Anda menatap ke dalam air dan memutuskan untuk memasukkan <kanji>lutut</kanji> Anda ke dalamnya.', 'Tiba-tiba, di <kanji>lutut</kanji> Anda, Anda merasakan <reading>dia</reading>at dan <reading>za</reading>p (ひざ)! Lutut Anda secara bersamaan terbakar dan tersengat listrik oleh air panas!!')
    RETURNING id INTO k_8861_lutut;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '噛', 'menggigit', 38, 39, '<radical>Mulut</radical> Anda memiliki <radical>gigi</radical> yang Anda gunakan untuk <kanji>menggigit</kanji> dan <kanji>mengunyah</kanji>.', 'Satu gigi Anda sangat kuat sehingga Anda bahkan dapat menggunakannya untuk <kanji>menggigit</kanji> dan <kanji>mengunyah</kanji> seluruh <reading>ca</reading>r (か).')
    RETURNING id INTO k_8966_menggigit;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '璧', 'cakram', 38, 40, 'Anda menawarkan <radical>cabai</radikal> kepada <radikal>raja</radikal>, dan dia memberi Anda <radikal>setet</radikal> sesuatu. Anda melihat ke bawah dan melihatnya berubah menjadi <kanji>disk</kanji>. Dan bukan sembarang disk lama. Itu adalah <kanji>cakram giok</kanji>.

Pernahkah Anda melihat piringan giok Tiongkok kuno yang berlubang di tengahnya? Itulah yang dimaksud dengan kanji ini.', 'Anda melihat lebih dekat pada <kanji>disk</kanji> dan menyadari bahwa lubang di tengahnya sebenarnya adalah lubang kunci. Anda membuat kunci dari jerami — <reading>kunci jerami</reading> (へき) — dan memasukkannya ke dalam. Anda memutar kunci jerami hingga Anda mendengar bunyi klik. Cakram giok terbuka.')
    RETURNING id INTO k_8995_cakram;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '鞄', 'tas', 38, 41, 'Ambil beberapa <radical>kulit</radikal> dan <radikal>bungkus</radikal> barang-barang Anda di dalamnya. Sekarang Anda memiliki <kanji>tas</kanji> untuk membawanya kemana-mana. Rapi!', 'Anda sebenarnya mempelajari bacaan ini dengan kosakata カバン. Namun, sudah cukup lama berlalu, jadi inilah mnemonik untuk membantu Anda menghubungkannya ke kanji ini:

Alasan kamu membuat <kanji>tas</kanji> sendiri adalah karena ada <membaca>larangan mobil</reading> (かばん). Dengan larangan mobil ini, Anda tidak bisa lagi membuang semua barang Anda ke dalam mobil (ayolah — kita semua tahu Anda menggunakannya seperti lemari kedua) jadi sekarang Anda memerlukan tas untuk membawanya kemana-mana.')
    RETURNING id INTO k_9396_tas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '覗', 'mengintip', 38, 42, 'Ketika <radical>direktur</radical> ingin <radical>melihat</radical> apa yang terjadi dengan bawahannya, dia harus <kanji>mengintip</kanji> mereka secara diam-diam.', 'Apa yang paling suka <kanji>mengintip</kanji> dari sutradara? Bagian dalam <read>hidung</reading> orang (のぞ). Sutradara ini agak aneh, dan dia senang mengintip ke dalam hidung bawahannya.')
    RETURNING id INTO k_9469_mengintip;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1675_tuntutan, 'Tuntutan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1676_usia, 'Usia', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1677_salam, 'Salam', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1678_putaran, 'Putaran', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1679_menghindari, 'Menghindari', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1679_menghindari, 'Menghindari', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1680_hamil, 'Hamil', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1681_hamil, 'Hamil', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1682_melakukan, 'Melakukan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1683_edisi, 'Edisi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1684_putar_musik, 'Putar Musik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1685_menemani, 'Menemani', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1686_bergabung, 'Bergabung', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1687_bersandar, 'Bersandar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1688_sebaliknya, 'Sebaliknya', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1689_pedalaman, 'Pedalaman', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1690_mempertimbangkan, 'Mempertimbangkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1691_menskors, 'Menskors', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1692_gugus, 'Gugus', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1693_menangani, 'Menangani', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1694_menekan, 'Menekan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1695_memilih, 'Memilih', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1696_menggambar, 'Menggambar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1697_baki, 'Baki', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1697_baki, 'Piring', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1697_baki, 'Papan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1698_judul, 'Judul', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1699_tali, 'Tali', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1699_tali, 'Koneksi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1699_tali, 'Suasana hati', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1700_longgar, 'Longgar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1701_memperuntukkan, 'Memperuntukkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1702_menyuap, 'Menyuap', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1703_menyuap, 'Menyuap', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1704_hadiah, 'Hadiah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1705_melarikan_diri, 'Melarikan diri', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1706_kirim_kembali, 'Kirim Kembali', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_8861_lutut, 'Lutut', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_8966_menggigit, 'Menggigit', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_8966_menggigit, 'Mengunyah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_8995_cakram, 'Cakram', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_8995_cakram, 'Cakram Giok', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_9396_tas, 'Tas', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_9469_mengintip, 'Mengintip', true, true);

  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1675_tuntutan, 'じゅ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1676_usia, 'れい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1676_usia, 'よわい', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1677_salam, 'よろ', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1677_salam, 'ぎ', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1678_putaran, 'く', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1678_putaran, 'そう', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1679_menghindari, 'ひ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1679_menghindari, 'さ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1679_menghindari, 'よ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1680_hamil, 'にん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1681_hamil, 'しん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1682_melakukan, 'ち', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1682_melakukan, 'いた', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1683_edisi, 'かん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1684_putar_musik, 'そう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1684_putar_musik, 'かな', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1685_menemani, 'はん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1685_menemani, 'ともな', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1686_bergabung, 'へい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1686_bergabung, 'あわ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1687_bersandar, 'けい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1687_bersandar, 'かたむ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1688_sebaliknya, 'きゃく', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1688_sebaliknya, 'かえ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1689_pedalaman, 'おく', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1689_pedalaman, 'おう', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1690_mempertimbangkan, 'りょ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1690_mempertimbangkan, 'おもんぱく', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1690_mempertimbangkan, 'おもんぱか', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1691_menskors, 'けん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1691_menskors, 'か', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1692_gugus, 'ぼう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1692_gugus, 'ふさ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1693_menangani, 'あつか', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1693_menangani, 'きゅう', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1694_menekan, 'よく', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1694_menekan, 'おさ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1695_memilih, 'たく', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1695_memilih, 'えら', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1696_menggambar, 'びょう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1696_menggambar, 'か', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1696_menggambar, 'えが', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1697_baki, 'ばん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1698_judul, 'しょう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1698_judul, 'とな', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1698_judul, 'たた', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1698_judul, 'ほめ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1699_tali, 'しょ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1699_tali, 'ちょ', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1699_tali, 'お', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1700_longgar, 'ゆる', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1700_longgar, 'かん', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1701_memperuntukkan, 'たく', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1701_memperuntukkan, 'かこ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1702_menyuap, 'わい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1702_menyuap, 'まかな', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1703_menyuap, 'ろ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1704_hadiah, 'ぞう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1704_hadiah, 'おく', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1705_melarikan_diri, 'とう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1705_melarikan_diri, 'に', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1705_melarikan_diri, 'のが', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1705_melarikan_diri, 'の', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1706_kirim_kembali, 'かん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1706_kirim_kembali, 'かえ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_8861_lutut, 'ひざ', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_8966_menggigit, 'か', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_8966_menggigit, 'かじ', 'kunyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_8995_cakram, 'へき', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_9396_tas, 'かばん', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_9469_mengintip, 'のぞ', 'kunyomi', true, true);

  -- 3. VOCABULARIES
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '対外', 'luar-negeri', 38, 43, 'Sesuatu adalah <kanji>versus</kanji> <kanji>di luar</kanji>. Dulu, segalanya adalah pertarungan dengan pihak luar. Ada bangsa Mongol... pemberontak... dan orang asing. Jadi, ketika Anda mengatakan sesuatu itu "berlawanan dengan yang di luar", Anda hanya mengatakan bahwa itu adalah sesuatu yang dibandingkan dengan tempat Anda berada saat ini. Itu adalah sesuatu yang <vocabulary>asing</vocabulary> atau <vocabulary>eksternal</vocabulary>.

Ini adalah kata formal yang biasanya digunakan di awal kata majemuk untuk menunjukkan bahwa subjeknya berkaitan dengan urusan luar negeri, seperti 対外政策 (kebijakan luar negeri) atau 対外貿易 (perdagangan luar negeri).', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Luar negeri, Luar, Luar negeri')
    RETURNING id INTO v_3008_luar_negeri;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '出所', 'bebaskan-dari-penjara', 38, 44, 'Anda <kanji>keluar</kanji> dari <kanji>fasilitas</kanji>. Ini adalah <vocabulary>pembebasan dari penjara</vocabulary> Anda!

出所 biasanya mengacu pada keluar atau dibebaskan dari fasilitas yang diakhiri dengan 所, khususnya 刑務所 (penjara). Ini juga dapat berupa kata yang sedikit formal untuk <vocabulary>source</vocabulary> atau <vocabulary>origin</vocabulary>, yang sering digunakan dalam diskusi mengenai hak cipta untuk menentukan asal informasi, gambar, atau konten yang dikutip.', 'Pembacaannya mengikuti protokol on''yomi, tetapi Anda hanya perlu berhati-hati dengan singkatan しゅつ yang menjadi しゅっ.

Catatan: Terdapat juga bacaan <reading>でどころ</reading> untuk arti <vocabulary>asal</vocabulary> dan <vocabulary>source</vocabulary>. Versi ini umumnya digunakan dalam bahasa lisan, sering kali untuk menekankan pentingnya atau keingintahuan tentang dari mana sesuatu itu berasal.', 'Bebaskan Dari Penjara, Sumber, Asal')
    RETURNING id INTO v_3040_bebaskan_dari_penjara;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '時限', 'batas-waktu', 38, 45, '<kanji>waktu</kanji> <kanji>batas</kanji> adalah <vocabulary>batas waktu</vocabulary>, namun bukan batas waktu lama. Ini biasanya digunakan di awal kata majemuk, khususnya 時限爆弾 (bom waktu).', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Batas waktu, Periode')
    RETURNING id INTO v_4748_batas_waktu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '戻す', 'untuk-kembali', 38, 46, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>kembali</kanji> dan versi kosakata kata kerjanya adalah <vocabulary>to return</vocabulary> atau <vocabulary>to return Something</vocabulary>. Anda tahu bahwa Anda melakukan tindakan mengembalikan seseorang atau sesuatu karena ketika Anda melakukannya, mereka hanya <reading>menuntut</reading> (す) Anda karena Anda merusak barang yang seharusnya Anda kembalikan sebelum mengembalikannya.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji.', 'Untuk Kembali, Untuk Mengembalikan Sesuatu')
    RETURNING id INTO v_6078_untuk_kembali;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '盗聴', 'penyadapan', 38, 47, 'Saya <kanji>mencuri</kanji> dengan <kanji>mendengarkan</kanji>apa kata orang. Saya melakukan ini dengan <vocabulary>menyadap</vocabulary> ponsel mereka dan <vocabulary>menyadap</vocabulary> rumah mereka.

盗聴 biasanya mengacu pada pengawasan yang disengaja menggunakan perangkat seperti mikrofon tersembunyi atau penyadapan telepon, daripada menguping atau mendengar seseorang dengan santai.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Penyadapan, Mengganggu, Mendengarkan')
    RETURNING id INTO v_6103_penyadapan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '貿易会社', 'perusahaan-perdagangan', 38, 48, 'Perusahaan dagang (貿易) (会社) adalah perusahaan yang banyak melakukan perdagangan, karena mudah bagi mereka, menjadikan kata ini <vocabulary>perusahaan dagang</vocabulary>.', 'Pembacaan bagian 易 agak aneh. Bayangkan saja bagaimana perusahaan perdagangan yang satu ini hanya berdagang di <reading>stasiun</reading> kereta api (えき).', 'Perusahaan Perdagangan')
    RETURNING id INTO v_6139_perusahaan_perdagangan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '遺伝子', 'gen', 38, 49, 'Jika 遺伝 adalah <kanji>keturunan</kanji> dan Anda mewariskan hereditas Anda kepada <kanji>anak</kanji> Anda, bagaimana cara mewariskannya? Tentu saja melalui <vocabulary>gen</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Gen')
    RETURNING id INTO v_6140_gen;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '奈良県', 'prefektur-nara', 38, 50, 'Ingat <kanji>Nara</kanji> (奈良)? Ini adalah <kanji>prefektur</kanji>-nya, menjadikannya <vocabulary>Prefektur Nara</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Prefektur Nara')
    RETURNING id INTO v_6141_prefektur_nara;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '廃止する', 'untuk-menghapuskan', 38, 51, '廃止 adalah <kanji>penghapusan</kanji>, jadi versi kata kerjanya adalah <vocabulary>to abolish</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri. Mengetahui 廃止 juga akan membantu.', 'Untuk Menghapuskan')
    RETURNING id INTO v_6142_untuk_menghapuskan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '乗り換える', 'untuk-mentransfer', 38, 52, 'Anda memiliki <kanji>naik</kanji> dan <kanji>penukaran</kanji>, jadi Anda mengambil tumpangan Anda (bus, kereta api, apa pun) dan bertukar dengan bus, kereta api, atau apa pun yang lain. Itu sebabnya kata ini berarti <vocabulary>pindah</vocabulary>, dan paling sering berarti <vocabulary>pindah kereta</vocabulary>.', 'Bacaannya berasal dari 乗る dan 換える.', 'Untuk Mentransfer, Untuk Mengganti Kereta')
    RETURNING id INTO v_6143_untuk_mentransfer;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '指摘する', 'untuk-menunjukkan', 38, 53, 'Jika 指摘 adalah "menunjukkan" maka versi kata kerjanya adalah <vocabulary>to point out</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri. Bacaannya berasal dari 指摘.', 'Untuk Menunjukkan, Untuk Mengidentifikasi')
    RETURNING id INTO v_6144_untuk_menunjukkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '沖縄', 'okinawa', 38, 54, '<kanji>laut terbuka</kanji> <kanji>tali</kanji> adalah tali yang menghubungkan <vocabulary>Okinawa</vocabulary> ke daratan.', 'Bacaannya adalah bacaan kun''yomi dari kanji yang disatukan.', 'Okinawa')
    RETURNING id INTO v_6145_okinawa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '維持する', 'untuk-mempertahankan', 38, 55, '"Melakukan pemeliharaan (維持)" berarti menjaga sesuatu pada posisi terpelihara, yaitu <vocabulary>mempertahankan</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan bacaan dari kosakata yang Anda pelajari sebelumnya. Anda seharusnya bisa membaca ini sendiri.', 'Untuk Mempertahankan')
    RETURNING id INTO v_6146_untuk_mempertahankan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '明治維新', 'restorasi-meiji', 38, 56, 'Anda tahu <kanji>Meiji</kanji>, (明治), dan Anda tahu <kanji>restorasi</kanji> (維新). Gabungkan keduanya dan Anda akan mendapatkan <vocabulary>Restorasi Meiji</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Restorasi Meiji')
    RETURNING id INTO v_6147_restorasi_meiji;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', 'お見舞い', 'kunjungan-simpati', 38, 57, '<kanji>Tarian</kanji> untuk <kanji>melihat</kanji> seseorang. Ini adalah <vocabulary>kunjungan simpati</vocabulary>. Karena, tahukah Anda, Anda harus menarikan tarian simpati.', 'Bacaannya berasal dari bacaan kun''yomi kanji. 舞い berasal dari 舞う.', 'Kunjungan Simpati')
    RETURNING id INTO v_6148_kunjungan_simpati;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '舞踏会', 'bola', 38, 58, 'Dansa (舞踏) <kanji>bertemu</kanji> adalah saat kalian semua berkumpul untuk melakukan tarian, semacam "langkah langkah mengayun" (atau apa pun). Ini adalah <vocabulary>bola</vocabulary> atau <vocabulary>dansa</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Bola, Menari')
    RETURNING id INTO v_6149_bola;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '一般的', 'biasa', 38, 59, '一般 bersifat "umum" dan "umum", dan menambahkan 的 hanya akan menghasilkan <vocabulary>biasa</vocabulary> atau <vocabulary>umum</vocabulary> atau <vocabulary>umum</vocabulary>.', 'Bacaannya berasal dari 一般 plus 的.', 'Biasa, Umum, Umum')
    RETURNING id INTO v_6150_biasa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '全般的', 'umum', 38, 60, '<kanji>Semua</kanji> <kanji>umum</kanji>-<kanji>al</kanji>! Ini sangat umum. Ini <vocabulary>umum</vocabulary> dan <vocabulary>keseluruhan</vocabulary> dan <vocabulary>di seluruh papan</vocabulary>. Tidak ada hal spesifik yang terjadi di sini.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Umum, Keseluruhan, Di Seluruh Papan')
    RETURNING id INTO v_6151_umum;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '頼み', 'sebuah-bantuan', 38, 61, 'To 頼む berarti "meminta" atau "meminta". Versi kata benda that adalah <vocabulary>suatu bantuan</vocabulary> atau <vocabulary>a request</vocabulary>.', 'Bacaannya berasal dari 頼む.', 'Sebuah Bantuan, Kebaikan, Sebuah Permintaan, Meminta')
    RETURNING id INTO v_6152_sebuah_bantuan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '頼る', 'untuk-mengandalkan', 38, 62, '頼む adalah "meminta" atau "meminta." Kata ini adalah <vocabulary>mengandalkan</vocabulary> atau <vocabulary>mempercayai</vocabulary> atau <vocabulary>bergantung pada</vocabulary>. Anda tahu kata ini karena <reading>ru</reading>de bergantung pada teman Anda, namun Anda tetap melakukannya.', 'Namun bacaannya sedikit berbeda dari 頼む. Itu たよ, karena kamu terlalu bergantung pada temanmu sehingga mereka menjadi <read>tiyored</reading> (たよ). Mereka bilang "lelah" seperti itu, entah kenapa.', 'Untuk Mengandalkan, Untuk Percaya, Untuk Bergantung Pada')
    RETURNING id INTO v_6153_untuk_mengandalkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '依頼人', 'klien', 38, 63, 'Anda sudah tahu bahwa 依頼 berarti "permintaan". Apa itu <kanji>orang</kanji> "permintaan"? Seseorang yang meminta sesuatu dari Anda. Dengan kata lain, <vocabulary>klien</vocabulary> Anda!

依頼人 umumnya mengacu pada seseorang yang meminta layanan atau bantuan tertentu. Entah itu berkonsultasi dengan pengacara, mempekerjakan detektif, atau melakukan transfer bank, merekalah yang mengajukan permintaan.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Klien')
    RETURNING id INTO v_6154_klien;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '馬鹿らしい', 'absurd', 38, 64, '馬鹿 adalah "bodoh" jadi jika kamu mendengar rumor tentang sesuatu (らしい) yang bodoh, kamu hanya akan menjawab dengan mengatakan "itu <vocabulary>absurd</vocabulary>."', 'Bacaannya berasal dari 馬鹿.', 'Absurd')
    RETURNING id INTO v_6155_absurd;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '需要', 'tuntutan', 38, 65, 'Anda <kanji>menuntut</kanji> dan <kanji>membutuhkan</kanji> hal ini, itulah sebabnya Anda harus membuat <vocabulary>permintaan</vocabulary> ini.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Tuntutan')
    RETURNING id INTO v_6156_tuntutan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '必需品', 'kebutuhan', 38, 66, 'Saya memiliki <kanji>tertentu</kanji> <kanji>permintaan</kanji> untuk <kanji>barang</kanji> untuk dibawa dalam perjalanan ini. Jangan khawatir, itu hanya <vocabulary>kebutuhan</vocabulary> dan <vocabulary>penting</vocabulary>.

必需品 adalah kata yang relatif formal yang mengacu pada barang-barang yang diperlukan untuk kehidupan sehari-hari, kelangsungan hidup, atau aktivitas tertentu.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Kebutuhan, Penting')
    RETURNING id INTO v_6157_kebutuhan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '年齢', 'bertahun-tahun', 38, 67, '<kanji>tahun</kanji> <kanji>usia</kanji> Anda adalah jumlah <vocabulary>tahun</vocabulary> Anda.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Bertahun-tahun, Usia')
    RETURNING id INTO v_6158_bertahun_tahun;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '高齢者', 'orang-lanjut-usia', 38, 68, '<kanji>Seseorang</kanji> dengan <kanji>tinggi</kanji> <kanji>usia</kanji> akan menjadi <vocabulary>orang tua</vocabulary> atau <vocabulary>orang tua</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Orang Lanjut Usia, Orang Tua')
    RETURNING id INTO v_6159_orang_lanjut_usia;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '老齢', 'usia-tua', 38, 69, 'Jika Anda berada pada <kanji>lansia</kanji> <kanji>usia</kanji> Anda berada pada <vocabulary>usia tua</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Usia Tua')
    RETURNING id INTO v_6160_usia_tua;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '宜しい', 'bagus', 38, 70, 'Anda mengirimkan <kanji>salam</kanji> Anda kepada semua orang. Apakah <vocabulary>bagus</vocabulary> ini? Apakah <vocabulary>baik-baik saja?</vocabulary> Apakah <vocabulary>baik-baik saja</vocabulary>? Ya, tentu saja, betapa baiknya Anda.', 'Bacaannya berasal dari bacaan yang Anda pelajari dengan kanji.', 'Bagus, Oke, Baiklah, Bagus')
    RETURNING id INTO v_6161_bagus;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '繰る', 'untuk-memutar', 38, 71, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>berputar</kanji> jadi versi kosakata kata kerjanya adalah <vocabulary>to spin</vocabulary>.', 'Pembacaan yang Anda pelajari dengan kanji digunakan di sini.', 'Untuk Memutar, Untuk Menyerahkan, Untuk Masuk, Untuk Mengacak')
    RETURNING id INTO v_6162_untuk_memutar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '避ける', 'untuk-dihindari', 38, 72, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>menghindari</kanji> atau <kanji>menghindar</kanji> dan versi kosakata kata kerjanya adalah <vocabulary>menghindari</vocabulary> atau <vocabulary>menghindar</vocabulary>!', 'Bacaannya mempunyai arti yang sedikit berbeda (さける untuk menghindari situasi, dan よける untuk menghindari secara fisik), jadi inilah mnemonik untuk membantu mengingatnya:

Anda perlu <vocabulary>menghindari</vocabulary> orang yang minum <reading>sake</reading> (さけ). Mengapa? Karena ketika mereka mabuk Anda harus <vocabulary>menghindari</vocabulary> <reading>yo</reading>-yos (よ) mereka. Orang mabuk suka membuang-buang yo-yo secara sembarangan. Jadi sebaiknya Anda menghindari peminum sake, atau menghindari yo-yo mereka. Itu salah satunya.', 'Untuk Dihindari, Untuk Menghindar')
    RETURNING id INTO v_6163_untuk_dihindari;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '避難', 'pengungsian', 38, 73, '<kanji>Menghindari</kanji> situasi <kanji>sulit</kanji> dengan menjauh darinya. Lakukan <vocabulary>evakuasi</vocabulary> untuk keluar dari sana!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Pengungsian')
    RETURNING id INTO v_6164_pengungsian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '避妊', 'pengendalian-kelahiran', 38, 74, 'Saya <kanji>menghindari</kanji> untuk <kanji>hamil</kanji>. Wah. Untung saja saya menggunakan <vocabulary>alat kontrasepsi</vocabulary> saya.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Pengendalian kelahiran, Kontrasepsi')
    RETURNING id INTO v_6165_pengendalian_kelahiran;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '妊娠する', 'menjadi-hamil', 38, 75, 'Melakukan <kanji>hamil</kanji> <kanji>hamil</kanji> adalah <vocabulary>hamil</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Menjadi Hamil, Untuk Hamil')
    RETURNING id INTO v_6166_menjadi_hamil;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '妊婦', 'wanita-hamil', 38, 76, '<kanji>hamil</kanji> <kanji>wanita</kanji> adalah <vocabulary>wanita hamil</vocabulary>. Betapa sederhananya itu!

妊婦 adalah istilah yang relatif formal yang digunakan untuk menyebut wanita yang sedang hamil. Dalam situasi santai, biasanya ditambahkan さん dan diucapkan 妊婦さん, agar terdengar lebih ramah.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membacanya sendiri — hati-hati jika ふ berubah menjadi ぷ karena rendaku di sini.', 'Wanita Hamil')
    RETURNING id INTO v_6167_wanita_hamil;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '致す', 'yang-harus-dilakukan', 38, 77, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>melakukan</kanji> dan versi kosakata kata kerjanya adalah <vocabulary>to do</vocabulary>. Ini adalah cara yang sopan untuk mengatakan "melakukan".', 'Apa yang akan Anda <vocabulary>lakukan</vocabulary>? Anda akan menjadi <reading>eater</reading> (いた) profesional, karena Anda suka banyak makan, dan Anda sangat sopan dalam makan meskipun Anda makan dengan cepat di kompetisi ini.', 'Yang Harus Dilakukan')
    RETURNING id INTO v_6168_yang_harus_dilakukan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '一致する', 'untuk-mencocokkan', 38, 78, 'Anda melakukan <kanji>satu</kanji> <kanji>melakukan</kanji> dan saya akan melakukan yang lain. Saya akan melakukan hal yang sama <vocabulary>untuk mencocokkan</vocabulary> itu.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.いち disingkat menjadi いっ.', 'Untuk Mencocokkan')
    RETURNING id INTO v_6169_untuk_mencocokkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '致命的', 'fatal', 38, 79, 'Seseorang yang <kanji>melakukan</kanji>menginginkanmu <kanji>nasib</kanji> <kanji>-al</kanji> akan... mungkin cukup <vocabulary>fatal</vocabulary>!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Fatal')
    RETURNING id INTO v_6170_fatal;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '朝刊', 'edisi-pagi', 38, 80, '<kanji>pagi</kanji> <kanji>edisi</kanji> adalah <vocabulary>edisi pagi</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda mungkin pernah melihat bacaan 朝 ini sebelumnya, namun berikut ini ada mnemonik yang dapat membantu Anda:

Anda mengambil salinan <vocabulary>edisi pagi</vocabulary> Anda dan Ny. <reading>Chou</reading> (ちょう) ada di sampul depan. Oh tidak, apa yang telah dia lakukan sekarang? Sebelum Anda mengetahuinya, edisi pagi telah direnggut dari tangan Anda. Anda mendongak dan melihat Ny. Chou melarikan diri, terkekeh, dengan salinan lain dimasukkan ke dalam pelukannya.', 'Edisi Pagi')
    RETURNING id INTO v_6171_edisi_pagi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '月刊', 'edisi-bulanan', 38, 81, '<kanji>bulan</kanji> <kanji>edisi</kanji> adalah <vocabulary>edisi bulanan</vocabulary>, karena 月 juga berarti "bulan".', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Edisi Bulanan')
    RETURNING id INTO v_6172_edisi_bulanan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '夕刊', 'edisi-malam', 38, 82, '<kanji>malam</kanji> <kanji>edisi</kanji> adalah <vocabulary>edisi malam</vocabulary>.', 'Kata ini menggunakan bacaan kun''yomi untuk kanji pertama dan bacaan on''yomi untuk kanji kedua. Anda telah mempelajari kedua bacaan tersebut, jadi Anda seharusnya bisa membacanya sendiri.', 'Edisi Malam')
    RETURNING id INTO v_6173_edisi_malam;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '刊行する', 'untuk-menerbitkan', 38, 83, '<kanji>edisi</kanji> akan <kanji>dipublikasikan</kanji> kepada publik jika kami <vocabulary>menerbitkannya</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Untuk Menerbitkan')
    RETURNING id INTO v_6174_untuk_menerbitkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '日刊', 'edisi-harian', 38, 84, '<kanji>edisi</kanji> <kanji>hari</kanji> adalah <vocabulary>edisi harian</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.にち menjadi にっ.', 'Edisi Harian')
    RETURNING id INTO v_6175_edisi_harian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '奏楽', 'pertunjukan-musik', 38, 85, 'Saat Anda <kanji>memainkan musik</kanji> dengan 楽器 (alat musik), Anda mendapatkan 奏楽 — <vocabulary>pertunjukan musik</vocabulary>.

奏楽 adalah kata formal yang mengacu pada pertunjukan musik atau <vocabulary>pertunjukan musik</vocabulary>. Ini sering dikaitkan dengan musik formal atau seremonial, seperti musik istana tradisional Jepang yang dimainkan di kuil, kuil, atau acara kekaisaran.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri. 楽 menggunakan bacaan sekunder yang Anda pelajari dengan 音楽 (musik) — ingatlah bahwa jika berbicara tentang musik, dibaca sebagai がく!', 'Pertunjukan Musik, Pertunjukan Musik')
    RETURNING id INTO v_6176_pertunjukan_musik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '演奏', 'pertunjukan-musik', 38, 86, 'Jika Anda <kanji>melakukan</kanji> dan <kanji>memainkan musik</kanji> Anda sedang melakukan <vocabulary>pertunjukan musik</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Pertunjukan Musik, Pertunjukan')
    RETURNING id INTO v_6177_pertunjukan_musik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '伴う', 'untuk-menemani', 38, 87, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>menemani</kanji>, jadi versi kosakata verbanya adalah <vocabulary>menemani</vocabulary> atau <vocabulary>disertai</vocabulary>.

Kata ini bersifat transitif dan intransitif. Jadi ini berfungsi ketika membawa seseorang, seperti 助手を伴って来る (datang dengan asisten), atau ketika pergi bersama orang lain, seperti 上司に伴って行く (pergi dengan atasan). Jika berbicara tentang menemani seseorang secara fisik, kata ini sering digunakan bersama dengan kata kerja gerakan.

伴う juga digunakan secara kiasan untuk berbicara tentang konsekuensi yang cenderung <vocabulary>berjalan seiring dengan</vocabulary> sesuatu, seperti 変化にはリスクが伴う (perubahan disertai risiko). Dalam hal ini, 伴う biasanya digunakan sendiri.', 'Saat Anda ingin <vocabulary>teman Anda menemani</vocabulary> Anda ke suatu tempat, Anda berteriak "<reading>友, SEKARANG</reading>!" (ともなう) untuk memerintahkan mereka bersiap berangkat. Anda sangat memaksa jika teman Anda menemani Anda ke suatu tempat.', 'Untuk Menemani, Untuk Ditemani Oleh, Untuk Berjalan Bergandengan Tangan')
    RETURNING id INTO v_6178_untuk_menemani;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '同伴する', 'untuk-menemani', 38, 88, '<kanji>sama</kanji> <kanji>menemani</kanji> berarti Anda berada di tempat yang sama dengan seseorang, dan Anda menemaninya. Kata ini berarti <vocabulary>menemani</vocabulary>. Ini hanya digunakan untuk menemani orang.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Untuk Menemani')
    RETURNING id INTO v_6179_untuk_menemani;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '併合', 'aneksasi', 38, 89, '<kanji>Bergabung</kanji> dan <kanji>bergabung</kanji> satu sama lain. Ini adalah <vocabulary>aneksasi</vocabulary>, atau <vocabulary>merger</vocabulary>.

併合 secara umum berarti bahwa suatu entitas menyerap atau menggabungkan entitas lain, yang seringkali menyiratkan peran dominan atau pengontrol dari salah satu pihak.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri. Ingatlah bahwa 合 dibaca sebagai ごう di sini. Siapa yang mengatur <vocabulary>aneksasi</vocabulary> ini? Kakek yang baik ごういち.', 'Aneksasi, Penggabungan')
    RETURNING id INTO v_6181_aneksasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '傾く', 'menjadi-condong', 38, 90, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>ramping</kanji>, dan versi kosakata kata kerjanya berarti <kosa kata>bersandar</vocabulary> atau <vocabulary>dimiringkan</vocabulary>. Anda tidak melakukan gerakan mencondongkan atau memiringkan, Anda hanya menonton, itulah sebabnya Anda mengatakan "keren" (く) ketika Anda melihatnya, karena sudah selesai.', 'Saat kamu membutuhkan <vocabulary>bulan untuk disandarkan</vocabulary>, pilihan terbaikmu adalah <reading>memotong moo</reading>n (かたむ) menjadi dua. Bulan purnama tidak mungkin <vocabulary>dimiringkan</vocabulary>, tapi bulan yang terbelah bisa miring ke satu arah atau yang lain.', 'Menjadi Condong, Menjadi Miring')
    RETURNING id INTO v_6182_menjadi_condong;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '傾向', 'kecenderungan', 38, 91, 'Jika Anda biasanya <kanji>condong</kanji> <kanji>di sana</kanji>, ke arah itu, itulah <vocabulary>kecenderungan</vocabulary> Anda.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Kecenderungan')
    RETURNING id INTO v_6183_kecenderungan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '却って', 'sebaliknya', 38, 92, 'Kanji artinya <kanji>berlawanan</kanji>, dan ini adalah versi kata keterangannya, jadi artinya <vocabulary>sebaliknya</vocabulary>.

却って adalah ungkapan umum yang digunakan ketika sesuatu memberikan hasil yang berlawanan dengan apa yang Anda harapkan, seperti "Saya mencoba membantu, namun <vocabulary>malah</vocabulary> malah memperburuk keadaan." Versi kanji bersifat formal, jadi Anda akan sering melihatnya dalam kana sebagai かえって, terutama dalam tulisan santai.', 'Bacaannya seperti 変える yaitu berubah. Jadi, jika Anda mengubah perkataan orang lain dengan cara lain, maka Anda mengatakan bahwa Anda sedang mengubah keadaan. Bacaannya sama, jadi ingatlah seperti itu.', 'Sebaliknya, Alih-alih, Lebih tepatnya')
    RETURNING id INTO v_6184_sebaliknya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '却下', 'penolakan', 38, 93, 'Ini <kanji>bertentangan</kanji> dengan apa yang menurut saya bagus. Itu <kanji>di bawah</kanji> standar saya. Jadi, <vocabulary>penolakan</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Penolakan, Pemecatan')
    RETURNING id INTO v_6185_penolakan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '奥', 'jauh-kembali', 38, 94, 'Sesuatu yang ada di <kanji>bagian dalam</kanji> dari sesuatu yang lain ada di dalamnya, dalam, dan <vocabulary>jauh di belakang</vocabulary> / <vocabulary>di belakang</vocabulary>. Bayangkan saja sesuatu di dalam ruangan dengan sesuatu yang lain, mungkin di belakang.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji.', 'Jauh Kembali, Di Belakang')
    RETURNING id INTO v_6186_jauh_kembali;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '奥さん', 'istri', 38, 95, 'Orang <kanji>interior</kanji> (kehormatan さん menunjukkan seseorang) adalah orang yang berdiri di bagian dalam rumah dan tidak keluar, menjadikan orang itu <vocabulary>istri</vocabulary> Anda. Aduh. Kanji seksis muncul lagi.', 'Pembacaannya berasal dari apa yang Anda pelajari di kanji.', 'Istri')
    RETURNING id INTO v_6187_istri;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '遠慮', 'pengekangan', 38, 96, '<kanji>jauh</kanji> <kanji>pertimbangan</kanji> adalah ketika kamu membiarkan pertimbanganmu menjauh dari dirimu sehingga kamu tidak memikirkan betapa marahnya kamu terhadap apa yang terjadi di hadapanmu. Hal ini memungkinkan Anda untuk memiliki <vocabulary>pengekangan</vocabulary>, karena pertimbangan Anda jauh dari sini. Hal ini juga memungkinkan Anda untuk <vocabulary>menolak</vocabulary> sesuatu, karena Anda tidak mempertimbangkan perasaan orang lain.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda sudah mempelajari keduanya, jadi Anda seharusnya bisa membacanya sendiri.', 'Pengekangan, Menolak, Keraguan')
    RETURNING id INTO v_6188_pengekangan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '配慮', 'pertimbangan', 38, 97, 'Jika Anda <kanji>mendistribusikan</kanji> <kanji>pertimbangan</kanji> Anda, Anda akan memberikan <vocabulary>pertimbangan</vocabulary> dan <vocabulary>kepedulian</vocabulary> kepada siapa pun yang Anda bagikan kepedulian ini.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Pertimbangan, Peduli')
    RETURNING id INTO v_6189_pertimbangan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '考慮', 'pertimbangan', 38, 98, 'Saya akan <kanji>berpikir</kanji> dan <kanji>mempertimbangkan</kanji> ini. Saya akan memberikannya <vocabulary>pertimbangan</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda sudah mempelajari keduanya, jadi Anda seharusnya bisa membacanya sendiri.', 'Pertimbangan')
    RETURNING id INTO v_6190_pertimbangan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '懸ける', 'untuk-mempertaruhkan', 38, 99, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>menangguhkan</kanji>, namun dalam kasus ini, Anda akan menangguhkan kemenangan atau kekalahan Anda dan mencoba <vocabulary>mempertaruhkan</vocabulary> semuanya dalam satu taruhan besar. Anda akan <vocabulary>mengambil risiko</vocabulary> semuanya!', 'Anda memutuskan <vocabulary>untuk mengambil risiko</vocabulary> semuanya dan mempertaruhkan segalanya pada <reading>ca</reading>r (か) Anda. Jika Anda kalah, Anda kehilangan mobil, tetapi jika Anda menang, Anda berhak mempertaruhkan segalanya untuk ini.', 'Untuk Mempertaruhkan, Untuk Mengambil Risiko')
    RETURNING id INTO v_6191_untuk_mempertaruhkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '懸命', 'ingin-sekali', 38, 100, 'Silakan <kanji>tangguhkan</kanji> <kanji>takdir</kanji>, ayo selesaikan ini sebelum waktu yang ditakdirkan untuk kita lakukan. Kami <vocabulary>bersemangat</vocabulary> untuk memulai.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Ingin sekali, Keinginan')
    RETURNING id INTO v_6192_ingin_sekali;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '房', 'gugus', 38, 101, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Karena kata ini terdiri dari satu kanji, kemungkinan besar menggunakan bacaan kun''yomi. Anda tidak mempelajari bacaan ini, jadi inilah mnemonik untuk membantu Anda mengingat: 

Anda mengambil <vocabulary>sekelompok</vocabulary> tomat dan <vocabulary>seikat</vocabulary> bayam dan Anda membuat <reading>foo</reading>l <reading>sa</reading>lad (ふさ). Apa itu salad bodoh? Ini adalah salad yang bisa dibuat oleh orang bodoh mana pun, karena tidak memerlukan persiapan apa pun.', 'Gugus, Rumbai, Kelompok, Kuncung')
    RETURNING id INTO v_6193_gugus;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '冷房', 'ac', 38, 102, '<kanji>keren</kanji> <kanji>cluster</kanji> adalah sesuatu yang memiliki cluster pendingin yang menghasilkan keren. Perangkat ini adalah <vocabulary>AC</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'AC')
    RETURNING id INTO v_6194_ac;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '暖房', 'pemanas', 38, 103, '<kanji>hangat</kanji> <kanji>cluster</kanji> adalah saat Anda mengumpulkan kehangatan, lalu menggunakannya untuk menghangatkan rumah Anda. Ini adalah <vocabulary>pemanas</vocabulary> dalam ruangan, seperti halnya AC adalah "cluster yang sejuk".', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Pemanas, Panas')
    RETURNING id INTO v_6195_pemanas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '扱う', 'untuk-menangani', 38, 104, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>menangani</kanji> sehingga versi kosakata kata kerjanya adalah <vocabulary>to handle</vocabulary>.', 'Sebenarnya bacaannya adalah yang Anda pelajari dengan kanji! Bisakah kamu mengatasinya?', 'Untuk Menangani, Untuk Mengobati')
    RETURNING id INTO v_6196_untuk_menangani;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '抑圧', 'penindasan', 38, 105, 'Saya ingin <kanji>menekan</kanji> dan <kanji>menekan</kanji> Anda! Muahaha! Ini adalah <vocabulary>penindasan</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Penindasan')
    RETURNING id INTO v_6197_penindasan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '抑制', 'kontrol', 38, 106, 'Cobalah untuk <kanji>menekan</kanji> dan <kanji>mengendalikan</kanji> musuh. Kita harus <vocabulary>mengendalikan</vocabulary> mereka.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Kontrol, Pengekangan')
    RETURNING id INTO v_6198_kontrol;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '抑止', 'pencegah', 38, 107, 'Ini akan <kanji>menekan</kanji> dan <kanji>menghentikan</kanji> apa yang menimpa Anda. Ini adalah <vocabulary>pencegah</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Pencegah, Pencegahan, Menghalangi, Mencegah')
    RETURNING id INTO v_6199_pencegah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '選択', 'pilihan', 38, 108, '<kanji>Pilih</kanji> dan <kanji>pilih</kanji> pilihan Anda. Ini adalah <vocabulary>pilihan</vocabulary> Anda.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Pilihan, Pilihan')
    RETURNING id INTO v_6200_pilihan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '描写', 'penggambaran', 38, 109, '<kanji>Gambarlah</kanji> <kanji>salinan</kanji> dunia dan Anda membuat <vocabulary>penggambaran</vocabulary> dunia.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Penggambaran')
    RETURNING id INTO v_6201_penggambaran;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '描画', 'menggambar', 38, 110, 'Jika Anda <kanji>menggambar</kanji> sebuah <kanji>gambar</kanji>, Anda akan mendapatkan <vocabulary>gambar</vocabulary> (atau <vocabulary>lukisan</vocabulary>).

描画 adalah kata yang relatif formal yang mengacu pada proses pembuatan gambar (bukan gambar itu sendiri). Ini tidak hanya mencakup melukis atau menggambar tetapi juga membuat gambar secara digital di layar komputer.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Menggambar, Lukisan')
    RETURNING id INTO v_6202_menggambar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '描く', 'menggambar', 38, 111, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>menggambar</kanji> dan kata kerja vocab mengacu pada penciptaan seni visual, seperti gambar atau lukisan, menjadikan <kosakata>menggambar</vocabulary> atau <vocabulary>melukis</vocabulary>. Kata ini juga dapat digunakan secara kiasan sebagai <vocabulary>untuk mengilustrasikan</vocabulary> ide atau mimpi, atau <vocabulary>untuk menggambarkan</vocabulary> adegan dalam pikiran seseorang.', 'Cara membacanya sama dengan 書く, yaitu mirip dengan menggambar sesuatu (menggunakan alat tulis di atas kertas, bisa juga dengan menggambar). Bacaan lainnya adalah えがく, yang seperti mengucapkan 絵を書く, namun digabungkan dan rendaku.', 'Menggambar, Untuk Melukis, Untuk mengilustrasikan, Untuk Menggambarkan')
    RETURNING id INTO v_6203_menggambar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '盤', 'baki', 38, 112, 'Kanji dan kata-katanya sama! Kata ini juga berarti <vocabulary>board</vocabulary> dan <vocabulary>disc</vocabulary>, yang masuk akal jika Anda memikirkannya. Papan tempat Anda bermain game pada dasarnya hanyalah baki untuk menyimpan potongan-potongannya, dan cakram dimasukkan ke dalam papan (seperti piringan hitam) untuk penyimpanan.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji!', 'Baki, Papan, Cakram')
    RETURNING id INTO v_6204_baki;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '円盤', 'disk', 38, 113, '<kanji>bulat</kanji> <kanji>baki</kanji> adalah <vocabulary>disk</vocabulary>, namun jika melewati udara maka akan menjadi <vocabulary>piring terbang</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Disk, Piring Terbang')
    RETURNING id INTO v_6205_disk;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '基盤', 'basis', 38, 114, '<kanji>fondasi</kanji> <kanji>baki</kanji> adalah benda datar yang menjadi fondasi Anda. Itu menahan segalanya. Ini adalah <vocabulary>base</vocabulary> dari segala sesuatu yang berada di atasnya. Ini adalah <vocabulary>fondasi</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Basis, Dasar, Dasar')
    RETURNING id INTO v_6206_basis;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '対称', 'simetri', 38, 115, 'Jika Anda <kanji>melawan</kanji> (membandingkan) <kanji>judul</kanji> dari kedua hal ini, Anda akan melihat bahwa keduanya sama satu sama lain. Mereka memiliki <vocabulary>simetri</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Simetri')
    RETURNING id INTO v_6207_simetri;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '仮称', 'nama-kerja', 38, 116, '<kanji>sementara</kanji> <kanji>judul</kanji> adalah apa yang Anda berikan pada sesuatu ketika Anda tidak memiliki judul akhir untuk itu. itu adalah <vocabulary>nama kerja</vocabulary> atau <vocabulary>nama sementara</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Nama Kerja, Nama Sementara')
    RETURNING id INTO v_6208_nama_kerja;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '一人称', 'orang-pertama', 38, 117, '<kanji>satu</kanji> <kanji>orang</kanji> <kanji>gelar</kanji> adalah gelar yang diberikan seseorang pada dirinya sendiri. Mereka berbicara dalam <vocabulary>orang pertama</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Orang Pertama')
    RETURNING id INTO v_6209_orang_pertama;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '一緒', 'bersama', 38, 118, '<kanji>Satu</kanji> <kanji>tali</kanji> sudah cukup untuk mengikat <vocabulary>bersama</vocabulary> Anda dengan seseorang. Bayangkan sebuah tali tak kasat mata yang membentang antara Anda dan orang-orang yang melakukan aktivitas bersama Anda. Tali yang satu itu ibarat simbol kebersamaan kalian. Sangat puitis (atau sangat Death Stranding), bukan?', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.一 menjadi いっ.', 'Bersama')
    RETURNING id INTO v_6210_bersama;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '内緒', 'rahasia', 38, 119, 'Simpan informasi <kanji>di dalam</kanji> <kanji>kabel</kanji> yang hanya membatasi Anda dan beberapa orang lainnya (atau mungkin tidak ada orang lain). Hanya orang yang Anda izinkan masuk ke dalam kabel tersebut yang dapat mengetahuinya, karena ini adalah <vocabulary>rahasia</vocabulary> dan <vocabulary>rahasia</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Rahasia, Rahasia')
    RETURNING id INTO v_6211_rahasia;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '緩い', 'longgar', 38, 120, 'Ini adalah kanji tunggal dengan い di akhir, artinya Anda tahu itu mungkin kata sifat. Apa bentuk kata sifat dari <kanji>longgar</kanji>? <vocabulary>longgar</vocabulary>.', 'Pembacaannya adalah yang Anda pelajari dengan kanji, jadi rasakan nyaman dan santai dan lanjutkan ke item berikutnya.', 'Longgar')
    RETURNING id INTO v_6212_longgar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '緩む', 'untuk-melonggarkan', 38, 121, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri artinya <kanji>longgar</kanji>, jadi versi kata kerjanya adalah <vocabulary>to loose</vocabulary>. Ini adalah saat sesuatu mengendur dengan sendirinya, dan bukan karena tindakan Anda. Kamu mengetahui hal ini karena seekor sapi sedang melonggarkan sesuatu, <reading>moo</reading> (む)...', 'Bacaannya sama dengan yang Anda pelajari dengan kanji!', 'Untuk Melonggarkan')
    RETURNING id INTO v_6213_untuk_melonggarkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '緩やか', 'longgar', 38, 122, 'Ini adalah versi kata sifat na dari <kanji>longgar</kanji>, jadi artinya kata ini berarti <vocabulary>longgar</vocabulary> atau <vocabulary>mild</vocabulary> atau <vocabulary>gentle</vocabulary>.', 'Pembacaannya berasal dari apa yang Anda pelajari dengan kanji.', 'Longgar, Lembut, Lembut')
    RETURNING id INTO v_6214_longgar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '委託', 'memperuntukkan', 38, 123, 'Kepada <kanji>komite</kanji> saya ingin <kanji>menyerahkan</kanji> barang-barang ini. Inilah yang saya <vocabulary>kirimkan</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Memperuntukkan, Mempercayakan, Konsinyasi')
    RETURNING id INTO v_6215_memperuntukkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '託す', 'untuk-mempercayakan', 38, 124, 'Jika Anda <kanji>menyerahkan</kanji> sesuatu kepada seseorang, Anda akan <vocabulary>mempercayakan</vocabulary> barang tersebut kepada mereka. Ini dia, aku percayakan padamu.', 'Pembacaan untuk yang satu ini tidak biasa, tetapi saya akan mempercayakan Anda pengetahuan tentang alasannya untuk membantu Anda mengingatnya! Ini menggunakan bacaan on''yomi dan bukan kun''yomi, seperti yang Anda duga, karena す di sini adalah versi kuno dari kata kerja する.

Untungnya, Anda mempelajari bacaan ini saat mempelajari kanji, jadi ini tidak biasa tetapi mudah-mudahan tidak terlalu sulit!', 'Untuk Mempercayakan')
    RETURNING id INTO v_6216_untuk_mempercayakan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '信託', 'memercayai', 38, 125, 'Jika Anda <kanji>yakin</kanji> Anda bisa <kanji>menyerahkan</kanji> kepercayaan Anda kepada seseorang, maka Anda bisa <vocabulary>mempercayai</vocabulary> mereka, atau Anda sedang <vocabulary>mempercayakan</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Memercayai, Mempercayakan')
    RETURNING id INTO v_6217_memercayai;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '受託', 'dipercayakan', 38, 126, 'Anda <kanji>menerima</kanji> dan <kanji>menyerahkan</kanji> pekerjaan tersebut. Anda akan <vocabulary>dipercayakan</vocabulary> properti ini untuk musim dingin. Jangan masuk ke kamar 237.

受託 adalah kata formal yang berarti mengambil tugas yang dipercayakan seseorang kepada Anda. Anda akan sering melihatnya dalam konteks bisnis ketika berbicara tentang sebuah perusahaan yang menerima pekerjaan dari perusahaan lain, seperti 業務を受託する (untuk <vocabulary>melakukan</vocabulary> pekerjaan kontrak). Dalam konteks hukum, kata ini juga bisa merujuk pada titipan barang fisik atau uang.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Dipercayakan, Melakukan')
    RETURNING id INTO v_6218_dipercayakan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '贈る', 'untuk-memberikan-hadiah', 38, 127, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>hadiah</kanji> jadi jika Anda memberi hadiah, Anda memberikannya, menjadikannya <vocabulary>memberi hadiah</vocabulary> atau <vocabulary>to Gift</vocabulary>.

贈る digunakan untuk tindakan memberi ketika dilakukan dengan perhatian atau ketulusan tertentu — sering kali untuk mengungkapkan hal-hal seperti rasa terima kasih, cinta, selamat, atau rasa hormat. Hal-hal yang mungkin Anda inginkan termasuk bunga di hari ulang tahun, barang peringatan di sebuah acara, atau bahkan ucapan terima kasih. Hal ini juga dapat mencakup penganugerahan penghargaan, gelar, pangkat, atau penghargaan, karena ini juga merupakan "hadiah" dalam arti tertentu.', 'Kata ini memiliki bacaan yang sama dengan 送る (mengirim), jadi inilah mnemonik untuk membantu Anda mengingatnya:

Jika kamu ingin <vocabulary>memberikan hadiah</vocabulary> kepada seseorang yang jauh, kamu perlu <reading>送る</reading> (おくる) kepada mereka. Pastikan Anda membayar untuk pelacakan!', 'Untuk Memberikan Hadiah, Untuk Hadiah')
    RETURNING id INTO v_6219_untuk_memberikan_hadiah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '贈収賄', 'penyuapan', 38, 128, '<kanji>hadiah</kanji> yang Anda <kanji>dapatkan</kanji> adalah <kanji>suap</kanji>. Apa? Itu adalah <vocabulary>penyuapan</vocabulary>!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Penyuapan')
    RETURNING id INTO v_6220_penyuapan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '賄賂', 'menyuap', 38, 129, '<kanji>suap</kanji> <kanji>suap</kanji> adalah <vocabulary>suap</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Menyuap')
    RETURNING id INTO v_6221_menyuap;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '賄う', 'untuk-membayar', 38, 130, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>menyuap</kanji>, tetapi ketika Anda membayar suap, Anda akan <vocabulary>membayar</vocabulary> sesuatu atau <vocabulary>menutup</vocabulary> sesuatu, seperti makanan, atau sesuatu seperti itu.', 'Kata kerja ini menggunakan pembacaan kanji kun''yomi. Anda belum mempelajarinya, jadi inilah mnemonik untuk membantu Anda:

Karyawan Anda selalu bekerja hingga jam makan malam, jadi <vocabulary>untuk membayar</vocabulary> kerja ekstra mereka dan <vocabulary>untuk menutupi</vocabulary> makanan mereka, Anda <reading>menandai</reading> <reading>a</reading> <reading>na</reading>cho (まかな) dengan namanya. Nacho yang ditandai itu akan menjadi makan malam mereka. Anda bermurah hati untuk menutupi makan malam mereka dengan nacho gratis! Namun kenaikan gaji akan lebih baik.', 'Untuk Membayar, Untuk Menutupi')
    RETURNING id INTO v_6222_untuk_membayar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '逃げる', 'untuk-melarikan-diri', 38, 131, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>melarikan diri</kanji> sehingga versi kosakata kata kerjanya adalah <vocabulary>to escape</vocabulary>. Selain itu, bisa berupa <vocabulary>kabur</vocabulary> atau <vocabulary>kabur</vocabulary>. Pada dasarnya, jika Anda mencoba menjauh dari seseorang atau sesuatu, Anda mungkin melakukan hal ini.

逃げる adalah kata umum untuk melarikan diri yang dapat digunakan dalam situasi apa pun, mulai dari melarikan diri dari bahaya, menghindari tanggung jawab, hingga meninggalkan suatu tempat dengan cepat.', 'Anda mencoba <vocabulary>melarikan diri</vocabulary> dari sesuatu yang mengejar Anda, tetapi Anda tidak dapat berlari cepat karena <reading>lutut</reading> (に) Anda. Kamu mencoba lari, tapi dia terus menahanmu. Rasakan ketakutan dan rasa sakit saat berlari dengan lutut yang cedera, dan kutuk lutut Anda yang menahan Anda.', 'Untuk Melarikan Diri, Untuk melarikan diri, Untuk Melarikan Diri')
    RETURNING id INTO v_6223_untuk_melarikan_diri;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '逃亡', 'melarikan-diri', 38, 132, 'Jika Anda <kanji>lolos</kanji> <kanji>kematian</kanji>, Anda memiliki <vocabulary>pelarian</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Melarikan diri, Penerbangan')
    RETURNING id INTO v_6224_melarikan_diri;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '生還', 'mencapai-home-plate', 38, 133, 'Kami mendapatkan <kanji>kehidupan</kanji> dengan <kanji>mengirimkan kembali</kanji> pelari kami ke home plate. Lari itu memberi kami lebih banyak kehidupan dalam game ini. Sekarang, mungkin kita akan menang! Itu semua dilakukan dengan <vocabulary>mencapai home plate</vocabulary>. Di luar bisbol, ini berarti <vocabulary>kembali hidup</vocabulary> dari suatu tempat.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Mencapai Home Plate, Kembali Hidup')
    RETURNING id INTO v_6225_mencapai_home_plate;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '返還', 'kembali', 38, 134, 'Jika kita <kanji>mengembalikan</kanji> dan <kanji>mengirim kembali</kanji> sesuatu, kita akan melakukan <vocabulary>return</vocabulary> atau <vocabulary>restoration</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Kembali, Restorasi')
    RETURNING id INTO v_6226_kembali;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '還元', 'berikan-sesuatu-kembali', 38, 135, '<kanji>Kirim kembali</kanji> ke <kanji>asal</kanji> berarti Anda akan <vocabulary>memberikan sesuatu kembali</vocabulary>. Kata ini biasa digunakan dalam arti “memberikan manfaat kembali kepada konsumen”. Misalnya, jika sebuah perusahaan menghasilkan lebih banyak uang dari biasanya, mereka dapat berterima kasih kepada konsumen dengan penjualan besar, menurunkan harga untuk "mengembalikan" sebagian keuntungan.

Dalam konteks kimia, 還元 juga berarti <vocabulary>reduksi</vocabulary>, seperti mereduksi suatu zat yang teroksidasi kembali ke bentuk aslinya, yang tidak teroksidasi.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Berikan Sesuatu Kembali, Pengurangan')
    RETURNING id INTO v_6227_berikan_sesuatu_kembali;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '湯豆腐', 'tahu-rebus', 38, 136, '豆腐 adalah <kanji>tahu</kanji>, dan 湯 berarti <kanji>air panas</kanji>, jadi tahunya sudah dimasukkan ke dalam air panas alias <vocabulary>tahu rebus</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan bacaan on''yomi dari 豆腐 dan bacaan kun''yomi dari 湯. Anda seharusnya bisa membaca ini sendiri. Tentu saja akan membantu untuk mengetahui 豆腐 juga.', 'Tahu Rebus')
    RETURNING id INTO v_6228_tahu_rebus;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '伸ばす', 'untuk-meregangkan-sesuatu', 38, 137, 'Jika 伸びる berarti "diregangkan" maka 伸ばす adalah <vocabulary>meregangkan sesuatu</vocabulary>, di mana Anda melakukan peregangan. Anda mengetahui hal ini karena Anda naik <reading>bus</reading> dan merentangkannya menjadi bus yang lebih panjang.', 'Bacaannya berasal dari 伸びる, jadi jika Anda mengetahuinya, Anda harus mengetahuinya.', 'Untuk Meregangkan Sesuatu')
    RETURNING id INTO v_6229_untuk_meregangkan_sesuatu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '及ぼす', 'untuk-berusaha', 38, 138, 'Jika Anda memiliki <kanji>jangkauan</kanji>, itu berarti Anda mampu <vocabulary>memberikan</vocabulary> pengaruh yang besar pada orang lain. Namun berhati-hatilah, karena itu juga berarti Anda dapat <vocabulary>menyebabkan</vocabulary> kerugian besar.', 'Bacaannya berasal dari 及ぶ, jadi jika Anda mengetahuinya, Anda pasti bisa membaca yang ini juga.', 'Untuk Berusaha, Untuk Menyebabkan')
    RETURNING id INTO v_6230_untuk_berusaha;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '及び', 'maupun', 38, 139, '及ぶ berarti "mencapai" atau "mencapai". Versi kata benda lebih mirip tata bahasa, karena artinya "<vocabulary>dan juga</vocabulary>." Mungkin jika Anda mencapai titik atau jumlah tertentu, maka Anda menambahkan sesuatu. Itu sebabnya ini berarti "serta".

Perhatikan bahwa 及び adalah istilah yang biasanya digunakan dalam penulisan formal.', 'Bacaannya berasal dari 及ぶ, jadi kalau kamu tahu yang itu, kamu pasti tahu <vocabulary>itu dan juga</vocabulary> yang ini.', 'Maupun')
    RETURNING id INTO v_6231_maupun;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '踏み込む', 'untuk-melangkah', 38, 140, '踏む berarti "menginjak" dan kanji 込 berarti <kanji>ke</kanji>, jadi ini berarti <vocabulary>melangkah ke</vocabulary>.

踏み込む artinya melangkah lebih jauh dan lebih keras dari biasanya, seperti melangkah maju untuk menerjang bola atau menginjak pedal gas dengan keras. Secara kiasan, ini juga bisa berarti <vocabulary>mengganggu</vocabulary> atau <vocabulary>menyelidiki</vocabulary>, seperti memasuki rumah seseorang tanpa izin atau menjelajahi topik rumit selangkah lebih jauh.', 'Bacaannya berasal dari kata 踏む dan kanji 込, disatukan.', 'Untuk Melangkah, Untuk Melangkah Keras, Untuk Mengganggu, Untuk Menyelidiki')
    RETURNING id INTO v_6232_untuk_melangkah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '超す', 'untuk-melebihi', 38, 141, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji sendiri berarti <kanji>ultra</kanji> atau <kanji>super</kanji> jadi versi kata kerjanya adalah apa yang terjadi ketika Anda melakukan sesuatu yang ultra atau super. Anda mulai <vocabulary>melebihi</vocabulary> jumlah yang seharusnya Anda lakukan. Jika Anda mengendarai mobil secara ultra, Anda melebihi batas kecepatan. Jika Anda terlalu banyak belajar, Anda melebihi kapasitas otak Anda. Mengerti?', 'Siapa yang suka <vocabulary>melebihi</vocabulary> segalanya? <reading>子</reading> Anda (こ)! Atau Anda, ketika Anda masih seorang 子. Tidak ada waktu tidur, orang tua, atau batasan lain yang dapat menghentikan Anda! Anda bisa membahas semuanya!', 'Untuk Melebihi, Untuk Pergi, Untuk Melampaui')
    RETURNING id INTO v_6233_untuk_melebihi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '縄張り', 'tali-lepas', 38, 142, 'Ambil <kanji>tali</kanji> Anda dan <kanji>rentangkan</kanji> untuk menunjukkan di mana batasnya. Ini adalah saat Anda <vocabulary>mengikat</vocabulary> sesuatu. Ini menunjukkan <vocabulary>wilayah</vocabulary> dan <vocabulary>wilayah</vocabulary> Anda. Jangan melewati tali yang telah saya rentangkan ini, ini adalah <vocabulary>domain</vocabulary> saya.', 'Bacaannya adalah 縄 dan 張る yang dirangkai menjadi satu kata. Hati-hati dengan rendaku yang mengubah bacaan 張り menjadi ばり. Berikut ini sedikit mnemonik jika Anda membutuhkannya:

Untuk <vocabulary>mengikat</vocabulary> <vocabulary>wilayah</vocabulary> Anda, Anda berkeliling berteriak <reading>baa</reading> (ば), pada dasarnya pada siapa pun yang mendekati <vocabulary>wilayah</vocabulary> Anda. Anda berjalan mengelilingi sekeliling rumah atau pekarangan Anda dan berteriak, "Ini adalah <vocabulary>domain</vocabulary> saya! Baa!" Ya, itu akan menunjukkannya pada mereka.', 'Tali Lepas, Gambut, Wilayah, Domain')
    RETURNING id INTO v_6236_tali_lepas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '香辛料', 'rempah-rempah', 38, 143, '<kanji>biaya</kanji> untuk <kanji>wewangian</kanji> dan <kanji>pedas</kanji> pada makanan Anda adalah biaya <vocabulary>rempah-rempah</vocabulary>. Jika Anda tidak membayar biaya bumbu, Anda tidak akan mendapatkan bumbu atau wewangian apa pun dalam makanan Anda. Jika ya, Anda akan mendapatkan barang-barang itu dan makanan Anda akan luar biasa!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda telah mempelajarinya untuk 香 dan 料, namun tidak untuk 辛, jadi inilah mnemonik yang dapat membantu:

Lemari tempat menyimpan <vocabulary>rempah-rempah</vocabulary> Anda berada di tempat yang sangat buruk di lantai, dan Anda terus membenturkan <reading>tulang kering</reading> (しん) Anda ke atasnya. Aduh!', 'Rempah-rempah')
    RETURNING id INTO v_6791_rempah_rempah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '辛抱', 'kesabaran', 38, 144, '<kanji>pedas</kanji> <kanji>pelukan</kanji> adalah pelukan yang terasa tidak terlalu nyaman. Tapi, itu juga tidak langsung menyakitkan. Saat Anda menerima pelukan yang pedas, Anda hanya perlu menunjukkan <vocabulary>kesabaran</vocabulary> dan <vocabulary>daya tahan</vocabulary> selama pelukan itu berlangsung.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi, tetapi Anda belum mempelajarinya untuk 辛 atau 抱, jadi mari gunakan mnemonik untuk mengingatnya: 

Bayangkan seberapa besar <vocabulary>kesabaran</vocabulary> dan <vocabulary>daya tahan</vocabulary> <reading>tulang kering</reading> (しん) Anda agar bisa mahir dalam <reading>bo</reading>wling (ぼう). Anda tidak akan menerima serangan apa pun dengan tulang kering yang lemah!

Perhatikan bahwa bacaan ぼう adalah bacaan rendaku untuk 抱.', 'Kesabaran, Ketahanan')
    RETURNING id INTO v_6793_kesabaran;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '奥深い', 'menonjol', 38, 145, 'Jika <kanji>interior</kanji> Anda <kanji>dalam</kanji>, maka Anda adalah orang yang benar-benar <vocabulary>mendalam</vocabulary>.', 'Bacaan kata ini sama-sama bacaan kun''yomi. Kamu mempelajari おく saat kamu mempelajari kanji, dan ふかい dari 深い, jadi kamu seharusnya bisa membacanya sendiri. Biasanya ふ dirender menjadi ぶ, tapi bisa juga dibaca sebaliknya.', 'Menonjol, Dalam')
    RETURNING id INTO v_7610_menonjol;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '欠伸', 'menguap', 38, 146, 'Saat Anda <kanji>kurang</kanji> <kanji>peregangan</kanji>, tubuh Anda harus mengeluarkan energi tersebut, sehingga Anda akhirnya <vocabulary>menguap</vocabulary>.', 'Pembacaan untuk ini merupakan pengecualian. Berikut ini mnemonik untuk membantu Anda:

Kamu belum pernah melihat <vocabulary>menguap</vocabulary> lebih banyak daripada saat kamu melakukan <reading>acu</reading>puncture (あく) pada <reading>bee</reading> (び). Ia begitu santai karena disodok sekali sehingga ia tidak bisa berhenti menguap.', 'Menguap, Menguap')
    RETURNING id INTO v_7664_menguap;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '馬鹿馬鹿しい', 'absurd', 38, 147, 'Ingat bagaimana Anda mengetahui bahwa 馬鹿 berarti "idiot?" Gabungkan dua orang idiot dan semua yang mereka katakan dan lakukan benar-benar <vocabulary>absurd</vocabulary>. Ingat betapa <vocabulary>konyol</vocabulary> film "Dumb and Dumber" itu? Ya. Seperti itu.', 'Kamu sudah mempelajari 馬鹿, jadi asal kamu bisa mengingatnya dua kali berturut-turut, kamu pasti bisa membacanya juga!', 'Absurd, Konyol, Konyol')
    RETURNING id INTO v_7778_absurd;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '〜漬け', 'acar-dalam', 38, 148, 'Anda sudah mengetahui bahwa 漬ける berarti "mengasinkan sesuatu", jadi jika Anda menambahkannya di akhir kata makanan (dan tidak menggunakan る) itu berarti makanan tersebut telah <vocabulary>diasamkan</vocabulary> sesuatu, seperti 酢漬け (acar dalam cuka).', 'Anda telah mempelajari 漬ける (mengasinkan sesuatu), jadi lepas saja る dan Anda telah mengasinkan apa pun yang ada sebelum 〜漬け. Perhatikan saja つ yang berubah menjadi づ — bayangkan rendaku di sini sebagai efek samping dari proses pengawetan!', 'Acar dalam, Diasinkan dalam')
    RETURNING id INTO v_8557_acar_dalam;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '奥底', 'kedalaman', 38, 149, 'Ada sesuatu di <kanji>interior</kanji> DAN <kanji>bawah</kanji>? Wah, ini ada di <vocabulary>yang terdalam</vocabulary>! Dan jika itu ada di bagian terdalam dan paling bawah dari diri Anda, maka itu ada di <vocabulary>di lubuk</vocabulary> hati Anda!', 'Bacaan kata ini sama-sama bacaan kun''yomi. Anda mempelajarinya saat mempelajari kanji, jadi Anda seharusnya bisa membacanya sendiri.', 'Kedalaman, Dasar')
    RETURNING id INTO v_8729_kedalaman;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '膝', 'lutut', 38, 150, 'Kanji dan kata-katanya sama persis.', 'Karena kata ini terdiri dari satu kanji, kemungkinan besar menggunakan bacaan kun''yomi. Anda sudah mempelajarinya, jadi Anda seharusnya bisa membacanya sendiri!', 'Lutut')
    RETURNING id INTO v_8869_lutut;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '膝頭', 'tempurung-lutut', 38, 151, '<kanji>kepala</kanji> <kanji>lutut</kanji> Anda adalah <vocabulary>tempurung lutut</vocabulary>. Disebut juga <vocabulary>patella</vocabulary>, jika Anda ingin lebih tertarik dan berbicara tentang nama tulang.', 'Kata ini menggunakan bacaan kun''yomi untuk kedua kanjinya. Anda belum mempelajari bacaan ini untuk 頭, jadi inilah mnemonik untuk membantu Anda:

Kamu sedang berjalan-jalan di rumah ibumu, mengurus urusanmu sendiri, saat kamu membanting <vocabulary>tempurung lutut</vocabulary>mu tepat ke <reading>ga</reading>rgoyle <reading>yang dia sukai</reading> (がしら). Sakit sekali, Anda bahkan tidak bisa memikirkan kalimat itu dan malah berteriak, "GA SHE RA" dan terjatuh ke lantai sambil memegangi tempurung lutut Anda yang terbakar (yang mungkin patah menjadi dua).', 'tempurung lutut, Tempurung lutut')
    RETURNING id INTO v_8870_tempurung_lutut;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '噛む', 'untuk-menggigit', 38, 152, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>menggigit</kanji> atau <kanji>mengunyah</kanji> sehingga versi kata kerjanya adalah <vocabulary>menggigit</vocabulary> atau <vocabulary>mengunyah</vocabulary>.', 'Kata ini menggunakan bacaan yang sama yang Anda pelajari dengan kanji.', 'Untuk Menggigit, Untuk Mengunyah')
    RETURNING id INTO v_8983_untuk_menggigit;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '完璧', 'sempurna', 38, 153, 'Sebuah <kanji>sempurna</kanji> <kanji>disk</kanji> adalah <vocabulary>tanpa cacat</vocabulary>. Itu hanya <vocabulary>sempurna</vocabulary>. 

Seperti yang mungkin sudah Anda ketahui, di Jepang simbol ⭕ digunakan untuk menandai jawaban yang benar. Lihat tampilannya seperti disk yang sempurna?', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri. Ingatlah bahwa rendaku mengubah へき menjadi ぺき.', 'Sempurna, Tanpa cela, Menyelesaikan')
    RETURNING id INTO v_9006_sempurna;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '由緒', 'garis-keturunan', 38, 154, '<kanji>alasan</kanji> utama di balik <kanji>koneksi</kanji> Anda dengan beberapa orang adalah <vocabulary>silsilah</vocabulary> atau <vocabulary>sejarah</vocabulary> Anda. Silsilah dan sejarah mengikat orang-orang (terutama keluarga) menjadi satu.

Kata ini dapat digunakan untuk orang-orang dengan garis keturunan keluarga yang bergengsi serta untuk bangunan bersejarah, khususnya candi dan tempat pemujaan.', 'Anda tidak mempelajari bacaan 由 ini dengan kanji, jadi inilah mnemonik untuk membantu Anda:

Jika Anda memiliki <vocabulary>silsilah</vocabulary> yang baik, Anda tidak akan pernah membuat <reading>U-ey</reading> (ゆい) di jalan raya. Itu berbahaya, dan orang-orang dengan garis keturunan baik serta sejarah panjang tidak akan pernah melakukan hal seperti itu.', 'Garis keturunan, Sejarah')
    RETURNING id INTO v_9068_garis_keturunan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '天の川', 'bimasakti', 38, 155, 'Anda sedang melihat <kanji>sungai</kanji> <kanji>surga</kanji>, atau sungai surga. Hanya ada satu sungai di surga (yaitu langit), dan itulah <vocabulary>Bima Sakti</vocabulary>!', 'Ini adalah dua kata individual yang dihubungkan dengan の, jadi menggunakan bacaan kun''yomi. Anda belum mempelajari bacaan ini untuk 天, jadi kami memiliki mnemonik untuk membantu Anda. Hati-hati juga dengan rendaku di 川, mengubahnya menjadi がわ!

<vocabulary>Bima Sakti</vocabulary> mengingatkan Anda pada apa? Itu terlihat seperti sepotong <reading>armor</reading> (あま) yang bersinar. Lihatlah di langit, berkilauan seperti sepotong baju besi perak. Luar biasa, bukan? 

Ringkasnya: 天 dibaca あま di sini, dan 川 diberi rendaku menjadi がわ. Tambahkan の di antaranya dan bacaan lengkap untuk kosakata ini adalah あまのがわ!', 'Bimasakti')
    RETURNING id INTO v_9174_bimasakti;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '炒る', 'untuk-memanggang', 38, 156, 'Kanjinya adalah <kanji>goreng</kanji>. Anda sudah mengetahui kata kerja untuk "menggoreng" (炒める), jadi kata kerja ini untuk teknik memasak yang sedikit berbeda — <vocabulary>memanggang</vocabulary>. 

Lalu apa perbedaan keduanya? Secara umum, 炒める melibatkan penggunaan lemak atau minyak panas, sedangkan 炒る menggambarkan cara memasak yang menggunakan lebih sedikit atau tanpa minyak atau lemak, sering kali untuk mengeringkan makanan. Misalnya, Anda menggunakan 炒める untuk membuat mie goreng atau nasi goreng, dan 炒る untuk memanggang biji wijen atau kacang-kacangan.', 'Karena kata ini memiliki okurigana (hiragana yang dilampirkan pada kanji), Anda tahu bahwa kemungkinan besar kata tersebut akan menggunakan bacaan kun''yomi. Bagian tersulitnya adalah ini tidak menggunakan kun''yomi yang sama dengan 炒める, jadi inilah mnemonik untuk membantu Anda mengingatnya:

Sekarang kamu sudah tahu perbedaan antara menggoreng dan memanggang, kita akan <vocabulary>memanggang</vocabulary> hidangan pertama kita: <reading>Ea</reading>gle (い)! Kudengar itu makanan favoritmu, jadi aku harus menyiapkan ini untukmu. Apa maksudmu "eww"?!', 'Untuk Memanggang, Untuk bersulang')
    RETURNING id INTO v_9272_untuk_memanggang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '食う', 'untuk-makan', 38, 157, 'Anda tahu kanji artinya <kanji>makan</kanji>, dan Anda juga sudah tahu 食べる. Jadi apa masalahnya dengan arti <vocabulary>makan</vocabulary> ini? 

食う memiliki nada yang lebih maskulin dan kasar dibandingkan 食べる, sehingga bisa terkesan kasar atau tidak sopan dalam situasi tertentu. Kata ini juga memiliki kegunaan yang lebih luas, misalnya untuk mengatakan bahwa ada sesuatu yang memakan waktu atau sumber daya, atau untuk mengatakan bahwa Anda digigit oleh serangga. Anda akan menemukan lebih banyak hal seperti ini, tetapi semuanya cukup jelas, jadi jangan khawatir!', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tahu bacaan itu, tapi ini menggunakan cara yang berbeda, jadi inilah mnemonik untuk membantu Anda:

Tidak ada yang lebih Anda sukai <vocabulary>untuk dimakan</vocabulary> selain <reading>coo</reading>kies (く). Anda bisa memakannya siang dan malam, tapi hati-hati, karena itu mungkin sedikit… memakan waktu.', 'Untuk makan, Untuk Mengkonsumsi')
    RETURNING id INTO v_9297_untuk_makan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '第一弾', 'angsuran-pertama', 38, 158, '<kanji>awalan bilangan urut</kanji> <kanji>satu</kanji> <kanji>peluru</kanji> sebenarnya adalah <vocabulary>angsuran pertama</vocabulary> dari sesuatu. Bayangkan seseorang menembakkan senjata untuk memberi tahu semua orang bahwa, ya, ini memang <vocabulary>ronde pertama</vocabulary>… apa pun yang Anda lakukan.

Perhatikan bahwa ini sangat mirip dengan 第一段. Meskipun 第一段 mengacu pada fase atau langkah pertama dalam satu proses atau struktur yang lebih besar dan berkesinambungan, 第一弾 digunakan untuk merujuk pada angsuran pertama atau bagian dari serangkaian peristiwa atau rilis.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Angsuran Pertama, Putaran Pertama, Gelombang Pertama')
    RETURNING id INTO v_9331_angsuran_pertama;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '鞄', 'tas', 38, 159, 'Kanji dan kata-katanya sama persis, jadi ini artinya <vocabulary>bag</vocabulary>.

Anda sebenarnya sudah mempelajari versi kana dari kata ini: カバン. Dalam penulisan biasa, sering kali hanya ditulis dalam kana, namun versi kanji juga cukup umum. Anda terutama akan melihatnya dalam lingkungan komersial — papan tanda dan iklan toko, misalnya — atau dalam literatur dengan nuansa yang lebih dewasa.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji dan カバン.', 'Tas')
    RETURNING id INTO v_9399_tas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '覗く', 'untuk-mengintip', 38, 160, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>mengintip</kanji>, jadi versi kata kerjanya adalah <vocabulary>to peek</vocabulary> atau <vocabulary>to peep at</vocabulary>.

覗く mengacu pada mengintip atau melihat sesuatu, seringkali dengan rasa ingin tahu atau kerahasiaan. Anda akan mendengarnya dalam situasi sehari-hari seperti すき間から覗く (mengintip melalui celah kecil) atau bahkan secara kiasan, seperti 様子を覗く (melihat bagaimana keadaannya).', 'Bacaannya adalah yang Anda pelajari dengan kanji. Kembalilah dan <em>intip</em> halaman kanji lagi jika Anda lupa!', 'Untuk Mengintip, Untuk Mengintip, Untuk Mengintip')
    RETURNING id INTO v_9490_untuk_mengintip;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3008_luar_negeri, 'Luar negeri', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3008_luar_negeri, 'Luar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3008_luar_negeri, 'Luar negeri', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3040_bebaskan_dari_penjara, 'Bebaskan Dari Penjara', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3040_bebaskan_dari_penjara, 'Sumber', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3040_bebaskan_dari_penjara, 'Asal', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4748_batas_waktu, 'Batas waktu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4748_batas_waktu, 'Periode', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6078_untuk_kembali, 'Untuk Kembali', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6078_untuk_kembali, 'Untuk Mengembalikan Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6103_penyadapan, 'Penyadapan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6103_penyadapan, 'Mengganggu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6103_penyadapan, 'Mendengarkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6139_perusahaan_perdagangan, 'Perusahaan Perdagangan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6140_gen, 'Gen', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6141_prefektur_nara, 'Prefektur Nara', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6142_untuk_menghapuskan, 'Untuk Menghapuskan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6143_untuk_mentransfer, 'Untuk Mentransfer', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6143_untuk_mentransfer, 'Untuk Mengganti Kereta', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6144_untuk_menunjukkan, 'Untuk Menunjukkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6144_untuk_menunjukkan, 'Untuk Mengidentifikasi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6145_okinawa, 'Okinawa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6146_untuk_mempertahankan, 'Untuk Mempertahankan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6147_restorasi_meiji, 'Restorasi Meiji', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6148_kunjungan_simpati, 'Kunjungan Simpati', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6149_bola, 'Bola', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6149_bola, 'Menari', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6150_biasa, 'Biasa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6150_biasa, 'Umum', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6150_biasa, 'Umum', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6151_umum, 'Umum', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6151_umum, 'Keseluruhan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6151_umum, 'Di Seluruh Papan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6152_sebuah_bantuan, 'Sebuah Bantuan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6152_sebuah_bantuan, 'Kebaikan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6152_sebuah_bantuan, 'Sebuah Permintaan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6152_sebuah_bantuan, 'Meminta', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6153_untuk_mengandalkan, 'Untuk Mengandalkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6153_untuk_mengandalkan, 'Untuk Percaya', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6153_untuk_mengandalkan, 'Untuk Bergantung Pada', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6154_klien, 'Klien', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6155_absurd, 'Absurd', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6156_tuntutan, 'Tuntutan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6157_kebutuhan, 'Kebutuhan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6157_kebutuhan, 'Penting', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6158_bertahun_tahun, 'Bertahun-tahun', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6158_bertahun_tahun, 'Usia', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6159_orang_lanjut_usia, 'Orang Lanjut Usia', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6159_orang_lanjut_usia, 'Orang Tua', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6160_usia_tua, 'Usia Tua', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6161_bagus, 'Bagus', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6161_bagus, 'Oke', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6161_bagus, 'Baiklah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6161_bagus, 'Bagus', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6162_untuk_memutar, 'Untuk Memutar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6162_untuk_memutar, 'Untuk Menyerahkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6162_untuk_memutar, 'Untuk Masuk', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6162_untuk_memutar, 'Untuk Mengacak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6163_untuk_dihindari, 'Untuk Dihindari', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6163_untuk_dihindari, 'Untuk Menghindar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6164_pengungsian, 'Pengungsian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6165_pengendalian_kelahiran, 'Pengendalian kelahiran', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6165_pengendalian_kelahiran, 'Kontrasepsi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6166_menjadi_hamil, 'Menjadi Hamil', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6166_menjadi_hamil, 'Untuk Hamil', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6167_wanita_hamil, 'Wanita Hamil', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6168_yang_harus_dilakukan, 'Yang Harus Dilakukan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6169_untuk_mencocokkan, 'Untuk Mencocokkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6170_fatal, 'Fatal', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6171_edisi_pagi, 'Edisi Pagi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6172_edisi_bulanan, 'Edisi Bulanan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6173_edisi_malam, 'Edisi Malam', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6174_untuk_menerbitkan, 'Untuk Menerbitkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6175_edisi_harian, 'Edisi Harian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6176_pertunjukan_musik, 'Pertunjukan Musik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6176_pertunjukan_musik, 'Pertunjukan Musik', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6177_pertunjukan_musik, 'Pertunjukan Musik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6177_pertunjukan_musik, 'Pertunjukan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6178_untuk_menemani, 'Untuk Menemani', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6178_untuk_menemani, 'Untuk Ditemani Oleh', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6178_untuk_menemani, 'Untuk Berjalan Bergandengan Tangan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6179_untuk_menemani, 'Untuk Menemani', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6181_aneksasi, 'Aneksasi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6181_aneksasi, 'Penggabungan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6182_menjadi_condong, 'Menjadi Condong', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6182_menjadi_condong, 'Menjadi Miring', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6183_kecenderungan, 'Kecenderungan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6184_sebaliknya, 'Sebaliknya', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6184_sebaliknya, 'Alih-alih', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6184_sebaliknya, 'Lebih tepatnya', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6185_penolakan, 'Penolakan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6185_penolakan, 'Pemecatan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6186_jauh_kembali, 'Jauh Kembali', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6186_jauh_kembali, 'Di Belakang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6187_istri, 'Istri', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6188_pengekangan, 'Pengekangan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6188_pengekangan, 'Menolak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6188_pengekangan, 'Keraguan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6189_pertimbangan, 'Pertimbangan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6189_pertimbangan, 'Peduli', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6190_pertimbangan, 'Pertimbangan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6191_untuk_mempertaruhkan, 'Untuk Mempertaruhkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6191_untuk_mempertaruhkan, 'Untuk Mengambil Risiko', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6192_ingin_sekali, 'Ingin sekali', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6192_ingin_sekali, 'Keinginan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6193_gugus, 'Gugus', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6193_gugus, 'Rumbai', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6193_gugus, 'Kelompok', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6193_gugus, 'Kuncung', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6194_ac, 'AC', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6195_pemanas, 'Pemanas', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6195_pemanas, 'Panas', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6196_untuk_menangani, 'Untuk Menangani', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6196_untuk_menangani, 'Untuk Mengobati', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6197_penindasan, 'Penindasan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6198_kontrol, 'Kontrol', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6198_kontrol, 'Pengekangan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6199_pencegah, 'Pencegah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6199_pencegah, 'Pencegahan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6199_pencegah, 'Menghalangi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6199_pencegah, 'Mencegah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6200_pilihan, 'Pilihan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6200_pilihan, 'Pilihan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6201_penggambaran, 'Penggambaran', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6202_menggambar, 'Menggambar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6202_menggambar, 'Lukisan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6203_menggambar, 'Menggambar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6203_menggambar, 'Untuk Melukis', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6203_menggambar, 'Untuk mengilustrasikan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6203_menggambar, 'Untuk Menggambarkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6204_baki, 'Baki', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6204_baki, 'Papan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6204_baki, 'Cakram', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6205_disk, 'Disk', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6205_disk, 'Piring Terbang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6206_basis, 'Basis', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6206_basis, 'Dasar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6206_basis, 'Dasar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6207_simetri, 'Simetri', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6208_nama_kerja, 'Nama Kerja', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6208_nama_kerja, 'Nama Sementara', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6209_orang_pertama, 'Orang Pertama', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6210_bersama, 'Bersama', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6211_rahasia, 'Rahasia', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6211_rahasia, 'Rahasia', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6212_longgar, 'Longgar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6213_untuk_melonggarkan, 'Untuk Melonggarkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6214_longgar, 'Longgar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6214_longgar, 'Lembut', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6214_longgar, 'Lembut', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6215_memperuntukkan, 'Memperuntukkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6215_memperuntukkan, 'Mempercayakan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6215_memperuntukkan, 'Konsinyasi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6216_untuk_mempercayakan, 'Untuk Mempercayakan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6217_memercayai, 'Memercayai', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6217_memercayai, 'Mempercayakan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6218_dipercayakan, 'Dipercayakan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6218_dipercayakan, 'Melakukan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6219_untuk_memberikan_hadiah, 'Untuk Memberikan Hadiah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6219_untuk_memberikan_hadiah, 'Untuk Hadiah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6220_penyuapan, 'Penyuapan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6221_menyuap, 'Menyuap', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6222_untuk_membayar, 'Untuk Membayar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6222_untuk_membayar, 'Untuk Menutupi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6223_untuk_melarikan_diri, 'Untuk Melarikan Diri', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6223_untuk_melarikan_diri, 'Untuk melarikan diri', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6223_untuk_melarikan_diri, 'Untuk Melarikan Diri', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6224_melarikan_diri, 'Melarikan diri', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6224_melarikan_diri, 'Penerbangan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6225_mencapai_home_plate, 'Mencapai Home Plate', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6225_mencapai_home_plate, 'Kembali Hidup', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6226_kembali, 'Kembali', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6226_kembali, 'Restorasi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6227_berikan_sesuatu_kembali, 'Berikan Sesuatu Kembali', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6227_berikan_sesuatu_kembali, 'Pengurangan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6228_tahu_rebus, 'Tahu Rebus', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6229_untuk_meregangkan_sesuatu, 'Untuk Meregangkan Sesuatu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6230_untuk_berusaha, 'Untuk Berusaha', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6230_untuk_berusaha, 'Untuk Menyebabkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6231_maupun, 'Maupun', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6232_untuk_melangkah, 'Untuk Melangkah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6232_untuk_melangkah, 'Untuk Melangkah Keras', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6232_untuk_melangkah, 'Untuk Mengganggu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6232_untuk_melangkah, 'Untuk Menyelidiki', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6233_untuk_melebihi, 'Untuk Melebihi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6233_untuk_melebihi, 'Untuk Pergi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6233_untuk_melebihi, 'Untuk Melampaui', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6236_tali_lepas, 'Tali Lepas', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6236_tali_lepas, 'Gambut', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6236_tali_lepas, 'Wilayah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6236_tali_lepas, 'Domain', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6791_rempah_rempah, 'Rempah-rempah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6793_kesabaran, 'Kesabaran', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6793_kesabaran, 'Ketahanan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7610_menonjol, 'Menonjol', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7610_menonjol, 'Dalam', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7664_menguap, 'Menguap', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7664_menguap, 'Menguap', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7778_absurd, 'Absurd', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7778_absurd, 'Konyol', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7778_absurd, 'Konyol', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8557_acar_dalam, 'Acar dalam', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8557_acar_dalam, 'Diasinkan dalam', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8729_kedalaman, 'Kedalaman', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8729_kedalaman, 'Dasar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8869_lutut, 'Lutut', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8870_tempurung_lutut, 'tempurung lutut', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8870_tempurung_lutut, 'Tempurung lutut', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8983_untuk_menggigit, 'Untuk Menggigit', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8983_untuk_menggigit, 'Untuk Mengunyah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9006_sempurna, 'Sempurna', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9006_sempurna, 'Tanpa cela', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9006_sempurna, 'Menyelesaikan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9068_garis_keturunan, 'Garis keturunan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9068_garis_keturunan, 'Sejarah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9174_bimasakti, 'Bimasakti', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9272_untuk_memanggang, 'Untuk Memanggang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9272_untuk_memanggang, 'Untuk bersulang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9297_untuk_makan, 'Untuk makan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9297_untuk_makan, 'Untuk Mengkonsumsi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9331_angsuran_pertama, 'Angsuran Pertama', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9331_angsuran_pertama, 'Putaran Pertama', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9331_angsuran_pertama, 'Gelombang Pertama', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9399_tas, 'Tas', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9490_untuk_mengintip, 'Untuk Mengintip', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9490_untuk_mengintip, 'Untuk Mengintip', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9490_untuk_mengintip, 'Untuk Mengintip', false, true);

  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3008_luar_negeri, 'たいがい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3040_bebaskan_dari_penjara, 'しゅっしょ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3040_bebaskan_dari_penjara, 'でどころ', NULL, false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4748_batas_waktu, 'じげん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6078_untuk_kembali, 'もどす', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6103_penyadapan, 'とうちょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6139_perusahaan_perdagangan, 'ぼうえきがいしゃ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6140_gen, 'いでんし', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6141_prefektur_nara, 'ならけん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6142_untuk_menghapuskan, 'はいしする', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6143_untuk_mentransfer, 'のりかえる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6144_untuk_menunjukkan, 'してきする', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6145_okinawa, 'おきなわ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6146_untuk_mempertahankan, 'いじする', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6147_restorasi_meiji, 'めいじいしん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6148_kunjungan_simpati, 'おみまい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6149_bola, 'ぶとうかい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6150_biasa, 'いっぱんてき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6151_umum, 'ぜんぱんてき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6152_sebuah_bantuan, 'たのみ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6153_untuk_mengandalkan, 'たよる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6154_klien, 'いらいにん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6155_absurd, 'ばからしい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6156_tuntutan, 'じゅよう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6157_kebutuhan, 'ひつじゅひん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6158_bertahun_tahun, 'ねんれい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6159_orang_lanjut_usia, 'こうれいしゃ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6160_usia_tua, 'ろうれい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6161_bagus, 'よろしい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6162_untuk_memutar, 'くる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6163_untuk_dihindari, 'さける', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6163_untuk_dihindari, 'よける', NULL, false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6164_pengungsian, 'ひなん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6165_pengendalian_kelahiran, 'ひにん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6166_menjadi_hamil, 'にんしんする', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6167_wanita_hamil, 'にんぷ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6168_yang_harus_dilakukan, 'いたす', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6169_untuk_mencocokkan, 'いっちする', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6170_fatal, 'ちめいてき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6171_edisi_pagi, 'ちょうかん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6172_edisi_bulanan, 'げっかん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6173_edisi_malam, 'ゆうかん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6174_untuk_menerbitkan, 'かんこうする', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6175_edisi_harian, 'にっかん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6176_pertunjukan_musik, 'そうがく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6177_pertunjukan_musik, 'えんそう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6178_untuk_menemani, 'ともなう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6179_untuk_menemani, 'どうはんする', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6181_aneksasi, 'へいごう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6182_menjadi_condong, 'かたむく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6183_kecenderungan, 'けいこう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6184_sebaliknya, 'かえって', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6185_penolakan, 'きゃっか', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6186_jauh_kembali, 'おく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6187_istri, 'おくさん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6188_pengekangan, 'えんりょ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6189_pertimbangan, 'はいりょ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6190_pertimbangan, 'こうりょ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6191_untuk_mempertaruhkan, 'かける', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6192_ingin_sekali, 'けんめい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6193_gugus, 'ふさ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6194_ac, 'れいぼう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6195_pemanas, 'だんぼう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6196_untuk_menangani, 'あつかう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6197_penindasan, 'よくあつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6198_kontrol, 'よくせい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6199_pencegah, 'よくし', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6200_pilihan, 'せんたく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6201_penggambaran, 'びょうしゃ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6202_menggambar, 'びょうが', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6203_menggambar, 'かく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6203_menggambar, 'えがく', NULL, false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6204_baki, 'ばん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6205_disk, 'えんばん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6206_basis, 'きばん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6207_simetri, 'たいしょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6208_nama_kerja, 'かしょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6209_orang_pertama, 'いちにんしょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6210_bersama, 'いっしょ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6211_rahasia, 'ないしょ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6212_longgar, 'ゆるい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6213_untuk_melonggarkan, 'ゆるむ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6214_longgar, 'ゆるやか', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6215_memperuntukkan, 'いたく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6216_untuk_mempercayakan, 'たくす', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6217_memercayai, 'しんたく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6218_dipercayakan, 'じゅたく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6219_untuk_memberikan_hadiah, 'おくる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6220_penyuapan, 'ぞうしゅうわい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6221_menyuap, 'わいろ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6222_untuk_membayar, 'まかなう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6223_untuk_melarikan_diri, 'にげる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6224_melarikan_diri, 'とうぼう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6225_mencapai_home_plate, 'せいかん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6226_kembali, 'へんかん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6227_berikan_sesuatu_kembali, 'かんげん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6228_tahu_rebus, 'ゆどうふ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6229_untuk_meregangkan_sesuatu, 'のばす', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6230_untuk_berusaha, 'およぼす', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6231_maupun, 'および', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6232_untuk_melangkah, 'ふみこむ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6233_untuk_melebihi, 'こす', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6236_tali_lepas, 'なわばり', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6791_rempah_rempah, 'こうしんりょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6793_kesabaran, 'しんぼう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7610_menonjol, 'おくぶかい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7610_menonjol, 'おくふかい', NULL, false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7664_menguap, 'あくび', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7778_absurd, 'ばかばかしい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8557_acar_dalam, 'づけ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8729_kedalaman, 'おくそこ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8869_lutut, 'ひざ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8870_tempurung_lutut, 'ひざがしら', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8983_untuk_menggigit, 'かむ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9006_sempurna, 'かんぺき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9068_garis_keturunan, 'ゆいしょ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9174_bimasakti, 'あまのがわ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9272_untuk_memanggang, 'いる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9297_untuk_makan, 'くう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9331_angsuran_pertama, 'だいいちだん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9399_tas, 'かばん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9490_untuk_mengintip, 'のぞく', NULL, true, true);

  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3008_luar_negeri, 'この会社は対外のビジネスに力を入れています。', 'Perusahaan ini fokus pada bisnis di luar negeri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3008_luar_negeri, '社長は、いつも「対外へのイメージを上げたい」と言っています。', 'Presiden selalu mengatakan ingin meningkatkan citra publik kita.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3008_luar_negeri, '対外コミュニケーションについて不安はありません。', 'Tidak ada kekhawatiran tentang komunikasi eksternal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3040_bebaskan_dari_penjara, '主人の出所は明日の午前中です。', 'Suamiku akan dibebaskan besok pagi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3040_bebaskan_dari_penjara, '大切なのは出所した後のことです。', 'Yang penting adalah apa yang terjadi setelah seseorang dibebaskan dari penjara.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3040_bebaskan_dari_penjara, 'この引用の出所は何ですか？', 'Apa sumber kutipan ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4748_batas_waktu, '時限爆弾がきちんと引き出しの中にしまわれていることを確認した。', 'Saya memastikan bom waktu terpasang rapi di laci.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4748_batas_waktu, '今日の最後の時限は、なんとトーフグのコウイチのレクチャーだったんだよ！', 'Kelas terakhir hari ini sebenarnya adalah ceramah Koichi dari Tofugu!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4748_batas_waktu, '四時限目の調理実習で豆を食べたから、もうすぐ僕の時限爆弾が爆発するかもしれない。', 'Saya makan kacang selama kelas memasak jam keempat, jadi bom waktu mungkin akan segera meledak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4748_batas_waktu, 'カナダでは、2023年1月1日から2年間、カナダ人以外が住宅用不動産を買うことが禁止される時限的な制限が設けられました。', 'Di Kanada, pembatasan sementara telah diberlakukan yang melarang warga negara non-Kanada membeli real estat tempat tinggal untuk jangka waktu dua tahun, mulai tanggal 1 Januari 2023.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6078_untuk_kembali, '「彼にあんなひどいこと言わなければよかったわ。」「そうね。でも、言ってしまったことはもう元には戻せないわ。」', '"Kuharap aku tidak mengatakan hal buruk itu padanya." "Ya, tapi begitu kamu mengatakan sesuatu, kamu tidak bisa mengulanginya lagi."');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6103_penyadapan, '何だか盗聴されているような気がするんだよね。', 'Aku punya perasaan bahwa seseorang sedang mendengarkanku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6103_penyadapan, '彼女は盗聴を心配して、言葉を選んだ。', 'Khawatir seseorang akan mendengarkannya, dia memilih kata-katanya dengan hati-hati.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6103_penyadapan, 'うちのお父さんは、マフィアのボスだと疑われて、FBIに電話を盗聴されたことがあるんだよ。', 'Ayah saya pernah dicurigai sebagai bos mafia, dan teleponnya disadap oleh FBI.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6103_penyadapan, '誰かがトーフグのオフィスに盗聴器を仕掛けたのですが、私達は犯人も理由も分かりません。', 'Seseorang menyadap kantor Tofugu, tapi kami tidak tahu siapa atau mengapa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6139_perusahaan_perdagangan, '三百人以上の人がその貿易会社の職に応募したが、誰も採用されなかったそうだよ。', 'Lebih dari 300 orang melamar posisi di perusahaan perdagangan tersebut, namun sepertinya tidak satupun dari mereka yang dipekerjakan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6140_gen, '本当に彼らは父親を鑑定する遺伝子検査を受けたいんでしょうか。', 'Saya bertanya-tanya apakah mereka benar-benar ingin melakukan tes garis ayah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6141_prefektur_nara, '私が奈良県に住んでいる時は、彼女は親友の一人でしたが、私が大阪に引っ越してからは疎遠になりつつあります。', 'Dia adalah salah satu sahabatku ketika aku tinggal di prefektur Nara, tapi kami berpisah sejak aku pindah ke Osaka.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6141_prefektur_nara, '奈良県での紛争が収まった後に、復興に向けた取り組みが始まった。', 'Setelah konflik di Prefektur Nara mereda, upaya pemulihan pun dimulai.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6142_untuk_menghapuskan, '教師陣が制服を廃止するかどうか検討しているそうですよ。', 'Tampaknya para guru sedang mempertimbangkan untuk menghapuskan seragam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6143_untuk_mentransfer, '新宿駅で中央線から山手線に乗り換えて上野駅まで来てください。', 'Datanglah ke Stasiun Ueno dengan transfer dari Chuo Line ke Yamanote Line di stasiun Shinjuku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6143_untuk_mentransfer, '飛行機をうまく乗り換えることができるかどうか心配しています。', 'Saya khawatir tentang seberapa baik saya bisa berpindah pesawat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6143_untuk_mentransfer, 'どこでどのバスに乗り換えれば金閣寺に着くのか、奥へ行ってカウンターのところで聞いてみよう！', 'Ayo masuk dan tanyakan di konter bus mana yang harus diambil dan transfer ke mana untuk sampai ke Kuil Kinkakuji!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6144_untuk_menunjukkan, '何名かの歩行者が、運転者が赤信号を無視したことを指摘しました。', 'Beberapa pejalan kaki mengatakan bahwa pengemudi mengabaikan lampu lalu lintas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6144_untuk_menunjukkan, 'コウイチは、洞窟の奥には何もなかったというビエトの証言は嘘だと指摘した。', 'Koichi mengidentifikasi bahwa kesaksian Viet bahwa tidak ada apa pun di belakang gua itu salah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6145_okinawa, 'うちの娘は沖縄が大好きで、一体いつ戻ってくるのかさっぱり分かりません。', 'Saya tidak yakin kapan putri saya akan kembali dari Okinawa karena dia sangat suka berada di sana.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6146_untuk_mempertahankan, '健康を維持するために、何か運動をする方がいいよ。', 'Anda harus melakukan beberapa latihan untuk menjaga kesehatan Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6147_restorasi_meiji, '蛍光灯は明治維新の頃にはまだ無かったんだよね。', 'Lampu neon belum ada pada masa Restorasi Meiji, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6148_kunjungan_simpati, '病院にお見舞いに行くと、彼女の部屋はたくさんの花で飾られていました。', 'Ketika saya mengunjunginya di rumah sakit, kamarnya dihiasi banyak bunga.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6149_bola, '今回の舞踏会には、前回よりも明るい色のドレスを着て行くつもりです。', 'Untuk tarian ini, aku berpikir untuk mengenakan gaun dengan warna yang lebih cerah dibandingkan sebelumnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6150_biasa, 'ワニカニは、一般的な漢字学習教材とは何が違うんですか？', 'Apa yang membedakan WaniKani dengan materi pembelajaran kanji biasa?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6150_biasa, '一般的に、日本では結婚すると女性が名字を変えます。', 'Umumnya di Jepang, wanita mengganti nama keluarga mereka ketika mereka menikah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6150_biasa, '大学卒業後も実家に住み続けることは、日本ではそこそこ一般的です。', 'Melanjutkan tinggal di rumah orang tua setelah lulus perguruan tinggi adalah hal yang lumrah di Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6151_umum, '全般的に、犬は猫を怖がるものじゃないんですかね。', 'Anjing pada umumnya takut pada kucing, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6152_sebuah_bantuan, 'コウイチはビエトに窓を開けるよう頼みましたが、ビエトはコウイチの頼みを拒絶しました。', 'Koichi meminta Viet untuk membuka jendela, namun Viet menolak permintaan Koichi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6153_untuk_mengandalkan, '彼の事を頼っていいものか決めかねています。', 'Aku bertanya-tanya apakah aku harus bergantung padanya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6153_untuk_mengandalkan, '彼は懐中電灯を頼りに、ゆっくりと進んだ。', 'Dia bergerak maju perlahan, dipandu oleh senternya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6154_klien, 'もう少し我慢すれば、依頼人が誰だか分かったのに。', 'Jika Anda memiliki lebih banyak kesabaran, Anda bisa mengetahui siapa kliennya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6155_absurd, '全く馬鹿らしいにもほどがある！！！', 'Itu benar-benar tidak masuk akal!!!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6156_tuntutan, 'トーフグTシャツは需要は大きいかもしれないけど、コスパがあまり良くないんだよね。', 'Kaos Tofugu mungkin memiliki permintaan yang tinggi, namun performa biayanya tidak bagus.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6157_kebutuhan, '新生児にとっての必需品って何だろう。', 'Entah apa saja kebutuhan bayi yang baru lahir.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6158_bertahun_tahun, '「年齢はおいくつですか？」「あまり言いたくないです。」「じゃあ、別にいいよ。ただ、百歳を超えてるかどうかだけ教えてくれない？」', '"Berapa usiamu?" "Saya lebih suka tidak mengatakannya." "Baiklah kalau begitu. Beritahu aku jika umurmu lebih dari 100 tahun."');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6159_orang_lanjut_usia, '高齢者たちは、雇用について難しい問題を抱えています。', 'Orang lanjut usia mempunyai masalah yang sulit dalam hal pekerjaan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6160_usia_tua, '日本の老齢年金の仕組みについてご説明してもらえませんでしょうか。', 'Bisakah Anda menjelaskan kepada saya struktur dana pensiun hari tua di Jepang?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6161_bagus, 'ここにカバンを置かせてもらっても宜しいですか？', 'Bolehkah aku menaruh tasku di sini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6162_untuk_memutar, 'おっと。すみません。トランプを繰るのが苦手なんです。', 'Ups. Saya minta maaf. Saya buruk dalam mengocok kartu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6163_untuk_dihindari, '明日車で母を東京の名所へ案内する予定なんだけど、渋滞をうまく避ける方法とか知らないよね？', 'Saya akan menunjukkan kepada ibu saya pemandangan terkenal Tokyo dengan mobil besok, jadi tahukah Anda cara yang baik untuk menghindari kemacetan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6164_pengungsian, 'その避難梯子はひどく傷んでいるので、交換する必要があります。', 'Pintu keluar kebakaran rusak parah sehingga perlu dilakukan penggantian.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6165_pengendalian_kelahiran, '今年の新年の抱負の一つは、ちゃんと避妊をすること、です。', 'Salah satu resolusi Tahun Baru saya adalah menggunakan kontrasepsi dengan benar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6166_menjadi_hamil, '彼女は尿で妊娠反応検査をして、お医者さんから妊娠していると言われました。', 'Dia menjalani tes kehamilan urin dan dokter memberi tahu dia bahwa dia hamil.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6167_wanita_hamil, '妊婦さんのためのカウンセラーという、臨時の仕事が見つかりました。', 'Saya mendapat pekerjaan sementara sebagai konselor ibu hamil.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6168_yang_harus_dilakukan, 'もしよろしければ私が町をご案内致しますよ。', 'Saya akan memandu Anda berkeliling kota, jika Anda mau.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6169_untuk_mencocokkan, '偽のベーコンに残された指紋は、マミのものと一致しました。', 'Sidik jari yang tertinggal di daging palsu itu cocok dengan sidik jari Mami.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6170_fatal, '生徒とのスキャンダルは、彼の教師生命にとって致命的でした。', 'Skandal dengan muridnya berakibat fatal bagi karir mengajarnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6171_edisi_pagi, '今日の朝刊の大ニュースには、誰もが多かれ少なかれ興味を抱いているんじゃないかな。', 'Menurut saya, kita masing-masing kurang lebih tertarik dengan berita utama surat kabar pagi ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6172_edisi_bulanan, '月刊誌『ベーコン』は、エープリルフールのジョークとして、「ノーベルベーコン賞はマミに授与された。」と報じた。', 'Majalah bulanan bernama "The Bacon" melaporkan bahwa hadiah Nobel untuk bacon diberikan kepada Mami sebagai lelucon April Mop.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6173_edisi_malam, 'どの新聞の夕刊でも、株式市場の大暴落が一面記事で報じられた。', 'Edisi malam setiap surat kabar melaporkan jatuhnya pasar saham sebagai berita halaman depan mereka.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6174_untuk_menerbitkan, 'マミはアヤに、ベーコン雑誌を一緒に刊行しないかと尋ねた。', 'Mami meminta Aya untuk menerbitkan majalah bacon bersamanya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6175_edisi_harian, 'アヤが描いたパグのイラストが、ある日刊紙のマスコットキャラクターに選ばれました。', 'Ilustrasi anjing pesek lucu karya Aya terpilih sebagai karakter maskot surat kabar harian.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6176_pertunjukan_musik, '千円くらいの、奏楽用のハンドベルはありますか？', 'Apakah Anda memiliki bel musik seharga sekitar 1000 yen?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6177_pertunjukan_musik, 'バンドが舞台で演奏をしている最中に、電球が切れてしまいました。', 'Bola lampu padam saat band tampil di atas panggung.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6178_untuk_menemani, '上司に伴って出張に行ってきました。', 'Saya menemani bos saya dalam perjalanan bisnis.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6178_untuk_menemani, '登山は危険を伴うものです。甘く見てはいけません！', 'Pendakian gunung bisa berbahaya. Jangan anggap enteng!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6178_untuk_menemani, 'はっきり言わせてもらうけど、責任を伴わない自由はただのわがままだよ。', 'Biar saya perjelas: kebebasan tanpa tanggung jawab hanyalah keegoisan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6178_untuk_menemani, '技術の進歩に伴って人々は自然環境にだんだん関心がなくなってきた。', 'Seiring dengan kemajuan teknologi, kepedulian masyarakat terhadap lingkungan semakin berkurang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6179_untuk_menemani, '今日は奥さんが同伴するのかと思ってたよ。', 'Saya pikir Anda akan ditemani istri Anda hari ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6181_aneksasi, 'アメリカ合衆国は、私が生まれた年にテキサスを併合しました。', 'Amerika Serikat mencaplok Texas pada tahun saya dilahirkan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6182_menjadi_condong, 'その松の木は、少し南の方向へ傾いています。', 'Pohon pinus itu agak condong ke arah selatan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6183_kecenderungan, '日本人は外国人と喋る時、英語訛りの日本語を話す傾向があります。', 'Orang Jepang cenderung berbicara bahasa Jepang dengan aksen Inggris ketika berbicara dengan orang asing.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6184_sebaliknya, ' 「大丈夫」と言われるたびに、却って不安になった。', 'Setiap kali aku diberitahu "kamu akan baik-baik saja", itu hanya membuatku semakin cemas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6184_sebaliknya, '説明を長くすると、却って分かりにくくなるよ。', 'Memperpanjang penjelasan justru membuat lebih sulit untuk dipahami.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6184_sebaliknya, '気をつかって遠回しに言ったら、却って誤解を生んでしまった。', 'Aku mencoba untuk bertimbang rasa dan mengatakan sesuatu secara tidak langsung, tapi itu hanya berakhir dengan kesalahpahaman.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6184_sebaliknya, '良かれと思ってしたことが、却って裏目に出て友人のストレスになってしまいました。', 'Maksudku baik, tapi tindakanku menjadi bumerang dan malah membuat temanku stres.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6185_penolakan, 'トーフグのメンバー全員がバンジージャンプに挑戦するというアイディアは、速攻で却下されました。', 'Ideku agar semua anggota Tofugu melakukan bungee jump dengan cepat ditolak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6186_jauh_kembali, '奥にもっと小さいサイズのものも置いてますよ。', 'Kami memiliki yang berukuran lebih kecil di belakang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6186_jauh_kembali, 'お前に借りたシャツならタンスの奥にしまってあるよ。', 'Kalau kamu sedang mencari baju yang aku pinjam darimu, aku taruh di laci paling belakang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6186_jauh_kembali, 'このホテルは、フロントデスクが奥にあるんですね！', 'Saya melihat di hotel ini meja depan terletak di belakang!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6187_istri, '「おまえの奥さんって、どんな人？」「彼女は何でもバリバリやるタイプだよ。」', '“Orang seperti apa istrimu?” "Dia tipe orang yang melakukan segalanya dengan penuh semangat."');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6188_pengekangan, '質問があればどんなものでも遠慮なくおっしゃって下さいね。', 'Jangan ragu untuk menanyakan pertanyaan apa pun kepada saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6189_pertimbangan, 'お母さん、大人って子供への配慮が欠けていると思わない？', 'Bu, bukankah menurutmu orang dewasa kurang memperhatikan anak-anak?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6190_pertimbangan, '私の家族ではなく自分の家族のことを考慮してください。', 'Tolong pertimbangkan keluargamu sendiri, bukan keluargaku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6191_untuk_mempertaruhkan, '何か命を懸けるほどのものはありますか。', 'Apakah Anda mempunyai sesuatu yang mempertaruhkan hidup Anda?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6192_ingin_sekali, '足が泥にはまって、一生懸命抜こうとしてみたんですが、できなかったんです。', 'Kakiku terjebak dalam lumpur dan aku berusaha sekuat tenaga untuk mengeluarkannya, tapi aku tidak bisa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6193_gugus, 'このブドウ、三房で298円だったんですよ。', 'Anggur ini berharga 298 yen untuk tiga tandan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6193_gugus, '最近、房子は房飾りを中国から輸入してフリマで売っているらしいよ。', 'Baru-baru ini saya mendengar Fusako mengimpor jumbai dari Tiongkok dan menjualnya di pasar loak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6193_gugus, '「一房の髪」という小説に熱中しすぎていて、お気に入りのカバンをどこかに落としてしまったことに気が付かなかった。', 'Saking asyiknya aku dengan novel "A Tuft of Hair", aku tak sadar tas kesayanganku terjatuh entah ke mana.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6194_ac, '暑すぎだよ〜。ちょっと冷房付けてもらえないかな。', 'Ini terlalu panas. Bisakah Anda menyalakan AC?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6195_pemanas, '何で暖房消したの？パイプが全部凍っちゃったじゃない。', 'Mengapa Anda mematikan api? Semua pipanya benar-benar beku!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6196_untuk_menangani, '夫の連れ子にまるで他人の用に扱われて、すごくストレスが溜まります。', 'Anak tiriku memperlakukanku seperti aku orang asing dan itu membuatku sangat stres.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6197_penindasan, '警察は、その暴動を抑圧するのにしばらく時間がかかりました。', 'Polisi butuh waktu beberapa saat untuk meredam kerusuhan tersebut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6198_kontrol, '生理前は、月経前症候群のせいで、感情をうまく抑制することができません。', 'Saya tidak bisa mengontrol emosi saya dengan baik sebelum menstruasi karena PMS.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6199_pencegah, 'どの国が一番素晴らしい犯罪抑止モデルを有していると思われますか。', 'Menurut Anda negara mana yang memiliki model pencegahan kejahatan terbaik?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6200_pilihan, '私の大学では、第二外国語は自由に選べるんですが、どの言語を選択するか迷いに迷っています。', 'Di universitas saya, kami bebas memilih bahasa kedua dan saya bingung harus memilih bahasa yang mana.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6201_penggambaran, 'アヤは、トーフグ殺人事件を細部に渡って描写した。', 'Aya menggambar secara detail kasus pembunuhan Tofugu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6202_menggambar, 'クロード・モネは、点画法という、点描画法とは少し違った技法を得意としていました。', 'Claude Monet sangat pandai dalam membuat stippling, yang sedikit berbeda dengan pointillisme.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6203_menggambar, 'うちのロゴを違う色でも描いてみてもらえますか。', 'Bisakah Anda menggambar logo kami dengan warna berbeda?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6204_baki, '私はビートルズのビニール盤を収集しています。', 'Saya sedang mengoleksi piringan hitam The Beatles.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6205_disk, 'しばらくすると、ジェームズは円盤を脇に抱えて戻ってきて、UFOを見つけたんだと言いました。', 'Setelah beberapa saat, James kembali dengan membawa piringan di bawah lengannya dan memberi tahu kami bahwa dia menemukan UFO.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6206_basis, 'ベーコン事業に先立ち、まずは資金基盤を築くつもりです。', 'Kami akan membangun basis dana untuk bisnis bacon terlebih dahulu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6207_simetri, 'アシメっていう左右非対称のショートカットにしてみようかなって思ってるんだよね。', 'Saya sedang berpikir untuk mendapatkan potongan rambut pendek asimetris yang disebut "ashime".');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6208_nama_kerja, 'この建設中のショッピングモールの仮称知ってる？', 'Tahukah Anda nama sementara pusat perbelanjaan yang sedang dibangun ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6208_nama_kerja, 'タイトルはまだ単なる仮称です。', 'Judul tersebut hanya sekedar nama sementara untuk saat ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6208_nama_kerja, 'トーフグが仮称だったなんて、びっくりだよ。', 'Saya terkejut saat mengetahui bahwa Tofugu hanyalah sebuah nama kerja.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6209_orang_pertama, 'このホラー映画は、一人称の視点から撮影されています。', 'Film horor ini diambil dari sudut pandang orang pertama.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6210_bersama, '「ご一緒してもよろしいですか？」「全然、構いませんよ。どうぞお座りください。」', '"Apakah kamu keberatan jika aku bergabung denganmu?" “Tidak, tidak sama sekali. Silakan duduk.”');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6211_rahasia, '私はICレコーダーで会話を内緒で録音します。', 'Saya diam-diam merekam percakapan dengan perekam IC saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6212_longgar, 'このシャツは首回りが緩いんですよね。', 'Bagian leher kemeja ini cukup longgar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6213_untuk_melonggarkan, 'そのトンネルのボルトは、何本か緩んできています。', 'Beberapa baut di terowongan mulai lepas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6213_untuk_melonggarkan, '彼のジョークにみんなの緊張感が緩んだ。', 'Ketegangan semua orang mengendur karena leluconnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6214_longgar, 'その小川が緩やかに東にカーブしているところがあるんだけど、そこが釣りの穴場なんだよ。', 'Aliran sungainya berbelok lembut ke arah timur dan merupakan tempat memancing yang bagus.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6215_memperuntukkan, 'そいつがさ、男の目隠しまではしたけど、残りの殺人業務は他の暗殺者に委託したって言うんだよ。', 'Dia mengatakan bahwa dia menutup mata orang itu, tetapi mempercayakan sisa pembunuhannya kepada pembunuh lainnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6216_untuk_mempercayakan, '探偵に写真を全部託したのが間違いでした。', 'Merupakan suatu kesalahan untuk mempercayakan semua foto kepada detektif.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6217_memercayai, '私はその証券マンを信頼して、投資信託に大金をつぎ込みました。', 'Saya mempercayai broker investasi dan menginvestasikan banyak uang saya ke reksa dana.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6218_dipercayakan, '当社はシステム開発を受託しています。', 'Perusahaan kami melakukan proyek pengembangan sistem.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6218_dipercayakan, '受託案件が重なって、手が回らないんです。', 'Saya kebanjiran kontrak kerja yang tumpang tindih.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6218_dipercayakan, '我が社にとってその受託契約を受注することがどんなに重要か、分かっているよな。', 'Anda memahami betapa pentingnya bagi kami untuk mengamankan subkontrak itu, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6219_untuk_memberikan_hadiah, '父の日には時計を贈るつもりです。', 'Saya berencana memberi hadiah jam tangan untuk Hari Ayah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6219_untuk_memberikan_hadiah, '感謝の気持ちを贈ります。', 'Saya mengirimkan rasa terima kasih saya kepada Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6219_untuk_memberikan_hadiah, 'ファンタジーベースボールの優勝者には、何か賞品が贈られます。', 'Pemenang baseball fantasi akan diberikan sesuatu sebagai hadiah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6219_untuk_memberikan_hadiah, '森は鳥の歌を私に贈ってくれる。', 'Hutan memberiku anugerah kicau burung.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6220_penyuapan, '父は、私が三歳の時に、「その贈収賄事件には私は関与していない」と母に言うように教えた。', 'Ketika saya berusia tiga tahun, ayah saya mengajari saya untuk mengatakan, "Saya tidak ada hubungannya dengan kasus suap," kepada ibu saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6221_menyuap, ' 彼にはビッグマック以外の賄賂は効かないよ。', 'Tidak mungkin menyuapnya dengan apa pun selain Big Mac.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6222_untuk_membayar, 'もし今赤ちゃんができたら、俺の収入だけで家族を賄うのは無理だと思うんだよ。', 'Saya rasa penghasilan saya tidak akan cukup untuk menghidupi keluarga saya jika kami mempunyai bayi sekarang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6223_untuk_melarikan_diri, '怒り狂った妻から逃げ回っているうちに、スーツがボロボロに痛んでしまいました。', 'Saat melarikan diri dari istriku yang marah, jasku benar-benar robek.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6224_melarikan_diri, '私の弟は優し過ぎて犯罪者達の逃亡を助けてしまい、そのせいで逮捕されてしまいました。', 'Adik laki-laki saya sangat murah hati sehingga dia membantu pelarian para penjahat dan ditangkap karenanya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6225_mencapai_home_plate, '行方不明の英語教師は、足が凍傷になっていたものの、無事に生還しました。', 'Meskipun kakinya membeku, guru bahasa Inggris yang hilang itu kembali hidup dengan selamat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6226_kembali, '沖縄がアメリカから日本に返還されたのは1972年のことです。', 'Okinawa dikembalikan ke Jepang dari Amerika pada tahun 1972.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6226_kembali, '優勝旗が毎年返還されなくちゃいけないなんて、知らなかったよ。', 'Saya tidak tahu bahwa bendera kejuaraan harus dikembalikan setiap tahun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6226_kembali, '今、北方領土問題の二島返還論について調べていたところです。', 'Saya baru saja meneliti pendapat tentang kembalinya kedua pulau yang terlibat dalam sengketa Wilayah Utara.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6227_berikan_sesuatu_kembali, '我々は円高還元セールを実施します。', 'Kami akan mengadakan penjualan untuk meneruskan manfaat dari penguatan yen.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6227_berikan_sesuatu_kembali, '当社では、利益が予想を上回れば、特別配当として株主に還元することになっています。', 'Di perusahaan kami, jika keuntungan melebihi ekspektasi, kami mengembalikannya kepada pemegang saham sebagai dividen tambahan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6227_berikan_sesuatu_kembali, 'このクレジットカードは、今月の終わりまでポイント還元率アップのキャンペーンをしてるので、今入会したらお得ですよ。', 'Kartu kredit ini menawarkan promosi bonus cashback poin hingga akhir bulan ini, jadi jika Anda mendaftar sekarang Anda akan mendapatkan penawaran menarik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6227_berikan_sesuatu_kembali, '電気分解によって、水は水素と酸素に還元される。', 'Melalui elektrolisis, air direduksi menjadi hidrogen dan oksigen.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6228_tahu_rebus, '最初は、どんなもんかなと思って湯豆腐を食べてみただけなんですが、そしたら好きになっちゃったんですよね。', 'Awalnya saya hanya mencoba tahu rebus karena penasaran, dan kemudian saya semakin menyukainya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6229_untuk_meregangkan_sesuatu, '子供がいたずらでゴムを伸ばしすぎて使い物にならなくなりました。', 'Anak saya dengan nakal meregangkan karet elastis secara berlebihan dan membuatnya tidak dapat digunakan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6229_untuk_meregangkan_sesuatu, '祖母は死ぬ間際、私の顔に手を伸ばし、「愛してるよ」と言ってくれました。', 'Nenekku mengulurkan tangannya ke wajahku dan mengatakan padaku, "Aku mencintaimu," tepat sebelum dia meninggal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6229_untuk_meregangkan_sesuatu, 'ピンクの靴下を取ろうと一番上の棚に手を伸ばしたが、背丈が足りずに届かなかった。', 'Aku mencoba meraih rak paling atas untuk mengambil sepasang kaus kaki merah muda, tapi aku tidak cukup tinggi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6230_untuk_berusaha, '今度の台風は、この辺りの地域にじん大な被害を及ぼす可能性があるみたいですよ。', 'Tampaknya topan ini dapat menyebabkan kerusakan parah di wilayah tersebut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6230_untuk_berusaha, '子供の視聴者に害を及ぼすような発言はひかえてください。', 'Harap jangan membuat pernyataan yang merugikan pemirsa anak-anak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6230_untuk_berusaha, '放射能汚染は人体にどのような影響を及ぼすと考えられているのでしょうか。', 'Menurut orang-orang, apa dampak kontaminasi radioaktif terhadap tubuh manusia?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6231_maupun, 'このセキュリティー対策アプリは、AndroidOS及びiOSのどちらでもご利用頂けます。', 'Aplikasi keamanan ini untuk OS Android dan juga iOS.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6232_untuk_melangkah, 'ルームメートが、私のプライバシーに踏み込みすぎだと思うのよね。', 'Menurutku, teman sekamarku terlalu mengganggu privasiku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6233_untuk_melebihi, '彼はあまり自分の気持ちを言葉で表さない人なので、度を超す程私に執着していることを隠していました。', 'Dia sebenarnya bukan tipe orang yang membicarakan perasaannya sendiri, jadi dia menyembunyikan bahwa dia terlalu terobsesi denganku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6236_tali_lepas, '案の定、その場所はヤクザの縄張りだった。', 'Benar saja, tempat itu adalah wilayah yakuza.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6791_rempah_rempah, 'クミンシードは、インドカレーには欠かせない香辛料のうちの一つです。', 'Biji jintan adalah salah satu bumbu penting untuk kari India.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6793_kesabaran, '場違いだって思うかもしれませんが、私のためだと思って辛抱してください。', 'Anda mungkin merasa sedikit tidak pada tempatnya, tapi harap bersabar untuk saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7610_menonjol, '狩人とは非常に奥深い職業です。', 'Seorang pemburu adalah pekerjaan yang sangat mendalam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7664_menguap, '退屈すぎて欠伸が出てきた。', 'Itu terlalu membosankan dan saya menguap.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7778_absurd, '馬鹿馬鹿しいこと言わないでよ。', 'Jangan mengatakan hal-hal bodoh.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8557_acar_dalam, 'キュウリの浅漬けならありますよ。', 'Kami menyediakan acar mentimun ringan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8557_acar_dalam, '私の大好物は、マグロのしょうゆ漬けです。', 'Makanan favorit saya adalah tuna yang direndam dalam kecap.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8557_acar_dalam, 'この株、めっちゃ下がっちゃったから塩漬けにするしかないよ。', 'Saham ini telah turun drastis, satu-satunya pilihan adalah mempertahankannya untuk saat ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8729_kedalaman, '心の奥底でほくそ笑みました。', 'Aku terkekeh dari lubuk hatiku yang paling dalam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8869_lutut, 'ピザを膝の上で食べるのが好きです。', 'Saya suka makan pizza tanpa berlutut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8869_lutut, 'レンタル彼氏に膝をついてプロポーズしてもらうには追加料金が10万円もかかる。', 'Meminta pacar sewaan untuk melamar dengan satu lutut memerlukan biaya tambahan 100.000 yen.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8869_lutut, '私の母は膝で歩くレースの世界記録保持者だ。', 'Ibuku adalah pemegang rekor dunia lomba jalan lutut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8870_tempurung_lutut, '膝頭の毛が気になって眠れることすらできない。', 'Rambut di tempurung lutut saya sangat mengganggu saya sehingga saya bahkan sulit tidur.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8870_tempurung_lutut, 'コウイチが寝ている間に、膝頭に目を書いた。', 'Saat Koichi sedang tidur, aku memperhatikan tempurung lututnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8870_tempurung_lutut, '今年アップル社は、膝頭認証の開発を始めるらしい。', 'Rupanya, tahun ini Apple akan mulai mengembangkan pengenalan tempurung lutut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8983_untuk_menggigit, '狼男に股を噛まれた！', 'Saya digigit di selangkangan oleh manusia serigala!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8983_untuk_menggigit, '私は机を噛むのが好きです。', 'Saya suka menggigit meja saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8983_untuk_menggigit, '爪を噛むクセがあります。', 'Saya mempunyai kebiasaan menggigit kuku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9006_sempurna, '私は日本の国歌を完璧に歌えます。', 'Saya bisa menyanyikan lagu kebangsaan Jepang dengan sempurna.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9006_sempurna, 'このファイルを削除したら、これで準備は完璧です。', 'Saya akan menghapus file-file ini, lalu saya akan siap sepenuhnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9006_sempurna, '日本語が完璧になりたい。', 'Saya ingin bahasa Jepang saya sempurna.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9068_garis_keturunan, '京都の清水寺は由緒あるお寺だ。', 'Kuil Kiyomizu di Kyoto merupakan kuil dengan sejarah yang panjang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9068_garis_keturunan, '由緒ある家の人でも、いい人だとは限らない。', 'Hanya karena dia memiliki garis keturunan yang bergengsi, tidak berarti dia menjadi orang yang baik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9068_garis_keturunan, '日本で最も古い由緒ある神社です。', 'Ini adalah kuil tertua dan paling terhormat di Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9174_bimasakti, 'あ、天の川が見える！', 'Oh, aku bisa melihat Bima Sakti!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9174_bimasakti, '天気の良い日には、天の川を見ることもできます。', 'Saat hari cerah, Anda juga bisa melihat Bima Sakti.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9174_bimasakti, '二人は年に一回だけ、天の川を渡って会うことができるんです。ロマンチックでしょ？', 'Keduanya bisa bertemu dengan melintasi Bimasakti hanya setahun sekali. Bukankah itu romantis?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9272_untuk_memanggang, 'まず、大豆をこんがりと炒ることから始めましょう。', 'Pertama, mari kita mulai dengan memanggang kedelai hingga berwarna cokelat keemasan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9272_untuk_memanggang, 'フライパンでゴマを炒ると良い匂いがします。', 'Baunya harum saat Anda memanggang biji wijen dalam wajan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9272_untuk_memanggang, '「炒り卵」は、油をあまり使わないで卵を炒る日本のスクランブルエッグのような料理です。', '"Iritamago" adalah masakan Jepang yang mirip dengan telur orak-arik yang dimasak tanpa menggunakan banyak minyak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9297_untuk_makan, '昼飯を食う時間がなかったんだ。', 'Saya tidak punya waktu untuk makan siang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9297_untuk_makan, 'げ、シルクのスーツが虫に食われてる！', 'Oh tidak, jas sutraku dimakan serangga!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9297_untuk_makan, '時間ばっかり食って、割りに合わない仕事だったよ。', 'Itu adalah pekerjaan yang hanya menghabiskan waktu saya dan tidak membuahkan hasil.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9331_angsuran_pertama, '我が社とWaniKaniとのコラボ商品第一弾は、ワニカニのフィギュアです！', 'Produk pertama hasil kolaborasi kami dengan WaniKani adalah figure WaniKani!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9331_angsuran_pertama, 'こちらのイラストは、ウサギのDJシリーズの第一弾です。', 'Ilustrasi ini adalah yang pertama dalam seri Rabbit DJ.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9331_angsuran_pertama, 'キャンペーンの第一弾の反応を見て、第二弾の中身を調整しましょう。', 'Mari kita sesuaikan konten putaran kedua dengan melihat masukan terhadap kampanye promosi putaran pertama.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9399_tas, '新しい鞄を買った。', 'Saya membeli dompet baru.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9399_tas, '彼は重そうな鞄を持っていた。', 'Dia membawa tas yang tampak berat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9399_tas, '鞄の中がぐちゃぐちゃで探し物が見つからない。', 'Tasku berantakan sekali, aku tidak dapat menemukan apa pun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9399_tas, '旅行用の大きな鞄をクローゼットから出した。', 'Aku mengeluarkan tas travel besar dari lemari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9490_untuk_mengintip, 'ちょっと中を覗いていい？', 'Bisakah saya mengintip ke dalam sebentar?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9490_untuk_mengintip, 'こっそり横目で彼のスマホを覗いた。', 'Aku diam-diam melirik ponselnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9490_untuk_mengintip, 'なんだかずっと誰かに覗かれている気がするんだよね。', 'Aku tidak bisa menghilangkan perasaan bahwa seseorang diam-diam memperhatikanku selama ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9490_untuk_mengintip, '毎日何回も冷蔵庫を覗くんだけど、その度に、何も増えてないことに気づいてガッカリするんです。', 'Saya mengintip ke dalam lemari es beberapa kali setiap hari, dan setiap kali saya melakukannya, saya melihat tidak ada hal baru yang ditambahkan dan akhirnya saya kecewa.');

  -- 4. PREREQUISITES
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1675_tuntutan, id FROM items WHERE type = 'radical' AND (slug = '119' OR id = '119') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1675_tuntutan, id FROM items WHERE type = 'radical' AND (slug = '309' OR id = '309') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1676_usia, r_372_gigi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1676_usia, id FROM items WHERE type = 'radical' AND (slug = '189' OR id = '189') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1677_salam, id FROM items WHERE type = 'radical' AND (slug = '78' OR id = '78') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1677_salam, id FROM items WHERE type = 'radical' AND (slug = '419' OR id = '419') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1678_putaran, id FROM items WHERE type = 'radical' AND (slug = '86' OR id = '86') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1678_putaran, id FROM items WHERE type = 'radical' AND (slug = '8830' OR id = '8830') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1679_menghindari, id FROM items WHERE type = 'radical' AND (slug = '114' OR id = '114') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1679_menghindari, r_367_cabai);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1680_hamil, id FROM items WHERE type = 'radical' AND (slug = '19' OR id = '19') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1680_hamil, id FROM items WHERE type = 'radical' AND (slug = '48' OR id = '48') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1681_hamil, id FROM items WHERE type = 'radical' AND (slug = '19' OR id = '19') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1681_hamil, id FROM items WHERE type = 'radical' AND (slug = '183' OR id = '183') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1682_melakukan, id FROM items WHERE type = 'radical' AND (slug = '274' OR id = '274') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1682_melakukan, id FROM items WHERE type = 'radical' AND (slug = '60' OR id = '60') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1683_edisi, id FROM items WHERE type = 'radical' AND (slug = '61' OR id = '61') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1683_edisi, id FROM items WHERE type = 'radical' AND (slug = '128' OR id = '128') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1684_putar_musik, id FROM items WHERE type = 'radical' AND (slug = '8779' OR id = '8779') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1684_putar_musik, id FROM items WHERE type = 'radical' AND (slug = '40' OR id = '40') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1685_menemani, id FROM items WHERE type = 'radical' AND (slug = '75' OR id = '75') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1685_menemani, id FROM items WHERE type = 'radical' AND (slug = '305' OR id = '305') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1686_bergabung, id FROM items WHERE type = 'radical' AND (slug = '75' OR id = '75') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1686_bergabung, id FROM items WHERE type = 'radical' AND (slug = '8767' OR id = '8767') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1686_bergabung, id FROM items WHERE type = 'radical' AND (slug = '171' OR id = '171') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1687_bersandar, id FROM items WHERE type = 'radical' AND (slug = '311' OR id = '311') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1687_bersandar, id FROM items WHERE type = 'radical' AND (slug = '184' OR id = '184') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1688_sebaliknya, id FROM items WHERE type = 'radical' AND (slug = '244' OR id = '244') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1688_sebaliknya, id FROM items WHERE type = 'radical' AND (slug = '145' OR id = '145') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1689_pedalaman, id FROM items WHERE type = 'radical' AND (slug = '3' OR id = '3') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1689_pedalaman, id FROM items WHERE type = 'radical' AND (slug = '29' OR id = '29') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1689_pedalaman, id FROM items WHERE type = 'radical' AND (slug = '98' OR id = '98') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1689_pedalaman, id FROM items WHERE type = 'radical' AND (slug = '18' OR id = '18') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1690_mempertimbangkan, id FROM items WHERE type = 'radical' AND (slug = '254' OR id = '254') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1690_mempertimbangkan, r_368_memikirkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1691_menskors, r_369_prefektur);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1691_menskors, id FROM items WHERE type = 'radical' AND (slug = '329' OR id = '329') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1691_menskors, id FROM items WHERE type = 'radical' AND (slug = '65' OR id = '65') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1692_gugus, id FROM items WHERE type = 'radical' AND (slug = '73' OR id = '73') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1692_gugus, id FROM items WHERE type = 'radical' AND (slug = '66' OR id = '66') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1693_menangani, id FROM items WHERE type = 'radical' AND (slug = '63' OR id = '63') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1693_menangani, id FROM items WHERE type = 'radical' AND (slug = '193' OR id = '193') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1694_menekan, id FROM items WHERE type = 'radical' AND (slug = '63' OR id = '63') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1694_menekan, id FROM items WHERE type = 'radical' AND (slug = '340' OR id = '340') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1695_memilih, id FROM items WHERE type = 'radical' AND (slug = '63' OR id = '63') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1695_memilih, id FROM items WHERE type = 'radical' AND (slug = '215' OR id = '215') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1696_menggambar, id FROM items WHERE type = 'radical' AND (slug = '63' OR id = '63') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1696_menggambar, id FROM items WHERE type = 'radical' AND (slug = '90' OR id = '90') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1696_menggambar, id FROM items WHERE type = 'radical' AND (slug = '51' OR id = '51') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1697_baki, id FROM items WHERE type = 'radical' AND (slug = '149' OR id = '149') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1697_baki, id FROM items WHERE type = 'radical' AND (slug = '160' OR id = '160') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1697_baki, id FROM items WHERE type = 'radical' AND (slug = '84' OR id = '84') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1698_judul, id FROM items WHERE type = 'radical' AND (slug = '135' OR id = '135') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1698_judul, id FROM items WHERE type = 'radical' AND (slug = '8762' OR id = '8762') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1698_judul, id FROM items WHERE type = 'radical' AND (slug = '35' OR id = '35') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1699_tali, id FROM items WHERE type = 'radical' AND (slug = '86' OR id = '86') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1699_tali, id FROM items WHERE type = 'radical' AND (slug = '203' OR id = '203') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1700_longgar, id FROM items WHERE type = 'radical' AND (slug = '86' OR id = '86') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1700_longgar, id FROM items WHERE type = 'radical' AND (slug = '286' OR id = '286') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1701_memperuntukkan, id FROM items WHERE type = 'radical' AND (slug = '117' OR id = '117') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1701_memperuntukkan, id FROM items WHERE type = 'radical' AND (slug = '5' OR id = '5') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1701_memperuntukkan, id FROM items WHERE type = 'radical' AND (slug = '4' OR id = '4') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1702_menyuap, id FROM items WHERE type = 'radical' AND (slug = '94' OR id = '94') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1702_menyuap, r_371_memiliki);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1703_menyuap, id FROM items WHERE type = 'radical' AND (slug = '94' OR id = '94') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1703_menyuap, id FROM items WHERE type = 'radical' AND (slug = '180' OR id = '180') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1704_hadiah, id FROM items WHERE type = 'radical' AND (slug = '94' OR id = '94') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1704_hadiah, id FROM items WHERE type = 'radical' AND (slug = '259' OR id = '259') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1705_melarikan_diri, id FROM items WHERE type = 'radical' AND (slug = '114' OR id = '114') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1705_melarikan_diri, id FROM items WHERE type = 'radical' AND (slug = '363' OR id = '363') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1706_kirim_kembali, id FROM items WHERE type = 'radical' AND (slug = '114' OR id = '114') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1706_kirim_kembali, id FROM items WHERE type = 'radical' AND (slug = '163' OR id = '163') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1706_kirim_kembali, id FROM items WHERE type = 'radical' AND (slug = '8784' OR id = '8784') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_8861_lutut, id FROM items WHERE type = 'radical' AND (slug = '43' OR id = '43') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_8861_lutut, id FROM items WHERE type = 'radical' AND (slug = '23' OR id = '23') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_8861_lutut, id FROM items WHERE type = 'radical' AND (slug = '8764' OR id = '8764') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_8861_lutut, id FROM items WHERE type = 'radical' AND (slug = '45' OR id = '45') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_8966_menggigit, id FROM items WHERE type = 'radical' AND (slug = '16' OR id = '16') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_8966_menggigit, r_372_gigi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_8995_cakram, r_367_cabai);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_8995_cakram, id FROM items WHERE type = 'radical' AND (slug = '48' OR id = '48') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_8995_cakram, id FROM items WHERE type = 'radical' AND (slug = '3' OR id = '3') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_9396_tas, id FROM items WHERE type = 'radical' AND (slug = '288' OR id = '288') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_9396_tas, id FROM items WHERE type = 'radical' AND (slug = '395' OR id = '395') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_9469_mengintip, id FROM items WHERE type = 'radical' AND (slug = '266' OR id = '266') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_9469_mengintip, id FROM items WHERE type = 'radical' AND (slug = '91' OR id = '91') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3008_luar_negeri, id FROM items WHERE type = 'kanji' AND (slug = '683' OR id = '683') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3008_luar_negeri, id FROM items WHERE type = 'kanji' AND (slug = '521' OR id = '521') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3040_bebaskan_dari_penjara, id FROM items WHERE type = 'kanji' AND (slug = '483' OR id = '483') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3040_bebaskan_dari_penjara, id FROM items WHERE type = 'kanji' AND (slug = '707' OR id = '707') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4748_batas_waktu, id FROM items WHERE type = 'kanji' AND (slug = '662' OR id = '662') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4748_batas_waktu, id FROM items WHERE type = 'kanji' AND (slug = '1248' OR id = '1248') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6078_untuk_kembali, id FROM items WHERE type = 'kanji' AND (slug = '1653' OR id = '1653') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6103_penyadapan, id FROM items WHERE type = 'kanji' AND (slug = '1442' OR id = '1442') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6103_penyadapan, id FROM items WHERE type = 'kanji' AND (slug = '1660' OR id = '1660') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6139_perusahaan_perdagangan, id FROM items WHERE type = 'kanji' AND (slug = '1613' OR id = '1613') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6139_perusahaan_perdagangan, id FROM items WHERE type = 'kanji' AND (slug = '1063' OR id = '1063') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6139_perusahaan_perdagangan, id FROM items WHERE type = 'kanji' AND (slug = '566' OR id = '566') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6139_perusahaan_perdagangan, id FROM items WHERE type = 'kanji' AND (slug = '591' OR id = '591') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6140_gen, id FROM items WHERE type = 'kanji' AND (slug = '1616' OR id = '1616') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6140_gen, id FROM items WHERE type = 'kanji' AND (slug = '777' OR id = '777') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6140_gen, id FROM items WHERE type = 'kanji' AND (slug = '462' OR id = '462') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6141_prefektur_nara, id FROM items WHERE type = 'kanji' AND (slug = '1620' OR id = '1620') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6141_prefektur_nara, id FROM items WHERE type = 'kanji' AND (slug = '805' OR id = '805') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6141_prefektur_nara, id FROM items WHERE type = 'kanji' AND (slug = '731' OR id = '731') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6142_untuk_menghapuskan, id FROM items WHERE type = 'kanji' AND (slug = '1622' OR id = '1622') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6142_untuk_menghapuskan, id FROM items WHERE type = 'kanji' AND (slug = '514' OR id = '514') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6143_untuk_mentransfer, id FROM items WHERE type = 'kanji' AND (slug = '722' OR id = '722') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6143_untuk_mentransfer, id FROM items WHERE type = 'kanji' AND (slug = '1624' OR id = '1624') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6144_untuk_menunjukkan, id FROM items WHERE type = 'kanji' AND (slug = '797' OR id = '797') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6144_untuk_menunjukkan, id FROM items WHERE type = 'kanji' AND (slug = '1625' OR id = '1625') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6145_okinawa, id FROM items WHERE type = 'kanji' AND (slug = '1627' OR id = '1627') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6145_okinawa, id FROM items WHERE type = 'kanji' AND (slug = '1628' OR id = '1628') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6146_untuk_mempertahankan, id FROM items WHERE type = 'kanji' AND (slug = '1633' OR id = '1633') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6146_untuk_mempertahankan, id FROM items WHERE type = 'kanji' AND (slug = '727' OR id = '727') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6147_restorasi_meiji, id FROM items WHERE type = 'kanji' AND (slug = '626' OR id = '626') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6147_restorasi_meiji, id FROM items WHERE type = 'kanji' AND (slug = '978' OR id = '978') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6147_restorasi_meiji, id FROM items WHERE type = 'kanji' AND (slug = '1633' OR id = '1633') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6147_restorasi_meiji, id FROM items WHERE type = 'kanji' AND (slug = '857' OR id = '857') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6148_kunjungan_simpati, id FROM items WHERE type = 'kanji' AND (slug = '558' OR id = '558') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6148_kunjungan_simpati, id FROM items WHERE type = 'kanji' AND (slug = '1634' OR id = '1634') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6149_bola, id FROM items WHERE type = 'kanji' AND (slug = '1634' OR id = '1634') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6149_bola, id FROM items WHERE type = 'kanji' AND (slug = '1636' OR id = '1636') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6149_bola, id FROM items WHERE type = 'kanji' AND (slug = '566' OR id = '566') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6150_biasa, id FROM items WHERE type = 'kanji' AND (slug = '440' OR id = '440') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6150_biasa, id FROM items WHERE type = 'kanji' AND (slug = '1637' OR id = '1637') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6150_biasa, id FROM items WHERE type = 'kanji' AND (slug = '914' OR id = '914') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6151_umum, id FROM items WHERE type = 'kanji' AND (slug = '610' OR id = '610') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6151_umum, id FROM items WHERE type = 'kanji' AND (slug = '1637' OR id = '1637') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6151_umum, id FROM items WHERE type = 'kanji' AND (slug = '914' OR id = '914') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6152_sebuah_bantuan, id FROM items WHERE type = 'kanji' AND (slug = '1638' OR id = '1638') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6153_untuk_mengandalkan, id FROM items WHERE type = 'kanji' AND (slug = '1638' OR id = '1638') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6154_klien, id FROM items WHERE type = 'kanji' AND (slug = '1639' OR id = '1639') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6154_klien, id FROM items WHERE type = 'kanji' AND (slug = '1638' OR id = '1638') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6154_klien, id FROM items WHERE type = 'kanji' AND (slug = '444' OR id = '444') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6155_absurd, id FROM items WHERE type = 'kanji' AND (slug = '692' OR id = '692') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6155_absurd, id FROM items WHERE type = 'kanji' AND (slug = '1640' OR id = '1640') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6156_tuntutan, k_1675_tuntutan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6156_tuntutan, id FROM items WHERE type = 'kanji' AND (slug = '737' OR id = '737') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6157_kebutuhan, id FROM items WHERE type = 'kanji' AND (slug = '655' OR id = '655') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6157_kebutuhan, k_1675_tuntutan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6157_kebutuhan, id FROM items WHERE type = 'kanji' AND (slug = '967' OR id = '967') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6158_bertahun_tahun, id FROM items WHERE type = 'kanji' AND (slug = '546' OR id = '546') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6158_bertahun_tahun, k_1676_usia);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6159_orang_lanjut_usia, id FROM items WHERE type = 'kanji' AND (slug = '666' OR id = '666') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6159_orang_lanjut_usia, k_1676_usia);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6159_orang_lanjut_usia, id FROM items WHERE type = 'kanji' AND (slug = '690' OR id = '690') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6160_usia_tua, id FROM items WHERE type = 'kanji' AND (slug = '781' OR id = '781') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6160_usia_tua, k_1676_usia);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6161_bagus, k_1677_salam);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6162_untuk_memutar, k_1678_putaran);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6163_untuk_dihindari, k_1679_menghindari);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6164_pengungsian, k_1679_menghindari);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6164_pengungsian, id FROM items WHERE type = 'kanji' AND (slug = '1095' OR id = '1095') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6165_pengendalian_kelahiran, k_1679_menghindari);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6165_pengendalian_kelahiran, k_1680_hamil);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6166_menjadi_hamil, k_1680_hamil);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6166_menjadi_hamil, k_1681_hamil);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6167_wanita_hamil, k_1680_hamil);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6167_wanita_hamil, id FROM items WHERE type = 'kanji' AND (slug = '1362' OR id = '1362') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6168_yang_harus_dilakukan, k_1682_melakukan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6169_untuk_mencocokkan, id FROM items WHERE type = 'kanji' AND (slug = '440' OR id = '440') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6169_untuk_mencocokkan, k_1682_melakukan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6170_fatal, k_1682_melakukan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6170_fatal, id FROM items WHERE type = 'kanji' AND (slug = '789' OR id = '789') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6170_fatal, id FROM items WHERE type = 'kanji' AND (slug = '914' OR id = '914') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6171_edisi_pagi, id FROM items WHERE type = 'kanji' AND (slug = '695' OR id = '695') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6171_edisi_pagi, k_1683_edisi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6172_edisi_bulanan, id FROM items WHERE type = 'kanji' AND (slug = '477' OR id = '477') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6172_edisi_bulanan, k_1683_edisi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6173_edisi_malam, id FROM items WHERE type = 'kanji' AND (slug = '461' OR id = '461') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6173_edisi_malam, k_1683_edisi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6174_untuk_menerbitkan, k_1683_edisi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6174_untuk_menerbitkan, id FROM items WHERE type = 'kanji' AND (slug = '580' OR id = '580') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6175_edisi_harian, id FROM items WHERE type = 'kanji' AND (slug = '476' OR id = '476') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6175_edisi_harian, k_1683_edisi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6176_pertunjukan_musik, k_1684_putar_musik);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6176_pertunjukan_musik, id FROM items WHERE type = 'kanji' AND (slug = '704' OR id = '704') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6177_pertunjukan_musik, id FROM items WHERE type = 'kanji' AND (slug = '1196' OR id = '1196') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6177_pertunjukan_musik, k_1684_putar_musik);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6178_untuk_menemani, k_1685_menemani);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6179_untuk_menemani, id FROM items WHERE type = 'kanji' AND (slug = '568' OR id = '568') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6179_untuk_menemani, k_1685_menemani);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6181_aneksasi, k_1686_bergabung);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6181_aneksasi, id FROM items WHERE type = 'kanji' AND (slug = '852' OR id = '852') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6182_menjadi_condong, k_1687_bersandar);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6183_kecenderungan, k_1687_bersandar);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6183_kecenderungan, id FROM items WHERE type = 'kanji' AND (slug = '611' OR id = '611') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6184_sebaliknya, k_1688_sebaliknya);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6185_penolakan, k_1688_sebaliknya);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6185_penolakan, id FROM items WHERE type = 'kanji' AND (slug = '451' OR id = '451') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6186_jauh_kembali, k_1689_pedalaman);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6187_istri, k_1689_pedalaman);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6188_pengekangan, id FROM items WHERE type = 'kanji' AND (slug = '963' OR id = '963') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6188_pengekangan, k_1690_mempertimbangkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6189_pertimbangan, id FROM items WHERE type = 'kanji' AND (slug = '742' OR id = '742') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6189_pertimbangan, k_1690_mempertimbangkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6190_pertimbangan, id FROM items WHERE type = 'kanji' AND (slug = '576' OR id = '576') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6190_pertimbangan, k_1690_mempertimbangkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6191_untuk_mempertaruhkan, k_1691_menskors);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6192_ingin_sekali, k_1691_menskors);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6192_ingin_sekali, id FROM items WHERE type = 'kanji' AND (slug = '789' OR id = '789') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6193_gugus, k_1692_gugus);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6194_ac, id FROM items WHERE type = 'kanji' AND (slug = '1350' OR id = '1350') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6194_ac, k_1692_gugus);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6195_pemanas, id FROM items WHERE type = 'kanji' AND (slug = '1508' OR id = '1508') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6195_pemanas, k_1692_gugus);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6196_untuk_menangani, k_1693_menangani);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6197_penindasan, k_1694_menekan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6197_penindasan, id FROM items WHERE type = 'kanji' AND (slug = '1106' OR id = '1106') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6198_kontrol, k_1694_menekan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6198_kontrol, id FROM items WHERE type = 'kanji' AND (slug = '1128' OR id = '1128') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6199_pencegah, k_1694_menekan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6199_pencegah, id FROM items WHERE type = 'kanji' AND (slug = '514' OR id = '514') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6200_pilihan, id FROM items WHERE type = 'kanji' AND (slug = '886' OR id = '886') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6200_pilihan, k_1695_memilih);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6201_penggambaran, k_1696_menggambar);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6201_penggambaran, id FROM items WHERE type = 'kanji' AND (slug = '531' OR id = '531') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6202_menggambar, k_1696_menggambar);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6202_menggambar, id FROM items WHERE type = 'kanji' AND (slug = '629' OR id = '629') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6203_menggambar, k_1696_menggambar);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6204_baki, k_1697_baki);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6205_disk, id FROM items WHERE type = 'kanji' AND (slug = '472' OR id = '472') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6205_disk, k_1697_baki);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6206_basis, id FROM items WHERE type = 'kanji' AND (slug = '917' OR id = '917') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6206_basis, k_1697_baki);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6207_simetri, id FROM items WHERE type = 'kanji' AND (slug = '683' OR id = '683') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6207_simetri, k_1698_judul);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6208_nama_kerja, id FROM items WHERE type = 'kanji' AND (slug = '739' OR id = '739') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6208_nama_kerja, k_1698_judul);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6209_orang_pertama, id FROM items WHERE type = 'kanji' AND (slug = '440' OR id = '440') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6209_orang_pertama, id FROM items WHERE type = 'kanji' AND (slug = '444' OR id = '444') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6209_orang_pertama, k_1698_judul);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6210_bersama, id FROM items WHERE type = 'kanji' AND (slug = '440' OR id = '440') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6210_bersama, k_1699_tali);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6211_rahasia, id FROM items WHERE type = 'kanji' AND (slug = '500' OR id = '500') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6211_rahasia, k_1699_tali);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6212_longgar, k_1700_longgar);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6213_untuk_melonggarkan, k_1700_longgar);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6214_longgar, k_1700_longgar);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6215_memperuntukkan, id FROM items WHERE type = 'kanji' AND (slug = '1125' OR id = '1125') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6215_memperuntukkan, k_1701_memperuntukkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6216_untuk_mempercayakan, k_1701_memperuntukkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6217_memercayai, id FROM items WHERE type = 'kanji' AND (slug = '940' OR id = '940') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6217_memercayai, k_1701_memperuntukkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6218_dipercayakan, id FROM items WHERE type = 'kanji' AND (slug = '711' OR id = '711') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6218_dipercayakan, k_1701_memperuntukkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6219_untuk_memberikan_hadiah, k_1704_hadiah);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6220_penyuapan, k_1704_hadiah);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6220_penyuapan, id FROM items WHERE type = 'kanji' AND (slug = '1186' OR id = '1186') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6220_penyuapan, k_1702_menyuap);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6221_menyuap, k_1702_menyuap);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6221_menyuap, k_1703_menyuap);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6222_untuk_membayar, k_1702_menyuap);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6223_untuk_melarikan_diri, k_1705_melarikan_diri);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6224_melarikan_diri, k_1705_melarikan_diri);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6224_melarikan_diri, id FROM items WHERE type = 'kanji' AND (slug = '851' OR id = '851') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6225_mencapai_home_plate, id FROM items WHERE type = 'kanji' AND (slug = '850' OR id = '850') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6225_mencapai_home_plate, k_1706_kirim_kembali);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6226_kembali, id FROM items WHERE type = 'kanji' AND (slug = '858' OR id = '858') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6226_kembali, k_1706_kirim_kembali);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6227_berikan_sesuatu_kembali, k_1706_kirim_kembali);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6227_berikan_sesuatu_kembali, id FROM items WHERE type = 'kanji' AND (slug = '498' OR id = '498') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6228_tahu_rebus, id FROM items WHERE type = 'kanji' AND (slug = '844' OR id = '844') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6228_tahu_rebus, id FROM items WHERE type = 'kanji' AND (slug = '1576' OR id = '1576') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6228_tahu_rebus, id FROM items WHERE type = 'kanji' AND (slug = '1578' OR id = '1578') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6229_untuk_meregangkan_sesuatu, id FROM items WHERE type = 'kanji' AND (slug = '1617' OR id = '1617') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6230_untuk_berusaha, id FROM items WHERE type = 'kanji' AND (slug = '1619' OR id = '1619') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6231_maupun, id FROM items WHERE type = 'kanji' AND (slug = '1619' OR id = '1619') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6232_untuk_melangkah, id FROM items WHERE type = 'kanji' AND (slug = '1636' OR id = '1636') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6232_untuk_melangkah, id FROM items WHERE type = 'kanji' AND (slug = '1504' OR id = '1504') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6233_untuk_melebihi, id FROM items WHERE type = 'kanji' AND (slug = '1707' OR id = '1707') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6236_tali_lepas, id FROM items WHERE type = 'kanji' AND (slug = '1628' OR id = '1628') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6236_tali_lepas, id FROM items WHERE type = 'kanji' AND (slug = '1205' OR id = '1205') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6791_rempah_rempah, id FROM items WHERE type = 'kanji' AND (slug = '1665' OR id = '1665') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6791_rempah_rempah, id FROM items WHERE type = 'kanji' AND (slug = '1880' OR id = '1880') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6791_rempah_rempah, id FROM items WHERE type = 'kanji' AND (slug = '878' OR id = '878') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6793_kesabaran, id FROM items WHERE type = 'kanji' AND (slug = '1880' OR id = '1880') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6793_kesabaran, id FROM items WHERE type = 'kanji' AND (slug = '1671' OR id = '1671') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7610_menonjol, k_1689_pedalaman);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7610_menonjol, id FROM items WHERE type = 'kanji' AND (slug = '831' OR id = '831') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7664_menguap, id FROM items WHERE type = 'kanji' AND (slug = '646' OR id = '646') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7664_menguap, id FROM items WHERE type = 'kanji' AND (slug = '1617' OR id = '1617') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7778_absurd, id FROM items WHERE type = 'kanji' AND (slug = '692' OR id = '692') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7778_absurd, id FROM items WHERE type = 'kanji' AND (slug = '1640' OR id = '1640') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8557_acar_dalam, id FROM items WHERE type = 'kanji' AND (slug = '2336' OR id = '2336') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8729_kedalaman, k_1689_pedalaman);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8729_kedalaman, id FROM items WHERE type = 'kanji' AND (slug = '1020' OR id = '1020') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8869_lutut, k_8861_lutut);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8870_tempurung_lutut, k_8861_lutut);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8870_tempurung_lutut, id FROM items WHERE type = 'kanji' AND (slug = '771' OR id = '771') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8983_untuk_menggigit, k_8966_menggigit);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9006_sempurna, id FROM items WHERE type = 'kanji' AND (slug = '904' OR id = '904') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_9006_sempurna, k_8995_cakram);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9068_garis_keturunan, id FROM items WHERE type = 'kanji' AND (slug = '648' OR id = '648') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_9068_garis_keturunan, k_1699_tali);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9174_bimasakti, id FROM items WHERE type = 'kanji' AND (slug = '473' OR id = '473') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9174_bimasakti, id FROM items WHERE type = 'kanji' AND (slug = '456' OR id = '456') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9272_untuk_memanggang, id FROM items WHERE type = 'kanji' AND (slug = '9265' OR id = '9265') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9297_untuk_makan, id FROM items WHERE type = 'kanji' AND (slug = '644' OR id = '644') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9331_angsuran_pertama, id FROM items WHERE type = 'kanji' AND (slug = '825' OR id = '825') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9331_angsuran_pertama, id FROM items WHERE type = 'kanji' AND (slug = '440' OR id = '440') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9331_angsuran_pertama, id FROM items WHERE type = 'kanji' AND (slug = '1659' OR id = '1659') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_9399_tas, k_9396_tas);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_9490_untuk_mengintip, k_9469_mengintip);

END $$;
