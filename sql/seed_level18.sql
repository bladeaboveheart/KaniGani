-- ====================================================
-- KaniGani — Seed Data Level 18 (v2, relasional)
-- Auto-generated with Indonesian Slugs
-- ====================================================

DO $$
DECLARE
  -- ============ RADICAL IDs (Level 18) ============
  r_256_dahulu_kala UUID; r_257_penjudi UUID; r_258_sebelumnya UUID; r_259_masker UUID; r_260_kebahagiaan UUID; r_261_konflik UUID; r_262_peti_harta_karun UUID; r_415_siang UUID;

  -- ============ KANJI IDs (Level 18) ============
  k_1028_petunjuk UUID; k_1030_busur UUID; k_1031_mengumumkan UUID; k_1032_baik UUID; k_1033_mencapai UUID; k_1034_jenis UUID; k_1035_berita UUID; k_1037_setara UUID; k_1038_uap UUID; k_1039_meminjam UUID; k_1040_memanggang UUID; k_1041_duduk UUID; k_1042_lupa UUID; k_1043_mencuci UUID; k_1044_dada UUID; k_1045_otak UUID; k_1046_pendeta UUID; k_1047_zen UUID; k_1049_mungkin UUID; k_1050_izin UUID; k_1051_penghitung_benda_datar UUID; k_1052_diam UUID; k_1053_ayat UUID; k_1054_melarang UUID; k_1055_mengkonsumsi UUID; k_1056_merokok UUID; k_8838_tenggorokan UUID; k_8839_mengetuk UUID; k_8840_permen UUID; k_8990_frustrasi UUID; k_9246_menghubungkan UUID;

  -- ============ VOCABULARY IDs (Level 18) ============
  v_2903_untuk_diperbaiki UUID; v_3959_sisi_barat UUID; v_4011_hasil UUID; v_4026_pada_akhirnya UUID; v_4051_anggun UUID; v_4052_dialek_osaka UUID; v_4053_dialek_kansai UUID; v_4056_senin UUID; v_4059_pertukaran_pelajar UUID; v_4060_komedi UUID; v_4061_bagasi_tangan UUID; v_4063_sebuah_tertawa UUID; v_4064_peminjaman UUID; v_4065_untuk_meminjam UUID; v_4066_utang UUID; v_4067_rumah_kontrakan UUID; v_4068_kuil UUID; v_4069_pendeta_buddha UUID; v_4075_keluhan UUID; v_4076_kata_tabu UUID; v_4077_imut_imut UUID; v_4078_izin UUID; v_4079_terbagi UUID; v_4080_sangat_diperlukan UUID; v_4081_pengakuan UUID; v_4082_untuk_mengumumkan UUID; v_4083_iklan UUID; v_4084_pemberitahuan_sebelumnya UUID; v_4086_laporan UUID; v_4087_merokok UUID; v_4088_kafe UUID; v_4089_informasi UUID; v_4090_ramalan UUID; v_4091_untuk_melaporkan UUID; v_4092_laporan_berita UUID; v_4093_jimat UUID; v_4094_penjaga UUID; v_4095_seiza UUID; v_4096_meditasi_zen UUID; v_4097_kursi UUID; v_4098_ginza UUID; v_4099_stasiun_kereta_bento UUID; v_4100_busur UUID; v_4101_panahan UUID; v_4102_untuk_melupakan UUID; v_4103_pesta_akhir_tahun UUID; v_4104_draf_kasar UUID; v_4105_untuk_menulis UUID; v_4106_cara_menulis UUID; v_4108_berapa_banyak_benda_datar UUID; v_4109_jumlah_lembar UUID; v_4110_lima_benda_datar UUID; v_4111_untuk_mencuci UUID; v_4112_tempat_cuci_mobil UUID; v_4113_perbaikan UUID; v_4115_untuk_memanggang UUID; v_4116_terbakar_sinar_matahari UUID; v_4117_ayam_panggang UUID; v_4118_daging_panggang UUID; v_4119_matahari_terbenam UUID; v_4120_merokok UUID; v_4121_asap_hitam UUID; v_4125_dilarang_merokok UUID; v_4126_terlarang UUID; v_4127_kuil_zen UUID; v_4128_pendeta_zen UUID; v_4130_ras_manusia UUID; v_4131_setara UUID; v_4132_tanda_setara UUID; v_4133_kelas_satu UUID; v_4135_pelatihan UUID; v_4136_dada UUID; v_4137_otak UUID; v_4138_kematian_otak UUID; v_4139_otak UUID; v_4140_indoktrinasi UUID; v_4142_mencoret_coret UUID; v_4143_kartu_pos UUID; v_4144_kunyomi UUID; v_4145_pelajaran UUID; v_4146_untuk_mengizinkan UUID; v_4151_teman UUID; v_4152_untuk_memberikan UUID; v_4153_menguasai UUID; v_4154_penularan UUID; v_4155_diam UUID; v_4156_tetap UUID; v_4157_tenang UUID; v_4158_kemanusiaan UUID; v_4159_klasifikasi UUID; v_4160_baik UUID; v_4161_kerabat UUID; v_4350_buku_petunjuk UUID; v_4351_kereta_uap UUID; v_4352_kapal_uap UUID; v_4355_dokumen UUID; v_4361_selasa UUID; v_4840_mungkin UUID; v_5845_untuk_menutup UUID; v_7151_aman UUID; v_7454_penghitung_benda_datar UUID; v_7479_untuk_duduk UUID; v_7549_sufiks_yang_jamak UUID; v_7592_peringatan UUID; v_7645_untuk_mengeras UUID; v_7646_untuk_mencapai UUID; v_7699_jauh_sekali UUID; v_7702_nyanyian_pengantar_tidur UUID; v_7703_kelas_tinggi UUID; v_7704_formulir_kamus UUID; v_7760_persamaan UUID; v_8673_kebahagiaan UUID; v_8710_untuk_melarang UUID; v_8807_barang_barang UUID; v_8849_tenggorokan UUID; v_8851_pangkal_tenggorokan UUID; v_8852_untuk_menyerang UUID; v_8854_permen UUID; v_8855_patung_gula UUID; v_8927_untuk_menjadi_lebih_baik UUID; v_8997_untuk_menggertak UUID; v_9021_untuk_terlibat UUID; v_9035_cinta_pertama UUID; v_9247_untuk_terhubung UUID; v_9479_serius UUID;

BEGIN

  DELETE FROM items WHERE level = 18;

  -- 1. RADICALS
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '昔', 'dahulu-kala', 18, 1, 'Radikal ini sama dengan kanji. Artinya <radikal>lama sekali</radikal>.')
    RETURNING id INTO r_256_dahulu_kala;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '尭', 'penjudi', 18, 2, 'Ini adalah <radikal>penjudi</radikal> radikal. Bayangkan 十 di atasnya sebagai topi koboi berukuran sepuluh galon, diletakkan di atas kepala seorang pria yang memegang kartu di masing-masing tangannya, dengan tumpukan chip kasino yang tinggi menjulang dari meja di depannya. Dia adalah stereotip penjudi berisiko tinggi.

Anda juga dapat mengingat hal ini dengan komponennya: seorang penjudi memegang salib saat bermain blackjack, berdiri dengan kedua kakinya penuh harap, berdoa agar menang karena dia baru saja mempertaruhkan kaki tersebut pada kartu berikutnya.')
    RETURNING id INTO r_257_penjudi;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '先', 'sebelumnya', 18, 3, 'Radikal ini sama dengan kanji. Artinya <radikal>sebelumnya</radikal>.')
    RETURNING id INTO r_258_sebelumnya;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '曽', 'masker', 18, 4, 'Ini terlihat seperti <radical>topeng</radical>, bukan? Jenis topeng yang menakutkan dan bukan manusia, dengan tanduk di atasnya dan sebagainya, tapi yang pasti topeng.')
    RETURNING id INTO r_259_masker;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '幸', 'kebahagiaan', 18, 5, 'Radikal ini sama dengan kanji. Artinya <radikal>kebahagiaan</radikal>. Jangan bingung dengan 辛 radikal pedas, keduanya sangat mirip!')
    RETURNING id INTO r_260_kebahagiaan;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '争', 'konflik', 18, 6, 'Radikal ini sama dengan kanji. Artinya <radikal>konflik</radikal>.')
    RETURNING id INTO r_261_konflik;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '凶', 'peti-harta-karun', 18, 7, 'Ada harta karun radikal di dalam kotak ini. Apa yang menyimpan harta karun? <radikal>peti harta karun</radikal>.')
    RETURNING id INTO r_262_peti_harta_karun;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '午', 'siang', 18, 8, 'Radikal ini sama dengan kanji. Artinya <radikal>siang</radikal>.')
    RETURNING id INTO r_415_siang;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_256_dahulu_kala, 'Dahulu kala', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_257_penjudi, 'Penjudi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_258_sebelumnya, 'Sebelumnya', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_259_masker, 'Masker', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_260_kebahagiaan, 'Kebahagiaan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_261_konflik, 'Konflik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_262_peti_harta_karun, 'Peti Harta Karun', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_415_siang, 'Siang', true, true);

  -- 2. KANJIS
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '訓', 'petunjuk', 18, 9, 'Anda <radical>mengatakan</radical> sesuatu ke <radical>sungai</radical>, memberinya <kanji>instruksi</kanji>. Sungai ini adalah sungai baru sehingga memerlukan Anda untuk mengatakan sesuatu, memberikan instruksi tentang apa yang harus dilakukan. Kalau tidak, sungai tidak akan tahu bagaimana harus bersikap.', 'Sebenarnya, Anda memberikan <kanji>instruksi</kanji> sungai ini dalam seni kuno <reading>kun</reading>g fu (くん).')
    RETURNING id INTO k_1028_petunjuk;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '弓', 'busur', 18, 10, 'Radikal <radikal>busur</radikal> dan kanji <kanji>busur</kanji> sama persis!', 'Anda memiliki <kanji>busur</kanji> di satu tangan dan di tangan lainnya... sebuah <reading>cu</reading>cumber (きゅう). Anda akan memasukkan mentimun ini dengan busur ini ke dalam salad yang Anda buat. Banyak orang yang tidak mengetahui hal ini, namun hal ini membuat rasa mentimun Anda lebih enak.')
    RETURNING id INTO k_1030_busur;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '告', 'mengumumkan', 18, 11, 'Anda melihat <radical>slide</radical> tertutup <radical>kotoran</radical> dan menggunakan <radical>mulut</radical> Anda untuk membersihkannya. Kemudian, Anda <kanji>mengumumkan</kanji> kepada semua orang bahwa slide tersebut bersih dan mereka dapat menggunakannya kembali dengan aman.', 'Setelah Anda <kanji>mengumumkan</kanji> slide sudah bersih, Anda meneguk <reading>Coke</reading> (こく). Slide yang kotor meninggalkan rasa tidak enak di mulut Anda, tetapi Coke membantu menghilangkannya.')
    RETURNING id INTO k_1031_mengumumkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '種', 'baik', 18, 12, 'Jika <radical>butiran</radikal> tampak sangat <radikal>berat</radikal>, Anda tahu bahwa itu adalah <kanji>jenis</kanji> yang berbeda. Tidak semua <kanji>jenis</kanji> butiran itu sama. Jadi ketika Anda merasakan tipe yang berat, Anda tahu itu tidak sama dengan tipe yang ringan.', 'Anda mengurutkan semua <kanji>jenis</kanji> dan <kanji>jenis</kanji> yang berbeda dengan menempatkannya di <reading>chu</reading>tes (しゅ) yang benar. Mereka meluncur menjauh, mungkin ke tumpukan besar berbasis tipe yang tidak dapat Anda lihat.')
    RETURNING id INTO k_1032_baik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '達', 'mencapai', 18, 13, 'Anda mengendarai <radical>skuter</radical> melewati <radical>tanah</radical> sambil membawa <radical>domba</radical> karena Anda bertekad untuk <kanji>mencapai</kanji> sesuatu. Kebesaran? Kejayaan? Ketenaran abadi? Mungkin Anda akan mendapatkan kombinasi <kanji>jamak</kanji> dari semua hal tersebut. Lagipula, Anda <em>adalah</em> pengendara skuter off-road pengangkut domba terbaik yang pernah ada di dunia.', 'Setelah Anda <kanji>mencapai</kanji> kombinasi kemuliaan, keagungan, dan ketenaran <kanji>jamak</kanji>, Anda akan mendapatkan <reading>tato</reading> (たつ) untuk merayakan: "yang terhebat di dunia", dengan huruf gotik, di atas gambar Anda dan domba Anda di atas skuter.')
    RETURNING id INTO k_1033_mencapai;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '類', 'jenis', 18, 14, '<radical>beras</radical> yang Anda berikan ke <radical>besar</radical> <radical>geoduck</radical> dapat berupa <kanji>jenis</kanji>, <kanji>jenis</kanji>, atau <kanji>kategori</kanji> apa saja. Tidak peduli apa jenis nasinya, geoduck besar akan memakannya.', 'Sambil memakan setiap <kanji>jenis</kanji> dan <kanji>jenis</kanji> nasi dari setiap <kanji>kategori</kanji>, geoduck besar itu menjadi semakin besar. Tubuhnya <read>rui</read>ned (るい). Ini sangat obesitas. Geoduck ini telah memakan dirinya sendiri hingga hancur.')
    RETURNING id INTO k_1034_jenis;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '報', 'berita', 18, 15, 'Anda ingin berbagi <radical>kebahagiaan</radikal> dengan orang-orang sehingga Anda <radikal>mencap</radikal> <radikal>buang air besar</radikal> dengan <kanji>berita</kanji>. Kini ketika orang ingin <kanji>laporan</kanji> tentang semua hal bahagia yang terjadi, mereka cukup melihat ke bawah sebelum duduk.', 'Anda meneliti dan <kanji>melaporkan</kanji> <kanji>berita</kanji> dari <reading>ho</reading>saya (ほう). Baru setelah itu, setelah semua berita terpampang di bangku, barulah Anda meninggalkan rumah.')
    RETURNING id INTO k_1035_berita;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '等', 'setara', 18, 16, '<radikal>bambu</radikal> <radikal>Kuil</radikal> <kanji>sama</kanji> dengan semua kuil non-bambu lainnya. Hanya karena terbuat dari bambu tidak membuatnya menjadi kurang istimewa dan spiritual.', 'Kuil bambu juga berjarak <kanji>sama</kanji> dari kuil lain di <reading>とう</reading>きょう. Saat kamu melihat peta kuil とうきょう, kamu bisa mengukurnya dan semuanya akan sama sempurna.')
    RETURNING id INTO k_1037_setara;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '汽', 'uap', 18, 17, 'Air dari <radical>tsunami</radical> dapat menghasilkan banyak <radical>energi</radical> ketika diubah menjadi <kanji>uap</kanji>. Tenaga uap dulunya merupakan hal yang populer pada masa itu. Uap berasal dari air, air berasal dari tsunami, jadi logikanya tsunami adalah sumber energi yang besar.', 'Untuk menampung energi <kanji>uap</kanji> ini dan menyimpannya untuk nanti, Anda menguncinya di dalam kotak dengan <membaca>kunci</reading> (き). Dengan begitu energi tersebut dapat digunakan di lain waktu. Asalkan Anda tidak kehilangan kuncinya.')
    RETURNING id INTO k_1038_uap;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '借', 'meminjam', 18, 18, '<radical>pemimpin</radikal> Anda sejak <radical>dulu</radikal> berpikir untuk <kanji>meminjam</kanji> sesuatu yang berharga dari Anda. Pemimpin ini tidak mengembalikan barang yang dipinjamnya, dan sekarang dia akan membayarnya.', 'Dalam kemarahanmu, kamu memutuskan untuk menemukan pemimpin ini, mengambil kembali milikmu, dan sebagai imbalannya, <kanji>meminjam</kanji> nyawa pemimpin tersebut. Jadi Anda menemukannya, menangkapnya, dan melemparkannya ke <read>gubuk</reading> (しゃく) — di mana Anda "meminjam" beberapa bagian dari pemimpin itu sendiri, dan melakukan hal-hal buruk lainnya padanya.')
    RETURNING id INTO k_1039_meminjam;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '焼', 'memanggang', 18, 19, 'Dalam <radikal>api</radikal> yang berbahaya, seorang <radikal>penjudi</radikal> akan selalu mencoba untuk <kanji>memanggang</kanji> sesuatu sebelum melarikan diri ke tempat yang aman. Bisa saja rumahnya sendiri terbakar, dan penjudi masih akan menggunakan sumber panas gratis untuk membuat kue. Mungkin dia berjudi bahwa makanan yang dipanggang itu akan mengimbangi biaya rumah baru…

Kanji ini juga berarti <kanji>membakar</kanji>, karena itulah yang terjadi jika Anda memaparkan sesuatu ke suhu yang sangat panas.', 'Dia biasa <kanji>memanggang</kanji> untuk <reading>Ya</reading>nkees (や). Kue bisbol, baguette kelelawar, dan sebagainya. Cedera dapur yang mengakhiri kariernya memaksanya untuk pensiun. Saat itulah dia mengembangkan masalah perjudian. Tapi dia masih suka membuat kue setiap kali Yankees tampil di TV.')
    RETURNING id INTO k_1040_memanggang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '座', 'duduk', 18, 20, 'Di bawah <radical>kanopi</radikal>, ada dua <radikal>orang</radikal> di <radikal>tanah</radikal>. Apa yang mereka lakukan di sana? Mereka <kanji>duduk</kanji>. Masyarakat memanfaatkan tanah di bawah kanopi sebagai <kanji>tempat duduk</kanji> untuk pantat mereka.', 'Siapa yang memutuskan orang harus <kanji>duduk</kanji> seperti ini? C<reading>za</reading>r (ざ). Tsar ingin berada di atas semua orang, jadi dia menyuruh mereka duduk di tanah di bawah kanopi sementara dia berkeliling dengan menunggang kuda atau semacamnya, menjulang tinggi di atas mereka saat mereka duduk.')
    RETURNING id INTO k_1041_duduk;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '忘', 'lupa', 18, 21, '<radikal>kematian</radikal> <radikal>hati</radikal> Anda akan menyebabkan Anda <kanji>melupakan</kanji> semua hal terpenting. Orang mengira kenangan disimpan di otak Anda, tapi itu tidak benar. Hatimu adalah tempat menyimpan semua kenanganmu yang paling berharga, dan ketika mati, kamu melupakan semuanya.', 'Ketika seseorang <kanji>lupa</kanji> segalanya, yang tersisa hanya satu hal yang harus dilakukan: <reading>membungkuk</reading>ling (ぼう). Bowling itu mudah, dan tidak ada yang perlu dilupakan. Anda mengambil bola. Anda menjatuhkannya. Segala sesuatu yang lain secara otomatis diurus.')
    RETURNING id INTO k_1042_lupa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '洗', 'mencuci', 18, 22, '<radikal>tsunami</radikal> <radikal>sebelumnya</radikal>telah memberikan <kanji>pencucian</kanji> yang baik di kota ini. Ada banyak laundry di kota ini, jadi ketika tsunami melanda, semua deterjen tercampur dengan air dan membuat semuanya tercuci dengan baik.', 'Bukan hanya kotanya yang mendapat <kanji>wash</kanji>, <reading>cen</reading>taurs (せん) juga. (Centaur kebetulan tinggal di kota ini.) Dan karena setengah kuda, centaur memiliki banyak rambut yang perlu dicuci. Untungnya, tsunami sabun juga memberi dampak positif bagi mereka.')
    RETURNING id INTO k_1043_mencuci;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '胸', 'dada', 18, 23, 'Di dalam <radical>bulan</radical> <radical>penjara</radical>, terdapat <radical>peti harta karun</radical> yang berisi <kanji>peti</kanji> emas. Pelindung dada yang kuat ini akan memberi Anda perlindungan dari hampir semua serangan, karena dilengkapi dengan sihir bulan.', 'Dari mana armor <kanji>dada</kanji> ini berasal? Itu dari bulan. Sekarang bagaimana Anda mengatakannya jika Anda orang Kanada? Itu dari <reading>bulan, eh</reading> (むね). Benar, pelindung dada ini berasal dari bulan, eh.')
    RETURNING id INTO k_1044_dada;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '脳', 'otak', 18, 24, 'Terletak di bawah cahaya <radical>bulan</radical> di <radical>rumput</radical> adalah <radical>peti harta karun</radical> yang dapat Anda lihat dengan <kanji>otak</kanji> Anda. Anda memejamkan mata, dan Anda dapat melihat titik itu, namun titik itu tersimpan jauh di dalam otak Anda, dan Anda harus menggunakan kekuatannya untuk menemukannya.', 'Jika Anda dapat membuka rahasia <kanji>otak</kanji> Anda, Anda akan memiliki kekuatan seperti <reading>Tidak</reading>stradamus (のう). Nostradamus bisa melihat ke dalam peti harta karun otaknya yang tersembunyi dan melihat masa depan, jadi mungkin Anda juga bisa seperti dia.')
    RETURNING id INTO k_1045_otak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '僧', 'pendeta', 18, 25, 'Seorang <radikal>pemimpin</radikal> agama yang mengenakan <radikal>topeng</radikal> bisa saja seorang <kanji>biarawan</kanji> atau <kanji>pendeta</kanji>. Entahlah, wajah mereka ditutupi topeng!', '<kanji>biksu</kanji> atau <kanji>pendeta</kanji> ini mengenakan topeng untuk melindungi <reading>sou</reading>l (そう) mereka. Anda bukan seorang biarawan atau pendeta, jadi mereka tidak ingin pandangan Anda yang tidak cukup religius mengotori jiwa mereka.')
    RETURNING id INTO k_1046_pendeta;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '禅', 'zen', 18, 26, 'Anda ingin <radikal>semangat</radikal> Anda menjadi <radikal>sederhana</radikal> sehingga Anda mempraktikkan <kanji>Buddha Zen</kanji>. Zen adalah tentang bermeditasi dan melepaskan hal-hal duniawi. Tidak ada yang lebih sederhana untuk semangat Anda selain menjadi <kanji>Zen</kanji>.', 'Pembacaan kanji ini adalah <reading>Zen</reading> (ぜん), sama seperti <kanji>Zen</kanji> dalam <kanji>Zen Buddhism</kanji>. Cukup mudah diingat, bukan? Ingatlah bahwa bacaannya sama dengan artinya. Sangat mudah!')
    RETURNING id INTO k_1047_zen;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '可', 'mungkin', 18, 27, 'Dengan <radical>cincin bibir</radical>, segalanya <kanji>mungkin</kanji>. Memiliki cincin bibir memberi Anda kekuatan untuk menaklukkan rintangan apa pun, mencapai tujuan apa pun. Selama itu adalah cincin bibir yang <kanji>lumayan</kanji>, itu saja. Kalau kurang bagus, tidak mungkin bisa lumayan.', 'Karena segalanya <kanji>mungkin</kanji> dengan cincin bibir <kanji>lumayan</kanji> baru Anda, Anda menggunakannya untuk mendapatkan <reading>ca</reading>r (か) yang baru. Anda pergi ke dealer mobil dan meminta mobil gratis (lumayan). Manajer terkesan dengan cincin bibir Anda dan dengan senang hati menyerahkan kunci model terbaru mobil favorit Anda. Tidak buruk.')
    RETURNING id INTO k_1049_mungkin;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '許', 'izin', 18, 28, '<radical>Ucapkan</radical> pada <radical>siang hari</radical>. Itulah satu-satunya saat saya <kanji>mengizinkan</kanji> Anda mengucapkannya. Itulah satu-satunya saat saya <kanji>mengizinkan</kanji> Anda mengucapkannya. Selain itu, tidak mengatakan apa pun. Siang hari adalah jendelamu.', 'Di manakah aturan-aturan kuno yang mengerikan ini ada? Versi lebih kecil dari Kyoto, Little <reading>Kyo</reading>to (きょ). Kyoto normal baik-baik saja. Yang lebih kecil ini adalah tempat sekelompok orang pergi untuk menciptakan kota kecil mereka sendiri dengan aturan bodoh mereka sendiri.')
    RETURNING id INTO k_1050_izin;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '枚', 'penghitung-benda-datar', 18, 29, '<radical>pohon</radical> yang ditebang pada <radical>musim dingin</radical> dapat digunakan sebagai <kanji>penghitung benda datar</kanji>. Karena ini musim dingin, semua daun telah rontok dari pohonnya, sehingga mudah untuk dipotong menjadi beberapa bagian. Bilah ini dapat digunakan sebagai penghitung benda datar.', 'Saat Anda menghitung setiap <kanji>penghitung benda datar</kanji>, sekelompok <reading>mi</reading>ce (まい) muncul dan mulai memanjat ke seluruh tubuh Anda. Ini tidak akan berhasil, jadi ambil dua bilah dan mulailah menghancurkan dan meratakan semua tikus. Karena mouse-nya juga berbentuk datar, Anda juga dapat menggunakannya sebagai penghitung benda datar. Kerja bagus, tikus.')
    RETURNING id INTO k_1051_penghitung_benda_datar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '静', 'diam', 18, 30, 'Di dalam air <radikal>biru</radikal>, sebuah <radikal>konflik</radikal> muncul, namun dibuat <kanji>tenang</kanji> oleh kekuatan meredam cairan. Di bawah air biru ini terdapat konflik besar antara dua monster laut, namun di permukaan tampak damai dan tenang karena air mencegah suara naik ke atas permukaan.', 'Saat Anda menonton di bawah air <kanji>tenang</kanji>, sesekali <reading>sa</reading>ber (せい) menembus permukaan dan secara diam-diam mengiris kembali ke bawah.')
    RETURNING id INTO k_1052_diam;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '句', 'ayat', 18, 31, 'Radikal <radikal>paragraf</radikal> dan kanji <kanji>paragraf</kanji> sama persis!', 'Anda harus menulis seluruh <kanji>paragraf</kanji> tentang suatu topik, jadi Anda memilih <reading>coo</reading>kies (く).')
    RETURNING id INTO k_1053_ayat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '禁', 'melarang', 18, 32, 'Membunuh dua <radical>pohon</radical> dengan <radical>jackhammer</radical> secara tegas <kanji>dilarang</kanji>d. Jangan salah paham, Anda bisa merobohkan satu pohon dengan jackhammer Anda, tapi tidak dua.', 'Orang yang memutuskan untuk <kanji>melarang</kanji> memalu dua pohon adalah <reading>Kin</reading>g (きん) dari Inggris. Dia satu-satunya orang yang mampu melarang hal-hal tertentu, jadi itu pasti dia.')
    RETURNING id INTO k_1054_melarang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '喫', 'mengkonsumsi', 18, 33, 'Di <radical>mulut</radical> Anda dan sampai ke <radical>tulang rusuk</radical> Anda ada <radical>pedang</radical> yang <radical>besar</radical>. Namun tidak terlalu besar untuk Anda <kanji>konsumsi</kanji>. Itu sebabnya ia ada di sana — Anda mengkonsumsinya. Mengapa Anda melakukan itu? Anda pasti salah satu pemain sirkus yang menelan pedang.', 'Trik "<kanji>memakan</kanji> pedang" ini disertakan dengan <reading>kit</reading> (きつ) sihir murah yang Anda miliki.')
    RETURNING id INTO k_1055_mengkonsumsi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '煙', 'merokok', 18, 34, 'Jika Anda memiliki <radical>api</radikal> dan <radikal>helikopter</radikal> yang melayang di sampingnya, akan ada banyak <radikal>kotoran</radikal> dan <kanji>asap</kanji> yang mengepul. Kebanyakan merokok, karena kebakaran. Sekarang ada di mata dan mulutmu. Itu masuk ke paru-paru Anda dan Anda tidak bisa bernapas. Wah, helikopter, kenapa!', '<kanji>asap</kanji> terlalu banyak dan Anda menyadari ini adalah <reading>en</reading>d (えん) untuk Anda. Kamu akan mati di sini!')
    RETURNING id INTO k_1056_merokok;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '喉', 'tenggorokan', 18, 35, 'Ke dalam <radical>mulut</radical> Anda, <radical>pemimpin</radical> menembakkan <radical>panah</radical> dengan <radical>kail</radical> yang terpasang sehingga mereka dapat melihat ke dalam <kanji>tenggorokan</kanji> Anda.', 'Dari <kanji>tenggorokan</kanji> Anda mendengar sebuah suara. Bukan milikmu, tapi milikmu yang kamu kenali. Ini <membaca>こう</membaca>いち! Apa yang dilakukan bajingan itu di tenggorokanmu?')
    RETURNING id INTO k_8838_tenggorokan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '叩', 'mengetuk', 18, 36, 'Di <radical>mulut</radical> Anda terdapat <radical>cap</radical> yang Anda <kanji>ketuk</kanji>, <kanji>pukul</kanji> dan <kanji>tampar</kanji> untuk menciptakan irama! Perangkonya tampak seperti drum kecil, tetapi sebenarnya Anda hanya memukul mulut untuk bersenang-senang (perangko itu adalah alasan untuk membuatnya tampak normal).', 'Saat Anda <kanji>mengetuk</kanji> dan <kanji>menekan</kanji> cap di mulut Anda, Anda akan mengeluarkan bunyi <reading>ta-ta</reading> (たた). Bayangkan diri Anda membuat irama dengan stempel drum kecil di mulut Anda. Sekarang dengarkan... たた! Di sana! Apakah kamu mendengarnya?')
    RETURNING id INTO k_8839_mengetuk;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '飴', 'permen', 18, 37, 'Apa yang Anda <radikal>makan</radikal> seperti <radikal>mesin</radikal>? <kanji>Permen</kanji>!', '<kanji>Permen</kanji> ini khususnya hanyalah tetesan gula bening yang mengeras dan terlihat seperti tetesan <reading>雨</reading> (あめ).')
    RETURNING id INTO k_8840_permen;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '苛', 'frustrasi', 18, 38, 'Menggunakan <radical>bunga</radical> untuk membuat <radical>cincin bibir</radical> akan selalu berakhir dengan <kanji>frustasi</kanji>.', 'Setelah beberapa <kanji>frustasi</kanji>, Anda membuat cincin bibir bunga. Sekarang kamu terlihat seperti firaun <reading>Egy</reading>ptian (いじ). Karena semua raja Mesir kuno memakai cincin bibir berbunga-bunga (fakta sejarah)!')
    RETURNING id INTO k_8990_frustrasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '繋', 'menghubungkan', 18, 39, 'Anda memiliki <radical>mobil</radical>, <radical>senjata</radical>, dan beberapa <radical>benang</radical> tergeletak di mana-mana. Jadi tentu saja Anda memutuskan untuk <kanji>menghubungkan</kanji> semuanya.', 'Hanya ada satu alasan Anda <kanji>menghubungkan</kanji> semua ini bersama-sama: <reading>Tuna</reading> (つな) memancing. Jelas sekali!')
    RETURNING id INTO k_9246_menghubungkan;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1028_petunjuk, 'Petunjuk', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1030_busur, 'Busur', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1031_mengumumkan, 'Mengumumkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1032_baik, 'Baik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1032_baik, 'Jenis', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1032_baik, 'Benih', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1033_mencapai, 'Mencapai', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1033_mencapai, 'Jamak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1034_jenis, 'Jenis', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1034_jenis, 'Kategori', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1034_jenis, 'Baik', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1035_berita, 'Berita', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1035_berita, 'Laporan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1037_setara, 'Setara', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1038_uap, 'Uap', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1039_meminjam, 'Meminjam', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1040_memanggang, 'Memanggang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1040_memanggang, 'Membakar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1041_duduk, 'Duduk', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1041_duduk, 'Kursi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1042_lupa, 'Lupa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1043_mencuci, 'Mencuci', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1044_dada, 'Dada', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1044_dada, 'Dada', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1045_otak, 'Otak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1046_pendeta, 'Pendeta', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1046_pendeta, 'Biarawan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1047_zen, 'Zen', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1047_zen, 'Buddhisme Zen', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1049_mungkin, 'Mungkin', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1049_mungkin, 'Mendingan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1050_izin, 'Izin', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1050_izin, 'Mengizinkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1051_penghitung_benda_datar, 'Penghitung Benda Datar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1051_penghitung_benda_datar, 'Penghitung Untuk Benda Datar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1052_diam, 'Diam', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1053_ayat, 'Ayat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1054_melarang, 'Melarang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1054_melarang, 'Larangan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1055_mengkonsumsi, 'Mengkonsumsi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1055_mengkonsumsi, 'Mengambil bagian', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1056_merokok, 'Merokok', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_8838_tenggorokan, 'Tenggorokan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_8839_mengetuk, 'Mengetuk', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_8839_mengetuk, 'Memukul', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_8839_mengetuk, 'Tamparan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_8840_permen, 'Permen', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_8990_frustrasi, 'Frustrasi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_9246_menghubungkan, 'Menghubungkan', true, true);

  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1028_petunjuk, 'くん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1028_petunjuk, 'よ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1030_busur, 'きゅう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1030_busur, 'ゆみ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1031_mengumumkan, 'こく', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1031_mengumumkan, 'つ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1032_baik, 'しゅ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1032_baik, 'たね', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1032_baik, 'ぐさ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1033_mencapai, 'たつ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1033_mencapai, 'たち', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1034_jenis, 'るい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1034_jenis, 'たぐ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1035_berita, 'ほう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1035_berita, 'むく', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1037_setara, 'とう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1037_setara, 'ひと', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1037_setara, 'など', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1038_uap, 'き', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1039_meminjam, 'しゃく', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1039_meminjam, 'か', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1040_memanggang, 'や', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1040_memanggang, 'しょう', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1041_duduk, 'ざ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1041_duduk, 'すわ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1042_lupa, 'ぼう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1042_lupa, 'わす', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1043_mencuci, 'せん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1043_mencuci, 'あら', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1044_dada, 'むね', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1044_dada, 'きょう', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1045_otak, 'のう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1046_pendeta, 'そう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1047_zen, 'ぜん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1049_mungkin, 'か', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1050_izin, 'きょ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1050_izin, 'ゆる', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1051_penghitung_benda_datar, 'まい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1052_diam, 'せい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1052_diam, 'しず', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1053_ayat, 'く', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1054_melarang, 'きん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1055_mengkonsumsi, 'きつ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1056_merokok, 'えん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1056_merokok, 'けむ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1056_merokok, 'けむり', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_8838_tenggorokan, 'こう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_8838_tenggorokan, 'のど', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_8839_mengetuk, 'たた', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_8839_mengetuk, 'こう', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_8839_mengetuk, 'はた', 'kunyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_8840_permen, 'あめ', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_8990_frustrasi, 'いじ', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_8990_frustrasi, 'いら', 'kunyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_8990_frustrasi, 'さいな', 'kunyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_8990_frustrasi, 'か', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_9246_menghubungkan, 'つな', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_9246_menghubungkan, 'けい', 'onyomi', false, false);

  -- 3. VOCABULARIES
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '直る', 'untuk-diperbaiki', 18, 40, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Anda sudah mengetahui bahwa 直す berarti "memperbaiki", yaitu seseorang yang secara aktif melakukan perbaikan. Nah, 直る menempatkan fokus pada hal yang diperbaiki, jadi itu berarti <vocabulary>diperbaiki</vocabulary> atau <vocabulary>kembali berfungsi</vocabulary>.

Dengan kata lain, jangan gunakan kata tersebut untuk mengatakan "Saya telah memperbaikinya", namun gunakanlah kata tersebut untuk mengatakan "Sudah diperbaiki!" atau "Ini kembali normal!" Untuk mengingat hal ini, bayangkan orang Inggris dengan penuh semangat berteriak, “Toilet saya (る) rusak, tapi sekarang sudah diperbaiki!”', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda mempelajari bacaan ini dengan 直す, tapi inilah mnemonik jika Anda lupa:

Ada yang perlu <vocabulary>diperbaiki</vocabulary> <reading>sekarang</reading> (なお)! Serius, ini mendesak! Anda memerlukan benda ini <vocabulary>untuk kembali berfungsi</vocabulary> sekarang juga!', 'Untuk Diperbaiki, Untuk Kembali Bekerja, Untuk Kembali Normal')
    RETURNING id INTO v_2903_untuk_diperbaiki;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '西側', 'sisi-barat', 18, 41, '<kanji>barat</kanji> <kanji>sisi</kanji> sesuatu dikenal sebagai <vocabulary>barat</vocabulary> atau <vocabulary>sisi barat</vocabulary>. Maaf, saya tidak bisa memikirkan cerita sisi barat yang bagus untuk mnemonik ini.', 'Kata ini menggunakan bacaan kun''yomi, yang keduanya kebetulan Anda pelajari dengan kanji. Jika Anda ingat ini adalah kun''yomi di sini, silakan berangkat!', 'Sisi Barat, Barat')
    RETURNING id INTO v_3959_sisi_barat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '結果', 'hasil', 18, 42, 'Anda <kanji>mengikat</kanji> sekumpulan <kanji>buah</kanji> bersama-sama karena Anda penasaran seperti apa <vocabulary>hasil</vocabulary> nantinya. Akankah buahnya tahan jika diikat begitu erat? Atau akankah semuanya meledak dalam siraman jus buah dan ampas buah? Anda tidak sabar untuk mengetahui <vocabulary>hasil</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Perhatikan saja bahwa 結 disingkat menjadi けっ.', 'Hasil, Hasil')
    RETURNING id INTO v_4011_hasil;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '結局', 'pada-akhirnya', 18, 43, 'Saat Anda berada dalam <kanji>bind</kanji>, mengunjungi <kanji>biro</kanji> mungkin merupakan satu-satunya pilihan Anda <vocabulary>pada akhirnya</vocabulary>. Anda sebenarnya berharap untuk menghindarinya, tapi sepertinya Anda harus pergi <vocabulary>bagaimanapun juga</vocabulary>.

結局 digunakan untuk membicarakan hasil akhir setelah semuanya dikatakan dan dilakukan. Hal ini sering kali membawa nuansa bahwa, meskipun berbagai faktor mengarah pada sesuatu, segala sesuatunya tidak berjalan sesuai harapan atau hasilnya tidak ideal, seperti 結局行かなかった (<vocabulary>pada akhirnya</vocabulary>, saya tidak jadi pergi).', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Perhatikan bahwa けつ diubah menjadi けっ seperti yang sering terjadi pada situasi ini.', 'Pada akhirnya, Bagaimanapun, Akhirnya')
    RETURNING id INTO v_4026_pada_akhirnya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '上品', 'anggun', 18, 44, 'Ingat bagaimana 下品 bersifat "kasar" dan "vulgar" - ini jelas merupakan kebalikannya. Ini <vocabulary>elegan</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Anggun')
    RETURNING id INTO v_4051_anggun;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '大阪弁', 'dialek-osaka', 18, 45, 'Ingat 大阪 (Osaka)? Ini adalah <kanji>dialek</kanji> yang mereka ucapkan di sana, sehingga menjadikan kata ini sebagai <vocabulary>dialek Osaka</vocabulary>.', 'Jika Anda tahu cara membaca 大阪, Anda cukup menambahkan 弁 ke dalamnya dan bisa membaca keseluruhannya, meskipun mungkin tidak dalam <vocabulary>dialek Osaka</vocabulary>. Oke, baiklah, mungkin hal yang sama terjadi dalam dialek Osaka.', 'Dialek Osaka')
    RETURNING id INTO v_4052_dialek_osaka;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '関西弁', 'dialek-kansai', 18, 46, 'Ingat 関西, wilayah Kansai di Jepang? Ya, mereka punya <kanji>dialek</kanji> sendiri — <vocabulary>Dialek Kansai</vocabulary>.

関西弁 sebenarnya bisa merujuk pada sejumlah dialek lokal dari wilayah Kansai. Ada banyak sekali bahasa tersebut (beberapa di antaranya adalah dialek Osaka, Kyoto, dan Nara), semuanya dengan sedikit perbedaan dalam pengucapan dan kosa kata yang membedakannya dari bahasa Jepang standar yang biasa Anda dengar di Tokyo.', 'Bacaan ini hanya menggabungkan kosakata 関西 dengan bacaan kanji untuk 弁.', 'Dialek Kansai')
    RETURNING id INTO v_4053_dialek_kansai;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '月曜日', 'senin', 18, 47, 'Ini adalah hari dalam seminggu. Anda tahu ini karena ada 曜日 di dalamnya. Tapi hari apa dalam seminggu ini? Hari "<kanji>bulan</kanji>" dalam seminggu adalah <vocabulary>Senin</vocabulary>. Mengapa? Karena "Bulan" sebenarnya hanyalah "Senin", bukan?', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Bagian 曜日 dibaca seperti kata 曜日 yang telah Anda pelajari, namun 月 memiliki dua bacaan on''yomi yang berbeda, jadi inilah mnemonik untuk membantu Anda mengingat mana yang harus digunakan:

<vocabulary>Senin</vocabulary> adalah hari ketika seseorang <reading>mendapatkan</reading> (げつ) kembali ke jadwal normalnya di hari kerja. Dia bangun dari tempat tidur, masuk ke mobil, mulai bekerja, dan mendapatkan gaji setelah itu!', 'Senin')
    RETURNING id INTO v_4056_senin;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '留学生', 'pertukaran-pelajar', 18, 48, 'Ingat 留学, yang artinya "belajar di luar negeri"? Apakah Anda juga ingat 学生, yang berarti "siswa"? Kata ini seperti dua kata yang digabung menjadi satu (bersama 学), menjadikannya "siswa yang belajar di luar negeri". Apa cara yang lebih baik untuk mengatakan itu? Bagaimana dengan <vocabulary>pertukaran pelajar</vocabulary>!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Pertukaran Pelajar, Pelajar Internasional, Pelajar Asing')
    RETURNING id INTO v_4059_pertukaran_pelajar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', 'お笑い', 'komedi', 18, 49, 'Anda tahu bahwa 笑う berarti "tertawa". Ini adalah versi kata benda itu, meski bukan "tertawa", (yaitu 笑い). Tambahkan お ke dalamnya dan Anda akan mendapatkan hal yang membuat Anda tertawa. Itu adalah <vocabulary>komedi</vocabulary>. Itu adalah <vocabulary>lelucon</vocabulary> yang ditinggikan dengan お karena membuatmu tertawa SANGAT. Ha ha!', 'Bacaannya sama 笑う atau 笑い. Itu juga sama dengan apa yang kamu pelajari dengan kanji.', 'Komedi, Candaan, Cerita Lucu')
    RETURNING id INTO v_4060_komedi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '手荷物', 'bagasi-tangan', 18, 50, 'Ingat 荷物 dan arti "bagasi" atau "bagasi". Tambahkan <kanji>tas tangan</kanji> ke dalamnya dan Anda akan mendapatkan <vocabulary>bagasi jinjing</vocabulary> atau <vocabulary>tas jinjing</vocabulary>.', 'Jika Anda tahu 荷物 dan Anda tahu 手, maka Anda seharusnya bisa menggabungkan keduanya menjadi satu bacaan besar.', 'Bagasi Tangan, Bagasi Tangan, Bagasi Kabin, Melanjutkan')
    RETURNING id INTO v_4061_bagasi_tangan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '笑い', 'sebuah-tertawa', 18, 51, 'Anda tahu bahwa 笑う berarti "tertawa". Ini adalah versi kata benda, karena う dalam 笑う berubah menjadi い (jadi jangan bingung membedakannya dengan kata sifat). Apa versi kata benda dari "tertawa"? Itu adalah <vocabulary>tertawa</vocabulary>.', 'Bacaannya sama dengan 笑う, jadi pastikan saja kamu mengetahuinya agar kamu bisa mengetahuinya juga.', 'Sebuah Tertawa, Tertawa')
    RETURNING id INTO v_4063_sebuah_tertawa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '借用', 'peminjaman', 18, 52, '<kanji>meminjam</kanji> <kanji>tugas</kanji> hanyalah cara lain untuk mengatakan <vocabulary>meminjam</vocabulary>. Hal ini juga berlaku saat Anda mengambil <vocabulary>pinjaman</vocabulary>.

借用 adalah kata formal untuk peminjaman barang seperti uang, fasilitas, atau barang lainnya. Anda juga dapat menggunakannya dalam bentuk bercanda dan formal dalam percakapan sehari-hari, seperti ちょっと借用しただけだよ (Saya hanya meminjamnya sebentar).', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Peminjaman, Meminjamkan')
    RETURNING id INTO v_4064_peminjaman;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '借りる', 'untuk-meminjam', 18, 53, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>meminjam</kanji> sehingga versi kosakata kata kerjanya adalah <vocabulary>to pinjam</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: Bung, bolehkah saya meminjam <reading>ca</reading>r (か) Anda? Silakan?', 'Untuk Meminjam')
    RETURNING id INTO v_4065_untuk_meminjam;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '借金', 'utang', 18, 54, '<kanji>uang</kanji> (dan <kanji>emas</kanji>) yang Anda <kanji>pinjam</kanji> adalah <vocabulary>hutang</vocabulary> Anda. Pastikan untuk membayarnya kembali sebelum yakuza datang menjemput Anda.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Namun しゃく disingkat menjadi しゃっ, jadi berhati-hatilah. Anggap saja itu seperti kekalahan kecil Anda dari yakuza, karena mereka tidak senang Anda tidak membayar kembali utang Anda. *memotong*', 'Utang')
    RETURNING id INTO v_4066_utang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '借家', 'rumah-kontrakan', 18, 55, 'Saat Anda <kanji>meminjam</kanji> sebuah <kanji>rumah</kanji>, itu adalah <vocabulary>rumah kontrakan</vocabulary>. Ini juga bisa berupa <vocabulary>rumah yang disewakan</vocabulary>.

Anda dapat menggunakan 借家 dalam percakapan untuk merujuk secara formal pada rumah kontrakan atau rumah yang disewakan. Namun hal ini lebih sering ditemukan dalam konteks hukum, seperti peraturan perundang-undangan.', 'Ini adalah kata jukugo, yang biasanya berarti pembacaan on''yomi dari kanji, namun dalam kasus ini 家 dapat dibaca dengan on''yomi atau kun''yomi. Kun''yomi di sini adalah や, yang Anda pelajari dengan kata-kata seperti 空き家 dan 大家, tapi inilah mnemonik jika Anda memerlukan bantuan untuk mengingatnya:

Saat teman Anda memberi tahu Anda bahwa mereka tinggal di <vocabulary>rumah kontrakan</vocabulary>, Anda berkata, "Jadi, ini <reading>gubuk</reading>, <reading>yah</reading> (しゃくや)?" Wow. Kamu cukup kasar dan menghakimi. Syukurlah, mereka menjawab, "Itu gubuk, yah. Tempatnya kumuh banget." Huh, kurasa itu memang sebuah gubuk.

Ngomong-ngomong, di bacaan kedua しゃっか, しゃく berubah menjadi しゃっ. Bacaan ini sebagian besar digunakan dalam konteks hukum, jadi しゃくや lebih umum digunakan.', 'Rumah kontrakan, Rumah sewa, Menyewa Rumah')
    RETURNING id INTO v_4067_rumah_kontrakan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '僧院', 'kuil', 18, 56, '<kanji>institusi</kanji> seorang <kanji>biarawan</kanji> akan menjadi <vocabulary>biara</vocabulary> atau <vocabulary>kuil</vocabulary>. Saya yakin itu adalah tempat yang menyenangkan untuk ditinggali!

Kata ini mengacu pada biara Buddha, dan sering digunakan untuk biara di luar Jepang.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kuil, Biara')
    RETURNING id INTO v_4068_kuil;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '仏僧', 'pendeta-buddha', 18, 57, '<kanji>Buddha</kanji> <kanji>pendeta</kanji> adalah <vocabulary>Pendeta Buddha</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Pendeta Buddha')
    RETURNING id INTO v_4069_pendeta_buddha;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '文句', 'keluhan', 18, 58, 'Anda <kanji>menulis</kanji> sebuah <kanji>paragraf</kanji> karena Anda mempunyai banyak <vocabulary>keluhan</vocabulary> dan Anda ingin menuliskan <vocabulary>gerutuan</vocabulary> Anda di atas kertas sebelum Anda melupakan apa pun. Anda tahu bagaimana beberapa orang membuat jurnal rasa syukur? Hal ini seperti kebalikannya. Jurnal keluhan.

文句 awalnya hanya berarti <kosakata>frasa</vocabulary> atau ungkapan. Meskipun masih dapat digunakan seperti ini, seperti dalam 決まり文句 (frasa umum), dalam penggunaan modern kata ini paling sering mengacu pada keluhan atau gerutuan — <em>frasa</em> yang Anda ucapkan ketika Anda tidak senang dengan sesuatu.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Anda mempelajari dua bacaan on''yomi yang berbeda untuk 文, jadi inilah mnemonik untuk membantu Anda mengingat mana yang akan digunakan:

Kamu penuh dengan <vocabulary>keluhan</vocabulary> tentang <reading>mon</reading>ster (もん) peliharaanmu. Ingat monster yang kamu beli secara online di 注文? Ya, itu sama sekali tidak berguna. Ia tidak mau menakut-nakuti pasangan remaja, atau bersembunyi di bawah tempat tidur anak-anak setempat, atau melakukan apa pun yang mirip monster. Anda telah mengeluhkannya sepanjang minggu, namun ia hanya menggeram tanpa pamrih dan mengabaikan Anda.', 'Keluhan, Menggerutu, Frasa')
    RETURNING id INTO v_4075_keluhan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '禁句', 'kata-tabu', 18, 59, 'Sebuah <kanji>paragraf</kanji> yang berada di bawah <kanji>larangan</kanji> dianggap terlarang karena mengandung <vocabulary>kata tabu</vocabulary> atau <vocabulary>frasa tabu</vocabulary>. Tolong jangan ucapkan kata ini!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kata Tabu, Frase Tabu, Kata Kotor, Kata Buruk')
    RETURNING id INTO v_4076_kata_tabu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '可愛い', 'imut-imut', 18, 60, '<kanji>mungkin</kanji> untuk <kanji>menyukai</kanji> hal ini. Astaga sekali <vocabulary>imut</vocabulary>! Hal apa pun yang sangat lucu mungkin untuk dicintai.', 'Bacaan kata ini kacau, padahal kalau beruntung kalian sudah tahu kata lucu. Tampaknya hal ini telah cukup banyak menyuntikkan dirinya ke dalam budaya Amerika dan Inggris. Jika Anda salah satu yang beruntung, Anda pasti tahu bahwa kata ini dibaca かわいい. Jika tidak, bayangkan makhluk lucu itu adalah seekor sapi. Lalu kamu bilang, "<reading>sapi ituはいい</reading>" (かわいい), atau "sapi itu bagus" karena lucu sekali.', 'Imut-imut')
    RETURNING id INTO v_4077_imut_imut;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '許可', 'izin', 18, 61, 'Saya <kanji>mengizinkan</kanji> bahwa hal itu <kanji>mungkin</kanji>. Jadi, silakan lakukan. Saya memberi Anda <vocabulary>izin</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Izin')
    RETURNING id INTO v_4078_izin;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '可分', 'terbagi', 18, 62, 'Jika <kanji>memungkinkan</kanji> untuk <kanji>memisahkan</kanji> sesuatu, maka sesuatu itu <vocabulary>dapat dibagi</vocabulary>. Bayangkan saja memisahkan sesuatu menjadi beberapa bagian. Itu mungkin. Jadi kalau bisa, itu habis dibagi. Sekarang pikirkan sesuatu yang bukan apa-apa (yaitu "tidak ada permen batangan"). Itu tidak mungkin dipisahkan menjadi beberapa bagian. Itu tidak dapat dibagi.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Terbagi, Dapat dipisahkan')
    RETURNING id INTO v_4079_terbagi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '不可欠', 'sangat-diperlukan', 18, 63, '<kanji>tidak</kanji> <kanji>mungkin</kanji> untuk <kanji>kekurangan</kanji>. Ini <vocabulary> sangat diperlukan</vocabulary> dan <vocabulary>penting</vocabulary>, jadi jangan sampai kekurangannya!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Sangat diperlukan, Penting')
    RETURNING id INTO v_4080_sangat_diperlukan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '告白', 'pengakuan', 18, 64, '<kanji>mengumumkan</kanji> sesuatu dan menjadikannya <kanji>putih</kanji> berarti membuat <vocabulary>pengakuan</vocabulary>. Bayangkan selembar kertas yang benar-benar kosong - pengakuan Anda menghapus semua pengumuman dari lembaran kertas tersebut, menjadikannya putih.

Kata ini sering digunakan ketika seseorang mengungkapkan perasaan romantisnya kepada orang lain.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Pengakuan')
    RETURNING id INTO v_4081_pengakuan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '告げる', 'untuk-mengumumkan', 18, 65, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>mengumumkan</kanji> sehingga versi kosakata kata kerjanya adalah <vocabulary>to mengumumkan</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: Saya ingin <vocabulary>mengumumkan</vocabulary>... kita tidak akan mempunyai satu bayi, kita akan mempunyai <reading>dua</reading> (つ) bayi!', 'Untuk Mengumumkan, Untuk Memberitahu')
    RETURNING id INTO v_4082_untuk_mengumumkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '広告', 'iklan', 18, 66, 'Saat Anda <kanji>mengumumkan</kanji> sesuatu kepada khalayak <kanji>luas</kanji>, Anda hanya menyampaikan pesan Anda agar semua orang dapat mendengarnya. Ini hanyalah <vocabulary>iklan</vocabulary> yang sangat luas.', 'Maaf, Anda hanya belajar membaca kun''yomi dengan 広. Jadi, pikirkan seperti ini ketika Anda perlu mengingat arti kata ini: Anda sedang mengiklankan sesuatu. Ini adalah <vocabulary>advertisement</vocabulary> yang besar untuk mengiklankan betapa buruknya <reading>こう</reading>いち seseorang. Bayangkan beberapa hal buruk yang telah dia lakukan sehingga Anda dapat membayangkan iklan gila Koichi yang Anda buat dan tayangkan di TV nasional.', 'Iklan, Iklan, Iklan')
    RETURNING id INTO v_4083_iklan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '予告', 'pemberitahuan-sebelumnya', 18, 67, 'Jika Anda <kanji>mengumumkan</kanji> sesuatu <kanji>sebelumnya</kanji> Anda akan mendapat <vocabulary>pemberitahuan sebelumnya</vocabulary>. Pemberitahuan terlebih dahulu selalu menyenangkan untuk diberikan.

Anda juga akan melihat ini digunakan sebagai singkatan dari 予告編, yang berarti <vocabulary>trailer</vocabulary> atau <vocabulary>preview</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Pemberitahuan Sebelumnya, Pemberitahuan Sebelumnya, Cuplikan, Pratinjau')
    RETURNING id INTO v_4084_pemberitahuan_sebelumnya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '報告', 'laporan', 18, 68, '<kanji>Berita</kanji> yang Anda <kanji>umumkan</kanji> menjadi <vocabulary>laporan</vocabulary>. Saat seseorang mengumumkan berita tentang suatu topik, mereka memberi Anda laporan tentang <vocabulary>informasi</vocabulary>.

報告 adalah laporan yang diberikan oleh seseorang setelah mereka melakukan penyelidikan atau penelitian terhadap topik tersebut. Ini dapat digunakan untuk presentasi kelas tentang suatu topik atau laporan yang diberikan kepada atasan Anda. Ini berbeda dengan 報道, yang merupakan laporan yang dirilis oleh organisasi berita.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Laporan, Informasi')
    RETURNING id INTO v_4086_laporan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '喫煙', 'merokok', 18, 69, 'Jika Anda <kanji>mengonsumsi</kanji> <kanji>merokok</kanji> Anda <vocabulary>merokok</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Merokok')
    RETURNING id INTO v_4087_merokok;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '喫茶店', 'kafe', 18, 70, 'Jika Anda <kanji>mengonsumsi</kanji> <kanji>teh</kanji> di <kanji>toko</kanji>, itu bisa berupa <vocabulary>kafe</vocabulary>, <vocabulary>kedai teh</vocabulary>, atau yang sedikit membingungkan, <vocabulary>kedai kopi</vocabulary>. Selamat datang! Duduk. Santai. Minumlah teh (atau kopi).

Kata ini sering merujuk pada kafe-kafe yang bernuansa retro, meski bisa juga modern. Tempat-tempat ini biasanya menyajikan berbagai macam minuman dan makanan ringan.', 'Bacaannya seperti yang Anda harapkan kecuali きつ disingkat menjadi きっ dan 茶, yang memiliki bacaan さ yang aneh. Untuk mengingat bahwa itu adalah さ dan bukannya ちゃ, pikirkan <vocabulary>kedai teh</vocabulary> yang akan Anda masuki. Menurut Anda ini bagus dan menyenangkan, dan itu untuk sementara... sampai seseorang mulai mengerjakan <reading>gergaji</reading> (さ) di luar, sehingga merusak suasana. BEWWEEEEHHHEEEHHHHHE gatatatatat BWEEEHEEE.', 'Kafe, Rumah Teh, Kedai kopi, Rumah Kopi')
    RETURNING id INTO v_4088_kafe;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '情報', 'informasi', 18, 71, '<kanji>perasaan</kanji> dari <kanji>berita</kanji> adalah bahwa ia harus memberi Anda <vocabulary>informasi</vocabulary> dan <vocabulary>data</vocabulary>, bukan basa-basi.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Informasi, Data')
    RETURNING id INTO v_4089_informasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '予報', 'ramalan', 18, 72, '<kanji>laporan berita</kanji> yang meliput hal-hal <kanji>sebelumnya</kanji> (sebelum hal itu terjadi) adalah <vocabulary>ramalan</vocabulary>. Misalnya, ramalan cuaca adalah 天気予報.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Ramalan')
    RETURNING id INTO v_4090_ramalan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '報じる', 'untuk-melaporkan', 18, 73, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>laporan berita</kanji> jadi Anda bisa mencoba mengucapkan "laporan berita" tapi itu tidak masuk akal. Namun yang masuk akal adalah "<vocabulary>melaporkan</vocabulary>".', 'Pembacaannya sepertinya bukan pembacaan on''yomi kanji, tapi memang demikian. Suatu keanehan! Apakah menurut Anda layak untuk membuat laporan berita tentang hal itu? Koichi, melaporkan bacaan aneh yang sedang Anda baca saat ini. Keluar.', 'Untuk Melaporkan')
    RETURNING id INTO v_4091_untuk_melaporkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '報道', 'laporan-berita', 18, 74, '<kanji>Berita</kanji> menyebar <kanji>jalan</kanji> melalui <vocabulary>laporan berita</vocabulary>.

報道 secara khusus mengacu pada informasi yang dikeluarkan oleh organisasi berita atau pers dalam bentuk artikel surat kabar, siaran radio atau televisi, dll. Perhatikan bahwa ini berbeda dengan 報告, yang lebih umum dan berarti pemberitaan informasi oleh siapa pun.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Laporan Berita')
    RETURNING id INTO v_4092_laporan_berita;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', 'お守り', 'jimat', 18, 75, 'Anda tahu bagaimana 守る berarti "melindungi", bukan? Ini memang seperti itu, tapi ini versi kata bendanya. Ini sebenarnya bukan "perlindungan", meskipun memang demikian. Pakaian apa yang dapat Anda kenakan untuk melindungi Anda dari hal-hal seperti nasib buruk, setan, dan alien kuno? Itu akan menjadi <vocabulary>jimat</vocabulary> atau <vocabulary>pesona</vocabulary>. Anda akan melihat barang-barang seperti ini dijual di kuil dan sejenisnya.', 'Bacaannya seperti 守る, jadi kalau kamu tahu bacaan kata itu kamu pasti bisa membaca yang ini juga.', 'Jimat, Pesona')
    RETURNING id INTO v_4093_jimat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '留守番', 'penjaga', 18, 76, 'Anda tahu bagaimana 留守 berarti "ketidakhadiran" atau "jauh dari rumah"? Nah, kini setelah Anda mangkir dari rumah, giliran orang lain yang datang ke rumah Anda dan mengurusnya. Orang ini adalah <vocabulary>penjaga</vocabulary>, seseorang yang <vocabulary>menjaga rumah</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Mengetahui 留守 juga penting.', 'Penjaga, Menjaga rumah, Menjaga Rumah Seseorang')
    RETURNING id INTO v_4094_penjaga;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '正座', 'seiza', 18, 77, 'Cara <kanji>yang benar</kanji> untuk <kanji>duduk</kanji> adalah sebagai berikut: <vocabulary>duduk tradisional Jepang</vocabulary> (ini adalah saat Anda duduk dengan kedua kaki dan kaki Anda, berlutut). Anda juga bisa menyebutnya <vocabulary>seiza</vocabulary>. Mempelajari bacaan akan membantu memahami maknanya.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Seiza, Duduk Tradisional Jepang')
    RETURNING id INTO v_4095_seiza;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '座禅', 'meditasi-zen', 18, 78, 'Saat Anda <kanji>duduk</kanji> dan melakukan <kanji>zen</kanji> Anda mungkin sedang melakukan <vocabulary>meditasi zen</vocabulary>. Hmmmm.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Meditasi Zen, Zazen')
    RETURNING id INTO v_4096_meditasi_zen;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '座席', 'kursi', 18, 79, '<kanji>duduk</kanji> <kanji>kursi</kanji> mungkin akan menjadi <vocabulary>kursi</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kursi')
    RETURNING id INTO v_4097_kursi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '銀座', 'ginza', 18, 80, '<kanji>perak</kanji> <kanji>kursi</kanji> bukanlah kerajaan gila di mana rajanya duduk di kursi perak. Itu adalah tempat terkenal di Tokyo. Mungkin kalau kalian baca bacaannya akan lebih jelas apa maksudnya (karena sama). Tempat duduk perak ini adalah <vocabulary>Ginza</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Ginza')
    RETURNING id INTO v_4098_ginza;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '駅弁', 'stasiun-kereta-bento', 18, 81, 'Ingat bagaimana 弁当 adalah "bento"? Ya, 弁 dalam kata ini berasal dari kata itu, jadi anggap saja artinya "bento". Lalu, jika Anda memiliki <kanji>stasiun kereta</kanji> untuk menemani bento, Anda juga memiliki <vocabulary>bento stasiun kereta</vocabulary>. Seperti yang mungkin Anda bayangkan, bento stasiun kereta hanyalah bento yang dijual di stasiun kereta. Mudah!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Stasiun Kereta Bento, Stasiun Bento')
    RETURNING id INTO v_4099_stasiun_kereta_bento;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '弓', 'busur', 18, 82, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Karena kata ini terdiri dari satu kanji, maka sebaiknya menggunakan bacaan kun''yomi. Saat mempelajari kanji, Anda tidak mempelajari bacaan tersebut, jadi inilah mnemonik untuk membantu Anda dengan kata ini: 

Yang kita perlukan untuk menembakkan <vocabulary>bow</vocabulary> hanyalah <reading>you ''n'' me</reading> (ゆみ). Satu orang memegang busur, yang lain menembakkan anak panah. Kerja tim membuat impian menjadi kenyataan. Bahkan untuk menembak busur. Hanya kamu dan aku.', 'Busur')
    RETURNING id INTO v_4100_busur;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '弓道', 'panahan', 18, 83, '<kanji>jalur</kanji> dari <kanji>busur</kanji>. Ini adalah <vocabulary>panahan</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Panahan, Kyudo, Kyudou')
    RETURNING id INTO v_4101_panahan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '忘れる', 'untuk-melupakan', 18, 84, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri artinya <kanji>lupa</kanji> jadi versi kosakata kata kerjanya adalah <vocabulary>to forget</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Anda tidak ingin <vocabulary>melupakan</vocabulary> apa pun, karena melupakan selalu membuat segalanya <reading>memburuk</reading> (わす). Lupa kunci mobil Anda? Sekarang kamu tidak bisa mengemudi. Lupa nama seseorang? Sekarang Anda harus bertanya lagi dan itu akan menjadi canggung. Semua situasi ini membuat hari Anda menjadi lebih buruk, dan mungkin hidup Anda juga menjadi lebih buruk.', 'Untuk Melupakan, Untuk Melupakan Sesuatu')
    RETURNING id INTO v_4102_untuk_melupakan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '忘年会', 'pesta-akhir-tahun', 18, 85, 'Saatnya untuk <kanji>bersama</kanji> dan <kanji>melupakan</kanji> <kanji>tahun</kanji>... sungguh tahun yang buruk, untunglah tahun baru akan datang. Pertemuan ini adalah <vocabulary>pesta akhir tahun</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Pesta Akhir Tahun, Pesta Akhir Tahun')
    RETURNING id INTO v_4103_pesta_akhir_tahun;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '下書き', 'draf-kasar', 18, 86, 'Sesuatu <kanji>di bawah</kanji> <kanji>tulisan</kanji> Anda belum tentu ingin Anda publikasikan kepada dunia. Lagipula, itu ada di bawah tulisanmu. Ini hanyalah <vocabulary>draf kasar</vocabulary>.', 'Bacaannya seluruhnya adalah bacaan kosakata kun''yomi, seperti yang mungkin bisa Anda tebak dari hiragana yang mencuat. Jika Anda mengetahui bacaan kata 下 dan 書く secara terpisah, sebaiknya Anda bisa menggabungkannya menjadi satu bacaan. Jangan lupa rendaku di sini!', 'Draf Kasar')
    RETURNING id INTO v_4104_draf_kasar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '書き入れる', 'untuk-menulis', 18, 87, '<kanji>memasukkan</kanji> apa yang Anda <kanji>tulis</kanji> ke dalam sesuatu adalah <vocabulary>menulis</vocabulary> atau <vocabulary>mengisi</vocabulary>.', 'Bacaannya berasal dari 書く dan 入れる. Gabungkan kedua kata tersebut untuk mendapatkan pembacaan kata ini.', 'Untuk Menulis, Untuk Mengisi')
    RETURNING id INTO v_4105_untuk_menulis;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '書き方', 'cara-menulis', 18, 88, 'Jadi kita punya 書く (menulis) ditambah kanji untuk <kanji>cara</kanji>. Apakah pola ini mulai terlihat familier? Artinya <vocabulary>cara menulis</vocabulary> atau <vocabulary>cara menulis</vocabulary>.', 'Kata ini menggunakan bacaan kun''yomi untuk kedua kanjinya. Anda mempelajari bacaan か dengan 書く, dan bacaan かた untuk 方 adalah bacaan yang Anda pelajari dengan kata-kata "cara melakukan" lainnya seperti 読み方 dan 使い方.', 'Cara Menulis, Cara Penulisan')
    RETURNING id INTO v_4106_cara_menulis;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '何枚', 'berapa-banyak-benda-datar', 18, 89, 'Anda mempunyai <kanji>benda datar</kanji> tetapi <kanji>berapa</kanji> jumlah benda datar tersebut? Kata ini menanyakan pertanyaan itu: "<vocabulary>ada berapa benda datar</vocabulary>?" Jika ini tidak masuk akal, pikirkan kembali kata-kata seperti 何回 atau 何年 yang menanyakan "berapa ____" seperti ini.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Berapa Banyak Benda Datar, Berapa Lembar')
    RETURNING id INTO v_4108_berapa_banyak_benda_datar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '枚数', 'jumlah-lembar', 18, 90, 'Anda memiliki <kanji>benda datar</kanji>. Anda memiliki <kanji>nomor</kanji> di antaranya. Benda datar ini adalah benda datar bukan? Benda datar seperti lembaran kertas, mungkin (atau lembaran benda lainnya). Jadi, kata ini adalah <vocabulary>jumlah lembar</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Jumlah Lembar, Jumlah Benda Datar')
    RETURNING id INTO v_4109_jumlah_lembar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '五枚', 'lima-benda-datar', 18, 91, 'Anda tahu bahwa 枚 adalah <kanji>penghitung benda datar</kanji>. Jadi, sekarang kita menghitung! Anda mempunyai <vocabulary>lima benda datar</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Lima Benda Datar, Lima Lembar')
    RETURNING id INTO v_4110_lima_benda_datar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '洗う', 'untuk-mencuci', 18, 92, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>mencuci</kanji> sehingga versi kosakata kata kerjanya adalah <vocabulary>to wash</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda:

Anda memiliki <vocabulary>to wash</vocabulary> <reading>sebuah ro</reading>ck (あら) yang Anda temukan. Kelihatannya mengkilat, tapi Anda tidak akan tahu sampai Anda mencucinya.', 'Untuk mencuci')
    RETURNING id INTO v_4111_untuk_mencuci;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '洗車', 'tempat-cuci-mobil', 18, 93, '<kanji>pencucian</kanji> yang mencuci <kanji>mobil</kanji> adalah <vocabulary>pencucian mobil</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Namun jangan bingung membedakan ini dengan 戦車 yang terdengar sama... kecuali Anda mencuci 戦車 di dalam 洗車...', 'Tempat cuci mobil')
    RETURNING id INTO v_4112_tempat_cuci_mobil;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '洗練', 'perbaikan', 18, 94, 'Anda melakukan <kanji>latihan</kanji> dan <kanji>mencuci</kanji> itu. Perlahan-lahan potongannya jatuh dan menjadi semakin sederhana. Anda membersihkan kotoran di luar untuk mencapai <vocabulary>kehalusan</vocabulary> dan <vocabulary>memoles</vocabulary> diri Anda sendiri, melalui latihan.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Perbaikan, Polandia')
    RETURNING id INTO v_4113_perbaikan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '焼く', 'untuk-memanggang', 18, 95, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>memanggang</kanji> atau <kanji>membakar</kanji>. Jadi, versi kosakata kata kerjanya adalah <kosakata>memanggang</vocabulary>, <vocabulary>membakar sesuatu</vocabulary>, atau bahkan <vocabulary>to grill</vocabulary>.

焼く berarti memberikan panas pada sesuatu untuk mengubahnya secara fisik. Kata ini bisa berarti memanggang sesuatu dengan ringan, menghanguskannya, atau bahkan membakarnya hingga menjadi abu, bergantung pada konteksnya. Ini biasanya digunakan dalam konteks memasak untuk menggambarkan memanggang, memanggang, atau memanggang makanan. Namun dapat juga digunakan pada tembikar, fotografi film, dan bahkan penyamakan kulit di bawah sinar matahari.', 'Bacaannya berasal dari bacaan yang Anda pelajari dengan kanji.', 'Untuk Memanggang, Untuk Membakar Sesuatu, Untuk Memanggang')
    RETURNING id INTO v_4115_untuk_memanggang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '日焼け', 'terbakar-sinar-matahari', 18, 96, 'Ketika <kanji>matahari</kanji> <kanji>membakar</kanji> sesuatu, dan sesuatu itu adalah Anda, maka hal itu membuat Anda <vocabulary>terbakar sinar matahari</vocabulary>.', 'Bacaan disini adalah bacaan vocab kun''yomi. Anda memiliki ひ untuk 日 dan や untuk 焼け (yang Anda pelajari dengan kosakata). Kombinasikan dengan sedikit tabir surya dan semoga Anda dapat mencegah <vocabulary>sunburn</vocabulary>.', 'Terbakar sinar matahari, Warna coklat karena berjemur, Tan')
    RETURNING id INTO v_4116_terbakar_sinar_matahari;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '焼き鳥', 'ayam-panggang', 18, 97, '<kanji>panggang</kanji>yang enak <kanji>burung</kanji> bukan sembarang burung, melainkan <vocabulary>ayam panggang</vocabulary> atau <vocabulary>ayam panggang</vocabulary>. Anda mungkin juga mengenalnya dengan nama Jepangnya: <vocabulary>yakitori</vocabulary>.', 'Bacaannya adalah bacaan vocab kun''yomi. Dengan 焼き, Anda dapat menggunakan bacaan yang Anda pelajari dengan kanji. Dengan 鳥, ingatlah kembali kata kosakatanya, とり. Gabungkan dan makan.', 'Ayam Panggang, Ayam panggang, Yakitori')
    RETURNING id INTO v_4117_ayam_panggang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '焼き肉', 'daging-panggang', 18, 98, '<kanji>memanggang</kanji>d <kanji>daging</kanji> yang enak adalah <vocabulary>daging panggang</vocabulary> atau <vocabulary>yakiniku</vocabulary>. Hmm, enak! Jika Anda pergi ke Jepang, carilah tempat 焼肉 (arti dan bacaannya sama). Rasanya cukup enak, setidaknya jika Anda menyukai daging.', '焼き menggunakan bacaan yang Anda pelajari dengan kanji. 肉 juga melakukannya. Taruh di atas panggangan dan nikmatilah!', 'Daging Panggang, Daging Panggang, Yakiniku')
    RETURNING id INTO v_4118_daging_panggang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '夕焼け', 'matahari-terbenam', 18, 99, 'Saat <kanji>malam</kanji> <kanji>terbakar</kanji> dengan matahari, matahari terbenam, semakin dekat dengan cakrawala dan bumi. Inilah <vocabulary>matahari terbenam</vocabulary>, atau lebih khusus lagi, <vocabulary>cahaya malam</vocabulary> yang dapat Anda lihat saat matahari terbenam.', 'Bacaannya adalah bacaan kosakata kun''yomi. Gabungkan 夕 dan 焼け (Anda mempelajari bacaannya melalui kanji) dan Anda akan mendapatkan <reading>ゆうやけ</reading>.', 'Matahari terbenam, Cahaya Malam')
    RETURNING id INTO v_4119_matahari_terbenam;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '煙', 'merokok', 18, 100, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Karena kata ini terdiri dari satu kanji, maka sebaiknya menggunakan bacaan kun''yomi. Saat mempelajari kanji, Anda tidak mempelajari cara membacanya, jadi inilah mnemonik yang dapat membantu Anda mempelajari kata ini: Anda sedang berdiri di sekitar mesin <vocabulary>asap</vocabulary>. Ini mengepulkan asap. Anehnya, temanmu Bill Murray juga ada di sini. Untuk beberapa alasan, dia menyukai asap, dan dia memasukkan kepalanya ke dalamnya, menghirupnya dalam-dalam sampai dia terbatuk-batuk. Anda memutuskan sudah waktunya untuk menghentikannya. "<reading>Kay, Murray</reading> (けむり), ini waktunya untuk menghentikannya," katamu.', 'Merokok')
    RETURNING id INTO v_4120_merokok;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '黒煙', 'asap-hitam', 18, 101, '<kanji>Hitam</kanji> <kanji>asap</kanji> adalah <vocabulary>asap hitam</vocabulary>. Itu juga sesuatu yang harus Anda hindari jika bisa.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Asap Hitam')
    RETURNING id INTO v_4121_asap_hitam;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '禁煙', 'dilarang-merokok', 18, 102, 'Jika <kanji>merokok</kanji> <kanji>dilarang</kanji>d, sebaiknya Anda tidak merokok. Alias ​​<vocabulary>dilarang merokok</vocabulary>, oke?', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'DILARANG MEROKOK')
    RETURNING id INTO v_4125_dilarang_merokok;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '禁止', 'terlarang', 18, 103, '<kanji>Berhenti</kanji>! Itu <kanji>larangan</kanji> (dilarang)! Ketika ada sesuatu yang dilarang dan Anda terpaksa berhenti, hal itu jelas <vocabulary>dilarang</vocabulary>. Jika Anda melihat ini, Anda mungkin sebaiknya tidak melakukan hal yang diperintahkan untuk tidak Anda lakukan.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Terlarang, Larangan, Melarang')
    RETURNING id INTO v_4126_terlarang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '禅寺', 'kuil-zen', 18, 104, '<kanji>zen</kanji> <kanji>kuil</kanji> memang seperti itu, <vocabulary>zen Temple</vocabulary>. Kedengarannya bagus.', 'Bacaannya adalah dua kata 禅 dan 寺 yang disatukan. Namun てら diubah menjadi でら.

Mengenai kapan diucapkan ぜんじ, jika kamu meletakkan kata ini di akhir nama 禅寺, pengucapannya akan berubah menjadi ぜんじ. Masuk akal - ini lebih seperti kata jukugo (bukan berarti aslinya tidak, tetapi Anda dapat melihat pemisahan kata-kata yang menyatu yang memberikan petunjuk bahwa itu adalah pembacaan kombo kun''yomi). Bagaimanapun, Anda mungkin memerlukan kuil zen untuk menjaga pikiran Anda cukup murni untuk mengingat hal ini, tetapi ada baiknya untuk mengingatnya jika Anda bisa.', 'Kuil Zen')
    RETURNING id INTO v_4127_kuil_zen;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '禅僧', 'pendeta-zen', 18, 105, '<kanji>Zen</kanji> <kanji>pendeta</kanji> adalah <vocabulary>pendeta zen</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Pendeta Zen, Biksu Zen')
    RETURNING id INTO v_4128_pendeta_zen;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '人種', 'ras-manusia', 18, 106, '<kanji>jenis</kanji> atau <kanji>tipe</kanji> dari <kanji>orang</kanji> adalah saat Anda mengkategorikan seseorang ke dalam tipe yang berbeda. Bagaimana kita melakukan itu? Nah, Anda mengkategorikannya berdasarkan <vocabulary>ras orang</vocabulary> (atau lebih sederhananya berdasarkan <vocabulary>ras</vocabulary>).', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Ras Manusia, Balapan')
    RETURNING id INTO v_4130_ras_manusia;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '等しい', 'setara', 18, 107, 'Ini adalah kanji tunggal dengan い di akhir, artinya Anda tahu itu mungkin kata sifat. Apa bentuk kata sifat dari <kanji>sama</kanji>? Ini <vocabulary>equal</vocabulary> (dan juga <vocabulary>similar</vocabulary> atau <vocabulary>equivalent</vocabulary>). Yang "serupa" itu agak aneh, karena "serupa" itu tidak sama, meski saya lebih condong ke arah yang setara.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak mempelajarinya dengan kanji ini, jadi inilah mnemonik yang dapat membantu Anda: Apa yang harus disamakan di atas segalanya? Saya pikir setiap <reading>人</reading> (ひと) harus sama!', 'Setara, Sama, Setara, Serupa')
    RETURNING id INTO v_4131_setara;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '等号', 'tanda-setara', 18, 108, 'Bagaimana Anda mewakili <kanji>yang sama</kanji> <kanji>angka</kanji>? Dengan <vocabulary>tanda sama dengan</vocabulary>.

Perlu diperhatikan bahwa ini adalah kata yang cukup formal yang digunakan dalam matematika tingkat lanjut. Dalam percakapan sehari-hari, orang menggunakan イコール untuk tanda sama dengan.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Tanda Setara, Tanda Setara')
    RETURNING id INTO v_4132_tanda_setara;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '一等', 'kelas-satu', 18, 109, 'Jika Anda <kanji>sama</kanji> dengan <kanji>satu</kanji>, Anda berada di posisi teratas. Anda <vocabulary>kelas satu</vocabulary> dan <vocabulary>peringkat pertama</vocabulary>. Faktanya, Anda adalah <vocabulary>yang terbaik</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. いち disingkat menjadi いっ, jadi berhati-hatilah jika kamu ingin tetap <vocabulary>yang terbaik</vocabulary>, ya?', 'Kelas satu, Peringkat Pertama, Terbaik')
    RETURNING id INTO v_4133_kelas_satu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '訓練', 'pelatihan', 18, 110, 'Anda sudah mendapatkan <kanji>instruksi</kanji> dan Anda sudah mendapatkan <kanji>latihan</kanji>. Saatnya memulai <vocabulary>pelatihan</vocabulary> Anda, atau sekadar <vocabulary>latihan</vocabulary> Anda.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Pelatihan, Praktik')
    RETURNING id INTO v_4135_pelatihan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '胸', 'dada', 18, 111, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Kata vocab ini menggunakan bacaan yang sama dengan yang Anda pelajari dengan kanji. Setidaknya aku tidak perlu mengungkit gambaran kalian yang sedang <reading>berbulan</reading>ing (むね) dengan payudara kalian atau yang lainnya. Oh sial, aku baru saja pergi dan melakukannya.', 'Dada, Payudara')
    RETURNING id INTO v_4136_dada;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '脳', 'otak', 18, 112, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji. Tidak perlu menggunakan <vocabulary>otak</vocabulary> Anda untuk itu.', 'Otak')
    RETURNING id INTO v_4137_otak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '脳死', 'kematian-otak', 18, 113, 'Jika <kanji>otak</kanji> Anda <kanji>mati</kanji> Anda mengalami <vocabulary>otak mati</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kematian Otak, Otak Mati')
    RETURNING id INTO v_4138_kematian_otak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '脳みそ', 'otak', 18, 114, 'Tahukah kamu みそ Sup dan bagaimana miso di dalamnya? Ini misonya. Perasaan lembut dan aneh. Sekarang, <kanji>otak</kanji> <kanji>miso</kanji> Anda, itulah <vocabulary>otak</vocabulary> Anda atau <vocabulary>substansi abu-abu</vocabulary> Anda. Intinya, jika seseorang memenggal kepala Anda dengan katana, mungkin inilah yang akan terjadi.', 'Membaca hanyalah apa yang Anda pelajari dengan kanji. Cukup gunakan 脳 Anda sedikit dan itu akan mudah.', 'Otak, Materi Abu-abu')
    RETURNING id INTO v_4139_otak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '洗脳', 'indoktrinasi', 18, 115, 'Berikan <kanji>otak</kanji> Anda <kanji>cuci</kanji> yang bagus. TIDAK! Tunggu! Ini tidak sebaik kedengarannya. Ini adalah <vocabulary>cuci otak</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Indoktrinasi')
    RETURNING id INTO v_4140_indoktrinasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '落書き', 'mencoret-coret', 18, 116, 'Saat Anda <kanji>jatuh</kanji> dalam keinginan untuk <kanji>menulis</kanji>, ambil saja apa pun yang ada di sekitar dan mulai <vocabulary>mencoret-coret</vocabulary> di atasnya.

落書き berarti mencoret-coret atau <vocabulary>mencoret-coret</vocabulary> tanpa banyak berpikir, dan juga berarti mencoret-coret itu sendiri. Bayangkan seorang anak mencoret-coret pinggiran buku catatannya di kelas. <vocabulary>Graffiti</vocabulary> bisa juga 落書き, tapi biasanya ini mengacu pada grafiti vandalisme dan bukan hal-hal artistik — bayangkan simbol "anarki" di bawah jembatan atau gambar tongkat di kamar mandi.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. 書, bagaimanapun, adalah kun''yomi dalam hal ini dan juga memiliki rendaku. Jadi ingatlah bahwa itu dibaca sebagai が untuk kosakata ini dan Anda akan baik-baik saja.', 'mencoret-coret, Mencoret-coret, Coretan')
    RETURNING id INTO v_4142_mencoret_coret;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '葉書', 'kartu-pos', 18, 117, 'Sebuah <kanji>tulisan</kanji> yang Anda letakkan di <kanji>daun</kanji> sama seperti sesuatu yang lain. Daripada menggunakan daun, pikirkan tentang tulisan yang Anda letakkan pada benda berukuran daun. Sebuah <vocabulary>kartu pos</vocabulary> mungkin?', 'Bacaannya agak aneh, maaf. Bacaan untuk 葉 adalah は yang Anda kenal dan sukai. Lalu, 書 adalah かき meskipun tidak memiliki き di akhir seperti yang Anda harapkan. Jadi, ini aneh. Disingkat seperti kartu pos adalah surat yang disingkat, ya? Secara teknis ini adalah bacaan 書き, namun perlu diingat bahwa 書き mendapat rendaku.', 'Kartu pos')
    RETURNING id INTO v_4143_kartu_pos;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '訓読み', 'kunyomi', 18, 118, '<kanji>Instruksi</kanji> <kanji>membaca</kanji> mungkin tidak terlalu masuk akal, tetapi Anda pernah mendengar kata ini sebelumnya. Langsung saja ke bacaannya dan Anda akan tahu apa arti kata ini.', 'Bacaannya adalah kata 読み (seperti 読む) dan gabungan bacaan yang Anda pelajari untuk 訓, menghasilkan <reading>くんよ</reading>み. Kedengarannya familier? Itu adalah bacaan <vocabulary>kun''yomi</vocabulary> yang sering Anda dengar.', 'Kun''yomi, Kun Membaca, Bacaan Jepang')
    RETURNING id INTO v_4144_kunyomi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '教訓', 'pelajaran', 18, 119, 'Setidaknya di masa lalu, hal-hal yang <kanji>mengajarkan</kanji> <kanji>instruksi</kanji> kepada orang-orang adalah hal-hal yang memberikan <vocabulary>pelajaran</vocabulary>, <vocabulary>moral</vocabulary>, atau <vocabulary>ajaran</vocabulary>. Dulu, banyak pembelajaran dilakukan melalui mendongeng, dan mendongeng mengajarkan pelajaran dan moral, demikianlah kata ini.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Pelajaran, Moral, Ajaran')
    RETURNING id INTO v_4145_pelajaran;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '許す', 'untuk-mengizinkan', 18, 120, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>mengizinkan</kanji> sehingga versi kosakata kata kerjanya adalah <vocabulary>toallow</vocabulary>. Itu juga berarti <vocabulary>memaafkan</vocabulary>, dalam artian "Saya akan mengizinkannya kali ini... tapi hanya kali ini." Nantikan juga 許さない di acara TV. Artinya, "Saya tidak akan mengizinkan ini!" atau "Aku tidak akan memaafkanmu!"', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: Saya akan mengizinkannya. <read>Kamu</reading> (ゆる) boleh melakukannya kali ini saja, oke?', 'Untuk Mengizinkan, Untuk Memaafkan, Untuk memungkinkan')
    RETURNING id INTO v_4146_untuk_mengizinkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '友達', 'teman', 18, 121, '<kanji>teman</kanji> yang Anda <kanji>dapatkan</kanji> adalah <vocabulary>teman</vocabulary> Anda. Ini adalah cara paling umum untuk mengatakan "teman", jadi pelajarilah jika Anda ingin melakukannya!', 'Anda mungkin pernah menemukan kata ini sebelumnya karena sangat umum, namun secara teknis kedua kanji di sini menggunakan bacaan yang belum Anda pelajari, jadi inilah mnemoniknya:

<vocabulary>teman</vocabulary> yang Anda temui <reading>tomo</reading>rrow (とも) adalah <reading>Belanda</reading> (だち). Anda mengetahui hal ini karena pengingat dari aplikasi kalender memberi tahu Anda: "Besok: Teman Belanda." Besok, teman Belanda itu akan datang, dan mereka akan menyapa Anda dalam bahasa Belanda — atau akankah mereka hanya menyapa dengan aksen Belanda? Tidak pernah jelas bagi Anda… Yang jelas besok, teman Belanda itu akan datang.', 'Teman, Pendamping')
    RETURNING id INTO v_4151_teman;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '配達する', 'untuk-memberikan', 18, 122, 'Anda <kanji>mendistribusikan</kanji> barangnya, mereka <kanji>mendapatkan</kanji> barangnya. Anda akan <vocabulary>menyampaikan</vocabulary> kepada semua orang.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Untuk Memberikan')
    RETURNING id INTO v_4152_untuk_memberikan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '達人', 'menguasai', 18, 123, '<kanji>orang</kanji> yang telah "<kanji>mencapai</kanji>" adalah seseorang yang mengetahui banyak. Tentu saja mereka adalah <vocabulary>master</vocabulary> atau <vocabulary>expert</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Menguasai, Pakar')
    RETURNING id INTO v_4153_menguasai;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '伝達', 'penularan', 18, 124, 'Ketika Anda <kanji>mentransmisikan</kanji> sesuatu dan Anda <kanji>mencapainya</kanji> di ujung yang lain, Anda telah melakukan <vocabulary>transmisi</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Penularan, Mengirimkan, Mengangkut')
    RETURNING id INTO v_4154_penularan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '静か', 'diam', 18, 125, 'Ini adalah bentuk kata sifat な dari <kanji>tenang</kanji>, yang mirip dengan kata benda. Apa versi kata sifat dari ketenangan? Bahasanya juga <vocabulary>tenang</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak mempelajarinya dengan kanji ini, jadi inilah mnemonik yang dapat membantu Anda: Anda harus <vocabulary>tenang</vocabulary>. <read>Dia</reading> (しず) bersikap baik dan pendiam, tidak seperti kamu!', 'Diam')
    RETURNING id INTO v_4155_diam;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '静止', 'tetap', 18, 126, 'Semuanya <kanji>tenang</kanji> dan <kanji>berhenti</kanji>ped. Dunia <vocabulary>masih</vocabulary> dan semuanya <vocabulary>diam</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Tetap, Berhenti, Saat Istirahat, Tidak bergerak')
    RETURNING id INTO v_4156_tetap;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '平静', 'tenang', 18, 127, 'Tempat yang <kanji>damai</kanji> dan <kanji>tenang</kanji> adalah tempat yang sangat <vocabulary>tenang</vocabulary> dan <vocabulary>tenang</vocabulary>. Ahh, bagus sekali!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Tenang, Tenang, Tenang')
    RETURNING id INTO v_4157_tenang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '人類', 'kemanusiaan', 18, 128, 'Hanya ada satu <kanji>orang</kanji> <kanji>jenis</kanji> dan itu adalah <vocabulary>manusia</vocabulary>, atau dikenal sebagai <vocabulary>kemanusiaan</vocabulary>, atau <vocabulary>manusia</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kemanusiaan, Kemanusiaan, umat manusia')
    RETURNING id INTO v_4158_kemanusiaan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '分類', 'klasifikasi', 18, 129, 'Anda <kanji>membagi</kanji> sesuatu ke dalam <kanji>jenis</kanji> yang berbeda. Itu disebut <vocabulary>classification</vocabulary> atau <vocabulary>categorization</vocabulary>.

分類 adalah kata yang relatif formal yang mengacu pada tindakan mengklasifikasikan atau mengkategorikan item, organisme, atau informasi ke dalam kelompok tertentu berdasarkan karakteristik atau kriteria bersama.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Klasifikasi, Kategorisasi')
    RETURNING id INTO v_4159_klasifikasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '種類', 'baik', 18, 130, '<kanji>jenis</kanji> dan <kanji>jenis</kanji> adalah <vocabulary>jenis</vocabulary>, <vocabulary>type</vocabulary>, atau <vocabulary>sort</vocabulary>. Pada dasarnya, jika Anda mengetahui arti dari salah satu kanji ini, Anda juga akan mengetahui arti kata tersebut, karena semuanya memiliki kesamaan yang baik.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Baik, Jenis, Menyortir')
    RETURNING id INTO v_4160_baik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '親類', 'kerabat', 18, 131, 'Orang-orang ini seperti <kanji>tipe</kanji> dari <kanji>orang tua</kanji>. Bukan orang tua yang baik, tapi dalam keadaan darurat. Ini adalah <vocabulary>kerabat</vocabulary> Anda.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kerabat')
    RETURNING id INTO v_4161_kerabat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '説明書', 'buku-petunjuk', 18, 132, 'Ingat bagaimana 説明 berarti "penjelasan"? Ambil penjelasan itu dan <kanji>tulis</kanji>. Sekarang Anda memiliki <vocabulary>instruksi manual</vocabulary> atau <vocabulary>panduan pengguna</vocabulary>.

Ini adalah buklet atau lembaran kertas yang disertakan dengan peralatan, elektronik, atau furnitur kemasan datar — yang menjelaskan cara menggunakan produk.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Buku Petunjuk, Panduan Pengguna')
    RETURNING id INTO v_4350_buku_petunjuk;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '汽車', 'kereta-uap', 18, 133, '<kanji>uap</kanji> <kanji>mobil</kanji> adalah mobil yang berjalan dengan uap. Tidak ada mobil biasa yang menggunakan tenaga uap, tetapi benda apa yang disebut "mobil" yang menggunakan tenaga uap? Bagaimana dengan <vocabulary>kereta uap</vocabulary>? Anda juga dapat memikirkan 電車s, yaitu mobil listrik (tetapi berarti "kereta api"). Mirip dengan itu, tapi sekarang dijalankan dengan uap, menjadikannya kereta uap.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kereta Uap, Kereta Mesin Uap, Mesin uap')
    RETURNING id INTO v_4351_kereta_uap;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '汽船', 'kapal-uap', 18, 134, '<kanji>kapal uap</kanji> <kanji>kapal</kanji> adalah <vocabulary>kapal uap</vocabulary> atau <vocabulary>perahu uap</vocabulary>. Sangat mewah di zaman mereka!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kapal Uap, Kapal Uap')
    RETURNING id INTO v_4352_kapal_uap;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '書類', 'dokumen', 18, 135, 'Jika Anda memasukkan <kanji>tulisan</kanji> ke dalam <kanji>kategori</kanji>, Anda harus menuliskannya setelah Anda memilih kategorinya. Di mana Anda akan menuliskannya? Mungkin ke dalam <vocabulary>dokumen</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Dokumen')
    RETURNING id INTO v_4355_dokumen;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '火曜日', 'selasa', 18, 136, 'Ini adalah hari dalam seminggu. Anda tahu ini karena ada 曜日 di dalamnya. Tapi hari apa dalam seminggu ini? Hari <kanji>kebakaran</kanji> dalam seminggu adalah hari setelah hari terburuk dalam seminggu (Senin). Kamu membakar segalanya karena kamu sangat kesal dengan hari kemarin, sehingga menjadikan hari ini <vocabulary>Selasa</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Berhati-hatilah agar ひ menjadi び seperti pada kata 曜日.', 'Selasa')
    RETURNING id INTO v_4361_selasa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '可能', 'mungkin', 18, 137, '<kanji>kemampuannya</kanji> ada, jadi <kanji>mungkin</kanji>... tunggu, apakah ada cukup kemampuan untuk membuat <vocabulary>mungkin</vocabulary>? Ayo lakukan!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Mungkin')
    RETURNING id INTO v_4840_mungkin;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '閉まる', 'untuk-menutup', 18, 138, 'Jika 閉める adalah "menutup sesuatu" atau "menutup sesuatu", maka ini adalah versi di mana Anda tidak melakukan apa pun dan sesuatu menutup dengan sendirinya. Itu sebabnya ini <vocabulary>untuk menutup</vocabulary> atau <vocabulary>untuk menutup</vocabulary>. Anda mengingat ini karena pintu terus menutup di tangan Anda, <reading>merusak</reading>membaca (まる) berulang kali. Aduh.', 'Bacaannya sama dengan 閉める.', 'Untuk Menutup, Untuk menutup')
    RETURNING id INTO v_5845_untuk_menutup;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '大丈夫', 'aman', 18, 139, '<kanji>besar</kanji> <kanji>tinggi</kanji> dari <kanji>suami</kanji> Anda membuat segalanya <vocabulary>aman</vocabulary> dan <vocabulary>baik-baik saja</vocabulary>. Tidak ada yang perlu Anda khawatirkan saat Anda memiliki suami super raksasa yang siap melindungi Anda. Ini adalah kata yang sangat berguna dan digunakan sepanjang waktu. Jika seseorang bertanya: "Apakah kamu baik-baik saja?" Anda bisa menjawab "大丈夫" yang berarti Anda baik-baik saja.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri. Hati-hati dengan rendaku.', 'Aman, Baiklah, Oke')
    RETURNING id INTO v_7151_aman;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '〜枚', 'penghitung-benda-datar', 18, 140, 'Kanji dan kata-katanya sama persis. Itu berarti keduanya memiliki arti yang sama, jadi ini adalah <vocabulary>penghitung objek datar</vocabulary>.

Penghitung ini dapat digunakan dengan berbagai benda "datar", seperti <vocabulary>item pakaian</vocabulary>, <vocabulary>sheet</vocabulary>, kertas, prangko, piring, dan banyak lagi. Perhatikan bagaimana semuanya berbentuk datar?', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Penghitung Benda Datar, Item Pakaian, Seprai')
    RETURNING id INTO v_7454_penghitung_benda_datar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '座る', 'untuk-duduk', 18, 141, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>duduk</kanji> sehingga versi kosakata kata kerjanya adalah <vocabulary>duduk</vocabulary>.', 'Pembacaannya tidak seperti pembacaan kanji, jadi mari kita gunakan mnemonik terpisah untuk mengingatnya. Bayangkan saja diri Anda <vocabulary>duduk</vocabulary>. Anda duduk, dan tanah di bawah Anda runtuh dan Anda terjatuh. Ketika Anda mendarat, Anda menemukan diri Anda berada di <read>selokan</reading> (すわ) yang kotor dan bau. Ini sangat menjijikkan. Rasakan kotoran di mulut Anda. Cium baunya. Merasa menjijikkan. Anda seharusnya tidak duduk di tempat itu, itu terlihat sangat berbahaya, jika Anda memikirkannya.', 'Untuk Duduk')
    RETURNING id INTO v_7479_untuk_duduk;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '〜達', 'sufiks-yang-jamak', 18, 142, 'Anda akan melihatnya dilampirkan pada kata lain untuk menjadikannya <kanji>jamak</kanji>. Itu sebabnya disebut <vocabulary>pluralizing suffix</vocabulary>. 

Perhatikan bahwa Anda hanya dapat melampirkan ini pada manusia dan hewan untuk menjadikannya jamak. Bisa juga digunakan dengan nama seseorang, seperti マリアたち. Dalam hal ini, yang dimaksud adalah Maria dan sekelompok orang yang bersamanya! Ini mungkin terdengar agak rumit, tetapi Anda akan dapat menguasainya dengan sedikit latihan!', 'Ini hampir sama dengan bacaan yang Anda pelajari dengan kanji. Ingat たつ? Nah ini dibaca たち. Berikut ini mnemonik untuk membantu Anda mengingatnya:

Jika Anda ingin membuat jamak pada sesuatu, <reading>sentuh</reading> (たち) ke sesuatu yang lain. Teman yang satu menyentuh teman yang lain, nah sekarang mereka berteman. Teman jamak! Semua berkat sentuhan akhiran jamak yang bagus!

Oh, dan jangan mengetikkan 〜 saat menulis jawabannya. Itu hanya untuk memberi tahu Anda bahwa biasanya ada sesuatu yang melekat di depan kata ini.', 'Sufiks yang jamak')
    RETURNING id INTO v_7549_sufiks_yang_jamak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '警告', 'peringatan', 18, 143, 'Saat Anda <kanji>mengumumkan</kanji> sesuatu untuk <kanji>memperingatkan</kanji> seseorang, Anda <vocabulary>memperingatkan</vocabulary> mereka. Terkadang Anda hanya mencoba memberi mereka <vocabulary>nasihat</vocabulary> yang berguna.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Peringatan, Nasihat, Peringatan')
    RETURNING id INTO v_7592_peringatan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '固まる', 'untuk-mengeras', 18, 144, 'Anda telah melihat bagaimana 固める berarti "menyusahkan". Kata ini berarti sesuatu yang mengeras dengan sendirinya, artinya <vocabulary>mengeras</vocabulary> atau <vocabulary>memadat</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda sudah mempelajari bacaan ini jadi Anda harus bisa membacanya!', 'Untuk Mengeras, Untuk Memperkuat, Menjadi Teguh, Menjadi Pasti')
    RETURNING id INTO v_7645_untuk_mengeras;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '達する', 'untuk-mencapai', 18, 145, 'Anda tahu bahwa 達 berarti <kanji>mencapai</kanji>. Jadi, ketika Anda menambahkan する ke dalamnya, Anda menjadikannya kata kerja. Sekarang artinya <vocabulary>untuk mencapai</vocabulary>.', 'Bacaan untuk ini adalah sedikit pengecualian. Kalian tahu kan bacaan untuk 達 adalah たつ, tapi di sini disingkat menjadi たっ saja. Jadi pastikan Anda mengingatnya.', 'Untuk Mencapai, Untuk Mencapai, Untuk Mencapai, Untuk Tiba Di')
    RETURNING id INTO v_7646_untuk_mencapai;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '遠く', 'jauh-sekali', 18, 146, 'Ini adalah versi kata benda/tanpa kata sifat dari kanji <kanji>jauh</kanji>, jadi artinya <vocabulary>jauh</vocabulary> atau <vocabulary>jauh</vocabulary>.', 'Ini menggunakan bacaan kun''yomi yang Anda pelajari dengan 遠い. Betapa nyamannya!', 'Jauh sekali, Jauh, Pada Jarak Jauh, Tempat yang Jauh')
    RETURNING id INTO v_7699_jauh_sekali;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '子守歌', 'nyanyian-pengantar-tidur', 18, 147, '<kanji>lagu</kanji> yang Anda nyanyikan untuk <kanji>melindungi</kanji> <kanji>anak</kanji> Anda saat mereka tidur disebut <vocabulary>nina bobo</vocabulary>.', 'Bacaan kata ini semuanya bacaan kun''yomi. Anda belum mempelajari bacaan ini untuk 守, jadi inilah mnemonik untuk membantu Anda:

Saat Anda selesai menyanyikan <vocabulary>lullaby</vocabulary> untuk anak Anda, mereka selalu meminta <read>more</reading> (もり). Tidak peduli berapa banyak Anda bernyanyi, mereka selalu menginginkan setidaknya satu lagu lagi sebelum mereka tertidur.', 'Nyanyian pengantar tidur')
    RETURNING id INTO v_7702_nyanyian_pengantar_tidur;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '高等', 'kelas-tinggi', 18, 148, 'Ketika Anda <kanji>lebih tinggi</kanji>lebih dari <kanji>yang setara</kanji>, Anda berada di atas yang paling atas, Anda berada di atas semua orang. Anda <vocabulary>kelas atas</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Kelas Tinggi, Kelas tinggi')
    RETURNING id INTO v_7703_kelas_tinggi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '辞書形', 'formulir-kamus', 18, 149, 'Ini adalah kombinasi kata 辞書 "kamus" dan akhiran 〜形 atau "bentuk". Gabungkan semuanya dan Anda mendapatkan <vocabulary>formulir kamus</vocabulary>!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Formulir Kamus')
    RETURNING id INTO v_7704_formulir_kamus;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '対等', 'persamaan', 18, 150, 'Tidak masalah apa yang Anda katakan <kanji>versus</kanji> <kanji>equal</kanji> hak. Jika Anda benar-benar ingin segala sesuatunya <vocabulary>equal</vocabulary>, Anda harus mendukung <vocabulary>equality</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Persamaan, Setara')
    RETURNING id INTO v_7760_persamaan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '幸い', 'kebahagiaan', 18, 151, '<kanji>Kebahagiaan</kanji> adalah <vocabulary>kebahagiaan</vocabulary>!', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda belum mempelajari bacaan ini, jadi inilah mnemonik untuk membantu Anda:

Jika hidupmu hanya diisi dengan <vocabulary>kebahagiaan</vocabulary>, setiap kali seseorang mengatakan sesuatu kepadamu, yang bisa kamu lakukan hanyalah mengatakan, "<reading>Huh, apa</reading>t (さいわ)?" Anda menghela nafas dan mengatakan apa. Karena kamu terlalu senang untuk benar-benar mendengarkan. Anda hanya menghela nafas sepanjang hari dan tidak memperhatikan.', 'Kebahagiaan, Keberuntungan, Harta benda')
    RETURNING id INTO v_8673_kebahagiaan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '禁じる', 'untuk-melarang', 18, 152, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>larangan</kanji> sehingga versi kata kerjanya berarti <vocabulary>melarang</vocabulary> atau <vocabulary>melarang</vocabulary>.', 'Bacaannya sama dengan kanji yang Anda pelajari, artinya Anda tahu bacaannya!', 'Untuk Melarang, Untuk Melarang')
    RETURNING id INTO v_8710_untuk_melarang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '品物', 'barang-barang', 18, 153, '<kanji>produk</kanji> <kanji>benda</kanji> adalah segala jenis <kosakata>barang</vocabulary> umum. Ini sespesifik mungkin ketika Anda membicarakan <vocabulary>hal</vocabulary> seperti ini.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji kun''yomi. Anda pernah melihat bacaan tersebut sebelumnya, tapi bacaan untuk 品 (しな) agak rumit, jadi inilah mnemonik untuk membantu Anda mengingat:

Pikirkan <reading>kemilau</reading> (しな) yang dimiliki <vocabulary>barang</vocabulary> baru sebelum Anda membelinya. Saat Anda membawanya pulang, kemilau itu sudah hilang. Tapi kemudian Anda kembali ke toko dan, wow! Semua barang yang belum Anda miliki memiliki kemilau itu! Harus membelinya!', 'Barang-barang, Benda, Artikel, Barang')
    RETURNING id INTO v_8807_barang_barang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '喉', 'tenggorokan', 18, 154, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Karena kata ini terdiri dari satu kanji (dan merupakan bagian tubuh), maka menggunakan bacaan kun''yomi. Anda tidak mempelajari bacaan ini, jadi inilah mnemonik untuk membantu Anda:

Ingat mnemonik saat pertama kali Anda mempelajari kanji ini? Yah, こういち masih ada di <kanji>tenggorokan</kanji>mu dan dia tidak ingin keluar. Faktanya, setiap kali Anda menariknya, dia berteriak, "<reading>Tidak Boleh</reading>- (のど)" tetapi Anda tersedak dan tidak dapat mendengar sisanya. Orang-orang di sekitar Anda mengira Anda mengatakan "Tidak Boleh-" padahal sebenarnya yang ada di tenggorokan Anda hanyalah orang aneh yang ada di tenggorokan Anda. Sungguh menyakitkan...', 'Tenggorokan')
    RETURNING id INTO v_8849_tenggorokan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '喉頭', 'pangkal-tenggorokan', 18, 155, 'Bagian tubuh yang berada di antara <kanji>tenggorokan</kanji> dan <kanji>kepala</kanji> Anda adalah <vocabulary>larynx</vocabulary> Anda. Dikenal juga sebagai <vocabulary>kotak suara</vocabulary>, karena pita suara Anda berada di sana.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda mempelajari bacaan on''yomi 頭 dengan 頭部, tetapi berikut ini mnemonik jika Anda lupa:

Jika Anda benar-benar ingin berolahraga <vocabulary>laring</vocabulary>, kunjungi <reading>とう</reading>きょう. Itu berisik, penuh sesak, dan Anda harus berteriak sepanjang waktu agar orang-orang mendengar apa yang Anda katakan. Anda juga mengetahui 18 level kanji dan Anda benar-benar ingin meneriakkan semuanya, yang membuat <vocabulary>kotak suara</vocabulary> Anda lelah (tetapi membuat Anda bahagia).', 'Pangkal tenggorokan, Kotak Suara')
    RETURNING id INTO v_8851_pangkal_tenggorokan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '叩く', 'untuk-menyerang', 18, 156, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>mengetuk</kanji> atau <kanji>menyerang</kanji>, dan versi kata kerjanya adalah <vocabulary>to strike</vocabulary>, <vocabulary>to tap</vocabulary>, <vocabulary>to hit</vocabulary>, <vocabulary>to knock</vocabulary>, atau <vocabulary>to beat</vocabulary>.

Kata kerja ini dapat digunakan untuk benda dan orang, dan terjemahan bahasa Inggrisnya akan berubah tergantung pada apa yang Anda lihat. Anda akan selalu mempunyai semacam objek, karena ini adalah kata kerja transitif. Jadi, Anda dapat menepuk bahu seseorang, mengetuk pintu, atau menabuh genderang.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Untungnya, Anda sudah mengetahui bacaan ini sejak Anda mempelajari kanji!', 'Untuk Menyerang, Untuk Mengetuk, Untuk Memukul, Untuk Mengetuk, Untuk Mengalahkan')
    RETURNING id INTO v_8852_untuk_menyerang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '飴', 'permen', 18, 157, 'Kanji dan kata-katanya sama persis. Kalau kita membicarakan <kosakata>permen</vocabulary> semacam ini, biasanya yang dimaksud adalah <vocabulary>permen keras</vocabulary> 🍬 atau <vocabulary>lollipop</vocabulary> 🍭.', 'Kata ini terdiri dari satu kanji dan menggunakan bacaan kun''yomi. Anda mempelajari bacaan ini dengan kanji, jadi Anda seharusnya sudah bisa membacanya!', 'Permen, Permen, Lolipop')
    RETURNING id INTO v_8854_permen;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '飴細工', 'patung-gula', 18, 158, '<kanji>Permen</kanji> yang dibuat menjadi <kanji>tipis</kanji> <kanji>konstruksi</kanji> adalah <vocabulary>patung gula</vocabulary> atau <vocabulary>patung permen</vocabulary>. Biasanya itu adalah <vocabulary>sugar animal</vocabulary>, tapi sebenarnya bisa apa saja.', 'Kata ini menggunakan bacaan kun''yomi untuk kanji pertama dan bacaan on''yomi untuk dua kanji kedua. Anda belum mempelajari bacaan ini untuk 工, jadi inilah mnemonik untuk membantu Anda:

Anda ingin <vocabulary>patung gula</vocabulary> Anda dibuat menjadi <reading>coo</reading>kies (く)! Kue kering adalah camilan favorit Anda yang lain, jadi mengonsumsi kue yang seluruhnya terbuat dari gula adalah yang terbaik.

Juga, hati-hati dengan rendaku di 細, mudah untuk dilewatkan jika Anda fokus mengingat bacaan on''yomi baru ini.', 'Patung Gula, Patung Permen, Hewan Gula')
    RETURNING id INTO v_8855_patung_gula;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '治る', 'untuk-menjadi-lebih-baik', 18, 159, 'Kanji 治 berarti <kanji>menyembuhkan</kanji>, namun kata kerja ini hanya mengacu pada proses yang lebih pasif untuk menjadi lebih baik: artinya <vocabulary>menjadi lebih baik</vocabulary>, <vocabulary>menjadi sembuh</vocabulary>, atau sekadar <vocabulary>untuk menyembuhkan</vocabulary>. 

治る bukan tentang seseorang yang secara aktif menyembuhkan sesuatu, ini hanya tentang sesuatu menjadi lebih baik — seperti 自然に治る (menyembuhkan secara alami) atau 薬で治る (menjadi lebih baik dengan obat-obatan). Bagaimana cara mengingatnya? Jika kamu ingin sembuh, beritahu penyakitmu bahwa penyakitmu sedang <reading>ru</reading>de (る). Segera setelah Anda menyatakannya karena bersikap kasar, itu akan sembuh. Itu hanya sains.', 'Ini menggunakan bacaan yang sama yang Anda pelajari dengan kata terkait 治す, tapi berikut ini mnemonik untuk berjaga-jaga:

Saat kamu sakit, ibumu menelepon setiap hari dan berkata, "Kamu harus <vocabulary>menjadi lebih baik</vocabulary>, <reading>sekarang</reading> (なお)! Lakukan — jadilah lebih baik SEKARANG!" Menindas Anda agar sembuh adalah tindakan Ibu yang total, dan entah bagaimana berhasil. Nah, Anda semua lebih baik sekarang.', 'Untuk Menjadi Lebih Baik, Agar Sembuh, Untuk Menyembuhkan')
    RETURNING id INTO v_8927_untuk_menjadi_lebih_baik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '苛める', 'untuk-menggertak', 18, 160, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>frustasi</kanji>. Apa yang dilakukan orang yang frustrasi? Mereka cenderung <vocabulary>menindas</vocabulary>, <vocabulary>mengganggu</vocabulary>, <vocabulary>menggoda</vocabulary>, dan <vocabulary>menyiksa</vocabulary> orang lain.', 'Kata ini menggunakan bacaan yang sama seperti yang Anda pelajari dengan kanji.', 'Untuk Menggertak, Untuk Memilih, Untuk Menggoda, Untuk Menyiksa')
    RETURNING id INTO v_8997_untuk_menggertak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '関わる', 'untuk-terlibat', 18, 161, 'Anda tahu bahwa kanji berarti <kanji>berhubungan</kanji>. Sebagai kata kerja, kata ini sering kali berarti <kosakata>terlibat</vocabulary>, <vocabulary>terkait</vocabulary>, dan <vocabulary>terhubung</vocabulary>. Pada dasarnya, hal-hal yang ada hubungannya dengan hal lain.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda:  

Pernah mendengar tentang "<reading>Kaw Kaw</reading> (かか) Crow Gang"? Mereka adalah berita buruk, selalu makan dari sampah dan mengoceh "kaw kaw" ... Anda tentu tidak ingin <vocabulary>terlibat</vocabulary> dengan mereka.', 'Untuk Terlibat, Menjadi Terkait, Untuk Terhubung')
    RETURNING id INTO v_9021_untuk_terlibat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '初恋', 'cinta-pertama', 18, 162, '<kanji>pertama</kanji> <kanji>cinta</kanji> Anda adalah <vocabulary>cinta pertama</vocabulary> Anda atau <vocabulary>naksir pertama</vocabulary> Anda. Ini biasanya mengacu pada pertama kali Anda jatuh cinta, tetapi bisa juga merujuk pada orang yang Anda cintai.', 'Mirip dengan 初耳, 初 berperilaku lebih seperti awalan di sini, yang artinya menggunakan pembacaan kun''yomi. Anda sudah mengetahui ini untuk 初 dan 恋, jadi sebaiknya Anda mulai!', 'Cinta Pertama, Naksir Pertama')
    RETURNING id INTO v_9035_cinta_pertama;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '繋がる', 'untuk-terhubung', 18, 163, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu bahwa ini adalah kata kerja. Kanji itu sendiri berarti <kanji>menghubungkan</kanji>, yang menjadikan <vocabulary>terhubung ke</vocabulary>. Dalam situasi lain, ini juga bisa berarti <vocabulary>diikat bersama</vocabulary>, atau <vocabulary>mengarah ke</vocabulary>.', 'Anda sudah mempelajari bacaan ini dengan kanji, jadi sebaiknya Anda mulai!', 'Untuk Terhubung, Untuk Diikat Bersama, Untuk Memimpin, Untuk Terhubung Ke')
    RETURNING id INTO v_9247_untuk_terhubung;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '真面目', 'serius', 18, 164, 'Saat kamu melihat <kanji>realitas</kanji> di <kanji>wajah</kanji> dan <kanji>mata</kanji> seseorang, kamu tahu bahwa dia adalah orang yang <vocabulary>serius</vocabulary>. Tidak ada lelucon atau fantasi konyol di sini.

真面目 menggambarkan seseorang yang menganggap serius sesuatu dan melakukan apa yang diharapkan darinya. Kata ini sering digunakan untuk orang yang bertanggung jawab, pekerja keras, dan tulus, seperti 真面目な学生 (siswa yang serius).', 'Kata ini memiliki bacaan yang sedikit tidak konvensional. 目 menggunakan bacaan め yang biasa, tetapi bacaan untuk 真 dan 面 bukan yang Anda pelajari dengan kanji. Berikut ini mnemonik untuk membantu Anda mengingatnya:

Kamu harus <vocabulary>serius</vocabulary> jika ingin mempelajari <reading>magi</reading>c (まじ). Ini tidak seperti film di mana kamu bisa merapal mantra sihir hanya karena kamu adalah "yang terpilih" atau semacamnya. Anda harus <vocabulary>dengan sungguh-sungguh</vocabulary> mempelajari buku mantra Anda dan menghafal semua mantra dan kutukan itu satu per satu.', 'Serius, Sungguh-sungguh')
    RETURNING id INTO v_9479_serius;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2903_untuk_diperbaiki, 'Untuk Diperbaiki', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2903_untuk_diperbaiki, 'Untuk Kembali Bekerja', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2903_untuk_diperbaiki, 'Untuk Kembali Normal', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3959_sisi_barat, 'Sisi Barat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3959_sisi_barat, 'Barat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4011_hasil, 'Hasil', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4011_hasil, 'Hasil', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4026_pada_akhirnya, 'Pada akhirnya', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4026_pada_akhirnya, 'Bagaimanapun', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4026_pada_akhirnya, 'Akhirnya', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4051_anggun, 'Anggun', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4052_dialek_osaka, 'Dialek Osaka', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4053_dialek_kansai, 'Dialek Kansai', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4056_senin, 'Senin', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4059_pertukaran_pelajar, 'Pertukaran Pelajar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4059_pertukaran_pelajar, 'Pelajar Internasional', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4059_pertukaran_pelajar, 'Pelajar Asing', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4060_komedi, 'Komedi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4060_komedi, 'Candaan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4060_komedi, 'Cerita Lucu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4061_bagasi_tangan, 'Bagasi Tangan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4061_bagasi_tangan, 'Bagasi Tangan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4061_bagasi_tangan, 'Bagasi Kabin', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4061_bagasi_tangan, 'Melanjutkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4063_sebuah_tertawa, 'Sebuah Tertawa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4063_sebuah_tertawa, 'Tertawa', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4064_peminjaman, 'Peminjaman', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4064_peminjaman, 'Meminjamkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4065_untuk_meminjam, 'Untuk Meminjam', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4066_utang, 'Utang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4067_rumah_kontrakan, 'Rumah kontrakan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4067_rumah_kontrakan, 'Rumah sewa', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4067_rumah_kontrakan, 'Menyewa Rumah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4068_kuil, 'Kuil', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4068_kuil, 'Biara', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4069_pendeta_buddha, 'Pendeta Buddha', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4075_keluhan, 'Keluhan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4075_keluhan, 'Menggerutu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4075_keluhan, 'Frasa', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4076_kata_tabu, 'Kata Tabu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4076_kata_tabu, 'Frase Tabu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4076_kata_tabu, 'Kata Kotor', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4076_kata_tabu, 'Kata Buruk', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4077_imut_imut, 'Imut-imut', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4078_izin, 'Izin', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4079_terbagi, 'Terbagi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4079_terbagi, 'Dapat dipisahkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4080_sangat_diperlukan, 'Sangat diperlukan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4080_sangat_diperlukan, 'Penting', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4081_pengakuan, 'Pengakuan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4082_untuk_mengumumkan, 'Untuk Mengumumkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4082_untuk_mengumumkan, 'Untuk Memberitahu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4083_iklan, 'Iklan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4083_iklan, 'Iklan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4083_iklan, 'Iklan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4084_pemberitahuan_sebelumnya, 'Pemberitahuan Sebelumnya', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4084_pemberitahuan_sebelumnya, 'Pemberitahuan Sebelumnya', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4084_pemberitahuan_sebelumnya, 'Cuplikan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4084_pemberitahuan_sebelumnya, 'Pratinjau', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4086_laporan, 'Laporan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4086_laporan, 'Informasi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4087_merokok, 'Merokok', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4088_kafe, 'Kafe', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4088_kafe, 'Rumah Teh', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4088_kafe, 'Kedai kopi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4088_kafe, 'Rumah Kopi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4089_informasi, 'Informasi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4089_informasi, 'Data', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4090_ramalan, 'Ramalan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4091_untuk_melaporkan, 'Untuk Melaporkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4092_laporan_berita, 'Laporan Berita', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4093_jimat, 'Jimat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4093_jimat, 'Pesona', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4094_penjaga, 'Penjaga', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4094_penjaga, 'Menjaga rumah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4094_penjaga, 'Menjaga Rumah Seseorang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4095_seiza, 'Seiza', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4095_seiza, 'Duduk Tradisional Jepang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4096_meditasi_zen, 'Meditasi Zen', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4096_meditasi_zen, 'Zazen', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4097_kursi, 'Kursi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4098_ginza, 'Ginza', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4099_stasiun_kereta_bento, 'Stasiun Kereta Bento', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4099_stasiun_kereta_bento, 'Stasiun Bento', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4100_busur, 'Busur', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4101_panahan, 'Panahan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4101_panahan, 'Kyudo', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4101_panahan, 'Kyudou', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4102_untuk_melupakan, 'Untuk Melupakan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4102_untuk_melupakan, 'Untuk Melupakan Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4103_pesta_akhir_tahun, 'Pesta Akhir Tahun', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4103_pesta_akhir_tahun, 'Pesta Akhir Tahun', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4104_draf_kasar, 'Draf Kasar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4105_untuk_menulis, 'Untuk Menulis', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4105_untuk_menulis, 'Untuk Mengisi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4106_cara_menulis, 'Cara Menulis', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4106_cara_menulis, 'Cara Penulisan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4108_berapa_banyak_benda_datar, 'Berapa Banyak Benda Datar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4108_berapa_banyak_benda_datar, 'Berapa Lembar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4109_jumlah_lembar, 'Jumlah Lembar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4109_jumlah_lembar, 'Jumlah Benda Datar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4110_lima_benda_datar, 'Lima Benda Datar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4110_lima_benda_datar, 'Lima Lembar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4111_untuk_mencuci, 'Untuk mencuci', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4112_tempat_cuci_mobil, 'Tempat cuci mobil', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4113_perbaikan, 'Perbaikan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4113_perbaikan, 'Polandia', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4115_untuk_memanggang, 'Untuk Memanggang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4115_untuk_memanggang, 'Untuk Membakar Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4115_untuk_memanggang, 'Untuk Memanggang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4116_terbakar_sinar_matahari, 'Terbakar sinar matahari', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4116_terbakar_sinar_matahari, 'Warna coklat karena berjemur', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4116_terbakar_sinar_matahari, 'Tan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4117_ayam_panggang, 'Ayam Panggang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4117_ayam_panggang, 'Ayam panggang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4117_ayam_panggang, 'Yakitori', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4118_daging_panggang, 'Daging Panggang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4118_daging_panggang, 'Daging Panggang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4118_daging_panggang, 'Yakiniku', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4119_matahari_terbenam, 'Matahari terbenam', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4119_matahari_terbenam, 'Cahaya Malam', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4120_merokok, 'Merokok', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4121_asap_hitam, 'Asap Hitam', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4125_dilarang_merokok, 'DILARANG MEROKOK', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4126_terlarang, 'Terlarang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4126_terlarang, 'Larangan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4126_terlarang, 'Melarang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4127_kuil_zen, 'Kuil Zen', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4128_pendeta_zen, 'Pendeta Zen', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4128_pendeta_zen, 'Biksu Zen', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4130_ras_manusia, 'Ras Manusia', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4130_ras_manusia, 'Balapan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4131_setara, 'Setara', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4131_setara, 'Sama', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4131_setara, 'Setara', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4131_setara, 'Serupa', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4132_tanda_setara, 'Tanda Setara', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4132_tanda_setara, 'Tanda Setara', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4133_kelas_satu, 'Kelas satu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4133_kelas_satu, 'Peringkat Pertama', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4133_kelas_satu, 'Terbaik', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4135_pelatihan, 'Pelatihan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4135_pelatihan, 'Praktik', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4136_dada, 'Dada', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4136_dada, 'Payudara', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4137_otak, 'Otak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4138_kematian_otak, 'Kematian Otak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4138_kematian_otak, 'Otak Mati', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4139_otak, 'Otak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4139_otak, 'Materi Abu-abu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4140_indoktrinasi, 'Indoktrinasi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4142_mencoret_coret, 'mencoret-coret', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4142_mencoret_coret, 'Mencoret-coret', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4142_mencoret_coret, 'Coretan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4143_kartu_pos, 'Kartu pos', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4144_kunyomi, 'Kun''yomi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4144_kunyomi, 'Kun Membaca', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4144_kunyomi, 'Bacaan Jepang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4145_pelajaran, 'Pelajaran', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4145_pelajaran, 'Moral', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4145_pelajaran, 'Ajaran', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4146_untuk_mengizinkan, 'Untuk Mengizinkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4146_untuk_mengizinkan, 'Untuk Memaafkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4146_untuk_mengizinkan, 'Untuk memungkinkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4151_teman, 'Teman', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4151_teman, 'Pendamping', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4152_untuk_memberikan, 'Untuk Memberikan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4153_menguasai, 'Menguasai', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4153_menguasai, 'Pakar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4154_penularan, 'Penularan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4154_penularan, 'Mengirimkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4154_penularan, 'Mengangkut', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4155_diam, 'Diam', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4156_tetap, 'Tetap', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4156_tetap, 'Berhenti', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4156_tetap, 'Saat Istirahat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4156_tetap, 'Tidak bergerak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4157_tenang, 'Tenang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4157_tenang, 'Tenang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4157_tenang, 'Tenang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4158_kemanusiaan, 'Kemanusiaan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4158_kemanusiaan, 'Kemanusiaan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4158_kemanusiaan, 'umat manusia', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4159_klasifikasi, 'Klasifikasi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4159_klasifikasi, 'Kategorisasi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4160_baik, 'Baik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4160_baik, 'Jenis', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4160_baik, 'Menyortir', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4161_kerabat, 'Kerabat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4350_buku_petunjuk, 'Buku Petunjuk', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4350_buku_petunjuk, 'Panduan Pengguna', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4351_kereta_uap, 'Kereta Uap', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4351_kereta_uap, 'Kereta Mesin Uap', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4351_kereta_uap, 'Mesin uap', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4352_kapal_uap, 'Kapal Uap', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4352_kapal_uap, 'Kapal Uap', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4355_dokumen, 'Dokumen', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4361_selasa, 'Selasa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4840_mungkin, 'Mungkin', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5845_untuk_menutup, 'Untuk Menutup', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5845_untuk_menutup, 'Untuk menutup', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7151_aman, 'Aman', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7151_aman, 'Baiklah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7151_aman, 'Oke', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7454_penghitung_benda_datar, 'Penghitung Benda Datar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7454_penghitung_benda_datar, 'Item Pakaian', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7454_penghitung_benda_datar, 'Seprai', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7479_untuk_duduk, 'Untuk Duduk', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7549_sufiks_yang_jamak, 'Sufiks yang jamak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7592_peringatan, 'Peringatan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7592_peringatan, 'Nasihat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7592_peringatan, 'Peringatan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7645_untuk_mengeras, 'Untuk Mengeras', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7645_untuk_mengeras, 'Untuk Memperkuat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7645_untuk_mengeras, 'Menjadi Teguh', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7645_untuk_mengeras, 'Menjadi Pasti', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7646_untuk_mencapai, 'Untuk Mencapai', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7646_untuk_mencapai, 'Untuk Mencapai', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7646_untuk_mencapai, 'Untuk Mencapai', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7646_untuk_mencapai, 'Untuk Tiba Di', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7699_jauh_sekali, 'Jauh sekali', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7699_jauh_sekali, 'Jauh', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7699_jauh_sekali, 'Pada Jarak Jauh', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7699_jauh_sekali, 'Tempat yang Jauh', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7702_nyanyian_pengantar_tidur, 'Nyanyian pengantar tidur', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7703_kelas_tinggi, 'Kelas Tinggi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7703_kelas_tinggi, 'Kelas tinggi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7704_formulir_kamus, 'Formulir Kamus', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7760_persamaan, 'Persamaan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7760_persamaan, 'Setara', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8673_kebahagiaan, 'Kebahagiaan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8673_kebahagiaan, 'Keberuntungan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8673_kebahagiaan, 'Harta benda', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8710_untuk_melarang, 'Untuk Melarang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8710_untuk_melarang, 'Untuk Melarang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8807_barang_barang, 'Barang-barang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8807_barang_barang, 'Benda', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8807_barang_barang, 'Artikel', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8807_barang_barang, 'Barang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8849_tenggorokan, 'Tenggorokan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8851_pangkal_tenggorokan, 'Pangkal tenggorokan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8851_pangkal_tenggorokan, 'Kotak Suara', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8852_untuk_menyerang, 'Untuk Menyerang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8852_untuk_menyerang, 'Untuk Mengetuk', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8852_untuk_menyerang, 'Untuk Memukul', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8852_untuk_menyerang, 'Untuk Mengetuk', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8852_untuk_menyerang, 'Untuk Mengalahkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8854_permen, 'Permen', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8854_permen, 'Permen', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8854_permen, 'Lolipop', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8855_patung_gula, 'Patung Gula', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8855_patung_gula, 'Patung Permen', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8855_patung_gula, 'Hewan Gula', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8927_untuk_menjadi_lebih_baik, 'Untuk Menjadi Lebih Baik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8927_untuk_menjadi_lebih_baik, 'Agar Sembuh', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8927_untuk_menjadi_lebih_baik, 'Untuk Menyembuhkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8997_untuk_menggertak, 'Untuk Menggertak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8997_untuk_menggertak, 'Untuk Memilih', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8997_untuk_menggertak, 'Untuk Menggoda', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8997_untuk_menggertak, 'Untuk Menyiksa', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9021_untuk_terlibat, 'Untuk Terlibat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9021_untuk_terlibat, 'Menjadi Terkait', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9021_untuk_terlibat, 'Untuk Terhubung', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9035_cinta_pertama, 'Cinta Pertama', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9035_cinta_pertama, 'Naksir Pertama', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9247_untuk_terhubung, 'Untuk Terhubung', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9247_untuk_terhubung, 'Untuk Diikat Bersama', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9247_untuk_terhubung, 'Untuk Memimpin', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9247_untuk_terhubung, 'Untuk Terhubung Ke', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9479_serius, 'Serius', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9479_serius, 'Sungguh-sungguh', false, true);

  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2903_untuk_diperbaiki, 'なおる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3959_sisi_barat, 'にしがわ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4011_hasil, 'けっか', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4026_pada_akhirnya, 'けっきょく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4051_anggun, 'じょうひん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4052_dialek_osaka, 'おおさかべん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4053_dialek_kansai, 'かんさいべん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4056_senin, 'げつようび', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4059_pertukaran_pelajar, 'りゅうがくせい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4060_komedi, 'おわらい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4061_bagasi_tangan, 'てにもつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4063_sebuah_tertawa, 'わらい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4064_peminjaman, 'しゃくよう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4065_untuk_meminjam, 'かりる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4066_utang, 'しゃっきん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4067_rumah_kontrakan, 'しゃくや', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4067_rumah_kontrakan, 'しゃっか', NULL, false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4068_kuil, 'そういん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4069_pendeta_buddha, 'ぶっそう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4075_keluhan, 'もんく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4076_kata_tabu, 'きんく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4077_imut_imut, 'かわいい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4078_izin, 'きょか', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4079_terbagi, 'かぶん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4080_sangat_diperlukan, 'ふかけつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4081_pengakuan, 'こくはく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4082_untuk_mengumumkan, 'つげる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4083_iklan, 'こうこく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4084_pemberitahuan_sebelumnya, 'よこく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4086_laporan, 'ほうこく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4087_merokok, 'きつえん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4088_kafe, 'きっさてん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4089_informasi, 'じょうほう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4090_ramalan, 'よほう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4091_untuk_melaporkan, 'ほうじる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4092_laporan_berita, 'ほうどう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4093_jimat, 'おまもり', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4094_penjaga, 'るすばん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4095_seiza, 'せいざ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4096_meditasi_zen, 'ざぜん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4097_kursi, 'ざせき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4098_ginza, 'ぎんざ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4099_stasiun_kereta_bento, 'えきべん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4100_busur, 'ゆみ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4101_panahan, 'きゅうどう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4102_untuk_melupakan, 'わすれる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4103_pesta_akhir_tahun, 'ぼうねんかい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4104_draf_kasar, 'したがき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4105_untuk_menulis, 'かきいれる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4106_cara_menulis, 'かきかた', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4108_berapa_banyak_benda_datar, 'なんまい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4109_jumlah_lembar, 'まいすう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4110_lima_benda_datar, 'ごまい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4111_untuk_mencuci, 'あらう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4112_tempat_cuci_mobil, 'せんしゃ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4113_perbaikan, 'せんれん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4115_untuk_memanggang, 'やく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4116_terbakar_sinar_matahari, 'ひやけ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4117_ayam_panggang, 'やきとり', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4118_daging_panggang, 'やきにく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4119_matahari_terbenam, 'ゆうやけ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4120_merokok, 'けむり', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4121_asap_hitam, 'こくえん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4125_dilarang_merokok, 'きんえん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4126_terlarang, 'きんし', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4127_kuil_zen, 'ぜんでら', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4127_kuil_zen, 'ぜんじ', NULL, false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4128_pendeta_zen, 'ぜんそう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4130_ras_manusia, 'じんしゅ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4131_setara, 'ひとしい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4132_tanda_setara, 'とうごう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4133_kelas_satu, 'いっとう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4135_pelatihan, 'くんれん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4136_dada, 'むね', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4137_otak, 'のう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4138_kematian_otak, 'のうし', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4139_otak, 'のうみそ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4140_indoktrinasi, 'せんのう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4142_mencoret_coret, 'らくがき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4143_kartu_pos, 'はがき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4144_kunyomi, 'くんよみ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4145_pelajaran, 'きょうくん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4146_untuk_mengizinkan, 'ゆるす', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4151_teman, 'ともだち', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4152_untuk_memberikan, 'はいたつする', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4153_menguasai, 'たつじん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4154_penularan, 'でんたつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4155_diam, 'しずか', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4156_tetap, 'せいし', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4157_tenang, 'へいせい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4158_kemanusiaan, 'じんるい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4159_klasifikasi, 'ぶんるい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4160_baik, 'しゅるい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4161_kerabat, 'しんるい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4350_buku_petunjuk, 'せつめいしょ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4351_kereta_uap, 'きしゃ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4352_kapal_uap, 'きせん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4355_dokumen, 'しょるい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4361_selasa, 'かようび', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4840_mungkin, 'かのう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5845_untuk_menutup, 'しまる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7151_aman, 'だいじょうぶ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7454_penghitung_benda_datar, 'まい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7479_untuk_duduk, 'すわる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7549_sufiks_yang_jamak, 'たち', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7592_peringatan, 'けいこく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7645_untuk_mengeras, 'かたまる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7646_untuk_mencapai, 'たっする', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7699_jauh_sekali, 'とおく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7702_nyanyian_pengantar_tidur, 'こもりうた', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7703_kelas_tinggi, 'こうとう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7704_formulir_kamus, 'じしょけい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7760_persamaan, 'たいとう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8673_kebahagiaan, 'さいわい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8710_untuk_melarang, 'きんじる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8807_barang_barang, 'しなもの', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8849_tenggorokan, 'のど', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8851_pangkal_tenggorokan, 'こうとう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8852_untuk_menyerang, 'たたく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8854_permen, 'あめ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8855_patung_gula, 'あめざいく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8927_untuk_menjadi_lebih_baik, 'なおる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8997_untuk_menggertak, 'いじめる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9021_untuk_terlibat, 'かかわる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9035_cinta_pertama, 'はつこい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9247_untuk_terhubung, 'つながる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9479_serius, 'まじめ', NULL, true, true);

  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2903_untuk_diperbaiki, 'もうすぐ、インターネットのルーターが直ると思う。', 'Saya pikir router internet akan segera diperbaiki.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2903_untuk_diperbaiki, '出血が止まって、足首のいたみも直った。', 'Pendarahan berhenti dan rasa sakit di pergelangan kaki hilang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2903_untuk_diperbaiki, '今日トイレが直らないと仕方がない。', 'Jika toilet tidak diperbaiki hari ini, kami tidak bisa berbuat apa-apa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3959_sisi_barat, '家の西側に黄色いものがあると金運がアップするそうです。', 'Rumah dengan warna kuning di sisi barat konon membawa keberuntungan dalam hal uang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3959_sisi_barat, 'このホテルの西側には、大きなポプラの木が植えられています。', 'Pohon poplar berukuran besar ditanam di sisi barat hotel ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3959_sisi_barat, 'それって西側のメディアのニュースでしょ？', 'Itu berita dari media barat ya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4011_hasil, '今日のテストの結果が気になります。', 'Saya sangat ingin melihat hasil tes hari ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4011_hasil, '昨日の試合の結果はどうでしたか？', 'Apa hasil pertandingan kemarin?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4011_hasil, 'コウイチ社長は、結果が一番大事だとよく口にしています。', 'Presiden Koichi sering mengatakan bahwa hasil adalah hal yang paling penting.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4026_pada_akhirnya, '結局、彼は試験に合格しませんでした。', 'Pada akhirnya, dia tidak lulus ujian.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4026_pada_akhirnya, 'そう言えば、彼女とは結局どうなったの？', 'Ngomong-ngomong, apa yang akhirnya terjadi antara kamu dan dia?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4026_pada_akhirnya, 'バレンタインの友チョコを買いに行ったんだけど、結局自分用チョコしか買わなかったわ。', 'Aku pergi membeli beberapa coklat Valentine untuk teman-temanku, tapi pada akhirnya aku hanya membeli beberapa untuk diriku sendiri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4051_anggun, 'とても上品な味です。', 'Rasanya sangat elegan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4051_anggun, 'カナエはいつも上品にナイフとフォークを使う。', 'Kanae selalu menggunakan garpu dan pisau dengan elegan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4051_anggun, '私の友達はミセスコンテストで上品な言葉づかいでスピーチした。', 'Teman saya memberikan pidato dengan bahasa yang elegan di kontes Ny.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4052_dialek_osaka, '大阪弁を教えてください。', 'Tolong ajari saya dialek Osaka.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4052_dialek_osaka, '私の彼氏は大阪弁をしゃべります。', 'Pacarku berbicara dialek Osaka.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4052_dialek_osaka, '関西空港に着くと、大阪弁が聞こえてきて、「ああ、無事に大阪に帰ってきたんだなー」と思ってホッとしました。', 'Ketika saya tiba di Bandara Kansai, saya mendengar dialek Osaka, dan saya merasa lega sambil berpikir, "Ah, saya sudah kembali dengan selamat ke Osaka."');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4053_dialek_kansai, '私は関西弁がしゃべれます。', 'Saya bisa berbicara dialek Kansai.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4053_dialek_kansai, 'それは関西弁のイントネーションではどんな感じになりますか？', 'Seperti apa intonasi dialek Kansai?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4053_dialek_kansai, 'え、なんで関西弁話せるん？しかもめっちゃコテコテの関西弁やん！', 'Hah, kenapa kamu bisa berbicara dengan dialek Kansai? Dan itu adalah dialek Kansai yang sangat kental!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4056_senin, '今度の月曜日、仕事の後、飲みに行かない？', 'Ingin keluar untuk minum pada hari Senin mendatang setelah bekerja?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4056_senin, '月曜日は新しい週の始まりです。', 'Senin adalah awal minggu baru.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4056_senin, '月曜日はいつも起きるのがツライです。会社に行きたくないんで。', 'Saya selalu kesulitan bangun di hari Senin. Saya tidak ingin pergi bekerja.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4059_pertukaran_pelajar, '彼女はカナダからの留学生です。', 'Dia adalah pelajar internasional dari Kanada.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4059_pertukaran_pelajar, 'これが留学生向けのサポートプログラムです。', 'Ini adalah program dukungan yang tersedia untuk pertukaran pelajar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4059_pertukaran_pelajar, 'あのクラスの留学生、何だかあどけない感じがするよね。', 'Siswa asing di kelas itu terlihat tidak bersalah, bukan begitu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4060_komedi, '私は日本のお笑いが好きです。', 'Saya suka komedi Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4060_komedi, '俺たち、お笑い芸人になりたいんです。', 'Kami ingin menjadi komedian.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4060_komedi, 'あー、面白かった。まさかあんなお笑いみたいな結末になるとは、思ってもみなかったよ！', 'Oh, itu lucu sekali! Saya tidak pernah menyangka ini akan berakhir seperti komedi!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4061_bagasi_tangan, '手荷物の中には、必要なものだけを入れるようにしています。', 'Saya mencoba untuk hanya memasukkan apa yang saya butuhkan ke dalam tas tangan saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4061_bagasi_tangan, 'フロントで手荷物をあずかってもらえるよ。', 'Anda dapat meninggalkan bagasi Anda di meja depan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4061_bagasi_tangan, '手荷物チェックのとこで引っかかっちゃったんだ！', 'Saya terjebak di pemeriksaan bagasi!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4063_sebuah_tertawa, '日本ではクリスマスディナーにケンタッキーを食べると言ったら、なぜか笑いが起きました。', 'Semua orang tertawa karena suatu alasan ketika saya mengatakan bahwa orang-orang makan KFC untuk makan malam Natal di Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4063_sebuah_tertawa, 'もう自分でも何を笑ってるのか分からないけど、ただ笑いが止まらないんです。', 'Aku tidak tahu lagi apa yang membuatku tertawa, tapi aku tidak bisa berhenti tertawa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4063_sebuah_tertawa, '映画を見て泣くなんて、お前らしくないじゃないか。いつもどの映画のどんなシリアスなシーンにも大笑いしてるのに。', 'Anda tidak menangis saat menonton film. Anda selalu tertawa terbahak-bahak ketika ada adegan serius di dalamnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4064_peminjaman, 'ちゃんと借用書を書いてくれるんだったら、お金をかしてもいいよ。', 'Jika Anda menulis surat utang kepada saya, saya tidak keberatan meminjamkan sejumlah uang kepada Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4064_peminjaman, 'このイラストはトーフグのアヤさんから借用させてもらいました。', 'Ilustrasi ini dipinjam dari Aya dari Tofugu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4064_peminjaman, '英語にはフランス語からの借用語がたくさんありますし、スペイン語にはアラビア語からの借用語が多いんですよ。', 'Bahasa Inggris memiliki banyak kata pinjaman dari bahasa Perancis, dan bahasa Spanyol memiliki banyak kata pinjaman dari bahasa Arab.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4065_untuk_meminjam, 'アクを取りたいので、ちょっとお玉を借りてもいいですか？', 'Saya ingin membuang sampah dari atas, jadi bolehkah saya meminjam sendok Anda sebentar?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4065_untuk_meminjam, 'クリステンのルーズリーフ、一枚借りたよ。', 'Aku meminjam salah satu lembar kertas lepasmu, Kristen.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4065_untuk_meminjam, '「ごめんね。君から借りていた恋愛小説をなくしちゃったんだ。」「気にしないでいいよ。それはもう必要ないから。彼女ができたんだ。」', '"Maaf aku kehilangan novel roman yang kupinjam darimu." "Jangan khawatir. Lagipula aku tidak membutuhkannya lagi. Aku punya pacar sekarang."');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4066_utang, '気づいたら借金が五百万円になっていた。', 'Sebelum saya menyadarinya, utang saya telah mencapai lima juta yen.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4066_utang, '借金を返し終わったら、彼は新しい人生を始めるつもりです。', 'Setelah dia melunasi utangnya, dia berencana memulai hidup baru.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4066_utang, 'コウイチは、ビエトに五千万円を借金してます。', 'Koichi berhutang pada Viet 50.000.000 yen.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4067_rumah_kontrakan, 'コストメリットは借家の方が大きいんですよ。', 'Manfaat biaya lebih besar dengan menyewa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4067_rumah_kontrakan, 'お前もそろそろ家を買わないと、一生借家ぐらしになるよ。', 'Anda juga harus segera membeli rumah, atau Anda akan menjadi penyewa seumur hidup.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4067_rumah_kontrakan, '借家なのに、庭に勝手に小屋を建てちゃったんですよね。大丈夫かな？', 'Saya membangun gudang di halaman tanpa izin, padahal itu adalah properti sewaan. Aku ingin tahu apakah tidak apa-apa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4068_kuil, 'ナーランダ僧院は仏教のメッカでした。', 'Biara Nalanda adalah Mekah agama Buddha.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4068_kuil, '一人で山上のタクツァン僧院まで登りました。', 'Saya mendaki ke Biara Taktsang di gunung sendirian.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4068_kuil, '初めまして。今日からこの僧院で働くコウイチです。よろしくお願いします。', 'Senang bertemu denganmu, aku Koichi. Saya mulai bekerja di kuil ini mulai hari ini. Tolong jaga aku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4069_pendeta_buddha, 'この本は元仏僧の方が書かれた本です。', 'Buku ini ditulis oleh seorang mantan biksu Buddha.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4069_pendeta_buddha, '今、仏僧の生活スタイルについて調べています。', 'Saat ini saya sedang meneliti gaya hidup para biksu Buddha.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4069_pendeta_buddha, '高名な仏僧がヤクザになるとは、世の中もブッソウになったモンだねぇ。', 'Ini adalah dunia yang cukup berbahaya ketika bahkan seorang biksu Buddha terkenal menjadi yakuza, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4075_keluhan, '彼は何かにつけて文句を言いたがります。', 'Dia selalu ingin mengeluh tentang sesuatu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4075_keluhan, 'そのレストランの料理には文句のつけようがありませんでした。', 'Saya tidak bisa mengeluh tentang makanan di restoran itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4075_keluhan, 'それは口説き文句でしょ？', 'Itu jalur penjemputan, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4076_kata_tabu, 'シーッ！それは禁句ですよ！', 'Ssst! Itu kalimat terlarang!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4076_kata_tabu, 'これからは、「可愛い」は禁句ですよ。', 'Mulai sekarang, "Kawaii" adalah ungkapan terlarang, oke?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4076_kata_tabu, 'ウチの社長の前では「今度」とか「いつか」は禁句です。今日できることは今日やってしまうポリシーの人なんで。', 'Di hadapan presiden kita, ungkapan seperti "lain kali" atau "suatu hari nanti" dilarang. Dia adalah orang yang mengikuti kebijakan melakukan sesuatu hari ini jika hal itu bisa dilakukan hari ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4077_imut_imut, 'サキって可愛い声で話すよね。', 'Saki berbicara dengan suara yang lucu, bukan begitu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4077_imut_imut, 'あの可愛い赤ちゃんは誰の子ですか？', 'Milik siapa bayi lucu itu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4077_imut_imut, 'このワニカニのアイコン、めっちゃ可愛い！', 'Ikon WaniKani ini lucu sekali!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4078_izin, '学校から許可はもらっています。', 'Kami mendapat izin dari sekolah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4078_izin, 'それって誰が許可したの？', 'Siapa yang memberimu izin untuk melakukan itu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4078_izin, '大きなプロジェクトを開始するには、社長の許可が必要です。', 'Izin presiden diperlukan untuk memulai proyek besar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4079_terbagi, '今日のトーフグポッドキャストのテーマは、生と死の不可分性です。', 'Tema podcast Tofugu hari ini adalah tidak terpisahkannya hidup dan mati.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4079_terbagi, '英文けい約書には、一ぱんじょうこうの一つに、可分性というじょうこうがよくあります。', 'Kontrak Inggris sering kali memiliki klausul keterpisahan sebagai salah satu ketentuan umum.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4079_terbagi, '預貯金などの可分債権は、原則として遺産分割の対象にはなりません。', 'Sebagai aturan umum, klaim yang dapat dibagi, seperti rekening tabungan, tidak menjadi sasaran pembagian harta warisan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4080_sangat_diperlukan, 'メガネは私の生活に不可欠です。', 'Kacamata adalah bagian integral dari hidup saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4080_sangat_diperlukan, '日本語がペラペラになるのに不可欠なことは何だと思いますか？', 'Menurut Anda apa yang penting untuk menjadi fasih berbahasa Jepang?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4080_sangat_diperlukan, 'ビーチに行く時は、日焼け止めが不可欠です。', 'Saat saya pergi ke pantai, tabir surya sangat penting.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4081_pengakuan, '僕には告白する勇気はありません。', 'Saya tidak punya keberanian untuk mengaku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4081_pengakuan, '今までに何回自分から告白したことある？', 'Berapa kali Anda menyatakan perasaan Anda kepada seseorang terlebih dahulu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4081_pengakuan, '彼女はついに自分のしたことを告白しました。', 'Dia akhirnya mengakui apa yang telah dia lakukan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4082_untuk_mengumumkan, 'ミモザは春を告げる花です。', 'Bunga mimosa menandakan datangnya musim semi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4082_untuk_mengumumkan, '恋人に別れを告げました。', 'Saya mengucapkan selamat tinggal kepada pacar saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4082_untuk_mengumumkan, 'あのハリケーンで、私達の日常は終わりを告げた。', 'Badai itu mengumumkan berakhirnya rutinitas kami.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4083_iklan, '今朝の朝日新聞の新聞広告、見た？', 'Apakah Anda melihat iklan surat kabar di Asahi Shimbun pagi ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4083_iklan, 'このチョコ、コストコで広告の品としてお安く売られてたんです。', 'Cokelat ini dijual dengan harga diskon di Costco sebagai barang promosi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4083_iklan, '図書館から借りた本に、スーパーの広告が一枚はさまっていました。', 'Dalam sebuah buku yang saya pinjam dari perpustakaan, ada iklan toko kelontong tertempel di antara halaman-halamannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4084_pemberitahuan_sebelumnya, 'あのドラマの次回の予告、見た？', 'Apakah Anda melihat preview untuk episode berikutnya dari drama itu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4084_pemberitahuan_sebelumnya, 'その映画の予告はYouTubeでよく流れてきます。', 'Trailer film tersebut sering muncul di YouTube.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4084_pemberitahuan_sebelumnya, 'トーフグのオフィスに殺人予告が送られてきたんです。', 'Ancaman pembunuhan dikirim ke kantor Tofugu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4086_laporan, '店長に報告した方がいいんじゃない？', 'Mungkin Anda harus melaporkannya ke manajer toko.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4086_laporan, '今日は皆さんにご報告があります。', 'Ada pengumuman yang ingin saya sampaikan kepada Anda semua hari ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4086_laporan, '報告書が書けたら帰っていいですよ。', 'Anda dapat keluar setelah Anda menulis laporan Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4087_merokok, '喫煙は体に良くないです。', 'Merokok tidak baik bagi Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4087_merokok, 'この辺りに喫煙室はありますか？', 'Apakah ada ruang merokok di area ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4087_merokok, 'トーフグの社員には、喫煙する人が一人もいません。', 'Tidak ada karyawan Tofugu yang merokok.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4088_kafe, '私は喫茶店でモーニングを食べるのが好きです。', 'Saya menikmati sarapan spesial di kafe.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4088_kafe, 'この喫茶店のスタッフは、いつも笑顔です。', 'Staf di kedai kopi ini selalu tersenyum.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4088_kafe, 'ご近所にオシャレな喫茶店がオープンしました。', 'Sebuah kedai kopi bergaya telah dibuka di lingkungan kami.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4089_informasi, 'その情報、どこ情報？', 'Dari mana informasi ini berasal?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4089_informasi, 'まずは情報を整理しましょう。', 'Pertama, mari kita atur informasinya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4089_informasi, 'すみません、情報不足でした。', 'Maaf, saya tidak punya cukup informasi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4090_ramalan, '今日は午後から雨の予報です。', 'Diperkirakan akan turun hujan pada sore hari ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4090_ramalan, '天気予報、チェックした？', 'Sudahkah Anda memeriksa ramalan cuaca?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4090_ramalan, 'お天気お姉さんは、明日から暑くなるって予報してたけどね。', 'Gadis cuaca mengatakan ramalan cuaca menyebutkan cuaca panas, mulai besok.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4091_untuk_melaporkan, 'メディアが報じることは信じられません。', 'Saya tidak percaya apa yang diberitakan media.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4091_untuk_melaporkan, 'そのニュースを報じたのはAP通信のみでした。', 'Hanya Associated Press yang melaporkan berita tersebut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4091_untuk_melaporkan, 'コウイチの無事が報じられて、みんな胸をなで下ろしました。', 'Semua orang merasa lega saat melaporkan bahwa Koichi selamat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4092_laporan_berita, 'ウソを報道するな！', 'Jangan laporkan kebohongan!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4092_laporan_berita, '今回のテロのことは、日本ではどのように報道されていますか？', 'Bagaimana serangan teroris ini dilaporkan di Jepang?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4092_laporan_berita, '地元メディアの報道によると、ワニカニのレアトレーディングカードがオークションで一億円で落札されたそうです。', 'Menurut laporan media lokal, kartu perdagangan langka WaniKani dijual di lelang seharga seratus juta yen.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4093_jimat, 'このお守り、どこで買ったの？', 'Dimana kamu membeli jimat ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4093_jimat, '私はいつも父の写真をお守り代わりにサイフに入れています。', 'Saya selalu menyimpan foto ayah saya di dompet saya sebagai jimat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4093_jimat, '神様にも相性があるから、たくさんのお守りを同時に付けるのは、良くないんだって。', 'Rupanya, Tuhan pun punya kecocokan, jadi tidak baik memakai banyak jimat sekaligus.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4094_penjaga, '一日二万円で留守番の仕事を引き受けた。', 'Saya mengambil pekerjaan menjaga rumah dengan gaji 20.000 yen sehari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4094_penjaga, 'アメリカでは小さい子どもだけで留守番させるのNGです。', 'Di AS, meninggalkan anak kecil sendirian di rumah tidak dapat diterima.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4094_penjaga, 'かけたけど、留守番電話だった！', 'Saya menelepon, tetapi itu adalah mesin penjawab!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4095_seiza, '何でそんなに長い間正座できるの？', 'Kok bisa duduk seiza selama itu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4095_seiza, '正直、正座は苦手です。', 'Sejujurnya, saya tidak pandai duduk berlutut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4095_seiza, '法要の間ずっと正座をしていたので、足がすごくシビれています。', 'Sejak saya berlutut dalam posisi seiza sepanjang upacara peringatan, kaki saya menjadi mati rasa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4096_meditasi_zen, '座禅を組んだことはありますか？', 'Apakah kamu pernah melakukan zazen?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4096_meditasi_zen, 'あのイタリアのサッカーチームは、いつも試合の前にグランドで座禅を組みます。', 'Tim sepak bola Italia itu selalu melakukan zazen di lapangan sebelum pertandingan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4096_meditasi_zen, '彼女は毎朝座禅を組んでリラックスします。', 'Dia bersantai setiap pagi di zazen.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4097_kursi, 'この座席のクッション、めっちゃいい感じ。', 'Bantalan kursi ini sangat nyaman.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4097_kursi, '座席の予約が必要だったとは、知りませんでした。', 'Saya tidak tahu bahwa saya harus membuat reservasi tempat duduk.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4097_kursi, '電車の座席にトコジラミを見つけてしまった。', 'Saya menemukan kutu busuk di kursi kereta.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4098_ginza, '今は銀座にいます。', 'Saya di Ginza sekarang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4098_ginza, '銀座にはバーがたくさんあります。', 'Ada banyak bar di Ginza.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4098_ginza, '私の友達は、東京の銀座でホステスをしています。', 'Teman saya bekerja sebagai nyonya rumah di Ginza, Tokyo.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4099_stasiun_kereta_bento, 'キオスクで駅弁を買いました。', 'Saya membeli makan siang stasiun di kios.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4099_stasiun_kereta_bento, '今、東京駅の駅弁屋で駅弁を見ています。', 'Saya sedang melihat ekiben di toko ekiben Stasiun Tokyo sekarang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4099_stasiun_kereta_bento, '人気の駅弁は、朝十時には売り切れてしまいます。', 'Ekiben populer terjual habis pada pukul sepuluh pagi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4100_busur, 'コウイチの弓がどこにも見当たらないんだ。', 'Kami tidak dapat menemukan busur Koichi di mana pun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4100_busur, '弓を引くには、まず上半身を安定させなくてはいけません。', 'Anda harus menstabilkan tubuh bagian atas untuk menarik busur.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4100_busur, 'コンビニでは弓と矢は買えないと思うよ？', 'Saya rasa Anda tidak bisa membeli busur dan anak panah di toko serba ada, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4101_panahan, '先月、弓道を始めたんです。', 'Saya mengambil Kyudo bulan lalu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4101_panahan, '日本の弓道の弓って、どうしてそんなに強いの？', 'Mengapa busur Jepang untuk kyudo begitu kuat?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4101_panahan, '早起きして、弓道部の道場で弓道をしてきました。', 'Saya bangun pagi dan pergi ke dojo klub Kyudo untuk melakukan Kyudo.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4102_untuk_melupakan, '危うくコウイチの顔を忘れる所だったよ。', 'Aku hampir lupa wajah Koichi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4102_untuk_melupakan, 'ごめんね、カナエちゃん。みんなカナエちゃんがどれだけ努力したのかすっかり忘れちゃってたんだ。', 'Maaf, Kanae. Kami semua benar-benar lupa betapa banyak usaha yang Anda lakukan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4102_untuk_melupakan, 'もう忘れなって。今さらどうにもならないんだから。', 'Lupakan saja. Tidak ada yang dapat Anda lakukan sekarang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4103_pesta_akhir_tahun, '忘年会は今日じゃなくて明日です。', 'Pesta akhir tahun diadakan besok, bukan hari ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4103_pesta_akhir_tahun, '元々忘れっぽいんで、私には「忘年会」は必要ありません。', 'Aku sudah sangat pelupa, jadi aku tidak memerlukan apa yang disebut "pesta lupakan tahun ini".');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4103_pesta_akhir_tahun, '今日の忘年会であった出来事は、忘れる事にします。', 'Adapun apa yang terjadi di pesta akhir tahun hari ini, biarkan saja.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4104_draf_kasar, 'いい記事を書くためには下書きをすることが大事です。', 'Untuk menulis artikel yang bagus, penting untuk membuat draft kasar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4104_draf_kasar, 'イラストの下書きが完成しました。', 'Untuk saat ini, draf kasar ilustrasinya sudah selesai.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4104_draf_kasar, '俺はいつも下書き無しで、一発勝負なんだよ！', 'Saya selalu melakukannya tanpa konsep apa pun; Saya menyukai kemenangan satu pukulan!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4105_untuk_menulis, 'いつも予定ができたら、すぐにカレンダーに書き入れるようにしています。', 'Saya selalu berusaha mencantumkan jadwal saya di kalender segera setelah dibuat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4105_untuk_menulis, 'もっとコメントを書き入れるスペースがあった方がいいと思います。今のスペースだと足りないです。', 'Saya pikir harus ada lebih banyak ruang untuk berkomentar. Ruang yang ada saat ini tidak cukup.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4105_untuk_menulis, 'この書類のここに社会保証番号を書き入れてもらえれば、あとは全て上手くやっておきますよ。', 'Jika Anda dapat mengisi nomor jaminan sosial Anda di sini, di dokumen ini, saya dapat mengurus sisanya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4106_cara_menulis, 'この漢字の書き方が思い出せません。', 'Saya tidak ingat bagaimana menulis kanji ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4106_cara_menulis, 'ビジネスメールの書き方を教えてください。', 'Bisakah Anda mengajari saya cara menulis email bisnis?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4106_cara_menulis, 'この書き方だと、ちょっと文の意味が分かりにくいんじゃないかな。', 'Menurut saya cara penulisan seperti ini membuat sedikit sulit memahami maksud kalimatnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4108_berapa_banyak_benda_datar, 'ベーコンは美味しいから、何枚でも食べれるよ。', 'Bacon sangat lezat sehingga saya bisa makan potongannya tanpa batas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4108_berapa_banyak_benda_datar, 'チケット、今のところ何枚ぐらい売れたの？', 'Berapa banyak tiket yang sudah terjual sejauh ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4108_berapa_banyak_benda_datar, 'ワニカニのトレーディングカードって、全部で何枚あるんですか？', 'Berapa total kartu perdagangan WaniKani yang ada?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4109_jumlah_lembar, 'ステッカーの注文枚数は、百枚からです。', 'Jumlah minimum pemesanan stiker adalah seratus.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4109_jumlah_lembar, '今コウイチのサイフの中にあるクレジットカードの枚数を当ててみてください。', 'Bisakah kamu menebak berapa banyak kartu kredit yang dimiliki Koichi di dompetnya saat ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4109_jumlah_lembar, '折り紙の枚数を数えてもらえますか？', 'Bisakah kamu menghitung jumlah kertas origami?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4110_lima_benda_datar, 'ステッカーを五枚、オマケに付けておきますね。', 'Saya akan memberi Anda lima stiker sebagai bonus juga.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4110_lima_benda_datar, 'コピー用紙、あと五枚しかないよ。', 'Kertas fotokopi hanya tersisa lima lembar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4110_lima_benda_datar, 'コンビニに行って、葉書を五枚買いました。', 'Saya pergi ke toko serba ada dan membeli lima kartu pos.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4111_untuk_mencuci, '水で洗うだけでいいの？', 'Bisakah saya mencucinya dengan air saja?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4111_untuk_mencuci, '家に帰ったら手を洗ってうがいをしてください。', 'Sekembalinya ke rumah, harap cuci tangan dan berkumur.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4111_untuk_mencuci, 'ビエトは、ヤクザの世界からも、薬物からも、完全に足を洗った。', 'Viet benar-benar melepaskan diri dari dunia yakuza dan narkoba.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4112_tempat_cuci_mobil, '洗車が終わるのを待っている間、ガソリンスタンドのバイトがずっとダラダラ話しかけてきて、かなりウザかった。', 'Selagi aku menunggu pencucian mobil selesai, pekerja paruh waktu itu terus mengomel dan itu sungguh menjengkelkan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4112_tempat_cuci_mobil, '誰がマネー・ロンダリングするのに洗車ビジネスなんて買うっていうのさ？', 'Siapa yang mau membeli bisnis cuci mobil untuk mencuci uang?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4112_tempat_cuci_mobil, 'コウイチの車の洗車をしたいという方がいたら、hello@tofugu.comまでメールしてください。', 'Jika diluar sana ada yang ingin mencuci mobil Koichi, silahkan email kami di hello@tofugu.com.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4113_perbaikan, 'シンプルで洗練されたデザインのトートバッグです。', 'Ini adalah tas jinjing dengan desain sederhana dan canggih.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4113_perbaikan, '彼女の言葉づかいはとても洗練されています。', 'Penggunaan bahasanya sangat canggih.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4113_perbaikan, 'うーん…悪くはないけど、もう少し洗練した方がいいかな？', 'Hmm... lumayan, tapi mungkin sedikit perbaikan lagi akan lebih baik?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4115_untuk_memanggang, '今日はチーズケーキを焼くつもりです。', 'Saya akan membuat kue keju hari ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4115_untuk_memanggang, 'これを庭で見つけたら、すぐに焼いてください。ダニのタマゴなんで。', 'Jika Anda menemukannya di halaman rumah, segera bakar. Itu telur kutu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4115_untuk_memanggang, 'そのお肉、もう焼けてるんじゃない？焼きすぎになる前にお皿に上げよう！', 'Bukankah dagingnya sudah matang? Ayo pindahkan ke piring sebelum terlalu matang!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4116_terbakar_sinar_matahari, 'ちゃんと日焼けケアした方がいいよ。', 'Anda harus benar-benar merawat kulit Anda dari sengatan matahari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4116_terbakar_sinar_matahari, 'ビーチにいすぎて日焼けしちゃった。', 'Saya kecokelatan karena terlalu lama berada di pantai.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4116_terbakar_sinar_matahari, '日焼け止めクリームを忘れたせいで、日焼けで真っ赤になった。', 'Gara-gara lupa pakai tabir surya, kulitku jadi terbakar matahari dan jadi merah total.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4117_ayam_panggang, '今日、焼き鳥食べに行かない？', 'Apakah Anda ingin keluar untuk makan yakitori hari ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4117_ayam_panggang, '焼き鳥屋でアルバイトを始めました。', 'Saya mulai bekerja paruh waktu di restoran yakitori.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4117_ayam_panggang, '焼き鳥は私の生活に不可欠です。', 'Ayam bakar sangat penting untuk hidup saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4118_daging_panggang, '今日は焼き肉が食べたい気分です。', 'Saya sedang ingin makan daging panggang hari ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4118_daging_panggang, '昨日は家族でホットプレートで焼き肉をしました。', 'Kemarin saya dan keluarga makan yakiniku menggunakan hot plate di rumah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4118_daging_panggang, '私が特にイライラするのは、焼き肉をクチャクチャ音を立てて食べる人です。', 'Saya merasa sangat menjengkelkan ketika orang mengunyah yakiniku dengan keras.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4119_matahari_terbenam, 'これは夕焼けの写真です。', 'Ini adalah foto matahari terbenam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4119_matahari_terbenam, '夕焼けが見えるオーシャンビューの部屋を予約しました。', 'Saya memesan kamar dengan pemandangan laut di mana Anda dapat melihat matahari terbenam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4119_matahari_terbenam, '夕焼けを見ると、心が落ち着きます。', 'Menyaksikan matahari terbenam menenangkan pikiranku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4120_merokok, 'ちょっと！バーベキューグリルから煙が出てるよ！！', 'Hai! Asap keluar dari panggangan!!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4120_merokok, '煙のコゲくさいニオイで起きました。', 'Saya terbangun karena bau asap yang terbakar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4120_merokok, '僕らの青春の時間は、煙のようにアッという間に消えていった。', 'Masa muda kita lenyap dalam sekejap mata, bagaikan asap.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4121_asap_hitam, '黒煙が見えると思ったら、あそこのマンションで火事だって！', 'Saya pikir saya melihat asap hitam, dan ternyata ada kebakaran di gedung apartemen sebelah sana!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4121_asap_hitam, '俺は黒煙をモクモク出して走るディーゼル車が好きなんです。', 'Saya suka mobil diesel yang berjalan dengan kepulan asap hitam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4121_asap_hitam, '黒煙を上げながら冬の北海道を走るSLは、とてもカッコよかったです。', 'Lokomotif uap yang mengepulkan asap hitam dan melintasi lanskap musim dingin Hokkaido sungguh keren.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4125_dilarang_merokok, 'ここは禁煙スペースです。', 'Ini adalah kawasan bebas rokok.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4125_dilarang_merokok, 'このホテルは、全客室禁煙です。', 'Semua kamar tamu di hotel ini bebas rokok.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4125_dilarang_merokok, '僕は禁煙パッチを使って禁煙しました。', 'Saya berhenti merokok menggunakan patch berhenti merokok.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4126_terlarang, 'この学校では、学生のアルバイトは禁止されています。', 'Siswa tidak diperbolehkan bekerja paruh waktu di sekolah ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4126_terlarang, 'このアパート、たしかペットは禁止だったはずですよ。', 'Saya yakin hewan peliharaan tidak diperbolehkan di apartemen ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4126_terlarang, 'ビエトは手下のヤクザたちに、ギャンブルは禁止だと言い聞かせた。', 'Viet memberi tahu para gangsternya bahwa perjudian dilarang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4127_kuil_zen, 'あの禅寺の名前は何だっけ？', 'Apa nama kuil Zen itu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4127_kuil_zen, '京都の南禅寺に行ってきました。', 'Saya mengunjungi kuil Nanzenji di Kyoto.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4127_kuil_zen, 'このお寺は、十四世紀に建てられた禅寺です。', 'Kuil ini merupakan kuil Zen yang dibangun pada abad ke-14.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4127_kuil_zen, '東福寺っていう京都の禅寺が好きなんです。', 'Saya suka kuil Zen di Kyoto yang disebut Tōfuku-ji.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4128_pendeta_zen, '彼は禅僧です。', 'Dia adalah seorang pendeta Zen.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4128_pendeta_zen, 'それは、どこかの禅僧が言っていた言葉です。', 'Itulah yang dikatakan oleh seorang biksu Zen.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4128_pendeta_zen, '禅僧になるには、どうすればいいですか？', 'Bagaimana saya bisa menjadi biksu Zen?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4130_ras_manusia, 'この町には、色々な人種の人がいます。', 'Ada berbagai macam ras berbeda di kota ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4130_ras_manusia, '人種をネタにしたジョークは、あんまり好きじゃありません。', 'Saya tidak terlalu suka lelucon rasial.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4130_ras_manusia, '今、人種は関係ないですよね？', 'Sekarang, ras tidak ada hubungannya dengan hal itu, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4131_setara, 'それは、ほぼやってないに等しいんじゃない？', 'Seolah-olah Anda tidak melakukannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4131_setara, 'オタクだけではなく他の人にとっても、ネット上で大文字を使うことは大声を出すことに等しいですよ。', 'Bahkan bagi orang yang bukan kutu buku, menggunakan huruf besar di internet sama saja dengan berteriak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4131_setara, '左の金玉と右の金玉の重さって等しいと思いますか？', 'Apakah menurut Anda berat bola kiri dan kanan sama?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4132_tanda_setara, '「イコール」って「等号」って言うんだ！知らなかった。', '"Tanda sama dengan" disebut "tōgō"! Saya tidak mengetahuinya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4132_tanda_setara, 'コウイチは等号の上と下の線が同じ長さじゃないと気分が悪くなる。', 'Koichi merasa mual jika garis atas dan bawah tanda sama dengan tidak sama panjangnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4132_tanda_setara, '等号の右側の数式が正か負かについて、注意する必要があります。', 'Anda harus memperhatikan apakah rumus di sebelah kanan tanda sama dengan itu plus atau minus.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4133_kelas_satu, 'この宝くじの一等の賞金はいくらですか？', 'Berapa hadiah pertama undian ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4133_kelas_satu, 'このベーコンのキーホルダーは、私がベーコンのコスプレ大会で一等賞を取った時にもらったんです。', 'Saya memenangkan gantungan kunci bacon ini ketika saya memenangkan hadiah pertama dalam kompetisi kostum bacon.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4133_kelas_satu, '一等車に乗ってるとは、さすがコウイチだね。', 'Anda berada di gerbong kelas satu, ya? Itu sangat mirip denganmu, Koichi!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4135_pelatihan, 'イギリスで兵士たちの軍事訓練が行われました。', 'Pelatihan militer untuk tentara berlangsung di Inggris.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4135_pelatihan, 'あの犬はよく訓練されている。', 'Anjing itu terlatih dengan baik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4135_pelatihan, '大丈夫、訓練どおりにすれば上手くいくよ。', 'Jangan khawatir, itu akan berhasil jika Anda mengikuti pelatihannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4136_dada, 'あの人のことを思うと、胸が苦しいんです。', 'Saat aku memikirkan orang itu, hatiku sakit.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4136_dada, '私は右胸にホクロがあります。', 'Saya mempunyai tahi lalat di dada kanan saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4136_dada, 'どうして首になったかって？それはご自身の胸に聞いてみてはいかがですか？', 'Mengapa Anda dipecat? Mungkin Anda harus bertanya pada hati nurani Anda sendiri tentang hal itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4137_otak, 'CTでもMRIでも、脳には問題はありませんでした。', 'Baik CT maupun MRI tidak menunjukkan adanya masalah otak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4137_otak, 'ヒルには脳が32個もあるって知ってた？', 'Tahukah Anda bahwa seekor lintah mempunyai tiga puluh dua otak?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4137_otak, 'ベーコンはちゃんとカリカリになるまで焼かないと！生焼けで食べた人の脳からサナダムシが発見されたこともあるんだよ！', 'Anda harus memastikan baconnya enak dan renyah! Ada kasus dimana cacing pita ditemukan di otak orang yang memakannya setengah matang!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4138_kematian_otak, '脳死かどうかはどうやってジャッジするんですか？', 'Bagaimana cara menilai seseorang mati otak?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4138_kematian_otak, 'とりあえず脳死でこのエクササイズやってみて。', 'Untuk saat ini, cobalah melakukan latihan ini tanpa memikirkannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4138_kematian_otak, '脳内出血は、脳卒中につながり、最悪脳死を引き起こすこともあります。', 'Pendarahan otak dapat menyebabkan stroke dan, akhirnya, kematian otak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4139_otak, '少ない脳みそを使ってよく考えてみろ！', 'Cobalah berpikir baik-baik dengan sedikit otak yang Anda miliki!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4139_otak, '今日はつかれすぎて脳みそが全然働いていません。', 'Aku sangat lelah hari ini, otakku tidak bekerja.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4139_otak, 'スマホ中毒じゃないよ。電池切れで何もしたくなくて、脳みそゼロでできるスマホのスクローリングでリラックスしてるんだよ。', 'Saya tidak kecanduan ponsel pintar saya. Ketika baterai habis dan saya tidak ingin melakukan apa pun, saya bersantai dengan menelusuri ponsel saya tanpa aktivitas otak tanpa berpikir panjang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4140_indoktrinasi, 'それってメディアの洗脳だよ。', 'Itu adalah cuci otak media.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4140_indoktrinasi, 'アイツらみんな、政府に洗脳されてるんだよ。', 'Mereka semua dicuci otak oleh pemerintah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4140_indoktrinasi, 'トーフグに入社した後、一番最初に受けるトレーニングは、トーフグマインドへの洗脳です。', 'Pelatihan pertama yang Anda terima setelah bergabung dengan Tofugu adalah mencuci otak Anda ke dalam pola pikir Tofugu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4142_mencoret_coret, 'ここに落書きをしたのは誰だ？', 'Siapa yang membuat grafiti di sini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4142_mencoret_coret, 'いやいや、ただの落書きですよ。', 'Tidak, tidak, tidak, itu hanya coretan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4142_mencoret_coret, '新宿駅の地下道には、昔、たくさんの落書きがしてありましたが、今はほとんど見当たりません。', 'Dahulu kala terdapat banyak coretan di sepanjang lorong bawah tanah di Stasiun Shinjuku, namun sekarang kita sudah jarang melihatnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4143_kartu_pos, 'ポストに葉書を出してきてくれない？', 'Bisakah kamu menaruh kartu pos di kotak surat untukku?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4143_kartu_pos, 'その葉書には手書きのメッセージが書かれていました。', 'Ada pesan tulisan tangan di kartu pos.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4143_kartu_pos, '彼女は毎回、旅行先から葉書を送ってくれます。', 'Dia selalu mengirimkan kartu pos dari perjalanannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4144_kunyomi, '漢字には音読みと訓読みがあります。', 'Karakter Kanji memiliki kemampuan membaca dan membaca kun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4144_kunyomi, 'この漢字の訓読みって何だったっけ？', 'Apa kun''yomi dari kanji ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4144_kunyomi, 'え、これって訓読みだったの？てっきり音読みだと思ってた。', 'Oh, ini kun''yomi? Saya pikir itu adalah on''yomi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4145_pelajaran, 'いい教訓になりました。', 'Itu adalah pelajaran yang bagus.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4145_pelajaran, 'この教訓をムダにはしません。', 'Saya tidak akan membiarkan pelajaran ini sia-sia.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4145_pelajaran, '今回の教訓を活かして、次回はもっと上手くやれるようにしたいと思います。', 'Saya berharap dapat belajar dari pelajaran kali ini dan berbuat lebih baik di lain waktu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4146_untuk_mengizinkan, '彼のこと、まだ許すことはできないよ。', 'Aku masih belum bisa memaafkannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4146_untuk_mengizinkan, '誰がそんなヒドイこと言ったの？許せない！', 'Siapa yang mengatakan hal buruk seperti itu? Ini tidak bisa dimaafkan!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4146_untuk_mengizinkan, 'みなさん、どうかお許しください。今この車の中でオナラをしてしまいました。', 'Hadirin sekalian, mohon maafkan saya. Saya baru saja kentut di mobil ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4151_teman, '彼は私の友達です。', 'Dia adalah temanku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4151_teman, 'よかったら、私と友達になってくれませんか？', 'Jika kamu tidak keberatan, maukah kamu menjadi temanku?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4151_teman, '友達の友達から聞いたことなんだけど、ビエトってヤクザらしいよ！', 'Saya mendengar dari seorang teman bahwa Viet adalah seorang yakuza!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4152_untuk_memberikan, '僕のお父さんはピザの配達人です。誰よりも速くピザを配達することができます。', 'Ayah saya adalah sopir pengiriman pizza. Dia bisa mengantarkan pizza lebih cepat dari siapa pun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4152_untuk_memberikan, 'コウイチは、ゼッタイに六時までに配達してみせると言って、胸をたたきました。', 'Koichi memukul dadanya dengan tinjunya, mengatakan dia pasti akan mengirimkannya pada pukul enam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4152_untuk_memberikan, 'この花を今日中に配達しなければいけないのを、すっかり忘れていました。', 'Benar-benar terlintas dalam pikiran saya bahwa saya harus mengirimkan bunga ini hari ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4153_menguasai, '彼はカメラの達人です。', 'Dia adalah ahli kamera.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4153_menguasai, '彼女はウチの会社の達人プログラマーです。', 'Dia adalah guru pemrograman untuk perusahaan kami.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4153_menguasai, 'ウチの母親の料理は、料理の達人レベルに美味しいです。', 'Masakan ibuku enak sampai ke tingkat master kuliner.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4154_penularan, '伝達ミスで、ピンクの車になってしまったんです。', 'Karena miskomunikasi, kami berakhir dengan mobil berwarna merah muda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4154_penularan, '伝えたかったことが、ちゃんと伝達されたのか心配です。', 'Saya khawatir apakah yang ingin saya katakan tersampaikan dengan baik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4154_penularan, '私は、人々が新しい言語を学んでいる時の、ニューロンの信号伝達について研究しています。', 'Saya sedang meneliti transmisi sinyal saraf yang terjadi saat orang mempelajari bahasa baru.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4155_diam, '今日は静かですね。', 'Hari ini sepi ya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4155_diam, 'すみませんが、もう少し静かにしていただけますか？', 'Permisi, bisakah Anda sedikit lebih tenang?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4155_diam, 'コウイチとビエトを乗せて、そのタクシーは静かに動き出した。', 'Dengan Koichi dan Viet di dalamnya, taksi itu mulai bergerak dengan tenang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4156_tetap, 'まずは静止画をアップします。', 'Pertama, saya akan mengunggah gambar diam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4156_tetap, 'ウチの猫はカメラを向けると静止します。', 'Kucing saya berdiri diam ketika saya mengarahkan kamera ke arahnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4156_tetap, 'ホームランを打ち上げた後、バッターってゼッタイちょこっと静止するよね。', 'Setelah melakukan home run, pemukul selalu berhenti sejenak, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4157_tenang, 'こんなにカワイイ猫たちがいっぱいだと、平静を保てる自信がありません。', 'Saya tidak yakin saya bisa tetap tenang ketika ada begitu banyak kucing lucu di sekitar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4157_tenang, '私、好きな人の前では、平静でいられなくなるんです。', 'Saya merasa sulit untuk tetap tenang di depan seseorang yang saya sukai.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4157_tenang, '彼女は赤信号で止まれずにパニックに落ちいっていたが、ラジオを聞きながら心の平静を取りもどした。', 'Dia panik, tidak bisa berhenti di lampu merah, tapi mendapatkan kembali ketenangan batinnya dengan mendengarkan radio.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4158_kemanusiaan, '彼は全人類の希望です。', 'Dia adalah harapan seluruh umat manusia.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4158_kemanusiaan, '私たち人類は、日々新しいことを学び、成長します。', 'Kita, umat manusia, mempelajari sesuatu yang baru dan berkembang setiap hari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4158_kemanusiaan, '私、地球にとって、人類は悪だと思うんです。', 'Saya percaya bahwa umat manusia berbahaya bagi Bumi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4159_klasifikasi, 'このアプリを使えば、すぐにファイルが分類できます。', 'Dengan aplikasi ini, file dapat dikategorikan dengan cepat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4159_klasifikasi, 'この図書館では、本はジャンル別に分類されています。', 'Di perpustakaan ini, buku diklasifikasikan berdasarkan genre.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4159_klasifikasi, '電子メールは、カテゴリーごとに自動的に分類されます。', 'Email secara otomatis diurutkan berdasarkan kategori.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4160_baik, 'うちの犬は二種類の薬を飲んでいます。', 'Anjing saya sedang menjalani dua pengobatan berbeda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4160_baik, '全部で何種類あるの？', 'Ada berapa jenis semuanya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4160_baik, '種類が多すぎて中々決められません。', 'Ada begitu banyak jenisnya sehingga sulit untuk memutuskannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4161_kerabat, 'それ、親類の会社なんです。', 'Itu adalah perusahaan kerabat saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4161_kerabat, '私には一人も親類がいません。', 'Saya tidak punya satu pun kerabat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4161_kerabat, 'オーストラリアにいる親類から電話がかかってきました。', 'Saya menerima panggilan telepon dari seorang kerabat di Australia.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4350_buku_petunjuk, '説明書通りにやれば大丈夫ですよ。', 'Ikuti saja instruksinya dan Anda akan baik-baik saja.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4350_buku_petunjuk, '昨日買ったアイスクリームメーカーに説明書がついていませんでした。', 'Petunjuk pembuat es krim yang saya beli kemarin hilang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4350_buku_petunjuk, '新しいゲームをする時に説明書を読んでから始めるタイプですか。それとも、説明書は読まずにいきなり始めるタイプですか。', 'Saat Anda memainkan game baru, apakah Anda tipe orang yang membaca instruksinya terlebih dahulu atau Anda mulai bermain tanpa membacanya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4351_kereta_uap, 'すみません。汽車は何分おきに来ますか？', 'Permisi, seberapa sering kereta uap datang?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4351_kereta_uap, 'イングランドで汽車に乗りました。', 'Saya naik kereta uap di Inggris.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4351_kereta_uap, '汽車の煙が目にしみました。', 'Asap dari kereta uap menyengat mataku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4352_kapal_uap, 'それは国有の汽船会社です。', 'Ini adalah perusahaan kapal uap milik negara.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4352_kapal_uap, 'この建物は関門汽船乗り場の近くにあります。', 'Gedung ini terletak di dekat Terminal Kapal Uap Kanmon.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4352_kapal_uap, '私は汽船で時間をかけてゆっくり海を進むのが好きなんです。今年の夏は汽船を一台借り切って、シンガポールへ行きました。', 'Saya menikmati perjalanan santai dengan kapal uap, perlahan-lahan melintasi lautan. Musim panas ini, saya menyewa seluruh kapal uap dan melakukan perjalanan ke Singapura.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4355_dokumen, 'それは何の書類ですか？', 'Untuk apa dokumen itu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4355_dokumen, 'この書類、コピーしておいてもらえるかな？', 'Bisakah Anda memfotokopi dokumen ini untuk saya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4355_dokumen, '大事な書類なので、ゼッタイに無くさないでくださいね。', 'Tolong jangan kehilangan dokumen penting ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4361_selasa, '火曜日の夜に、料理教室に通っています。', 'Saya menghadiri kelas memasak pada Selasa malam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4361_selasa, 'すみませんが、来週の月曜日と火曜日は予定があるんです。', 'Maaf, tapi saya punya rencana untuk Senin dan Selasa depan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4361_selasa, '火曜日は野球でコテンパにやられたよ。', 'Kami mendapat pukulan keras dalam bisbol pada hari Selasa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4840_mungkin, '金曜の夜の七時に三人で予約って可能ですか？', 'Apakah mungkin membuat reservasi untuk tiga orang pada jam tujuh pada hari Jumat malam?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4840_mungkin, 'もし可能なら、ウチのワンコのイラストをお願いしたいです！', 'Jika memungkinkan, saya ingin memesan ilustrasi anjing saya!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4840_mungkin, '明日の午後のデリバリーでよければ、可能だと思います。', 'Kalau untuk pengiriman besok sore oke, menurut saya bisa saja.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5845_untuk_menutup, 'このフタ、うまく閉まらないんだけど。', 'Penutup ini tidak menutup dengan benar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5845_untuk_menutup, 'あのお店、何時に閉まるんだっけ？', 'Jam berapa tokonya tutup?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5845_untuk_menutup, '急に、とびらがひとりでに閉まりました。', 'Tiba-tiba, pintu itu tertutup dengan sendirinya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5845_untuk_menutup, 'げ、カギが閉まってる！', 'Tembak, terkunci!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7151_aman, '「ハックション！」「大丈夫？」', '"Aduh!" "Apakah kamu baik-baik saja?"');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7151_aman, '全然大丈夫じゃないです。', 'Tidak apa-apa sama sekali.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7151_aman, 'この日焼け止めは、赤ちゃんに使っても大丈夫ですか。', 'Apakah tabir surya ini aman untuk bayi?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7454_penghitung_benda_datar, '日曜日のサッカーの試合のチケットを十枚持っています。', 'Saya punya sepuluh tiket untuk pertandingan sepak bola pada hari Minggu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7454_penghitung_benda_datar, 'いつもは朝ご飯は食パン一枚だけです。', 'Sarapan saya biasanya hanya sepotong roti panggang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7454_penghitung_benda_datar, 'トーフグのステッカーを何枚か買いたいのですが、一枚いくらになりますか？', 'Saya ingin membeli beberapa stiker Tofugu. Berapa harganya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7479_untuk_duduk, 'ちょっと！そこ、座るとこじゃないよ。', 'Hai! Itu bukan tempat untuk duduk.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7479_untuk_duduk, '大事な書類の上に座らないでもらえますか。', 'Bisakah Anda tidak mengurus dokumen penting?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7479_untuk_duduk, '大丈夫？よかったら、このイスに座る？', 'Apakah kamu baik-baik saja? Apakah Anda ingin duduk di kursi ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7549_sufiks_yang_jamak, 'コウイチ達、一体どこに行ったんだろう。', 'Aku ingin tahu kemana Koichi dan yang lainnya pergi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7549_sufiks_yang_jamak, '学生達は毎日パーティーばかりしていました。', 'Siswa berpesta setiap hari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7549_sufiks_yang_jamak, 'あなた達はまだ未成年でしょう。', 'Bukankah kamu masih di bawah umur?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7592_peringatan, 'なんか警告文が出てきたんだけど…どうしよう？', 'Saya mendapat semacam pesan peringatan... apa yang harus saya lakukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7592_peringatan, '借りた金を早く返すよう警告した。', 'Saya menasihatinya agar dia segera membayar kembali uang yang dipinjamnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7592_peringatan, 'あの選手はどの試合でも必ず警告のイエローカードを出されるね。', 'Pemain itu mendapat peringatan kartu kuning di setiap pertandingan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7645_untuk_mengeras, 'そろそろプリンが固まるころかな。', 'Saya pikir pudingnya akhirnya akan segera mengeras.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7645_untuk_mengeras, 'ようやくトーフグをやめる決心が固まりました。', 'Keputusan saya untuk keluar dari Tofugu akhirnya menguat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7645_untuk_mengeras, 'みんな、なんでそんなすみっこに固まってるの？', 'Kenapa kalian berkumpul di pojok seperti ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7646_untuk_mencapai, 'ビットコインは十年以内に100万ドルに達するでしょう。', 'Bitcoin akan mencapai satu juta dolar dalam satu dekade.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7646_untuk_mencapai, '目標人数に達するまで、あと少しです！', 'Tinggal sedikit lagi sampai kita mencapai target jumlah orang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7646_untuk_mencapai, 'ワニカニでは、あるレベルに達するとコウイチのカラオケ動画が流れるらしい。本当かな？', 'Saya dengar di WaniKani, ketika Anda mencapai level tertentu, video karaoke Koichi diputar. Saya ingin tahu apakah itu benar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7699_jauh_sekali, '今はメガネをかけてないので、遠くの物がよく見えません。', 'Saya tidak memakai kacamata sekarang, jadi saya tidak bisa melihat objek jauh dengan baik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7699_jauh_sekali, '私は家族から遠くはなれて住んでいます。', 'Saya tinggal jauh dari keluarga saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7699_jauh_sekali, '仲間がいないといつもの道が遠く感じると思いながら、兵士は足早に歩いた。', 'Prajurit itu berjalan dengan langkah cepat memikirkan betapa jauhnya jarak terasa lebih lama tanpa pendamping.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7702_nyanyian_pengantar_tidur, 'これは日本の子守歌です。', 'Ini adalah lagu pengantar tidur Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7702_nyanyian_pengantar_tidur, 'アメリカで一番有名な子守歌は何ですか？', 'Lagu pengantar tidur apa yang paling populer di Amerika?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7702_nyanyian_pengantar_tidur, '子供のころ、母によく歌ってもらった子守歌なんです。', 'Itu lagu pengantar tidur yang sering dinyanyikan ibuku untukku ketika aku masih kecil.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7703_kelas_tinggi, 'あなたの国の高等教育について教えてください。', 'Tolong beritahu saya tentang pendidikan tinggi di negara Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7703_kelas_tinggi, 'うちの息子はまだ小学生ですが、すでに高等レベルの数学を勉強しています。', 'Anak saya masih duduk di bangku sekolah dasar, tapi dia sudah belajar matematika tingkat tinggi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7703_kelas_tinggi, 'このロボットのプログラミングには、高等な技術が必要です。', 'Memprogram robot ini membutuhkan keterampilan tingkat lanjut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7704_formulir_kamus, '「食べた」の辞書形は「食べる」です。', 'Bentuk kamus dari "makan" adalah "makan".');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7704_formulir_kamus, '辞書形は分かるんですが、活用形がよく分かりません。', 'Saya baik-baik saja dengan bentuk kamus, tapi saya punya masalah dengan bentuk terkonjugasi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7704_formulir_kamus, 'この言葉の辞書形を書きなさい。分からなければ辞書を使ってもかまいません。', 'Tuliskan bentuk kamus dari kata ini. Anda dapat menggunakan kamus jika Anda tidak mengetahuinya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7760_persamaan, '私は夫と対等な関係でありたいと思っています。', 'Saya ingin menjaga hubungan yang setara dengan suami saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7760_persamaan, 'ウチの子はまだ六才ですが、もう大人と対等に話せます。', 'Anak saya baru berusia enam tahun, namun dia sudah bisa berbicara setara dengan orang dewasa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7760_persamaan, '女性が男性と対等な立場で働けるようになったのは、ここ最近のことです。', 'Baru-baru ini perempuan mampu bekerja setara dengan laki-laki.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8673_kebahagiaan, '幸いなことに、ちょうど空車のタクシーがやって来ました。', 'Untung saja taksi kosong baru saja datang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8673_kebahagiaan, 'お役に立てたようで、幸いです。', 'Saya senang bisa membantu Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8673_kebahagiaan, '幸いケガはありませんでした。', 'Untungnya, tidak ada korban luka.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8710_untuk_melarang, '関係者以外の立ち入りを禁じる。', 'Dilarang masuk bagi semua pihak kecuali pihak terkait.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8710_untuk_melarang, 'アルコールは世界で禁じられるべきだと思います。', 'Saya pikir alkohol harus dilarang di seluruh dunia.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8710_untuk_melarang, 'この部屋では、私語を禁じます。', 'Percakapan pribadi dilarang di ruangan ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8807_barang_barang, 'この時間のスーパーには品物がほとんどありません。', 'Hampir tidak ada barang di toko kelontong saat ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8807_barang_barang, 'そのお店のショーケースにはたくさんの品物がならんでいました。', 'Etalase toko dipenuhi dengan banyak barang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8807_barang_barang, 'すいません、こちらの品物はすでにご予約をいただいている物なんです。', 'Maaf, item ini sudah dipesan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8849_tenggorokan, '猫は、喉でゴロゴロという音を出します。', 'Kucing mendengkur dengan tenggorokannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8849_tenggorokan, 'なんか喉がイガイガする。', 'Tenggorokanku terasa iritasi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8849_tenggorokan, '喉がヒリヒリするので、私の代わりに歌ってくれませんか？', 'Tenggorokanku sakit, jadi bisakah kamu bernyanyi mewakiliku?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8851_pangkal_tenggorokan, 'あの方は耳鼻喉頭科の先生です。', 'Pria itu adalah seorang otolaryngologist.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8851_pangkal_tenggorokan, '喉頭ガンは酒やタバコが原因で起こることが多い。', 'Kanker laring sering kali disebabkan oleh alkohol dan tembakau.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8851_pangkal_tenggorokan, '彼は喉頭手術を受けましたが、声を失い、人工喉頭となりました。', 'Dia menjalani operasi laring, namun kehilangan suaranya dan diberi laring buatan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8852_untuk_menyerang, '彼はドラムを叩くのが上手い。', 'Dia memainkan drum dengan baik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8852_untuk_menyerang, '開ける前に、ドアを叩いてって言ったよね！？', 'Sudah kubilang padamu untuk mengetuk pintu sebelum membukanya, bukan?!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8852_untuk_menyerang, '日本のマンザイは、人の頭を叩いてツッコムのであまり好きではありません。人のことを叩いちゃいけないって学校で習わなかったのかな？', 'Saya tidak terlalu menyukai komedi manzai Jepang, di mana mereka memukul kepala orang untuk menyampaikan lucunya. Bukankah di sekolah diajarkan bahwa kamu tidak boleh memukul orang lain?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8854_permen, '飴を一つ下さい。', 'Tolong beri saya permen keras.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8854_permen, '日本にはカレー味の飴があるって本当ですか？', 'Benarkah di Jepang ada permen keras rasa kari?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8854_permen, 'ドラッグストアでノド飴を買ってきてくれませんか？', 'Bisakah Anda pergi ke apotek dan membelikan saya obat pelega tenggorokan untuk tenggorokan saya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8855_patung_gula, '私の父は飴細工の名人です。', 'Ayah saya adalah ahli patung gula.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8855_patung_gula, '飴細工作ったことある？', 'Pernahkah Anda membuat patung gula?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8855_patung_gula, 'その金魚の飴細工は、形も味も本物の金魚にそっくりなんだって。', 'Ternyata ikan mas gula ini mirip dengan ikan mas asli baik bentuk maupun rasanya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8927_untuk_menjadi_lebih_baik, 'お前の病気は必ず治る。', 'Penyakit Anda pasti akan sembuh.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8927_untuk_menjadi_lebih_baik, 'ケガは治ったが、キズが残った。', 'Lukanya sudah sembuh, namun bekas lukanya masih ada.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8927_untuk_menjadi_lebih_baik, '「バカは一生治らない」っていうことわざ知ってる？', 'Tahukah Anda pepatah "kebodohan tidak akan pernah bisa disembuhkan"?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8997_untuk_menggertak, '今日子ちゃんが私を苛めるの。', 'Kyoko menggangguku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8997_untuk_menggertak, 'コウイチを苛めるな！', 'Berhenti menindas Koichi!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8997_untuk_menggertak, '姉は、他の子が苛められていたら、いつも助けてあげるんです。', 'Kakak perempuan saya selalu membela anak-anak lain jika mereka ditindas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9021_untuk_terlibat, 'これは人々の生活に関わる大問題だ。', 'Ini adalah masalah besar yang berkaitan dengan kehidupan sehari-hari masyarakat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9021_untuk_terlibat, '今まで色々なプロジェクトに関わってきましたが、今回のプロジェクトが一番ワクワクします。', 'Saya telah terlibat dalam banyak proyek, tapi ini yang paling menarik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9021_untuk_terlibat, 'アレルギーは軽く見たらダメだよ。命に関わることもあるんだから！', 'Alergi tidak bisa dianggap enteng. Hal ini dapat mengancam nyawa!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9035_cinta_pertama, 'あなたの初恋ってどんな感じだった？', 'Bagaimana rasanya pertama kali kamu jatuh cinta?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9035_cinta_pertama, '初恋の人の名前は…たしか、ミッちゃんだったかな。', 'Nama cinta pertamaku adalah...kurasa...Micchan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9035_cinta_pertama, 'おじいちゃん、おじいちゃんが初恋をしたのっていつ？', 'Kakek, kapan pertama kali kamu jatuh cinta?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9247_untuk_terhubung, 'インターネットが繋がるのに一時間かかった。', 'Butuh waktu satu jam untuk terhubung ke internet.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9247_untuk_terhubung, '全ての失敗が成功に繋がるんだよ。', 'Semua kegagalan mengarah pada kesuksesan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9247_untuk_terhubung, 'コウイチと私は血が繋がってません。', 'Koichi dan aku tidak memiliki hubungan darah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9479_serius, 'いや、真面目な話、それはムリでしょ。', 'Tidak, tapi secara serius, itu tidak mungkin.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9479_serius, '真面目に働いているのがバカらしくなってきたよ。', 'Saya mulai merasa seperti orang bodoh karena benar-benar berusaha melakukan pekerjaan saya dengan baik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9479_serius, '彼はとても真面目な人だが、ちょっと真面目すぎるときもある。', 'Dia orang yang sangat serius, tapi terkadang dia agak terlalu serius.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9479_serius, '真面目にコツコツ毎日ワニカニをがんばれば、色んな本が読めるようになりますよ。', 'Jika kamu rajin belajar dengan WaniKani sedikit setiap hari, kamu akan bisa membaca semua jenis buku.');

  -- 4. PREREQUISITES
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1028_petunjuk, id FROM items WHERE type = 'radical' AND (slug = '117' OR id = '117') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1028_petunjuk, id FROM items WHERE type = 'radical' AND (slug = '21' OR id = '21') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1030_busur, id FROM items WHERE type = 'radical' AND (slug = '36' OR id = '36') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1031_mengumumkan, id FROM items WHERE type = 'radical' AND (slug = '5' OR id = '5') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1031_mengumumkan, id FROM items WHERE type = 'radical' AND (slug = '17' OR id = '17') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1031_mengumumkan, id FROM items WHERE type = 'radical' AND (slug = '16' OR id = '16') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1032_baik, id FROM items WHERE type = 'radical' AND (slug = '135' OR id = '135') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1032_baik, id FROM items WHERE type = 'radical' AND (slug = '188' OR id = '188') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1033_mencapai, id FROM items WHERE type = 'radical' AND (slug = '114' OR id = '114') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1033_mencapai, id FROM items WHERE type = 'radical' AND (slug = '17' OR id = '17') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1033_mencapai, id FROM items WHERE type = 'radical' AND (slug = '136' OR id = '136') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1034_jenis, id FROM items WHERE type = 'radical' AND (slug = '98' OR id = '98') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1034_jenis, id FROM items WHERE type = 'radical' AND (slug = '18' OR id = '18') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1034_jenis, id FROM items WHERE type = 'radical' AND (slug = '184' OR id = '184') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1035_berita, r_260_kebahagiaan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1035_berita, id FROM items WHERE type = 'radical' AND (slug = '145' OR id = '145') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1035_berita, id FROM items WHERE type = 'radical' AND (slug = '30' OR id = '30') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1037_setara, id FROM items WHERE type = 'radical' AND (slug = '85' OR id = '85') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1037_setara, id FROM items WHERE type = 'radical' AND (slug = '192' OR id = '192') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1038_uap, id FROM items WHERE type = 'radical' AND (slug = '103' OR id = '103') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1038_uap, id FROM items WHERE type = 'radical' AND (slug = '82' OR id = '82') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1039_meminjam, id FROM items WHERE type = 'radical' AND (slug = '75' OR id = '75') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1039_meminjam, r_256_dahulu_kala);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1040_memanggang, id FROM items WHERE type = 'radical' AND (slug = '46' OR id = '46') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1040_memanggang, r_257_penjudi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1041_duduk, id FROM items WHERE type = 'radical' AND (slug = '62' OR id = '62') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1041_duduk, id FROM items WHERE type = 'radical' AND (slug = '9' OR id = '9') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1041_duduk, id FROM items WHERE type = 'radical' AND (slug = '17' OR id = '17') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1042_lupa, id FROM items WHERE type = 'radical' AND (slug = '212' OR id = '212') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1042_lupa, id FROM items WHERE type = 'radical' AND (slug = '65' OR id = '65') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1043_mencuci, id FROM items WHERE type = 'radical' AND (slug = '103' OR id = '103') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1043_mencuci, r_258_sebelumnya);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1044_dada, id FROM items WHERE type = 'radical' AND (slug = '43' OR id = '43') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1044_dada, id FROM items WHERE type = 'radical' AND (slug = '14' OR id = '14') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1044_dada, r_262_peti_harta_karun);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1045_otak, id FROM items WHERE type = 'radical' AND (slug = '43' OR id = '43') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1045_otak, id FROM items WHERE type = 'radical' AND (slug = '8783' OR id = '8783') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1045_otak, r_262_peti_harta_karun);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1046_pendeta, id FROM items WHERE type = 'radical' AND (slug = '75' OR id = '75') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1046_pendeta, r_259_masker);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1047_zen, id FROM items WHERE type = 'radical' AND (slug = '80' OR id = '80') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1047_zen, id FROM items WHERE type = 'radical' AND (slug = '199' OR id = '199') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1049_mungkin, id FROM items WHERE type = 'radical' AND (slug = '113' OR id = '113') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1050_izin, id FROM items WHERE type = 'radical' AND (slug = '117' OR id = '117') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1050_izin, r_415_siang);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1051_penghitung_benda_datar, id FROM items WHERE type = 'radical' AND (slug = '23' OR id = '23') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1051_penghitung_benda_datar, id FROM items WHERE type = 'radical' AND (slug = '60' OR id = '60') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1052_diam, id FROM items WHERE type = 'radical' AND (slug = '120' OR id = '120') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1052_diam, r_261_konflik);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1053_ayat, id FROM items WHERE type = 'radical' AND (slug = '242' OR id = '242') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1054_melarang, id FROM items WHERE type = 'radical' AND (slug = '23' OR id = '23') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1054_melarang, id FROM items WHERE type = 'radical' AND (slug = '207' OR id = '207') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1055_mengkonsumsi, id FROM items WHERE type = 'radical' AND (slug = '16' OR id = '16') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1055_mengkonsumsi, id FROM items WHERE type = 'radical' AND (slug = '9452' OR id = '9452') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1055_mengkonsumsi, id FROM items WHERE type = 'radical' AND (slug = '24' OR id = '24') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1055_mengkonsumsi, id FROM items WHERE type = 'radical' AND (slug = '18' OR id = '18') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1056_merokok, id FROM items WHERE type = 'radical' AND (slug = '46' OR id = '46') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1056_merokok, id FROM items WHERE type = 'radical' AND (slug = '424' OR id = '424') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1056_merokok, id FROM items WHERE type = 'radical' AND (slug = '17' OR id = '17') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_8838_tenggorokan, id FROM items WHERE type = 'radical' AND (slug = '16' OR id = '16') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_8838_tenggorokan, id FROM items WHERE type = 'radical' AND (slug = '75' OR id = '75') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_8838_tenggorokan, id FROM items WHERE type = 'radical' AND (slug = '72' OR id = '72') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_8838_tenggorokan, id FROM items WHERE type = 'radical' AND (slug = '157' OR id = '157') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_8839_mengetuk, id FROM items WHERE type = 'radical' AND (slug = '16' OR id = '16') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_8839_mengetuk, id FROM items WHERE type = 'radical' AND (slug = '145' OR id = '145') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_8840_permen, id FROM items WHERE type = 'radical' AND (slug = '139' OR id = '139') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_8840_permen, id FROM items WHERE type = 'radical' AND (slug = '417' OR id = '417') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_8990_frustrasi, id FROM items WHERE type = 'radical' AND (slug = '90' OR id = '90') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_8990_frustrasi, id FROM items WHERE type = 'radical' AND (slug = '113' OR id = '113') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_9246_menghubungkan, id FROM items WHERE type = 'radical' AND (slug = '93' OR id = '93') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_9246_menghubungkan, id FROM items WHERE type = 'radical' AND (slug = '160' OR id = '160') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_9246_menghubungkan, id FROM items WHERE type = 'radical' AND (slug = '86' OR id = '86') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2903_untuk_diperbaiki, id FROM items WHERE type = 'kanji' AND (slug = '630' OR id = '630') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3959_sisi_barat, id FROM items WHERE type = 'kanji' AND (slug = '581' OR id = '581') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3959_sisi_barat, id FROM items WHERE type = 'kanji' AND (slug = '999' OR id = '999') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4011_hasil, id FROM items WHERE type = 'kanji' AND (slug = '1009' OR id = '1009') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4011_hasil, id FROM items WHERE type = 'kanji' AND (slug = '1005' OR id = '1005') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4026_pada_akhirnya, id FROM items WHERE type = 'kanji' AND (slug = '1009' OR id = '1009') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4026_pada_akhirnya, id FROM items WHERE type = 'kanji' AND (slug = '684' OR id = '684') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4051_anggun, id FROM items WHERE type = 'kanji' AND (slug = '450' OR id = '450') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4051_anggun, id FROM items WHERE type = 'kanji' AND (slug = '967' OR id = '967') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4052_dialek_osaka, id FROM items WHERE type = 'kanji' AND (slug = '453' OR id = '453') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4052_dialek_osaka, id FROM items WHERE type = 'kanji' AND (slug = '994' OR id = '994') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4052_dialek_osaka, id FROM items WHERE type = 'kanji' AND (slug = '984' OR id = '984') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4053_dialek_kansai, id FROM items WHERE type = 'kanji' AND (slug = '982' OR id = '982') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4053_dialek_kansai, id FROM items WHERE type = 'kanji' AND (slug = '581' OR id = '581') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4053_dialek_kansai, id FROM items WHERE type = 'kanji' AND (slug = '984' OR id = '984') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4056_senin, id FROM items WHERE type = 'kanji' AND (slug = '477' OR id = '477') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4056_senin, id FROM items WHERE type = 'kanji' AND (slug = '961' OR id = '961') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4056_senin, id FROM items WHERE type = 'kanji' AND (slug = '476' OR id = '476') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4059_pertukaran_pelajar, id FROM items WHERE type = 'kanji' AND (slug = '986' OR id = '986') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4059_pertukaran_pelajar, id FROM items WHERE type = 'kanji' AND (slug = '599' OR id = '599') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4059_pertukaran_pelajar, id FROM items WHERE type = 'kanji' AND (slug = '850' OR id = '850') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4060_komedi, id FROM items WHERE type = 'kanji' AND (slug = '980' OR id = '980') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4061_bagasi_tangan, id FROM items WHERE type = 'kanji' AND (slug = '474' OR id = '474') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4061_bagasi_tangan, id FROM items WHERE type = 'kanji' AND (slug = '973' OR id = '973') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4061_bagasi_tangan, id FROM items WHERE type = 'kanji' AND (slug = '718' OR id = '718') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4063_sebuah_tertawa, id FROM items WHERE type = 'kanji' AND (slug = '980' OR id = '980') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4064_peminjaman, k_1039_meminjam);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4064_peminjaman, id FROM items WHERE type = 'kanji' AND (slug = '525' OR id = '525') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4065_untuk_meminjam, k_1039_meminjam);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4066_utang, k_1039_meminjam);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4066_utang, id FROM items WHERE type = 'kanji' AND (slug = '602' OR id = '602') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4067_rumah_kontrakan, k_1039_meminjam);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4067_rumah_kontrakan, id FROM items WHERE type = 'kanji' AND (slug = '660' OR id = '660') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4068_kuil, k_1046_pendeta);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4068_kuil, id FROM items WHERE type = 'kanji' AND (slug = '744' OR id = '744') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4069_pendeta_buddha, id FROM items WHERE type = 'kanji' AND (slug = '956' OR id = '956') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4069_pendeta_buddha, k_1046_pendeta);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4075_keluhan, id FROM items WHERE type = 'kanji' AND (slug = '475' OR id = '475') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4075_keluhan, k_1053_ayat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4076_kata_tabu, k_1054_melarang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4076_kata_tabu, k_1053_ayat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4077_imut_imut, k_1049_mungkin);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4077_imut_imut, id FROM items WHERE type = 'kanji' AND (slug = '1021' OR id = '1021') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4078_izin, k_1050_izin);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4078_izin, k_1049_mungkin);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4079_terbagi, k_1049_mungkin);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4079_terbagi, id FROM items WHERE type = 'kanji' AND (slug = '501' OR id = '501') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4080_sangat_diperlukan, id FROM items WHERE type = 'kanji' AND (slug = '563' OR id = '563') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4080_sangat_diperlukan, k_1049_mungkin);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4080_sangat_diperlukan, id FROM items WHERE type = 'kanji' AND (slug = '646' OR id = '646') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4081_pengakuan, k_1031_mengumumkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4081_pengakuan, id FROM items WHERE type = 'kanji' AND (slug = '491' OR id = '491') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4082_untuk_mengumumkan, k_1031_mengumumkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4083_iklan, id FROM items WHERE type = 'kanji' AND (slug = '523' OR id = '523') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4083_iklan, k_1031_mengumumkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4084_pemberitahuan_sebelumnya, id FROM items WHERE type = 'kanji' AND (slug = '854' OR id = '854') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4084_pemberitahuan_sebelumnya, k_1031_mengumumkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4086_laporan, k_1035_berita);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4086_laporan, k_1031_mengumumkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4087_merokok, k_1055_mengkonsumsi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4087_merokok, k_1056_merokok);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4088_kafe, k_1055_mengkonsumsi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4088_kafe, id FROM items WHERE type = 'kanji' AND (slug = '643' OR id = '643') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4088_kafe, id FROM items WHERE type = 'kanji' AND (slug = '625' OR id = '625') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4089_informasi, id FROM items WHERE type = 'kanji' AND (slug = '891' OR id = '891') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4089_informasi, k_1035_berita);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4090_ramalan, id FROM items WHERE type = 'kanji' AND (slug = '854' OR id = '854') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4090_ramalan, k_1035_berita);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4091_untuk_melaporkan, k_1035_berita);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4092_laporan_berita, k_1035_berita);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4092_laporan_berita, id FROM items WHERE type = 'kanji' AND (slug = '700' OR id = '700') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4093_jimat, id FROM items WHERE type = 'kanji' AND (slug = '968' OR id = '968') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4094_penjaga, id FROM items WHERE type = 'kanji' AND (slug = '986' OR id = '986') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4094_penjaga, id FROM items WHERE type = 'kanji' AND (slug = '968' OR id = '968') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4094_penjaga, id FROM items WHERE type = 'kanji' AND (slug = '696' OR id = '696') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4095_seiza, id FROM items WHERE type = 'kanji' AND (slug = '488' OR id = '488') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4095_seiza, k_1041_duduk);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4096_meditasi_zen, k_1041_duduk);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4096_meditasi_zen, k_1047_zen);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4097_kursi, k_1041_duduk);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4097_kursi, id FROM items WHERE type = 'kanji' AND (slug = '1003' OR id = '1003') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4098_ginza, id FROM items WHERE type = 'kanji' AND (slug = '871' OR id = '871') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4098_ginza, k_1041_duduk);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4099_stasiun_kereta_bento, id FROM items WHERE type = 'kanji' AND (slug = '874' OR id = '874') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4099_stasiun_kereta_bento, id FROM items WHERE type = 'kanji' AND (slug = '984' OR id = '984') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4100_busur, k_1030_busur);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4101_panahan, k_1030_busur);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4101_panahan, id FROM items WHERE type = 'kanji' AND (slug = '700' OR id = '700') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4102_untuk_melupakan, k_1042_lupa);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4103_pesta_akhir_tahun, k_1042_lupa);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4103_pesta_akhir_tahun, id FROM items WHERE type = 'kanji' AND (slug = '546' OR id = '546') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4103_pesta_akhir_tahun, id FROM items WHERE type = 'kanji' AND (slug = '566' OR id = '566') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4104_draf_kasar, id FROM items WHERE type = 'kanji' AND (slug = '451' OR id = '451') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4104_draf_kasar, id FROM items WHERE type = 'kanji' AND (slug = '962' OR id = '962') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4105_untuk_menulis, id FROM items WHERE type = 'kanji' AND (slug = '962' OR id = '962') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4105_untuk_menulis, id FROM items WHERE type = 'kanji' AND (slug = '445' OR id = '445') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4106_cara_menulis, id FROM items WHERE type = 'kanji' AND (slug = '962' OR id = '962') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4106_cara_menulis, id FROM items WHERE type = 'kanji' AND (slug = '510' OR id = '510') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4108_berapa_banyak_benda_datar, id FROM items WHERE type = 'kanji' AND (slug = '582' OR id = '582') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4108_berapa_banyak_benda_datar, k_1051_penghitung_benda_datar);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4109_jumlah_lembar, k_1051_penghitung_benda_datar);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4109_jumlah_lembar, id FROM items WHERE type = 'kanji' AND (slug = '703' OR id = '703') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4110_lima_benda_datar, id FROM items WHERE type = 'kanji' AND (slug = '470' OR id = '470') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4110_lima_benda_datar, k_1051_penghitung_benda_datar);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4111_untuk_mencuci, k_1043_mencuci);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4112_tempat_cuci_mobil, k_1043_mencuci);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4112_tempat_cuci_mobil, id FROM items WHERE type = 'kanji' AND (slug = '562' OR id = '562') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4113_perbaikan, k_1043_mencuci);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4113_perbaikan, id FROM items WHERE type = 'kanji' AND (slug = '869' OR id = '869') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4115_untuk_memanggang, k_1040_memanggang);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4116_terbakar_sinar_matahari, id FROM items WHERE type = 'kanji' AND (slug = '476' OR id = '476') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4116_terbakar_sinar_matahari, k_1040_memanggang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4117_ayam_panggang, k_1040_memanggang);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4117_ayam_panggang, id FROM items WHERE type = 'kanji' AND (slug = '675' OR id = '675') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4118_daging_panggang, k_1040_memanggang);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4118_daging_panggang, id FROM items WHERE type = 'kanji' AND (slug = '577' OR id = '577') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4119_matahari_terbenam, id FROM items WHERE type = 'kanji' AND (slug = '461' OR id = '461') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4119_matahari_terbenam, k_1040_memanggang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4120_merokok, k_1056_merokok);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4121_asap_hitam, id FROM items WHERE type = 'kanji' AND (slug = '677' OR id = '677') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4121_asap_hitam, k_1056_merokok);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4125_dilarang_merokok, k_1054_melarang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4125_dilarang_merokok, k_1056_merokok);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4126_terlarang, k_1054_melarang);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4126_terlarang, id FROM items WHERE type = 'kanji' AND (slug = '514' OR id = '514') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4127_kuil_zen, k_1047_zen);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4127_kuil_zen, id FROM items WHERE type = 'kanji' AND (slug = '928' OR id = '928') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4128_pendeta_zen, k_1047_zen);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4128_pendeta_zen, k_1046_pendeta);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4130_ras_manusia, id FROM items WHERE type = 'kanji' AND (slug = '444' OR id = '444') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4130_ras_manusia, k_1032_baik);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4131_setara, k_1037_setara);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4132_tanda_setara, k_1037_setara);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4132_tanda_setara, id FROM items WHERE type = 'kanji' AND (slug = '533' OR id = '533') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4133_kelas_satu, id FROM items WHERE type = 'kanji' AND (slug = '440' OR id = '440') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4133_kelas_satu, k_1037_setara);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4135_pelatihan, k_1028_petunjuk);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4135_pelatihan, id FROM items WHERE type = 'kanji' AND (slug = '869' OR id = '869') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4136_dada, k_1044_dada);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4137_otak, k_1045_otak);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4138_kematian_otak, k_1045_otak);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4138_kematian_otak, id FROM items WHERE type = 'kanji' AND (slug = '617' OR id = '617') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4139_otak, k_1045_otak);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4140_indoktrinasi, k_1043_mencuci);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4140_indoktrinasi, k_1045_otak);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4142_mencoret_coret, id FROM items WHERE type = 'kanji' AND (slug = '749' OR id = '749') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4142_mencoret_coret, id FROM items WHERE type = 'kanji' AND (slug = '962' OR id = '962') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4143_kartu_pos, id FROM items WHERE type = 'kanji' AND (slug = '750' OR id = '750') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4143_kartu_pos, id FROM items WHERE type = 'kanji' AND (slug = '962' OR id = '962') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4144_kunyomi, k_1028_petunjuk);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4144_kunyomi, id FROM items WHERE type = 'kanji' AND (slug = '765' OR id = '765') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4145_pelajaran, id FROM items WHERE type = 'kanji' AND (slug = '668' OR id = '668') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4145_pelajaran, k_1028_petunjuk);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4146_untuk_mengizinkan, k_1050_izin);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4151_teman, id FROM items WHERE type = 'kanji' AND (slug = '504' OR id = '504') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4151_teman, k_1033_mencapai);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4152_untuk_memberikan, id FROM items WHERE type = 'kanji' AND (slug = '742' OR id = '742') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4152_untuk_memberikan, k_1033_mencapai);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4153_menguasai, k_1033_mencapai);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4153_menguasai, id FROM items WHERE type = 'kanji' AND (slug = '444' OR id = '444') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4154_penularan, id FROM items WHERE type = 'kanji' AND (slug = '777' OR id = '777') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4154_penularan, k_1033_mencapai);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4155_diam, k_1052_diam);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4156_tetap, k_1052_diam);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4156_tetap, id FROM items WHERE type = 'kanji' AND (slug = '514' OR id = '514') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4157_tenang, id FROM items WHERE type = 'kanji' AND (slug = '535' OR id = '535') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4157_tenang, k_1052_diam);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4158_kemanusiaan, id FROM items WHERE type = 'kanji' AND (slug = '444' OR id = '444') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4158_kemanusiaan, k_1034_jenis);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4159_klasifikasi, id FROM items WHERE type = 'kanji' AND (slug = '501' OR id = '501') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4159_klasifikasi, k_1034_jenis);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4160_baik, k_1032_baik);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4160_baik, k_1034_jenis);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4161_kerabat, id FROM items WHERE type = 'kanji' AND (slug = '770' OR id = '770') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4161_kerabat, k_1034_jenis);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4350_buku_petunjuk, id FROM items WHERE type = 'kanji' AND (slug = '1026' OR id = '1026') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4350_buku_petunjuk, id FROM items WHERE type = 'kanji' AND (slug = '626' OR id = '626') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4350_buku_petunjuk, id FROM items WHERE type = 'kanji' AND (slug = '962' OR id = '962') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4351_kereta_uap, k_1038_uap);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4351_kereta_uap, id FROM items WHERE type = 'kanji' AND (slug = '562' OR id = '562') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4352_kapal_uap, k_1038_uap);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4352_kapal_uap, id FROM items WHERE type = 'kanji' AND (slug = '671' OR id = '671') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4355_dokumen, id FROM items WHERE type = 'kanji' AND (slug = '962' OR id = '962') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4355_dokumen, k_1034_jenis);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4361_selasa, id FROM items WHERE type = 'kanji' AND (slug = '480' OR id = '480') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4361_selasa, id FROM items WHERE type = 'kanji' AND (slug = '961' OR id = '961') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4361_selasa, id FROM items WHERE type = 'kanji' AND (slug = '476' OR id = '476') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4840_mungkin, k_1049_mungkin);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4840_mungkin, id FROM items WHERE type = 'kanji' AND (slug = '921' OR id = '921') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5845_untuk_menutup, id FROM items WHERE type = 'kanji' AND (slug = '1514' OR id = '1514') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7151_aman, id FROM items WHERE type = 'kanji' AND (slug = '453' OR id = '453') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7151_aman, id FROM items WHERE type = 'kanji' AND (slug = '2083' OR id = '2083') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7151_aman, id FROM items WHERE type = 'kanji' AND (slug = '945' OR id = '945') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7454_penghitung_benda_datar, k_1051_penghitung_benda_datar);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7479_untuk_duduk, k_1041_duduk);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7549_sufiks_yang_jamak, k_1033_mencapai);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7592_peringatan, id FROM items WHERE type = 'kanji' AND (slug = '1023' OR id = '1023') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7592_peringatan, k_1031_mengumumkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7645_untuk_mengeras, id FROM items WHERE type = 'kanji' AND (slug = '902' OR id = '902') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7646_untuk_mencapai, k_1033_mencapai);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7699_jauh_sekali, id FROM items WHERE type = 'kanji' AND (slug = '963' OR id = '963') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7702_nyanyian_pengantar_tidur, id FROM items WHERE type = 'kanji' AND (slug = '462' OR id = '462') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7702_nyanyian_pengantar_tidur, id FROM items WHERE type = 'kanji' AND (slug = '968' OR id = '968') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7702_nyanyian_pengantar_tidur, id FROM items WHERE type = 'kanji' AND (slug = '761' OR id = '761') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7703_kelas_tinggi, id FROM items WHERE type = 'kanji' AND (slug = '666' OR id = '666') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7703_kelas_tinggi, k_1037_setara);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7704_formulir_kamus, id FROM items WHERE type = 'kanji' AND (slug = '981' OR id = '981') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7704_formulir_kamus, id FROM items WHERE type = 'kanji' AND (slug = '962' OR id = '962') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7704_formulir_kamus, id FROM items WHERE type = 'kanji' AND (slug = '589' OR id = '589') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7760_persamaan, id FROM items WHERE type = 'kanji' AND (slug = '683' OR id = '683') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7760_persamaan, k_1037_setara);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8673_kebahagiaan, id FROM items WHERE type = 'kanji' AND (slug = '969' OR id = '969') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8710_untuk_melarang, k_1054_melarang);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8807_barang_barang, id FROM items WHERE type = 'kanji' AND (slug = '967' OR id = '967') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8807_barang_barang, id FROM items WHERE type = 'kanji' AND (slug = '718' OR id = '718') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8849_tenggorokan, k_8838_tenggorokan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8851_pangkal_tenggorokan, k_8838_tenggorokan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8851_pangkal_tenggorokan, id FROM items WHERE type = 'kanji' AND (slug = '771' OR id = '771') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8852_untuk_menyerang, k_8839_mengetuk);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8854_permen, k_8840_permen);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8855_patung_gula, k_8840_permen);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8855_patung_gula, id FROM items WHERE type = 'kanji' AND (slug = '996' OR id = '996') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8855_patung_gula, id FROM items WHERE type = 'kanji' AND (slug = '457' OR id = '457') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8927_untuk_menjadi_lebih_baik, id FROM items WHERE type = 'kanji' AND (slug = '978' OR id = '978') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8997_untuk_menggertak, k_8990_frustrasi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9021_untuk_terlibat, id FROM items WHERE type = 'kanji' AND (slug = '982' OR id = '982') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9035_cinta_pertama, id FROM items WHERE type = 'kanji' AND (slug = '784' OR id = '784') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9035_cinta_pertama, id FROM items WHERE type = 'kanji' AND (slug = '1024' OR id = '1024') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_9247_untuk_terhubung, k_9246_menghubungkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9479_serius, id FROM items WHERE type = 'kanji' AND (slug = '971' OR id = '971') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9479_serius, id FROM items WHERE type = 'kanji' AND (slug = '974' OR id = '974') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9479_serius, id FROM items WHERE type = 'kanji' AND (slug = '492' OR id = '492') LIMIT 1;

END $$;
