-- ====================================================
-- KaniGani — Seed Data Level 37 (v2, relasional)
-- Auto-generated with Indonesian Slugs
-- ====================================================

DO $$
DECLARE
  -- ============ RADICAL IDs (Level 37) ============
  r_363_pertanda UUID; r_364_hadiah UUID; r_365_tusuk_sate UUID; r_366_kekerasan UUID; r_395_membungkus UUID;

  -- ============ KANJI IDs (Level 37) ============
  k_1643_melompat UUID; k_1644_bersinar UUID; k_1645_penangkapan_ikan UUID; k_1646_perbaikan UUID; k_1647_menghukum UUID; k_1648_rekrut UUID; k_1649_gigih UUID; k_1650_basis UUID; k_1651_hancur UUID; k_1652_menderita UUID; k_1653_kembali UUID; k_1654_mengonfrontasi UUID; k_1655_melawan UUID; k_1656_di_musim UUID; k_1657_teluk UUID; k_1658_meledak UUID; k_1659_peluru UUID; k_1660_mendengarkan UUID; k_1661_jejak UUID; k_1662_menugaskan UUID; k_1663_bertarung UUID; k_1664_kamp_tentara UUID; k_1665_parfum UUID; k_1666_pertanda UUID; k_1667_lihat_ke UUID; k_1668_kurangi UUID; k_1669_sumpah UUID; k_1670_kebaikan UUID; k_1671_memeluk UUID; k_1672_menampilkan UUID; k_1673_tujuan UUID; k_1674_pemakaman UUID; k_2384_sutra UUID; k_8837_tusuk_sate UUID; k_8862_alis UUID;

  -- ============ VOCABULARY IDs (Level 37) ============
  v_5749_anda UUID; v_6029_hidup_sendirian UUID; v_6031_orang_yang_tak_tahu_malu UUID; v_6032_ujian_neraka UUID; v_6033_keadaan_mabuk_laut UUID; v_6034_makanan_daging_dan_sayur UUID; v_6035_pembayaran UUID; v_6036_lukisan_cat_minyak UUID; v_6037_cuka_manis UUID; v_6038_membengkak UUID; v_6039_lambat UUID; v_6040_menjadi_pemalu UUID; v_6041_untuk_robek UUID; v_6042_perkenalan_diri UUID; v_6043_untuk_memperkenalkan UUID; v_6044_surat_perkenalan UUID; v_6045_sup UUID; v_6046_sup_miso UUID; v_6047_orang_mabuk UUID; v_6048_mabuk UUID; v_6049_pompa_bensin UUID; v_6050_untuk_melompat UUID; v_6051_era_showa UUID; v_6052_nelayan UUID; v_6053_perahu_nelayan UUID; v_6054_industri_perikanan UUID; v_6055_untuk_mengkompensasi UUID; v_6056_pengembalian UUID; v_6057_penjara UUID; v_6058_hukuman_mati UUID; v_6059_detektif_polisi UUID; v_6060_masa_penjara UUID; v_6061_hukuman UUID; v_6062_hukuman_seumur_hidup UUID; v_6063_untuk_memohon_sesuatu UUID; v_6064_penggalangan_dana UUID; v_6065_perekrutan UUID; v_6066_aplikasi UUID; v_6067_untuk_mengambil UUID; v_6068_lampiran_ke UUID; v_6069_menulis UUID; v_6070_pangkalan_bisbol UUID; v_6071_pukulan_dasar UUID; v_6072_wasit_bisbol UUID; v_6073_untuk_menghancurkan UUID; v_6074_runtuh UUID; v_6075_untuk_diderita UUID; v_6076_seorang_pasien UUID; v_6077_pasien_darurat UUID; v_6079_untuk_kembali UUID; v_6080_akan_datang UUID; v_6081_untuk_pemberontak UUID; v_6082_perlawanan UUID; v_6083_antibodi UUID; v_6084_untuk_menolak UUID; v_6085_umumnya UUID; v_6086_sepuluh_hari_pertama_setiap_bulan UUID; v_6087_sepuluh_hari_terakhir_dalam_bulan_ini UUID; v_6088_sepuluh_hari_tengah_dalam_bulan_ini UUID; v_6089_di_musim UUID; v_6090_teluk UUID; v_6091_taiwan UUID; v_6092_ledakan UUID; v_6093_bom UUID; v_6094_tawa_yang_meledak UUID; v_6095_bom_bunuh_diri UUID; v_6096_pengeboman UUID; v_6097_peluru UUID; v_6098_untuk_bangkit UUID; v_6099_peluru UUID; v_6100_kemampuan_pendengaran UUID; v_6101_pendengar UUID; v_6104_jejak UUID; v_6105_keajaiban UUID; v_6106_bukti UUID; v_6107_reruntuhan UUID; v_6108_untuk_digunakan UUID; v_6109_untuk_berjuang UUID; v_6110_pertempuran UUID; v_6111_semangat_perjuangan UUID; v_6112_kamp_tentara UUID; v_6113_kamp_tentara UUID; v_6116_parfum UUID; v_6118_tanda UUID; v_6119_pertanda UUID; v_6120_untuk_menghadapi UUID; v_6121_tepi_laut UUID; v_6122_tidak_teratur UUID; v_6123_untuk_mengurangi_sesuatu UUID; v_6124_penghapusan UUID; v_6125_pengurangan UUID; v_6126_kontrak UUID; v_6127_peluang UUID; v_6128_untuk_melakukan_bantuan UUID; v_6129_kebijaksanaan UUID; v_6130_untuk_merangkul UUID; v_6131_untuk_memasang_tanda UUID; v_6132_melihat UUID; v_6133_publikasi UUID; v_6134_tujuan UUID; v_6135_penembakan UUID; v_6136_pemakaman UUID; v_6137_untuk_mengubur UUID; v_6138_kremasi UUID; v_6234_menugaskan UUID; v_6581_persemaian UUID; v_8485_sutra UUID; v_8556_tsukemono UUID; v_8689_elastisitas UUID; v_8847_tusuk_sate UUID; v_8848_tusuk_sate_panggang UUID; v_8872_alis UUID; v_8873_alis UUID; v_9062_berpelukan UUID; v_9401_air_liur UUID; v_9402_meludah UUID; v_9404_untuk_dihancurkan UUID; v_9507_menonton_dan_mendengarkan UUID;

BEGIN

  DELETE FROM items WHERE level = 37;

  -- 1. RADICALS
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '兆', 'pertanda', 37, 1, 'Ada ledakan di sekitar kakimu. Seperti yang diperingatkan oleh peramal. Inilah <radikal>pertanda</radikal> yang dia bicarakan. Pikirkan tentang apa yang terjadi setelah pertanda itu muncul. Keajaiban peramal mengerikan apa yang akan terjadi???')
    RETURNING id INTO r_363_pertanda;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '賞', 'hadiah', 37, 2, 'Radikal ini sama dengan kanji. Artinya <radikal>hadiah</radikal>.')
    RETURNING id INTO r_364_hadiah;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '串', 'tusuk-sate', 37, 3, 'Ada sebatang tongkat menembus daging yang berair. Ini adalah <radikal>tusuk sate</radikal>.')
    RETURNING id INTO r_365_tusuk_sate;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '暴', 'kekerasan', 37, 4, 'Radikal ini sama dengan kanji. Artinya <radikal>kekerasan</radikal>.')
    RETURNING id INTO r_366_kekerasan;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '包', 'membungkus', 37, 5, 'Diri Anda (diri sendiri) berada di penjara. Lihatlah penjara yang menyelimuti Anda. Itu membungkusmu dan memelukmu erat-erat. Itu sebabnya ini disebut radikal <radikal>bungkus</radikal>!')
    RETURNING id INTO r_395_membungkus;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_363_pertanda, 'Pertanda', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_364_hadiah, 'Hadiah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_365_tusuk_sate, 'Tusuk sate', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_366_kekerasan, 'Kekerasan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_395_membungkus, 'Membungkus', true, true);

  -- 2. KANJIS
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '跳', 'melompat', 37, 6, '<radical>Kaki</radikal> Anda mendengar <radical>pertanda</radikal> dan sekarang membuat Anda <kanji>melompat</kanji> atas berbagai hal.', 'Saat Anda melompat, Anda mulai mendengar jeritan mengerikan di jalan. Itu Ny. <reading>Chou</reading> (ちょう) dan dia langsung berlari ke arahmu sambil berteriak, "LANGKAH DI RETAK JALAN SAYA! BERHENTI BERMAIN ATAU IBUMU TIDAK AKAN PERNAH PECAH PUNGGUNGNYA!"')
    RETURNING id INTO k_1643_melompat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '昭', 'bersinar', 37, 7, '<radical>matahari</radikal> <radikal>memanggil</radikal> keluar ke bumi dengan <kanji>bersinar</kanji> di atasnya.', '<kanji>bersinar</kanji> ini ditujukan langsung ke <reading>Shou</reading>gun (しょう). Matahari menyinari Shougun tidak hanya untuk menunjukkan dukungannya terhadap kepemimpinannya, tetapi juga untuk membuatnya bersinar lebih terang dari siapa pun di Jepang.')
    RETURNING id INTO k_1644_bersinar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '漁', 'penangkapan-ikan', 37, 8, '<radikal>tsunami</radikal> mendorong semua <radikal>ikan</radikal> lebih dekat ke daratan, sehingga memudahkan <kanji>memancing</kanji>. Tsunami dimulai di tengah lautan dan mendorong semua ikan menuju pantai tempat semua orang mencari ikan. Dengan banyaknya ikan yang semakin mendekat ke daratan, sangat mudah bagi orang untuk memancing di satu tempat dan menangkap banyak ikan.', 'Untuk mencapai tempat <kanji>memancing</kanji> terbaik Anda perlu <reading>pergi</reading> (ぎょ) <reading>mendayung</reading> (りょう) ke tengah laut. Anda pergi dengan mendayung. Untuk mendapatkan ikan dan memancing, Anda harus pergi dan mendayung ke laut.')
    RETURNING id INTO k_1645_penangkapan_ikan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '償', 'perbaikan', 37, 9, '<radical>pemimpin</radikal> memberi Anda <radikal>hadiah</radikal> sebagai <kanji>perbaikan</kanji> atas perbuatannya di masa lalu. Pemimpin ini pernah berbuat salah kepada Anda di masa lalu dan ingin menebus kesalahannya. Oleh karena itu, pemimpin memberi Anda reparasi dalam bentuk hadiah yang berkilauan.', 'Pemimpin yang memberi Anda <kanji>perbaikan</kanji> ini adalah <reading>Shou</reading>gun (しょう) Jepang. Dia berusaha menebus semua ancaman yang dia berikan kepada Anda dan beberapa hal yang Anda lihat (yang sekarang dia coba tutupi).')
    RETURNING id INTO k_1646_perbaikan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '刑', 'menghukum', 37, 10, 'Hancurkan <radical>lentera</radical> dengan <radical>pisau</radical> Anda dan Anda akan <kanji>dihukum</kanji>.', 'Aku akan <kanji>menghukum</kanji> kamu dengan mengambil <reading>ca</reading>ke (けい) kamu! Anda tidak akan pernah makan kue lagi. Bukan untuk ulang tahun, bukan untuk hari libur. Ini adalah hukumanmu.')
    RETURNING id INTO k_1647_menghukum;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '募', 'rekrut', 37, 11, '<radikal>rumah kaca</radikal> adalah <radikal>kekuatan</radikal> terbaru di kota yang Anda putuskan untuk <kanji>rekrut</kanji>. Anda mencoba merekrut semua bangunan di kota dan rumah kaca adalah yang berikutnya dalam daftar Anda. Ini hanya menambah sedikit kekuatan pada kota, namun tetap penting.', 'Setelah Anda <kanji>merekrut</kanji> rumah kaca, Anda merekrut <reading>Bo</reading>bo (ぼ) si badut untuk menjaganya untuk Anda. Bobo si badut memiliki kekuatan yang sangat besar sehingga dia bisa menjadi penjaga yang sangat baik untuk rumah kaca.')
    RETURNING id INTO k_1648_rekrut;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '執', 'gigih', 37, 12, '<radical>Kebahagiaan</radical> adalah <radical>lingkaran</radical> yang <kanji>ulet</kanji>. Dengan kata lain, kita semua berada dalam lingkaran/siklus di mana kita melakukan apa pun yang kita bisa untuk meraih kebahagiaan dan mempertahankannya sekuat tenaga.', 'Kebahagiaan itu <kanji>ulet</kanji> seperti <reading>shih tzu</reading> (しつ) dengan <reading>sepatu</reading> (しゅう). Anjing kecil itu tidak mau menyerah pada sepatunya, tidak peduli apa yang terjadi di sekitarnya.')
    RETURNING id INTO k_1649_gigih;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '塁', 'basis', 37, 13, 'Di bawah <radical>sawah</radikal>, sebuah <radikal>ledakan</radikal> mengguncang <radikal>kotoran</radikal>, memperlihatkan <kanji>dasar</kanji> yang tersembunyi. <kanji>baseball</kanji>! Saya kira sawah ini dibangun di atas lapangan baseball tua…', 'Sayangnya, berkat ledakan tersebut, <kanji>markas</kanji> berada di <reading>rui</reading>ns (るい). Gelap, berasap, dan agak terbakar. Anda mungkin tidak bisa mendapatkan ini dalam permainan regulasi.')
    RETURNING id INTO k_1650_basis;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '崩', 'hancur', 37, 14, 'Di bawah <radical>gunung</radical> ini, <radical>bulan</radical> dan <radical>bulan</radical> lainnya bertabrakan satu sama lain dan semuanya <kanji>hancur</kanji> berkeping-keping.', 'Saat gunung <kanji>runtuh</kanji> Anda melihat <reading>ho</reading>me (ほう) Anda, yang berada di puncak gunung, ikut runtuh juga.')
    RETURNING id INTO k_1651_hancur;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '患', 'menderita', 37, 15, '<radikal>tusuk</radikal> yang mengenai <radikal>jantung</radikal> telah <kanji>menyebabkan</kanji> kesehatan Anda. Anda telah terjangkit penyakit mulai dari tusuk hingga ke jantung Anda. Penderitaanmu adalah kematian. Anda sedang sekarat.', 'Karena Anda <kanji>menderita</kanji> dengan kematian, Anda mulai berhalusinasi dan hantu Jenghis <reading>Khan</reading> (かん) muncul di hadapan Anda. "Ah, aku juga terkena penyakit yang sama. Penyakit itu membunuhku, lho."')
    RETURNING id INTO k_1652_menderita;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '戻', 'kembali', 37, 16, '<radical>Pintu</radical> ini <radical>besar</radical> dan Anda perlu <kanji>mengembalikan</kanji> ke pemiliknya yang sah. Pintu ini terlalu besar dan tampak penting bukan milik seseorang. Anda perlu menemukan pemiliknya dan mengembalikannya kepada mereka.', 'Anda berada dalam <kanji>kembali</kanji> <membaca>mode</membaca> (もど). Saat Anda memasuki mode ini, Anda hanya berkonsentrasi untuk mengembalikan sesuatu. Tidak ada hal lain yang penting dalam mode ini. Anda sudah dalam mode pengembalian penuh.')
    RETURNING id INTO k_1653_kembali;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '抗', 'mengonfrontasi', 37, 17, 'Anda mengambil <radical>jari</radical> Anda dan membanting <radical>tutup</radical> pada <radical>meja</radical>. Anda membuat suara keras ini untuk <kanji>menghadapi</kanji> orang di depan Anda.', 'Anda mencoba untuk <kanji>menghadapi</kanji> Kaisar <reading>こう</reading>いち. Anda mengonfrontasinya tentang semua kanji yang dia paksa untuk Anda, dan orang lain, pelajari. "Lihat ini こういち! Aku tahu kamu bilang aku akan belajar 2000 kanji dalam waktu singkat, tapi ini terlalu efisien! Apa yang akan dilakukan orang-orang setelah selesai? Apa menurutmu mereka akan duduk diam?"')
    RETURNING id INTO k_1654_mengonfrontasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '抵', 'melawan', 37, 18, '<radical>jari</radical> Anda bergabung dengan <radical>klan</radical> Anda yang lain, menekan ke <radical>tanah</radical> untuk menyatakan bahwa Anda akan <kanji>melawan</kanji> tuan Anda. Klan Anda terdiri dari sekelompok petani, tetapi Anda tidak akan lagi menggarap tanah untuk orang lain. Anda akan menolak. Jari-jari Anda tidak akan bekerja untuk siapa pun kecuali diri Anda sendiri mulai sekarang!', 'Kalian semua <kanji>melawan</kanji> dengan jari kalian di tanah, ketika para lord muncul, dengan marah. "Kamu melawan kami dengan menyembunyikan jarimu dengan kentang di tanah?! Kamu sangat ingin jarimu menjadi kentang yang tidak berguna? Kami akan memotongnya dan mengubahnya menjadi <read>ta</reading>ter (てい) tots!"')
    RETURNING id INTO k_1655_melawan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '旬', 'di-musim', 37, 19, 'Ketika <radical>penjara</radical> menampung <radical>matahari</radical> di dalamnya, segala sesuatu akan selalu <kanji>sesuai musimnya</kanji>. Tentunya jika matahari berada dalam penjara, musim tidak bisa berubah. Ingin makan apel yang sempurna sepanjang tahun? Letakkan saja di bawah sinar matahari saat sudah matang — biasanya dalam jangka waktu <kanji>sepuluh hari</kanji>.', 'Ketika segala sesuatu <kanji>sedang musim</kanji> selama lebih dari <kanji>sepuluh hari</kanji>, orang-orang akan bertanya-tanya apa yang sedang terjadi. Kapan Natalnya? Kapan Pekan Emas? <read>Segera</read> (しゅん), katamu. Sebentar lagi, ini <read>Juni</reading> (じゅん). Yang mana pertengahan tahun, jadi sekarang semuanya segera.')
    RETURNING id INTO k_1656_di_musim;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '湾', 'teluk', 37, 20, '<radical>Tsunami</radical> menerjang daratan ini <radical>berulang kali</radical> dan lagi, membentuknya menjadi semacam bentuk <radical>busur</radical>. Atau dengan kata lain, menciptakan <kanji>jurang</kanji>.', 'Berapa banyak <kanji>jurang</kanji> yang akan tercipta? Hanya <membaca>satu</membaca> (わん).')
    RETURNING id INTO k_1657_teluk;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '爆', 'meledak', 37, 21, 'Jika Anda menggabungkan <radical>api</radikal> dengan <radikal>kekerasan</radikal>, maka <kanji>meledak</kanji>! Api, jika penuh kekerasan, pasti akan meledak. Api tidak mampu menahan semua kekerasan itu sehingga api hanya bergemuruh dan berguncang lalu akhirnya meledak. LEDAKAN!', 'Saat Anda menyaksikan api <kanji>meledak</kanji>, Anda mulai <reading>mundur</reading> (ばく) menjauh. Saya tidak menyalahkan Anda. Anda harus mundur atau Anda akan terjebak dalam ledakan dahsyat. Mundur sedikit lagi agar aman.')
    RETURNING id INTO k_1658_meledak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '弾', 'peluru', 37, 22, 'Apa yang dimaksud dengan <radical>busur</radikal>, namun bahkan lebih <radikal>sederhana</radikal>? Sebuah <kanji>peluru</kanji>. Dengan busur, kamu harus memuat anak panah dan menarik kembali talinya dan membidik, yuck. Peluru dapat ditembakkan hanya dengan menekan pelatuk.', 'Jika kamu ingin menembakkan <kanji>peluru</kanji>, kamu harus melakukannya saat <reading>fajar</reading> (だん). Dulu, cahayanya tidak cukup terang untuk menembakkan panah saat fajar, tapi Anda bisa menembakkan peluru saat fajar karena lebih mudah digunakan!')
    RETURNING id INTO k_1659_peluru;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '聴', 'mendengarkan', 37, 23, 'Ketika <radical>telinga</radical> Anda <radical>disilang</radical> dengan suara, ia akan menangkapnya seperti <radical>net</radical>, dan mengirimkannya ke <radical>hati</radical> Anda untuk diproses. Karena Anda menggunakan hati Anda untuk memproses suara ini, itu berarti Anda memberikan <kanji>dengarkan</kanji> yang tepat.', 'Anda <kanji>mendengarkan</kanji>dengan baik apa yang dikatakan seseorang. Apa yang mereka katakan kepada Anda yang begitu penting? Mereka memberitahumu tentang pertanda Ny. <reading>Chou</reading> (ちょう), yang akan menghancurkan bumi.')
    RETURNING id INTO k_1660_mendengarkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '跡', 'jejak', 37, 24, 'Saat Anda melangkah dengan <radical>kaki</radical> <radical>lagi</radical> dan lagi, Anda akan meninggalkan <kanji>jejak</kanji> di mana-mana.', 'Ternyata kamu meninggalkan <kanji>jejak</kanji> di mana-mana merupakan hal yang cukup <reading>seksi</reading> (せき) bagi banyak orang.')
    RETURNING id INTO k_1661_jejak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '遣', 'menugaskan', 37, 25, 'Di <radical>skuter</radical> ada <radical>serangga</radical> dan <radical>beruang</radical>. Beruang itu segera menginjak serangga itu, meremasnya hingga rata. "Ya Tuhan, serangganya hancur. Seseorang memanggil <kanji>pengiriman</kanji>!"', 'Keluar dari <kanji>yang dikirim</kanji>ambulans melompat <read>Ken</reading> (けん) sang samurai. "Dispatch mengirimiku! Aku di sini untuk memperbaiki serangga itu."')
    RETURNING id INTO k_1662_menugaskan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '闘', 'bertarung', 37, 26, 'Di <radical>gerbang</radical> ini Anda mencoba untuk mendapatkan <radical>kacang</radical>, namun <radical>pengukuran</radical> Anda meleset, menyebabkan <kanji>pertarungan</kanji> besar. Otoritas kacang di gerbang selalu ingin bertengkar tentang ukuran biji, dan sekarang Anda harus berjuang untuk mendapatkan biji tersebut.', 'Gerbang tempat <kanji>pertarungan</kanji> mengarah ke <reading>とう</reading>きょう. Orang-orang di Jepang membutuhkan kacang-kacangan itu untuk memenuhi kebutuhan hidup mereka, dan itulah mengapa Anda berjuang — demi mereka!')
    RETURNING id INTO k_1663_bertarung;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '陣', 'kamp-tentara', 37, 27, '<radikal>Gedung</radikal> ini penuh dengan <radikal>mobil</radikal> karena ini adalah <kanji>kamp tentara</kanji>. Mobil (dan tank serta pesawat) harus siap berangkat kapan saja seperti halnya tentara.', 'Semua orang di <kanji>kamp tentara</kanji> mengenakan <reading>jean</reading> (じん). Anda mengira tentara seharusnya mengenakan seragam, namun sepertinya saat berada di kamp mereka harus mengenakan jeans.')
    RETURNING id INTO k_1664_kamp_tentara;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '香', 'parfum', 37, 28, '<radical>Biji-bijian</radical> yang tertinggal di bawah <radical>matahari</radical> mekar dan mengeluarkan <kanji>keharuman</kanji> yang indah. Baunya segar dan lezat. Tidak ada yang lebih baik daripada aroma biji-bijian segar yang terkena sinar matahari.', 'Saat Anda mengendus <kanji>wewangian</kanji> yang indah ini, Anda akan tersesat dalam baunya. Saat Anda membuka mata lagi, Anda melihat <reading>こう</reading>いち bertani berdiri di depan Anda. Dengan... lengannya... ke atas. "Apakah kamu menyukai wewangianku? Aku telah dimodifikasi secara genetis untuk memiliki wewangian yang unik dibandingkan dengan yang lain."')
    RETURNING id INTO k_1665_parfum;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '兆', 'pertanda', 37, 29, 'Radikal <radikal>pertanda</radikal> dan kanji <kanji>pertanda</kanji> adalah sama!', 'Anda mendengarkan <kanji>omen</kanji>, di dalamnya menceritakan tentang suatu peristiwa di masa depan ketika Ny. <reading>Chou</reading> (ちょう) akan menghancurkan dunia.')
    RETURNING id INTO k_1666_pertanda;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '臨', 'lihat-ke', 37, 30, 'Anda memberikan <radical>hamba</radical> Anda sebuah <radical>senjata</radical> bersama dengan beberapa <radical>produk</radical> lainnya untuk <kanji>dilihat</kanji>. Anda tidak dapat memeriksanya sendiri karena Anda sangat sibuk. Anda mengizinkan pelayan Anda untuk melihat senjata Anda dan produk lainnya.', 'Setelah pelayanmu selesai dengan senjatamu dan produk lainnya, kamu ingin dia <kanji>melihat</kanji> o-<reading>rin</reading>g (りん) mobilmu. Ada yang salah dengan o-ringnya jadi kamu ingin pelayanmu memeriksanya juga.')
    RETURNING id INTO k_1667_lihat_ke;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '削', 'kurangi', 37, 31, '<radical>triceratops</radical> dengan <radical>bulan</radical> <radical>pisau</radical> dapat <kanji>meruntuhkan</kanji> apa pun.', 'Segala sesuatu yang <kanji>dikurangi</kanji> harus dimasukkan ke dalam <reading>karung</reading> (さく).')
    RETURNING id INTO k_1668_kurangi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '契', 'sumpah', 37, 32, 'Anda menusuk <radical>tulang rusuk</radical> Anda dengan <radical>pedang</radical> yang sangat <radical>besar</radical> untuk membuat <kanji>janji</kanji>. Anda tahu, seperti salah satu sumpah darah kuno atau semacamnya. Kamu tidak mendorong pedang terlalu jauh — lagipula kamu tidak bisa menepati janjimu jika kamu mati — tapi tetap saja… Aduh.', 'Faktanya, <kanji>janji</kanji> Anda adalah melepaskan <reading>ca</reading>ke (けい).')
    RETURNING id INTO k_1669_sumpah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '恵', 'kebaikan', 37, 33, 'Anda membawa <radical>salib</radikal> melintasi <radikal>sawah</radikal> dengan <radikal>hati</radikal> di atasnya untuk membalas <kanji>bantuan</kanji> kepada teman Anda. Hatinya perlu disucikan makanya anda salibkan dan teman anda tinggal di sawah makanya anda sedang menjalaninya. Bantuan yang Anda berikan kepada teman Anda adalah memberinya hati ini. Dia membutuhkan yang baru dan Anda menyediakannya.', 'Anda tiba di tempat teman Anda dan akhirnya dapat membalas <kanji>bantuan</kanji> yang Anda miliki kepadanya dengan memberikan hati kepadanya. "<reading>Eh</reading> (え)? Apa ini? Aku tidak memintanya!" “Eh!?!?” kamu membalas. Rupanya dia tidak menginginkan hati yang asli, dia ingin yang manis-manis. Dia menginginkan Valentine!')
    RETURNING id INTO k_1670_kebaikan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '抱', 'memeluk', 37, 34, 'Ambil <radical>jari</radical> Anda dan <radical>lingkarkan</radical> pada orang lain. Ini disebut <kanji>pelukan</kanji>. Pastikan saja Anda menyertakan semua benda yang melekat pada jari Anda, seperti tangan dan lengan Anda juga, jika tidak maka akan lebih terasa remasan, dan kami tidak ingin melakukan hal tersebut pada orang lain.', 'Siapa yang paling kamu <kanji>peluk</kanji>? <reading>da</reading>d (だ) Anda! Dia memberikan pelukan terbaik. Mereka hangat, besar, kencang, dan nyaman. Jenis pelukan yang sangat baik diberikan oleh ayah.')
    RETURNING id INTO k_1671_memeluk;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '掲', 'menampilkan', 37, 35, 'Gunakan <radical>jari</radical> Anda saat <radical>matahari</radical> menyinari sel <radical>penjara</radical> Anda dan pegang <radical>sendok</radical> Anda dalam <kanji>tampilan</kanji> penuh.', 'Alasan Anda <kanji>menampilkannya</kanji> adalah untuk mendapatkan <reading>ca</reading>ke (けい). Di penjara ini, jika kamu menunjukkan sendokmu dengan cukup cekatan, sipir akan membawakanmu kue sebagai hadiah.')
    RETURNING id INTO k_1672_menampilkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '狙', 'tujuan', 37, 36, 'Anda melihat <radical>hewan</radikal> mengenakan <radikal>topi</radikal> dan memutuskan untuk <kanji>membidik</kanji> ke arahnya. Topi atas adalah target raksasa sempurna yang Anda gunakan untuk menjatuhkan hewan ini.', 'Siap, mantap, <kanji>bidik</kanji>... tembak! Anda melempar sebatang <read>so</reading>ap (そ) ke hewan itu. Ya, sabun. Anda sedang duduk di bak mandi, mencuci dan menggosok, lalu hewan bertopi tinggi menarik perhatian Anda.')
    RETURNING id INTO k_1673_tujuan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '葬', 'pemakaman', 37, 37, 'Anda membawa <radical>bunga</radical> untuk pergi ke tempat di mana <radical>yakuza</radical> mengambil <radical>sendok</radical> dan membunuh <radical>dua puluh</radical> orang, karena sekarang ada <kanji>penguburan</kanji> yang terjadi di sana. Anda tidak mengenal orang-orang ini, tetapi Anda tetap ingin meninggalkan bunga di pemakaman mereka.', 'Setelah <kanji>penguburan</kanji> selesai, <reading>sou</reading>l (そう) dari semua orang mati akan melayang dan keluar dari tanah. "Thaannk YooOoOO~" erang mereka sambil naik ke langit.')
    RETURNING id INTO k_1674_pemakaman;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '絹', 'sutra', 37, 38, 'Masukkan <radical>benang</radikal> ke dalam <radikal>mulut</radikal> cacing saat <radikal>bulan</radikal> tidak ada dan ia akan mengeluarkan <kanji>sutra</kanji>. Itu sebabnya mereka menyebutnya ulat sutera, tahukah Anda? Namun hal ini harus dilakukan saat bulan sedang terbit, jika tidak, benang normal akan segera keluar dari ujung cacing yang lain. Bulanlah yang membuat keajaiban terjadi.', 'Mengenakan <kanji>sutra</kanji> adalah <reading>kunci</reading> (き) untuk tidak <reading>telanjang</reading> (ぬ). Pakailah!')
    RETURNING id INTO k_2384_sutra;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '串', 'tusuk-sate', 37, 39, 'Kanji <radikal>tusuk sate</radikal> dan kanji <kanji>tusuk sate</kanji> sama persis!', 'Uh oh, <kanji>tusuk sate</kanji> ini benar-benar... <reading>nyaman</reading> (くし). Ini sangat lembut dan enak sehingga Anda tidak bisa memasukkan daging atau sayuran ke dalamnya.')
    RETURNING id INTO k_8837_tusuk_sate;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '眉', 'alis', 37, 40, 'Anda memegang <radical>bendera</radical> pada <radical>tongkat</radical> di atas <radical>mata</radical> Anda untuk meniru <kanji>alis</kanji>. Anda tidak dapat menumbuhkan alis sendiri, tetapi Anda sangat menyukai alis, jadi inilah hal terbaik yang dapat Anda lakukan.', 'Di bawah <kanji>alis</kanji> palsumu ada dua lempengan <reading>me</reading>at (み). Daging membantu pertumbuhan rambut, menurut banyak pakar internet yang juga menjual daging. Anda sedang menunggu daging ini untuk menumbuhkan bulu alis, dan ketika hari indah itu tiba Anda tidak memerlukan bendera ini.')
    RETURNING id INTO k_8862_alis;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1643_melompat, 'Melompat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1644_bersinar, 'Bersinar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1645_penangkapan_ikan, 'Penangkapan ikan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1646_perbaikan, 'Perbaikan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1647_menghukum, 'Menghukum', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1648_rekrut, 'Rekrut', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1649_gigih, 'Gigih', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1649_gigih, 'Melaksanakan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1650_basis, 'Basis', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1650_basis, 'Pangkalan Bisbol', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1651_hancur, 'Hancur', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1652_menderita, 'Menderita', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1653_kembali, 'Kembali', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1654_mengonfrontasi, 'Mengonfrontasi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1655_melawan, 'Melawan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1656_di_musim, 'Di Musim', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1656_di_musim, 'Sepuluh Hari', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1657_teluk, 'Teluk', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1658_meledak, 'Meledak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1659_peluru, 'Peluru', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1660_mendengarkan, 'Mendengarkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1661_jejak, 'Jejak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1662_menugaskan, 'Menugaskan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1663_bertarung, 'Bertarung', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1664_kamp_tentara, 'Kamp Tentara', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1665_parfum, 'Parfum', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1666_pertanda, 'Pertanda', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1666_pertanda, 'Triliun', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1667_lihat_ke, 'Lihat Ke', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1668_kurangi, 'Kurangi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1669_sumpah, 'Sumpah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1670_kebaikan, 'Kebaikan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1671_memeluk, 'Memeluk', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1672_menampilkan, 'Menampilkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1673_tujuan, 'Tujuan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1674_pemakaman, 'Pemakaman', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2384_sutra, 'Sutra', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_8837_tusuk_sate, 'Tusuk sate', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_8837_tusuk_sate, 'Meludah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_8862_alis, 'Alis', true, true);

  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1643_melompat, 'ちょう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1643_melompat, 'と', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1643_melompat, 'は', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1644_bersinar, 'しょう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1645_penangkapan_ikan, 'ぎょ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1645_penangkapan_ikan, 'りょう', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1645_penangkapan_ikan, 'あさ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1646_perbaikan, 'しょう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1646_perbaikan, 'つぐな', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1647_menghukum, 'けい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1648_rekrut, 'ぼ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1648_rekrut, 'つの', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1649_gigih, 'しゅう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1649_gigih, 'しつ', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1649_gigih, 'と', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1650_basis, 'るい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1651_hancur, 'ほう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1651_hancur, 'くず', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1652_menderita, 'かん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1652_menderita, 'わずら', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1653_kembali, 'もど', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1653_kembali, 'れい', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1654_mengonfrontasi, 'こう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1654_mengonfrontasi, 'あらが', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1655_melawan, 'てい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1656_di_musim, 'しゅん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1656_di_musim, 'じゅん', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1657_teluk, 'わん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1658_meledak, 'ばく', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1658_meledak, 'は', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1659_peluru, 'だん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1659_peluru, 'ひ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1659_peluru, 'はず', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1659_peluru, 'たま', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1660_mendengarkan, 'ちょう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1660_mendengarkan, 'き', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1661_jejak, 'せき', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1661_jejak, 'あと', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1662_menugaskan, 'けん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1662_menugaskan, 'つか', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1662_menugaskan, 'や', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1663_bertarung, 'とう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1663_bertarung, 'たたか', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1664_kamp_tentara, 'じん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1665_parfum, 'こう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1665_parfum, 'きょう', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1665_parfum, 'かお', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1665_parfum, 'か', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1666_pertanda, 'ちょう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1666_pertanda, 'きざ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1667_lihat_ke, 'りん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1667_lihat_ke, 'のぞ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1668_kurangi, 'さく', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1668_kurangi, 'けず', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1669_sumpah, 'けい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1669_sumpah, 'ちぎ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1670_kebaikan, 'え', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1670_kebaikan, 'けい', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1670_kebaikan, 'めぐ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1671_memeluk, 'だ', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1671_memeluk, 'ほう', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1671_memeluk, 'かか', 'kunyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1671_memeluk, 'いだ', 'kunyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1672_menampilkan, 'けい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1672_menampilkan, 'かか', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1673_tujuan, 'そ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1673_tujuan, 'ねら', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1674_pemakaman, 'そう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1674_pemakaman, 'ほうむ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_2384_sutra, 'きぬ', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_2384_sutra, 'けん', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_8837_tusuk_sate, 'くし', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_8862_alis, 'み', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_8862_alis, 'び', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_8862_alis, 'まゆ', 'kunyomi', false, false);

  -- 3. VOCABULARIES
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '貴様', 'anda', 37, 41, 'Sebuah <kanji>berharga</kanji> <kanji>nama formal ender</kanji>. Ini seperti mengatakan "Anda yang hebat dan berharga"... atau semacamnya. Bagaimanapun, ini berarti <vocabulary>Anda</vocabulary>, tapi kedengarannya tidak semenarik itu.

貴様 dulu merupakan cara yang sopan untuk mengatakan "kamu", namun dalam bahasa Jepang modern hampir selalu merupakan penghinaan yang keras, kira-kira seperti mengatakan <vocabulary>kamu bajingan</vocabulary>. Nadanya dramatis, jadi Anda akan mendengarnya dari penjahat anime, tetapi biasanya tidak dalam percakapan nyata kecuali seseorang bercanda dan berpura-pura menjadi Vegeta dari Dragon Ball.', 'Bacaannya adalah bacaan yang Anda pelajari dengan 貴 ditambah bacaan kosakata untuk 様.', 'Anda, Kamu bajingan')
    RETURNING id INTO v_5749_anda;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '一人暮らし', 'hidup-sendirian', 37, 42, 'Jika 暮らす berarti "hidup" atau "menjalani hidup", maka menjalani hidup sebagai 一人 berarti Anda <vocabulary>hidup sendiri</vocabulary>.', 'Bacaannya adalah bacaan kosakata dari 一人 dan 暮らす, jadi sebaiknya kalian bisa membacanya sendiri. Perlu diketahui bahwa くらし berubah menjadi ぐらし karena rendaku.', 'Hidup Sendirian')
    RETURNING id INTO v_6029_hidup_sendirian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '恥知らず', 'orang-yang-tak-tahu-malu', 37, 43, '恥 adalah "aib." Jika Anda 知らず maka Anda tidak mengetahui sesuatu. Dalam hal ini, kamu tidak mengenal aib, dan orang yang tidak mengenal aib adalah <vocabulary>orang yang tidak tahu malu</vocabulary>, karena tidak peduli apa yang mempermalukannya dan apa yang tidak.', 'Bacaannya adalah 恥 dan 知る disatukan.', 'Orang yang Tak Tahu Malu')
    RETURNING id INTO v_6031_orang_yang_tak_tahu_malu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '試験地獄', 'ujian-neraka', 37, 44, '"Ujian neraka" adalah julukan yang diberikan untuk ujian yang harus Anda ikuti di Jepang sekaligus. Itu sebabnya ini adalah <vocabulary>ujian neraka</vocabulary>.', 'Ini adalah kata jukugo yang menggabungkan dua kosakata sebelumnya menjadi satu kata baru. Anda seharusnya bisa membaca ini sendiri.', 'Ujian Neraka, Ujian Neraka')
    RETURNING id INTO v_6032_ujian_neraka;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '船酔い', 'keadaan-mabuk-laut', 37, 45, 'Saat Anda <kanji>perahu</kanji> <kanji>mabuk</kanji> Anda terkena <vocabulary>mabuk laut</vocabulary>.', 'Pembacaan 船 menjadi ふな (mungkin karena Anda sakit dan tidak bisa mengeja).酔い berasal dari 酔う.', 'Keadaan mabuk laut')
    RETURNING id INTO v_6033_keadaan_mabuk_laut;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '〜鍋', 'makanan-daging-dan-sayur', 37, 46, 'Ingat arti 鍋 "<kanji>panci</kanji>"? Ini adalah versi akhirannya, jadi artinya ____<vocabulary>hotpot</vocabulary> atau ____<vocabulary>rebusan</vocabulary>. 

Biasanya 〜鍋 muncul setelah nama bahan dasar sup atau bahan utamanya, seperti 味噌鍋 (miso hotpot) atau キムチ鍋 (kimchi stew).', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji. Anda seharusnya bisa membaca ini sendiri.', 'Rebusan, Makanan daging dan sayur')
    RETURNING id INTO v_6034_makanan_daging_dan_sayur;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '払い', 'pembayaran', 37, 47, 'Jika 払う adalah "membayar" atau "menyingkirkan", maka versi kata bendanya adalah <vocabulary>pembayaran</vocabulary> atau <vocabulary>menyingkirkan</vocabulary>.

Biasanya 払い ditempel di akhir kata lain, seperti pada カード払い (pembayaran dengan kartu kredit).

Ketika menunjukkan semacam menyikat atau menyikat, itu muncul dalam kata-kata seperti 足払い (menyapu kaki lawan dalam judo) atau, lebih kiasan, せき払い (berdehem).', 'Bacaannya berasal dari 払う, jadi ketahuilah itu dan itu akan meneruskan pengetahuanmu ke yang satu ini.

Perhatikan bahwa ketika 払い ditambahkan ke akhir kata majemuk, ia menjadi ばらい.', 'Pembayaran, Menyikat')
    RETURNING id INTO v_6035_pembayaran;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '油絵', 'lukisan-cat-minyak', 37, 48, '<kanji>minyak</kanji> <kanji>lukisan</kanji> adalah <vocabulary>lukisan cat minyak</vocabulary>.', 'Kata ini menggunakan kun''yomi untuk 油 (yang Anda pelajari dengan kosakata) dan on''yomi untuk 絵 (yang Anda pelajari dengan kanji).', 'Lukisan Cat Minyak')
    RETURNING id INTO v_6036_lukisan_cat_minyak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '甘酢', 'cuka-manis', 37, 49, '<kanji>Manis</kanji> <kanji>cuka</kanji> adalah <vocabulary>cuka manis</vocabulary>. Orang Jepang menyukai hal-hal manis.', 'Bacaannya adalah 甘い ditambah 酢, digabungkan menjadi satu. Itu pembacaan kun''yomi, tapi itu mungkin karena kita menggabungkan dua kata menjadi satu. Itu juga mengubah す menjadi ず jadi, ingatlah itu.', 'Cuka Manis')
    RETURNING id INTO v_6037_cuka_manis;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '盛り上がる', 'membengkak', 37, 50, '盛り上げる adalah "menumpuk" - ini memiliki gagasan serupa, hanya saja sekarang ini lebih seperti kegembiraan atau pembengkakan. Saat kegembiraan menumpuk dalam diri Anda, Anda akan <vocabulary>menjadi bersemangat</vocabulary>. Perhatikan bagaimana 上がる ada di sini. Ini berarti sesuatu sedang terjadi pada Anda (atau sesuatu yang lain), namun Anda tidak melakukan tindakan tersebut. Ketika segala macam kegembiraan mulai terbentuk dalam diri Anda, sebenarnya Anda tidak melakukannya, itu hanya terjadi dengan sendirinya sebagai reaksi terhadap hal lain.', 'Bacaannya berasal dari 盛り dan 上がる. Biarkan kegembiraan muncul saat Anda menyadari bahwa Anda sudah mengetahui bacaannya.', 'Membengkak, Agar Bersemangat')
    RETURNING id INTO v_6038_membengkak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '遅い', 'lambat', 37, 51, 'Ini adalah kanji tunggal dengan い di akhir, artinya Anda tahu itu mungkin kata sifat. Apa bentuk kata sifat dari <kanji>lambat</kanji>? Ini <vocabulary>lambat</vocabulary> (atau, jika Anda lambat, Anda mungkin <vocabulary>terlambat</vocabulary> juga).', 'Seberapa <vocabulary>lambat</vocabulary> Anda? Kamu <membaca>oh sangat</membaca> lambat (おそ).', 'Lambat, Terlambat')
    RETURNING id INTO v_6039_lambat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '恥ずかしがる', 'menjadi-pemalu', 37, 52, '恥ずかしい adalah "memalukan." Ini adalah versi kata kerja. Apa jadinya jika seseorang merasa malu? Mereka menjadi pemalu dan pemalu. Itu sebabnya kata ini adalah <vocabulary>menjadi pemalu</vocabulary> atau <vocabulary>menjadi malu</vocabulary>.', 'Bacaannya berasal dari 恥ずかしい.', 'Menjadi Pemalu, Menjadi Malu')
    RETURNING id INTO v_6040_menjadi_pemalu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '破れる', 'untuk-robek', 37, 53, 'Jika 破る berarti "merobek" atau "merobek", maka ini adalah <vocabulary>menjadi robek</vocabulary> atau <vocabulary>menjadi rusak</vocabulary> atau <vocabulary>menjadi robek</vocabulary>.', 'Bacaannya berasal dari 破る.', 'Untuk Robek, Menjadi Rusak, Untuk Dirobek')
    RETURNING id INTO v_6041_untuk_robek;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '自己紹介', 'perkenalan-diri', 37, 54, 'Pengenalan diri (自己) (紹介) adalah <vocabulary>pengenalan diri</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Perkenalan diri')
    RETURNING id INTO v_6042_perkenalan_diri;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '紹介する', 'untuk-memperkenalkan', 37, 55, '紹介 adalah perkenalan. Jadi versi kata kerjanya adalah <vocabulary>to memperkenalkan</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri. Membantu saya memperkenalkan perkenalan kepada Anda sebelumnya.', 'Untuk Memperkenalkan')
    RETURNING id INTO v_6043_untuk_memperkenalkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '紹介状', 'surat-perkenalan', 37, 56, 'Ingat bagaimana 年賀状 merupakan kartu tahun baru? Ini adalah jenis kartu/surat lain, tapi kali ini untuk perkenalan (紹介), menjadikannya <vocabulary>surat pengantar</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri. Akan membantu untuk mengetahui 紹介 juga.', 'Surat perkenalan')
    RETURNING id INTO v_6044_surat_perkenalan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '汁物', 'sup', 37, 57, '<kanji>sup</kanji> <kanji>sesuatu</kanji> adalah apa yang Anda gunakan untuk merujuk pada <vocabulary>sup</vocabulary>.', 'Bacaannya merupakan kedua bacaan kun’yomi yang digabung menjadi satu kata. Jadi, pastikan Anda mengetahui kata 汁.', 'Sup, Sup')
    RETURNING id INTO v_6045_sup;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '味噌汁', 'sup-miso', 37, 58, 'Anda tahu bahwa 味噌 adalah "miso", dan 汁 adalah "sup". Jadi, gabungkan keduanya dan Anda akan mendapatkan <vocabulary>Sup Miso</vocabulary>.', 'Bacaannya adalah 味噌 ditambah kosakata 汁 yang disatukan.', 'sup miso')
    RETURNING id INTO v_6046_sup_miso;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '酔っ払い', 'orang-mabuk', 37, 59, 'Jika Anda <kanji>mabuk</kanji> sedemikian rupa sehingga Anda harus <kanji>membayar</kanji>di kemudian hari, bisa dikatakan Anda adalah <vocabulary>orang mabuk</vocabulary>. Saat ini Anda sudah tidak lagi mabuk, dan Anda pasti akan membayarnya… dengan mabuk di pagi hari.', 'Ini adalah kombinasi 酔う dan 払い, disatukan dengan っ kecil dan rendaku ditambahkan karena Anda mabuk.', 'Orang Mabuk')
    RETURNING id INTO v_6047_orang_mabuk;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '二日酔い', 'mabuk', 37, 60, 'Pada <kanji>hari kedua</kanji>, Anda merasakan <kanji>mabuk</kanji>en Anda dengan cara yang berbeda... dalam bentuk <vocabulary>mabuk</vocabulary>.', 'Bacaannya adalah 二日 dan 酔い yang disatukan (bacaannya berasal dari 酔う).', 'mabuk')
    RETURNING id INTO v_6048_mabuk;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '給油所', 'pompa-bensin', 37, 61, '<kanji>pengisian bahan bakar</kanji> (給油) <kanji>tempat</kanji> adalah tempat di mana Anda mendapatkan bahan bakar. Ini bisa berupa <vocabulary>pom bensin</vocabulary> atau <vocabulary>stasiun pengisian bahan bakar</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Pompa bensin, Pompa bensin, SPBU')
    RETURNING id INTO v_6049_pompa_bensin;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '跳ぶ', 'untuk-melompat', 37, 62, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>melompat</kanji> dan versi kosakata kata kerjanya adalah <vocabulary>to hop</vocabulary> atau <vocabulary>to jump</vocabulary> atau <vocabulary>to leap</vocabulary>. Pada dasarnya segala sesuatu yang mengangkat kedua kaki dari tanah melalui penggerak kaki Anda sendiri.', 'Tahu bagaimana 飛ぶ berarti "terbang"? Ini adalah ide serupa, meskipun kali ini Anda tidak akan terbang terlalu sering, karena Anda hanya melompat atau melompat. Bagaimanapun, bacaannya sama.', 'Untuk Melompat, Untuk Melompat, Untuk Melompat')
    RETURNING id INTO v_6050_untuk_melompat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '昭和', 'era-showa', 37, 63, 'Masa <kanji>bersinar</kanji> <kanji>damai</kanji> adalah masa yang dikenal sebagai <vocabulary>Era Showa</vocabulary>. Ini juga bisa merujuk pada <vocabulary>Showa Emperor</vocabulary> atau hanya <vocabulary>Showa</vocabulary> itu sendiri. Semuanya Showa ada di sini.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Era Showa, Era Shouwa, Pertunjukan, Shouwa, Kaisar Showa, Kaisar Shouwa')
    RETURNING id INTO v_6051_era_showa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '漁師', 'nelayan', 37, 64, '<kanji>memancing</kanji> <kanji>ahli</kanji> adalah <vocabulary>nelayan</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri. Bacaannya adalah bacaan りょう, karena kamu harus naik perahu dayung untuk menjadi <vocabulary>nelayan</vocabulary>.', 'Nelayan')
    RETURNING id INTO v_6052_nelayan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '漁船', 'perahu-nelayan', 37, 65, '<kanji>perahu</kanji> <kanji>perahu</kanji> adalah <vocabulary>perahu nelayan</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Perahu nelayan, Kapal Penangkap Ikan')
    RETURNING id INTO v_6053_perahu_nelayan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '漁業', 'industri-perikanan', 37, 66, '<kanji>perikanan</kanji> <kanji>Industri</kanji> adalah <vocabulary>industri perikanan</vocabulary> atau <vocabulary>perikanan</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Industri Perikanan, Perikanan')
    RETURNING id INTO v_6054_industri_perikanan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '償う', 'untuk-mengkompensasi', 37, 67, 'Membuat <kanji>perbaikan</kanji> adalah <vocabulary>untuk mengkompensasi</vocabulary> atau <vocabulary>untuk menebus</vocabulary> sesuatu. Anda akan <vocabulary>menebus</vocabulary> dosa-dosa Anda.

Kata ini terutama digunakan ketika seseorang mengambil tanggung jawab atas suatu kesalahan, perbuatan salah, atau kerugian dengan memberikan kompensasi atau memperbaiki keadaan.', 'Kata kerja ini menggunakan pembacaan kanji kun''yomi. Anda belum mempelajarinya, jadi inilah mnemonik untuk membantu Anda:

Jika kamu ingin <vocabulary>mengkompensasi</vocabulary> kesalahan yang telah kamu lakukan padaku, berikan saja padaku <reading>dua</reading> <reading>goo</reading>d <reading>na</reading>chos (つぐな). Kamu bisa melakukan segala macam hal buruk padaku, aku akan bahagia dan tetap menjadi temanmu selama kamu memberiku dua nacho yang bagus <vocabulary>untuk menebus</vocabulary> setelahnya.', 'Untuk Mengkompensasi, Untuk Menebus, Untuk Menebus')
    RETURNING id INTO v_6055_untuk_mengkompensasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '弁償', 'pengembalian', 37, 68, '<kanji>Dialek</kanji> saya telah menyinggung perasaan Anda? Saya akan melakukan <kanji>perbaikan</kanji> dengan memberi Anda <vocabulary>penggantian</vocabulary> dan beberapa <vocabulary>kompensasi</vocabulary>. Maaf dialek saya sangat buruk sehingga Anda tidak dapat memahami ucapannya. Ini uangmu kembali.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Pengembalian, Kompensasi')
    RETURNING id INTO v_6056_pengembalian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '刑務所', 'penjara', 37, 69, '<kanji>punish</kanji> <kanji>tugas</kanji> <kanji>fasilitas</kanji> adalah tempat Anda pergi untuk melakukan tugas hukuman Anda. Ini adalah <vocabulary>jail</vocabulary> atau <vocabulary>penjara</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Penjara, Penjara')
    RETURNING id INTO v_6057_penjara;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '死刑', 'hukuman-mati', 37, 70, '<kanji>mati</kanji> <kanji>hukuman</kanji>adalah <vocabulary>hukuman mati</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Hukuman Mati')
    RETURNING id INTO v_6058_hukuman_mati;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '刑事', 'detektif-polisi', 37, 71, 'Anda tahu 事 berarti "kejadian", tetapi bisa juga berarti "materi". Dan seseorang yang menangani <kanji>hukuman</kanji>masalah <kanji>adalah seseorang seperti <vocabulary>detektif polisi</vocabulary> (atau <vocabulary>detektif</vocabulary>) yang mencoba mencari dan menghukum orang jahat.

刑事 bukanlah jabatan resmi tetapi cara umum untuk merujuk pada petugas polisi yang tugasnya menyelidiki kejahatan dan menangkap penjahat. Tergantung pada konteksnya, kata ini juga bisa merujuk pada hal-hal yang termasuk dalam hukum pidana, seperti 刑事事件 (kasus pidana).', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Detektif Polisi, Detektif')
    RETURNING id INTO v_6059_detektif_polisi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '刑期', 'masa-penjara', 37, 72, '<kanji>hukuman</kanji> <kanji>periode waktu</kanji> adalah waktu di mana Anda dihukum di penjara. Ini adalah <vocabulary>hukuman penjara</vocabulary> Anda.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Masa Penjara')
    RETURNING id INTO v_6060_masa_penjara;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '刑罰', 'hukuman', 37, 73, '<kanji>hukuman</kanji> <kanji>penalti</kanji> adalah <vocabulary>hukuman</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Hukuman, Penalti')
    RETURNING id INTO v_6061_hukuman;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '終身刑', 'hukuman-seumur-hidup', 37, 74, 'Sampai <kanji>berakhir</kanji> mereka, <kanji>tubuh</kanji> seseorang sedang <kanji>dihukum</kanji>. Jika mereka dihukum sampai habis, kemungkinan besar mereka akan dikenai <vocabulary>vocabulary>life</vocabulary> alias <vocabulary>life jail</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Hukuman Seumur Hidup, Penjara Seumur Hidup')
    RETURNING id INTO v_6062_hukuman_seumur_hidup;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '募る', 'untuk-memohon-sesuatu', 37, 75, 'Kanjinya adalah <kanji>merekrut</kanji>, jadi versi kosakata kata kerja ini juga bisa berarti <vocabulary>merekrut</vocabulary>. Namun, arti utamanya adalah <vocabulary>untuk memohon sesuatu</vocabulary>, seperti posisi pekerjaan atau sumbangan.

Kata kerja ini juga bisa bersifat intransitif (ya ampun!) dan berarti <kosa kata>menjadi lebih kuat</vocabulary>, biasanya mengacu pada semacam perasaan atau emosi. Pastikan untuk memeriksa kombinasi kata umum untuk beberapa contoh penggunaan!', 'Anda ingin <vocabulary>memohon</vocabulary> <reading>dua, tidak</reading> (つの), tiga hal! Tiga!', 'Untuk Memohon Sesuatu, Untuk Merekrut, Untuk Tumbuh Lebih Kuat')
    RETURNING id INTO v_6063_untuk_memohon_sesuatu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '募金', 'penggalangan-dana', 37, 76, 'Jika Anda <kanji>merekrut</kanji> <kanji>emas</kanji> Anda mencoba mengumpulkan uang. Dengan kata lain, Anda melakukan <vocabulary>penggalangan dana</vocabulary>.

募金 awalnya hanya mengacu pada tindakan mengumpulkan <vocabulary>sumbangan</vocabulary> untuk suatu tujuan, seperti bantuan bencana, amal, atau kegiatan nirlaba. Namun saat ini, hal ini juga bisa berarti tindakan menyumbangkan uang untuk tujuan tersebut.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Penggalangan dana, Sumbangan')
    RETURNING id INTO v_6064_penggalangan_dana;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '募集', 'perekrutan', 37, 77, 'Saya ingin <kanji>merekrut</kanji> beberapa orang, jadi mari <kanji>kumpulkan</kanji> mereka dan lakukan <vocabulary>perekrutan</vocabulary> dan <vocabulary>permintaan</vocabulary> untuk mendapatkan mereka.

募集 berarti mencari peserta — baik itu pelamar kerja, sukarelawan, kontestan, atau anggota klub baru. Anda akan sering melihatnya di pengumuman resmi dan iklan pekerjaan.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Perekrutan, Permohonan')
    RETURNING id INTO v_6065_perekrutan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '応募', 'aplikasi', 37, 78, 'Saya <kanji>merespons</kanji> <kanji>perekrutan</kanji>Anda dengan <vocabulary>aplikasi</vocabulary> ini untuk mencoba dan bergabung dengan grup Anda.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Aplikasi')
    RETURNING id INTO v_6066_aplikasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '執る', 'untuk-mengambil', 37, 79, 'Anda telah mengetahui bahwa 執 berarti "<kanji>ulet</kanji>", namun bisa juga berarti "melaksanakan". Versi kata kerja di sini berarti <vocabulary>to take up</vocabulary>, seperti mengambil tugas atau tanggung jawab, atau <vocabulary>to carry out</vocabulary>. 

執る adalah kata formal yang berarti mengambil sesuatu dan melakukan suatu tindakan. Misalnya, 筆を執る berarti "mengambil pena", tetapi juga menyiratkan bahwa Anda mulai menulis sesuatu yang bermakna. Oleh karena itu, 執る juga sering digunakan ketika seseorang mengambil alih tugas penting atau mengambil sikap tegas terhadap sesuatu, seperti 指揮を執る (mengambil perintah).', 'Perhatikan bagaimana kata "mengambil" dalam kata kerja ini. Jika kamu mengambil sesuatu, kamu bisa mengatakan 取る. Kata ini dibagikan untuk dibaca.', 'Untuk Mengambil, Untuk Melaksanakan')
    RETURNING id INTO v_6067_untuk_mengambil;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '執着', 'lampiran-ke', 37, 80, 'Anda <kanji>ulet</kanji>kan <kanji>memakai</kanji> sesuatu. Anda memiliki semacam <vocabulary>keterikatan</vocabulary> padanya. Anda tidak bisa melepaskannya. Bagaimanapun, ini adalah <vocabulary>obsesi</vocabulary>, dan Anda tidak bisa berhenti <vocabulary>melekatinya</vocabulary>!

執着 biasanya mengacu pada keterikatan yang tidak sehat atau berlebihan terhadap sesuatu. Obsesi terhadap uang, terus mengingat masa lalu, atau bahkan bertahan pada keyakinan sempit Anda sendiri — ini semua adalah jenis 執着.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Lampiran Ke, Obsesi, Menempel pada')
    RETURNING id INTO v_6068_lampiran_ke;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '執筆', 'menulis', 37, 81, 'Anda telah mengetahui bahwa 執 berarti "ulet", namun bisa juga berarti "<kanji>melaksanakan</kanji>". Jadi apa yang Anda lakukan dengan <kanji>kuas tulis</kanji>? Anda melakukan <vocabulary>menulis</vocabulary>! Namun bukan sembarang tulisan — ini adalah <vocabulary>tulisan profesional</vocabulary>, jadi sebaiknya Anda melakukannya dengan benar!

執筆 adalah kata formal untuk tindakan menulis, terutama karya profesional atau penting seperti novel, kolom majalah, artikel berita, atau makalah akademis.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi, namun kedua bacaan tersebut sedikit diubah: しつ disingkat menjadi しっ, dan ひつ diubah menjadi rendaku menjadi ぴつ. Jika Anda kesulitan dengan rendaku, bayangkan <vocabulary>menulis</vocabulary> halaman demi halaman dengan sungguh-sungguh hingga <reading>pits</reading> (ぴつ) Anda mulai berbau. Mmm, cium bau musky pit itu. Itulah bau seseorang yang baru saja mencurahkan isi hati dan keringatnya ke halaman!', 'Menulis, Penulisan Profesional')
    RETURNING id INTO v_6069_menulis;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '塁', 'pangkalan-bisbol', 37, 82, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji.', 'Pangkalan Bisbol, Basis')
    RETURNING id INTO v_6070_pangkalan_bisbol;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '塁打', 'pukulan-dasar', 37, 83, '<kanji>baseball</kanji> <kanji>hit</kanji> adalah <vocabulary>baseball hit</vocabulary> atau <vocabulary>single</vocabulary> dalam istilah bisbol.二塁打 adalah double, 三塁打 adalah triple, dan homerun adalah sesuatu yang akan Anda pelajari di WaniKani suatu saat nanti jika Anda belum mempelajarinya.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda telah mempelajari cara membaca kedua kanji ini, jadi Anda seharusnya sudah bisa membaca kata ini!', 'Pukulan Dasar, Lajang')
    RETURNING id INTO v_6071_pukulan_dasar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '塁審', 'wasit-bisbol', 37, 84, '<kanji>baseball</kanji> <kanji>juri</kanji> adalah orang yang menilai sesuatu di lapangan bisbol. Ini adalah <vocabulary>wasit bisbol</vocabulary>, atau lebih sederhananya, sebuah <vocabulary>wasit</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Wasit Bisbol, Wasit')
    RETURNING id INTO v_6072_wasit_bisbol;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '崩す', 'untuk-menghancurkan', 37, 85, 'Kanjinya adalah <kanji>runtuh</kanji>, dan kata kerja ini digunakan saat Anda secara aktif membuat atau membiarkan sesuatu hancur, jadi artinya <vocabulary>meruntuhkan</vocabulary>, <vocabulary>meruntuhkan</vocabulary>, atau <vocabulary>meruntuhkan</vocabulary>. Itu transitif, jadi kaulah yang meruntuhkannya. Kamu bisa mengingat ini karena kalau kamu seenaknya merobohkan barang-barang orang, mereka mungkin akan menuntut (す).

崩す adalah saat Anda menghancurkan atau mengendurkan sesuatu yang kokoh atau tersusun dengan baik. Anda dapat menikmati istana pasir di pantai, postur tubuh Anda saat membungkuk, atau bahkan kesehatan Anda saat membiarkan diri Anda lelah dan sakit. Ada banyak cara untuk menggunakan kata rumit ini, jadi pastikan memeriksa bagian konteks untuk mengetahui contohnya.', 'Anda adalah Zeus, dan Anda memiliki kemampuan <vocabulary>untuk menghancurkan</vocabulary> atau <vocabulary>untuk merobohkan</vocabulary> segala sesuatu yang menghalangi jalan Anda. Dewa lain melihatmu melakukan ini dan berkata, "Itu <reading>coo, Zeu</reading> (くず). Keren sekali, Zeus, kamu bisa <vocabulary>menghancurkan</vocabulary> gunung."', 'Untuk Menghancurkan, Untuk Runtuh, Untuk Meruntuhkan')
    RETURNING id INTO v_6073_untuk_menghancurkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '崩壊', 'runtuh', 37, 86, 'Ketika sesuatu mulai <kanji>runtuh</kanji> dan <kanji>pecah</kanji>, pasti akan <vocabulary>runtuh</vocabulary> pada suatu saat. Ia tidak bisa bertahan di bawah tekanan.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Runtuh, Runtuh, Hancur')
    RETURNING id INTO v_6074_runtuh;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '患う', 'untuk-diderita', 37, 87, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>menderita</kanji> dan versi kosakata kata kerjanya adalah <vocabulary>to be afflicted with</vocabulary> atau <vocabulary>to derita</vocabulary>.', 'Tentunya hal terburuk yang dapat terjadi pada seseorang adalah <vocabulary>terkena</vocabulary> <reading>wazoo rat</reading> (わずら), suatu kondisi <vocabulary>yang sangat mengerikan untuk diderita</vocabulary>. Bayangkan saja, tikus merayapi wazoo Anda… Sungguh suatu penderitaan.', 'Untuk Diderita, Untuk Menderita')
    RETURNING id INTO v_6075_untuk_diderita;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '患者', 'seorang-pasien', 37, 88, '<kanji>yang menderita</kanji> <kanji>seseorang</kanji> adalah seseorang yang <vocabulary>seorang pasien</vocabulary> / <vocabulary>pasien medis</vocabulary>. Mereka terserang penyakit tertentu sehingga memerlukan perhatian medis.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi dan Anda seharusnya bisa membacanya sendiri. Ingat saja ada rendaku di kanji kedua jadi berubah menjadi じゃ.', 'Seorang Pasien, Sabar, Pasien Medis')
    RETURNING id INTO v_6076_seorang_pasien;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '急患', 'pasien-darurat', 37, 89, 'Seseorang yang <kanji>menderita</kanji> sehingga Anda harus <kanji>bergegas</kanji> dan membantu adalah <vocabulary>pasien darurat</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Pasien Darurat')
    RETURNING id INTO v_6077_pasien_darurat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '戻る', 'untuk-kembali', 37, 90, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>kembali</kanji> dan versi kosakata kata kerjanya adalah <vocabulary>to return</vocabulary> atau <vocabulary>to be return</vocabulary>. Ini adalah saat sesuatu melakukan hal ini dengan sendirinya. Anda tidak melakukan pengembalian sesuatu dalam kasus ini.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji.', 'Untuk Kembali, Untuk Dikembalikan')
    RETURNING id INTO v_6079_untuk_kembali;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '対向する', 'akan-datang', 37, 91, 'Berada di <kanji>versus</kanji> <kanji>di sana</kanji> (sisi berlawanan) berarti Anda berada di satu sana dan seseorang di sana, dan Anda saling mendekat. Jadi ini berarti <vocabulary>mendatang</vocabulary> atau <vocabulary>mendekati</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Akan Datang, Untuk Datang Menuju')
    RETURNING id INTO v_6080_akan_datang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '反抗する', 'untuk-pemberontak', 37, 92, 'Jika Anda <kanji>anti</kanji> terhadap sesuatu dan Anda <kanji>menghadapi</kanji> pemerintah mengenai hal tersebut, dalam beberapa kasus Anda akan <vocabulary>memberontak</vocabulary> melawan pemerintah... yaitu, jika Anda cukup tergila-gila dengan hal tersebut.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Untuk Pemberontak')
    RETURNING id INTO v_6081_untuk_pemberontak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '抗戦', 'perlawanan', 37, 93, 'Kami siap <kanji>menghadapi</kanji> <kanji>perang</kanji>, jika perlu. Kami akan memulai <vocabulary>perlawanan</vocabulary> terhadap rezim Anda, menghadapi Anda, dan bahkan berperang.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Perlawanan')
    RETURNING id INTO v_6082_perlawanan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '抗体', 'antibodi', 37, 94, '<kanji>Hadapi</kanji> <kanji>tubuh</kanji> Anda? Kedengarannya seperti sesuatu yang melawan tubuh... mungkin, sesuatu yang <vocabulary>antibodi</vocabulary>?', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Antibodi')
    RETURNING id INTO v_6083_antibodi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '抵抗する', 'untuk-menolak', 37, 95, '<kanji>Lawan</kanji> dan <kanji>konfrontasi</kanji> mereka yang menekan atau menyerang Anda. Ini adalah <vocabulary>menolak</vocabulary> atau <vocabulary>menahan</vocabulary>.

抵抗する berarti melawan kekuatan eksternal, baik secara fisik maupun emosional.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Untuk Menolak, Untuk menahan')
    RETURNING id INTO v_6084_untuk_menolak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '大抵', 'umumnya', 37, 96, '<kanji>besar</kanji> <kanji>menolak</kanji> adalah sesuatu yang <vocabulary>umumnya</vocabulary> dan <vocabulary>biasanya</vocabulary> lakukan... setidaknya <vocabulary>dalam banyak kasus</vocabulary>. Dia biasanya merupakan penghambat besar, yang itu.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Umumnya, Biasanya, Dalam Banyak Kasus')
    RETURNING id INTO v_6085_umumnya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '上旬', 'sepuluh-hari-pertama-setiap-bulan', 37, 97, 'Apa <kanji>di atas</kanji> <kanji>sepuluh hari</kanji> dalam sebulan? Itu adalah <vocabulary>sepuluh hari pertama setiap bulan</vocabulary>, atau bahkan hanya <vocabulary>awal bulan</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Sepuluh Hari Pertama Setiap Bulan, Awal bulan')
    RETURNING id INTO v_6086_sepuluh_hari_pertama_setiap_bulan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '下旬', 'sepuluh-hari-terakhir-dalam-bulan-ini', 37, 98, 'Ini adalah <kanji>di bawah</kanji> <kanji>sepuluh hari</kanji> dalam sebulan. Dengan kata lain, <vocabulary>sepuluh hari terakhir dalam sebulan</vocabulary>, atau bahkan hanya <vocabulary>akhir bulan</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Sepuluh Hari Terakhir Dalam Bulan Ini, Akhir Bulan')
    RETURNING id INTO v_6087_sepuluh_hari_terakhir_dalam_bulan_ini;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '中旬', 'sepuluh-hari-tengah-dalam-bulan-ini', 37, 99, '<kanji>tengah</kanji> <kanji>sepuluh hari</kanji> adalah <vocabulary>sepuluh hari tengah dalam sebulan</vocabulary>. Anda juga bisa menyebutnya sebagai <vocabulary>pertengahan bulan</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Sepuluh Hari Tengah Dalam Bulan Ini, Pertengahan Bulan')
    RETURNING id INTO v_6088_sepuluh_hari_tengah_dalam_bulan_ini;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '旬', 'di-musim', 37, 100, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan bacaan kanji yang Anda pelajari.', 'Di Musim')
    RETURNING id INTO v_6089_di_musim;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '湾', 'teluk', 37, 101, 'Kanji dan kata-katanya sama persis. Artinya, keduanya juga memiliki arti yang sama, meskipun mengandung beberapa arti serupa juga, seperti <vocabulary>bay</vocabulary> atau <vocabulary>inlet</vocabulary>.', 'Pembacaan yang sama seperti yang Anda pelajari dengan kanji.', 'Teluk, Teluk, Masuk')
    RETURNING id INTO v_6090_teluk;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '台湾', 'taiwan', 37, 102, '<kanji>mesin</kanji> <kanji>jurang</kanji> tidak seperti yang Anda harapkan. Faktanya, melihat bacaan mungkin akan menjadi yang pertama membantu, karena kata ini mewakili <vocabulary>Taiwan</vocabulary>.', 'Bacaannya adalah たい untuk 台, yang sedikit berbeda dari apa yang Anda pelajari, namun bukan akhir dunia (terutama jika Anda bisa memahami maknanya). Bagaimanapun, わん adalah apa yang Anda pelajari, jadi meskipun Anda tiba di だいわん, Anda mungkin akan menyadari bahwa ini adalah たいわん.', 'Taiwan')
    RETURNING id INTO v_6091_taiwan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '爆発', 'ledakan', 37, 103, '<kanji>Ledakan</kanji> <kanji>keberangkatan</kanji> adalah ketika sebuah ledakan berangkat dari titik tertentu, menyebabkan <vocabulary>ledakan</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Ledakan')
    RETURNING id INTO v_6092_ledakan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '爆弾', 'bom', 37, 104, '<kanji>meledak</kanji> <kanji>peluru</kanji> adalah saat ledakan yang keluar dari sesuatu seperti peluru, namun jauh lebih besar, seperti dari <vocabulary>bom</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Bom')
    RETURNING id INTO v_6093_bom;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '爆笑', 'tawa-yang-meledak', 37, 105, 'Anda <kanji>meledak</kanji> dengan <kanji>tertawa</kanji>. Wow, <vocabulary>tawa yang meledak-ledak</vocabulary> yang luar biasa.

爆笑 artinya <kosa kata>tertawa terbahak-bahak</vocabulary>, sering kali dengan suara keras dan tak terkendali. Meskipun awalnya mengacu pada tawa kelompok, kini dapat juga digunakan oleh dan untuk individu. Anda bahkan dapat menggunakannya seperti <vocabulary>LOL</vocabulary> atau LMAO dalam bahasa Inggris: tempelkan saja di akhir pesan bahasa Jepang Anda untuk menunjukkan bahwa Anda benar-benar tertawa.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Karena Anda tidak mempelajari on''yomi untuk 笑 dengan kanji, berikut adalah mnemoniknya. Siapa yang tertawa terbahak-bahak? Itu adalah senjata <read>sho</reading> (しょう)! Shogun tidak bisa berhenti tertawa.', 'Tawa yang Meledak, Tertawa terbahak-bahak, TERTAWA TERBAHAK-BAHAK')
    RETURNING id INTO v_6094_tawa_yang_meledak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '自爆', 'bom-bunuh-diri', 37, 106, 'Jika Anda <kanji>diri</kanji> <kanji>meledak</kanji>, itu berarti Anda meledakkan diri sendiri, dan mungkin membawa orang lain bersama Anda. Ini adalah <vocabulary>bom bunuh diri</vocabulary>.

自爆 umumnya mengacu pada <kosa kata>bom bunuh diri</vocabulary> dalam konteks militer atau teroris. Secara kiasan, hal ini juga bisa berarti merusak situasi diri sendiri melalui tindakan ceroboh, seperti mencetak gol bunuh diri dalam sepak bola.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Bom Bunuh Diri, Bom Bunuh Diri')
    RETURNING id INTO v_6095_bom_bunuh_diri;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '爆撃', 'pengeboman', 37, 107, '<kanji>meledak</kanji> <kanji>Serangan</kanji> adalah ketika seseorang menyerang dengan benda yang dapat meledak, seperti bom. Ini adalah <vocabulary>pengeboman</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Pengeboman')
    RETURNING id INTO v_6096_pengeboman;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '弾', 'peluru', 37, 108, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.

弾 mengacu pada <vocabulary>peluru</vocabulary> dan proyektil lainnya, termasuk <vocabulary>shell</vocabulary> artileri dan <vocabulary>pellet</vocabulary> BB.', 'Peluru dulunya berbentuk bulat, jadi mungkin itu sebabnya kosakata ini memiliki kesamaan bacaan たま dengan kata lain yang telah Anda pelajari untuk benda bulat, seperti 玉 dan 球. Ingat itu?

Jika tidak, bayangkan saja <vocabulary>peluru</vocabulary> diambil dari udara oleh <reading>Tama</reading>ra (たま), gadis bola setempat. Dia mendengar ada たま dan salah mengira itu bola, dan sekarang tangannya agak kacau. Cobalah untuk tidak mengulangi kesalahannya.', 'Peluru, Kerang, pelet')
    RETURNING id INTO v_6097_peluru;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '弾む', 'untuk-bangkit', 37, 109, 'Anehnya kanji ini berarti <kanji>peluru</kanji> tetapi versi kosakata kata kerjanya berarti <vocabulary>memantul</vocabulary>. Bayangkan saja seseorang menembakkan peluru. Apa fungsinya jika mengenai bahan yang tepat? Ini akan <vocabulary>terpental</vocabulary>.', 'Jika kamu ingin <vocabulary>memantul</vocabulary> di permukaan apa pun, kamu harus mencoba menggembungkan pakaian <reading>haz</reading>mat (はず) kamu. Baju hazmat kedap udara, jadi sebenarnya sangat mudah untuk dipompa. Anda dapat mengubah diri Anda menjadi bola pantai manusia raksasa dan menikmati memantul di sekitar tempat pembuangan sampah beracun setempat.', 'Untuk Bangkit, Menjadi Hidup')
    RETURNING id INTO v_6098_untuk_bangkit;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '弾丸', 'peluru', 37, 110, 'Dulu, <kanji>peluru</kanji> berbentuk <kanji>lingkaran</kanji>. Jadi, kata ini adalah <vocabulary>peluru</vocabulary>.', 'Bagian 弾 oke, tetapi Anda tidak pernah mempelajari cara membaca on''yomi dari 丸, yaitu がん. Saat Anda menembakkan peluru, Anda menggunakan <reading>gun</reading> (がん). Bang!', 'Peluru')
    RETURNING id INTO v_6099_peluru;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '聴力', 'kemampuan-pendengaran', 37, 111, '<kanji>mendengarkan</kanji> <kanji>kekuatan</kanji> Anda adalah <vocabulary>kemampuan pendengaran</vocabulary> Anda.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Kemampuan Pendengaran')
    RETURNING id INTO v_6100_kemampuan_pendengaran;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '聴者', 'pendengar', 37, 112, '<kanji>mendengarkan</kanji> <kanji>seseorang</kanji>, adalah seseorang yang mendengarkan. Ini adalah <vocabulary>pendengar</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.

Untuk kata ini, paling sering Anda akan mendengar kata リスナー tapi ini adalah situs belajar kanji, jadi Anda akan belajar sendiri beberapa kanji, paham?', 'Pendengar')
    RETURNING id INTO v_6101_pendengar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '跡', 'jejak', 37, 113, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Karena kata ini terdiri dari satu kanji, kemungkinan besar menggunakan bacaan kun''yomi. Anda tidak mempelajari bacaan ini, jadi inilah mnemonik untuk membantu Anda: 

Ketika sesuatu meninggalkan <vocabulary>jejak</vocabulary> atau <vocabulary>mark</vocabulary>, itu karena mereka ada di sana, tapi sekarang sudah hilang, dan Anda sudah datang <reading>後</reading> (あと) mereka pergi.', 'Jejak, Tanda')
    RETURNING id INTO v_6104_jejak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '奇跡', 'keajaiban', 37, 114, 'Beberapa <kanji>anjil</kanji> <kanji>jejak</kanji> tertinggal di sini. Kami tidak begitu mengerti apa yang terjadi, karena itu adalah <vocabulary>keajaiban</vocabulary>, tapi pastinya meninggalkan beberapa jejak aneh.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Keajaiban')
    RETURNING id INTO v_6105_keajaiban;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '証跡', 'bukti', 37, 115, '<kanji>Bukti</kanji> <kanji>jejak</kanji> adalah potongan kecil dari <vocabulary>bukti</vocabulary>, atau <vocabulary>bukti</vocabulary>, yang tertinggal. Itu adalah <vocabulary>jejak</vocabulary> yang menunjukkan bahwa sesuatu telah terjadi.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Bukti, Bukti, Jejak')
    RETURNING id INTO v_6106_bukti;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '遺跡', 'reruntuhan', 37, 116, 'Yang <kanji>tinggalkan</kanji> hanyalah <kanji>jejak</kanji> masa lalu. Ini adalah <vocabulary>reruntuhan</vocabulary> dari apa yang terjadi sebelumnya. <vocabulary>peninggalan bersejarah</vocabulary>...', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Reruntuhan, Reruntuhan Bersejarah, Tetap, Peninggalan Bersejarah')
    RETURNING id INTO v_6107_reruntuhan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '遣う', 'untuk-digunakan', 37, 117, 'Kanji berarti <kanji>pengiriman</kanji>, namun kata 遣う sendiri berarti <vocabulary>to use</vocabulary> karena pada dasarnya ini hanyalah versi yang lebih formal dari 使う. Namun, kanji menambahkan nuansa halus: ini menunjukkan bahwa Anda mengirimkan perhatian atau niat saat menggunakan sesuatu, biasanya hal-hal seperti waktu, uang, bahasa, atau perasaan.

Perhatikan bahwa Anda hampir selalu dapat menggunakan 使う dalam situasi sehari-hari. 遣う biasanya ditemukan dalam bahasa Jepang formal atau sastra, termasuk gaya penulisan atau teks kuno yang bertujuan untuk menghasilkan nada yang halus atau bermartabat.', 'Karena ini adalah versi alternatif dari 使う, maka bacaannya juga sama. Jika Anda mengingatnya, Anda pasti ingat bacaan kata ini.', 'Untuk Digunakan')
    RETURNING id INTO v_6108_untuk_digunakan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '闘う', 'untuk-berjuang', 37, 118, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>bertarung</kanji> jadi versi kata kerjanya adalah <vocabulary>bertarung</vocabulary> atau <vocabulary>berjuang</vocabulary>.

Saat Anda menggunakan 闘う alih-alih 戦う, sering kali ini berarti berjuang dengan kemauan atau emosi yang kuat — seperti melawan penyakit, kesulitan, atau membela suatu tujuan. Ini bisa digunakan untuk pertarungan fisik juga, tapi biasanya menyiratkan ada perjuangan dan semangat juang di baliknya.', 'Lingkungan Anda sedang berjuang melawan pencurian mobil. Sayangnya, mobil Anda dicuri. Jadi, Anda mengatakan: "<reading>ta-ta, ca</reading>r (たたか). Ta-ta."', 'Untuk Berjuang, Untuk Berjuang')
    RETURNING id INTO v_6109_untuk_berjuang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '戦闘', 'pertempuran', 37, 119, '<kanji>perang</kanji> <kanji>pertarungan</kanji> bukan sekedar pertarungan lama — ini adalah <vocabulary>pertempuran</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Pertempuran, Tempur')
    RETURNING id INTO v_6110_pertempuran;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '闘志', 'semangat-perjuangan', 37, 120, 'Anda memiliki <kanji>berjuang</kanji> dalam diri Anda, dan Anda memiliki <kanji>niat</kanji> untuk menang. Anda memiliki <vocabulary>semangat juang</vocabulary>. Benar? Benar?! Tunjukkan padaku semangat juangmu!

闘志 adalah kata yang relatif formal yang sering Anda lihat dalam tulisan tentang olahraga, bisnis, atau tantangan pribadi.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Semangat Perjuangan')
    RETURNING id INTO v_6111_semangat_perjuangan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '陣', 'kamp-tentara', 37, 121, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.

Dalam konteks sejarah, 陣 mengacu pada <kosakata>kamp tentara</vocabulary> atau <kosakata>formasi</vocabulary> prajurit yang digunakan di medan perang, sering kali berkaitan dengan pertempuran samurai. Kadang-kadang, itu bahkan bisa berarti <vocabulary>pertempuran</vocabulary> itu sendiri ketika Anda melihatnya dalam nama pertempuran tersebut.

Dalam bahasa Jepang modern, pengertian lama tersebut masih ada dalam olahraga, di mana 陣 dapat berarti sisi lapangan dari satu tim. Namun, yang lebih umum, 陣 digunakan sebagai sufiks untuk <vocabulary>kelompok</vocabulary> orang yang memiliki afiliasi yang sama, seperti 報道陣 (korps pers) atau 教授陣 (fakultas).', 'Bacaannya sama dengan yang Anda pelajari dengan kanji.', 'Kamp Tentara, Pembentukan, Pertempuran, Kelompok')
    RETURNING id INTO v_6112_kamp_tentara;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '陣営', 'kamp-tentara', 37, 122, '<kanji>kamp tentara</kanji> ini <kanji>dikelola</kanji> dengan sangat baik. Tentu saja, ini masih merupakan <vocabulary>kamp tentara</vocabulary>, tapi ini sangat bagus!

陣 dan 陣営 keduanya berarti "kamp tentara" bila digunakan secara harfiah, namun dalam bahasa Jepang modern 陣営 juga sering digunakan untuk merujuk pada <vocabulary>camp</vocabulary> atau <vocabulary>faction</vocabulary> yang bersaing dalam politik, bisnis, atau olahraga.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Kamp Tentara, Kamp, Fraksi')
    RETURNING id INTO v_6113_kamp_tentara;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '香水', 'parfum', 37, 123, '<kanji>wewangian</kanji> dari <kanji>air</kanji> adalah <vocabulary>parfum</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Parfum, Aroma')
    RETURNING id INTO v_6116_parfum;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '兆候', 'tanda', 37, 124, '<kanji>pertanda</kanji> untuk <kanji>iklim</kanji> suatu benda adalah <vocabulary>tanda</vocabulary> atau <vocabulary>indikasi</vocabulary> perubahan. Kalau ada pertanda, pasti ada pertanda juga.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Tanda, Indikasi')
    RETURNING id INTO v_6118_tanda;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '前兆', 'pertanda', 37, 125, '<kanji>sebelum</kanji> <kanji>pertanda</kanji> adalah sesuatu yang memberi tahu Anda tentang sesuatu yang akan terjadi sebelum hal itu terjadi. Sebenarnya ini hanyalah sebuah <vocabulary>pertanda</vocabulary> atau <vocabulary>sign</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Pertanda, Tanda')
    RETURNING id INTO v_6119_pertanda;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '臨む', 'untuk-menghadapi', 37, 126, 'Jika Anda <kanji>melihat</kanji> sesuatu, Anda sedang menghadapinya, menghadapinya secara langsung. Itu sebabnya kosakata kata kerja ini adalah <vocabulary>to face</vocabulary>, seperti dalam "menghadapi terorisme", dll.', 'Alasan Anda harus <vocabulary>(untuk) menghadapi</vocabulary> terorisme adalah karena teroris telah mengancam akan mengambil <read>hidung</reading> (のぞ) semua orang. Kita harus menghadapinya secara langsung jika kita ingin menyelamatkan hidung kita!', 'Untuk Menghadapi')
    RETURNING id INTO v_6120_untuk_menghadapi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '臨海', 'tepi-laut', 37, 127, 'Jika Anda <kanji>melihat</kanji> <kanji>laut</kanji>, Anda berada <vocabulary>tepi laut</vocabulary> atau <vocabulary>pesisir</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Tepi laut, Pesisir')
    RETURNING id INTO v_6121_tepi_laut;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '臨時', 'tidak-teratur', 37, 128, 'Anda <kanji>melihat</kanji> <kanji>waktu</kanji>, karena sesuatu <vocabulary>tidak biasa</vocabulary> sepertinya terjadi di luar jadwal normal.

臨時 menyoroti sesuatu yang tidak biasa, seperti 臨時の仕事 (pekerjaan <vocabulary>sementara</vocabulary>) atau 臨時休業 (penutupan <vocabulary>tidak terjadwal</vocabulary>). Terkadang juga bisa berarti "ekstra", namun hanya dalam arti khusus dan tidak beraturan, seperti 臨時ボーナス (bonus ekstra).', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Tidak teratur, Sementara, Sementara')
    RETURNING id INTO v_6122_tidak_teratur;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '削る', 'untuk-mengurangi-sesuatu', 37, 129, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>mengurangi</kanji> dan versi kosakata kata kerjanya adalah <vocabulary>mengurangi sesuatu</vocabulary>, <vocabulary>mencukur sesuatu</vocabulary>, dan <vocabulary>mengurangi sesuatu</vocabulary>.

Kata kerja ini bersifat transitif, artinya Anda mengurangi sesuatu, seperti sepotong kayu, atau mengurangi sesuatu, seperti pengeluaran Anda.', '<vocabulary>Untuk mengurangi sesuatu</vocabulary> atau tidak <vocabulary>untuk mengurangi sesuatu</vocabulary>. Harus mengambilnya berdasarkan <read>kasus</reading> (けず) per kasus.', 'Untuk Mengurangi Sesuatu, Untuk Mencukur Sesuatu, Untuk Mengurangi Sesuatu')
    RETURNING id INTO v_6123_untuk_mengurangi_sesuatu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '削除', 'penghapusan', 37, 130, '<kanji>Kurangi</kanji> dan <kanji>kecualikan</kanji> item ini dari daftar. Saatnya untuk menghapusnya. Itu adalah <vocabulary>penghapusan</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Penghapusan, Eliminasi, Menghapus')
    RETURNING id INTO v_6124_penghapusan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '削減', 'pengurangan', 37, 131, '<kanji>Kurangi</kanji> dan <kanji>kurangi</kanji> sesuatu. Ini adalah <vocabulary>reduction</vocabulary> atau <vocabulary>cutback</vocabulary>, karena Anda mengurangi dan menguranginya.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Pengurangan, Pengurangan')
    RETURNING id INTO v_6125_pengurangan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '契約', 'kontrak', 37, 132, 'Saya <kanji>berjanji</kanji> dan <kanji>berjanji</kanji> untuk melakukan hal itu... sehingga, saya bersedia menandatangani <vocabulary>kontrak</vocabulary> tentang hal itu.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Kontrak, Perjanjian')
    RETURNING id INTO v_6126_kontrak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '契機', 'peluang', 37, 133, 'Saya <kanji>berjanji</kanji> pada diri saya sendiri pada <kanji>mesin</kanji>. Ini adalah satu-satunya <vocabulary>kesempatan</vocabulary> saya untuk selamat dari kiamat mesin yang akan datang.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Peluang, Peluang, Titik Balik')
    RETURNING id INTO v_6127_peluang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '恵む', 'untuk-melakukan-bantuan', 37, 134, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>bantuan</kanji> dan versi kosakata kata kerjanya adalah <kosa kata>melakukan suatu bantuan</vocabulary> untuk.', 'Jika kamu ingin <vocabulary>melakukan kebaikan</vocabulary> untuk siapa pun, itu juga untuk teman baikmu <reading>meg</reading> (めぐ). Bayangkan Meg yang Anda kenal (atau kenal) dan bayangkan diri Anda melakukan kebaikan untuknya. Meg Ryan sangat bahagia kau ada dalam hidupnya.', 'Untuk Melakukan Bantuan, Untuk Memberkati, Untuk Memberi Karena Kasihan, Untuk Menyumbang Karena Amal')
    RETURNING id INTO v_6128_untuk_melakukan_bantuan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '知恵', 'kebijaksanaan', 37, 135, 'Anda <kanji>disukai</kanji>dengan <kanji>mengetahui</kanji>banyak hal. Anda memiliki <vocabulary>wisdom</vocabulary> dan <vocabulary>intelligence</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Anda tidak mempelajari on''yomi 知 saat mempelajari kanji, jadi inilah mnemonik untuk membantu Anda:

<kosakata>kebijaksanaan</vocabulary> Anda memberi tahu Anda bahwa orang harus makan <reading>chee</reading>se (ち) secara teratur. Ya, dalam kebijaksanaan Anda yang tak terbatas, Anda tahu bahwa makanan kaya kalsium seperti keju adalah kebutuhan umat manusia. Adalah tugasmu, wahai orang bijak, untuk membagikan kebijaksanaan ini kepada orang lain. Keluar! Sebarkan kebijaksanaan konsumsi keju kepada seluruh umat manusia!', 'Kebijaksanaan, Intelijen')
    RETURNING id INTO v_6129_kebijaksanaan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '抱く', 'untuk-merangkul', 37, 136, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>memeluk</kanji> dan versi kosakata kata kerjanya adalah <vocabulary>memeluk</vocabulary> atau <vocabulary>to hold</vocabulary> (dalam pelukan seseorang). Bisa juga berarti <vocabulary>memeluk</vocabulary>, khususnya dalam bentuk 抱きしめる.

Ingatlah bahwa bergantung pada konteksnya, 抱く bisa menjadi eufemisme untuk sesuatu yang lebih bersifat seksual daripada sekadar pelukan. Tidak selalu, tentu saja, tapi cukup sering, jadi berhati-hatilah dalam menggunakannya! 抱きしめる adalah pilihan yang lebih baik jika Anda berbicara tentang pelukan lama yang biasa.', 'Apa yang ingin Anda <vocabulary>rangkul</vocabulary>? Bagaimana dengan <reading>da</reading>d (だ) Anda? Atau jika dia tidak ada, mungkin seorang <reading>e</reading>-<reading>da</reading>d (いだ)? Anda tahu, seperti versi digital seorang ayah.

Kedua bacaan kata ini mempunyai nuansa yang berbeda. だく lebih berarti menggendong dan memeluk secara fisik, seperti dalam 赤ちゃんを抱く (menggendong bayi). Namun bila itu adalah sesuatu yang Anda simpan dalam hati, seperti emosi atau perasaan, gunakanlah bacaan いだく: 疑問を抱く (untuk menahan keraguan) atau 夢を抱く (memiliki mimpi), misalnya.', 'Untuk Merangkul, Untuk Memegang, Untuk memeluk')
    RETURNING id INTO v_6130_untuk_merangkul;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '掲げる', 'untuk-memasang-tanda', 37, 137, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>pameran</kanji>, jadi jika Anda melakukan tindakan memajang sesuatu, Anda akan <vocabulary>memasang</vocabulary> sesuatu, atau, terkadang lebih khusus lagi, <vocabulary>memasang tanda</vocabulary>.', 'Anda harus <vocabulary>memasang</vocabulary> tanda untuk penemuan terbaru Anda, <reading>ca</reading>r <reading>ca</reading>r (かか). Itu adalah mobil yang dibuat agar mobil lain dapat mengendarai mobil tersebut. Tak seorang pun ingin membelinya, itulah sebabnya Anda harus <vocabulary>memasang tanda</vocabulary>.', 'Untuk Memasang Tanda, Untuk Memasang')
    RETURNING id INTO v_6131_untuk_memasang_tanda;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '掲示', 'melihat', 37, 138, 'Untuk <kanji>menampilkan</kanji> dan <kanji>menunjukkan</kanji> sesuatu berarti memasang <vocabulary>pemberitahuan</vocabulary> atau <vocabulary>bulletin</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Melihat, Buletin')
    RETURNING id INTO v_6132_melihat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '掲載', 'publikasi', 37, 139, 'Untuk <kanji>menampilkan</kanji> tulisan Anda agar <kanji>dipaparkan</kanji> ke publik, tulisan tersebut perlu dimasukkan ke dalam <vocabulary>publikasi</vocabulary>. Anda mendapatkannya <vocabulary>dicetak</vocabulary>di majalah, surat kabar, dll., dan ini bisa merujuk ke publikasi Internet juga.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Publikasi, Mencetak, Pos')
    RETURNING id INTO v_6133_publikasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '狙い', 'tujuan', 37, 140, '<kanji>tujuan</kanji> Anda adalah <vocabulary>tujuan</vocabulary> Anda. Apa yang kamu tuju? Meski terlihat seperti kata sifat, ini adalah kata benda, jadi berhati-hatilah!', '<vocabulary>tujuan</vocabulary> saya adalah <reading>dekat</reading> (ねら) sampai ke sini. Faktanya, di sana.', 'Tujuan')
    RETURNING id INTO v_6134_tujuan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '狙撃', 'penembakan', 37, 141, 'Jika Anda harus <kanji>membidik</kanji> dengan <kanji>serangan</kanji> Anda, Anda mungkin <vocabulary>menembak</vocabulary> atau <vocabulary>menembak</vocabulary> sesuatu dengan proyektil (seperti pistol, atau semacamnya).', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Penembakan, Menembak')
    RETURNING id INTO v_6135_penembakan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '葬式', 'pemakaman', 37, 142, '<kanji>penguburan</kanji> <kanji>upacara</kanji> adalah <vocabulary>pemakaman</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Pemakaman')
    RETURNING id INTO v_6136_pemakaman;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '葬る', 'untuk-mengubur', 37, 143, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>penguburan</kanji>, jadi versi kata kerjanya adalah <vocabulary>to burial</vocabulary> atau <vocabulary>to inter</vocabulary>.', 'Anda mencoba <vocabulary>mengubur</vocabulary> seekor sapi <reading>seluruh moo</reading> (ほうむ) di luar rumah Anda. Anda tidak bisa mengubur sebagian saja — itu akan sangat tidak sopan. Untuk menguburkan benda ini dengan layak, Anda harus mengubur seluruh sapi moo.', 'Untuk Mengubur, Ke Inter')
    RETURNING id INTO v_6137_untuk_mengubur;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '火葬', 'kremasi', 37, 144, '<kanji>api</kanji> <kanji>penguburan</kanji> adalah saat Anda membakar tubuh. Anda menyebutnya <vocabulary>kremasi</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Kremasi')
    RETURNING id INTO v_6138_kremasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '派遣', 'menugaskan', 37, 145, '<kanji>sekte</kanji> dari <kanji>pengiriman</kanji> membantu semua tugas <vocabulary>pengiriman</vocabulary> dan <vocabulary>penyebaran</vocabulary>.

Jika digunakan bersama dengan kata 社員, kata ini juga bisa berarti <vocabulary>sementara</vocabulary>, dalam artian karyawan sementara, mungkin seseorang yang bekerja di sebuah perusahaan melalui agen temporer.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Menugaskan, Penyebaran, Sementara')
    RETURNING id INTO v_6234_menugaskan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '温床', 'persemaian', 37, 146, '<kanji>hangat</kanji> <kanji>tempat tidur</kanji> adalah "<vocabulary>sarang</vocabulary>."

Meskipun "sarang" terkadang memiliki konotasi positif dalam bahasa Inggris, 温床 umumnya mengacu pada <vocabulary>tempat berkembang biak</vocabulary> untuk sesuatu yang tidak diinginkan.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Persemaian, Tempat berkembang biak')
    RETURNING id INTO v_6581_persemaian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '絹', 'sutra', 37, 147, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Karena kata ini terdiri dari satu kanji, kemungkinan besar menggunakan bacaan kun''yomi. Anda sudah mempelajari bacaan ini dengan kanji, tapi inilah mnemonik jika Anda perlu menyegarkan ingatan Anda:

Mengenakan <vocabulary>sutra</vocabulary> adalah <reading>kunci</reading> (き) untuk tidak <reading>telanjang</reading> (ぬ). Pakailah!', 'Sutra')
    RETURNING id INTO v_8485_sutra;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '漬物', 'tsukemono', 37, 148, 'Dalam bahasa Jepang, <kanji>acar</kanji>d <kanji>benda</kanji> mengacu pada <vocabulary>acar sayuran Jepang</vocabulary>!

漬物 mengacu pada <kosa kata>acar Jepang</vocabulary> yang dibuat dengan merendam sayuran seperti mentimun, lobak daikon, atau terong dalam larutan yang mengandung bahan-bahan seperti garam, pasta dedak padi, cuka, dan kecap. Mereka dibiarkan difermentasi atau diasinkan, untuk meningkatkan rasanya. Sebaliknya, acar barat hanya disebut ピクルス.', 'Kamu sudah belajar 漬ける (mengasinkan sesuatu), jadi lepas saja る dan masukkan け ke dalam kanji. Anda masih membacanya, tetapi ia bersembunyi. Mungkin menyusut dalam proses pengawetan. Tempelkan beberapa benda (もの) di sana dan Anda akan tahu bacaannya! Tidak buruk! 

Ngomong-ngomong, terkadang Anda juga akan melihat kata ini dieja seperti 漬け物.', 'Tsukemono, Sayuran Acar Jepang, Acar Jepang')
    RETURNING id INTO v_8556_tsukemono;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '弾力', 'elastisitas', 37, 149, 'Jika kamu ingin <kanji>kekuatan</kanji> menghentikan <kanji>peluru</kanji> kamu harus memiliki jumlah <vocabulary>elastisitas</vocabulary> yang tepat. Peluru menembus benda yang kaku, tapi jika bahannya kuat dan memiliki <vocabulary>fleksibilitas</vocabulary> yang tepat, peluru akan langsung memantul!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Elastisitas, Fleksibilitas')
    RETURNING id INTO v_8689_elastisitas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '串', 'tusuk-sate', 37, 150, 'Kanji dan kata-katanya sama persis.', 'Karena kata ini terdiri dari satu kanji, kemungkinan besar menggunakan bacaan kun''yomi. Anda mempelajari bacaan ini dengan kanji, jadi Anda seharusnya sudah bisa membacanya!', 'Tusuk sate, Meludah')
    RETURNING id INTO v_8847_tusuk_sate;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '串焼き', 'tusuk-sate-panggang', 37, 151, '<kanji>Tusuk sate</kanji>yang Anda panggang (焼く) berubah menjadi <vocabulary>tusuk sate panggang</vocabulary>.', 'Ini adalah kombinasi bacaan kun''yomi yang sudah Anda pelajari. Anda seharusnya sudah bisa membacanya!', 'Tusuk Sate Panggang')
    RETURNING id INTO v_8848_tusuk_sate_panggang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '眉', 'alis', 37, 152, 'Kanji dan kata-katanya sama persis. Ini juga mencakup tempat di mana <vocabulary>alis</vocabulary> Anda berada: <vocabulary>alis</vocabulary> Anda.', 'Karena kata ini terdiri dari satu kanji, kemungkinan besar menggunakan bacaan kun''yomi. Anda belum mempelajari bacaan ini, jadi inilah mnemonik untuk membantu Anda:

Kamu menatap <kanji>alis</kanji>mu dengan penuh kasih sayang di cermin ketika ibumu masuk dan kamu terkesiap, "<reading>Ma! Kamu</reading>... (まゆ)" tapi kamu sangat terkejut hingga tidak bisa menyelesaikan kalimat, "Ma, kamu mencukur alismu?!"', 'Alis, Alis')
    RETURNING id INTO v_8872_alis;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '眉間', 'alis', 37, 153, '<kanji>alis</kanji> <kanji>interval</kanji> Anda adalah tempat di antara alis Anda yang disebut <vocabulary>alis</vocabulary>. Istilah teknis untuk celah di antara alis Anda ini adalah <vocabulary>glabella</vocabulary>, tapi saya yakin Anda tidak pernah menggunakan kata itu. Kecuali Anda... seorang dokter alis?', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi, namun menggunakan pembacaan けん yang kurang umum untuk 間. Berikut ini mnemonik untuk membantu Anda mengingat:

Anda menatap alis indah pada boneka <reading>Ken</reading> (けん) Anda, benar-benar terpesona. Anda berharap alis Anda tampak terawat sempurna seperti... le huh~', 'Alis, Glabella')
    RETURNING id INTO v_8873_alis;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '抱っこ', 'berpelukan', 37, 154, 'Anda tahu bahwa kanji berarti <kanji>memeluk</kanji> dan kata kerja 抱く berarti "memeluk". Kata benda ini mirip, tapi biasanya berarti menggendong dengan cara dipeluk, jadi <vocabulary>memegang di lengan</vocabulary> atau <vocabulary>carry</vocabulary>. Ini adalah salah satu yang sering digunakan anak-anak!', 'Anda mempelajari bacaan ini ketika Anda mempelajari kanji.', 'Berpelukan, Membawa')
    RETURNING id INTO v_9062_berpelukan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '唾液', 'air-liur', 37, 155, '<kanji>Air liur</kanji> <kanji>cairan</kanji> terdengar sangat menjijikkan, tapi sebenarnya itu hanya <kosakata>air liur</vocabulary> biasa — yang masih kotor, tapi lebih baik daripada air liur padat, bukan?

Berbeda dengan 唾 (<vocabulary>spit</vocabulary>), 唾液 adalah kata yang lebih formal untuk air liur. Jadi Anda akan lebih sering melihatnya dalam konteks medis, seperti 唾液検査 (tes air liur).', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Anda belum mempelajari bacaan on''yomi untuk 唾, jadi inilah mnemonik untuk membantu:

Hal keren yang dapat Anda lakukan dengan <vocabulary>saliva</vocabulary> adalah mengujinya untuk melihat apakah seseorang adalah <reading>da</reading>d (だ) Anda. Apa itu? Kamu sudah tahu siapa ayahmu? Nah… Sudahkah Anda menguji air liurnya?', 'Air liur, Meludah')
    RETURNING id INTO v_9401_air_liur;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '唾', 'meludah', 37, 156, 'Kanji berarti <kanji>air liur</kanji>, dan ini adalah kata dasar sehari-hari untuk itu: <vocabulary>ludah</vocabulary>.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji.', 'Meludah, Air liur')
    RETURNING id INTO v_9402_meludah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '潰れる', 'untuk-dihancurkan', 37, 157, '潰す berarti "menghancurkan", dan ini adalah versi intransitifnya: <vocabulary>dihancurkan</vocabulary> atau <vocabulary>runtuh</vocabulary>. Di sini, fokusnya adalah pada benda yang hancur atau runtuh — dan mudah-mudahan <read>jarang</reading> (れる) ada benda yang hancur atau runtuh di sekitar Anda!

潰れる digunakan untuk menggambarkan sesuatu yang menyerah karena tekanan dan menjadi terjepit atau rata. Dari arti harafiahnya yaitu sebuah benda yang hancur tak dapat dikenali lagi, sangat umum juga kita mendengarnya digunakan secara kiasan untuk hal-hal seperti bisnis sedang bangkrut, rencana gagal, atau bahkan seseorang yang terlalu kewalahan untuk bertahan.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda sudah mempelajarinya dengan kanji, jadi Anda seharusnya bisa membacanya dengan baik.', 'Untuk Dihancurkan, Runtuh, Menjadi Hancur')
    RETURNING id INTO v_9404_untuk_dihancurkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '視聴', 'menonton-dan-mendengarkan', 37, 158, 'Saat Anda <kanji>melihat</kanji> dan <kanji>mendengarkan</kanji> sesuatu, Anda sedang <vocabulary>menonton dan mendengarkan</vocabulary>.

視聴 mengacu pada tindakan mengalami sesuatu dengan mata dan telinga, biasanya dalam konteks <vocabulary>melihat</vocabulary> media seperti acara TV atau video YouTube. Anda akan melihatnya dalam frasa seperti 視聴者 (penonton) dan 視聴率 (rating pemirsa), dan Anda akan sering mendengar YouTuber Jepang mengucapkan ご視聴ありがとうございました di akhir videonya.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Menonton Dan Mendengarkan, Melihat')
    RETURNING id INTO v_9507_menonton_dan_mendengarkan;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5749_anda, 'Anda', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5749_anda, 'Kamu bajingan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6029_hidup_sendirian, 'Hidup Sendirian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6031_orang_yang_tak_tahu_malu, 'Orang yang Tak Tahu Malu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6032_ujian_neraka, 'Ujian Neraka', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6032_ujian_neraka, 'Ujian Neraka', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6033_keadaan_mabuk_laut, 'Keadaan mabuk laut', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6034_makanan_daging_dan_sayur, 'Rebusan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6034_makanan_daging_dan_sayur, 'Makanan daging dan sayur', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6035_pembayaran, 'Pembayaran', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6035_pembayaran, 'Menyikat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6036_lukisan_cat_minyak, 'Lukisan Cat Minyak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6037_cuka_manis, 'Cuka Manis', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6038_membengkak, 'Membengkak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6038_membengkak, 'Agar Bersemangat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6039_lambat, 'Lambat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6039_lambat, 'Terlambat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6040_menjadi_pemalu, 'Menjadi Pemalu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6040_menjadi_pemalu, 'Menjadi Malu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6041_untuk_robek, 'Untuk Robek', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6041_untuk_robek, 'Menjadi Rusak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6041_untuk_robek, 'Untuk Dirobek', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6042_perkenalan_diri, 'Perkenalan diri', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6043_untuk_memperkenalkan, 'Untuk Memperkenalkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6044_surat_perkenalan, 'Surat perkenalan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6045_sup, 'Sup', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6045_sup, 'Sup', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6046_sup_miso, 'sup miso', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6047_orang_mabuk, 'Orang Mabuk', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6048_mabuk, 'mabuk', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6049_pompa_bensin, 'Pompa bensin', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6049_pompa_bensin, 'Pompa bensin', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6049_pompa_bensin, 'SPBU', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6050_untuk_melompat, 'Untuk Melompat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6050_untuk_melompat, 'Untuk Melompat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6050_untuk_melompat, 'Untuk Melompat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6051_era_showa, 'Era Showa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6051_era_showa, 'Era Shouwa', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6051_era_showa, 'Pertunjukan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6051_era_showa, 'Shouwa', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6051_era_showa, 'Kaisar Showa', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6051_era_showa, 'Kaisar Shouwa', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6052_nelayan, 'Nelayan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6053_perahu_nelayan, 'Perahu nelayan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6053_perahu_nelayan, 'Kapal Penangkap Ikan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6054_industri_perikanan, 'Industri Perikanan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6054_industri_perikanan, 'Perikanan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6055_untuk_mengkompensasi, 'Untuk Mengkompensasi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6055_untuk_mengkompensasi, 'Untuk Menebus', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6055_untuk_mengkompensasi, 'Untuk Menebus', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6056_pengembalian, 'Pengembalian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6056_pengembalian, 'Kompensasi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6057_penjara, 'Penjara', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6057_penjara, 'Penjara', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6058_hukuman_mati, 'Hukuman Mati', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6059_detektif_polisi, 'Detektif Polisi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6059_detektif_polisi, 'Detektif', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6060_masa_penjara, 'Masa Penjara', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6061_hukuman, 'Hukuman', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6061_hukuman, 'Penalti', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6062_hukuman_seumur_hidup, 'Hukuman Seumur Hidup', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6062_hukuman_seumur_hidup, 'Penjara Seumur Hidup', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6063_untuk_memohon_sesuatu, 'Untuk Memohon Sesuatu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6063_untuk_memohon_sesuatu, 'Untuk Merekrut', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6063_untuk_memohon_sesuatu, 'Untuk Tumbuh Lebih Kuat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6064_penggalangan_dana, 'Penggalangan dana', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6064_penggalangan_dana, 'Sumbangan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6065_perekrutan, 'Perekrutan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6065_perekrutan, 'Permohonan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6066_aplikasi, 'Aplikasi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6067_untuk_mengambil, 'Untuk Mengambil', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6067_untuk_mengambil, 'Untuk Melaksanakan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6068_lampiran_ke, 'Lampiran Ke', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6068_lampiran_ke, 'Obsesi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6068_lampiran_ke, 'Menempel pada', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6069_menulis, 'Menulis', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6069_menulis, 'Penulisan Profesional', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6070_pangkalan_bisbol, 'Pangkalan Bisbol', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6070_pangkalan_bisbol, 'Basis', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6071_pukulan_dasar, 'Pukulan Dasar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6071_pukulan_dasar, 'Lajang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6072_wasit_bisbol, 'Wasit Bisbol', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6072_wasit_bisbol, 'Wasit', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6073_untuk_menghancurkan, 'Untuk Menghancurkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6073_untuk_menghancurkan, 'Untuk Runtuh', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6073_untuk_menghancurkan, 'Untuk Meruntuhkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6074_runtuh, 'Runtuh', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6074_runtuh, 'Runtuh', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6074_runtuh, 'Hancur', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6075_untuk_diderita, 'Untuk Diderita', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6075_untuk_diderita, 'Untuk Menderita', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6076_seorang_pasien, 'Seorang Pasien', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6076_seorang_pasien, 'Sabar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6076_seorang_pasien, 'Pasien Medis', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6077_pasien_darurat, 'Pasien Darurat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6079_untuk_kembali, 'Untuk Kembali', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6079_untuk_kembali, 'Untuk Dikembalikan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6080_akan_datang, 'Akan Datang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6080_akan_datang, 'Untuk Datang Menuju', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6081_untuk_pemberontak, 'Untuk Pemberontak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6082_perlawanan, 'Perlawanan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6083_antibodi, 'Antibodi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6084_untuk_menolak, 'Untuk Menolak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6084_untuk_menolak, 'Untuk menahan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6085_umumnya, 'Umumnya', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6085_umumnya, 'Biasanya', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6085_umumnya, 'Dalam Banyak Kasus', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6086_sepuluh_hari_pertama_setiap_bulan, 'Sepuluh Hari Pertama Setiap Bulan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6086_sepuluh_hari_pertama_setiap_bulan, 'Awal bulan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6087_sepuluh_hari_terakhir_dalam_bulan_ini, 'Sepuluh Hari Terakhir Dalam Bulan Ini', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6087_sepuluh_hari_terakhir_dalam_bulan_ini, 'Akhir Bulan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6088_sepuluh_hari_tengah_dalam_bulan_ini, 'Sepuluh Hari Tengah Dalam Bulan Ini', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6088_sepuluh_hari_tengah_dalam_bulan_ini, 'Pertengahan Bulan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6089_di_musim, 'Di Musim', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6090_teluk, 'Teluk', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6090_teluk, 'Teluk', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6090_teluk, 'Masuk', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6091_taiwan, 'Taiwan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6092_ledakan, 'Ledakan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6093_bom, 'Bom', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6094_tawa_yang_meledak, 'Tawa yang Meledak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6094_tawa_yang_meledak, 'Tertawa terbahak-bahak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6094_tawa_yang_meledak, 'TERTAWA TERBAHAK-BAHAK', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6095_bom_bunuh_diri, 'Bom Bunuh Diri', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6095_bom_bunuh_diri, 'Bom Bunuh Diri', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6096_pengeboman, 'Pengeboman', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6097_peluru, 'Peluru', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6097_peluru, 'Kerang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6097_peluru, 'pelet', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6098_untuk_bangkit, 'Untuk Bangkit', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6098_untuk_bangkit, 'Menjadi Hidup', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6099_peluru, 'Peluru', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6100_kemampuan_pendengaran, 'Kemampuan Pendengaran', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6101_pendengar, 'Pendengar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6104_jejak, 'Jejak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6104_jejak, 'Tanda', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6105_keajaiban, 'Keajaiban', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6106_bukti, 'Bukti', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6106_bukti, 'Bukti', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6106_bukti, 'Jejak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6107_reruntuhan, 'Reruntuhan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6107_reruntuhan, 'Reruntuhan Bersejarah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6107_reruntuhan, 'Tetap', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6107_reruntuhan, 'Peninggalan Bersejarah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6108_untuk_digunakan, 'Untuk Digunakan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6109_untuk_berjuang, 'Untuk Berjuang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6109_untuk_berjuang, 'Untuk Berjuang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6110_pertempuran, 'Pertempuran', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6110_pertempuran, 'Tempur', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6111_semangat_perjuangan, 'Semangat Perjuangan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6112_kamp_tentara, 'Kamp Tentara', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6112_kamp_tentara, 'Pembentukan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6112_kamp_tentara, 'Pertempuran', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6112_kamp_tentara, 'Kelompok', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6113_kamp_tentara, 'Kamp Tentara', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6113_kamp_tentara, 'Kamp', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6113_kamp_tentara, 'Fraksi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6116_parfum, 'Parfum', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6116_parfum, 'Aroma', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6118_tanda, 'Tanda', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6118_tanda, 'Indikasi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6119_pertanda, 'Pertanda', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6119_pertanda, 'Tanda', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6120_untuk_menghadapi, 'Untuk Menghadapi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6121_tepi_laut, 'Tepi laut', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6121_tepi_laut, 'Pesisir', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6122_tidak_teratur, 'Tidak teratur', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6122_tidak_teratur, 'Sementara', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6122_tidak_teratur, 'Sementara', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6123_untuk_mengurangi_sesuatu, 'Untuk Mengurangi Sesuatu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6123_untuk_mengurangi_sesuatu, 'Untuk Mencukur Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6123_untuk_mengurangi_sesuatu, 'Untuk Mengurangi Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6124_penghapusan, 'Penghapusan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6124_penghapusan, 'Eliminasi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6124_penghapusan, 'Menghapus', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6125_pengurangan, 'Pengurangan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6125_pengurangan, 'Pengurangan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6126_kontrak, 'Kontrak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6126_kontrak, 'Perjanjian', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6127_peluang, 'Peluang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6127_peluang, 'Peluang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6127_peluang, 'Titik Balik', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6128_untuk_melakukan_bantuan, 'Untuk Melakukan Bantuan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6128_untuk_melakukan_bantuan, 'Untuk Memberkati', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6128_untuk_melakukan_bantuan, 'Untuk Memberi Karena Kasihan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6128_untuk_melakukan_bantuan, 'Untuk Menyumbang Karena Amal', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6129_kebijaksanaan, 'Kebijaksanaan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6129_kebijaksanaan, 'Intelijen', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6130_untuk_merangkul, 'Untuk Merangkul', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6130_untuk_merangkul, 'Untuk Memegang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6130_untuk_merangkul, 'Untuk memeluk', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6131_untuk_memasang_tanda, 'Untuk Memasang Tanda', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6131_untuk_memasang_tanda, 'Untuk Memasang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6132_melihat, 'Melihat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6132_melihat, 'Buletin', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6133_publikasi, 'Publikasi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6133_publikasi, 'Mencetak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6133_publikasi, 'Pos', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6134_tujuan, 'Tujuan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6135_penembakan, 'Penembakan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6135_penembakan, 'Menembak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6136_pemakaman, 'Pemakaman', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6137_untuk_mengubur, 'Untuk Mengubur', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6137_untuk_mengubur, 'Ke Inter', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6138_kremasi, 'Kremasi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6234_menugaskan, 'Menugaskan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6234_menugaskan, 'Penyebaran', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6234_menugaskan, 'Sementara', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6581_persemaian, 'Persemaian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6581_persemaian, 'Tempat berkembang biak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8485_sutra, 'Sutra', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8556_tsukemono, 'Tsukemono', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8556_tsukemono, 'Sayuran Acar Jepang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8556_tsukemono, 'Acar Jepang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8689_elastisitas, 'Elastisitas', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8689_elastisitas, 'Fleksibilitas', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8847_tusuk_sate, 'Tusuk sate', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8847_tusuk_sate, 'Meludah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8848_tusuk_sate_panggang, 'Tusuk Sate Panggang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8872_alis, 'Alis', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8872_alis, 'Alis', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8873_alis, 'Alis', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8873_alis, 'Glabella', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9062_berpelukan, 'Berpelukan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9062_berpelukan, 'Membawa', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9401_air_liur, 'Air liur', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9401_air_liur, 'Meludah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9402_meludah, 'Meludah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9402_meludah, 'Air liur', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9404_untuk_dihancurkan, 'Untuk Dihancurkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9404_untuk_dihancurkan, 'Runtuh', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9404_untuk_dihancurkan, 'Menjadi Hancur', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9507_menonton_dan_mendengarkan, 'Menonton Dan Mendengarkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9507_menonton_dan_mendengarkan, 'Melihat', false, true);

  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5749_anda, 'きさま', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6029_hidup_sendirian, 'ひとりぐらし', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6031_orang_yang_tak_tahu_malu, 'はじしらず', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6032_ujian_neraka, 'しけんじごく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6033_keadaan_mabuk_laut, 'ふなよい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6034_makanan_daging_dan_sayur, 'なべ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6035_pembayaran, 'はらい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6036_lukisan_cat_minyak, 'あぶらえ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6037_cuka_manis, 'あまず', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6038_membengkak, 'もりあがる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6039_lambat, 'おそい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6040_menjadi_pemalu, 'はずかしがる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6041_untuk_robek, 'やぶれる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6042_perkenalan_diri, 'じこしょうかい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6043_untuk_memperkenalkan, 'しょうかいする', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6044_surat_perkenalan, 'しょうかいじょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6045_sup, 'しるもの', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6046_sup_miso, 'みそしる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6047_orang_mabuk, 'よっぱらい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6048_mabuk, 'ふつかよい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6049_pompa_bensin, 'きゅうゆじょ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6049_pompa_bensin, 'きゅうゆしょ', NULL, false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6050_untuk_melompat, 'とぶ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6051_era_showa, 'しょうわ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6052_nelayan, 'りょうし', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6053_perahu_nelayan, 'ぎょせん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6054_industri_perikanan, 'ぎょぎょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6055_untuk_mengkompensasi, 'つぐなう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6056_pengembalian, 'べんしょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6057_penjara, 'けいむしょ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6058_hukuman_mati, 'しけい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6059_detektif_polisi, 'けいじ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6060_masa_penjara, 'けいき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6061_hukuman, 'けいばつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6062_hukuman_seumur_hidup, 'しゅうしんけい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6063_untuk_memohon_sesuatu, 'つのる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6064_penggalangan_dana, 'ぼきん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6065_perekrutan, 'ぼしゅう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6066_aplikasi, 'おうぼ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6067_untuk_mengambil, 'とる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6068_lampiran_ke, 'しゅうちゃく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6069_menulis, 'しっぴつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6070_pangkalan_bisbol, 'るい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6071_pukulan_dasar, 'るいだ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6072_wasit_bisbol, 'るいしん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6073_untuk_menghancurkan, 'くずす', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6074_runtuh, 'ほうかい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6075_untuk_diderita, 'わずらう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6076_seorang_pasien, 'かんじゃ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6077_pasien_darurat, 'きゅうかん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6079_untuk_kembali, 'もどる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6080_akan_datang, 'たいこうする', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6081_untuk_pemberontak, 'はんこうする', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6082_perlawanan, 'こうせん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6083_antibodi, 'こうたい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6084_untuk_menolak, 'ていこうする', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6085_umumnya, 'たいてい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6086_sepuluh_hari_pertama_setiap_bulan, 'じょうじゅん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6087_sepuluh_hari_terakhir_dalam_bulan_ini, 'げじゅん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6088_sepuluh_hari_tengah_dalam_bulan_ini, 'ちゅうじゅん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6089_di_musim, 'しゅん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6090_teluk, 'わん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6091_taiwan, 'たいわん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6092_ledakan, 'ばくはつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6093_bom, 'ばくだん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6094_tawa_yang_meledak, 'ばくしょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6095_bom_bunuh_diri, 'じばく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6096_pengeboman, 'ばくげき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6097_peluru, 'たま', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6098_untuk_bangkit, 'はずむ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6099_peluru, 'だんがん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6100_kemampuan_pendengaran, 'ちょうりょく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6101_pendengar, 'ちょうしゃ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6104_jejak, 'あと', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6105_keajaiban, 'きせき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6106_bukti, 'しょうせき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6107_reruntuhan, 'いせき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6108_untuk_digunakan, 'つかう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6109_untuk_berjuang, 'たたかう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6110_pertempuran, 'せんとう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6111_semangat_perjuangan, 'とうし', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6112_kamp_tentara, 'じん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6113_kamp_tentara, 'じんえい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6116_parfum, 'こうすい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6118_tanda, 'ちょうこう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6119_pertanda, 'ぜんちょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6120_untuk_menghadapi, 'のぞむ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6121_tepi_laut, 'りんかい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6122_tidak_teratur, 'りんじ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6123_untuk_mengurangi_sesuatu, 'けずる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6124_penghapusan, 'さくじょ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6125_pengurangan, 'さくげん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6126_kontrak, 'けいやく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6127_peluang, 'けいき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6128_untuk_melakukan_bantuan, 'めぐむ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6129_kebijaksanaan, 'ちえ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6130_untuk_merangkul, 'だく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6130_untuk_merangkul, 'いだく', NULL, false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6131_untuk_memasang_tanda, 'かかげる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6132_melihat, 'けいじ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6133_publikasi, 'けいさい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6134_tujuan, 'ねらい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6135_penembakan, 'そげき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6136_pemakaman, 'そうしき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6137_untuk_mengubur, 'ほうむる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6138_kremasi, 'かそう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6234_menugaskan, 'はけん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6581_persemaian, 'おんしょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8485_sutra, 'きぬ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8556_tsukemono, 'つけもの', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8689_elastisitas, 'だんりょく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8847_tusuk_sate, 'くし', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8848_tusuk_sate_panggang, 'くしやき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8872_alis, 'まゆ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8873_alis, 'みけん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9062_berpelukan, 'だっこ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9401_air_liur, 'だえき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9402_meludah, 'つば', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9404_untuk_dihancurkan, 'つぶれる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9507_menonton_dan_mendengarkan, 'しちょう', NULL, true, true);

  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5749_anda, 'おい、貴様はだまっていろ！', 'Hei, tutup mulutmu!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5749_anda, 'なぬっ、なぜ貴様がここにいる！？', 'Apa!? Kenapa <em>kamu</em> ada di sini!?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5749_anda, 'いいだろう、貴様の実力を見せてもらおうか。', 'Baiklah, mari kita lihat apa yang bisa kamu lakukan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5749_anda, '貴様がうるさかったせいで、昨日全然寝れなかったじゃねぇか。', 'Aku tidak bisa tidur sekejap pun karena KAMU berisik sekali.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6029_hidup_sendirian, '一人暮らしをしているので、冬時間が始まった時に、時計を一時間遅らせることを忘れてしまいました。', 'Saya tinggal sendirian dan saya lupa menyetel jam saya kembali ke satu jam ketika musim dingin dimulai.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6031_orang_yang_tak_tahu_malu, 'あの俺の兄貴は恥知らずの嘘つきだ。何の事だかサッパリ分からないなんて言ってたくせに、俺のベーコンを平らげたのはアイツだったんだよ。', 'Adikku adalah pembohong yang tidak tahu malu. Dia bilang padaku dia tidak tahu apa yang terjadi, tapi dialah yang memakan semua dagingku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6032_ujian_neraka, '試験地獄に苦しむ日本の学生にとっては、電車で勉強するのは当たり前のことです。', 'Belajar di kereta adalah hal biasa bagi pelajar Jepang yang menderita ujian neraka.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6033_keadaan_mabuk_laut, 'この薬で船酔いを克服しました。', 'Saya mengatasi mabuk laut saya dengan obat ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6034_makanan_daging_dan_sayur, '彼女が彼氏にキムチ鍋を作らせた。', 'Dia menyuruh pacarnya memasak hotpot kimchi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6034_makanan_daging_dan_sayur, '豆乳鍋を食べてみたことはありますか？', 'Pernahkah Anda mencoba hotpot susu kedelai?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6035_pembayaran, '現金払いにしていただけるなら、5パーセント引きにさせていただきます。', 'Kami menawarkan diskon 5% jika Anda membayar dengan uang tunai.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6035_pembayaran, '漢字は止め、跳ね、払いに注意して書きましょう。', 'Karakter kanji sebaiknya ditulis dengan memperhatikan guratan stop, brush-up, dan brushing-off.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6035_pembayaran, '保険料は月払いよりも年払いの方がお得なの、知ってた？', 'Tahukah Anda bahwa membayar premi asuransi setiap tahunnya lebih hemat dibandingkan membayar bulanan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6036_lukisan_cat_minyak, 'この油絵はフリマで千五百円で買ったんですよ。', 'Saya membeli lukisan cat minyak ini seharga 1500 yen di pasar loak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6036_lukisan_cat_minyak, '祖母は油絵を集めていた。', 'Nenek saya biasa mengoleksi lukisan cat minyak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6036_lukisan_cat_minyak, '油絵用の絵の具で有名なブランドは？', 'Merek cat minyak apa yang paling terkenal?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6037_cuka_manis, 'この間、給食の時に生徒が何故か机の中から甘酢の瓶を取り出したのよ。', 'Saat makan siang beberapa hari yang lalu, entah kenapa salah satu siswa mengeluarkan sebotol cuka manis dari mejanya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6038_membengkak, '子どもっていうのは、どんなささいなことでも手当たり次第に盛り上がることができるのよね。', 'Anak-anak dapat mengambil hal-hal yang paling biasa dan acak dan menjadi sangat bersemangat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6039_lambat, '私のパソコンはハードディスクの容量が無くなってきているので、動作がすごく遅いです。', 'Komputer saya sangat lambat karena kehabisan ruang hard drive.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6040_menjadi_pemalu, 'ストリッパーになると自分で決断したにも関わらず、彼女はまだ人前で裸で踊ることを恥ずかしがっているんだよ。', 'Meski bertekad menjadi penari telanjang, ia masih malu menari telanjang di depan umum.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6041_untuk_robek, 'ズボンのお尻の部分がいつも最初に破れるんだけど、どうしてだろう。', 'Mengapa celana saya selalu mulai aus di bagian bokong terlebih dahulu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6042_perkenalan_diri, '自己紹介では、いつもすぐ言うことがなくなっちゃうんだよね。', 'Setiap kali saya memperkenalkan diri, saya segera kehabisan hal untuk dikatakan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6043_untuk_memperkenalkan, 'お前にどの娘を紹介するかを選ぶのは難しいよ。', 'Sulit untuk memilih gadis mana yang akan diperkenalkan kepada Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6044_surat_perkenalan, 'この病院で予約をするには、お医者さんからの紹介状が要ります。', 'Anda memerlukan surat rujukan dari dokter untuk membuat janji di rumah sakit ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6045_sup, 'あいつ、あのウェイトレスさんに三回もこのレストランに汁物はないのかって聞きやがったんだぜ。ウェイトレスさんその度にありませんって言ってさ、困惑してたよ。', 'Dia bertanya kepada pelayan tiga kali apakah ada sup di restoran dan dia menjawab tidak setiap kali. Dia bingung.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6046_sup_miso, '「明日までに、この味噌汁を飲んでしまわなければならないよ。」「じゃあ、さっさと片付けちまおうぜ。」', '“Kita harus menyelesaikan makan sup miso ini besok.” "Oke, ayo kita selesaikan."');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6047_orang_mabuk, '昨日の夜酔っ払いに絡まれた時、心臓がドキドキしました。', 'Jantungku berdebar-debar saat aku diganggu oleh seorang pemabuk tadi malam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6048_mabuk, '二日酔いだし、足もつるし今日は最悪だよ。', 'Saya pusing dan kaki saya juga kram. Hari ini adalah yang terburuk.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6049_pompa_bensin, 'この給油所ではどのくらい働いているんですか？', 'Berapa lama Anda bekerja di SPBU ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6050_untuk_melompat, '彼女は完璧なトリプルアクセルを跳んだのに、スコアはあまり伸びなかった。', 'Meskipun dia mendapatkan triple axel yang sempurna, skornya tidak naik banyak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6051_era_showa, '昭和何年生まれですか。', 'Di Showa tahun berapa kamu dilahirkan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6052_nelayan, '私はその漁師を知っていますよ。私の義理の兄ですから。', 'Saya mengenal nelayan itu karena dia adalah kakak ipar saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6053_perahu_nelayan, '昨夜漁船を盗まれました。', 'Perahu nelayan saya dicuri tadi malam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6054_industri_perikanan, 'ここは小さな漁村で、ここに住むほとんどの人は漁業に従事しています。', 'Ini adalah desa nelayan kecil dan sebagian besar orang yang tinggal di sini bekerja sebagai nelayan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6055_untuk_mengkompensasi, '過去の過ちを償うことに、疲れちゃったんだよ。', 'Aku sangat lelah menebus kesalahan masa lalu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6055_untuk_mengkompensasi, 'たとえあなたが死をもって罪を償っても、問題は解決しないでしょう。', 'Bahkan jika kamu menebus dosa-dosamu dengan kematianmu sendiri, itu tidak akan menyelesaikan masalah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6055_untuk_mengkompensasi, '愛情不足は現金や商品券で償えるものではありません。', 'Kurangnya cinta tidak dapat dikompensasi dengan uang tunai atau sertifikat hadiah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6056_pengembalian, 'あなた、私が貸したシャツにケチャップこぼしましたよね？弁償してください。', 'Kamu menumpahkan saus tomat ke baju yang kupinjamkan padamu, bukan? Tolong berikan kompensasi kepada saya untuk itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6057_penjara, 'この刑務所は今満員なので、キャンセル待ちとさせて頂きますね。', 'Penjara ini sedang penuh saat ini, jadi kami akan memasukkan Anda ke dalam daftar tunggu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6058_hukuman_mati, '死刑執行は五時間も遅れました。', 'Eksekusinya sempat tertunda selama lima jam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6059_detektif_polisi, 'その刑事は俺の彼女の腕を突然掴んで、彼女にキスをしたんだ。だから、俺はそいつを殴りつけてやったんだけど、そしたら逮捕されたんだよ。そんなの不公平だよ。', 'Tanpa peringatan petugas itu meraih lengan pacar saya dan menciumnya. Jadi saya memukulnya dan dia menangkap saya. Ini tidak adil.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6060_masa_penjara, 'その囚人は、十五年間の刑期を務めた後で釈放されたが、行く当てがなかった。', 'Terpidana dibebaskan setelah menjalani hukuman penjara lima belas tahun, tapi dia tidak punya tempat tujuan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6061_hukuman, '犯罪を根絶するには、火あぶりの刑みたいな残酷な刑罰を全部復活させるべきだと思うね。', 'Untuk memberantas kejahatan, saya pikir kita harus menerapkan kembali semua hukuman brutal, seperti membakar orang di tiang pancang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6062_hukuman_seumur_hidup, '終身刑を言い渡されたのは初めてです。', 'Ini pertama kalinya saya dijatuhi hukuman seumur hidup.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6063_untuk_memohon_sesuatu, '妻への不信感は募るばかりです。', 'Ketidakpercayaan saya terhadap istri saya semakin kuat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6063_untuk_memohon_sesuatu, '今、ボランティアを募ってるらしいよ。', 'Mereka tampaknya sedang merekrut sukarelawan sekarang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6063_untuk_memohon_sesuatu, 'みんなで募金を募りましょう。', 'Mari kita semua mengajukan permohonan pendanaan bersama-sama!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6064_penggalangan_dana, '一万円札を崩してもらうことはできますか？もしそれができるなら、千円札を募金します。', 'Bisakah kamu memecahkan uang sepuluh ribu yen? Jika Anda bisa, saya akan menyumbangkan seribu yen untuk penggalangan dana Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6065_perekrutan, 'トーフグはまだブロガーを募集中ですよ。', 'Tofugu masih merekrut blogger.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6066_aplikasi, '応募用紙は裁判所でもらえますよ。', 'Anda bisa mendapatkan formulir permohonan di gedung pengadilan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6067_untuk_mengambil, 'あなたにこのプロジェクトの指揮を執ってもらいたいんです。', 'Kami ingin Anda mengarahkan proyek ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6068_lampiran_ke, '異常なほどお金に執着する男の小説を書いてみたいんだよね。', 'Saya ingin menulis novel tentang seorang pria yang memiliki obsesi abnormal terhadap uang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6069_menulis, '最後に短編小説を執筆したのはいつですか？', 'Kapan terakhir kali Anda menulis cerita pendek?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6070_pangkalan_bisbol, '彼が塁を踏んだのかどうか、よく見えなかった。', 'Saya tidak bisa melihat apakah dia menginjak pangkalan atau tidak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6071_pukulan_dasar, '彼が塁打を打つのは久しぶりだね。いつもはホームランだからな。', 'Sudah lama sekali sejak dia melakukan serangan dasar. Dia selalu melakukan homerun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6072_wasit_bisbol, 'あの一塁の塁審、試合中に屁をこきまくってたぜ。', 'Wasit di base pertama terus kentut selama pertandingan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6073_untuk_menghancurkan, '彼は体調を崩して、会社を休んだ。', 'Dia jatuh sakit dan mengambil cuti sehari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6073_untuk_menghancurkan, '階段でバランスを崩して転びそうになった。', 'Saya kehilangan keseimbangan di tangga dan hampir terjatuh.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6073_untuk_menghancurkan, 'ビーチとかで砂の山に木をさして、その木が倒れるまで少しずつ山を崩していく遊びって、名前あるのかな？', 'Adakah sebutan untuk permainan yang menancapkan tongkat ke gundukan pasir di pinggir pantai, lalu bergantian mengeluarkan pasir hingga tongkat tersebut terjatuh?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6073_untuk_menghancurkan, '「1ドル札を崩してもらえませんか？」「ええっと…25セント硬貨が2枚と10セント硬貨が5枚あります。これでよろしいですか？」「はい。有難うございます。」', '"Apakah kamu punya uang kembalian untuk satu dolar?" "Coba kulihat. Aku punya dua perempat lima sen. Apakah ini bagus?" "Ya, terima kasih."');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6074_runtuh, '今朝の俺のクソが大き過ぎて、トイレの床が崩壊したんだ。', 'Kotoran saya sangat banyak pagi ini sehingga lantai kamar mandi runtuh.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6075_untuk_diderita, '母が認知症を患ってるかもしれないんです。', 'Ibu saya mungkin menderita demensia.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6075_untuk_diderita, 'PTSDを患うと、昼夜逆転の生活になりやすい。', 'Orang yang menderita PTSD lebih cenderung mengalami perubahan pada siang dan malam hari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6075_untuk_diderita, 'シェルターには、結核を患うホームレスの人がたくさんいます。', 'Di tempat penampungan banyak terdapat tuna wisma yang mengidap TBC.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6076_seorang_pasien, 'その患者は、左足が麻痺してもなお、サッカー選手になれるという希望に固執していた。', 'Pasien itu tetap berpegang teguh pada cita-citanya menjadi pemain sepak bola meski kaki kirinya lumpuh.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6077_pasien_darurat, '人員不足でごった返しになっていた病院が急患の受け入れを断ったせいで、男性が死亡したそうなんだけど、でもそれって病院だけのせいじゃないよね。', 'Rumah sakit yang kekurangan staf dan penuh sesak menolak untuk merawat pasien darurat dan dia meninggal, tapi itu bukan kesalahan rumah sakit.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6079_untuk_kembali, '母親が病気になったので、私は国に戻ることにしました。', 'Saya memutuskan untuk kembali ke negara saya karena ibu saya sakit.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6080_akan_datang, '対向するバイクの存在を完璧に見落としていました。', 'Saya benar-benar gagal melihat sepeda motor yang melaju.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6080_akan_datang, '対向する車に向かって手を振りました。', 'Aku melambai pada mobil yang melaju.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6080_akan_datang, '対向する車がいないからって、明るい道でハイビームで走るなよ。対向する歩行者の身になれよな。', 'Jangan berkendara di lampu jauh di jalan yang cukup terang hanya karena tidak ada mobil yang melaju. Pikirkan tentang pejalan kaki yang mendekat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6081_untuk_pemberontak, '犬が私に反抗したので、「お前は悪い犬だ！」って叱りつけてやりましたよ。', 'Anjing itu memusuhi saya, jadi saya berteriak padanya, "Kamu anjing nakal!"');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6082_perlawanan, '学生たちは、権威に対して徹底抗戦を強いられました。', 'Para mahasiswa dipaksa untuk melakukan perlawanan sengit terhadap otoritas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6083_antibodi, 'どうしてボスに逆らって、そのウィルスへの抗体を作り出そうとするのですか？予防接種を受ける！', 'Mengapa Anda menentang atasan Anda dan mencoba membangun antibodi terhadap virus? Dapatkan vaksinasi!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6084_untuk_menolak, 'どうしてあのケーキを食べるのを抵抗したんだ？', 'Mengapa kamu menolak memakan kue itu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6085_umumnya, '大抵の外国人は納豆が苦手かと思いますが、私もその一人です。', 'Saya rasa kebanyakan orang asing biasanya tidak menyukai natto dan saya salah satunya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6086_sepuluh_hari_pertama_setiap_bulan, '気象庁は六月上旬に梅雨が始まると言っている。', 'Badan Meteorologi Jepang menyebutkan musim hujan akan dimulai pada awal Juni.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6087_sepuluh_hari_terakhir_dalam_bulan_ini, '四月の下旬に日本に戻って、六月上旬にまたアメリカに戻ってくる予定です。', 'Saya berencana untuk kembali ke Jepang pada akhir April dan kembali ke Amerika pada awal Juni.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6088_sepuluh_hari_tengah_dalam_bulan_ini, '予定日は十一月の中旬です。', 'Hari jatuh tempo saya adalah sekitar pertengahan November.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6089_di_musim, '苺は旬ではありませんが、クリスマスケーキにたくさん使われます。', 'Meskipun stroberi sedang tidak musimnya, stroberi banyak digunakan untuk kue Natal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6090_teluk, '伯父は、殺されて、ドラム缶の中でコンクリート詰めにされて東京湾に沈められました。', 'Paman saya dibunuh, dimasukkan ke dalam drum beton berisi semen, dan ditenggelamkan di Teluk Tokyo.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6091_taiwan, '感染源を台湾のアヒルの群れだと突き止めました。', 'Kami telah menelusuri sumber penularannya dan itu adalah kawanan bebek di Taiwan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6092_ledakan, '彼女の一言が彼の怒りを爆発させました。', 'Kata-katanya menyebabkan dia meledak marah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6093_bom, '爆弾を分解することは危険だってことは分かってたんだけど、すごく興味があったんだ。', 'Saya tahu membongkar bom itu bisa sangat berbahaya, tapi saya sangat tertarik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6094_tawa_yang_meledak, '母さんと父さんを爆笑させるような、何かいいエイプリルフールの案はある？', 'Apakah kamu punya ide April Mop yang bagus untuk membuat orang tua kita tertawa terbahak-bahak?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6095_bom_bunuh_diri, '今月末までに、自爆テロを実行しなくてはなりません。', 'Saya harus melakukan bom bunuh diri pada akhir bulan ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6096_pengeboman, 'そのチョコレート工場は、爆撃を受けて粉々になりました。', 'Pabrik coklat hancur berkeping-keping akibat pengeboman.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6097_peluru, '先日、銃の弾のようなかたちの便が出た。', 'Kotoran saya berbentuk seperti peluru pistol beberapa hari yang lalu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6098_untuk_bangkit, 'ボールが地面を弾んで湖に落ちた。', 'Bola memantul dari tanah dan jatuh ke danau.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6098_untuk_bangkit, '飼い主の大きいお腹の上で無じゃ気に弾んでいる猫の動画にいやされています。', 'Saya terhibur dengan video seekor kucing yang melompat-lompat tanpa sadar di atas perut besar pemiliknya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6098_untuk_bangkit, '彼との会話がこんなに弾むなんて、思ってもみなかったわ。', 'Saya tidak pernah menyangka akan terjadi percakapan semeriah ini di antara kami berdua.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6099_peluru, '俺は弾丸の雨をとても上手くかわした。', 'Saya dengan ahli menghindari semburan peluru.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6100_kemampuan_pendengaran, '今日の午後に、盲目の人の聴力に関するレポートを提出するつもりです。', 'Saya akan menyampaikan laporan saya tentang kemampuan pendengaran penyandang tunanetra pada sore hari ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6101_pendengar, '電話が壊れてるのかも。だって、聴者から電話が一本もないなんて、おかしいよ。', 'Mungkin ada yang salah dengan teleponnya karena anehnya tidak ada pendengar yang menelepon.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6104_jejak, '私は、ワイングラスに付いた彼女の唇の跡を指でなぞった。', 'Bibirnya meninggalkan bekas di gelas anggur dan aku menelusurinya dengan jariku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6105_keajaiban, '奇跡でも起こらない限り、百人が同時におならをするのは不可能でしょう。', 'Kecuali ada keajaiban, seratus orang tidak akan bisa kentut dalam waktu bersamaan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6106_bukti, '部屋には犯罪の証跡はなかったが、警察は殺人事件ではないかと考えていた。', 'Meski tidak ditemukan bukti kejahatan di dalam ruangan tersebut, polisi mengira itu adalah kasus pembunuhan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6107_reruntuhan, '古代の遺跡で、フグの形をした石像を見つけました。', 'Kami menemukan patung batu berbentuk Fugu di reruntuhan kuno.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6108_untuk_digunakan, 'アイツ、彼女のためにかなりお金を遣ったらしい。', 'Dia rupanya menghabiskan banyak uang untuk pacarnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6108_untuk_digunakan, '自分の人生なんですから、どうせなら、自分の好きなことに時間を遣いたいじゃないですか。', 'Ini hidupku, jadi jika aku ingin menjalaninya, aku ingin menghabiskan waktuku melakukan apa yang kucintai, kau tahu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6108_untuk_digunakan, 'まだ敬語を遣うのは苦手ですが、面接では出来る限りていねいな言葉遣いを心がけました。', 'Saya masih belum pandai menggunakan bahasa kehormatan, namun saya berusaha berbicara sesopan mungkin saat wawancara.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6108_untuk_digunakan, '接客業は本当に神経を遣う仕事です。', 'Layanan pelanggan benar-benar pekerjaan yang menuntut mental.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6108_untuk_digunakan, '義理の両親と暮らすのって、毎日気を遣うだろうし、疲れちゃうと思うのよね。', 'Menurutku, tinggal bersama mertua berarti aku harus benar-benar memperhatikan mereka setiap hari, dan aku akan merasa lelah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6109_untuk_berjuang, 'この子たちは、みんな病気と闘っているんです。', 'Anak-anak ini berjuang melawan penyakit mereka.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6110_pertempuran, '実際のところ、忍者は直接戦闘することをできるだけ避けた。', 'Sebenarnya, ninja berusaha menghindari pertempuran sebisa mungkin.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6111_semangat_perjuangan, 'その戦闘ロボットは、メラメラと闘志を燃やしていた。', 'Robot pertempuran itu penuh semangat juang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6112_kamp_tentara, 'マミ将軍の兵士たちが眠りについたところで、カナエ将軍の軍勢がその陣に攻めかかってきた。', 'Saat tentara Jenderal Mami tertidur, pasukan Jenderal Kanae melancarkan serangan ke kamp mereka.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6112_kamp_tentara, '陣取りゲームは、その名の通り、相手の陣地を取り合うゲームのことです。', 'Game base-capturing, seperti namanya, merupakan game yang para pemainnya berlomba-lomba untuk saling merebut markas masing-masing.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6112_kamp_tentara, '教授陣が一丸となって大学改革を進めています。', 'Para profesor bekerja sama untuk memajukan reformasi universitas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6112_kamp_tentara, '大統領は、報道陣と会見をする予定でしたが、食中毒にかかってしまったため中止となりました。', 'Presiden seharusnya melakukan wawancara dengan korps pers, tapi dia keracunan makanan dan dibatalkan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6113_kamp_tentara, 'レース前、各陣営は最後の調整に入りました。', 'Setiap tim memasuki persiapan terakhirnya sebelum perlombaan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6113_kamp_tentara, 'ゲーム業界ではVR陣営が勢いを増しています。', 'Kamp VR mendapatkan momentum di industri game.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6113_kamp_tentara, 'トーフグ陣営はSNSを積極的に活用した選挙戦を展開した。', 'Kubu Tofugu aktif menggunakan media sosial dalam kampanye pemilunya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6113_kamp_tentara, '敵の陣営が見えてくると、恐怖を感じ始めました。', 'Begitu kubu musuh terlihat, saya mulai merasa takut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6113_kamp_tentara, 'コウイチ将軍率いるワニカニ陣営は、可愛いワニカニのイラストがかかれた旗を掲げました。', 'Tim WaniKani yang dipimpin Jenderal Koichi mengibarkan bendera bergambar ilustrasi WaniKani yang lucu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6116_parfum, '学校では香水が禁止されているにもかかわらず、その男子生徒はいつも甘い香りの香水を付けていて、教師たちには自然な脇の臭いだと言っていた。', 'Meski dilarang memakai parfum di sekolah, cowok itu selalu memakai parfum yang wangi dan dia bilang ke guru kalau itu bau ketiak alaminya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6118_tanda, '彼女は、私に下痢の兆候がきたと告げるやいなや、トイレに駆け込んでいった。', 'Dia mengatakan kepada saya bahwa dia mengalami gejala diare dan bergegas ke kamar mandi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6119_pertanda, 'この雲と風は嵐の前兆です。', 'Awan dan angin adalah tanda-tanda badai.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6120_untuk_menghadapi, 'トーフグの本社は、オレゴン州という、太平洋に臨むアメリカ北西部の州に位置しています。', 'Markas besar Tofugu berlokasi di Oregon, yang merupakan negara bagian di barat laut Amerika Serikat yang menghadap Pasifik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6121_tepi_laut, '日本の学生の多くは、夏に臨海学校に行く事を経験します。', 'Banyak siswa Jepang yang merasakan pengalaman bersekolah di sekolah tepi pantai selama musim panas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6122_tidak_teratur, '台風の影響で、臨時休校になった。', 'Sekolah ditutup sementara karena topan tersebut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6122_tidak_teratur, '臨時ニュースが入りました。', 'Kami punya berita terkini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6122_tidak_teratur, '今日はイベントのための臨時バスが運行されています。', 'Layanan bus sementara beroperasi hari ini untuk acara tersebut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6122_tidak_teratur, '臨時収入があったので、ハーゲンダッツを買っちゃいました。', 'Saya mendapat penghasilan tambahan, jadi saya membeli sendiri beberapa Häagen-Dazs.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6123_untuk_mengurangi_sesuatu, '木の枝を削ってはしを作りました。', 'Saya memotong dahan pohon untuk membuat sumpit.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6123_untuk_mengurangi_sesuatu, 'プロジェクトリーダーに予算を削られて備品が買えない。', 'Pemimpin proyek mengurangi anggaran saya dan saya tidak dapat membeli peralatan apa pun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6123_untuk_mengurangi_sesuatu, '歯を削る音ってのは、私にとっては最も不快な音の一つだね。', 'Suara mencukur gigi adalah salah satu suara yang paling tidak menyenangkan bagi saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6124_penghapusan, 'インターネット上からあんたの写真を全部削除するのは、時間はかかるだろうけど、俺の手に掛かれば不可能じゃないね。', 'Butuh beberapa waktu untuk menghapus semua gambar Anda dari Internet, tapi itu bukan tidak mungkin bagi saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6125_pengurangan, 'コストの削減に苦戦しています。', 'Saya akan kesulitan mengurangi biayanya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6125_pengurangan, 'コスト削減を図っているが、なかなか成果が出ていない。', 'Meskipun kami mengambil langkah-langkah untuk mengurangi biaya, kami belum melihat banyak keberhasilan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6126_kontrak, 'あの事件が先方に契約を解除させたんだよ。', 'Kejadian itu membuat mereka membatalkan kontrak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6127_peluang, '吐血したのを契機に、煙草を止めました。', 'Batuk darah adalah kesempatan saya untuk berhenti merokok.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6128_untuk_melakukan_bantuan, '貧しい人にお金を恵む事は良い事だと思いますか？', 'Apakah menurut Anda memberikan uang kepada orang miskin adalah hal yang baik?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6128_untuk_melakukan_bantuan, '三日間何も食べてないんです。何か食べ物を恵んでもらえませんか？', 'Saya belum makan apa pun selama tiga hari. Bisakah kamu memberiku makanan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6128_untuk_melakukan_bantuan, '川は植物を育てるのに必要な水を私たちに恵んでくれます。', 'Sungai memberkati kita dengan air yang dibutuhkan untuk menanam tanaman.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6129_kebijaksanaan, '無い知恵を絞ってこのラブレターを書いたよ。', 'Aku memutar otak untuk menulis surat cinta ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6130_untuk_merangkul, '母熊は自分の赤ん坊を抱き上げ、顔中を舐め回した。', 'Induk beruang memeluk bayinya dan menjilat seluruh wajahnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6131_untuk_memasang_tanda, 'ジェームズは、鉛筆削りの技術のレベルを上げるという目標を掲げた。', 'James menetapkan tujuan baru: membawa penajaman pensilnya ke tingkat berikutnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6132_melihat, 'アヤは、レストランが臨時休業の掲示をしている紙に余白があるのを見つけては、そこに落書きをします。', 'Setiap kali Aya melihat sebuah restoran memasang pemberitahuan tutup untuk hari libur dan masih ada ruang tersisa di kertas itu, dia menggambar coretan di sana.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6133_publikasi, '今月号掲載の記事はとても面白いね。', 'Artikel yang dimuat di edisi bulan ini sangat menarik bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6133_publikasi, 'イラストや写真の無断掲載をしてはいけません。', 'Dilarang mempublikasikan ilustrasi dan foto tanpa izin.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6133_publikasi, 'トーフグに掲載されているブログ記事を何部かコピーして、日本語を学習している私の生徒たちに配っても構いませんか？', 'Apakah Anda keberatan jika saya memperbanyak beberapa salinan artikel yang diterbitkan di Tofugu dan membagikannya kepada siswa saya yang sedang belajar bahasa Jepang?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6134_tujuan, 'この教科書の狙いは上述の通りです。', 'Tujuan dari buku teks ini adalah seperti yang disebutkan di atas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6134_tujuan, 'どんな問題にも目的と狙いがあります。', 'Setiap masalah mempunyai maksud dan tujuan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6134_tujuan, 'どうせアフィ狙いかステマの釣り記事だろ。', 'Itu harus berupa artikel clickbait yang ditujukan untuk program afiliasi atau pemasaran tersembunyi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6135_penembakan, '男は政治家を狙撃するために、そのホテルの部屋が見える場所までやってきた。', 'Dia memposisikan dirinya di depan kamar hotel untuk menembak politisi tersebut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6136_pemakaman, 'もし誰かから電話があったら、葬式に出ていて三時に戻ると伝えてください。', 'Jika ada yang menelepon, katakanlah saya ada di pemakaman dan akan kembali pada jam tiga.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6137_untuk_mengubur, 'その事件の真相が闇に葬られるのではないかと心配しています。', 'Saya khawatir kebenaran kejadian itu akan terkubur.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6138_kremasi, '火葬のシステムは自動的に停止する訳ではありません。係の人が小窓から骨の様子を見ながら、終わったと思う時に止めるのです。', 'Sistem kremasi tidak mati secara otomatis. Orang yang bertanggung jawab memeriksa kinerja tulang dari jendela kecil sesekali dan menghentikannya ketika mereka mengira sudah selesai.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6234_menugaskan, '日本政府は被災地に医師団を派遣した。', 'Pemerintah Jepang mengirimkan tim dokter ke daerah yang terkena dampak bencana.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6234_menugaskan, 'アメリカ軍はイラクに軍を派遣した。', 'Militer Amerika mengerahkan satu unit ke Irak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6234_menugaskan, 'その派遣社員は、新しい職場の雰囲気をすぐに掴みました。', 'Pekerja sementara itu dengan cepat terbiasa dengan suasana kantor barunya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6581_persemaian, 'この公園は地元では犯罪の温床になっていることで知られているので、近づかない方がいいですよ。', 'Taman ini dikenal sebagai tempat berkembang biaknya aktivitas kriminal di kawasan ini, jadi sebaiknya Anda tidak mendekat ke sana.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6581_persemaian, 'このシステムだと、不正の温床になるリスクが高いんじゃないでしょうか？', 'Dengan sistem ini, bukankah akan ada risiko tinggi menjadi sarang penipuan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6581_persemaian, '4chanって、テロの温床になってるって噂のプラットフォームだよね？', '4chan adalah platform yang dikabarkan menjadi tempat berkembang biaknya terorisme, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6581_persemaian, 'マイナンバーカードの制度は「なりすまし犯罪の温床」になるのではと言われています。', 'Ada yang mengatakan bahwa sistem My Number Card berpotensi menjadi "sarang pencurian identitas".');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8485_sutra, '母の日に、絹のハンカチをプレゼントしました。', 'Saya memberikan saputangan sutra sebagai hadiah di Hari Ibu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8485_sutra, 'これはおばあちゃんが大切にしていた絹の着物です。', 'Ini adalah kimono sutra yang disayangi nenek saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8485_sutra, 'え、シルクって絹のことなの？', 'Tunggu, apakah sutra sama dengan <em>kinu</em>?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8485_sutra, '妻は、美しい絹のガウンを羽織って死んでいました。', 'Istri saya ditemukan tewas mengenakan gaun sutra yang indah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8556_tsukemono, 'この漬物は誰が漬けたんですか。', 'Siapa yang membuat acar tsukemono ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8556_tsukemono, '私はナスの漬物は苦手なんです。', 'Saya bukan penggemar acar terong.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8556_tsukemono, 'ちょっとお漬物買ってくるね！', 'Aku akan membeli acar secepatnya!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8556_tsukemono, 'キュウリの漬物があれば、ご飯が何杯でも食べれます。', 'Jika saya punya acar mentimun, saya bisa makan nasi berapa pun jumlahnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8689_elastisitas, 'お肌の弾力が無くなってきているの。', 'Elastisitas kulit saya menghilang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8847_tusuk_sate, '今度のBBQには100本くらい串が必要です。', 'Kami membutuhkan sekitar seratus tusuk sate untuk BBQ yang akan datang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8847_tusuk_sate, '肉とジャガイモに串を刺してくれませんか？', 'Bisakah Anda menusuk daging dan kentangnya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8847_tusuk_sate, '焼き鳥とは、串に刺さった鶏肉のことです。', 'Yakitori adalah ayam yang ditusuk dengan tusuk sate.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8848_tusuk_sate_panggang, '最近、ケールの串焼きにはまっています。', 'Akhir-akhir ini, saya menyukai sate kangkung panggang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8848_tusuk_sate_panggang, '金曜日の夜は、串焼き屋さんで夕飯を食べました。', 'Saya makan malam di tempat tusuk sate panggang pada Jumat malam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8848_tusuk_sate_panggang, 'うちのインコは「串焼きにしないで！」が口癖です。', 'Slogan parkit kami adalah, "Jangan jadikan aku tusuk sate panggang!"');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8872_alis, '眉の形は人によって違う。', 'Bentuk alis berbeda-beda pada setiap orang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8872_alis, '早く、眉にピアス開けたいな。', 'Aku ingin segera menindik alisku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8872_alis, '眉の動きに注目すると表情を捉えやすいって知ってましたか？', 'Tahukah Anda bahwa memperhatikan gerakan alis akan memudahkan Anda melihat ekspresi wajah?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8873_alis, '社長は眉間にシワを寄せながら「この資料は誰が書いた？」と言った。', 'Presiden perusahaan berkata, "Siapa yang menulis dokumen-dokumen ini?" sambil mengerutkan alisnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8873_alis, '私のパグのチャームポイントはやはり眉間のシワです。', 'Tahukah kamu, fitur paling menarik dari anjing pugku adalah garis di alisnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8873_alis, '眉間を黒いマジックで塗りつぶしてください。', 'Silakan isi alis Anda dengan spidol hitam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9062_berpelukan, '姉ちゃん、抱っこして！', 'Kak, gendong aku!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9062_berpelukan, '娘は抱っこをしているとぐっすり寝てくれます。', 'Putriku tidur nyenyak ketika aku memeluknya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9062_berpelukan, '友達の赤ちゃんのために、抱っこひもを選びました。', 'Kami memilih gendongan untuk bayi teman kami.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9401_air_liur, '唾液は食べ物を消化するのを助けます。', 'Air liur membantu mencerna makanan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9401_air_liur, 'その薬は唾液を増やす効果があります。', 'Obat itu meningkatkan produksi air liur.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9401_air_liur, '歯科医に「唾液の出が弱いですね」と言われたんです。', 'Dokter gigi memberi tahu saya bahwa produksi air liur saya rendah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9401_air_liur, '家でもできる唾液検査キットを買いました。', 'Saya membeli alat tes air liur di rumah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9402_meludah, '彼は緊張して唾がうまく飲み込めなかった。', 'Dia sangat gugup hingga dia hampir tidak bisa mengeluarkan air liurnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9402_meludah, '唾を飛ばさないようにゆっくり話しました。', 'Aku berbicara perlahan agar ludah tidak beterbangan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9402_meludah, 'あの新人、優秀だから、今のうちに唾をつけておいたほうがいいよ。', 'Karyawan baru itu benar-benar bagus — kita harus mencoba mengklaimnya selagi bisa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9404_untuk_dihancurkan, 'パンがカバンの中で潰れていた。', 'Roti itu hancur di dalam tasku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9404_untuk_dihancurkan, 'その店は去年潰れてしまった。', 'Toko itu gulung tikar tahun lalu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9404_untuk_dihancurkan, '雨で遊園地に行く計画が潰れてしまった。', 'Rencana kami untuk pergi ke taman hiburan hancur karena hujan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9404_untuk_dihancurkan, 'カラオケのしすぎで声が潰れて、うまく話せなかった。', 'Saya merusak suara saya karena terlalu banyak karaoke dan tidak dapat berbicara dengan baik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9507_menonton_dan_mendengarkan, 'あれ、なんか急に視聴者数増えてない？', 'Tunggu, hanya aku saja, atau apakah jumlah penonton kita meningkat drastis?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9507_menonton_dan_mendengarkan, 'ご視聴の際は、音量にご注意ください。', 'Harap perhatikan volume saat menonton.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9507_menonton_dan_mendengarkan, '視聴率を上げるために、みんなで話し合って内容を改善しました。', 'Untuk meningkatkan peringkat, kami mendiskusikan berbagai hal sebagai kelompok dan meningkatkan konten kami.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9507_menonton_dan_mendengarkan, '平均視聴時間の長い動画を作りたいんだよね。', 'Saya ingin membuat video yang memiliki rata-rata waktu tonton yang lama.');

  -- 4. PREREQUISITES
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1643_melompat, id FROM items WHERE type = 'radical' AND (slug = '95' OR id = '95') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1643_melompat, r_363_pertanda);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1644_bersinar, id FROM items WHERE type = 'radical' AND (slug = '22' OR id = '22') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1644_bersinar, id FROM items WHERE type = 'radical' AND (slug = '331' OR id = '331') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1645_penangkapan_ikan, id FROM items WHERE type = 'radical' AND (slug = '103' OR id = '103') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1645_penangkapan_ikan, id FROM items WHERE type = 'radical' AND (slug = '150' OR id = '150') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1646_perbaikan, id FROM items WHERE type = 'radical' AND (slug = '75' OR id = '75') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1646_perbaikan, r_364_hadiah);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1647_menghukum, id FROM items WHERE type = 'radical' AND (slug = '171' OR id = '171') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1647_menghukum, id FROM items WHERE type = 'radical' AND (slug = '128' OR id = '128') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1648_rekrut, id FROM items WHERE type = 'radical' AND (slug = '356' OR id = '356') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1648_rekrut, id FROM items WHERE type = 'radical' AND (slug = '13' OR id = '13') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1649_gigih, id FROM items WHERE type = 'radical' AND (slug = '260' OR id = '260') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1649_gigih, id FROM items WHERE type = 'radical' AND (slug = '223' OR id = '223') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1650_basis, id FROM items WHERE type = 'radical' AND (slug = '51' OR id = '51') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1650_basis, id FROM items WHERE type = 'radical' AND (slug = '8788' OR id = '8788') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1650_basis, id FROM items WHERE type = 'radical' AND (slug = '17' OR id = '17') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1651_hancur, id FROM items WHERE type = 'radical' AND (slug = '20' OR id = '20') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1651_hancur, id FROM items WHERE type = 'radical' AND (slug = '43' OR id = '43') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1652_menderita, r_365_tusuk_sate);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1652_menderita, id FROM items WHERE type = 'radical' AND (slug = '65' OR id = '65') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1653_kembali, id FROM items WHERE type = 'radical' AND (slug = '73' OR id = '73') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1653_kembali, id FROM items WHERE type = 'radical' AND (slug = '18' OR id = '18') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1654_mengonfrontasi, id FROM items WHERE type = 'radical' AND (slug = '63' OR id = '63') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1654_mengonfrontasi, id FROM items WHERE type = 'radical' AND (slug = '8' OR id = '8') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1654_mengonfrontasi, id FROM items WHERE type = 'radical' AND (slug = '177' OR id = '177') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1655_melawan, id FROM items WHERE type = 'radical' AND (slug = '63' OR id = '63') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1655_melawan, id FROM items WHERE type = 'radical' AND (slug = '147' OR id = '147') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1655_melawan, id FROM items WHERE type = 'radical' AND (slug = '1' OR id = '1') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1656_di_musim, id FROM items WHERE type = 'radical' AND (slug = '14' OR id = '14') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1656_di_musim, id FROM items WHERE type = 'radical' AND (slug = '22' OR id = '22') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1657_teluk, id FROM items WHERE type = 'radical' AND (slug = '103' OR id = '103') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1657_teluk, id FROM items WHERE type = 'radical' AND (slug = '9329' OR id = '9329') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1657_teluk, id FROM items WHERE type = 'radical' AND (slug = '36' OR id = '36') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1658_meledak, id FROM items WHERE type = 'radical' AND (slug = '46' OR id = '46') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1658_meledak, r_366_kekerasan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1659_peluru, id FROM items WHERE type = 'radical' AND (slug = '36' OR id = '36') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1659_peluru, id FROM items WHERE type = 'radical' AND (slug = '199' OR id = '199') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1660_mendengarkan, id FROM items WHERE type = 'radical' AND (slug = '88' OR id = '88') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1660_mendengarkan, id FROM items WHERE type = 'radical' AND (slug = '15' OR id = '15') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1660_mendengarkan, id FROM items WHERE type = 'radical' AND (slug = '163' OR id = '163') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1660_mendengarkan, id FROM items WHERE type = 'radical' AND (slug = '65' OR id = '65') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1661_jejak, id FROM items WHERE type = 'radical' AND (slug = '95' OR id = '95') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1661_jejak, id FROM items WHERE type = 'radical' AND (slug = '9329' OR id = '9329') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1662_menugaskan, id FROM items WHERE type = 'radical' AND (slug = '114' OR id = '114') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1662_menugaskan, id FROM items WHERE type = 'radical' AND (slug = '89' OR id = '89') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1662_menugaskan, id FROM items WHERE type = 'radical' AND (slug = '8777' OR id = '8777') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1663_bertarung, id FROM items WHERE type = 'radical' AND (slug = '214' OR id = '214') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1663_bertarung, id FROM items WHERE type = 'radical' AND (slug = '181' OR id = '181') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1663_bertarung, id FROM items WHERE type = 'radical' AND (slug = '74' OR id = '74') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1664_kamp_tentara, id FROM items WHERE type = 'radical' AND (slug = '176' OR id = '176') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1664_kamp_tentara, id FROM items WHERE type = 'radical' AND (slug = '93' OR id = '93') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1665_parfum, id FROM items WHERE type = 'radical' AND (slug = '135' OR id = '135') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1665_parfum, id FROM items WHERE type = 'radical' AND (slug = '22' OR id = '22') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1666_pertanda, r_363_pertanda);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1667_lihat_ke, id FROM items WHERE type = 'radical' AND (slug = '323' OR id = '323') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1667_lihat_ke, id FROM items WHERE type = 'radical' AND (slug = '8762' OR id = '8762') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1667_lihat_ke, id FROM items WHERE type = 'radical' AND (slug = '227' OR id = '227') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1668_kurangi, id FROM items WHERE type = 'radical' AND (slug = '8765' OR id = '8765') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1668_kurangi, id FROM items WHERE type = 'radical' AND (slug = '43' OR id = '43') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1668_kurangi, id FROM items WHERE type = 'radical' AND (slug = '128' OR id = '128') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1669_sumpah, id FROM items WHERE type = 'radical' AND (slug = '9452' OR id = '9452') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1669_sumpah, id FROM items WHERE type = 'radical' AND (slug = '24' OR id = '24') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1669_sumpah, id FROM items WHERE type = 'radical' AND (slug = '18' OR id = '18') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1670_kebaikan, id FROM items WHERE type = 'radical' AND (slug = '15' OR id = '15') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1670_kebaikan, id FROM items WHERE type = 'radical' AND (slug = '51' OR id = '51') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1670_kebaikan, id FROM items WHERE type = 'radical' AND (slug = '65' OR id = '65') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1671_memeluk, id FROM items WHERE type = 'radical' AND (slug = '63' OR id = '63') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1671_memeluk, r_395_membungkus);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1672_menampilkan, id FROM items WHERE type = 'radical' AND (slug = '63' OR id = '63') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1672_menampilkan, id FROM items WHERE type = 'radical' AND (slug = '22' OR id = '22') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1672_menampilkan, id FROM items WHERE type = 'radical' AND (slug = '14' OR id = '14') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1672_menampilkan, id FROM items WHERE type = 'radical' AND (slug = '57' OR id = '57') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1673_tujuan, id FROM items WHERE type = 'radical' AND (slug = '144' OR id = '144') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1673_tujuan, id FROM items WHERE type = 'radical' AND (slug = '419' OR id = '419') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1674_pemakaman, id FROM items WHERE type = 'radical' AND (slug = '90' OR id = '90') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1674_pemakaman, id FROM items WHERE type = 'radical' AND (slug = '132' OR id = '132') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1674_pemakaman, id FROM items WHERE type = 'radical' AND (slug = '57' OR id = '57') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1674_pemakaman, id FROM items WHERE type = 'radical' AND (slug = '106' OR id = '106') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_2384_sutra, id FROM items WHERE type = 'radical' AND (slug = '86' OR id = '86') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_2384_sutra, id FROM items WHERE type = 'radical' AND (slug = '16' OR id = '16') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_2384_sutra, id FROM items WHERE type = 'radical' AND (slug = '43' OR id = '43') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_8837_tusuk_sate, r_365_tusuk_sate);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_8862_alis, id FROM items WHERE type = 'radical' AND (slug = '37' OR id = '37') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_8862_alis, id FROM items WHERE type = 'radical' AND (slug = '8761' OR id = '8761') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_8862_alis, id FROM items WHERE type = 'radical' AND (slug = '53' OR id = '53') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5749_anda, id FROM items WHERE type = 'kanji' AND (slug = '1547' OR id = '1547') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5749_anda, id FROM items WHERE type = 'kanji' AND (slug = '865' OR id = '865') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6029_hidup_sendirian, id FROM items WHERE type = 'kanji' AND (slug = '440' OR id = '440') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6029_hidup_sendirian, id FROM items WHERE type = 'kanji' AND (slug = '444' OR id = '444') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6029_hidup_sendirian, id FROM items WHERE type = 'kanji' AND (slug = '1527' OR id = '1527') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6031_orang_yang_tak_tahu_malu, id FROM items WHERE type = 'kanji' AND (slug = '1595' OR id = '1595') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6031_orang_yang_tak_tahu_malu, id FROM items WHERE type = 'kanji' AND (slug = '631' OR id = '631') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6032_ujian_neraka, id FROM items WHERE type = 'kanji' AND (slug = '1029' OR id = '1029') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6032_ujian_neraka, id FROM items WHERE type = 'kanji' AND (slug = '1048' OR id = '1048') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6032_ujian_neraka, id FROM items WHERE type = 'kanji' AND (slug = '608' OR id = '608') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6032_ujian_neraka, id FROM items WHERE type = 'kanji' AND (slug = '1602' OR id = '1602') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6033_keadaan_mabuk_laut, id FROM items WHERE type = 'kanji' AND (slug = '671' OR id = '671') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6033_keadaan_mabuk_laut, id FROM items WHERE type = 'kanji' AND (slug = '1603' OR id = '1603') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6034_makanan_daging_dan_sayur, id FROM items WHERE type = 'kanji' AND (slug = '1605' OR id = '1605') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6035_pembayaran, id FROM items WHERE type = 'kanji' AND (slug = '1608' OR id = '1608') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6036_lukisan_cat_minyak, id FROM items WHERE type = 'kanji' AND (slug = '1609' OR id = '1609') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6036_lukisan_cat_minyak, id FROM items WHERE type = 'kanji' AND (slug = '698' OR id = '698') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6037_cuka_manis, id FROM items WHERE type = 'kanji' AND (slug = '1623' OR id = '1623') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6037_cuka_manis, id FROM items WHERE type = 'kanji' AND (slug = '1604' OR id = '1604') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6038_membengkak, id FROM items WHERE type = 'kanji' AND (slug = '1532' OR id = '1532') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6038_membengkak, id FROM items WHERE type = 'kanji' AND (slug = '450' OR id = '450') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6039_lambat, id FROM items WHERE type = 'kanji' AND (slug = '1579' OR id = '1579') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6040_menjadi_pemalu, id FROM items WHERE type = 'kanji' AND (slug = '1595' OR id = '1595') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6041_untuk_robek, id FROM items WHERE type = 'kanji' AND (slug = '1582' OR id = '1582') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6042_perkenalan_diri, id FROM items WHERE type = 'kanji' AND (slug = '578' OR id = '578') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6042_perkenalan_diri, id FROM items WHERE type = 'kanji' AND (slug = '1588' OR id = '1588') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6042_perkenalan_diri, id FROM items WHERE type = 'kanji' AND (slug = '1586' OR id = '1586') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6042_perkenalan_diri, id FROM items WHERE type = 'kanji' AND (slug = '1587' OR id = '1587') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6043_untuk_memperkenalkan, id FROM items WHERE type = 'kanji' AND (slug = '1586' OR id = '1586') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6043_untuk_memperkenalkan, id FROM items WHERE type = 'kanji' AND (slug = '1587' OR id = '1587') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6044_surat_perkenalan, id FROM items WHERE type = 'kanji' AND (slug = '1586' OR id = '1586') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6044_surat_perkenalan, id FROM items WHERE type = 'kanji' AND (slug = '1587' OR id = '1587') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6044_surat_perkenalan, id FROM items WHERE type = 'kanji' AND (slug = '1183' OR id = '1183') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6045_sup, id FROM items WHERE type = 'kanji' AND (slug = '1597' OR id = '1597') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6045_sup, id FROM items WHERE type = 'kanji' AND (slug = '718' OR id = '718') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6046_sup_miso, id FROM items WHERE type = 'kanji' AND (slug = '812' OR id = '812') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6046_sup_miso, id FROM items WHERE type = 'kanji' AND (slug = '1598' OR id = '1598') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6046_sup_miso, id FROM items WHERE type = 'kanji' AND (slug = '1597' OR id = '1597') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6047_orang_mabuk, id FROM items WHERE type = 'kanji' AND (slug = '1603' OR id = '1603') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6047_orang_mabuk, id FROM items WHERE type = 'kanji' AND (slug = '1608' OR id = '1608') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6048_mabuk, id FROM items WHERE type = 'kanji' AND (slug = '441' OR id = '441') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6048_mabuk, id FROM items WHERE type = 'kanji' AND (slug = '476' OR id = '476') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6048_mabuk, id FROM items WHERE type = 'kanji' AND (slug = '1603' OR id = '1603') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6049_pompa_bensin, id FROM items WHERE type = 'kanji' AND (slug = '1345' OR id = '1345') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6049_pompa_bensin, id FROM items WHERE type = 'kanji' AND (slug = '1609' OR id = '1609') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6049_pompa_bensin, id FROM items WHERE type = 'kanji' AND (slug = '707' OR id = '707') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6050_untuk_melompat, k_1643_melompat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6051_era_showa, k_1644_bersinar);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6051_era_showa, id FROM items WHERE type = 'kanji' AND (slug = '712' OR id = '712') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6052_nelayan, k_1645_penangkapan_ikan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6052_nelayan, id FROM items WHERE type = 'kanji' AND (slug = '1198' OR id = '1198') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6053_perahu_nelayan, k_1645_penangkapan_ikan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6053_perahu_nelayan, id FROM items WHERE type = 'kanji' AND (slug = '671' OR id = '671') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6054_industri_perikanan, k_1645_penangkapan_ikan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6054_industri_perikanan, id FROM items WHERE type = 'kanji' AND (slug = '756' OR id = '756') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6055_untuk_mengkompensasi, k_1646_perbaikan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6056_pengembalian, id FROM items WHERE type = 'kanji' AND (slug = '984' OR id = '984') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6056_pengembalian, k_1646_perbaikan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6057_penjara, k_1647_menghukum);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6057_penjara, id FROM items WHERE type = 'kanji' AND (slug = '1129' OR id = '1129') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6057_penjara, id FROM items WHERE type = 'kanji' AND (slug = '707' OR id = '707') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6058_hukuman_mati, id FROM items WHERE type = 'kanji' AND (slug = '617' OR id = '617') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6058_hukuman_mati, k_1647_menghukum);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6059_detektif_polisi, k_1647_menghukum);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6059_detektif_polisi, id FROM items WHERE type = 'kanji' AND (slug = '708' OR id = '708') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6060_masa_penjara, k_1647_menghukum);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6060_masa_penjara, id FROM items WHERE type = 'kanji' AND (slug = '839' OR id = '839') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6061_hukuman, k_1647_menghukum);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6061_hukuman, id FROM items WHERE type = 'kanji' AND (slug = '1155' OR id = '1155') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6062_hukuman_seumur_hidup, id FROM items WHERE type = 'kanji' AND (slug = '745' OR id = '745') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6062_hukuman_seumur_hidup, id FROM items WHERE type = 'kanji' AND (slug = '689' OR id = '689') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6062_hukuman_seumur_hidup, k_1647_menghukum);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6063_untuk_memohon_sesuatu, k_1648_rekrut);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6064_penggalangan_dana, k_1648_rekrut);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6064_penggalangan_dana, id FROM items WHERE type = 'kanji' AND (slug = '602' OR id = '602') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6065_perekrutan, k_1648_rekrut);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6065_perekrutan, id FROM items WHERE type = 'kanji' AND (slug = '754' OR id = '754') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6066_aplikasi, id FROM items WHERE type = 'kanji' AND (slug = '1180' OR id = '1180') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6066_aplikasi, k_1648_rekrut);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6067_untuk_mengambil, k_1649_gigih);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6068_lampiran_ke, k_1649_gigih);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6068_lampiran_ke, id FROM items WHERE type = 'kanji' AND (slug = '846' OR id = '846') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6069_menulis, k_1649_gigih);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6069_menulis, id FROM items WHERE type = 'kanji' AND (slug = '1288' OR id = '1288') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6070_pangkalan_bisbol, k_1650_basis);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6071_pukulan_dasar, k_1650_basis);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6071_pukulan_dasar, id FROM items WHERE type = 'kanji' AND (slug = '536' OR id = '536') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6072_wasit_bisbol, k_1650_basis);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6072_wasit_bisbol, id FROM items WHERE type = 'kanji' AND (slug = '1144' OR id = '1144') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6073_untuk_menghancurkan, k_1651_hancur);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6074_runtuh, k_1651_hancur);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6074_runtuh, id FROM items WHERE type = 'kanji' AND (slug = '1389' OR id = '1389') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6075_untuk_diderita, k_1652_menderita);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6076_seorang_pasien, k_1652_menderita);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6076_seorang_pasien, id FROM items WHERE type = 'kanji' AND (slug = '690' OR id = '690') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6077_pasien_darurat, id FROM items WHERE type = 'kanji' AND (slug = '970' OR id = '970') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6077_pasien_darurat, k_1652_menderita);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6079_untuk_kembali, k_1653_kembali);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6080_akan_datang, id FROM items WHERE type = 'kanji' AND (slug = '683' OR id = '683') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6080_akan_datang, id FROM items WHERE type = 'kanji' AND (slug = '611' OR id = '611') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6081_untuk_pemberontak, id FROM items WHERE type = 'kanji' AND (slug = '855' OR id = '855') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6081_untuk_pemberontak, k_1654_mengonfrontasi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6082_perlawanan, k_1654_mengonfrontasi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6082_perlawanan, id FROM items WHERE type = 'kanji' AND (slug = '803' OR id = '803') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6083_antibodi, k_1654_mengonfrontasi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6083_antibodi, id FROM items WHERE type = 'kanji' AND (slug = '583' OR id = '583') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6084_untuk_menolak, k_1655_melawan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6084_untuk_menolak, k_1654_mengonfrontasi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6085_umumnya, id FROM items WHERE type = 'kanji' AND (slug = '453' OR id = '453') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6085_umumnya, k_1655_melawan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6086_sepuluh_hari_pertama_setiap_bulan, id FROM items WHERE type = 'kanji' AND (slug = '450' OR id = '450') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6086_sepuluh_hari_pertama_setiap_bulan, k_1656_di_musim);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6087_sepuluh_hari_terakhir_dalam_bulan_ini, id FROM items WHERE type = 'kanji' AND (slug = '451' OR id = '451') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6087_sepuluh_hari_terakhir_dalam_bulan_ini, k_1656_di_musim);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6088_sepuluh_hari_tengah_dalam_bulan_ini, id FROM items WHERE type = 'kanji' AND (slug = '469' OR id = '469') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6088_sepuluh_hari_tengah_dalam_bulan_ini, k_1656_di_musim);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6089_di_musim, k_1656_di_musim);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6090_teluk, k_1657_teluk);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6091_taiwan, id FROM items WHERE type = 'kanji' AND (slug = '520' OR id = '520') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6091_taiwan, k_1657_teluk);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6092_ledakan, k_1658_meledak);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6092_ledakan, id FROM items WHERE type = 'kanji' AND (slug = '729' OR id = '729') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6093_bom, k_1658_meledak);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6093_bom, k_1659_peluru);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6094_tawa_yang_meledak, k_1658_meledak);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6094_tawa_yang_meledak, id FROM items WHERE type = 'kanji' AND (slug = '980' OR id = '980') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6095_bom_bunuh_diri, id FROM items WHERE type = 'kanji' AND (slug = '578' OR id = '578') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6095_bom_bunuh_diri, k_1658_meledak);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6096_pengeboman, k_1658_meledak);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6096_pengeboman, id FROM items WHERE type = 'kanji' AND (slug = '1377' OR id = '1377') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6097_peluru, k_1659_peluru);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6098_untuk_bangkit, k_1659_peluru);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6099_peluru, k_1659_peluru);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6099_peluru, id FROM items WHERE type = 'kanji' AND (slug = '467' OR id = '467') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6100_kemampuan_pendengaran, k_1660_mendengarkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6100_kemampuan_pendengaran, id FROM items WHERE type = 'kanji' AND (slug = '447' OR id = '447') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6101_pendengar, k_1660_mendengarkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6101_pendengar, id FROM items WHERE type = 'kanji' AND (slug = '690' OR id = '690') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6104_jejak, k_1661_jejak);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6105_keajaiban, id FROM items WHERE type = 'kanji' AND (slug = '1363' OR id = '1363') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6105_keajaiban, k_1661_jejak);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6106_bukti, id FROM items WHERE type = 'kanji' AND (slug = '987' OR id = '987') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6106_bukti, k_1661_jejak);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6107_reruntuhan, id FROM items WHERE type = 'kanji' AND (slug = '1616' OR id = '1616') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6107_reruntuhan, k_1661_jejak);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6108_untuk_digunakan, k_1662_menugaskan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6109_untuk_berjuang, k_1663_bertarung);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6110_pertempuran, id FROM items WHERE type = 'kanji' AND (slug = '803' OR id = '803') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6110_pertempuran, k_1663_bertarung);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6111_semangat_perjuangan, k_1663_bertarung);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6111_semangat_perjuangan, id FROM items WHERE type = 'kanji' AND (slug = '1482' OR id = '1482') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6112_kamp_tentara, k_1664_kamp_tentara);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6113_kamp_tentara, k_1664_kamp_tentara);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6113_kamp_tentara, id FROM items WHERE type = 'kanji' AND (slug = '1168' OR id = '1168') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6116_parfum, k_1665_parfum);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6116_parfum, id FROM items WHERE type = 'kanji' AND (slug = '479' OR id = '479') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6118_tanda, k_1666_pertanda);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6118_tanda, id FROM items WHERE type = 'kanji' AND (slug = '1262' OR id = '1262') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6119_pertanda, id FROM items WHERE type = 'kanji' AND (slug = '633' OR id = '633') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6119_pertanda, k_1666_pertanda);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6120_untuk_menghadapi, k_1667_lihat_ke);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6121_tepi_laut, k_1667_lihat_ke);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6121_tepi_laut, id FROM items WHERE type = 'kanji' AND (slug = '640' OR id = '640') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6122_tidak_teratur, k_1667_lihat_ke);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6122_tidak_teratur, id FROM items WHERE type = 'kanji' AND (slug = '662' OR id = '662') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6123_untuk_mengurangi_sesuatu, k_1668_kurangi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6124_penghapusan, k_1668_kurangi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6124_penghapusan, id FROM items WHERE type = 'kanji' AND (slug = '1451' OR id = '1451') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6125_pengurangan, k_1668_kurangi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6125_pengurangan, id FROM items WHERE type = 'kanji' AND (slug = '1059' OR id = '1059') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6126_kontrak, k_1669_sumpah);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6126_kontrak, id FROM items WHERE type = 'kanji' AND (slug = '915' OR id = '915') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6127_peluang, k_1669_sumpah);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6127_peluang, id FROM items WHERE type = 'kanji' AND (slug = '1090' OR id = '1090') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6128_untuk_melakukan_bantuan, k_1670_kebaikan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6129_kebijaksanaan, id FROM items WHERE type = 'kanji' AND (slug = '631' OR id = '631') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6129_kebijaksanaan, k_1670_kebaikan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6130_untuk_merangkul, k_1671_memeluk);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6131_untuk_memasang_tanda, k_1672_menampilkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6132_melihat, k_1672_menampilkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6132_melihat, id FROM items WHERE type = 'kanji' AND (slug = '1169' OR id = '1169') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6133_publikasi, k_1672_menampilkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6133_publikasi, id FROM items WHERE type = 'kanji' AND (slug = '1230' OR id = '1230') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6134_tujuan, k_1673_tujuan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6135_penembakan, k_1673_tujuan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6135_penembakan, id FROM items WHERE type = 'kanji' AND (slug = '1377' OR id = '1377') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6136_pemakaman, k_1674_pemakaman);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6136_pemakaman, id FROM items WHERE type = 'kanji' AND (slug = '939' OR id = '939') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6137_untuk_mengubur, k_1674_pemakaman);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6138_kremasi, id FROM items WHERE type = 'kanji' AND (slug = '480' OR id = '480') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6138_kremasi, k_1674_pemakaman);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6234_menugaskan, id FROM items WHERE type = 'kanji' AND (slug = '1136' OR id = '1136') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6234_menugaskan, k_1662_menugaskan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6581_persemaian, id FROM items WHERE type = 'kanji' AND (slug = '842' OR id = '842') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6581_persemaian, id FROM items WHERE type = 'kanji' AND (slug = '1810' OR id = '1810') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8485_sutra, k_2384_sutra);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8556_tsukemono, id FROM items WHERE type = 'kanji' AND (slug = '2336' OR id = '2336') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8556_tsukemono, id FROM items WHERE type = 'kanji' AND (slug = '718' OR id = '718') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8689_elastisitas, k_1659_peluru);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8689_elastisitas, id FROM items WHERE type = 'kanji' AND (slug = '447' OR id = '447') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8847_tusuk_sate, k_8837_tusuk_sate);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8848_tusuk_sate_panggang, k_8837_tusuk_sate);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8848_tusuk_sate_panggang, id FROM items WHERE type = 'kanji' AND (slug = '1040' OR id = '1040') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8872_alis, k_8862_alis);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8873_alis, k_8862_alis);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8873_alis, id FROM items WHERE type = 'kanji' AND (slug = '701' OR id = '701') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_9062_berpelukan, k_1671_memeluk);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9401_air_liur, id FROM items WHERE type = 'kanji' AND (slug = '9394' OR id = '9394') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9401_air_liur, id FROM items WHERE type = 'kanji' AND (slug = '1487' OR id = '1487') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9402_meludah, id FROM items WHERE type = 'kanji' AND (slug = '9394' OR id = '9394') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9404_untuk_dihancurkan, id FROM items WHERE type = 'kanji' AND (slug = '9395' OR id = '9395') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9507_menonton_dan_mendengarkan, id FROM items WHERE type = 'kanji' AND (slug = '1234' OR id = '1234') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_9507_menonton_dan_mendengarkan, k_1660_mendengarkan);

END $$;
