-- ====================================================
-- KaniGani — Seed Data Level 36 (v2, relasional)
-- Auto-generated with Indonesian Slugs
-- ====================================================

DO $$
DECLARE
  -- ============ RADICAL IDs (Level 36) ============
  r_359_keberangkatan UUID; r_360_manis UUID; r_429_menari UUID;

  -- ============ KANJI IDs (Level 36) ============
  k_1611_mantan UUID; k_1612_nama_keluarga UUID; k_1613_berdagang UUID; k_1614_komandan UUID; k_1615_persekutuan UUID; k_1616_meninggalkan UUID; k_1617_menggeliat UUID; k_1618_utang UUID; k_1619_mencapai UUID; k_1620_nara UUID; k_1621_lebar UUID; k_1622_usang UUID; k_1623_manis UUID; k_1624_menukarkan UUID; k_1625_memetik UUID; k_1626_inti UUID; k_1627_laut_terbuka UUID; k_1628_tali UUID; k_1629_pelabuhan UUID; k_1630_menawarkan UUID; k_1631_sembuh UUID; k_1632_mewarisi UUID; k_1633_menjaga UUID; k_1634_menari UUID; k_1635_akta UUID; k_1636_melangkah UUID; k_1637_umumnya UUID; k_1638_memercayai UUID; k_1639_bergantung UUID; k_1640_rusa UUID; k_1641_perjanjian UUID; k_1642_taring UUID; k_1707_sangat UUID; k_2336_acar UUID; k_2404_paman UUID; k_2447_baik UUID; k_8911_ikan_salmon UUID; k_9265_menggoreng UUID;

  -- ============ VOCABULARY IDs (Level 36) ============
  v_3591_tertib UUID; v_3659_contoh_buruk UUID; v_5562_untuk_merusak_sesuatu UUID; v_5666_pasir UUID; v_5747_bangsawan UUID; v_5755_mangkuk_belut UUID; v_5938_mangkok_nasi_ayam_dan_telur UUID; v_5939_mual UUID; v_5940_untuk_meludahkan UUID; v_5941_teman_teman_itu UUID; v_5942_lipstik UUID; v_5943_rekomendasi UUID; v_5944_bekerja UUID; v_5945_medan_elektromagnetik UUID; v_5946_radioaktivitas UUID; v_5947_konduktor UUID; v_5948_kisah_genji UUID; v_5949_untuk_merusak UUID; v_5950_edamame UUID; v_5951_tahu UUID; v_5952_nama_keluarga_mantan UUID; v_5953_restorasi UUID; v_5954_nama_lengkap UUID; v_5955_berdagang UUID; v_5956_manis UUID; v_5957_untuk_tidak_menganggapnya_serius UUID; v_5958_gigi_manis UUID; v_5959_masa_depan UUID; v_5960_shogun UUID; v_5961_umum UUID; v_5962_komandan UUID; v_5963_persekutuan UUID; v_5964_liga UUID; v_5965_sumpah UUID; v_5966_warisan UUID; v_5967_kehilangan UUID; v_5968_keturunan UUID; v_5969_mayat UUID; v_5970_untuk_tumbuh_lebih_lama UUID; v_5971_menjalin_kedekatan UUID; v_5972_kredit UUID; v_5973_utang_nasional UUID; v_5974_untuk_mencapai UUID; v_5975_difusi UUID; v_5976_mencapai_sukses UUID; v_5977_nara UUID; v_5978_prefektur_kanagawa UUID; v_5979_lebar UUID; v_5980_penghapusan UUID; v_5981_menjadi_usang UUID; v_5984_ventilasi UUID; v_5985_konversi UUID; v_5986_untuk_memetik UUID; v_5987_menunjuk UUID; v_5988_untuk_membuka_kedok UUID; v_5989_inti UUID; v_5990_senjata_nuklir UUID; v_5991_uji_nuklir UUID; v_5992_laut_terbuka UUID; v_5993_tali UUID; v_5994_jomon UUID; v_5995_tsunami UUID; v_5996_donor_darah UUID; v_5997_sumbangan UUID; v_5998_perawatan_medis UUID; v_5999_terapi_medis UUID; v_6001_untuk_mewarisi UUID; v_6002_suksesi UUID; v_6003_pemeliharaan UUID; v_6004_restorasi UUID; v_6005_panggung UUID; v_6006_untuk_menari UUID; v_6007_kabuki UUID; v_6008_tarian UUID; v_6009_untuk_melangkah UUID; v_6010_umum UUID; v_6011_sangat UUID; v_6012_gaib UUID; v_6013_kecepatan_supersonik UUID; v_6014_gelombang_ultrasonik UUID; v_6015_untuk_meminta UUID; v_6016_kepercayaan UUID; v_6017_meminta UUID; v_6018_ketergantungan UUID; v_6019_bodoh UUID; v_6020_prefektur_kagoshima UUID; v_6021_rusa UUID; v_6022_izin UUID; v_6023_penerimaan UUID; v_6024_izin UUID; v_6025_persetujuan_atau_penolakan UUID; v_6026_gading UUID; v_6027_taring UUID; v_6028_untuk_menyerah UUID; v_6238_untuk_bertukar UUID; v_6582_tempat_tidur_sakit UUID; v_7471_kotor UUID; v_7609_besar UUID; v_7663_tarian UUID; v_7667_menjadi_menyala UUID; v_7723_kesalahan UUID; v_7777_barang_berharga UUID; v_8381_untuk_mengasinkan_sesuatu UUID; v_8524_paman UUID; v_8525_tante UUID; v_8632_untuk_menjadi_baik UUID; v_8633_mata_air UUID; v_8918_ikan_salmon UUID; v_9061_reuni_kelas UUID; v_9074_cedera UUID; v_9266_untuk_menggoreng UUID; v_9284_kedokteran_gigi UUID; v_9488_rumah_mandiri UUID;

BEGIN

  DELETE FROM items WHERE level = 36;

  -- 1. RADICALS
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '発', 'keberangkatan', 36, 1, 'Radikal ini sama dengan kanji. Artinya <radikal>keberangkatan</radikal>.')
    RETURNING id INTO r_359_keberangkatan;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '甘', 'manis', 36, 2, 'Radikal ini adalah matahari dengan rambutnya yang mencuat. Mengapa rambut matahari mencuat seperti ini? Ia memakan terlalu banyak makanan <radikal>manis</radikal> yang menyebabkan ia memiliki terlalu banyak energi, membuat bulunya berdiri. Bentuknya juga seperti permen yang manis dan manis dengan bungkusnya yang menonjol. Ingatlah sesuai keinginan Anda.')
    RETURNING id INTO r_360_manis;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '舛', 'menari', 36, 3, 'Anda melihat seekor sapi di malam hari. Anda semakin dekat dan menyadari bahwa ia sedang melakukan <radikal>tarian</radikal>. Semua sapi menari di malam hari. Bisakah Anda membayangkannya? Sapi itu menari, begitu megah, di bawah sinar matahari terbenam.')
    RETURNING id INTO r_429_menari;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_359_keberangkatan, 'Keberangkatan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_360_manis, 'Manis', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_429_menari, 'Menari', true, true);

  -- 2. KANJIS
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '旧', 'mantan', 36, 4, 'Ada <radical>tongkat</radical> di sebelah <radical>matahari</radical>, yang mencerminkan kejayaan <kanji>masa lalu</kanji>. Tongkat itu dulunya adalah pohon yang besar, dan tongkat itu berpikir bahwa jika ia berada di bawah sinar matahari cukup lama maka ia akan kembali ke bentuk semula sebagai pohon yang menjulang tinggi.', 'Itu berhasil, itu berhasil! Tongkat itu kembali ke keadaan <kanji>sebelumnya</kanji> dan... a-wuh? Itu menumbuhkan <reading>cu</reading>cumber (きゅう).')
    RETURNING id INTO k_1611_mantan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '姓', 'nama-keluarga', 36, 5, 'Jika ada <radikal>wanita</radikal> istimewa dalam <radikal>kehidupan</radikal> Anda, dia mungkin pada akhirnya akan mengambil <kanji>nama keluarga</kanji> Anda dan menjadikannya <kanji>nama belakang</kanji> juga. Di Jepang dan negara-negara lain, tradisi mengharuskan perempuan mengubah nama belakang mereka ketika mereka menikah dan mempertahankan nama tersebut selama sisa hidup mereka. Nama keluarga pasangannya menjadi nama keluarganya juga.', 'Bayangkan wanita istimewa ini dalam pikiran Anda. Dia mengubah <kanji>nama belakang</kanji> miliknya menjadi milikmu dan juga mengambil <reading>sa</reading>ber (せい) spesialmu. Dan itu... terbelah menjadi dua!')
    RETURNING id INTO k_1612_nama_keluarga;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '貿', 'berdagang', 36, 6, 'Anda mengirimkan <radical>pribadi</radical> <radical>pedang</radical> Anda keluar dengan <radical>kerang</radical> Anda sehingga dia dapat <kanji>memperdagangkan</kanji> mereka. Kerang digunakan sebagai mata uang di masa lalu. Dan Anda tidak akan keluar berdagang dan mengotori tangan Anda sendiri, tidak, tidak. Memperdagangkan kerang Anda adalah pekerjaan untuk pedang pribadi yang Anda sewa!', 'Saat dia keluar melakukan <kanji>perdagangan</kanji> untuk Anda, Anda memutuskan untuk bersantai dan melakukan <reading>membungkuk</reading>ling (ぼう). Faktanya, Anda tidak sabar menunggu pertukaran selesai karena Anda berharap dia akan kembali dengan membawakan bola bowling baru untuk Anda.')
    RETURNING id INTO k_1613_berdagang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '将', 'komandan', 36, 7, 'Kanji <radikal>komandan</radikal> dan kanji <kanji>komandan</kanji> adalah sama!', 'Siapakah <kanji>komandan</kanji> Jepang? Pistol <read>Shou</reading> (しょう)! Dan jika Anda pernah mengatakan orang lain atau memilih orang lain atau bahkan BERPIKIR tentang orang lain yang menjadi komandan, dia akan menemukan Anda dan memenggal kepala Anda.')
    RETURNING id INTO k_1614_komandan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '盟', 'persekutuan', 36, 8, 'Saya akan memberi Anda <radical>cerah</radikal> <radikal>piring</radikal> ini jika Anda setuju untuk <kanji>aliansi</kanji> dengan saya. Aku tahu kamu menyukai hal-hal yang cerah, dan aku tahu kamu juga menyukai piring. Oleh karena itu, pelat terang ini seharusnya lebih dari cukup untuk meyakinkan Anda agar bersekutu dengan saya.', 'Orang yang Anda coba ajak dalam <kanji>aliansi</kanji> dengan Anda adalah kapten bunga <reading>Mei</reading> (めい). Anda ingin bersekutu dengan kapten Mayflower karena Anda sangat menyukai perahu. Anda sangat ingin menaiki Mayflower.')
    RETURNING id INTO k_1615_persekutuan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '遺', 'meninggalkan', 36, 9, 'Saat Anda mengendarai <radical>skuter</radical>, apa pun yang <radical>berharga</radical>, Anda harus <kanji>meninggalkannya</kanji>.', 'Apa pun yang tidak <kanji>tinggalkan</kanji> akan dicuri oleh <reading>ea</reading>gles (い). Elang menyukai benda-benda berkilau dan berharga, terutama benda-benda yang memantul ke arah Anda saat Anda berlari dengan skuter.')
    RETURNING id INTO k_1616_meninggalkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '伸', 'menggeliat', 36, 10, 'Seorang <radikal>pemimpin</radikal> yang <radikal>rendah hati</radikal> akan <kanji>berkembang</kanji> di depan semua orang. Mereka akan menunjukkan bahwa mereka harus bangun setiap jam atau lebih dan melakukan peregangan seperti kita semua.', 'Pemimpin saat ini sedang bekerja keras untuk <kanji>meregangkan</kanji> di depan kalian semua, dan saat dia melakukannya, dia mengunyah beberapa camilan rumput laut <reading>no</reading>ri (の). Lalu dia mulai meregangkan norinya juga.')
    RETURNING id INTO k_1617_menggeliat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '債', 'utang', 36, 11, '<radical>Pemimpin</radikal> Anda akan <radikal>disalahkan</radikal> jika perusahaan Anda berada dalam <kanji>hutang</kanji>. Merekalah yang membawa Anda semua ke dalam hutang itu, jadi mereka juga yang harus disalahkan.', 'Untuk melunasi <kanji>hutang</kanji> ini, pemimpin Anda mengatakan Anda perlu menjual <reading>cy</reading>borg (さい) Anda untuk membantu perusahaan. Anda melawan dia! Anda berteriak! Anda berteriak! Cyborg itu meletakkan tangan setengah manusia setengah robot di bahu Anda dan menggelengkan kepalanya dengan sedih.')
    RETURNING id INTO k_1618_utang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '及', 'mencapai', 36, 12, '<radical>Eskalator</radical> digunakan untuk <kanji>menjangkau</kanji> sesuatu.', 'Anda sedang menaiki eskalator dan mencoba <kanji>mencapai</kanji> <reading>cu</reading>cumber (きゅう) yang lezat.')
    RETURNING id INTO k_1619_mencapai;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '奈', 'nara', 36, 13, 'Ada <radical>besar</radikal> <radikal>jackhammer</radical> di <kanji>Nara</kanji>. Jackhammer itu adalah yang terbesar di seluruh negeri dan dipajang di Nara, Jepang.', 'Apa bagian pertama dari <kanji>Nara</kanji>? <membaca>Tidak</membaca> (な). Itu mudah.')
    RETURNING id INTO k_1620_nara;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '幅', 'lebar', 36, 14, 'Anda ingin meletakkan <radical>handuk</radical> ini di atas <radical>orang-orangan sawah</radical> ini, namun Anda harus mengukur <kanji>lebarnya</kanji> terlebih dahulu. Jika lebar handuk tidak lebih besar dari orang-orangan sawah, sebagian akan terlihat. Yang pastinya tidak Anda inginkan.', 'Anda selesai mengukur <kanji>lebar</kanji> orang-orangan sawah dan lebar handuk, dan Anda menyadari bahwa Anda adalah lebar <reading>haba</reading>nero (はば) lada pendek. Tidak apa-apa, kamu kembangkan itu. Ini seluruh bidang habaneros! Jadi, kamu petik salah satu tanaman terdekat, rekatkan ke kain, dan tutupi orang-orangan sawah itu.')
    RETURNING id INTO k_1621_lebar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '廃', 'usang', 36, 15, '<radical>kanopi</radikal> ini, setelah <radical>keberangkatan</radikal> Anda, akan menjadi <kanji>usang</kanji>. Kanopi ada di sini untuk melindungi Anda, tetapi tidak ada yang membutuhkannya setelah Anda pergi.', 'Ketika sesuatu menjadi <kanji>usang</kanji>, Anda harus menulis <reading>hai</reading>ku (はい). Sejujurnya, haiku terbaik adalah tentang sesuatu yang berakhir, jadi ini sempurna.')
    RETURNING id INTO k_1622_usang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '甘', 'manis', 36, 16, 'Kanji <radikal>manis</radikal> dan kanji <kanji>manis</kanji> sama persis! Manis ganda.', 'Sensasi <kanji>manis</kanji> yang manis hampir membuat kewalahan. Kamu harus mengenakan <read>armor</reading> (あま) yang tahan terhadap rasa manis untuk melindungimu dari semua rasa manis itu. Baju besi itu akan mencegah Anda merasakan rasa manis yang berlebihan.')
    RETURNING id INTO k_1623_manis;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '換', 'menukarkan', 36, 17, 'Anda menghitung dengan <radical>jari</radical> Anda di <radical>penjara</radical> semua <radical>mulut</radikal> dan <radikal>kaki</radikal> yang Anda peroleh. Anda akan segera dapat melakukan <radikal>pertukaran</radikal> besar</kanji> dengan semua bagian tubuh ini untuk mendapatkan sesuatu yang luar biasa.', 'Anda mempelajari <kanji>pertukaran</kanji> jenis ini dari <reading>Khan</reading> (かん) yang perkasa. Anda pernah membaca buku atau menonton acara tentang dia dan Anda cukup yakin bahwa Jenghis Khan akan menukar bagian tubuh musuh-musuhnya di seluruh benua Asia dan Eropa dengan barang yang lebih bagus.')
    RETURNING id INTO k_1624_menukarkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '摘', 'memetik', 36, 18, 'Tempelkan <radical>jari</radical> Anda ke dalam <radical>mohawk</radical> Anda dan <kanji>cabut</kanji> setiap helai rambut, satu per satu.', 'Anda ingin <kanji>mencabut</kanji> semua rambut mohawk Anda karena Anda seorang <reading>teknisi</reading> (てき), dan semua orang di pekerjaan Anda sebagai teknisi terus mengolok-olok Anda karena pilihan rambut Anda. "Teknisi harusnya botak!" teriak bosmu. Jadi ini dia, mencabut rambutmu agar pas.')
    RETURNING id INTO k_1625_memetik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '核', 'inti', 36, 19, 'Anda mengambil <radical>pohon</radikal> dan <radikal>mengiris</radikal> hingga mencapai <kanji>inti</kanji>-nya. Untuk mencapai inti pohon, Anda harus membuat banyak irisan, tapi itu mungkin.', 'Bentuknya seperti <reading>ayam</reading> (かく). Dan yang saya maksud dengan ayam jantan adalah ayam jantan – ayam jago. Mengapa <kanji>inti</kanji> pohon terlihat seperti ayam jantan? Sains itu aneh.')
    RETURNING id INTO k_1626_inti;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '沖', 'laut-terbuka', 36, 20, 'Ada <radikal>tsunami</radikal> di <radikal>tengah</radikal> <kanji>laut terbuka</kanji>. Beruntung tidak ada kapal disekitarnya, sehingga tsunami di tengah laut lepas tidak menimbulkan kerugian bagi siapa pun.', 'Seseorang menantang Anda untuk pergi ke <kanji>laut terbuka</kanji> dan berselancar di tengah tsunami. “<reading>Oki</reading> (おき) doki,” jawabmu. Anda tidak bisa menolak tantangan. Setiap kali ada yang menantangmu melakukan sesuatu, kamu selalu membalasnya dengan “oki doki”.')
    RETURNING id INTO k_1627_laut_terbuka;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '縄', 'tali', 36, 21, 'Seseorang <radical>merajut</radical>memotong <radical>kura-kura</radical> menjadi potongan-potongan panjang dan kurus, membuat <kanji>tali</kanji>.', 'Orang yang membuat <kanji>tali</kanji> penyu berulir ini tidak lain adalah <reading>Joe</reading> (じょう) buruh tani setempat. Anda melihatnya meregangkan dan mengupas potongan penyu, lalu mengikatnya menjadi tali.')
    RETURNING id INTO k_1628_tali;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '津', 'pelabuhan', 36, 22, 'Ada <radikal>tsunami</radikal> yang sangat besar, yang disebabkan oleh <radikal>sikat</radikal> raksasa, yang dengan cepat mendekati Anda dan <kanji>pelabuhan</kanji> Anda.', 'Anda akan mempertahankan <kanji>pelabuhan</kanji> Anda dengan <reading>dua</reading> (つ) sahabat Anda, begitulah caranya! Untungnya, kedua teman Anda berspesialisasi dalam mempertahankan pelabuhan dari tsunami besar yang disebabkan oleh semak belukar. Cukup pekerjaan.')
    RETURNING id INTO k_1629_pelabuhan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '献', 'menawarkan', 36, 23, '<radical>Selatan</radikal> <radikal>Anjing</radikal> memberi Anda <kanji>penawaran</kanji>. Tidak ada anjing lain di Utara, Timur, atau Barat yang menawari Anda apa pun.', 'Anjing Selatan <kanji>menawarkan</kanji> layanan <reading>Ken</reading> (けん) sang samurai saat Anda melintasi wilayahnya.')
    RETURNING id INTO k_1630_menawarkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '療', 'sembuh', 36, 24, 'Jika seseorang <radikal>sakit</radikal> beri mereka <radikal>arang</radikal> untuk <kanji>menyembuhkan</kanji> mereka. Oke, jadi mungkin sebaiknya Anda tidak memberikannya langsung kepada mereka, tapi arang memiliki kekuatan penyaringan air yang luar biasa. Jadi masukkan arang ke dalam air mereka dan air itu akan menyembuhkan mereka.', 'Bukan hanya kamu saja yang perlu <kanji>disembuhkan</kanji>, jadi kamu naik perahu <reading>baris</reading> (りょう) kamu ke danau tempat kotamu mendapatkan air minum dan kamu membuang banyak arang ke dalamnya! Sekarang semua orang akan sembuh jika mereka minum.')
    RETURNING id INTO k_1631_sembuh;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '継', 'mewarisi', 36, 25, 'Dengan <radical>benang</radikal>, seekor <radikal>singa</radikal> menjahit semua <radikal>beras</radikal> yang akan <kanji>warisi</kanji> dari orang tuanya suatu hari nanti. Dia yakin orang tuanya akan mencoba untuk menjaga sebagian dari warisannya, jadi dia menghubungkan semuanya sehingga tidak bisa kemana-mana.', 'Jika kamu akan <kanji>mewarisi</kanji> sesuatu dari orang tuamu, cobalah meyakinkan mereka untuk membuatkannya <read>ca</reading>ke (けい), bukan nasi. Satu kue jauh lebih mudah untuk dilacak dan mungkin lebih enak (meskipun kue tersebut akan menjadi sangat basi saat kue tersebut mati).')
    RETURNING id INTO k_1632_mewarisi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '維', 'menjaga', 36, 26, 'Anda mengikat seutas <radical>benang</radikal> ke <radical>kalkun</radikal> Anda untuk <kanji>menjaga</kanji> kedekatannya dengannya. Kalkun suka melarikan diri, jadi ikatkan benang padanya. Dengan cara ini Anda dapat memegang ujung lainnya dan memelihara kalkun Anda.', 'Alasan mengapa kalkun menarik-narik adalah karena ada seekor elang (い) yang menukik ke bawah untuk menyerang kalkun. Anda mencoba untuk <kanji>mempertahankan</kanji> kendali, tetapi begitu Anda melihat elang itu juga, Anda melepaskan benangnya.')
    RETURNING id INTO k_1633_menjaga;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '舞', 'menari', 36, 27, '<radical>tidak ada</radikal> <radikal>tarian</radikal> tetaplah <kanji>tarian</kanji>!', 'Untuk membantu Anda melakukan <kanji>tarian</kanji> ini, Anda memerlukan beberapa <reading>boo</reading>ze (ぶ). Cukup agar lebih mudah untuk tidak memikirkan apa pun, lepaskan semua ketakutan Anda, dan menarilah.')
    RETURNING id INTO k_1634_menari;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '伎', 'akta', 36, 28, '<radikal>pemimpin</radikal> dari <radikal>cabang</radikal> Anda menjadi pemimpin dari melakukan <kanji>perbuatan</kanji>. Anda tidak dapat naik pangkat menjadi pemimpin cabang jika Anda tidak melakukan sejumlah perbuatan tertentu! Kebanyakan dari mereka bagus, saya harap.', '<kanji>perbuatan</kanji> yang sedang dia kerjakan adalah menemukan <reading>kunci</reading> Anda yang hilang (き). Dia tidak perlu membantu, kaulah yang kehilangan kunci rumah-kombinasi-mobilmu sendiri. Tapi dia sudah terbiasa melakukan perbuatan, dia tidak bisa tidak membantu.')
    RETURNING id INTO k_1635_akta;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '踏', 'melangkah', 36, 29, 'Anda merendam setiap <radical>kaki</radical> dalam <radical>air</radical> sebelum keluar di bawah <radical>matahari</radical> untuk mengambil <kanji>langkah</kanji> pertama Anda. Menginjak tanah saat sedang dipanggang di bawah terik matahari dapat membuat kaki Anda terbakar, jadi berhati-hatilah saat membasahinya dengan air sebelum melangkah keluar sekalipun.', 'Setiap <kanji>langkah</kanji> yang Anda ambil membawa Anda lebih dekat ke <membaca>とう</reading>きょう. Sayangnya, matahari semakin terik sehingga Anda harus lebih sering istirahat di sela-sela langkah agar kaki Anda basah dengan lebih banyak air. Namun Anda bertekad untuk mencapai とうきょう, tidak peduli berapa banyak langkah yang diambil.')
    RETURNING id INTO k_1636_melangkah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '般', 'umumnya', 36, 30, 'Sebuah <radical>Perahu</radikal> akan memiliki setidaknya satu <radikal>senjata</radikal>, <kanji>umumnya</kanji>.', '<kanji>Umumnya</kanji> perahu dengan senjata akan dimiliki oleh <reading>Han</reading> (はん) Solo.')
    RETURNING id INTO k_1637_umumnya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '頼', 'memercayai', 36, 31, '<radical>paket</radical> <radical>geoduck</radical> adalah sesuatu yang selalu dapat Anda <kanji>percayai</kanji>.', 'Meskipun Anda bisa <kanji>mempercayai</kanji> seikat geoduck, jangan pernah mempercayai roti <reading>rye</reading> (らい).')
    RETURNING id INTO k_1638_memercayai;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '依', 'bergantung', 36, 32, 'Seorang <radikal>pemimpin</radikal> memiliki <radikal>pakaian</radikal> yang cukup <kanji>diandalkan</kanji>. Pemimpin membutuhkan pakaiannya agar terlihat seperti seorang pemimpin. Pemimpin menjadi lebih bergantung pada pakaiannya daripada keterampilan sebenarnya sebagai seorang pemimpin!', 'Pemimpin menjadi sangat <kanji>bergantung</kanji> pada pakaiannya sehingga penilaiannya menjadi kabur. Kerajaannya telah dipenuhi dengan elang (い) tetapi pemimpinnya tidak melakukan apa pun, percaya bahwa pakaiannya akan mengusir elang jika itu adalah sesuatu yang perlu dilakukan. Dia menjadi sangat bergantung pada pakaiannya sehingga dia mulai menjadi pemimpin yang tidak baik lagi.')
    RETURNING id INTO k_1639_bergantung;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '鹿', 'rusa', 36, 33, 'Sebuah <radical>kanopi</radikal> dan <radikal>helikopter</radikal> sedang <radikal>dibandingkan</radikal>d dengan <kanji>rusa</kanji>. Rusa itu berdiri diam (seperti halnya rusa) dan melihat dengan sangat perlahan di antara kanopi yang kosong dan helikopter yang duduk di sebelahnya.', 'Anda berjalan ke depan, hendak memanggil <kanji>rusa</kanji>, ketika <reading>ca</reading>r (か) tiba-tiba muncul entah dari mana dan menabrak rusa itu! Apakah ini semua hanya jebakan yang dibuat untuk membunuh rusa?!')
    RETURNING id INTO k_1640_rusa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '諾', 'perjanjian', 36, 34, 'Anda <radical>mengatakan</radical> sesuatu dan <radical>bunga</radical> <radical>benar</radical> dalam <kanji>kesepakatan</kanji>. Bunga-bunga melihat dari mana Anda berasal ketika Anda mengatakan apa yang Anda katakan. Anda dan bunga-bunga itu sepenuhnya setuju.', 'Kamu dan bunganya <kanji>sepakat</kanji> tentang fakta bahwa kalian berdua tidak suka jika <reading>bebek</reading> (だく) berjalan melintasi bunga. Anda tidak suka melihat bebek berjalan di atas bunga karena bebek akan buang air besar di dalam bunga dan Anda harus khawatir untuk menginjaknya. Dan bunganya tidak suka kotoran bebek di wajahnya.')
    RETURNING id INTO k_1641_perjanjian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '牙', 'taring', 36, 35, 'Radikal <radikal>fang</radikal> dan kanji <kanji>fang</kanji> sama persis! Fantastis. Oh, itu juga artinya <kanji>gading</kanji>. Artinya taring dan gading.', 'Banyak hewan yang memiliki <kanji>taring</kanji>, bahkan yang tidak terlihat seperti itu. Hewan bertaring paling keren adalah <reading>ge</reading>cko (げ)! Mereka memiliki taring kecil yang cukup tajam di mulutnya dan mereka akan menggigit Anda jika Anda terus mengetuk sangkar kacanya seperti itu. Hentikan itu.')
    RETURNING id INTO k_1642_taring;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '超', 'sangat', 36, 36, 'Anda <radical>berlari</radikal> dan <radikal>menelepon</radikal> pada saat yang sama karena Anda <kanji>super</kanji> <kanji>sangat</kanji> bersemangat saat ini. Anda memiliki jumlah energi yang sangat besar yang Anda perlukan untuk berlari dan menelepon.', 'Anda menjadi <kanji>sangat</kanji> lelah saat mendengar suara yang menakutkan. Itu Ny. <reading>Chou</reading> (ちょう) meluncur ke arah Anda. "APAKAH KAMU MEMANGGIL SAYA, ANAK?!" dia berteriak.')
    RETURNING id INTO k_1707_sangat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '漬', 'acar', 36, 37, '<radical>Tsunami</radical> <radical>disalahkan</radical>d karena <kanji>menghancurkan</kanji> semua yang dilewatinya. Artinya, segala sesuatu berbau acar setelah tsunami.', 'Melihat semua <kanji>acar</kanji> itu, Anda membungkuk dan mengambil <reading>dua</reading> (つ) di antaranya. Satu di masing-masing tangan. Anda melihat acar di tangan Anda dan bertanya-tanya apakah akan mencobanya.')
    RETURNING id INTO k_2336_acar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '叔', 'paman', 36, 38, 'Ada banyak hal yang <radical>di atas</radical> Anda ketika Anda masih <radical>kecil</radical> sehingga Anda memerlukan <radical>bangku</radical> untuk mencapainya, jadi Anda cukup meminta <kanji>bibi</kanji> atau <kanji>paman</kanji> untuk membelikannya untuk Anda.', 'Kamu meminta <kanji>bibi</kanji> dan <kanji>paman</kanji>mu untuk membantumu meraih <reading>o</reading>bi (お) spesialmu dari atas lemari.')
    RETURNING id INTO k_2404_paman;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '湧', 'baik', 36, 39, 'Saat kamu melihat <radikal>tsunami</radikal> datang, <radikal>keberanian</radikal> akan <kanji>meningkat</kanji> dalam dirimu, memberimu kekuatan untuk menyelamatkan semua orang sebelum kamu hanyut!', 'Kepada siapakah keberanian itu <kanji>muncul</kanji>? <read>Kamu</reading> (ゆう)! Faktanya, ANDA merasa ada banyak keberanian yang tak ada habisnya yang keluar dari diri Anda sekarang. Anda akan menjadi pahlawan!')
    RETURNING id INTO k_2447_baik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '鮭', 'ikan-salmon', 36, 40, '<radical>ikan</radical> jenis apa yang melompat dari <radical>tanah</radical> ke <radical>tanah</radical>? Sebuah <kanji>salmon</kanji>!', 'Anda membuat permainan minum dengan menonton <kanji>salmon</kanji> di streaming. Setiap kali seseorang melompat ke tanah, Anda meminum segelas <reading>酒</reading> (さけ). Anda menyadari bahwa Anda sedang mabuk ketika Anda meminta lebih banyak さけ tetapi yang keluar adalah <reading>しゃけ</reading>.')
    RETURNING id INTO k_8911_ikan_salmon;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '炒', 'menggoreng', 36, 41, '<radical>Api</radical> adalah salah satu dari <radical>beberapa</radical> benda yang Anda perlukan untuk <kanji>menggoreng</kanji> sesuatu.', 'Anda suka <kanji>menggoreng</kanji> sesuatu dan juga merupakan <reading>pemakan</reading> (いた) yang suka bertualang. Ini berarti Anda akan menggoreng dan memakan apa saja. Burung unta goreng, aligator goreng, coklat goreng, apa saja!')
    RETURNING id INTO k_9265_menggoreng;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1611_mantan, 'Mantan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1612_nama_keluarga, 'Nama keluarga', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1612_nama_keluarga, 'Nama belakang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1613_berdagang, 'Berdagang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1614_komandan, 'Komandan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1615_persekutuan, 'Persekutuan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1616_meninggalkan, 'Meninggalkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1617_menggeliat, 'Menggeliat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1618_utang, 'Utang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1619_mencapai, 'Mencapai', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1620_nara, 'Nara', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1621_lebar, 'Lebar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1622_usang, 'Usang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1623_manis, 'Manis', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1624_menukarkan, 'Menukarkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1625_memetik, 'Memetik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1626_inti, 'Inti', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1627_laut_terbuka, 'Laut Terbuka', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1628_tali, 'Tali', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1629_pelabuhan, 'Pelabuhan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1630_menawarkan, 'Menawarkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1631_sembuh, 'Sembuh', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1632_mewarisi, 'Mewarisi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1633_menjaga, 'Menjaga', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1634_menari, 'Menari', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1635_akta, 'Akta', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1636_melangkah, 'Melangkah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1637_umumnya, 'Umumnya', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1637_umumnya, 'Umum', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1638_memercayai, 'Memercayai', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1639_bergantung, 'Bergantung', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1639_bergantung, 'Bergantung', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1640_rusa, 'Rusa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1641_perjanjian, 'Perjanjian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1642_taring, 'taring', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1642_taring, 'Gading', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1707_sangat, 'Sangat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1707_sangat, 'Super', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2336_acar, 'Acar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2404_paman, 'Paman', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2404_paman, 'Tante', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2447_baik, 'Baik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_8911_ikan_salmon, 'Ikan salmon', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_9265_menggoreng, 'Menggoreng', true, true);

  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1611_mantan, 'きゅう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1612_nama_keluarga, 'せい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1612_nama_keluarga, 'しょう', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1613_berdagang, 'ぼう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1614_komandan, 'しょう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1615_persekutuan, 'めい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1616_meninggalkan, 'い', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1616_meninggalkan, 'ゆい', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1616_meninggalkan, 'のこ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1617_menggeliat, 'の', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1617_menggeliat, 'しん', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1618_utang, 'さい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1619_mencapai, 'きゅう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1619_mencapai, 'およ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1620_nara, 'な', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1621_lebar, 'はば', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1621_lebar, 'ふく', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1622_usang, 'はい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1622_usang, 'すた', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1623_manis, 'あま', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1623_manis, 'かん', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1624_menukarkan, 'かん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1624_menukarkan, 'か', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1625_memetik, 'てき', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1625_memetik, 'つ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1626_inti, 'かく', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1627_laut_terbuka, 'おき', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1627_laut_terbuka, 'ちゅう', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1628_tali, 'じょう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1628_tali, 'なわ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1629_pelabuhan, 'つ', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1629_pelabuhan, 'しん', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1630_menawarkan, 'けん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1630_menawarkan, 'こん', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1630_menawarkan, 'たてまつ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1631_sembuh, 'りょう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1632_mewarisi, 'けい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1632_mewarisi, 'つ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1633_menjaga, 'い', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1634_menari, 'ぶ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1634_menari, 'まい', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1634_menari, 'ま', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1635_akta, 'き', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1635_akta, 'ぎ', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1635_akta, 'わざ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1636_melangkah, 'とう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1636_melangkah, 'ふ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1637_umumnya, 'はん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1638_memercayai, 'らい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1638_memercayai, 'たの', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1638_memercayai, 'たよ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1639_bergantung, 'い', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1639_bergantung, 'よ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1640_rusa, 'か', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1640_rusa, 'ろく', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1640_rusa, 'しか', 'kunyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1641_perjanjian, 'だく', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1642_taring, 'げ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1642_taring, 'が', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1642_taring, 'きば', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1707_sangat, 'ちょう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1707_sangat, 'こ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_2336_acar, 'つ', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_2404_paman, 'お', 'nanori', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_2404_paman, 'しゅく', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_2447_baik, 'ゆう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_2447_baik, 'わ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_8911_ikan_salmon, 'さけ', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_8911_ikan_salmon, 'しゃけ', 'kunyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_8911_ikan_salmon, 'かい', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_8911_ikan_salmon, 'けい', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_9265_menggoreng, 'いた', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_9265_menggoreng, 'い', 'kunyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_9265_menggoreng, 'しょう', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_9265_menggoreng, 'そう', 'onyomi', false, false);

  -- 3. VOCABULARIES
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '整然', 'tertib', 36, 42, 'Sesuatu yang <kanji>teratur</kanji>d <kanji>sifat</kanji> pasti sangat <vocabulary>tertib</vocabulary>. Tertata dengan baik, sangat rapi dan teratur!

Perhatikan bahwa untuk kata ini, Anda perlu menambahkan と di akhir untuk menjadikannya kata keterangan, dan たる untuk menjadikannya kata sifat! Ini cukup formal, jadi sebagian besar Anda hanya akan melihatnya di literatur untuk menggambarkan sesuatu yang telah diatur secara teratur.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Tertib, Sistematis, Terorganisir dengan baik, Tatanan Alam')
    RETURNING id INTO v_3591_tertib;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '悪例', 'contoh-buruk', 36, 43, '<kanji>contoh</kanji> yang buruk</kanji> adalah <vocabulary>contoh yang buruk</vocabulary> dan merupakan sesuatu yang tidak Anda inginkan.

Ini adalah ekspresi formal dan kurang umum dibandingkan 悪い例 (contoh yang buruk) atau 良くない例 (contoh yang tidak baik).', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Contoh Buruk, Preseden Buruk')
    RETURNING id INTO v_3659_contoh_buruk;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '傷める', 'untuk-merusak-sesuatu', 36, 44, 'Kanji berarti <kanji>luka</kanji>, dan kata kerja ini bersifat transitif, sehingga berarti <vocabulary>merusak sesuatu</vocabulary> atau <vocabulary>melukai sesuatu</vocabulary>.

Anda dapat menggunakannya untuk membicarakan bagian tubuh Anda, jadi terkadang Anda melihatnya digunakan secara bergantian dengan 痛める. Perbedaannya adalah bahwa pendekatan ini secara obyektif berfokus pada kerusakan, bukan rasa sakitnya. Itu sebabnya 傷める bisa digunakan untuk benda seperti mobil dan furnitur juga, sedangkan 痛める hanya untuk orang dan bagian tubuh saja.', 'Anda mempelajari bacaan ini ketika Anda mempelajari 傷む. Hore!', 'Untuk Merusak Sesuatu, Untuk Melukai Sesuatu')
    RETURNING id INTO v_5562_untuk_merusak_sesuatu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '砂', 'pasir', 36, 45, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Karena kata ini terdiri dari satu kanji, kemungkinan besar menggunakan bacaan kun''yomi. Anda tidak mempelajari cara membaca ini, jadi inilah mnemonik yang dapat membantu Anda mengingat: Jika Anda berjalan-jalan di pantai, Anda akan mendapatkan <vocabulary>pasir</vocabulary> di sepatu Anda <reading>cepat</reading> (すな) atau lambat.', 'Pasir, Menggertakkan')
    RETURNING id INTO v_5666_pasir;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '貴い', 'bangsawan', 36, 46, 'Ini adalah kanji tunggal dengan い di akhir, artinya Anda tahu itu mungkin kata sifat. Kata sifat ini menggambarkan hal-hal yang <kanji>berharga</kanji> dengan cara yang melampaui nilai uang, sehingga berarti <vocabulary>mulia</vocabulary> atau <vocabulary>invaluable</vocabulary>.

Meskipun 尊い digunakan untuk hal-hal yang Anda hormati dari hati, 貴い condong ke arah nilai yang bermartabat dan mulia — nilai yang terkait dengan status tinggi atau pangkat sosial. Oleh karena itu, Anda mungkin menemukan 貴い dalam cerita tentang sistem kelas historis atau hierarki sosial lama. Kata ini tidak muncul sesering 尊い dalam bahasa Jepang modern, namun Anda mungkin masih melihatnya dalam deskripsi kehadiran mulia seseorang atau rasa bermartabat yang mereka pancarkan.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Bacaannya sama dengan 尊い (dihormati, mulia), jadi jika kamu mengingatnya, kamu juga bisa membaca 貴い! Jika Anda lupa, berikut ini mnemonik untuk membantu Anda: 

Bagaimana cara mengetahui seseorang berasal dari latar belakang <vocabulary>bangsawan</vocabulary>? Periksa saja <reading>toe toe</reading> (とうと) mereka. Sebagian besar keluarga bangsawan merupakan keturunan asli, sehingga banyak anggota keluarga mereka yang memiliki jempol kaki (とう panjang) dan jempol kaki kecil lainnya tumbuh darinya (と pendek). Ini adalah cacat lahir yang umum di kalangan bangsawan keturunan bangsawan. Tentu saja, dari sudut pandang mereka, itu adalah bukti <vocabulary>yang tak ternilai</vocabulary> betapa mulia dan superiornya mereka.', 'Bangsawan, Sangat berharga')
    RETURNING id INTO v_5747_bangsawan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', 'うなぎ丼', 'mangkuk-belut', 36, 47, 'うなぎ berarti "belut", jadi うなぎ丼 adalah <kanji>mangkuk nasi</kanji> belut, alias <vocabulary>mangkuk belut</vocabulary>. Dan ya, itu sangat bagus.', 'Ini adalah うなぎ ditambah 丼. Nama lengkapnya adalah うなぎどんぶり, namun orang biasanya menyebutnya dengan singkat うなぎどん. Anda telah mempelajari bacaan どんぶり lengkap dengan kosakata kata 丼, namun berikut ini penyegarannya:

Saat kamu ingin makan <vocabulary>eel bowl</vocabulary>, kamu harus meminta <reading>Don Brie</reading> (どんぶり) untuk rice bowlnya. Dia adalah bos mafia yang menimbun semua mangkuk nasi untuk dimakan kejunya — ingat dia? Jangan berpihak pada Don Brie, atau tidak ada mangkuk belut untukmu!

Perhatikan bahwa terkadang orang menyingkatnya menjadi うなどん. Tapi karena ぎ disertakan di sini, pastikan untuk mengetikkannya saat mengulas!', 'Mangkuk Belut, Mangkuk Nasi Belut')
    RETURNING id INTO v_5755_mangkuk_belut;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '親子丼', 'mangkok-nasi-ayam-dan-telur', 36, 48, 'Makanan yang sangat umum ini adalah <kanji>orang tua</kanji> dan <kanji>anak</kanji> <kanji>mangkuk nasi</kanji>, alias <vocabulary>mangkuk nasi orang tua dan anak</vocabulary>. Induknya adalah seekor ayam. Anak itu adalah telur. Ini juga bisa disebut <vocabulary>mangkuk nasi ayam dan telur</vocabulary>, atau hanya <vocabulary>oyako-don</vocabulary>.', 'Ini adalah 親子 (おやこ) ditambah 丼, dan ketiga kanji menggunakan pembacaan kun''yomi mereka. Nama lengkapnya adalah おやこどんぶり, tapi orang biasanya menyebut おやこどん sebagai singkatannya. Anda telah mempelajari bacaan どんぶり lengkap dengan kosakata kata 丼, namun berikut ini penyegarannya:

Saat kamu ingin membuat <vocabulary>chicken and egg rice bowl</vocabulary>, kamu harus meminta <reading>Don Brie</reading> (どんぶり) untuk rice bowlnya. Dia adalah bos mafia yang menimbun semua mangkuk nasi untuk dimakan kejunya — ingat dia? Jangan berpihak pada Don Brie, atau tidak ada <vocabulary>oyako-don</vocabulary> untukmu!', 'Mangkok Nasi Ayam Dan Telur, Mangkuk Nasi Orang Tua Dan Anak, Oyako-Don')
    RETURNING id INTO v_5938_mangkok_nasi_ayam_dan_telur;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '吐き気', 'mual', 36, 49, '<kanji>muntah</kanji> <kanji>energi</kanji> yang Anda rasakan di dalam diri Anda… mungkinkah… <vocabulary>mual</vocabulary>?!', 'Pembacaannya berasal dari 吐く dan pembacaan (tidak beraturan) dari 気 disatukan.', 'Mual')
    RETURNING id INTO v_5939_mual;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '吐き出す', 'untuk-meludahkan', 36, 50, 'Anda tahu 吐く berarti "muntah", dan 出す berarti "mengeluarkan" atau "melepaskan". Jadi Anda tidak hanya muntah di sini, Anda sengaja membiarkannya keluar ke dunia nyata, yang menjadikan <vocabulary>muntahkan</vocabulary> atau <vocabulary>melemparkan sesuatu</vocabulary>. 

吐き出す bisa secara harafiah, seperti dalam 水を吐き出す (memuntahkan air), atau kiasan, seperti dalam 気持ちを吐き出す (untuk mengeluarkan semua perasaanmu).', 'Bacaannya berasal dari 吐く dan 出す.', 'Untuk Meludahkan, Untuk Melemparkan Sesuatu')
    RETURNING id INTO v_5940_untuk_meludahkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '奴ら', 'teman-teman-itu', 36, 51, 'Jika 奴 hanyalah seorang laki-laki atau laki-laki, menambahkan ら di sana akan menjadikannya jamak. Sekarang <vocabulary>orang-orang itu</vocabulary> atau <vocabulary>orang-orang itu</vocabulary>.', 'Bacaannya berasal dari 奴.', 'Teman-teman itu, Orang-orang itu')
    RETURNING id INTO v_5941_teman_teman_itu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '口紅', 'lipstik', 36, 52, '<kanji>mulut</kanji> <kanji>merah tua</kanji> adalah warna merah tua yang Anda pakai pada mulut Anda. Ini adalah <vocabulary>lipstik</vocabulary>.', 'Ini menggunakan pembacaan kun''yomi untuk kedua kanji. Anda sudah mengetahui ini untuk 口, namun Anda belum mempelajari salah satu bacaan kun''yomi untuk 紅, jadi inilah mnemonik untuk membantu Anda menghafalkan yang Anda perlukan untuk kosakata ini:

<vocabulary>lipstick</vocabulary> favoritmu adalah <reading>Benny</reading> (べに) oleh... <reading>Benny</reading>. Ada laki-laki bernama <reading>Benny</reading> yang membuat lipstik cantik banget, hanya saja dia tidak pandai memberi nama, jadi semuanya hanya <reading>Benny</reading>.', 'Lipstik')
    RETURNING id INTO v_5942_lipstik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '薦め', 'rekomendasi', 36, 53, 'Jika 薦める berarti "merekomendasikan", maka versi kata bendanya adalah <vocabulary>recommendation</vocabulary> atau beberapa <vocabulary>advice</vocabulary>. Ini umumnya mengacu pada rekomendasi seseorang atau sesuatu, bukan suatu tindakan.', 'Bacaannya berasal dari 薦める. Bolehkah saya membuat <vocabulary>rekomendasi</vocabulary> untuk mempelajari kata itu terlebih dahulu?', 'Rekomendasi, Nasihat')
    RETURNING id INTO v_5943_rekomendasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '勤め', 'bekerja', 36, 54, 'Jika 勤める berarti "dipekerjakan di", maka versi kata bendanya adalah <vocabulary>work</vocabulary>. Maksud saya, saya sangat berharap Anda bekerja di tempat yang mempekerjakan Anda... jika tidak, Anda mungkin akan dipecat.', 'Bacaannya berasal dari 勤める.', 'Bekerja, Pekerjaan, Tugas')
    RETURNING id INTO v_5944_bekerja;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '電磁場', 'medan-elektromagnetik', 36, 55, 'A 磁場 adalah "medan magnet". Versi <kanji>listrik</kanji> dari ini adalah <vocabulary>medan elektromagnetik</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan bacaan on''yomi untuk dua kanji pertama dan bacaan kun''yomi untuk kanji ketiga. Anda seharusnya bisa membaca ini sendiri. Tentu saja akan membantu untuk mengetahui 磁場 juga.', 'Medan Elektromagnetik')
    RETURNING id INTO v_5945_medan_elektromagnetik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '放射能', 'radioaktivitas', 36, 56, '放射 adalah "radiasi." Tambahkan <kanji>kemampuan</kanji> radiasi dan Anda memiliki <vocabulary>radioaktivitas</vocabulary>, untuk beberapa alasan. Saya kira benda tidak memiliki radioaktivitas sampai Anda memberinya kemampuan radiasi, bukan?', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Radioaktivitas, Radiasi')
    RETURNING id INTO v_5946_radioaktivitas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '指揮者', 'konduktor', 36, 57, 'Jika 指揮 adalah "perintah" atau "memimpin" maka <kanji>seseorang</kanji> yang melakukan hal-hal tersebut adalah <vocabulary>komandan</vocabulary>, atau <vocabulary>konduktor</vocabulary>. Biasanya jenis yang memimpin orkestra!', 'Bacaannya adalah bacaan 指揮 ditambah bacaan on''yomi 者.', 'Konduktor, Komandan')
    RETURNING id INTO v_5947_konduktor;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '源氏物語', 'kisah-genji', 36, 58, 'Ingat 源氏? Dia punya miliknya sendiri. Ini adalah novel pertama yang pernah ditulis (yang kami ketahui). Inilah <vocabulary>Kisah Genji</vocabulary>.', 'Pembacaannya merupakan kombinasi 源氏 dan 物語 yang telah Anda pelajari sebelumnya sehingga Anda seharusnya tidak mempunyai masalah dengan yang satu ini.', 'Kisah Genji, Kisah Genji')
    RETURNING id INTO v_5948_kisah_genji;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '損害する', 'untuk-merusak', 36, 59, 'Jika 損害 adalah "merusak" maka versi kata kerjanya adalah <vocabulary>to damage</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri. Membaca juga sama dengan 損害.', 'Untuk Merusak')
    RETURNING id INTO v_5949_untuk_merusak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '枝豆', 'edamame', 36, 60, '<kanji>cabang</kanji> <kanji>kacang</kanji> tidak berarti banyak dalam hal ini, tapi Anda mungkin tahu makanan yang dijelaskan di sini. Ini adalah <vocabulary>edamame</vocabulary>, makanan yang terbuat dari <vocabulary>kedelai kukus</vocabulary>, biasanya diberi sedikit garam untuk menambah rasa.', 'Sayangnya, bacaan tersebut merupakan bacaan kun''yomi dari kedua kanji tersebut. Itulah vocab kata 枝 dan 豆 yang digabungkan menjadi satu.', 'Edamame, Kedelai Kukus')
    RETURNING id INTO v_5950_edamame;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '豆腐', 'tahu', 36, 61, '<kanji>Kacang</kanji> <kanji>busuk</kanji> adalah saat Anda mengambil kacang kedelai, membiarkannya berfermentasi, lalu Anda membuat <vocabulary>tahu</vocabulary> darinya! Ya, itulah tahu. Kacang busuk.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Tahu, Tahu')
    RETURNING id INTO v_5951_tahu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '旧姓', 'nama-keluarga-mantan', 36, 62, '<kanji>mantan</kanji> <kanji>nama belakang</kanji> Anda hanya itu: <vocabulary>nama belakang sebelumnya</vocabulary> Anda! Ini sering kali merupakan <vocabulary>nama gadis</vocabulary> Anda, seperti nama yang Anda miliki sebelum menikah.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Nama Keluarga Mantan, Nama Gadis')
    RETURNING id INTO v_5952_nama_keluarga_mantan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '復旧', 'restorasi', 36, 63, '<kanji>Kembalikan</kanji> ke <kanji>mantan</kanji>. Inilah <vocabulary>restorasi</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Restorasi, Pemulihan')
    RETURNING id INTO v_5953_restorasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '姓名', 'nama-lengkap', 36, 64, '<kanji>nama belakang</kanji> dan <kanji>nama</kanji> Anda digabungkan untuk membuat <vocabulary>nama lengkap</vocabulary> Anda.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Nama Lengkap')
    RETURNING id INTO v_5954_nama_lengkap;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '貿易', 'berdagang', 36, 65, '<kanji>Berdagang</kanji> itu <kanji>mudah</kanji> jika Anda menyukai <vocabulary>berdagang</vocabulary> dan <vocabulary>commerce</vocabulary>.', 'Pembacaan 貿 oke, tetapi pembacaan 易 berbeda dari biasanya. Bayangkan saja berapa banyak perdagangan yang masuk yang akan masuk ke <reading>stasiun</reading> kereta (駅). Jadi jika Anda ingin perdagangan yang bagus, Anda pasti ingin berada di えき.', 'Berdagang, Perdagangan')
    RETURNING id INTO v_5955_berdagang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '甘い', 'manis', 36, 66, 'Ini adalah kanji tunggal dengan い di akhir, artinya Anda tahu itu mungkin kata sifat. Apa bentuk kata sifat dari <kanji>manis</kanji>? <vocabulary>manis</vocabulary>.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji.', 'Manis')
    RETURNING id INTO v_5956_manis;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '甘く見る', 'untuk-tidak-menganggapnya-serius', 36, 67, 'Saat Anda <kanji>melihat</kanji> sesuatu yang <kanji>manis</kanji>, Anda hanya melihatnya seperti anak kecil yang manis dengan rasa yang manis. Anda tidak menganggapnya serius, atau Anda menganggapnya enteng. Manis sekali! Itu sebabnya kata ini <vocabulary>tidak dianggap serius</vocabulary> atau <vocabulary>dianggap enteng</vocabulary>.', 'Bacaannya berasal dari 甘い dan 見る. Jangan menganggap enteng kata ini dan Anda seharusnya bisa mempelajarinya tanpa masalah.', 'Untuk Tidak Menganggapnya Serius, Untuk Dianggap Ringan')
    RETURNING id INTO v_5957_untuk_tidak_menganggapnya_serius;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '甘党', 'gigi-manis', 36, 68, '<kanji>manis</kanji> <kanji>grup</kanji> adalah sekelompok orang yang menyukai hal-hal manis. Mereka benar-benar memiliki <kosakata>yang manis-manis</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan bacaan yang Anda pelajari dengan kanji.', 'Gigi Manis')
    RETURNING id INTO v_5958_gigi_manis;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '将来', 'masa-depan', 36, 69, '<kanji>Komandan</kanji> akan <kanji>datang</kanji> di <vocabulary>masa depan</vocabulary>. Bukan dalam waktu dekat, tapi di masa depan.

将来 umumnya menyiratkan masa depan yang lebih dekat dan lebih konkrit. Anda mungkin akan menggunakannya ketika mendiskusikan rencana karir Anda atau strategi pertumbuhan perusahaan, dan bukan seperti apa Bumi 100 tahun dari sekarang.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Masa depan')
    RETURNING id INTO v_5959_masa_depan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '将軍', 'shogun', 36, 70, '<kanji>komandan</kanji> <kanji>tentara</kanji> adalah <vocabulary>shogun</vocabulary>. Apakah kamu kenal shogun? Dia memerintah Jepang, dan seperti jenderal yang berkuasa di negara-negara bagian. Anda juga bisa memanggilnya <vocabulary>umum</vocabulary> atau <vocabulary>commander</vocabulary>, jika Anda mau.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Shogun, Umum, Komandan, Shougun')
    RETURNING id INTO v_5960_shogun;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '大将', 'umum', 36, 71, '<kanji>besar</kanji> <kanji>komandan</kanji> adalah <vocabulary>umum</vocabulary> atau <vocabulary>admiral</vocabulary> (atau <vocabulary>head</vocabulary> atau <vocabulary>leader</vocabulary>). Pada dasarnya, itu adalah hal yang besar.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Umum, Laksamana, Kepala, Pemimpin')
    RETURNING id INTO v_5961_umum;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '主将', 'komandan', 36, 72, '<kanji>master</kanji> <kanji>komandan</kanji> adalah <vocabulary>komandan</vocabulary> dari semua komandan, <vocabulary>panglima tertinggi</vocabulary> jika Anda mau... atau, bahkan <vocabulary>kapten tim</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Komandan, Panglima Tertinggi, Kapten Tim')
    RETURNING id INTO v_5962_komandan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '同盟', 'persekutuan', 36, 73, 'Kami berasal dari <kanji>aliansi</kanji> yang <kanji>sama</kanji>. Kami berada dalam <vocabulary>aliansi</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Persekutuan')
    RETURNING id INTO v_5963_persekutuan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '連盟', 'liga', 36, 74, 'Jika kita <kanji>mengajak</kanji> <kanji>aliansi</kanji> kita dan memajukannya ke arah yang lebih baik, kita akan memiliki <vocabulary>liga</vocabulary> atau <vocabulary>federation</vocabulary>. Sepertinya kita satu kelompok sekarang!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Liga, Federasi')
    RETURNING id INTO v_5964_liga;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '盟約', 'sumpah', 36, 75, '<kanji>aliansi</kanji> <kanji>janji</kanji> adalah aliansi yang dibuat dengan <vocabulary>janji</vocabulary> atau <vocabulary>pakta</vocabulary>. Bayangkan membuat aliansi dengan seseorang, menjanjikan dukungan Anda.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Sumpah, Pakta')
    RETURNING id INTO v_5965_sumpah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '遺産', 'warisan', 36, 76, 'Jika Anda <kanji>meninggalkan</kanji> <kanji>properti</kanji> itu dikenal sebagai <vocabulary>warisan</vocabulary> Anda.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Warisan, Warisan')
    RETURNING id INTO v_5966_warisan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '遺失', 'kehilangan', 36, 77, 'Hal yang kita <kanji>tinggalkan</kanji> pada suatu <kanji>kesalahan</kanji> adalah <vocabulary>kerugian</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Kehilangan')
    RETURNING id INTO v_5967_kehilangan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '遺伝', 'keturunan', 36, 78, 'Apa yang <kanji>tinggalkan</kanji> dan <kanji>transmisikan</kanji> kepada Anda adalah <vocabulary>keturunan</vocabulary> Anda. Anda memiliki gen saya, bahkan setelah saya pergi.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi yang telah Anda pelajari.', 'Keturunan')
    RETURNING id INTO v_5968_keturunan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '遺体', 'mayat', 36, 79, 'Anda <kanji>meninggalkan</kanji> <kanji>tubuh</kanji> Anda untuk bergabung dengan alam roh. Tubuh yang Anda tinggalkan ini adalah <vocabulary>mayat</vocabulary> Anda.

Dibandingkan dengan 死体 (mayat), 遺体 adalah cara yang lebih terhormat untuk merujuk secara khusus pada <vocabulary>sisa-sisa manusia</vocabulary>. Kata ini sering digunakan dalam berita, pemakaman, rumah sakit, dan pidato untuk menunjukkan rasa hormat kepada orang yang meninggal, dan dapat dipasangkan dengan sebutan kehormatan ご, seperti ご遺体.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Mayat, Sisa Manusia')
    RETURNING id INTO v_5969_mayat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '伸びる', 'untuk-tumbuh-lebih-lama', 36, 80, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>meregangkan</kanji> dan versi kosakata kata kerjanya adalah <vocabulary>to Grow Long</vocabulary> atau <vocabulary>to be stretch</vocabulary>. Ini sering digunakan secara kiasan, dalam hal ini Anda akan menerjemahkannya sebagai <vocabulary>untuk membuat kemajuan</vocabulary> atau <vocabulary>untuk meningkat</vocabulary>.

Kamu tahu ini adalah versi di mana kamu tidak melakukan peregangan, itu terjadi begitu saja, karena ini seperti bagaimana perutmu meregang ketika kamu minum bir (びる). Kapasitasnya sepertinya meningkat sehingga Anda dapat meminum lebih banyak bir.', 'Bacaannya adalah yang kamu pelajari dengan kanji, dasar bebek yang beruntung!', 'Untuk Tumbuh Lebih Lama, Untuk Diregangkan, Untuk Membuat Kemajuan, Untuk Meningkatkan')
    RETURNING id INTO v_5970_untuk_tumbuh_lebih_lama;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '債券', 'menjalin-kedekatan', 36, 81, '<kanji>hutang</kanji> <kanji>tiket</kanji> adalah <vocabulary>obligasi</vocabulary>. Anda membelinya dari pemerintah dan kemudian mereka membayarnya kembali kepada Anda dengan bunga... secara teori.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Menjalin kedekatan')
    RETURNING id INTO v_5971_menjalin_kedekatan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '債権', 'kredit', 36, 82, '<kanji>Hutang</kanji> <kanji>hak</kanji> Anda menyatakan bahwa Anda memiliki sejumlah <vocabulary>kredit</vocabulary> di bank Anda. Dan jika mereka mencoba mengatakan bahwa Anda tidak memiliki kredit tersebut, Anda dapat mengajukan <vocabulary>klaim</vocabulary> terhadap mereka!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Kredit, Mengeklaim, Utang, Kewajiban')
    RETURNING id INTO v_5972_kredit;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '国債', 'utang-nasional', 36, 83, '<kanji>hutang</kanji> suatu <kanji>negara</kanji> adalah <vocabulary>hutang nasional</vocabulary>. Bisa juga berupa <vocabulary>obligasi</vocabulary>, seperti yang Anda beli dari negara Anda.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Utang Nasional, Obligasi')
    RETURNING id INTO v_5973_utang_nasional;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '及ぶ', 'untuk-mencapai', 36, 84, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>mencapai</kanji> dan versi kata kerjanya adalah <vocabulary>toreach</vocabulary> atau <vocabulary>to amount to</vocabulary> . Ini seperti "x mencapai y" atau "x sama dengan y".', '<reading>Oh ya</reading>, jika ingin mencapai angka itu, kamu harus berusaha lebih keras.', 'Untuk Mencapai, Sebesar')
    RETURNING id INTO v_5974_untuk_mencapai;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '普及', 'difusi', 36, 85, 'Ketika sesuatu <kanji>mencapai</kanji>menjadi <kanji>normal</kanji>, <vocabulary>difusi</vocabulary> telah selesai. Hal-hal normal tidak semuanya berkumpul dan terkonsentrasi. Hal-hal normal tersebar dengan baik dan merata, melalui difusi.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Difusi')
    RETURNING id INTO v_5975_difusi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '及第', 'mencapai-sukses', 36, 86, 'Saya <kanji>mencapai</kanji><kanji>awalan angka urut</kanji> yang mewakili nilai kelulusan ujian saya. Artinya saya bisa <vocabulary>mendapatkan nilai</vocabulary>! Wah, <vocabulary>lulus ujian</vocabulary> rasanya luar biasa.

及第 adalah istilah kuno yang mungkin Anda lihat sebagai bagian dari kata 及第点 (nilai kelulusan), terutama jika Anda banyak membaca buku klasik Jepang.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Mencapai sukses, Lulus Ujian')
    RETURNING id INTO v_5976_mencapai_sukses;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '奈良', 'nara', 36, 87, '<kanji>Nara</kanji> adalah <kanji>bagus</kanji> dan itu adalah <vocabulary>Nara</vocabulary> (tempat yang sedang kita bicarakan).', 'Pembacaan untuk 奈 bagus, pembacaan untuk 良 cukup buruk dalam hal apa yang telah Anda pelajari. Tapi, kalau kamu tahu yang artinya Nara, kamu pasti tahu kalau bacaannya adalah <reading>なら</reading> juga.', 'Nara')
    RETURNING id INTO v_5977_nara;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '神奈川県', 'prefektur-kanagawa', 36, 88, '<kanji>dewa</kanji> <kanji>Nara</kanji> <kanji>sungai</kanji> <kanji>Prefektur</kanji> adalah <vocabulary>Prefektur Kanagawa</vocabulary>.', 'か dari 神 digunakan di sini (kehilangan み). Kemudian, segala hal lainnya harus cukup jelas.', 'Prefektur Kanagawa')
    RETURNING id INTO v_5978_prefektur_kanagawa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '幅', 'lebar', 36, 89, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji.', 'Lebar')
    RETURNING id INTO v_5979_lebar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '廃止', 'penghapusan', 36, 90, 'Ini sudah <kanji>usang</kanji> jadi kita harus <kanji>menghentikannya</kanji>. Tidak ada lagi. Ini adalah <vocabulary>penghapusan</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Penghapusan')
    RETURNING id INTO v_5980_penghapusan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '廃れる', 'menjadi-usang', 36, 91, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>usang</kanji> dan kata ini berarti <vocabulary>menjadi usang</vocabulary>.', 'Semuanya <kosa kata>menjadi usang</vocabulary>. Bahkan hal yang paling besar dan paling berapi-api, seperti <reading>sta</reading>r, misalnya, akan menjadi usang suatu saat nanti.', 'Menjadi Usang')
    RETURNING id INTO v_5981_menjadi_usang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '換気', 'ventilasi', 36, 92, 'Sesuatu yang akan <kanji>menukar</kanji> <kanji>energi</kanji> adalah sesuatu yang menarik udara, mengeluarkan benda-benda buruk, dan kemudian mengeluarkan udara yang baik, menukarnya dengan yang buruk. Itulah <vocabulary>ventilasi</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Ventilasi')
    RETURNING id INTO v_5984_ventilasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '変換', 'konversi', 36, 93, 'Jika Anda <kanji>mengubah</kanji> sesuatu lalu <kanji>menukarkannya</kanji>, Anda melakukan <vocabulary>konversi</vocabulary> atau <vocabulary>perubahan</vocabulary>.

変換 umumnya mengacu pada konversi sesuatu dari satu bentuk ke bentuk lainnya, seperti konversi data, transformasi energi, atau bahkan konversi hiragana menjadi kanji.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Konversi, Mengubah')
    RETURNING id INTO v_5985_konversi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '摘む', 'untuk-memetik', 36, 94, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>memetik</kanji> sehingga versi kosakata kata kerjanya adalah <vocabulary>memetik</vocabulary> atau <vocabulary>memilih</vocabulary> atau <vocabulary>memangkas</vocabulary>, seperti pada tanaman.', 'Anda akan keluar <vocabulary>untuk memetik</vocabulary> <reading>dua</reading> (つ) bunga favorit Anda.', 'Untuk Memetik, Untuk Memilih, Untuk Memangkas')
    RETURNING id INTO v_5986_untuk_memetik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '指摘', 'menunjuk', 36, 95, 'Ambil <kanji>jari</kanji> Anda dan <kanji>cabut</kanji> satu hal dari semua hal yang perlu <vocabulary>ditunjukkan</vocabulary> atau <vocabulary>identifikasi</vocabulary>. Ya, itu dia. Petik yang itu.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Menunjuk, Identifikasi')
    RETURNING id INTO v_5987_menunjuk;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '摘発する', 'untuk-membuka-kedok', 36, 96, 'Untuk <kanji>mencabut</kanji> topeng seseorang dan <kanji>meninggalkannya</kanji> di suatu tempat yang jauh dari wajahnya, itu adalah <vocabulary>membuka kedok</vocabulary> atau <vocabulary>menyingkapkan</vocabulary> seseorang.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Untuk Membuka Kedok, Untuk Mengekspos')
    RETURNING id INTO v_5988_untuk_membuka_kedok;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '核', 'inti', 36, 97, 'Kanji dan kata-katanya sama. Itu berarti mereka juga berbagi makna. Kata ini bisa juga berarti <vocabulary>inti</vocabulary> karena di situlah inti sel berada, dan <vocabulary>nuklir</vocabulary> karena kita suka meledakkan diri saat ini...', 'Bacaannya sama dengan bacaan kanji yang Anda pelajari.', 'Inti, Inti, Nuklir')
    RETURNING id INTO v_5989_inti;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '核兵器', 'senjata-nuklir', 36, 98, 'Senjata <kanji>Nuklir</kanji> (兵器), alias senjata, adalah <vocabulary>senjata nuklir</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Senjata Nuklir')
    RETURNING id INTO v_5990_senjata_nuklir;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '核実験', 'uji-nuklir', 36, 99, 'Eksperimen <kanji>inti</kanji> (実験) adalah <vocabulary>ujian nuklir</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Uji Nuklir, Uji Bom Nuklir, Pengujian Nuklir')
    RETURNING id INTO v_5991_uji_nuklir;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '沖合', 'laut-terbuka', 36, 100, '<kanji>laut terbuka</kanji> adalah tempat <kanji>laut bergabung</kanji> menjadi <vocabulary>laut terbuka</vocabulary>.', 'Bacaannya adalah bacaan kun''yomi yang dipelajari saat mempelajari kanji. Ingatlah bahwa kali ini 合 mengambil bacaan あい.', 'Laut Terbuka')
    RETURNING id INTO v_5992_laut_terbuka;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '縄', 'tali', 36, 101, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Karena kata ini terdiri dari satu kanji, kemungkinan besar menggunakan bacaan kun''yomi. Anda belum mempelajari bacaan ini, jadi inilah mnemonik untuk membantu Anda mengingat:

<vocabulary>tali</vocabulary> ini bisa digunakan untuk apa? Untuk menangkap <reading>na</reading>pping <reading>wa</reading>lrus (なわ). Terlalu sulit menangkap walrus yang masih terjaga, bahkan dengan tali bagus seperti ini. Namun jika mereka adalah walrus yang sedang tidur siang, hanya tali inilah yang Anda perlukan untuk mengikatnya.', 'Tali')
    RETURNING id INTO v_5993_tali;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '縄文', 'jomon', 36, 102, '<kanji>Tali</kanji> <kanji>tulisan</kanji> digunakan pada periode <vocabulary>Jomon</vocabulary>, suatu masa dalam sejarah <vocabulary>Jepang kuno</vocabulary> ketika orang-orang menghiasi tembikar dengan tali.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Anda mempelajari dua bacaan on''yomi yang berbeda untuk 文, jadi inilah mnemonik untuk membantu Anda mengingat mana yang akan digunakan:

Periode <vocabulary>Jomon</vocabulary> sudah sangat lama sehingga <reading>mon</reading>ster (もん) mungkin masih hidup di bumi. Anda tahu, binatang mitologis seperti ogre, setan, dan sebagainya. Kenapa lagi <vocabulary>orang Jomon</vocabulary> membuat semua patung tanah liat yang tampak liar itu? Itu pasti monster, tidak diragukan lagi.', 'Jomon, Orang Jomon, Jepang kuno')
    RETURNING id INTO v_5994_jomon;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '津波', 'tsunami', 36, 103, '<kanji>pelabuhan</kanji> <kanji>Gelombang</kanji> adalah gelombang yang cukup besar sehingga dapat dengan mudah menenggelamkan seluruh pelabuhan. Apa yang bisa Anda sebut sebagai gelombang seperti itu? Mungkin <vocabulary>tsunami</vocabulary>, atau <vocabulary>gelombang pasang</vocabulary>.', 'Bacaannya adalah bacaan 津 dan 波 kun''yomi yang digabungkan menjadi satu.', 'Tsunami, Gelombang Pasang')
    RETURNING id INTO v_5995_tsunami;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '献血', 'donor-darah', 36, 104, 'Saya ingin <kanji>menawarkan</kanji> <kanji>darah</kanji> saya kepada orang lain dalam bentuk <vocabulary>donor darah</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Donor Darah')
    RETURNING id INTO v_5996_donor_darah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '献金', 'sumbangan', 36, 105, 'Saya ingin <kanji>menawarkan</kanji> <kanji>uang</kanji>, tanpa pamrih. Ini gratis. Itu adalah <vocabulary>donasi</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Sumbangan, Menawarkan')
    RETURNING id INTO v_5997_sumbangan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '医療', 'perawatan-medis', 36, 106, 'Sebuah <kanji>obat</kanji> dapat <kanji>menyembuhkan</kanji>. Ini adalah <vocabulary>perawatan medis</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Perawatan Medis')
    RETURNING id INTO v_5998_perawatan_medis;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '治療', 'terapi-medis', 36, 107, '<kanji>Sembuhkan</kanji> dan <kanji>sembuhkan</kanji> saya. Itulah <vocabulary>terapi medis</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Terapi Medis, Perawatan Medis')
    RETURNING id INTO v_5999_terapi_medis;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '継ぐ', 'untuk-mewarisi', 36, 108, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>mewarisi</kanji> dan versi kosakata kata kerjanya adalah <vocabulary>mewarisi</vocabulary>.', 'Anda tidak hanya mewarisi satu rejeki, tapi <reading>dua</reading>! Anda beruntung kedua belah pihak keluarga Anda "tidak sengaja" meninggal pada waktu yang bersamaan. <reading>DUA</reading> (つ) keberuntungan! DUA! HA HA HA HA. Selain itu, Anda dapat menganggapnya seperti つ dari 次, karena Anda adalah penerus "berikutnya" ketika Anda mewarisi sesuatu.', 'Untuk Mewarisi')
    RETURNING id INTO v_6001_untuk_mewarisi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '継承', 'suksesi', 36, 109, 'Saya akan <kanji>mewarisi</kanji> atas <kanji>persetujuan</kanji> Anda. Hal ini tidak diberikan secara langsung kepada saya saat lahir, meskipun memang demikian adanya. Saya mendapatkan <vocabulary>succession</vocabulary>, tetapi hanya jika orang mengatakan tidak apa-apa.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Suksesi, Warisan')
    RETURNING id INTO v_6002_suksesi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '維持', 'pemeliharaan', 36, 110, '<kanji>Pertahankan</kanji> apa yang kita miliki dan simpan <kanji>tahan</kanji>. Kami harus selalu memperbarui dan memperbaikinya, sehingga kami memerlukan <vocabulary>pemeliharaan</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Pemeliharaan, Mendukung')
    RETURNING id INTO v_6003_pemeliharaan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '維新', 'restorasi', 36, 111, 'Kita harus <kanji>mempertahankan</kanji> yang <kanji>yang baru</kanji> dan membuang yang lama. Saatnya <vocabulary>restorasi</vocabulary> kebijakan! Ini juga mengacu pada <vocabulary>Restorasi Meiji</vocabulary> juga. Faktanya, mungkin sebagian besar mengacu pada hal ini, meskipun Anda akan mempelajari versi lebih lengkapnya nanti.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Restorasi, Restorasi Meiji')
    RETURNING id INTO v_6004_restorasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '舞台', 'panggung', 36, 112, '<kanji>tarian</kanji> <kanji>mesin</kanji> sebenarnya bukan mesin... 台 adalah mesin penghitung benda yang besar, jadi dalam hal ini berbicara tentang panggung. Panggung menari adalah <vocabulary>panggung</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri. Ingatlah bahwa 台 dibaca sebagai たい di sini, bukan だい.', 'Panggung')
    RETURNING id INTO v_6005_panggung;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '舞う', 'untuk-menari', 36, 113, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>menari</kanji> dan versi kosakata kata kerja berarti <vocabulary>menari</vocabulary>, serta <vocabulary>mengepak</vocabulary>.', 'Siapa penari terhebat di antara semuanya? Penguasa Tiongkok sebelumnya, <reading>Mao</reading> (まう).', 'Untuk Menari, Berkibar')
    RETURNING id INTO v_6006_untuk_menari;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '歌舞伎', 'kabuki', 36, 114, '<kanji>lagu</kanji> <kanji>menari</kanji> <kanji>perbuatan</kanji> adalah perbuatan yang Anda lakukan yang melibatkan menyanyi dan menari. Ini adalah bentuk pertunjukan panggung tradisional, yang dikenal sebagai <vocabulary>kabuki</vocabulary>. Tonton di YouTube jika Anda ingin mencicipinya.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Kabuki')
    RETURNING id INTO v_6007_kabuki;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '舞踏', 'tarian', 36, 115, 'Kamu <kanji>menari</kanji>, kamu <kanji>melangkah</kanji>, kamu menari, kamu melangkah. Kerja bagus! Sekarang Anda sedang melakukan <vocabulary>menari</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Tarian')
    RETURNING id INTO v_6008_tarian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '踏む', 'untuk-melangkah', 36, 116, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>langkah</kanji> dan versi kosakata kata kerjanya adalah <vocabulary>to step on</vocabulary>. Jadi, tidak cukup "melangkah" seperti yang Anda harapkan, tapi setidaknya Anda tetap melangkah, meskipun sedang melakukan sesuatu.', 'Anda ingin <vocabulary>menginjak</vocabulary> bug itu? Kamu <read>foo</reading>l (ふ)! Itu adalah serangga penusuk sepatu yang mematikan, ia akan menembus sol sepatu Anda dan meracuni Anda melalui kaki Anda! <read>Bodoh</reading>aku!', 'Untuk Melangkah, Untuk Menginjak')
    RETURNING id INTO v_6009_untuk_melangkah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '一般', 'umum', 36, 117, '<kanji>Seseorang</kanji> <kanji>umumnya</kanji> melakukan sesuatu... secara <vocabulary>umum</vocabulary>. Cara ini lebih <vocabulary>umum</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri. Ingatlah bahwa はん berubah menjadi ぱん untuk 般.', 'Umum, Umum')
    RETURNING id INTO v_6010_umum;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '超〜', 'sangat', 36, 118, 'Ini memiliki arti yang sama dengan kanji. Tempelkan ini ke kata lain dan Anda akan mendapatkan "ultra _____".', 'Bacaannya sama dengan yang Anda pelajari dengan kanji.', 'Sangat, Super, Benar-benar')
    RETURNING id INTO v_6011_sangat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '超自然的', 'gaib', 36, 119, 'Sesuatu yang <kanji>ultra</kanji> natural (自然的) adalah <vocabulary>supernatural</vocabulary>. Terlalu alami! Super!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Gaib')
    RETURNING id INTO v_6012_gaib;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '超音速', 'kecepatan-supersonik', 36, 120, '<kanji>super</kanji> <kanji>suara</kanji> yang <kanji>cepat</kanji> adalah <vocabulary>kecepatan supersonik</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Kecepatan Supersonik')
    RETURNING id INTO v_6013_kecepatan_supersonik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '超音波', 'gelombang-ultrasonik', 36, 121, '<kanji>ultra</kanji> <kanji>suara</kanji> <kanji>gelombang</kanji> adalah <vocabulary>gelombang ultrasonik</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri. Ingatlah bahwa は berubah menjadi ぱ untuk 波.', 'Gelombang Ultrasonik')
    RETURNING id INTO v_6014_gelombang_ultrasonik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '頼む', 'untuk-meminta', 36, 122, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>percaya</kanji>, namun versi kosakata kata kerjanya adalah <vocabulary>meminta</vocabulary> atau <vocabulary>mengandalkan</vocabulary> atau <vocabulary>meminta</vocabulary>. Saat Anda memercayai seseorang, Anda bisa mempercayainya, tetapi hanya jika Anda memercayainya. Anda menaruhnya di tangan mereka. Bagaimanapun juga, Anda memercayai mereka.', 'Tapi, kamu mempercayakan tugas ini kepada temanmu bukan karena kamu sibuk, tapi karena kamu ingin bersenang-senang <membaca>楽</reading>しい di taman air. Memperdaya!', 'Untuk Meminta, Untuk Meminta, Untuk Mempercayakan, Untuk Mengandalkan')
    RETURNING id INTO v_6015_untuk_meminta;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '信頼', 'kepercayaan', 36, 123, 'Saya <kanji>yakin</kanji> saya bisa <kanji>mempercayai</kanji> Anda. Itu sebabnya saya sangat <vocabulary>ketergantungan</vocabulary> dan <vocabulary>kepercayaan</vocabulary> pada Anda untuk melakukannya dengan baik.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Kepercayaan, Memercayai')
    RETURNING id INTO v_6016_kepercayaan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '依頼', 'meminta', 36, 124, 'Aku <kanji>bergantung</kanji> padamu dan aku <kanji>mempercayai</kanji> padamu. Oleh karena itu, saya mempunyai <vocabulary>permintaan</vocabulary> untuk Anda yang ingin saya <vocabulary>percayakan</vocabulary> kepada Anda.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Meminta, Mempercayakan')
    RETURNING id INTO v_6017_meminta;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '依存', 'ketergantungan', 36, 125, 'Menjadi <kanji>bergantung</kanji> pada sesuatu agar <kanji>ada</kanji> adalah <vocabulary>ketergantungan</vocabulary> atau <vocabulary>ketergantungan</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Ketergantungan, Kepercayaan')
    RETURNING id INTO v_6018_ketergantungan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '馬鹿', 'bodoh', 36, 126, '<kanji>kuda</kanji> <kanji>rusa</kanji> adalah ide <vocabulary>bodoh</vocabulary>. Anda benar-benar <vocabulary>idiot</vocabulary> karena memikirkannya. Ini cukup <vocabulary>bodoh</vocabulary>.', 'Anda mempelajari kedua bacaan ini saat mempelajari kanji. Anda seharusnya bisa membaca ini sendiri.', 'Bodoh, Bodoh, Bodoh, Bodoh, Absurd')
    RETURNING id INTO v_6019_bodoh;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '鹿児島県', 'prefektur-kagoshima', 36, 127, '<kanji>rusa</kanji> <kanji>anak</kanji> <kanji>pulau</kanji> <kanji>prefektur</kanji> adalah <vocabulary>Prefektur Kagoshima</vocabulary>.', 'Bacaannya sebagian on''yomi, sebagian kun''yomi, namun sebaiknya Anda mengetahui semuanya jika melihatnya satu per satu. Ingatlah bahwa 児 dibaca sebagai ご di sini. Ayo, Prefektur Kagoshima! Pergi!', 'Prefektur Kagoshima')
    RETURNING id INTO v_6020_prefektur_kagoshima;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '鹿', 'rusa', 36, 128, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Karena kata ini terdiri dari satu kanji, kemungkinan besar menggunakan bacaan kun''yomi. Anda tidak mempelajari bacaan ini, jadi inilah mnemonik untuk membantu Anda mengingat: 

Anda sedang menatap <vocabulary>rusa</vocabulary> ini dengan sangat cermat, namun ada yang tidak beres. Anda mendekat, perlahan, dan Anda menyadari bahwa itu adalah <reading>she</reading>p di dalam <reading>ca</reading>r (しか) yang berbentuk seperti rusa. Rusa mobil domba tiba-tiba berbalik ke arah Anda dan bergegas ke depan, dengan kaki terangkat. Ahh, keluar dari sana! (Pelajarannya di sini adalah jangan pernah terlalu dekat dengan rusa. Anda tidak akan pernah mengetahui wujud aslinya sampai semuanya terlambat.)', 'Rusa')
    RETURNING id INTO v_6021_rusa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '承諾', 'izin', 36, 129, 'Anda mendapatkan <kanji>persetujuan</kanji> dan <kanji>perjanjian</kanji> saya. Ini adalah <vocabulary>persetujuan</vocabulary>, <vocabulary>perjanjian</vocabulary>, atau <vocabulary>penerimaan</vocabulary> saya.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Izin, Perjanjian, Penerimaan')
    RETURNING id INTO v_6022_izin;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '受諾', 'penerimaan', 36, 130, 'Saya akan <kanji>menerima</kanji> dan saya memiliki <kanji>kesepakatan</kanji> dalam hal ini. Saya telah sampai pada <vocabulary>penerimaan</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Penerimaan')
    RETURNING id INTO v_6023_penerimaan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '許諾', 'izin', 36, 131, 'Saya akan <kanji>mengizinkan</kanji> ini, dan Anda mendapatkan <kanji>perjanjian</kanji> saya. Kedua hal ini digabungkan menjadi <vocabulary>izin</vocabulary> dan <vocabulary>persetujuan</vocabulary> saya.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Izin, Izin')
    RETURNING id INTO v_6024_izin;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '諾否', 'persetujuan-atau-penolakan', 36, 132, 'Apakah kita memiliki <kanji>kesepakatan</kanji> atau <kanji>tidak</kanji>? Yang mana? <vocabulary>persetujuan atau penolakan</vocabulary>? <vocabulary>Ya atau tidak</vocabulary>? Memilih!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Persetujuan Atau Penolakan, Ya Atau Tidak')
    RETURNING id INTO v_6025_persetujuan_atau_penolakan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '象牙', 'gading', 36, 133, '<kanji>gading</kanji> <kanji>gading</kanji> adalah bahan yang dikenal sebagai <vocabulary>gading</vocabulary> (atau hanya <vocabulary>gading gajah</vocabulary>).', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Gading, Danta')
    RETURNING id INTO v_6026_gading;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '牙', 'taring', 36, 134, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Karena kata ini terdiri dari satu kanji, kemungkinan besar menggunakan bacaan kun''yomi. Anda tidak mempelajari bacaan ini, jadi inilah mnemonik untuk membantu Anda: 

Dengan menggunakan <vocabulary>fang</vocabulary> hewanmu, kamu bisa memakan <reading>kibble</reading> (きば).', 'taring, Gading')
    RETURNING id INTO v_6027_taring;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '降参する', 'untuk-menyerah', 36, 135, '降参 adalah "menyerah" jadi versi kata kerjanya adalah <vocabulary>menyerah</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri. Bacaannya juga sama dengan 降参 tentunya.', 'Untuk Menyerah')
    RETURNING id INTO v_6028_untuk_menyerah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '換える', 'untuk-bertukar', 36, 136, 'Kanjinya adalah <kanji>bertukar</kanji>, jadi kata kerja ini adalah <vocabulary>to exchange</vocabulary>. Jika Anda menukar satu barang dengan barang lain, Anda akan <vocabulary>menukar</vocabulary> itu. Kata ini mengacu pada menukar satu hal dengan sesuatu yang berbeda.

Ingin tahu tentang perbedaan antara 替える dan 換える? 替える berarti menukar satu barang dengan barang lain yang sejenis, sedangkan 換える berarti menukar atau memperdagangkan satu barang dengan sesuatu yang berbeda, sering kali nilainya serupa. Jadi, Anda menggunakan 替える saat mematikan bola lampu, namun memilih 換える saat menukar perhiasan dengan uang tunai.', 'Saya tidak suka mobil ini. Saya ingin <vocabulary>menukar</vocabulary> dengan <reading>ca</reading>r (か) yang lain.', 'Untuk Bertukar')
    RETURNING id INTO v_6238_untuk_bertukar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '病床', 'tempat-tidur-sakit', 36, 137, '<kanji>sakit</kanji> <kanji>ranjang</kanji> adalah <vocabulary>ranjang sakit</vocabulary>. Jika Anda berada di tempat tidur itu, Anda mungkin sakit.

病床 adalah kata tingkat lanjut yang ditemukan dalam frasa tertulis seperti 病床にふす (berada di ranjang sakit). Secara formal bisa juga merujuk pada <vocabulary>tempat tidur rumah sakit</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Tempat tidur sakit, Tempat Tidur Rumah Sakit')
    RETURNING id INTO v_6582_tempat_tidur_sakit;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '汚い', 'kotor', 36, 138, 'Ini adalah bentuk kata sifat dari 汚, yaitu <kanji>kotor</kanji>. Kata ini merupakan kata sifat <vocabulary>kotor</vocabulary>, namun Anda juga dapat menggunakannya untuk mengatakan hal-hal seperti <vocabulary>kotor</vocabulary>, <vocabulary>foul</vocabulary>, atau <vocabulary>unclean</vocabulary>.', 'Bacaannya berbeda dengan bacaan kun''yomi lain yang pernah Anda pelajari selama ini dengan kata ini. Itu adalah きたない. Anggap saja Anda mengatakan "<reading>来た、な</reading>", seperti dalam "itu datang, ya?" Apa yang datang? Monster yang terlihat sangat kotor, dan dia mendatangimu.', 'Kotor, Kotor, Busuk, Najis')
    RETURNING id INTO v_7471_kotor;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '大幅', 'besar', 36, 139, 'Sesuatu yang <kanji>besar</kanji> dalam <kanji>lebar</kanji> adalah <vocabulary>besar</vocabulary>. Faktanya, ukurannya cukup <vocabulary>substantial</vocabulary>. Kata ini digunakan untuk menggambarkan besaran atau derajat perubahan, kenaikan, penurunan, atau perbedaan yang besar dalam suatu situasi tertentu.', 'Bacaan kata ini sama-sama bacaan kun''yomi. Anda telah mempelajari kedua bacaan ini sekarang jadi Anda seharusnya bisa membacanya sendiri.', 'Besar, Besar, Drastis, Besar')
    RETURNING id INTO v_7609_besar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '舞', 'tarian', 36, 140, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Karena kata ini terdiri dari satu kanji, kemungkinan besar menggunakan bacaan kun''yomi. Anda tidak mempelajari bacaan ini, jadi inilah mnemonik untuk membantu Anda: 

Orang mengira Anda sedang <vocabulary>menari</vocabulary>, namun sebenarnya Anda melompat dari <reading>tikus</reading> (まい) yang berlari di lantai Anda. Anda tentu tidak ingin tikus-tikus itu berlari di atas kaki Anda sehingga Anda harus melompat dari satu kaki ke kaki yang lain, sehingga terlihat seperti Anda sedang menari.', 'Tarian, Menari')
    RETURNING id INTO v_7663_tarian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '灯る', 'menjadi-menyala', 36, 141, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>lampu</kanji>, jadi versi kosakata kata kerjanya adalah <vocabulary>to be lit</vocabulary>.

灯る menggambarkan cahaya yang muncul dan mulai bersinar, seperti ろうそくに火が灯る (lilin menyala) atau 灯りが灯る (lampu menyala). Dibandingkan dengan kata-kata yang lebih lugas seperti つく (nyalakan), 灯る terasa lebih lembut dan sedikit lebih deskriptif, hampir seperti lampu yang diam-diam mulai hidup dan bukan sekadar menyala.', 'Pembacaan kata ini agak rumit, karena sepertinya bacaannya sama dengan 灯り, tapi… ternyata tidak. Berikut ini mnemonik untuk membantu Anda mengingat bacaan baru ini:

Kamu perlu <kosa kata>menyalakan semua lilin di rumahmu</vocabulary> sehingga kamu bisa menikmati <membaca>友</reading>達 (とも) dan menceritakan kisah seram dengan cahaya lilin. Setelah semua lilin menyala, Anda dan 友達 Anda akan duduk melingkar dan bergiliran menceritakan kisah hantu hingga matahari terbit. Ini akan menjadi… menyala.', 'Menjadi Menyala, Untuk Dinyalakan')
    RETURNING id INTO v_7667_menjadi_menyala;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '誤り', 'kesalahan', 36, 142, 'Ini adalah versi kata benda dari kanji <kanji>kesalahan</kanji>, jadi artinya <vocabulary>kesalahan</vocabulary> atau jika ada di komputer, <vocabulary>error</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Saat Anda membuat <vocabulary>kesalahan</vocabulary>, Anda harus mengakuinya. Ketika seseorang bertanya, “Siapa yang bertanggung jawab atas kesalahan ini?” Anda berkata, "<reading>Saya</reading> (あやま)."', 'Kesalahan, Kesalahan, Tergelincir, Serangga, Kesalahan')
    RETURNING id INTO v_7723_kesalahan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '貴重品', 'barang-berharga', 36, 143, 'Ingat bagaimana Anda mengetahui bahwa 貴重 berarti "berharga?" <kanji>produk</kanji> yang sangat berharga adalah <vocabulary>barang berharga</vocabulary> Anda!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Barang berharga, Harta Karun')
    RETURNING id INTO v_7777_barang_berharga;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '漬ける', 'untuk-mengasinkan-sesuatu', 36, 144, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>acar</kanji>, jadi versi kata kerjanya adalah <vocabulary>mengacar sesuatu</vocabulary> atau <vocabulary>mengasinkan sesuatu</vocabulary>.

漬ける secara khusus digunakan untuk menggambarkan proses pengawetan atau pengasinan makanan, seperti sayuran, ikan, atau daging.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi.  Anda mempelajari bacaan ini dengan kanji. Bagus untukmu!', 'Untuk Mengasinkan Sesuatu, Untuk Mengasinkan Sesuatu')
    RETURNING id INTO v_8381_untuk_mengasinkan_sesuatu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '叔父', 'paman', 36, 145, 'Seorang <kanji>paman</kanji> terkadang terasa seperti <kanji>ayah</kanji>, namun bagaimanapun juga dia tetaplah seorang <vocabulary>paman</vocabulary>.', 'Anda sudah mengetahui bacaan お untuk 叔, namun じ untuk 父 masih baru, jadi inilah mnemonik yang dapat membantu Anda:

Satu hal yang tidak diketahui siapa pun adalah bahwa <vocabulary>paman</vocabulary> Anda tidak lain adalah <reading>Je</reading>sus (じ)! Secara teknis hal itu menjadikan Tuhan sebagai kakek Anda. Namun, jangan beri tahu siapa pun tentang hal ini.', 'Paman')
    RETURNING id INTO v_8524_paman;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '叔母', 'tante', 36, 146, 'Seorang <kanji>bibi</kanji> terkadang terasa seperti <kanji>ibu</kanji>, namun bagaimanapun juga dia tetaplah seorang <vocabulary>bibi</vocabulary>.', 'Pembacaan bagian 母 hanyalah bagian は pertama dalam はは, rendaku. Anda juga bisa menganggap bibi Anda sebagai seekor domba, jika Anda mau. Baaaah!', 'Tante')
    RETURNING id INTO v_8525_tante;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '湧く', 'untuk-menjadi-baik', 36, 147, 'Kanji itu sendiri berarti <kanji>naik</kanji>, dan ini juga merupakan <vocabulary>naik</vocabulary> atau <vocabulary>menyembur keluar</vocabulary>.

Ingat kita berbicara tentang keberanian yang muncul dalam mnemonik kanji? Kata ini juga bisa digunakan untuk kiasan yang meluap-luap, misalnya emosi, yang dari situlah makna <kosakata>muncul</vocabulary> berasal.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Anda sedang memancing di lubang es dan tiba-tiba air <vocabulary>meningkat</vocabulary> dan <vocabulary>menyembur</vocabulary> dari dalamnya. Sebuah <read>wa</reading>lrus (わ) yang besar menyembur keluar dan melompat ke arah Anda. Tidak heran tidak ada ikan! Ini adalah lubang walrus.', 'Untuk Menjadi Baik, Untuk Memancar Keluar, Untuk Bangkit')
    RETURNING id INTO v_8632_untuk_menjadi_baik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '湧水', 'mata-air', 36, 148, '<kanji>Sumur</kanji> <kanji>air</kanji> adalah <vocabulary>mata air</vocabulary>. Agak masuk akal, bukan? 

Perhatikan bahwa 湧水 adalah kata formal yang umumnya ditemui dalam bahasa tertulis.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Mata Air')
    RETURNING id INTO v_8633_mata_air;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '鮭', 'ikan-salmon', 36, 149, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Pembacaan kosakata ini sama dengan pembacaan yang Anda pelajari dengan kanji. Tetapi! Beberapa penjelasan tentang kapan menggunakan さけ versus しゃけ.

Secara teknis keduanya benar. Namun, biasanya ketika Anda mengacu pada hewan hidup, Anda menggunakan さけ, dan ketika Anda menyebut salmon sebagai makanan, kemungkinan besarnya adalah しゃけ (tetapi bisa juga berarti apa pun). Namun, mungkin ada beberapa perbedaan generasi dan regional.', 'Ikan salmon')
    RETURNING id INTO v_8918_ikan_salmon;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '同窓会', 'reuni-kelas', 36, 150, '<kanji>same</kanji> <kanji>window</kanji> <kanji>meeting</kanji> adalah pertemuan dengan orang-orang yang menghabiskan waktu lama memandang ke luar jendela kelas yang sama dengan Anda. Siapa orang-orang itu? Mereka adalah mantan teman sekelasmu, dan ini adalah <vocabulary>reuni kelas</vocabulary>. Bisa juga berarti <vocabulary>asosiasi alumni</vocabulary>, yang masih merupakan sesuatu yang Anda lakukan dengan mantan teman sekelas, jadi masuk akal.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda tidak mempelajari bacaan ini untuk 窓, jadi inilah mnemonik untuk membantu Anda:

Jika kamu ada <vocabulary>reuni kelas</vocabulary> yang akan datang, sebaiknya kamu melatih <reading>jiwa</reading> (そう) kamu. Anda ingin memberikan kesan yang baik pada semua teman sekelas lama Anda, bukan? Kami akan mulai melatih jiwa Anda sekarang juga, jika tidak, mereka mungkin tidak akan terkesan.', 'Reuni Kelas, Reuni Sekolah, Ikatan Alumni')
    RETURNING id INTO v_9061_reuni_kelas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '怪我', 'cedera', 36, 151, 'Tahukah kamu betapa <kanji>mencurigakan</kanji> <kanji>saya</kanji> jika saya mengalami <vocabulary>cedera</vocabulary>? Saya mulai mencurigai semua orang di sekitar saya telah memberi saya cedera. Itu kamu, bukan?', 'Ini adalah kata jukugo yang menggunakan on''yomi untuk kedua kanjinya. Ini juga menggunakan bacaan yang kurang umum け, yang Anda pelajari dengan 怪, jadi inilah mnemonik untuk membantu Anda mengingat bacaan ini:

Ingat jiwa yang mencurigakan dan <read>ke</reading>ttle (け)-nya? Yup, ternyata ketel inilah yang bertanggung jawab atas <vocabulary>cedera</vocabulary>. Jiwa-jiwa yang mencurigakan dan ceretnya...', 'Cedera')
    RETURNING id INTO v_9074_cedera;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '炒める', 'untuk-menggoreng', 36, 152, 'Ini adalah versi kata kerja dari kanji <kanji>menggoreng</kanji>, jadi artinya <vocabulary>menggoreng</vocabulary>, lebih khusus lagi <vocabulary>menumis</vocabulary> atau <vocabulary>menumis</vocabulary>.', 'Karena kata ini memiliki okurigana (hiragana yang melekat pada kanji), Anda tahu bahwa kemungkinan besar itu adalah bacaan kun''yomi. Anda mempelajari bacaan ini dengan kanji, jadi sebaiknya Anda melakukannya!', 'Untuk Menggoreng, Untuk Menumis, Untuk menumis')
    RETURNING id INTO v_9266_untuk_menggoreng;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '歯科', 'kedokteran-gigi', 36, 153, '<kanji>Gigi</kanji> <kanji>sains</kanji> memberi Anda ilmu <vocabulary>kedokteran gigi</vocabulary>, sesederhana itu!

Perhatikan bahwa jika digunakan sendiri, kata ini hanya merujuk pada bidang ilmiah kedokteran gigi. Anda akan sering melihatnya digunakan dalam kombinasi dengan kata-kata medis lainnya, jadi lihatlah kombinasi kata yang umum jika Anda ingin tahu lebih banyak!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Anda belum mempelajari bacaan ini untuk 歯, jadi inilah mnemonik untuk membantu Anda:

Anda tahu siapa yang mendapat manfaat dari <vocabulary>kedokteran gigi</vocabulary> yang hebat? <read>Dia</reading>p (し)! Pernahkah Anda melihat satu senyuman? Wol mereka bisa menjadi sumber benang <vocabulary>dental</vocabulary> yang hebat dan tak ada habisnya. Itu rahasia mereka. Bayangkan saja domba dan giginya yang sempurna dan Anda tidak akan pernah melupakan bacaan ini!', 'Kedokteran gigi, Dental')
    RETURNING id INTO v_9284_kedokteran_gigi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '一軒家', 'rumah-mandiri', 36, 154, '<kanji>satu</kanji> <kanji>konter rumah</kanji> <kanji>rumah</kanji> adalah <vocabulary>rumah yang berdiri sendiri</vocabulary>. Tempat ini tidak berada di dalam atau menyatu dengan apa pun — ini adalah <vocabulary>rumah keluarga tunggal</vocabulary>, mungkin dengan halaman, jalan masuk, dan sebagainya.

一軒家 adalah kata sehari-hari yang mengacu pada rumah yang berdiri sendiri, bukan apartemen atau kondominium. Anda akan mendengarnya dalam real estate, percakapan santai tentang perumahan, atau saat menggambarkan situasi kehidupan seseorang.', 'Kata ini merupakan kata jukugo, namun menggunakan gabungan bacaan on''yomi dan kun''yomi. 一 dan 軒 gunakan on''yomi yang Anda pelajari dengan kanji, jadi Anda akan baik-baik saja di sana — berhati-hatilah terhadap いち yang berubah menjadi いっ. 家 menggunakan bacaan kun''yomi や, yang pernah Anda lihat dengan kata-kata seperti 空き家 dan 家賃. Berikut ini mnemonik jika Anda memerlukan bantuan untuk hal itu:

Tanyakan kepada kebanyakan orang apakah mereka ingin tinggal di <vocabulary>rumah mandiri</vocabulary>, dan mereka akan menjawab "<reading>yah</reading> (や)." Tidak ada teriakan bayi di sebelah, tidak ada permainan solo drum di tengah malam dari tetangga - yah, itu tidak perlu dipikirkan lagi.', 'Rumah Mandiri, Rumah Keluarga Tunggal')
    RETURNING id INTO v_9488_rumah_mandiri;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3591_tertib, 'Tertib', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3591_tertib, 'Sistematis', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3591_tertib, 'Terorganisir dengan baik', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3591_tertib, 'Tatanan Alam', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3659_contoh_buruk, 'Contoh Buruk', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3659_contoh_buruk, 'Preseden Buruk', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5562_untuk_merusak_sesuatu, 'Untuk Merusak Sesuatu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5562_untuk_merusak_sesuatu, 'Untuk Melukai Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5666_pasir, 'Pasir', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5666_pasir, 'Menggertakkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5747_bangsawan, 'Bangsawan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5747_bangsawan, 'Sangat berharga', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5755_mangkuk_belut, 'Mangkuk Belut', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5755_mangkuk_belut, 'Mangkuk Nasi Belut', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5938_mangkok_nasi_ayam_dan_telur, 'Mangkok Nasi Ayam Dan Telur', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5938_mangkok_nasi_ayam_dan_telur, 'Mangkuk Nasi Orang Tua Dan Anak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5938_mangkok_nasi_ayam_dan_telur, 'Oyako-Don', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5939_mual, 'Mual', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5940_untuk_meludahkan, 'Untuk Meludahkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5940_untuk_meludahkan, 'Untuk Melemparkan Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5941_teman_teman_itu, 'Teman-teman itu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5941_teman_teman_itu, 'Orang-orang itu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5942_lipstik, 'Lipstik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5943_rekomendasi, 'Rekomendasi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5943_rekomendasi, 'Nasihat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5944_bekerja, 'Bekerja', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5944_bekerja, 'Pekerjaan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5944_bekerja, 'Tugas', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5945_medan_elektromagnetik, 'Medan Elektromagnetik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5946_radioaktivitas, 'Radioaktivitas', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5946_radioaktivitas, 'Radiasi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5947_konduktor, 'Konduktor', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5947_konduktor, 'Komandan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5948_kisah_genji, 'Kisah Genji', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5948_kisah_genji, 'Kisah Genji', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5949_untuk_merusak, 'Untuk Merusak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5950_edamame, 'Edamame', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5950_edamame, 'Kedelai Kukus', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5951_tahu, 'Tahu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5951_tahu, 'Tahu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5952_nama_keluarga_mantan, 'Nama Keluarga Mantan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5952_nama_keluarga_mantan, 'Nama Gadis', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5953_restorasi, 'Restorasi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5953_restorasi, 'Pemulihan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5954_nama_lengkap, 'Nama Lengkap', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5955_berdagang, 'Berdagang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5955_berdagang, 'Perdagangan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5956_manis, 'Manis', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5957_untuk_tidak_menganggapnya_serius, 'Untuk Tidak Menganggapnya Serius', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5957_untuk_tidak_menganggapnya_serius, 'Untuk Dianggap Ringan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5958_gigi_manis, 'Gigi Manis', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5959_masa_depan, 'Masa depan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5960_shogun, 'Shogun', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5960_shogun, 'Umum', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5960_shogun, 'Komandan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5960_shogun, 'Shougun', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5961_umum, 'Umum', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5961_umum, 'Laksamana', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5961_umum, 'Kepala', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5961_umum, 'Pemimpin', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5962_komandan, 'Komandan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5962_komandan, 'Panglima Tertinggi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5962_komandan, 'Kapten Tim', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5963_persekutuan, 'Persekutuan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5964_liga, 'Liga', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5964_liga, 'Federasi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5965_sumpah, 'Sumpah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5965_sumpah, 'Pakta', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5966_warisan, 'Warisan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5966_warisan, 'Warisan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5967_kehilangan, 'Kehilangan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5968_keturunan, 'Keturunan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5969_mayat, 'Mayat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5969_mayat, 'Sisa Manusia', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5970_untuk_tumbuh_lebih_lama, 'Untuk Tumbuh Lebih Lama', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5970_untuk_tumbuh_lebih_lama, 'Untuk Diregangkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5970_untuk_tumbuh_lebih_lama, 'Untuk Membuat Kemajuan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5970_untuk_tumbuh_lebih_lama, 'Untuk Meningkatkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5971_menjalin_kedekatan, 'Menjalin kedekatan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5972_kredit, 'Kredit', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5972_kredit, 'Mengeklaim', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5972_kredit, 'Utang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5972_kredit, 'Kewajiban', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5973_utang_nasional, 'Utang Nasional', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5973_utang_nasional, 'Obligasi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5974_untuk_mencapai, 'Untuk Mencapai', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5974_untuk_mencapai, 'Sebesar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5975_difusi, 'Difusi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5976_mencapai_sukses, 'Mencapai sukses', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5976_mencapai_sukses, 'Lulus Ujian', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5977_nara, 'Nara', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5978_prefektur_kanagawa, 'Prefektur Kanagawa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5979_lebar, 'Lebar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5980_penghapusan, 'Penghapusan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5981_menjadi_usang, 'Menjadi Usang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5984_ventilasi, 'Ventilasi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5985_konversi, 'Konversi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5985_konversi, 'Mengubah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5986_untuk_memetik, 'Untuk Memetik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5986_untuk_memetik, 'Untuk Memilih', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5986_untuk_memetik, 'Untuk Memangkas', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5987_menunjuk, 'Menunjuk', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5987_menunjuk, 'Identifikasi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5988_untuk_membuka_kedok, 'Untuk Membuka Kedok', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5988_untuk_membuka_kedok, 'Untuk Mengekspos', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5989_inti, 'Inti', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5989_inti, 'Inti', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5989_inti, 'Nuklir', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5990_senjata_nuklir, 'Senjata Nuklir', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5991_uji_nuklir, 'Uji Nuklir', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5991_uji_nuklir, 'Uji Bom Nuklir', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5991_uji_nuklir, 'Pengujian Nuklir', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5992_laut_terbuka, 'Laut Terbuka', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5993_tali, 'Tali', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5994_jomon, 'Jomon', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5994_jomon, 'Orang Jomon', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5994_jomon, 'Jepang kuno', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5995_tsunami, 'Tsunami', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5995_tsunami, 'Gelombang Pasang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5996_donor_darah, 'Donor Darah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5997_sumbangan, 'Sumbangan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5997_sumbangan, 'Menawarkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5998_perawatan_medis, 'Perawatan Medis', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5999_terapi_medis, 'Terapi Medis', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5999_terapi_medis, 'Perawatan Medis', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6001_untuk_mewarisi, 'Untuk Mewarisi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6002_suksesi, 'Suksesi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6002_suksesi, 'Warisan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6003_pemeliharaan, 'Pemeliharaan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6003_pemeliharaan, 'Mendukung', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6004_restorasi, 'Restorasi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6004_restorasi, 'Restorasi Meiji', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6005_panggung, 'Panggung', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6006_untuk_menari, 'Untuk Menari', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6006_untuk_menari, 'Berkibar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6007_kabuki, 'Kabuki', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6008_tarian, 'Tarian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6009_untuk_melangkah, 'Untuk Melangkah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6009_untuk_melangkah, 'Untuk Menginjak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6010_umum, 'Umum', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6010_umum, 'Umum', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6011_sangat, 'Sangat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6011_sangat, 'Super', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6011_sangat, 'Benar-benar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6012_gaib, 'Gaib', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6013_kecepatan_supersonik, 'Kecepatan Supersonik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6014_gelombang_ultrasonik, 'Gelombang Ultrasonik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6015_untuk_meminta, 'Untuk Meminta', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6015_untuk_meminta, 'Untuk Meminta', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6015_untuk_meminta, 'Untuk Mempercayakan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6015_untuk_meminta, 'Untuk Mengandalkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6016_kepercayaan, 'Kepercayaan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6016_kepercayaan, 'Memercayai', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6017_meminta, 'Meminta', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6017_meminta, 'Mempercayakan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6018_ketergantungan, 'Ketergantungan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6018_ketergantungan, 'Kepercayaan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6019_bodoh, 'Bodoh', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6019_bodoh, 'Bodoh', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6019_bodoh, 'Bodoh', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6019_bodoh, 'Bodoh', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6019_bodoh, 'Absurd', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6020_prefektur_kagoshima, 'Prefektur Kagoshima', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6021_rusa, 'Rusa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6022_izin, 'Izin', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6022_izin, 'Perjanjian', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6022_izin, 'Penerimaan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6023_penerimaan, 'Penerimaan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6024_izin, 'Izin', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6024_izin, 'Izin', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6025_persetujuan_atau_penolakan, 'Persetujuan Atau Penolakan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6025_persetujuan_atau_penolakan, 'Ya Atau Tidak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6026_gading, 'Gading', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6026_gading, 'Danta', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6027_taring, 'taring', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6027_taring, 'Gading', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6028_untuk_menyerah, 'Untuk Menyerah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6238_untuk_bertukar, 'Untuk Bertukar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6582_tempat_tidur_sakit, 'Tempat tidur sakit', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6582_tempat_tidur_sakit, 'Tempat Tidur Rumah Sakit', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7471_kotor, 'Kotor', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7471_kotor, 'Kotor', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7471_kotor, 'Busuk', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7471_kotor, 'Najis', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7609_besar, 'Besar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7609_besar, 'Besar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7609_besar, 'Drastis', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7609_besar, 'Besar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7663_tarian, 'Tarian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7663_tarian, 'Menari', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7667_menjadi_menyala, 'Menjadi Menyala', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7667_menjadi_menyala, 'Untuk Dinyalakan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7723_kesalahan, 'Kesalahan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7723_kesalahan, 'Kesalahan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7723_kesalahan, 'Tergelincir', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7723_kesalahan, 'Serangga', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7723_kesalahan, 'Kesalahan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7777_barang_berharga, 'Barang berharga', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7777_barang_berharga, 'Harta Karun', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8381_untuk_mengasinkan_sesuatu, 'Untuk Mengasinkan Sesuatu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8381_untuk_mengasinkan_sesuatu, 'Untuk Mengasinkan Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8524_paman, 'Paman', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8525_tante, 'Tante', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8632_untuk_menjadi_baik, 'Untuk Menjadi Baik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8632_untuk_menjadi_baik, 'Untuk Memancar Keluar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8632_untuk_menjadi_baik, 'Untuk Bangkit', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8633_mata_air, 'Mata Air', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8918_ikan_salmon, 'Ikan salmon', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9061_reuni_kelas, 'Reuni Kelas', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9061_reuni_kelas, 'Reuni Sekolah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9061_reuni_kelas, 'Ikatan Alumni', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9074_cedera, 'Cedera', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9266_untuk_menggoreng, 'Untuk Menggoreng', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9266_untuk_menggoreng, 'Untuk Menumis', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9266_untuk_menggoreng, 'Untuk menumis', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9284_kedokteran_gigi, 'Kedokteran gigi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9284_kedokteran_gigi, 'Dental', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9488_rumah_mandiri, 'Rumah Mandiri', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9488_rumah_mandiri, 'Rumah Keluarga Tunggal', false, true);

  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3591_tertib, 'せいぜん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3659_contoh_buruk, 'あくれい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5562_untuk_merusak_sesuatu, 'いためる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5666_pasir, 'すな', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5747_bangsawan, 'とうとい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5755_mangkuk_belut, 'うなぎどんぶり', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5755_mangkuk_belut, 'うなぎどん', NULL, false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5938_mangkok_nasi_ayam_dan_telur, 'おやこどんぶり', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5938_mangkok_nasi_ayam_dan_telur, 'おやこどん', NULL, false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5939_mual, 'はきけ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5940_untuk_meludahkan, 'はきだす', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5941_teman_teman_itu, 'やつら', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5942_lipstik, 'くちべに', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5943_rekomendasi, 'すすめ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5944_bekerja, 'つとめ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5945_medan_elektromagnetik, 'でんじば', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5946_radioaktivitas, 'ほうしゃのう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5947_konduktor, 'しきしゃ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5948_kisah_genji, 'げんじものがたり', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5949_untuk_merusak, 'そんがいする', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5950_edamame, 'えだまめ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5951_tahu, 'とうふ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5952_nama_keluarga_mantan, 'きゅうせい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5953_restorasi, 'ふっきゅう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5954_nama_lengkap, 'せいめい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5955_berdagang, 'ぼうえき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5956_manis, 'あまい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5957_untuk_tidak_menganggapnya_serius, 'あまくみる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5958_gigi_manis, 'あまとう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5959_masa_depan, 'しょうらい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5960_shogun, 'しょうぐん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5961_umum, 'たいしょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5962_komandan, 'しゅしょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5963_persekutuan, 'どうめい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5964_liga, 'れんめい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5965_sumpah, 'めいやく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5966_warisan, 'いさん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5967_kehilangan, 'いしつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5968_keturunan, 'いでん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5969_mayat, 'いたい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5970_untuk_tumbuh_lebih_lama, 'のびる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5971_menjalin_kedekatan, 'さいけん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5972_kredit, 'さいけん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5973_utang_nasional, 'こくさい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5974_untuk_mencapai, 'およぶ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5975_difusi, 'ふきゅう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5976_mencapai_sukses, 'きゅうだい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5977_nara, 'なら', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5978_prefektur_kanagawa, 'かながわけん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5979_lebar, 'はば', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5980_penghapusan, 'はいし', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5981_menjadi_usang, 'すたれる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5984_ventilasi, 'かんき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5985_konversi, 'へんかん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5986_untuk_memetik, 'つむ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5987_menunjuk, 'してき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5988_untuk_membuka_kedok, 'てきはつする', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5989_inti, 'かく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5990_senjata_nuklir, 'かくへいき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5991_uji_nuklir, 'かくじっけん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5992_laut_terbuka, 'おきあい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5993_tali, 'なわ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5994_jomon, 'じょうもん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5995_tsunami, 'つなみ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5996_donor_darah, 'けんけつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5997_sumbangan, 'けんきん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5998_perawatan_medis, 'いりょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5999_terapi_medis, 'ちりょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6001_untuk_mewarisi, 'つぐ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6002_suksesi, 'けいしょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6003_pemeliharaan, 'いじ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6004_restorasi, 'いしん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6005_panggung, 'ぶたい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6006_untuk_menari, 'まう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6007_kabuki, 'かぶき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6008_tarian, 'ぶとう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6009_untuk_melangkah, 'ふむ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6010_umum, 'いっぱん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6011_sangat, 'ちょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6012_gaib, 'ちょうしぜんてき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6013_kecepatan_supersonik, 'ちょうおんそく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6014_gelombang_ultrasonik, 'ちょうおんぱ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6015_untuk_meminta, 'たのむ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6016_kepercayaan, 'しんらい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6017_meminta, 'いらい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6018_ketergantungan, 'いぞん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6018_ketergantungan, 'いそん', NULL, false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6019_bodoh, 'ばか', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6020_prefektur_kagoshima, 'かごしまけん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6021_rusa, 'しか', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6022_izin, 'しょうだく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6023_penerimaan, 'じゅだく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6024_izin, 'きょだく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6025_persetujuan_atau_penolakan, 'だくひ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6026_gading, 'ぞうげ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6027_taring, 'きば', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6028_untuk_menyerah, 'こうさんする', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6238_untuk_bertukar, 'かえる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6582_tempat_tidur_sakit, 'びょうしょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7471_kotor, 'きたない', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7609_besar, 'おおはば', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7663_tarian, 'まい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7667_menjadi_menyala, 'ともる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7723_kesalahan, 'あやまり', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7777_barang_berharga, 'きちょうひん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8381_untuk_mengasinkan_sesuatu, 'つける', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8524_paman, 'おじ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8525_tante, 'おば', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8632_untuk_menjadi_baik, 'わく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8633_mata_air, 'ゆうすい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8918_ikan_salmon, 'さけ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8918_ikan_salmon, 'しゃけ', NULL, false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9061_reuni_kelas, 'どうそうかい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9074_cedera, 'けが', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9266_untuk_menggoreng, 'いためる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9284_kedokteran_gigi, 'しか', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9488_rumah_mandiri, 'いっけんや', NULL, true, true);

  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3591_tertib, '東京は人が多いけれど整然としています。', 'Meskipun ada banyak orang di Tokyo, namun terorganisir dengan baik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3591_tertib, 'ダリンはいつも理路整然とした説明をしてくれます。', 'Darin selalu memberikan penjelasan yang masuk akal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3591_tertib, 'トーフグオフィスの棚に整然と並べられていたワインボトルを、マミが全部空けてしまった。', 'Botol wine yang tertata rapi di rak kantor Tofugu semuanya dikosongkan oleh Mami.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3659_contoh_buruk, '日本語を学ぶ時には、いい例だけでなく、悪例を学ぶことも必要です。', 'Saat belajar bahasa Jepang, penting untuk belajar dari contoh yang baik dan juga contoh yang buruk.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3659_contoh_buruk, 'コウイチは悪例のかたまりだ。', 'Koichi adalah sekelompok contoh buruk.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3659_contoh_buruk, '僕の両親は、今後の寝る時間に悪例を残すことになるからって、絶対に夜更かしさせてくれないんだ。', 'Orang tua saya tidak pernah membiarkan saya begadang karena mereka percaya hal itu akan menjadi preseden buruk bagi waktu tidur saya di masa depan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5562_untuk_merusak_sesuatu, '強い日差しに当たってはだを傷めてしまった。', 'Sinar matahari yang kuat merusak kulit saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5562_untuk_merusak_sesuatu, '下着はデリケートな生地を使っていることが多いので、高い温度での洗たくや乾そうは生地を傷める原因になる。', 'Pakaian dalam sering kali terbuat dari bahan yang halus, sehingga mencuci dan mengeringkannya pada suhu tinggi dapat merusak kain tersebut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5562_untuk_merusak_sesuatu, '染毛剤は髪の毛を傷める。', 'Pewarna rambut merusak rambut Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5666_pasir, '小さい頃、あなたとビーチで作った砂のお城を思い出します。', 'Aku teringat istana pasir yang kau dan aku buat di pantai saat kita masih kecil.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5747_bangsawan, '命ってのはベーコンと同じくらい貴いものなんだよ。', 'Hidup sama berharganya dengan daging asap.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5747_bangsawan, '彼は生まれながらにして貴い身分を持っていた。', 'Ia dilahirkan dalam kalangan bangsawan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5747_bangsawan, 'お顔が貴すぎて、近づくのもためらってしまう。', 'Wajahnya begitu mulia dan ilahi sehingga saya ragu untuk mendekat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5747_bangsawan, '王はその若者の貴い行いに感動しました。', 'Raja terharu melihat tindakan mulia pemuda itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5755_mangkuk_belut, '「じゃあね、たまには連絡してね。」「もちろん。てか、近いうちにうなぎ丼でも食べに行こうよ。」「いいね。」「よかった。じゃあ、また連絡するね。」「ええ、またね。」', '“Hati-hati dan telepon aku sesekali.” "Tentu saja. Ayo segera makan nasi belut." "Kedengarannya bagus." "Oke. Saya akan menghubungi Anda." "Ya, sampai jumpa lagi."');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5938_mangkok_nasi_ayam_dan_telur, '親子丼ほど美味しいものはない。', 'Tidak ada yang lebih nikmat dari semangkuk nasi ayam dan telur.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5938_mangkok_nasi_ayam_dan_telur, '個人的には親子丼よりも他人丼の方が好きなんです。', 'Secara pribadi, saya lebih menyukai tanin-don daripada oyako-don.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5938_mangkok_nasi_ayam_dan_telur, 'あの親子丼超まずかったよね！トイレで吐いちゃったよ！', 'Mangkuk nasi orang tua dan anak itu sangat menjijikkan! Saya muntah di kamar mandi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5939_mual, 'ビールで最初はいい気分になったんだけど、その後吐き気がひどくてさ。', 'Birnya membuatku merasa enak pada awalnya, tapi kemudian aku merasa sangat mual.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5940_untuk_meludahkan, '男は舐めていた飴を吐き出しました。', 'Pria itu memuntahkan permen yang sedari tadi dihisapnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5941_teman_teman_itu, '奴ら、俺たちは働いてるってのに、呑気に日光浴なんかしてやがるぜ。', 'Orang-orang itu sedang mandi dan bersantai di bawah sinar matahari saat kami bekerja.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5942_lipstik, '口紅をポケットに入れっぱなしにしてたみたいで、乾燥機の中で溶けちゃったのよね。', 'Saya meninggalkan lipstik saya di saku dan meleleh di pengering.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5943_rekomendasi, 'そのスリッパは私のお薦めです。', 'Sandal itu adalah rekomendasi saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5944_bekerja, 'お勤め先はどちらですか？', 'Untuk siapa Anda bekerja?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5945_medan_elektromagnetik, '私の父は、電磁場発生装置の特許を持っているんですが、私はそれが何のためのものなのかよく分かりません。', 'Ayah saya mempunyai hak paten untuk generator medan elektromagnetik, tapi saya tidak yakin untuk apa paten itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5946_radioaktivitas, '放射能に関する会議を招集する前に、出席者を決める方がいいだろう。', 'Sebelum mengadakan pertemuan tentang radioaktivitas, kita harus memutuskan siapa yang harus hadir.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5947_konduktor, 'どちらの指揮者もまだ来てないんだよ。', 'Belum ada komandan yang datang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5948_kisah_genji, '私は源氏物語を漫画でしか読んだことがありません。', 'Saya hanya membaca Tale of Genji versi manga.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5949_untuk_merusak, '彼の言葉を信じて投資信託を買ったんですが、結局大きく損害してしまいました。', 'Saya percaya apa yang dia katakan dan membeli dana investasi, tapi akhirnya saya kehilangan banyak uang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5950_edamame, '「お早うございます。何にいたしましょうか？」「いつものやつ頼むよ。」「かしこまりました。ビールと枝豆でございますね。」「そうだよ。」', '"Selamat pagi. Apa yang bisa saya bantu?" "Aku pesan yang biasa." "Baiklah. Bir dan Edamame, kan?" "Itu saja."');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5951_tahu, 'うーん。どっちの豆腐もいまいちかな。実は豆腐はあんまり好きじゃないんだよね。', 'Ya, tidak ada tahu yang rasanya enak menurutku. Saya sebenarnya bukan penggemar tahu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5952_nama_keluarga_mantan, 'いつもパスワードに母親の旧姓を使うんですよ。', 'Saya selalu menggunakan nama gadis ibu saya sebagai kata sandi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5953_restorasi, 'ビエトがトーフグのシステム復旧のために今一生懸命頑張っています。', 'Viet sedang bekerja sekuat tenaga untuk memulihkan sistem Tofugu saat ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5954_nama_lengkap, '私の姓名を使用しないでください。', 'Tolong jangan gunakan nama lengkap saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5955_berdagang, '貿易事務の仕事を探しています。', 'Saya sedang mencari pekerjaan sebagai pegawai di sebuah perusahaan dagang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5956_manis, '甘いケーキと美味しいワインを買って、うちに招待すれば、必ず友達を作れるよ。', 'Cara jitu saya untuk mendapatkan teman adalah dengan membeli kue manis dan anggur enak, lalu mengundang mereka.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5957_untuk_tidak_menganggapnya_serius, 'シャツを入れないと、お客さんに甘く見られるかもしれないよ。', 'Selipkan baju Anda atau klien Anda mungkin tidak menganggap Anda serius.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5958_gigi_manis, '私は甘党で、ケーキには目がないの。', 'Saya menyukai makanan manis dan sangat menyukai kue.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5959_masa_depan, '将来いつか、もっといい飼い犬の名前を思いつくかもしれない。', 'Saya mungkin akan menemukan nama yang lebih baik untuk anjing saya suatu hari nanti.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5960_shogun, 'つまり、敵の将軍と付き合っているってこと。', 'Artinya, aku berkencan dengan shogun musuh.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5961_umum, '大将が机の角に頭をぶつけて、たんこぶを作っちまったんだよ。', 'Kepala laksamana terbentur sudut meja dan mendapat benjolan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5962_komandan, 'どちらの主将もそんなに強くはなかった。', 'Tak satu pun dari kapten tim yang sangat kuat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5963_persekutuan, 'ああ、そういうことか。トーフグは一番のライバル会社と同盟を組んだんだよ。', 'Oh, sekarang aku mengerti apa yang terjadi. Tofugu membentuk aliansi dengan pesaing terdekatnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5964_liga, 'スケート選手たちは、日本スケート連盟について不平を漏らしています。', 'Para skater mengeluh tentang Federasi Skating Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5965_sumpah, 'トーフグと盟約を結びたいんです。', 'Kami ingin membuat perjanjian dengan Tofugu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5966_warisan, '父の遺産を巡る家族間の争いが起きてるんです。', 'Kami sedang mengalami konflik keluarga mengenai warisan ayah saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5967_kehilangan, 'この空港に遺失物取扱所があるかどうかをご存知ですか。', 'Tahukah Anda jika ada kantor yang hilang dan ditemukan di bandara ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5968_keturunan, '日本では、遺伝子組み換え食品にはパッケージへの表示が義務づけられています。', 'Di Jepang, Anda wajib mencantumkan apakah makanan tersebut merupakan hasil rekayasa genetika pada kemasannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5969_mayat, '遺体が川で発見されました。', 'Mayat ditemukan di sungai.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5969_mayat, '警察は遺体の身元を調べているそうです。', 'Rupanya, polisi sedang menyelidiki identitas jenazah tersebut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5969_mayat, '山で見つかった遺体は行方不明者のものでした。', 'Mayat yang ditemukan di pegunungan adalah milik orang hilang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5969_mayat, '遺体を運ぶ途中でエレベーターが停止して閉じ込められたことがあります。', 'Saya pernah terjebak dalam lift yang berhenti saat mengangkut sisa-sisa manusia sebelumnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5970_untuk_tumbuh_lebih_lama, 'この生地はよく伸びますね。', 'Bahan ini dapat meregang dengan baik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5970_untuk_tumbuh_lebih_lama, 'どうして彼女の英語力がグングン伸びてるのか知ってる？', 'Tahukah Anda mengapa kemampuan bahasa Inggrisnya meningkat pesat?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5970_untuk_tumbuh_lebih_lama, '売り上げは順調に伸びています。', 'Penjualan terus meningkat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5971_menjalin_kedekatan, '債券市場は何時まで開いてますか。', 'Jam berapa pasar obligasi dibuka?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5971_menjalin_kedekatan, '東京都は来たるオリンピックのため、追加で債券を発行した。', 'Pemerintah Metropolitan Tokyo telah menerbitkan obligasi tambahan untuk Olimpiade mendatang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5971_menjalin_kedekatan, '債券取引は、一億円単位で売買できない人には不利なレートになってるんですよ。', 'Suku bunga obligasi saat ini tidak baik bagi orang-orang yang tidak dapat menukarkannya dengan kelipatan seratus juta yen.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5972_kredit, '債権者は破産手続きによっていくらかお金を受け取れることが多いが、株主は滅多に受け取ることがない。', 'Kreditor sering kali menerima sejumlah uang dari proses kebangkrutan, namun pemegang saham jarang menerima sejumlah uang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5973_utang_nasional, 'ちょうど国債を売ろうとしたところで、値が急激に下がって、売り損ねちゃったんだ。', 'Kami hampir saja menjual obligasi pemerintah, namun harganya turun terlalu cepat dan kami tidak dapat menjualnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5974_untuk_mencapai, 'トーフグトラベルの支出は、数万ドルに及んだ。', 'Pengeluaran Tofugu Travel mencapai puluhan ribu dolar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5974_untuk_mencapai, '今回のチリで起きた大地震の影響は、遠く離れた日本にまで及んだ。', 'Dampak gempa bumi besar yang baru-baru ini terjadi di Chile mencapai hingga ke Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5974_untuk_mencapai, 'その火山の噴火の被害は、広範囲に及んだ。', 'Kerusakan akibat letusan gunung berapi sangat luas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5975_difusi, 'トーフグ思想を普及するための歌を作曲しました。', 'Saya membuat lagu untuk menyebarkan Tofugu-isme.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5976_mencapai_sukses, 'ねぇ、及第点って何点だったか覚えてる？', 'Hei, apakah kamu ingat berapa skor yang kamu perlukan untuk mendapatkan nilai kelulusan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5977_nara, '私は歯のしつこい着色汚れを奈良の歯医者さんで落としました。', 'Saya menghilangkan noda warna yang membandel pada gigi saya di klinik gigi di Nara.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5977_nara, '奈良って専業主婦率とピアノの保有率が全国1位って本当ですか？', 'Benarkah Nara memiliki tingkat ibu rumah tangga penuh waktu dan tingkat kepemilikan piano tertinggi di Jepang?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5978_prefektur_kanagawa, '神奈川県では漫画がブームです。', 'Ada booming manga di Prefektur Kanagawa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5979_lebar, 'うちのお母さん、肩幅が広いから、私はそれが遺伝したの。', 'Ibuku mempunyai bahu yang lebar dan aku mewarisinya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5980_penghapusan, '死刑制度廃止には、賛成ですか、反対ですか。', 'Apakah Anda setuju atau tidak setuju dengan penghapusan hukuman mati?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5981_menjadi_usang, 'ビエトはカップケーキブームは既に廃れていると主張した。', 'Viet menegaskan bahwa booming cupcake sudah padam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5984_ventilasi, 'ちょっと窓を開けて部屋の換気をしない？', 'Mengapa kita tidak membuka jendela dan mengeluarkan udara ke luar ruangan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5985_konversi, '太陽エネルギーを電気に変換する技術を開発した人に会ってみたいです。', 'Saya ingin sekali bertemu dengan orang yang mengembangkan teknologi untuk mengubah energi matahari menjadi listrik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5985_konversi, '海外でもパソコンを使えるように変換プラグを買ってきました。', 'Saya membeli konektor konversi sehingga saya dapat menggunakan komputer saya di luar negeri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5985_konversi, '平仮名がうまく漢字に変換できない時は、大体タイプミスが原因です。', 'Jika Anda tidak dapat mengubah hiragana menjadi kanji dengan benar, mungkin karena ada kesalahan ketik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5986_untuk_memetik, '彼女は薔薇の花びらを一枚一枚丁寧に手で摘んでいきます。', 'Dia dengan hati-hati memetik setiap kelopak mawar dengan tangan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5987_menunjuk, 'ちょっと間違いを指摘させてもらってもいいですか。', 'Apakah Anda keberatan jika saya menunjukkan kesalahan Anda?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5988_untuk_membuka_kedok, '私は警察官ですが、麻薬の密売組織を摘発するような機会に出くわしたことがありません。', 'Saya seorang polisi tetapi saya belum pernah mempunyai kesempatan untuk membongkar jaringan penyelundupan narkoba.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5989_inti, 'どうして核は細胞の中心部に位置するんですか？', 'Mengapa inti sel terletak di tengah sel?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5989_inti, '沖田君は小学生の時に原子核について興味を持ち、今ではこのチームの核として働いてくれています。', 'Okita-kun mulai tertarik dengan inti atom ketika dia masih seorang siswa sekolah dasar, dan sekarang dia bekerja sebagai inti dari tim ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5989_inti, '核ミサイルの発射が、もう予定より三時間も遅れています。', 'Peluncuran rudal nuklir sekarang terlambat tiga jam dari jadwal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5990_senjata_nuklir, '核兵器を使用する前に、説明書に書かれている操作方法を必ずお読みください。', 'Sebelum menggunakan senjata nuklir, harap pelajari dengan cermat buku petunjuknya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5991_uji_nuklir, '予算の都合上、核実験への臨時スタッフの採用は増やせない。', 'Dari segi anggaran, kami tidak dapat menambah staf sementara untuk uji coba nuklir.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5992_laut_terbuka, 'ピンク色の怪獣は海岸から約8km沖合にいるとの報告を受けました。', 'Mereka melaporkan monster berwarna merah muda itu berada sekitar delapan kilometer lepas pantai.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5993_tali, '私にはどっちの縄も同じに見えますね。違いは全く分かりません。', 'Kedua tali itu tampak sama bagi saya. Saya tidak bisa membedakannya sama sekali.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5994_jomon, '縄文時代にもおしゃぶりみたいなものはあったのかな。', 'Saya ingin tahu apakah ada dot yang setara pada zaman Jomon.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5995_tsunami, 'たくさんの人達が津波に流されてしまいました。', 'Banyak orang hanyut akibat tsunami.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5996_donor_darah, '車が移動献血車に衝突するのを見ました。', 'Saya melihat sebuah mobil menabrak mobil van bank darah keliling.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5997_sumbangan, '皆様からこんなにたくさんの献金をいただきました。', 'Kami telah menerima begitu banyak donasi dari Anda semua.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5997_sumbangan, 'あの政治家は、ヤミ献金を受け取ったそうですよ。', 'Saya mendengar bahwa politisi menerima sumbangan di bawah meja.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5997_sumbangan, 'うちの教会では、献金は強制していません。献金箱が備えてあって、お気持ちのある方に献金をお願いする形をとっています。', 'Di gereja kami, kami tidak memerlukan sumbangan. Kami mempunyai kotak persembahan dan melakukan pendekatan dengan meminta persembahan kepada mereka yang ingin memberi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5998_perawatan_medis, '日本で医者になりたいので、今は医療用語を勉強しています。', 'Saya ingin menjadi dokter di Jepang, jadi saya mempelajari terminologi medis sekarang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5998_perawatan_medis, 'これは医療行為にあたります。', 'Ini merupakan prosedur medis.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5999_terapi_medis, '虫歯の治療をするために、五年ぶりに歯医者に行きました。', 'Saya pergi ke dokter gigi untuk mengobati gigi berlubang saya untuk pertama kalinya dalam 5 tahun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6001_untuk_mewarisi, '日本では、通常は長男が一家の跡を継ぎます。', 'Anak laki-laki tertua biasanya menjadi kepala keluarga di Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6002_suksesi, '王位継承者の暗殺を企てている者がいるとの噂があります。', 'Ada rumor bahwa seseorang sedang merencanakan pembunuhan penerus takhta.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6003_pemeliharaan, '車は維持費が高いし、今はまだそんな余裕はないな。', 'Biaya perawatan mobil sangat mahal dan saya belum mampu membiayainya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6004_restorasi, '学校で明治維新について勉強はしたんですが、名前以外は何にも覚えていません。', 'Saya mempelajari restorasi Meiji di sekolah, tetapi saya tidak dapat mengingat apa pun selain namanya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6005_panggung, 'すごくいい声持ってるね。舞台で歌を歌ってみようと思った事はないの？', 'Anda memiliki suara yang bagus. Pernahkah Anda berpikir untuk bernyanyi di atas panggung?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6006_untuk_menari, '彼氏の部屋、埃がすっごい舞ってて最悪だったんだけど、綺麗な花びらが舞っているんだって思い込むように頑張ってみたさ。ま、無理だったけど。', 'Di kamar pacarku, banyak debu beterbangan dan itu menjijikkan, jadi aku mencoba membayangkan bahwa itu adalah kelopak bunga indah yang beterbangan. Itu tidak berhasil.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6007_kabuki, '歌舞伎のチケットが見当たらないんだけど。', 'Tiket kabuki saya hilang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6008_tarian, '半年ぶりの舞踏会でした。', 'Itu adalah tarian pertama dalam enam bulan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6009_untuk_melangkah, 'うわぁ！うんこ踏んじゃったの？きもーい。', 'eh! Apakah kamu menginjak kotoran! sial!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6009_untuk_melangkah, '希望と不安が交互に胸をよぎったが、不安のあとにはいつも、かすかな光が残った。彼はその光を信じて、一歩を踏み出した。', 'Harapan dan kecemasan bergantian melintas di hatinya, namun setelah setiap gelombang keraguan, secercah cahaya tetap ada. Mempercayai cahaya itu, dia mengambil langkah maju.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6010_umum, '私みたいな一般庶民には、そのパンプスはちょっと高すぎるかな。', 'Pompa itu agak terlalu mahal untuk orang biasa seperti saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6011_sangat, '今超貧乏でさ〜。砂糖も切らしてるんだけど、それすら新しいの買えないんだわ。', 'Saya sangat bangkrut sekarang. Saya kehabisan gula dan saya bahkan tidak bisa membeli lebih banyak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6012_gaib, 'そういえば、私の超自然的な力についてお話したことってありましたっけ？', 'Pernahkah saya bercerita tentang kesaktian saya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6013_kecepatan_supersonik, '僕のパンダロボットは、超音速で空を飛べるんだぜ。', 'Robot panda saya bisa terbang dengan kecepatan supersonik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6014_gelombang_ultrasonik, '超音波なら脂肪細胞を永久に破壊することができると言われたので、この3000ドルもする機械を買ったんですよ。', 'Saya diberitahu bahwa gelombang ultrasonik menghancurkan sel-sel lemak secara permanen, jadi saya membeli mesin ini seharga $3.000.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6015_untuk_meminta, '「茹でたワニカニ、いつまでに必要ですか？」「できるだけ早く頼むよ。」', '"Kapan kamu membutuhkan crabigator rebus?" "Saya membutuhkannya sesegera mungkin."');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6015_untuk_meminta, '頼まれてもいないのに、勝手に責任を感じてしまったんですよね。', 'Tidak ada yang meminta saya untuk menanganinya, namun saya tetap merasa bertanggung jawab.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6016_kepercayaan, '彼は信頼できるような気がするし、早合点はしたくないね。', 'Saya tidak ingin langsung mengambil kesimpulan karena dia tampaknya cukup bisa dipercaya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6017_meminta, '依頼は断られちゃうかもしれないけど、聞くだけ聞いてみたら。', 'Permintaan Anda mungkin ditolak, namun tidak ada salahnya untuk bertanya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6018_ketergantungan, '外国の資源に依存するのは危険だ。', 'Ketergantungan pada sumber daya asing sangatlah berbahaya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6018_ketergantungan, 'サウジアラビアでは、国の収益の多くを石油に依存している。', 'Di Arab Saudi, sebagian besar pendapatan negaranya bergantung pada minyak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6018_ketergantungan, '自分が携帯依存症だってことは認めます。', 'Saya akui bahwa saya menjadi ketergantungan pada ponsel saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6019_bodoh, 'お前がそこまで馬鹿じゃなければ、お前がどれだけ馬鹿なのか説明することができるんだけどなあ。', 'Jika Anda tidak sebodoh itu, saya bisa menjelaskan betapa bodohnya Anda!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6020_prefektur_kagoshima, '鹿児島県で、今までで運転した中で一番デッコボコの道路をドライブしました。', 'Saya berkendara di jalan paling bergelombang yang pernah saya lalui di Prefektur Kagoshima.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6021_rusa, '牡鹿と牝鹿の区別がつきません。', 'Saya tidak bisa membedakan antara rusa jantan dan betina.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6022_izin, '事後承諾になってしまってすみません。', 'Maaf meminta persetujuan Anda setelah keputusan dibuat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6022_izin, '彼からの承諾の返事はまだないのか？', 'Masih belum ada kabar darinya tentang penerimaannya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6022_izin, '父は、私達の結婚を二つ返事で承諾した。', 'Ayah saya menyetujui pernikahan kami tanpa ragu-ragu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6023_penerimaan, 'コウイチはアメリカ合衆国の大統領になることを渋々受諾した。', 'Koichi dengan enggan setuju untuk menjadi presiden Amerika Serikat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6024_izin, '予め管理人の許諾を得てください。', 'Harap mendapatkan izin dari pengelola terlebih dahulu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6024_izin, 'このビデオを公開することは、本人の許諾済みです。', 'Saya mendapat izin dari orang di video tersebut sebelum merilisnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6024_izin, 'もし娘さんとの結婚を許可してくださるのなら、あなたに我が社の登録商標の使用を許諾します。', 'Jika Anda mengizinkan saya menikahi putri Anda, saya akan memberikan persetujuan saya untuk menggunakan merek dagang perusahaan kami.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6025_persetujuan_atau_penolakan, '「諾否を御一報ください」という言葉は、仕事の手紙やEmailなどでよく使われるフレーズです。', '"Harap beri tahu kami apakah hal ini dapat diterima atau tidak" adalah frasa umum yang digunakan dalam surat bisnis dan email.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6026_gading, '印鑑を高級な象牙の物に変えました。', 'Saya mengganti stempel nama saya dengan stempel gading yang mahal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6027_taring, 'ハロウィン用の偽物の牙の在庫が切れそうです。', 'Stok taring palsu kami untuk Halloween hampir habis.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6028_untuk_menyerah, '降参しようと思ったことは今まで一度もないんですか。', 'Pernahkah Anda berpikir untuk menyerah, sekali pun?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6238_untuk_bertukar, '一つ大きいサイズの靴に換えてもらえませんか。', 'Bisakah Anda menukarkan sepatu ini dengan sepasang yang ukurannya satu lebih besar?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6582_tempat_tidur_sakit, 'この病院の病床数はいくつですか？', 'Berapa banyak tempat tidur yang dimiliki rumah sakit ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6582_tempat_tidur_sakit, '先週、ICUから一般病床に移ったよ。', 'Saya pindah dari ICU ke tempat tidur biasa minggu lalu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6582_tempat_tidur_sakit, '彼は、もう一年も病床にふしています。', 'Dia telah terbaring di tempat tidur selama lebih dari setahun sekarang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7471_kotor, '汚い雑巾が、トイレに落ちていました。', 'Kain cuci kotor jatuh ke toilet.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7609_besar, '会議の資料が大幅に変更されました。', 'Dokumen pertemuan tersebut diubah secara substansial.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7609_besar, '干ばつの影響で野菜が大幅に値上がりした。', 'Harga sayur mayur naik drastis akibat kekeringan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7609_besar, 'インフルエンザワクチンの開発は、死亡者数の大幅な減少をもたらしました。', 'Pengembangan vaksin flu menyebabkan penurunan drastis jumlah kematian.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7663_tarian, 'これは、日本最古の舞です。', 'Ini adalah tarian tertua di Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7667_menjadi_menyala, 'あの部屋に明かりが灯るのを見たんだ。', 'Saya melihat lampu menyala di ruangan itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7667_menjadi_menyala, '夕暮れとともに、町に灯りが灯っていく。', 'Saat malam tiba, lampu mulai menyala di seluruh kota.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7667_menjadi_menyala, '絶望の中に、かすかな希望の光が灯った。', 'Di tengah keputusasaan, secercah harapan menyala.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7667_menjadi_menyala, 'ろうそくの火が灯ると、やわらかなオレンジ色の光がぼんやりと広がった。', 'Saat lilin dinyalakan, cahaya oranye lembut menyebar dengan lembut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7723_kesalahan, 'ようやく誤りに気がついた。', 'Saya akhirnya menyadari kesalahan saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7777_barang_berharga, '貴重品はご自身で管理して下さい。', 'Tolong jaga barang-barang berharga Anda sendiri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8381_untuk_mengasinkan_sesuatu, '私は、うちのおばあちゃんが漬ける大根が大好きです。', 'Saya suka acar lobak yang dibuat nenek saya di rumah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8381_untuk_mengasinkan_sesuatu, 'これはマグロを一晩、ニンニクたっぷりのしょうゆに漬けておいた物です。', 'Ini adalah tuna yang direndam semalaman dalam kecap asin dan banyak bawang putih.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8381_untuk_mengasinkan_sesuatu, '2-3時間漬けるだけで、美味しいきゅうりの浅漬けができます。', 'Anda bisa membuat acar mentimun yang lezat dengan merendamnya selama 2-3 jam saja.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8524_paman, '叔父はこの学校の校長です。', 'Paman saya adalah kepala sekolah di sekolah ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8525_tante, '叔母は学校の先生をしています。', 'Bibi saya adalah seorang guru sekolah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8632_untuk_menjadi_baik, 'へー、この辺って水が湧くんだね。', 'Oh, jadi ada mata air di sekitar sini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8632_untuk_menjadi_baik, 'ようやく実感が湧いてきました。', 'Akhirnya mulai terasa nyata.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8632_untuk_menjadi_baik, '急にパッとイメージが湧くこともあれば、中々いい案が思いつかないこともあります。', 'Terkadang sebuah ide bagus tiba-tiba muncul di benak, sementara di lain waktu sulit untuk memikirkannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8632_untuk_menjadi_baik, '悔し涙が湧きました。', 'Air mata frustrasi yang pahit mengalir deras.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8633_mata_air, '地下水が地表に自然に出てきたものを、湧水といいます。', 'Air bawah tanah yang muncul ke permukaan secara alami disebut mata air.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8633_mata_air, 'このブログの記事で、そこに湧水があることを知ったんです。', 'Melalui postingan blog ini, saya mengetahui keberadaan mata air di sana.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8633_mata_air, 'この湧水は、青森県認定の「わたしたちの名水」にも選ばれた、とても美味しい湧水です。', 'Mata air ini telah dipilih sebagai "air kami yang terkenal" oleh Prefektur Aomori, dan rasanya sangat lezat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8633_mata_air, '最近では、湧水が出るような自然豊かなところに、メガソーラーパネルが並んでいるのをよく見かけます。', 'Akhir-akhir ini, saya sering melihat susunan panel surya raksasa berjejer di kawasan yang kaya akan alam tempat mata air mengalir.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8918_ikan_salmon, 'いつもアジア系スーパーで鮭を買います。', 'Saya selalu membeli salmon di toko kelontong Asia.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8918_ikan_salmon, 'なぜ上司がこの鮭を私にくれたのか分からない。', 'Saya tidak mengerti mengapa bos saya memberi saya salmon ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8918_ikan_salmon, 'この昔話では、鮭の基礎的知識をお伝えします。', 'Dongeng ini akan memberi Anda pengetahuan dasar tentang salmon.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9061_reuni_kelas, '一昨日、中学の同窓会に行ってきました。', 'Sehari sebelum kemarin, saya pergi ke reuni kelas SMP saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9061_reuni_kelas, '小学校の同窓会の案内が来た。', 'Saya menerima undangan untuk reuni sekolah dasar saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9061_reuni_kelas, '同窓会活動への同窓生の皆さまのご協力をお願いいたします。', 'Kami mohon kerjasama seluruh alumni dalam kegiatan himpunan alumni kami.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9074_cedera, '昨日、娘が学校で怪我をしてしまいました。', 'Kemarin, putri saya terluka di sekolah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9074_cedera, '怪獣だって病気や怪我をします。', 'Bahkan monster pun sakit dan terluka.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9074_cedera, 'あの子の大怪我の原因って、バナナの皮らしいよ。', 'Saya dengar penyebab luka serius anak itu adalah kulit pisang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9266_untuk_menggoreng, '三十分もかけて玉ねぎを炒めるんですか？', 'Apakah Anda benar-benar menghabiskan tiga puluh menit untuk menumis bawang bombay?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9266_untuk_menggoreng, '炒めすぎないように気をつけてくださいね。', 'Hati-hati jangan sampai terlalu matang, oke?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9266_untuk_menggoreng, '強火で手早く炒めていきましょう。', 'Ayo cepat tumis dengan api besar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9284_kedokteran_gigi, 'かかりつけの歯科医はいますか？', 'Apakah Anda mempunyai dokter gigi rutin?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9284_kedokteran_gigi, 'その日は三時に歯科クリニックのアポイントメントがあります。', 'Saya ada janji dengan klinik gigi pada jam 3 hari itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9284_kedokteran_gigi, '将来は歯科衛生士になりたいです。', 'Saya ingin menjadi ahli kesehatan gigi di masa depan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9488_rumah_mandiri, 'えっ、一人で一軒家に住んでいるんですか？', 'Oh, Anda tinggal sendirian di rumah keluarga tunggal?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9488_rumah_mandiri, '一軒家って掃除が大変そうなイメージがあります。', 'Saya selalu mendapat kesan bahwa membersihkan akan menjadi tugas besar di rumah yang berdiri sendiri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9488_rumah_mandiri, '今はマンション暮らしだけど、将来は一軒家を買いたいんですよね。', 'Saat ini saya tinggal di apartemen, tetapi suatu hari nanti saya ingin membeli rumah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9488_rumah_mandiri, 'あの一軒家、なんか不気味じゃない？夜になると、変な物音が聞こえる気がするし。', 'Rumah itu agak menyeramkan, bukan? Di malam hari, saya merasa seperti mendengar suara-suara aneh datang darinya.');

  -- 4. PREREQUISITES
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1611_mantan, id FROM items WHERE type = 'radical' AND (slug = '8761' OR id = '8761') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1611_mantan, id FROM items WHERE type = 'radical' AND (slug = '22' OR id = '22') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1612_nama_keluarga, id FROM items WHERE type = 'radical' AND (slug = '19' OR id = '19') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1612_nama_keluarga, id FROM items WHERE type = 'radical' AND (slug = '210' OR id = '210') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1613_berdagang, id FROM items WHERE type = 'radical' AND (slug = '140' OR id = '140') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1613_berdagang, id FROM items WHERE type = 'radical' AND (slug = '24' OR id = '24') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1613_berdagang, id FROM items WHERE type = 'radical' AND (slug = '94' OR id = '94') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1614_komandan, id FROM items WHERE type = 'radical' AND (slug = '8831' OR id = '8831') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1615_persekutuan, id FROM items WHERE type = 'radical' AND (slug = '357' OR id = '357') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1615_persekutuan, id FROM items WHERE type = 'radical' AND (slug = '84' OR id = '84') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1616_meninggalkan, id FROM items WHERE type = 'radical' AND (slug = '114' OR id = '114') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1616_meninggalkan, id FROM items WHERE type = 'radical' AND (slug = '358' OR id = '358') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1617_menggeliat, id FROM items WHERE type = 'radical' AND (slug = '75' OR id = '75') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1617_menggeliat, id FROM items WHERE type = 'radical' AND (slug = '190' OR id = '190') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1618_utang, id FROM items WHERE type = 'radical' AND (slug = '75' OR id = '75') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1618_utang, id FROM items WHERE type = 'radical' AND (slug = '321' OR id = '321') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1619_mencapai, id FROM items WHERE type = 'radical' AND (slug = '193' OR id = '193') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1620_nara, id FROM items WHERE type = 'radical' AND (slug = '18' OR id = '18') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1620_nara, id FROM items WHERE type = 'radical' AND (slug = '207' OR id = '207') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1621_lebar, id FROM items WHERE type = 'radical' AND (slug = '102' OR id = '102') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1621_lebar, id FROM items WHERE type = 'radical' AND (slug = '8824' OR id = '8824') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1622_usang, id FROM items WHERE type = 'radical' AND (slug = '62' OR id = '62') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1622_usang, r_359_keberangkatan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1623_manis, r_360_manis);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1624_menukarkan, id FROM items WHERE type = 'radical' AND (slug = '63' OR id = '63') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1624_menukarkan, id FROM items WHERE type = 'radical' AND (slug = '14' OR id = '14') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1624_menukarkan, id FROM items WHERE type = 'radical' AND (slug = '16' OR id = '16') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1624_menukarkan, id FROM items WHERE type = 'radical' AND (slug = '28' OR id = '28') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1624_menukarkan, id FROM items WHERE type = 'radical' AND (slug = '18' OR id = '18') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1625_memetik, id FROM items WHERE type = 'radical' AND (slug = '63' OR id = '63') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1625_memetik, id FROM items WHERE type = 'radical' AND (slug = '276' OR id = '276') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1626_inti, id FROM items WHERE type = 'radical' AND (slug = '23' OR id = '23') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1626_inti, id FROM items WHERE type = 'radical' AND (slug = '351' OR id = '351') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1627_laut_terbuka, id FROM items WHERE type = 'radical' AND (slug = '103' OR id = '103') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1627_laut_terbuka, id FROM items WHERE type = 'radical' AND (slug = '49' OR id = '49') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1628_tali, id FROM items WHERE type = 'radical' AND (slug = '86' OR id = '86') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1628_tali, id FROM items WHERE type = 'radical' AND (slug = '353' OR id = '353') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1629_pelabuhan, id FROM items WHERE type = 'radical' AND (slug = '103' OR id = '103') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1629_pelabuhan, id FROM items WHERE type = 'radical' AND (slug = '220' OR id = '220') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1630_menawarkan, id FROM items WHERE type = 'radical' AND (slug = '361' OR id = '361') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1630_menawarkan, id FROM items WHERE type = 'radical' AND (slug = '47' OR id = '47') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1631_sembuh, id FROM items WHERE type = 'radical' AND (slug = '187' OR id = '187') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1631_sembuh, id FROM items WHERE type = 'radical' AND (slug = '319' OR id = '319') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1632_mewarisi, id FROM items WHERE type = 'radical' AND (slug = '86' OR id = '86') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1632_mewarisi, id FROM items WHERE type = 'radical' AND (slug = '56' OR id = '56') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1632_mewarisi, id FROM items WHERE type = 'radical' AND (slug = '98' OR id = '98') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1633_menjaga, id FROM items WHERE type = 'radical' AND (slug = '86' OR id = '86') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1633_menjaga, id FROM items WHERE type = 'radical' AND (slug = '240' OR id = '240') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1634_menari, id FROM items WHERE type = 'radical' AND (slug = '252' OR id = '252') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1634_menari, r_429_menari);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1635_akta, id FROM items WHERE type = 'radical' AND (slug = '75' OR id = '75') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1635_akta, id FROM items WHERE type = 'radical' AND (slug = '81' OR id = '81') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1636_melangkah, id FROM items WHERE type = 'radical' AND (slug = '95' OR id = '95') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1636_melangkah, id FROM items WHERE type = 'radical' AND (slug = '45' OR id = '45') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1636_melangkah, id FROM items WHERE type = 'radical' AND (slug = '22' OR id = '22') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1637_umumnya, id FROM items WHERE type = 'radical' AND (slug = '149' OR id = '149') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1637_umumnya, id FROM items WHERE type = 'radical' AND (slug = '160' OR id = '160') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1638_memercayai, id FROM items WHERE type = 'radical' AND (slug = '219' OR id = '219') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1638_memercayai, id FROM items WHERE type = 'radical' AND (slug = '184' OR id = '184') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1639_bergantung, id FROM items WHERE type = 'radical' AND (slug = '75' OR id = '75') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1639_bergantung, id FROM items WHERE type = 'radical' AND (slug = '320' OR id = '320') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1640_rusa, id FROM items WHERE type = 'radical' AND (slug = '62' OR id = '62') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1640_rusa, id FROM items WHERE type = 'radical' AND (slug = '424' OR id = '424') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1640_rusa, id FROM items WHERE type = 'radical' AND (slug = '161' OR id = '161') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1641_perjanjian, id FROM items WHERE type = 'radical' AND (slug = '117' OR id = '117') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1641_perjanjian, id FROM items WHERE type = 'radical' AND (slug = '90' OR id = '90') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1641_perjanjian, id FROM items WHERE type = 'radical' AND (slug = '362' OR id = '362') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1642_taring, id FROM items WHERE type = 'radical' AND (slug = '333' OR id = '333') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1707_sangat, id FROM items WHERE type = 'radical' AND (slug = '124' OR id = '124') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1707_sangat, id FROM items WHERE type = 'radical' AND (slug = '331' OR id = '331') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_2336_acar, id FROM items WHERE type = 'radical' AND (slug = '103' OR id = '103') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_2336_acar, id FROM items WHERE type = 'radical' AND (slug = '321' OR id = '321') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_2404_paman, id FROM items WHERE type = 'radical' AND (slug = '325' OR id = '325') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_2404_paman, id FROM items WHERE type = 'radical' AND (slug = '35' OR id = '35') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_2404_paman, id FROM items WHERE type = 'radical' AND (slug = '30' OR id = '30') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_2447_baik, id FROM items WHERE type = 'radical' AND (slug = '103' OR id = '103') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_2447_baik, id FROM items WHERE type = 'radical' AND (slug = '437' OR id = '437') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_8911_ikan_salmon, id FROM items WHERE type = 'radical' AND (slug = '150' OR id = '150') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_8911_ikan_salmon, id FROM items WHERE type = 'radical' AND (slug = '17' OR id = '17') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_9265_menggoreng, id FROM items WHERE type = 'radical' AND (slug = '46' OR id = '46') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_9265_menggoreng, id FROM items WHERE type = 'radical' AND (slug = '198' OR id = '198') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3591_tertib, id FROM items WHERE type = 'kanji' AND (slug = '863' OR id = '863') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3591_tertib, id FROM items WHERE type = 'kanji' AND (slug = '881' OR id = '881') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3659_contoh_buruk, id FROM items WHERE type = 'kanji' AND (slug = '829' OR id = '829') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3659_contoh_buruk, id FROM items WHERE type = 'kanji' AND (slug = '896' OR id = '896') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5562_untuk_merusak_sesuatu, id FROM items WHERE type = 'kanji' AND (slug = '1499' OR id = '1499') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5666_pasir, id FROM items WHERE type = 'kanji' AND (slug = '1533' OR id = '1533') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5747_bangsawan, id FROM items WHERE type = 'kanji' AND (slug = '1547' OR id = '1547') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5755_mangkuk_belut, id FROM items WHERE type = 'kanji' AND (slug = '1549' OR id = '1549') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5938_mangkok_nasi_ayam_dan_telur, id FROM items WHERE type = 'kanji' AND (slug = '770' OR id = '770') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5938_mangkok_nasi_ayam_dan_telur, id FROM items WHERE type = 'kanji' AND (slug = '462' OR id = '462') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5938_mangkok_nasi_ayam_dan_telur, id FROM items WHERE type = 'kanji' AND (slug = '1549' OR id = '1549') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5939_mual, id FROM items WHERE type = 'kanji' AND (slug = '1550' OR id = '1550') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5939_mual, id FROM items WHERE type = 'kanji' AND (slug = '548' OR id = '548') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5940_untuk_meludahkan, id FROM items WHERE type = 'kanji' AND (slug = '1550' OR id = '1550') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5940_untuk_meludahkan, id FROM items WHERE type = 'kanji' AND (slug = '483' OR id = '483') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5941_teman_teman_itu, id FROM items WHERE type = 'kanji' AND (slug = '1551' OR id = '1551') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5942_lipstik, id FROM items WHERE type = 'kanji' AND (slug = '452' OR id = '452') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5942_lipstik, id FROM items WHERE type = 'kanji' AND (slug = '1560' OR id = '1560') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5943_rekomendasi, id FROM items WHERE type = 'kanji' AND (slug = '1564' OR id = '1564') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5944_bekerja, id FROM items WHERE type = 'kanji' AND (slug = '1570' OR id = '1570') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5945_medan_elektromagnetik, id FROM items WHERE type = 'kanji' AND (slug = '706' OR id = '706') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5945_medan_elektromagnetik, id FROM items WHERE type = 'kanji' AND (slug = '1559' OR id = '1559') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5945_medan_elektromagnetik, id FROM items WHERE type = 'kanji' AND (slug = '694' OR id = '694') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5946_radioaktivitas, id FROM items WHERE type = 'kanji' AND (slug = '791' OR id = '791') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5946_radioaktivitas, id FROM items WHERE type = 'kanji' AND (slug = '1561' OR id = '1561') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5946_radioaktivitas, id FROM items WHERE type = 'kanji' AND (slug = '921' OR id = '921') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5947_konduktor, id FROM items WHERE type = 'kanji' AND (slug = '797' OR id = '797') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5947_konduktor, id FROM items WHERE type = 'kanji' AND (slug = '1566' OR id = '1566') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5947_konduktor, id FROM items WHERE type = 'kanji' AND (slug = '690' OR id = '690') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5948_kisah_genji, id FROM items WHERE type = 'kanji' AND (slug = '1568' OR id = '1568') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5948_kisah_genji, id FROM items WHERE type = 'kanji' AND (slug = '647' OR id = '647') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5948_kisah_genji, id FROM items WHERE type = 'kanji' AND (slug = '718' OR id = '718') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5948_kisah_genji, id FROM items WHERE type = 'kanji' AND (slug = '764' OR id = '764') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5949_untuk_merusak, id FROM items WHERE type = 'kanji' AND (slug = '1573' OR id = '1573') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5949_untuk_merusak, id FROM items WHERE type = 'kanji' AND (slug = '1093' OR id = '1093') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5950_edamame, id FROM items WHERE type = 'kanji' AND (slug = '1574' OR id = '1574') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5950_edamame, id FROM items WHERE type = 'kanji' AND (slug = '1576' OR id = '1576') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5951_tahu, id FROM items WHERE type = 'kanji' AND (slug = '1576' OR id = '1576') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5951_tahu, id FROM items WHERE type = 'kanji' AND (slug = '1578' OR id = '1578') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5952_nama_keluarga_mantan, k_1611_mantan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5952_nama_keluarga_mantan, k_1612_nama_keluarga);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5953_restorasi, id FROM items WHERE type = 'kanji' AND (slug = '1285' OR id = '1285') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5953_restorasi, k_1611_mantan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5954_nama_lengkap, k_1612_nama_keluarga);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5954_nama_lengkap, id FROM items WHERE type = 'kanji' AND (slug = '544' OR id = '544') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5955_berdagang, k_1613_berdagang);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5955_berdagang, id FROM items WHERE type = 'kanji' AND (slug = '1063' OR id = '1063') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5956_manis, k_1623_manis);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5957_untuk_tidak_menganggapnya_serius, k_1623_manis);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5957_untuk_tidak_menganggapnya_serius, id FROM items WHERE type = 'kanji' AND (slug = '558' OR id = '558') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5958_gigi_manis, k_1623_manis);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5958_gigi_manis, id FROM items WHERE type = 'kanji' AND (slug = '1500' OR id = '1500') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5959_masa_depan, k_1614_komandan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5959_masa_depan, id FROM items WHERE type = 'kanji' AND (slug = '590' OR id = '590') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5960_shogun, k_1614_komandan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5960_shogun, id FROM items WHERE type = 'kanji' AND (slug = '954' OR id = '954') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5961_umum, id FROM items WHERE type = 'kanji' AND (slug = '453' OR id = '453') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5961_umum, k_1614_komandan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5962_komandan, id FROM items WHERE type = 'kanji' AND (slug = '528' OR id = '528') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5962_komandan, k_1614_komandan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5963_persekutuan, id FROM items WHERE type = 'kanji' AND (slug = '568' OR id = '568') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5963_persekutuan, k_1615_persekutuan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5964_liga, id FROM items WHERE type = 'kanji' AND (slug = '1084' OR id = '1084') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5964_liga, k_1615_persekutuan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5965_sumpah, k_1615_persekutuan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5965_sumpah, id FROM items WHERE type = 'kanji' AND (slug = '915' OR id = '915') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5966_warisan, k_1616_meninggalkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5966_warisan, id FROM items WHERE type = 'kanji' AND (slug = '1109' OR id = '1109') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5967_kehilangan, k_1616_meninggalkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5967_kehilangan, id FROM items WHERE type = 'kanji' AND (slug = '654' OR id = '654') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5968_keturunan, k_1616_meninggalkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5968_keturunan, id FROM items WHERE type = 'kanji' AND (slug = '777' OR id = '777') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5969_mayat, k_1616_meninggalkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5969_mayat, id FROM items WHERE type = 'kanji' AND (slug = '583' OR id = '583') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5970_untuk_tumbuh_lebih_lama, k_1617_menggeliat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5971_menjalin_kedekatan, k_1618_utang);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5971_menjalin_kedekatan, id FROM items WHERE type = 'kanji' AND (slug = '1361' OR id = '1361') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5972_kredit, k_1618_utang);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5972_kredit, id FROM items WHERE type = 'kanji' AND (slug = '1134' OR id = '1134') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5973_utang_nasional, id FROM items WHERE type = 'kanji' AND (slug = '621' OR id = '621') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5973_utang_nasional, k_1618_utang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5974_untuk_mencapai, k_1619_mencapai);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5975_difusi, id FROM items WHERE type = 'kanji' AND (slug = '1448' OR id = '1448') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5975_difusi, k_1619_mencapai);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5976_mencapai_sukses, k_1619_mencapai);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5976_mencapai_sukses, id FROM items WHERE type = 'kanji' AND (slug = '825' OR id = '825') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5977_nara, k_1620_nara);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5977_nara, id FROM items WHERE type = 'kanji' AND (slug = '805' OR id = '805') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5978_prefektur_kanagawa, id FROM items WHERE type = 'kanji' AND (slug = '799' OR id = '799') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5978_prefektur_kanagawa, k_1620_nara);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5978_prefektur_kanagawa, id FROM items WHERE type = 'kanji' AND (slug = '456' OR id = '456') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5978_prefektur_kanagawa, id FROM items WHERE type = 'kanji' AND (slug = '731' OR id = '731') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5979_lebar, k_1621_lebar);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5980_penghapusan, k_1622_usang);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5980_penghapusan, id FROM items WHERE type = 'kanji' AND (slug = '514' OR id = '514') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5981_menjadi_usang, k_1622_usang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5984_ventilasi, k_1624_menukarkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5984_ventilasi, id FROM items WHERE type = 'kanji' AND (slug = '548' OR id = '548') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5985_konversi, id FROM items WHERE type = 'kanji' AND (slug = '944' OR id = '944') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5985_konversi, k_1624_menukarkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5986_untuk_memetik, k_1625_memetik);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5987_menunjuk, id FROM items WHERE type = 'kanji' AND (slug = '797' OR id = '797') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5987_menunjuk, k_1625_memetik);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5988_untuk_membuka_kedok, k_1625_memetik);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5988_untuk_membuka_kedok, id FROM items WHERE type = 'kanji' AND (slug = '729' OR id = '729') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5989_inti, k_1626_inti);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5990_senjata_nuklir, k_1626_inti);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5990_senjata_nuklir, id FROM items WHERE type = 'kanji' AND (slug = '1000' OR id = '1000') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5990_senjata_nuklir, id FROM items WHERE type = 'kanji' AND (slug = '876' OR id = '876') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5991_uji_nuklir, k_1626_inti);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5991_uji_nuklir, id FROM items WHERE type = 'kanji' AND (slug = '715' OR id = '715') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5991_uji_nuklir, id FROM items WHERE type = 'kanji' AND (slug = '1048' OR id = '1048') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5992_laut_terbuka, k_1627_laut_terbuka);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5992_laut_terbuka, id FROM items WHERE type = 'kanji' AND (slug = '852' OR id = '852') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5993_tali, k_1628_tali);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5994_jomon, k_1628_tali);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5994_jomon, id FROM items WHERE type = 'kanji' AND (slug = '475' OR id = '475') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5995_tsunami, k_1629_pelabuhan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5995_tsunami, id FROM items WHERE type = 'kanji' AND (slug = '793' OR id = '793') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5996_donor_darah, k_1630_menawarkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5996_donor_darah, id FROM items WHERE type = 'kanji' AND (slug = '619' OR id = '619') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5997_sumbangan, k_1630_menawarkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5997_sumbangan, id FROM items WHERE type = 'kanji' AND (slug = '602' OR id = '602') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5998_perawatan_medis, id FROM items WHERE type = 'kanji' AND (slug = '681' OR id = '681') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5998_perawatan_medis, k_1631_sembuh);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5999_terapi_medis, id FROM items WHERE type = 'kanji' AND (slug = '978' OR id = '978') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5999_terapi_medis, k_1631_sembuh);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6001_untuk_mewarisi, k_1632_mewarisi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6002_suksesi, k_1632_mewarisi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6002_suksesi, id FROM items WHERE type = 'kanji' AND (slug = '1572' OR id = '1572') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6003_pemeliharaan, k_1633_menjaga);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6003_pemeliharaan, id FROM items WHERE type = 'kanji' AND (slug = '727' OR id = '727') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6004_restorasi, k_1633_menjaga);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6004_restorasi, id FROM items WHERE type = 'kanji' AND (slug = '857' OR id = '857') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6005_panggung, k_1634_menari);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6005_panggung, id FROM items WHERE type = 'kanji' AND (slug = '520' OR id = '520') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6006_untuk_menari, k_1634_menari);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6007_kabuki, id FROM items WHERE type = 'kanji' AND (slug = '761' OR id = '761') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6007_kabuki, k_1634_menari);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6007_kabuki, k_1635_akta);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6008_tarian, k_1634_menari);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6008_tarian, k_1636_melangkah);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6009_untuk_melangkah, k_1636_melangkah);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6010_umum, id FROM items WHERE type = 'kanji' AND (slug = '440' OR id = '440') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6010_umum, k_1637_umumnya);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6011_sangat, k_1707_sangat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6012_gaib, k_1707_sangat);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6012_gaib, id FROM items WHERE type = 'kanji' AND (slug = '578' OR id = '578') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6012_gaib, id FROM items WHERE type = 'kanji' AND (slug = '881' OR id = '881') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6012_gaib, id FROM items WHERE type = 'kanji' AND (slug = '914' OR id = '914') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6013_kecepatan_supersonik, k_1707_sangat);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6013_kecepatan_supersonik, id FROM items WHERE type = 'kanji' AND (slug = '606' OR id = '606') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6013_kecepatan_supersonik, id FROM items WHERE type = 'kanji' AND (slug = '741' OR id = '741') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6014_gelombang_ultrasonik, k_1707_sangat);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6014_gelombang_ultrasonik, id FROM items WHERE type = 'kanji' AND (slug = '606' OR id = '606') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6014_gelombang_ultrasonik, id FROM items WHERE type = 'kanji' AND (slug = '793' OR id = '793') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6015_untuk_meminta, k_1638_memercayai);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6016_kepercayaan, id FROM items WHERE type = 'kanji' AND (slug = '940' OR id = '940') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6016_kepercayaan, k_1638_memercayai);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6017_meminta, k_1639_bergantung);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6017_meminta, k_1638_memercayai);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6018_ketergantungan, k_1639_bergantung);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6018_ketergantungan, id FROM items WHERE type = 'kanji' AND (slug = '990' OR id = '990') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6019_bodoh, id FROM items WHERE type = 'kanji' AND (slug = '692' OR id = '692') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6019_bodoh, k_1640_rusa);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6020_prefektur_kagoshima, k_1640_rusa);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6020_prefektur_kagoshima, id FROM items WHERE type = 'kanji' AND (slug = '1349' OR id = '1349') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6020_prefektur_kagoshima, id FROM items WHERE type = 'kanji' AND (slug = '822' OR id = '822') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6020_prefektur_kagoshima, id FROM items WHERE type = 'kanji' AND (slug = '731' OR id = '731') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6021_rusa, k_1640_rusa);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6022_izin, id FROM items WHERE type = 'kanji' AND (slug = '1572' OR id = '1572') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6022_izin, k_1641_perjanjian);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6023_penerimaan, id FROM items WHERE type = 'kanji' AND (slug = '711' OR id = '711') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6023_penerimaan, k_1641_perjanjian);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6024_izin, id FROM items WHERE type = 'kanji' AND (slug = '1050' OR id = '1050') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6024_izin, k_1641_perjanjian);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6025_persetujuan_atau_penolakan, k_1641_perjanjian);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6025_persetujuan_atau_penolakan, id FROM items WHERE type = 'kanji' AND (slug = '1517' OR id = '1517') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6026_gading, id FROM items WHERE type = 'kanji' AND (slug = '1237' OR id = '1237') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6026_gading, k_1642_taring);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6027_taring, k_1642_taring);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6028_untuk_menyerah, id FROM items WHERE type = 'kanji' AND (slug = '1548' OR id = '1548') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6028_untuk_menyerah, id FROM items WHERE type = 'kanji' AND (slug = '899' OR id = '899') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6238_untuk_bertukar, k_1624_menukarkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6582_tempat_tidur_sakit, id FROM items WHERE type = 'kanji' AND (slug = '773' OR id = '773') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6582_tempat_tidur_sakit, id FROM items WHERE type = 'kanji' AND (slug = '1810' OR id = '1810') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7471_kotor, id FROM items WHERE type = 'kanji' AND (slug = '1506' OR id = '1506') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7609_besar, id FROM items WHERE type = 'kanji' AND (slug = '453' OR id = '453') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7609_besar, k_1621_lebar);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7663_tarian, k_1634_menari);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7667_menjadi_menyala, id FROM items WHERE type = 'kanji' AND (slug = '2037' OR id = '2037') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7723_kesalahan, id FROM items WHERE type = 'kanji' AND (slug = '1545' OR id = '1545') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7777_barang_berharga, id FROM items WHERE type = 'kanji' AND (slug = '1547' OR id = '1547') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7777_barang_berharga, id FROM items WHERE type = 'kanji' AND (slug = '735' OR id = '735') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7777_barang_berharga, id FROM items WHERE type = 'kanji' AND (slug = '967' OR id = '967') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8381_untuk_mengasinkan_sesuatu, k_2336_acar);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8524_paman, k_2404_paman);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8524_paman, id FROM items WHERE type = 'kanji' AND (slug = '512' OR id = '512') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8525_tante, k_2404_paman);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8525_tante, id FROM items WHERE type = 'kanji' AND (slug = '524' OR id = '524') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8632_untuk_menjadi_baik, k_2447_baik);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8633_mata_air, k_2447_baik);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8633_mata_air, id FROM items WHERE type = 'kanji' AND (slug = '479' OR id = '479') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8918_ikan_salmon, k_8911_ikan_salmon);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9061_reuni_kelas, id FROM items WHERE type = 'kanji' AND (slug = '568' OR id = '568') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9061_reuni_kelas, id FROM items WHERE type = 'kanji' AND (slug = '1516' OR id = '1516') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9061_reuni_kelas, id FROM items WHERE type = 'kanji' AND (slug = '566' OR id = '566') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9074_cedera, id FROM items WHERE type = 'kanji' AND (slug = '1302' OR id = '1302') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9074_cedera, id FROM items WHERE type = 'kanji' AND (slug = '1294' OR id = '1294') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_9266_untuk_menggoreng, k_9265_menggoreng);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9284_kedokteran_gigi, id FROM items WHERE type = 'kanji' AND (slug = '841' OR id = '841') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9284_kedokteran_gigi, id FROM items WHERE type = 'kanji' AND (slug = '642' OR id = '642') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9488_rumah_mandiri, id FROM items WHERE type = 'kanji' AND (slug = '440' OR id = '440') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9488_rumah_mandiri, id FROM items WHERE type = 'kanji' AND (slug = '2133' OR id = '2133') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9488_rumah_mandiri, id FROM items WHERE type = 'kanji' AND (slug = '660' OR id = '660') LIMIT 1;

END $$;
