-- ====================================================
-- KaniGani — Seed Data Level 20 (v2, relasional)
-- Auto-generated with Indonesian Slugs
-- ====================================================

DO $$
DECLARE
  -- ============ RADICAL IDs (Level 20) ============
  r_270_terbang UUID; r_271_monalisa UUID; r_273_banjir UUID; r_274_tikus_tanah UUID; r_383_kebenaran UUID; r_8788_ledakan UUID;

  -- ============ KANJI IDs (Level 20) ============
  k_1086_tertekan UUID; k_1089_bencana UUID; k_1090_mesin UUID; k_1091_persen UUID; k_1092_terbang UUID; k_1093_kerusakan UUID; k_1094_kelebihan UUID; k_1095_sulit UUID; k_1097_menutupi UUID; k_1098_melimpah UUID; k_1099_gempa_bumi UUID; k_1100_pantat UUID; k_1101_ekor UUID; k_1102_alat UUID; k_1103_yakin UUID; k_1104_benci UUID; k_1105_individu UUID; k_1106_tekanan UUID; k_1107_ada UUID; k_1108_mimpi UUID; k_1109_melahirkan UUID; k_1110_menggulingkan UUID; k_1111_bau UUID; k_1112_tebal UUID; k_1113_istri UUID; k_1114_pertimbangan UUID; k_1115_kejahatan UUID; k_1116_kesalahan UUID; k_1117_mencegah UUID; k_1119_teori UUID; k_1120_lorong_waktu UUID; k_1296_menusuk UUID;

  -- ============ VOCABULARY IDs (Level 20) ============
  v_3547_perjanjian UUID; v_4035_kesadaran_diri UUID; v_4114_mencuci_piring UUID; v_4181_menjadi_tertekan UUID; v_4204_untuk_diperbarui UUID; v_4221_untuk_menjadi_campuran UUID; v_4254_menjadi_surplus UUID; v_4255_tidak_dibutuhkan UUID; v_4257_pribadi UUID; v_4258_satu_hal_kecil UUID; v_4259_kamar_pribadi UUID; v_4260_tiga_hal_kecil UUID; v_4261_untuk_mengetuk UUID; v_4262_masalah UUID; v_4263_kebangkrutan UUID; v_4264_peminjam UUID; v_4265_tebal UUID; v_4266_tekanan UUID; v_4267_tekanan_darah UUID; v_4268_shiatsu UUID; v_4269_adanya UUID; v_4271_realitas UUID; v_4272_luar_negeri UUID; v_4273_tergila_gila UUID; v_4274_mimpi_buruk UUID; v_4275_mimpi UUID; v_4279_istri UUID; v_4280_suami_istri UUID; v_4281_istri_dan_anak UUID; v_4282_poligami UUID; v_4283_benci UUID; v_4284_benci UUID; v_4285_suasana_hati UUID; v_4286_kecurigaan UUID; v_4287_mesin_penjawab UUID; v_4288_polusi UUID; v_4289_kerusakan_akibat_banjir UUID; v_4290_tidak_berbahaya UUID; v_4291_pantat UUID; v_4293_busur_dan_anak_panah UUID; v_4294_barang_yang_terlupakan UUID; v_4295_mesin UUID; v_4296_pesawat_terbang UUID; v_4297_krisis UUID; v_4298_bencana UUID; v_4299_bencana_alam UUID; v_4300_bencana_kebakaran UUID; v_4301_kemalangan UUID; v_4302_bencana_gempa_bumi UUID; v_4303_berasap UUID; v_4304_untuk_melakukan_kejahatan UUID; v_4305_pelaku UUID; v_4306_kaki_tangan UUID; v_4307_kemungkinan UUID; v_4308_perbandingan UUID; v_4310_tentu UUID; v_4311_tepat UUID; v_4312_jangan_masuk UUID; v_4314_permata_tersembunyi UUID; v_4315_lubang_hidung UUID; v_4316_belut_conger UUID; v_4318_pengalaman UUID; v_4320_dosa UUID; v_4321_bersalah UUID; v_4322_kejahatan UUID; v_4323_bau UUID; v_4324_kerusakan UUID; v_4325_kelonggaran UUID; v_4326_kaya UUID; v_4327_tesis UUID; v_4328_teori UUID; v_4329_logika UUID; v_4330_pertemuan UUID; v_4331_argumen UUID; v_4332_rasa_takjub UUID; v_4333_pencegahan UUID; v_4334_untuk_bertahan_melawan UUID; v_4337_pencegahan UUID; v_4338_kesulitan UUID; v_4339_kritik UUID; v_4340_sulit UUID; v_4341_gempa_bumi UUID; v_4342_intensitas_gempa UUID; v_4343_gempa_susulan UUID; v_4344_antropologi UUID; v_4345_untuk_terbang UUID; v_4353_cuci_tangan UUID; v_4356_maag UUID; v_4357_tak_terpisahkan UUID; v_4363_kemungkinan UUID; v_4364_onyomi_dan_kunyomi UUID; v_4365_rakyat UUID; v_4366_diam_diam UUID; v_4369_untuk_mengeluh UUID; v_4370_untuk_dipanggang UUID; v_4371_perangkat_elektronik UUID; v_4895_untuk_menusuk_sesuatu UUID; v_5464_rute UUID; v_5837_untuk_menutup_sesuatu UUID; v_7485_pembaca UUID; v_7503_tempat_tinggal UUID; v_7553_mesin UUID; v_7594_kontrol_penuh UUID; v_7648_diet UUID; v_7705_ruang_konferensi UUID; v_7706_anggota_diet UUID; v_7707_ekor UUID; v_7708_akhir_sebuah_garis UUID; v_7762_ramalan_cuaca UUID; v_7763_menjijikkan UUID; v_8675_ketua UUID; v_8711_sekolah_menengah_atas UUID; v_8850_batuk_jatuh UUID; v_8953_untuk_dilahirkan UUID; v_9067_melalui UUID; v_9071_benih UUID; v_9085_akan_pergi UUID; v_9253_untuk_menghubungkan_sesuatu UUID; v_9348_untuk_menghasilkan_buah UUID;

BEGIN

  DELETE FROM items WHERE level = 20;

  -- 1. RADICALS
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '飛', 'terbang', 20, 1, 'Radikal ini cukup rumit, namun tidak banyak yang terlihat radikal, jadi Anda beruntung. Ini terlihat seperti sejenis pesawat terbang raksasa. Lihat baling-baling di belakang saat bergerak ke kiri? Bayangkan saja pesawat steampunk seperti ini terbang di udara. Itu sebabnya radikal ini disebut <radical>terbang</radikal> — karena ia terbang.')
    RETURNING id INTO r_270_terbang;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '兼', 'monalisa', 20, 2, 'Radikal ini terlihat seperti kombinasi radikal kuas (聿) dan kanji kecantikan (美). Jadi, sesuatu yang indah apa yang dilukis dengan kuas? Contoh yang paling terkenal mungkin adalah <radical>Mona Lisa</radical>. Mona Lisa ini kebetulan memiliki beberapa sketsa tanduknya… oleh Anda. Oh, hei, kamu baru saja merusak Mona Lisa. Bagus sekali.')
    RETURNING id INTO r_271_monalisa;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '巛', 'banjir', 20, 3, 'Tiga garis yang membentuk sungai radikal dibelokkan ke kiri di sini. Mungkin karena derasnya air yang deras, karena ini adalah <radikal>banjir</radikal>. BERLARI!')
    RETURNING id INTO r_273_banjir;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '至', 'tikus-tanah', 20, 4, 'Radikal ini tampak seperti <radikal>tahi lalat</radikal>. Bayangkan kepalanya menyembul dari tumpukan tanah dan menengadah ke langit, kumisnya bergerak-gerak.

Sebagai alternatif, inilah mnemoniknya: Apa yang hidup di bawah tanah di tempat pribadi yang tertutup tanah? Seekor tahi lalat! Tentu saja, dinding, langit-langit, dan lantainya semuanya tanah, tapi itulah arti rumah bagi tahi lalat.')
    RETURNING id INTO r_274_tikus_tanah;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '義', 'kebenaran', 20, 5, 'Tanduk raja memberinya ego. Yang pada gilirannya memberinya rasa <read>kebenaran</reading>. Dia seharusnya tidak bertindak benar seperti itu, tapi menurutku itulah yang dilakukan raja. Jika Anda memiliki tanduk dan ego yang besar, Anda mungkin berpikir Anda adalah lambang kebenaran juga.')
    RETURNING id INTO r_383_kebenaran;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '/radicals/explosion.svg', 'ledakan', 20, 6, 'Lihat energinya meledak keluar? Itu adalah <radikal>ledakan</radikal>. Ledakan!')
    RETURNING id INTO r_8788_ledakan;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_270_terbang, 'Terbang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_271_monalisa, 'Monalisa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_273_banjir, 'Banjir', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_274_tikus_tanah, 'Tikus tanah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_383_kebenaran, 'Kebenaran', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_8788_ledakan, 'Ledakan', true, true);

  -- 2. KANJIS
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '困', 'tertekan', 20, 7, 'Jika Anda meletakkan <radical>mulut</radical> Anda pada <radical>pohon</radical> dan mencoba memakannya, Anda mungkin adalah individu yang <kanji>tertekan</kanji> dan <kanji>bermasalah</kanji> (kecuali jika Anda seorang penebang kayu). Anda tidak perlu memakan pohon ini, Anda punya banyak makanan di rumah. Jauhkan mulutmu dari pohon itu, dasar anak yang tertekan.', 'Anda mengira Anda adalah orang yang paling <kanji>tertekan</kanji> dan <kanji>bermasalah</kanji> dalam situasi ini, namun kemudian Anda melihat ke atas dan melihat <reading>con</reading>dor (こん) yang sama-sama tertekan dan bermasalah. Pohon yang selama ini Anda ucapkan adalah rumahnya. Dan sekarang kamu sudah berliur, merusak hari condor ini.')
    RETURNING id INTO k_1086_tertekan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '災', 'bencana', 20, 8, '<radikal>banjir</radikal> dan <radikal>kebakaran</radikal>! Pada saat yang sama? Ini adalah <kanji>bencana</kanji>!', '<kanji>bencana</kanji> ini disebabkan oleh <reading>cy</reading>borg (さい) Anda! Itu tidak berfungsi, mengalirkan air dalam jumlah besar dan mengeluarkan api. Saya kira Anda tidak menyelesaikan semua masalah sebelum membiarkannya berkeliaran liar.')
    RETURNING id INTO k_1089_bencana;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '機', 'mesin', 20, 9, 'Di samping <radical>pohon</radical>, Anda melihat <radical>kotoran</radikal>, tidak hanya sekali tetapi dua kali. Hanya <radikal>pemabuk</radikal> yang akan menjadi tipe <radikal>orang</radikal> yang tidak menggunakan <kanji>mesin</kanji> toilet terdekat. Ada kakus yang sangat bagus dengan toilet mesin di sana, tapi pemabuk ini sangat mabuk sehingga dia memutuskan untuk buang air besar di bawah pohon. Dan dia tidak hanya buang air besar sekali, dia juga buang air besar dua kali.', 'Oh, begitu — pintu kakus dengan <kanji>mesin</kanji> toilet terkunci, dan pemabuknya tidak memiliki <reading>kunci</reading> (き). Jika dia punya mesin seperti jackhammer, atau gergaji bundar, atau mesin berat lainnya, dia mungkin bisa masuk tanpa kunci, tapi karena dia tidak punya kunci, dia malah buang air besar di bawah pohon.')
    RETURNING id INTO k_1090_mesin;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '率', 'persen', 20, 10, 'Duduk di <radical>tutup</radical> toilet, Anda berdoa <radical>kotoran</radical> <radical>ledakan</radical> Anda akan terhapus, memohon <radical>salib</radical> yang menghiasi dinding kamar mandi. Kotoran tersebut harus dibuang seratus <kanji>persen</kanji> karena Anda sedang berkencan, dan Anda tidak ingin satu persen pun dari ledakan Anda tersisa untuk mereka lihat.', 'Sangatlah penting bahwa tidak ada <kanji>persen</kanji> kotoran yang tersisa, karena Anda tidak sedang berkencan di mana pun, Anda berada di <reading>Ritz</reading> (りつ)!')
    RETURNING id INTO k_1091_persen;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '飛', 'terbang', 20, 11, 'Radikal <radikal>terbang</radikal> dan kanji <kanji>terbang</kanji> sama persis! Luar biasa!', 'Saat Anda <kanji>terbang</kanji>, Anda menghasilkan banyak <reading>he</reading>at (ひ) karena Anda bergerak begitu cepat melalui atmosfer. Biasanya panas ini akan mengganggu, tapi kamu adalah seorang superhero jadi itu tidak mengganggumu. Inilah sebenarnya alasan Anda bisa terbang — Anda adalah pahlawan super dan sangat tahan terhadap panas.')
    RETURNING id INTO k_1092_terbang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '害', 'kerusakan', 20, 12, 'Anda melepaskan <radical>atap</radical> dan membenturkan <radical>tulang rusuk</radical> dan <radical>mulut</radical> Anda. Oof, itu <kanji>kerusakan</kanji> yang serius. Bagaimana kamu akan menjelaskan <kanji>cedera</kanji> ini kepada teman-temanmu di Klub We Never Fall Off of Roofs?', 'Saat Anda mencoba menilai <kanji>kerusakan</kanji>, Anda mendengar seseorang berteriak "<reading>Pria</reading> (がい)! Hei, kamu baik-baik saja, kawan?" Mereka berlari ke arah Anda, tetapi tulang rusuk dan mulut Anda terlalu rusak sehingga Anda tidak bisa merespons. "Baiklah kawan, bertahanlah kawan. Aku akan membawamu ke rumah sakit dan kami akan mengobati <kanji>cedera</kanji> itu, kawan."')
    RETURNING id INTO k_1093_kerusakan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '余', 'kelebihan', 20, 13, 'Terlepas dari apakah Anda mengenakan <radical>topi</radical> saat melakukan <radical>jackhammer</radical>, Anda akan mendapatkan <kanji>kelebihan</kanji> kebisingan. Jackhammers sangat keras, dan topi Anda tidak melakukan apa pun untuk meredam raket. Ada banyak keributan yang datang dari jackhammer dan penonton tidak terhibur.', 'Salah satu orang yang lewat adalah pemilik stand gerobak dorong <reading>yo</reading>-yo (よ). Memiliki <kanji>kelebihan</kanji> yo-yo, dia mulai melemparkannya ke arah Anda. Hal ini membuat Anda berhenti menggunakan jackhammer karena Anda membutuhkan kedua tangan untuk menangkis rentetan yo-yo.')
    RETURNING id INTO k_1094_kelebihan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '難', 'sulit', 20, 14, '<radical>Chinese</radical> <radical>kalkun</radical> <kanji>sulit</kanji> ditemukan karena sangat langka. Kalkun Cina adalah jenis kalkun yang paling langka, jadi tentu saja menemukannya sangatlah sulit.', 'Tahukah Anda alasan sebenarnya mengapa kalkun Cina begitu <kanji>sulit</kanji> ditemukan? Itu karena semuanya terbuat dari <reading>Naan</reading> (なん). Tentu saja mereka sulit dipahami ketika mereka berbaur dengan baik dengan semua Naan lainnya!')
    RETURNING id INTO k_1095_sulit;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '被', 'menutupi', 20, 15, '<radical>pakaian</radikal> pada <radical>kulit</radikal> Anda ada untuk <kanji>menutupi</kanji> Anda. Dalam masyarakat yang sopan, Anda diharapkan untuk menutupi kulit Anda dengan semacam pakaian — bahkan jika Anda harus mengenakan sesuatu yang menyebabkan Anda <kanji>menimbulkan</kanji> kerusakan, seperti skinny jeans yang memotong sirkulasi atau kemeja dengan label yang sangat gatal.', 'Alasan lain untuk <kanji>menutupi</kanji> diri sendiri adalah untuk mempertahankan <membaca>dia</reading>di (ひ). Sebenarnya, menahan panas dan tetap hangat mungkin adalah alasan mengapa orang-orang mulai menutupi diri mereka sendiri.')
    RETURNING id INTO k_1097_menutupi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '裕', 'melimpah', 20, 16, 'Anda memiliki <radical>pakaian</radikal> <radikal>lembah</radikal>, yang merupakan lembah tempat Anda menyimpan <kanji>berlimpah</kanji> pakaian Anda. Ya, Anda sangat <kanji>kaya</kanji> sehingga Anda tidak hanya dapat membeli lembah untuk diri Anda sendiri, Anda juga dapat menggunakannya seperti lemari pakaian.', 'Lembah ini juga <kanji>berlimpah</kanji> dengan <kanji>kaya</kanji> <reading>kamu</reading>mereka (ゆう) — pemuda kaya dan trendi yang datang dari seluruh dunia untuk datang ke lembah Anda dan mengintip koleksi pakaian Anda.')
    RETURNING id INTO k_1098_melimpah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '震', 'gempa-bumi', 20, 17, '<radical>Hujan</radical> menyebabkan <radical>tanah longsor</radical> yang menyebabkan <kanji>gempa bumi</kanji>!!! Bumi tidak hanya tergelincir, ia juga <kanji>guncangan</kanji> dan <kanji>gempa</kanji>.', '<kanji>gempa bumi</kanji> mengguncang Anda begitu hebat hingga Anda terjatuh, membenturkan <reading>tulang kering</reading> (しん) Anda ke meja kopi. Tepi meja kopi sangat tajam, sehingga cukup melukai tulang kering Anda.')
    RETURNING id INTO k_1099_gempa_bumi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '尻', 'pantat', 20, 18, 'Anda mengambil beberapa <radical>bendera</radikal>, total <radical>sembilan</radikal>, dan menaruhnya satu per satu di <kanji>pantat</kanji> Anda.', 'Sekarang kamu sudah memiliki sembilan bendera di dalam <kanji>pantat</kanji>mu, kamu harus mengeluarkannya. Tapi, kamu tidak tahu caranya. Jadi Anda bertanya <reading>Siri</reading> (しり), "Bagaimana cara mengeluarkan sembilan bendera dari pantat saya?"')
    RETURNING id INTO k_1100_pantat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '尾', 'ekor', 20, 19, 'Anda melihat <radical>bendera</radical> tertancap di tanah dengan sedikit <radical>bulu</radical> keluar darinya dan setelah diperiksa lebih dekat, Anda menyadari bahwa itu sebenarnya adalah <kanji>ekor</kanji>. Seseorang menancapkan bendera ke suatu jenis binatang, mendorongnya ke bawah tanah. Yang terlihat sekarang hanyalah sebagian bulu dan sebagian ekornya.', 'Anda mencoba menarik bendera dari tanah dan mendengar suara dengungan yang bergemuruh. Di ujung tiang bendera Anda melihat sarang lebah (び) yang sangat besar! Lebah-lebah ini membuat rumah mereka di bawah <kanji>ekor</kanji>! Mungkin itu sebabnya bendera itu ditempel di sana… untuk memperingatkan orang-orang. Ups.')
    RETURNING id INTO k_1101_ekor;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '械', 'alat', 20, 20, 'Di bawah <radical>pohon</radical> seorang <radical>pemabuk</radical> duduk dengan <radical>dua puluh</radical> <kanji>alat</kanji> kecil. Ada yang elektronik kecil, yang kecil, yang kecil untuk berjalan... ada dua puluh buah.', 'Anda ingin tahu untuk apa <kanji>alat-alat</kanji> ini, jadi Anda bertanya. Pemabuk itu berkata, "Ini adalah alat <read>kay</reading>ak (かい) *urp* itu untuk uh *blarp* kayak... barangmu."')
    RETURNING id INTO k_1102_alat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '確', 'yakin', 20, 21, 'Anda mengambil <radical>batu</radical> ke <radical>dahi</radical> <radical>kalkun</radical>. <kanji>pasti</kanji> Anda akan merusaknya.', 'Anda membunuh kalkun ini, dan Anda perlu memastikan <kanji>pasti</kanji> mati. Alasan Anda perlu memastikan kalkun ini mati adalah karena <reading>ayam</reading> (かく) dalam hidup Anda. Ayam jantan menjadi sangat iri jika ada kalkun.')
    RETURNING id INTO k_1103_yakin;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '嫌', 'benci', 20, 22, 'Ketika seorang <radikal>wanita</radikal> melihat <radikal>Mona Lisa</radikal>, dia merasakan perasaan <kanji>tidak suka</kanji> yang kuat. Semua wanita tidak menyukai Mona Lisa karena banyaknya perhatian yang didapatnya.', 'Kamu <kanji>tidak menyukai</kanji> Mona Lisa sehingga kamu menyewa <reading>Ken</reading> (けん) sang samurai untuk memotongnya.')
    RETURNING id INTO k_1104_benci;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '個', 'individu', 20, 23, '<radikal>Mulut</radikal> <radikal>pemimpin</radikal> telah menjadi <radikal>tua</radikal> karena mengatakan begitu banyak hal. Inilah yang membuat mereka berbeda dari orang lain, mereka berbicara seperti <kanji>individu</kanji>.', 'Sebagai <kanji>individu</kanji>, mereka harus mengajarkan semua <membaca>子</reading> (こ) dengan cara mereka. Cara mereka masing-masing.')
    RETURNING id INTO k_1105_individu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '圧', 'tekanan', 20, 24, 'Di bawah <radical>tebing</radikal> mana pun, ada <radikal>tanah</radikal> yang berada di bawah banyak <kanji>tekanan</kanji>.', 'Anda ingin meningkatkan <kanji>tekanan</kanji>, jadi Anda menumpuk di tebing kedua. "<reading>Ah, dua</reading> (あつ)?!" kotoran berteriak dengan cemas. Kotoran ini keras, tetapi tekanannya mulai terasa sekarang.')
    RETURNING id INTO k_1106_tekanan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '在', 'ada', 20, 25, 'Seekor <radical>narwhal</radical> menancapkan <radical>tongkat</radical> ke dalam <radical>tanah</radical> untuk melihat apa yang mungkin <kanji>ada</kanji> di bawahnya. Narwhal hidup di laut, lho. Jadi mereka yakin tidak ada yang bisa ada di tempat lain.', 'Narwhal tidak dapat menemukan apa pun tetapi tidak dapat berhenti memikirkan tentang apa yang <kanji>ada</kanji> di luar dunianya. Ia mengeluarkan lofon (ざい) <reading>xy</reading> dan mulai mengetuk tuts dengan klaksonnya. Ia memainkan lagu sedih tentang makna hidup dan apakah keberadaan itu sepadan.')
    RETURNING id INTO k_1107_ada;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '夢', 'mimpi', 20, 26, '<radical>bunga</radical> <radical>net</radical> ada di <radical>dahi</radical> Anda di <radical>malam</radical>. Ini muncul di kepala Anda di malam hari setiap kali Anda mengalami <kanji>mimpi</kanji>.', 'Anda <kanji>bermimpi</kanji> tentang sapi yang berkata "<reading>moo</reading> (む), moo, moo!"')
    RETURNING id INTO k_1108_mimpi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '産', 'melahirkan', 20, 27, 'Anda <radical>berdiri</radical> di <radical>Tebing</radical> <radical>Kehidupan</radical> dan <kanji>melahirkan</kanji> seorang anak. Oh tidak! Anda berdiri terlalu dekat dengan tepi Tebing Kehidupan! Bayinya jatuh dari tebing tepat setelah Anda melahirkannya! Dalam keputusasaanmu, kamu juga membuang semua <kanji>properti</kanji>mu dari tebing.', 'Anda <kanji>melahirkan</kanji>, dan sekarang hal ini terjadi. Nasib buruk. Tapi tunggu! Suara apa itu? Lonceng kereta luncur? Mungkinkah?! Itu <read>San</reading>ta-san (さん)! Dia menangkap bayimu! Dan semua <kanji>properti</kanji> Anda.')
    RETURNING id INTO k_1109_melahirkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '倒', 'menggulingkan', 20, 28, 'Seseorang menikam <radical>pemimpin</radikal> <radikal>tahi lalat</radikal> dengan <radikal>pisau</radikal> untuk <kanji>menggulingkan</kanji> itu. Sekarang ada pemimpin tahi lalat baru. Karena itulah yang terjadi ketika Anda menggulingkan seseorang—orang lain perlu mengambil alih. Dalam hal ini, tikus tanah yang pendendam.', 'Di manakah pemimpin paling sering <kanji>digulingkan</kanji>? Dalam <membaca>とう</membaca>きょう. Coba pikirkan kembali sejarah Jepang, ketika semua orang saling berperang satu sama lain. Orang-orang mengambil alih dan digulingkan dan kemudian orang itu digulingkan dan kemudian orang ITU digulingkan. Pada dasarnya, sulit untuk tetap menjadi pemimpin di とうきょう.')
    RETURNING id INTO k_1110_menggulingkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '臭', 'bau', 20, 29, 'Cuci<radical>diri</radical> Anda dengan sabun <radical>besar</radical> jika Anda <kanji>bau</kanji> semuanya.', 'Kamu <kanji>bau</kanji> di ruangan karena kamu menghabiskan harimu dengan membaca <reading>草</reading> (くさ). Dan berdasarkan bau busuk ini, menurutku ada binatang yang meninggalkan sesuatu di dalamnya juga...')
    RETURNING id INTO k_1111_bau;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '厚', 'tebal', 20, 30, 'Menggantung di tepi <radical>tebing</radical> adalah <radical>matahari</radical>yang memuja <radical>anak</radical> dengan alis <kanji>tebal</kanji>. Bergantung di tebing, anak itu berteriak kepada matahari untuk menyelamatkan mereka dari nasib kejam ini. Bahkan ketebalan alis mereka saja tidak cukup untuk memberikan kekuatan pada anak tersebut untuk bangkit kembali sendiri.', 'Anak itu melihat sekilas ke alis <kanji>tebal</kanji> mereka dan berteriak, "<reading>ah, dua</reading> (あつ)!" Yup, ternyata matahari salah memahami permintaan tolong sang anak. Alih-alih menarik mereka dari tebing, hal itu justru memberi mereka alis tebal kedua di atas alis pertama.')
    RETURNING id INTO k_1112_tebal;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '妻', 'istri', 20, 31, 'Anda menempatkan <radical>salib</radikal> pada <radikal>Wolverine</radikal> <radikal>wanita</radikal>. Dia sudah pergi sekarang, tapi dia pernah menjadi <kanji>istri</kanji>mu.', 'Tunggu sebentar… Dia tidak mungkin mati karena <kanji>istri</kanji>mu adalah <reading>cy</reading>borg (さい)! Bagaimana kamu bisa lupa?!')
    RETURNING id INTO k_1113_istri;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '議', 'pertimbangan', 20, 32, 'Apa yang Anda <radikal>katakan</radikal> adalah <radikal>kebenaran</radikal>, setidaknya itulah yang Anda yakini. Anda terus berbicara dan mengatakan hal-hal ini, dan Anda tidak mendengarkan kata-kata orang lain. Ini adalah gaya <kanji>musyawarah</kanji> dan <kanji>diskusi</kanji> Anda.', 'Apa yang sedang Anda <kanji>musyawarahkan</kanji>? Apakah akan mengirim jiwa malang ke <reading>gui</reading>llotine (ぎ) atau tidak. "Menurutku dia sebaiknya pergi," katamu. "Menurutku dia tidak harus melakukannya," kata yang lain. <kanji>pertimbangan</kanji> ini tidak akan menghasilkan apa-apa...')
    RETURNING id INTO k_1114_pertimbangan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '犯', 'kejahatan', 20, 33, 'Di dunia <radical>hewan</radikal>, <radikal>ular</radikal> adalah yang paling mungkin melakukan <kanji>kejahatan</kanji>. Ingat Taman Eden? Ular itu adalah orang jahat. Sejak saat itu, ular menjadi hewan yang paling terkenal melakukan kejahatan.', 'Ular ini sudah terlalu lama menghindari hukum. Sudah waktunya bagi pahlawan sejati untuk mengakhiri <kanji>kejahatan</kanji> mereka. Masukkan <read>Han</reading> (はん) Solo. Han Solo adalah satu-satunya orang yang kuat dan cukup berani untuk mengakhiri ular ini dan kejahatannya.')
    RETURNING id INTO k_1115_kejahatan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '罪', 'kesalahan', 20, 34, 'Pasang <radical>jaring</radikal> di sekitar <radikal>penjahat</radikal> untuk menunjukkan <kanji>rasa bersalah</kanji> mereka. Penjahat terlihat seperti orang lain di jalan, jadi Anda memutuskan untuk mengikat mereka dengan jaring untuk memastikan orang tahu dengan siapa mereka berhadapan.', '<kanji>rasa bersalah</kanji> terlihat di wajah penjahatnya. Mereka tersenyum, mengangkat bahu, dan mengeluarkan <reading>xy</reading>lophone (ざい) curian dari saku belakang mereka.')
    RETURNING id INTO k_1116_kesalahan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '防', 'mencegah', 20, 35, 'Jika ada <radical>bangunan</radical> di <radical>arah</radical> yang ingin Anda tuju, hal itu akan <kanji>mencegah</kanji> Anda untuk melangkah lebih jauh. Seperti, ayolah nak, kamu pikir kamu bisa berjalan melewati sebuah gedung? Jangan membuatku tertawa!', 'Bangunan tersebut <kanji>mencegah</kanji>Anda untuk pergi ke arah yang benar, sehingga Anda menarik bola <reading>busur</reading>ling (ぼう) dari tas Anda, bidik, dan lemparkan bangunan tersebut. Bangunan itu, dan semua orang di sekitarnya, runtuh. Tapi sekarang puing-puing menghalangi Anda untuk melangkah lebih jauh.')
    RETURNING id INTO k_1117_mencegah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '論', 'teori', 20, 36, 'Anda <radical>berkata</radical> sambil melemparkan <radical>topi</radical> Anda ke <radical>tanah</radical> di depan <radical>rak buku</radical>, "Saya punya <kanji>teori</kanji>!" Semua bacaan dan pemikiran ini akhirnya memberi Anda sebuah ide bagus, sebuah teori yang menurut Anda dapat memecahkan semua masalah Anda!', '"Apa teorimu, <reading>Ron</reading> (ろん)?" tanya Hermione. Anda Ron Weasley, dan Anda baru saja mengemukakan teori yang menurut Anda akan membantu Anda menghentikan Voldemort.')
    RETURNING id INTO k_1119_teori;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '経', 'lorong-waktu', 20, 37, 'Mengikat <radical>benang</radikal> ke <radikal>batu nisan</radikal> setiap tahun akan membantu Anda <kanji>mengelola</kanji> <kanji>perjalanan waktu</kanji>. Dengan begitu, Anda akan mengetahui berapa tahun yang Anda <kanji>lewatkan</kanji>, karena Anda akan memiliki satu rangkaian pesan untuk setiap tahun yang dapat dihitung.', 'Berurusan dengan <kanji>berjalannya waktu</kanji> bisa jadi sulit, jadi setelah Anda mengikat benang ke batu nisan, setiap tahun Anda makan sepotong <reading>ca</reading>ke (けい). Anda sudah makan kue untuk menandai berlalunya waktu di hari ulang tahun Anda, jadi mengapa tidak di sini juga?')
    RETURNING id INTO k_1120_lorong_waktu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '刺', 'menusuk', 20, 38, 'Anda berjalan ke dalam <radical>pohon</radical> ini dan membenturkan <radical>kepala</radical> Anda ke pohon tersebut, lalu <radical>pisau</radical> jatuh dari pohon tersebut untuk <kanji>menusuk</kanji> Anda. Aduh! Apa-apaan ini?! Apa yang dilakukan pisau di pohon itu?', 'Tidak ada yang lebih berbahaya daripada pohon yang suka <kanji>menusuk</kanji>, jadi ambillah <reading>gergaji</reading> (さ) dan mulailah menggergajinya. Pohon yang menusuk akan digergaji.')
    RETURNING id INTO k_1296_menusuk;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1086_tertekan, 'Tertekan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1086_tertekan, 'Bermasalah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1089_bencana, 'Bencana', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1090_mesin, 'Mesin', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1091_persen, 'Persen', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1091_persen, 'Persentase', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1092_terbang, 'Terbang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1093_kerusakan, 'Kerusakan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1093_kerusakan, 'Cedera', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1093_kerusakan, 'Menyakiti', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1094_kelebihan, 'Kelebihan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1094_kelebihan, 'Kelebihan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1095_sulit, 'Sulit', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1097_menutupi, 'Menutupi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1097_menutupi, 'Mendatangkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1098_melimpah, 'Melimpah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1098_melimpah, 'Kaya', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1099_gempa_bumi, 'Gempa bumi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1099_gempa_bumi, 'Gempa', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1099_gempa_bumi, 'Menggoyang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1100_pantat, 'Pantat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1100_pantat, 'Pantat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1101_ekor, 'Ekor', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1102_alat, 'Alat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1103_yakin, 'Yakin', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1104_benci, 'Benci', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1105_individu, 'Individu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1106_tekanan, 'Tekanan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1107_ada, 'Ada', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1108_mimpi, 'Mimpi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1109_melahirkan, 'Melahirkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1109_melahirkan, 'Milik', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1110_menggulingkan, 'Menggulingkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1110_menggulingkan, 'Runtuh', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1111_bau, 'Bau', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1111_bau, 'Bau', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1111_bau, 'Berbau', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1112_tebal, 'Tebal', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1113_istri, 'Istri', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1114_pertimbangan, 'Pertimbangan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1114_pertimbangan, 'Diskusi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1115_kejahatan, 'Kejahatan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1116_kesalahan, 'Kesalahan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1117_mencegah, 'Mencegah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1117_mencegah, 'Pencegahan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1119_teori, 'Teori', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1120_lorong_waktu, 'Lorong waktu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1120_lorong_waktu, 'Melewati', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1120_lorong_waktu, 'Mengelola', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1296_menusuk, 'Menusuk', true, true);

  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1086_tertekan, 'こん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1086_tertekan, 'こま', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1089_bencana, 'さい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1089_bencana, 'わざわ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1090_mesin, 'き', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1090_mesin, 'はた', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1091_persen, 'りつ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1091_persen, 'そつ', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1091_persen, 'ひき', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1092_terbang, 'ひ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1092_terbang, 'と', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1093_kerusakan, 'がい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1094_kelebihan, 'よ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1094_kelebihan, 'あま', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1095_sulit, 'なん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1095_sulit, 'むずか', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1097_menutupi, 'ひ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1097_menutupi, 'かぶ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1098_melimpah, 'ゆう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1099_gempa_bumi, 'しん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1099_gempa_bumi, 'ふる', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1100_pantat, 'しり', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1101_ekor, 'び', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1101_ekor, 'お', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1101_ekor, 'ぽ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1102_alat, 'かい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1102_alat, 'かせ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1103_yakin, 'かく', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1103_yakin, 'たし', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1104_benci, 'けん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1104_benci, 'げん', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1104_benci, 'いや', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1104_benci, 'きら', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1105_individu, 'こ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1106_tekanan, 'あつ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1107_ada, 'ざい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1108_mimpi, 'む', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1108_mimpi, 'ゆめ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1109_melahirkan, 'さん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1109_melahirkan, 'う', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1110_menggulingkan, 'とう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1110_menggulingkan, 'たお', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1111_bau, 'くさ', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1111_bau, 'にお', 'kunyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1111_bau, 'しゅう', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1112_tebal, 'あつ', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1112_tebal, 'こう', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1113_istri, 'さい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1113_istri, 'つま', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1114_pertimbangan, 'ぎ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1115_kejahatan, 'はん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1115_kejahatan, 'おか', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1116_kesalahan, 'ざい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1116_kesalahan, 'つみ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1117_mencegah, 'ぼう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1117_mencegah, 'ふせ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1119_teori, 'ろん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1120_lorong_waktu, 'けい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1120_lorong_waktu, 'た', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1120_lorong_waktu, 'へ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1296_menusuk, 'さ', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1296_menusuk, 'し', 'onyomi', false, false);

  -- 3. VOCABULARIES
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '同感', 'perjanjian', 20, 39, 'Saat Anda memiliki <kanji>yang sama</kanji> <kanji>perasaan</kanji> dengan orang lain, Anda berada dalam <vocabulary>setuju</vocabulary> dengan mereka. Mereka mempunyai pendapat atau perasaan tentang sesuatu, dan Anda <vocabulary>memiliki perasaan yang sama</vocabulary>.

同感 adalah kata yang digunakan untuk menyatakan persetujuan, seringkali dengan perasaan berbagi. Anda menggunakannya ketika Anda mendengar pemikiran atau sudut pandang yang benar-benar selaras dengan Anda - Anda sepenuhnya setuju dengan pendapat orang tersebut dan merasakan hal yang persis sama. Berkhotbah!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Perjanjian, Merasakan Hal yang Sama')
    RETURNING id INTO v_3547_perjanjian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '自覚', 'kesadaran-diri', 20, 40, 'Apa arti <kanji>self</kanji> dan <kanji>awake</kanji> jika digabungkan? Ini merujuk pada <vocabulary>kesadaran diri</vocabulary>, <vocabulary>kesadaran</vocabulary> akan diri sendiri, atau <vocabulary>realisasi</vocabulary>.

Ingin tahu tentang perbedaan antara 意識 dan 自覚? 意識 mengacu pada keadaan kesadaran atau kesadaran umum, sedangkan 自覚 secara khusus berkaitan dengan kesadaran diri. Ini menyiratkan pengakuan yang jelas terhadap tindakan, kemampuan, atau keadaan seseorang, dan sering digunakan dalam konteks yang berkaitan dengan pertumbuhan pribadi.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kesadaran Diri, Realisasi, Kesadaran, Kesadaran')
    RETURNING id INTO v_4035_kesadaran_diri;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '皿洗い', 'mencuci-piring', 20, 41, 'Anda pasti tahu kata 皿 (piring) dan kata 洗う (mencuci), bukan? Anda mungkin bisa menebak sedang mencuci piring di sini, tapi ini adalah kata benda, jadi ini adalah gagasan tentang <vocabulary>mencuci piring</vocabulary>, AKA <vocabulary>mencuci piring</vocabulary>, atau <vocabulary>mencuci piring</vocabulary>.', 'Pembacaannya adalah kosakata individual (Anda dapat mengetahuinya karena ada sedikit hiragana yang menempel di sana). Ini adalah gabungan bacaan 皿 dan 洗う.', 'Mencuci piring, Mencuci Piring, Mencuci Piring')
    RETURNING id INTO v_4114_mencuci_piring;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '困る', 'menjadi-tertekan', 20, 42, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>tertekan</kanji> dan <kanji>bermasalah</kanji>. Versi kata kerjanya adalah <vocabulary>menjadi tertekan</vocabulary> dan <vocabulary>menjadi masalah</vocabulary>.', 'Jika seseorang tampak <vocabulary>tertekan</vocabulary> mungkin seseorang yang mereka kenal sedang dalam <reading>koma</reading> (こま). Tidak banyak hal yang lebih menyusahkan dan meresahkan dari itu.', 'Menjadi Tertekan, Menjadi Bermasalah, Menjadi Bingung, Menjadi Kesal')
    RETURNING id INTO v_4181_menjadi_tertekan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '改まる', 'untuk-diperbarui', 20, 43, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja.

Kanjinya sendiri berarti <kanji>memperbarui</kanji> jadi versi kosakata kata kerjanya adalah <vocabulary>diperbaharui</vocabulary>. Seperti kebanyakan kata kerja yang diakhiri dengan まる, ini adalah kata kerja intransitif, artinya tidak menggunakan objek langsung. Sesuatu diperbarui atau diperbarui, atau sesuatu berubah. Melihat? Tidak ada objek langsung.

Meskipun tidak sering diterjemahkan sebagai "memperbarui," 改まる menyiratkan semacam pembaharuan dalam perubahan yang digunakan untuk menggambarkannya — apakah itu revisi peraturan atau pergantian tahun lama ke tahun baru. Kata ini juga dapat digunakan untuk perbaikan pribadi, atau menggambarkan peralihan ke sikap yang lebih formal dalam situasi sosial.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda mungkin ingat bacaan dari kata kerja transitif 改める, tapi berikut ini mnemoniknya untuk berjaga-jaga: 

<vocabulary>Diperbaharui</vocabulary> artinya diubah menjadi sesuatu <reading>新た</reading> (あらた). Keluar dengan yang lama, masuk dengan 新た, kan? Bayangkan diri Anda berada dalam situasi di mana telah terjadi banyak perubahan. Cobalah untuk mengingat bagaimana rasanya ketika semuanya 新た. Apakah Anda gugup, bersemangat, atau biasanya Anda terus berjalan tanpa menyadarinya?', 'Untuk Diperbarui, Untuk Diubah, Untuk Direvisi, Menjadi Formal')
    RETURNING id INTO v_4204_untuk_diperbarui;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '混ざる', 'untuk-menjadi-campuran', 20, 44, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>campuran</kanji> jadi versi kosakata kata kerjanya adalah <vocabulary>to get mixed</vocabulary> atau <vocabulary>to be mixed</vocabulary>. 

混ざる digunakan untuk berbicara tentang sesuatu yang tercampur, tanpa berfokus pada siapa yang melakukan pencampuran. Anda dapat mengingat hal ini karena <reading>Tzar</reading> (ざる) di Rusia memimpin banyak hal yang bercampur menjadi satu — masyarakat, bahasa, agama. Kerajaan Tzar adalah tempat peleburan besar tempat segala macam hal bercampur menjadi satu.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Siapa yang selalu ingin <kosakata>tercampur</vocabulary> dengan baik? <membaca>ma</reading> Anda (ま)! Entah itu supnya atau warna yang dia gunakan untuk melukis, semua yang dia sentuh akhirnya tercampur dengan baik dan menyatu dengan baik.', 'Untuk Menjadi Campuran, Untuk Dicampur, Untuk Dicampur Dengan')
    RETURNING id INTO v_4221_untuk_menjadi_campuran;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '余る', 'menjadi-surplus', 20, 45, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>kelebihan</kanji> sehingga versi kata kerjanya adalah <kosakata>menjadi kelebihan</vocabulary>, <vocabulary>tetap tersisa</vocabulary>, atau <vocabulary>menjadi kelebihan</vocabulary>. Terlalu banyak!', 'Sesuatu yang Anda tidak ingin <vocabulary>berlebihan</vocabulary> adalah <reading>armor</reading> (あま). Armor itu berat dan memakan banyak ruang, jadi Anda mungkin memerlukan paling banyak satu set. Jika Anda memiliki cukup <kosa kata>untuk tetap tersisa</vocabulary> saat Anda pergi berperang, ya, Anda mungkin memiliki terlalu banyak.', 'Menjadi Surplus, Untuk Tetap Tersisa, Menjadi Berlebihan')
    RETURNING id INTO v_4254_menjadi_surplus;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '余計', 'tidak-dibutuhkan', 20, 46, '<kanji>Kelebihan</kanji> <kanji>diukur</kanji>dan itu semua <vocabulary>tidak diperlukan</vocabulary>. Ya, itu pasti <vocabulary>lebih dari yang dibutuhkan</vocabulary>. Mungkin kita harus membuang semua kelebihan ini?

余計 biasanya memiliki konotasi negatif, artinya sesuatu <vocabulary>terlalu banyak</vocabulary>, atau tidak dibutuhkan dan bisa saja ditinggalkan. Bisa jadi terlalu banyak hal, atau kata-kata atau tindakan yang tidak perlu, lebih baik tidak diucapkan atau dilakukan.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Tidak dibutuhkan, Lebih dari Dibutuhkan, Terlalu Banyak')
    RETURNING id INTO v_4255_tidak_dibutuhkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '個人', 'pribadi', 20, 47, 'Dalam istilah <kanji>individu</kanji> <kanji>orang</kanji>... yah, itu <vocabulary>pribadi</vocabulary>, dan bergantung pada <vocabulary>individu</vocabulary>. Apa pun itu, setiap orang memiliki selera pribadi, jadi pastikan untuk memikirkan hal itu.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Pribadi, Individu')
    RETURNING id INTO v_4257_pribadi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '一個', 'satu-hal-kecil', 20, 48, 'Penghitung 個, yang berarti <kanji>individu</kanji> sendiri, mengacu pada "sesuatu yang bersifat individual". Ini biasanya merupakan hal yang kecil, jadi digunakan untuk menghitung hal-hal kecil. Kata ini di sini berbicara tentang <kanji>satu</kanji> <kanji>individu</kanji>. Cara yang lebih baik untuk menerjemahkannya adalah dengan menyebutnya <vocabulary>satu hal kecil</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.いち dipersingkat, tapi saya yakin Anda sudah mengetahuinya.', 'Satu Hal Kecil, Satu Hal, Satu Benda Kecil, Satu Objek')
    RETURNING id INTO v_4258_satu_hal_kecil;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '個室', 'kamar-pribadi', 20, 49, '<kanji>individu</kanji> <kanji>ruangan</kanji> khusus untuk Anda adalah <vocabulary>ruangan pribadi</vocabulary> Anda sendiri. Bagus sekali!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kamar Pribadi, Kamarnya Sendiri')
    RETURNING id INTO v_4259_kamar_pribadi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '三個', 'tiga-hal-kecil', 20, 50, '<kanji>Tiga</kanji> <kanji>individu</kanji> adalah <vocabulary>tiga hal kecil</vocabulary>. Kanji 個 bisa digunakan untuk menghitung benda kecil, seperti ini! Coba nomor lain juga.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Tiga Hal Kecil, Tiga Hal, Tiga Objek, Tiga Benda Kecil')
    RETURNING id INTO v_4260_tiga_hal_kecil;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '倒す', 'untuk-mengetuk', 20, 51, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja.

Kanji itu sendiri berarti <kanji>menggulingkan</kanji> atau <kanji>runtuh</kanji>, dan ini adalah kata kerja transitif (seperti kebanyakan kata kerja yang berakhiran す) yang berhubungan dengan tindakan tersebut. Artinya <vocabulary>menjatuhkan</vocabulary>, <vocabulary>menjatuhkan</vocabulary>, atau <vocabulary>mengalahkan</vocabulary>.

Kata ini dapat digunakan untuk berbicara tentang menjatuhkan sesuatu secara fisik, serta menjatuhkan sesuatu atau seseorang, seperti pemerintah, atau mengalahkan seseorang, seperti musuh.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Jika kamu ingin menjatuhkan sesuatu, kamu harus pergi ke <reading>menjerek</reading>n (たお) di atasnya. Anda tidak akan pernah bisa merobohkan apapun jika semua usaha Anda asal-asalan. Anda benar-benar harus pergi ke kota untuk hal itu!', 'Untuk Mengetuk, Untuk Menurunkan, Untuk Mengalahkan')
    RETURNING id INTO v_4261_untuk_mengetuk;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '面倒', 'masalah', 20, 52, 'Saat Anda melihat langsung ke <kanji>wajah</kanji> dari <kanji>keruntuhan</kanji> itu berarti <vocabulary>masalah</vocabulary> dan <vocabulary>kesulitan</vocabulary> segera hadir.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Namun とう menjadi どう. Agh, <vocabulary>面倒</vocabulary> yang luar biasa.', 'Masalah, Kesulitan')
    RETURNING id INTO v_4262_masalah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '倒産', 'kebangkrutan', 20, 53, 'Jika seseorang <kanji>merobohkan</kanji>properti</kanji> Anda, hal itu akan berakhir dengan <vocabulary>kebangkrutan</vocabulary>. Sayangnya, tanpa properti Anda pasti akan <vocabulary>bangkrut</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kebangkrutan, Bangkrut')
    RETURNING id INTO v_4263_kebangkrutan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '借り手', 'peminjam', 20, 54, 'Ingat bagaimana 手 bisa berarti "pelaku" dalam beberapa kata? Jadi di sini, Anda memiliki <kanji>meminjam</kanji> <kanji>pelaku</kanji>, atau lebih sederhananya <vocabulary>peminjam</vocabulary>.

Kata ini sering digunakan untuk merujuk secara spesifik pada peminjam, berbeda dengan pemberi pinjaman.', 'Anda pasti ingin mengetahui kata 借りる dan 手 agar bisa membaca yang ini. Gabungkan mereka untuk mengetahui bacaannya.', 'Peminjam, Penyewa')
    RETURNING id INTO v_4264_peminjam;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '厚い', 'tebal', 20, 55, 'Ini adalah kanji tunggal dengan い di akhir, artinya Anda tahu itu mungkin kata sifat. Apa bentuk kata sifat dari <kanji>tebal</kanji>? Juga <vocabulary>tebal</vocabulary>.

Ini adalah kata yang relatif formal yang umumnya digunakan dalam tulisan.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji. Tidak diperlukan buku <vocabulary>tebal</vocabulary> untuk memahami bacaan ini, ya?', 'Tebal')
    RETURNING id INTO v_4265_tebal;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '圧力', 'tekanan', 20, 56, '<kanji>tekanan</kanji> <kanji>kekuatan</kanji> adalah <vocabulary>tekanan</vocabulary>. Hal ini juga bisa menjadi <vocabulary>stress</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Tekanan, Menekankan')
    RETURNING id INTO v_4266_tekanan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '血圧', 'tekanan-darah', 20, 57, 'Periksa <kanji>tekanan</kanji> <kanji>darah</kanji> Anda. Ini adalah <vocabulary>tekanan darah</vocabulary> Anda.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Tekanan darah')
    RETURNING id INTO v_4267_tekanan_darah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '指圧', 'shiatsu', 20, 58, 'Ketika seseorang menerapkan <kanji>jari</kanji> <kanji>tekanan</kanji>, mereka mungkin sedang berlatih <vocabulary>shiatsu</vocabulary>.

Shiatsu adalah terapi alternatif dari Jepang yang melibatkan pemberian tekanan dengan ujung jari pada titik-titik tertentu di tubuh. Kata ini juga bisa merujuk pada segala jenis <vocabulary>tekanan jari</vocabulary>, cukup logis!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Shiatsu, Tekanan Jari')
    RETURNING id INTO v_4268_shiatsu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '存在', 'adanya', 20, 59, 'Saya <kanji>ada</kanji>, saya <kanji>kira</kanji>... ini adalah jenis <vocabulary>eksistensi</vocabulary> yang saya miliki. Aku juga tidak begitu yakin, dan aku tidak peduli. Keberadaan itu sia-sia, menurutku.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Adanya')
    RETURNING id INTO v_4269_adanya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '実在', 'realitas', 20, 60, '<kanji>kebenarannya</kanji> adalah bahwa Anda <kanji>ada</kanji> dalam <vocabulary>realitas</vocabulary>. Inilah <vocabulary>keberadaan nyata</vocabulary> Anda. Yah, itu masuk akal, menurutku.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Realitas, Keberadaan Nyata')
    RETURNING id INTO v_4271_realitas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '在外', 'luar-negeri', 20, 61, 'Ketika Anda <kanji>ada</kanji> <kanji>di luar</kanji> (di luar apa? Jepang, tentunya), Anda berada <vocabulary>di luar negeri</vocabulary> atau <vocabulary>di luar negeri</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Luar negeri, Luar negeri')
    RETURNING id INTO v_4272_luar_negeri;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '夢中', 'tergila-gila', 20, 62, 'Bahkan di <kanji>tengah</kanji> <kanji>impian</kanji> Anda, Anda memikirkan tentang bantal tubuh Anda. Anda <vocabulary>tergila-gila pada</vocabulary> mereka, dibungkus dengan <vocabulary>penyerapan</vocabulary>.

Atau, ini menggambarkan melakukan sesuatu dengan <vocabulary>panik</vocabulary>sekutu, seperti melarikan diri dari seseorang atau sesuatu.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Tergila-gila, Penyerapan, Panik')
    RETURNING id INTO v_4273_tergila_gila;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '悪夢', 'mimpi-buruk', 20, 63, '<kanji>buruk</kanji> <kanji>mimpi</kanji> juga dikenal sebagai <vocabulary>mimpi buruk</vocabulary>. Ah! Tidaaaak!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Mimpi buruk, Mimpi Buruk')
    RETURNING id INTO v_4274_mimpi_buruk;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '夢', 'mimpi', 20, 64, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Karena kata ini terdiri dari satu kanji, maka sebaiknya menggunakan bacaan kun''yomi. Saat mempelajari kanji, Anda tidak mempelajari cara membacanya, jadi inilah mnemonik untuk membantu Anda dengan kata ini: Anda mengalami <vocabulary>mimpi</vocabulary> yang gila ini. Mimpi memungkinkan Anda melakukan apa pun yang Anda inginkan. Setiap kali Anda bertanya "hei, bolehkah saya melakukan ini?" Jawabannya selalu "<reading>Anda boleh</reading>" (ゆめ). Pikirkan beberapa hal yang ingin Anda lakukan jika Anda bisa melakukan apa saja. Minta izin dan dapatkan jawaban ini dalam imajinasi Anda.', 'Mimpi')
    RETURNING id INTO v_4275_mimpi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '妻', 'istri', 20, 65, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna. Namun, sebagian besar ini digunakan untuk merujuk pada istri Anda sendiri.', 'Karena kata ini terdiri dari satu kanji, maka sebaiknya menggunakan bacaan kun''yomi. Saat mempelajari kanji, Anda tidak mempelajari cara membacanya, jadi inilah mnemonik untuk membantu Anda dengan kata ini: <kanji>Istri</kanji> Anda melakukan segalanya untuk Anda. Dia memberimu makan, dia memandikanmu, dia membersihkan tubuhmu, dan bahkan menyeka pantatmu saat kamu buang air besar. Sungguh, dia melakukan <read>terlalu banyak</reading>ch (つま), dan kamu harus berhenti menjadi bayi.', 'Istri, Istriku')
    RETURNING id INTO v_4279_istri;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '夫妻', 'suami-istri', 20, 66, 'Anda memiliki <kanji>suami</kanji> dan <kanji>istri</kanji>. Gabungkan keduanya dan mereka menjadi <vocabulary>suami dan istri</vocabulary>, atau <vocabulary>pasangan suami istri</vocabulary>. Ini juga dapat ditambahkan ke nama yang berarti <kosa kata>Tuan. dan Ny.</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Suami Istri, Pasangan Menikah, Tuan dan Nyonya.')
    RETURNING id INTO v_4280_suami_istri;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '妻子', 'istri-dan-anak', 20, 67, 'Anda memiliki <kanji>istri</kanji> dan Anda memiliki <kanji>anak</kanji> Anda. Ini adalah <vocabulary>istri dan anak</vocabulary> Anda.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Istri Dan Anak, Istri Dan Anak')
    RETURNING id INTO v_4281_istri_dan_anak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '一夫多妻', 'poligami', 20, 68, '<kanji>Satu</kanji> <kanji>suami</kanji>, <kanji>banyak</kanji> <kanji>istri</kanji>. Ini adalah <vocabulary>poligami</vocabulary>.

Lebih khusus lagi, 一夫多妻 adalah istilah untuk <vocabulary>poligini</vocabulary>, atau perkawinan antara satu pria dan beberapa wanita. Anda akan sering melihatnya dalam drama periode atau diskusi sejarah dan antropologi, karena hal ini umum terjadi di kalangan elit penguasa masyarakat tertentu pada zaman pramodern.', 'Ini adalah kata jukugo, artinya mungkin akan menggunakan pembacaan on''yomi untuk setiap kanji. Jika Anda dapat mengingatnya, Anda mungkin dapat membaca kata ini! Perhatikan saja bahwa 一 berubah dari いち menjadi いっ, dan 夫 berubah dari ふう menjadi ぷ karena alasan tertentu.

Anda dapat mengingat hal ini karena menurut Anda orang yang melakukan <vocabulary>poligami</vocabulary> harus <reading>makan kotoran</reading> (いっぷ). Anda mengira pria yang punya banyak istri adalah orang yang sangat misoginis, jadi kapan pun Anda bertemu dengan salah satu wanita, Anda akan berkata, "Hei, poligami - makanlah kotoran!"', 'Poligami, Permaduan')
    RETURNING id INTO v_4282_poligami;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '嫌', 'benci', 20, 69, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna. Kosa kata tersebut mempunyai arti tambahan yaitu <vocabulary>eww</vocabulary>, <vocabulary>gross</vocabulary>, dan bahkan <vocabulary>enggan</vocabulary>.', 'Pembacaan kata ini cukup aneh. Ini berbeda dengan kata 嫌い yang akan Anda lihat di level ini juga. Itu adalah いや, jadi ketika kamu memikirkan sesuatu yang tidak kamu sukai, pikirkan saja "<reading>iyah</reading> (いや), aku tidak menyukainya." Selain itu, pikirkan tentang perasaan <vocabulary>eww</vocabulary> yang Anda rasakan saat memikirkan hal yang paling tidak Anda sukai.', 'Benci, eh, Bruto, Enggan')
    RETURNING id INTO v_4283_benci;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '嫌い', 'benci', 20, 70, 'Anda tahu bahwa 嫌 berarti <kanji>tidak suka</kanji> dan kosakata ini memiliki arti yang sama: <vocabulary>dislike</vocabulary> atau <vocabulary>hate</vocabulary>!

Meskipun kata ini merupakan kata sifat dalam bahasa Jepang, biasanya masuk akal untuk menerjemahkannya sebagai kata kerja dalam bahasa Inggris, karena perbedaan struktur kalimat. Namun, terjemahan yang lebih literal akan menjadi <vocabulary>tidak disukai</vocabulary> atau <vocabulary>menjijikkan</vocabulary>.', 'Dari semua hal yang <vocabulary>tidak disukai</vocabulary> di luar sana, hal yang paling saya tidak suka adalah <reading>pembunuh</reading> (きら) orang. Orang tidak boleh membunuh orang.', 'Benci, Membenci, Tidak disukai, Menjijikkan')
    RETURNING id INTO v_4284_benci;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '機嫌', 'suasana-hati', 20, 71, '<kanji>Mesin</kanji> <kanji>tidak menyukai</kanji> segalanya. <vocabulary>mood</vocabulary>, atau <vocabulary>temper</vocabulary> mereka, sangat buruk. Bagaimana dengan suasana hatimu?', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Namun, けん diubah menjadi げん, jadi jangan biarkan hal itu merusak <vocabulary>mood</vocabulary> Anda.', 'Suasana hati, Melunakkan')
    RETURNING id INTO v_4285_suasana_hati;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '嫌疑', 'kecurigaan', 20, 72, 'Saya <kanji>tidak menyukainya</kanji> dia dan saya <kanji>meragukan</kanji> tentangnya. Oleh karena itu, saya juga memiliki banyak <vocabulary>kecurigaan</vocabulary> terhadapnya.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kecurigaan')
    RETURNING id INTO v_4286_kecurigaan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '留守番電話', 'mesin-penjawab', 20, 73, 'Mudah-mudahan Anda tahu bahwa ini ada hubungannya dengan <vocabulary>menjaga rumah</vocabulary> (留守番). Jadi, <vocabulary>telepon</vocabulary> (電話) yang bisa membantu Anda menjaga rumah itu apa? Ini adalah <vocabulary>mesin penjawab</vocabulary> Anda, atau <vocabulary>pesan suara</vocabulary> Anda.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Mesin Penjawab, Pesan suara')
    RETURNING id INTO v_4287_mesin_penjawab;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '公害', 'polusi', 20, 74, '<kanji>Publik</kanji> <kanji>kerusakan</kanji> adalah sesuatu yang berdampak pada semua orang, seluruh masyarakat. Apa yang ada di udara dan masuk ke dalam segala hal di mana pun Anda berada? Bagaimana dengan <vocabulary>polusi</vocabulary>?', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Polusi')
    RETURNING id INTO v_4288_polusi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '水害', 'kerusakan-akibat-banjir', 20, 75, '<kanji>Air</kanji> <kanji>kerusakan</kanji> sangat buruk hingga mereka menyebutnya <vocabulary>kerusakan air</vocabulary>. Tidak ada yang lebih jelas dari ini.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kerusakan akibat Banjir, Kerusakan Air')
    RETURNING id INTO v_4289_kerusakan_akibat_banjir;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '無害', 'tidak-berbahaya', 20, 76, 'Psh, <kanji>kerusakan</kanji> orang itu <kanji>tidak ada</kanji>. Dialah yang saya sebut "kebanyakan <vocabulary>tidak berbahaya</vocabulary>."', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Tidak berbahaya')
    RETURNING id INTO v_4290_tidak_berbahaya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', 'お尻', 'pantat', 20, 77, 'お ada untuk menyenangkan pantat Anda. Kata ini berarti <vocabulary>pantat</vocabulary> (atau kata lain untuk itu, seperti <vocabulary>pantat</vocabulary> atau <vocabulary>bottom</vocabulary>).', 'Bacaannya sama dengan yang Anda pelajari dengan kanji.', 'Pantat, Pantat, Dasar')
    RETURNING id INTO v_4291_pantat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '弓矢', 'busur-dan-anak-panah', 20, 78, '<kanji>busur</kanji> dan <kanji>panah</kanji>. Gabungkan keduanya dan Anda akan mendapatkan <vocabulary>busur dan anak panah</vocabulary>.', 'Bacaannya adalah bacaan kosakata 弓 dan 矢 yang disatukan. Ini mungkin karena kata ini seperti dua kata terpisah yang disatukan, sehingga ada "dan" di tengah terjemahan bahasa Inggris.', 'Busur dan Anak Panah')
    RETURNING id INTO v_4293_busur_dan_anak_panah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '忘れ物', 'barang-yang-terlupakan', 20, 79, 'Ingat bagaimana 忘れる adalah "melupakan"? Nah, <kanji>sesuatu</kanji> yang Anda lupakan adalah <vocabulary>item yang terlupakan</vocabulary>.

忘れ物 adalah cara santai untuk merujuk pada sesuatu yang tertinggal secara tidak sengaja, seperti payung yang Anda lupakan dan tertinggal di kereta.', 'Anda tidak mempelajari bacaan ini dengan kanji 忘, tetapi Anda mempelajarinya dengan kosakata 忘れる. Apa bacaan itu lagi? Anda tidak dapat mengingatnya! Ini menjadi <vocabulary>item yang terlupakan</vocabulary> di sudut berdebu otak Anda. Dan sungguh, lupa cara membaca 忘? Itu <reading>lebih buruk</reading> (わす) daripada meninggalkan payung atau kuncimu! Ayo! Cobalah untuk terus membaca kali ini — Anda hanya akan memperburuk keadaan jika tidak melakukannya.', 'Barang yang Terlupakan, Ada yang Tertinggal')
    RETURNING id INTO v_4294_barang_yang_terlupakan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '機械', 'mesin', 20, 80, '<kanji>mesin</kanji> <kanji>alat</kanji> hanyalah sebuah <vocabulary>mesin</vocabulary>', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Mesin, Mekanisme')
    RETURNING id INTO v_4295_mesin;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '飛行機', 'pesawat-terbang', 20, 81, '<kanji>fly</kanji> dan <kanji>go</kanji> <kanji>machine</kanji> adalah mesin yang Anda gunakan untuk terbang dan pergi ke berbagai tempat. Itu adalah <vocabulary>pesawat</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Pesawat terbang, Pesawat terbang, Pesawat terbang, Pesawat')
    RETURNING id INTO v_4296_pesawat_terbang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '危機', 'krisis', 20, 82, '<kanji>berbahaya</kanji> <kanji>mesin</kanji> sedang berjalan melalui kota Anda, menghancurkan segalanya. Ini adalah <vocabulary>krisis</vocabulary> yang sangat besar!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Krisis')
    RETURNING id INTO v_4297_krisis;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '災い', 'bencana', 20, 83, 'Ini adalah bentuk kata benda dari <kanji>disaster</kanji>, jadi artinya <vocabulary>disaster</vocabulary> atau <vocabulary>misfortune</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Coba pikirkan bagaimana, terakhir kali <vocabulary>bencana</vocabulary> terjadi, <reading>sangat lama sekali (わざわ) sebelum semuanya kembali normal.

Hati-hati dengan い di akhir, karena bisa rumit dan membuat Anda mengira itu kata sifat padahal itu kata benda.', 'Bencana, Kemalangan')
    RETURNING id INTO v_4298_bencana;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '災害', 'bencana-alam', 20, 84, 'Sebuah <kanji>bencana</kanji> yang <kanji>merusak</kanji>. Biasanya ini adalah <vocabulary>bencana alam</vocabulary>, meski bisa juga hanya <vocabulary>bencana</vocabulary> biasa.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Bencana Alam, Bencana, Kecelakaan')
    RETURNING id INTO v_4299_bencana_alam;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '火災', 'bencana-kebakaran', 20, 85, '<kanji>api</kanji> <kanji>bencana</kanji> adalah <vocabulary>bencana kebakaran</vocabulary>, atau <vocabulary>kebakaran</vocabulary>.

火災 adalah versi yang lebih formal dari 火事. Biasanya mengacu pada kebakaran serius dan signifikan yang menyebabkan kerusakan parah atau korban jiwa.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Bencana Kebakaran, Kebakaran besar')
    RETURNING id INTO v_4300_bencana_kebakaran;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '災難', 'kemalangan', 20, 86, '<kanji>bencana</kanji> yang <kanji>sulit</kanji> sangatlah sulit, membuatnya lebih menjadi <vocabulary>kemalangan</vocabulary>. Tentu saja bencana yang tidak sulit tidak akan seburuk itu, jadi bencana yang sulit akan diberi label "kemalangan" atau <vocabulary>calamity</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kemalangan, Bencana, Bencana')
    RETURNING id INTO v_4301_kemalangan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '震災', 'bencana-gempa-bumi', 20, 87, '<kanji>gempa bumi</kanji> <kanji>bencana</kanji> hanyalah sebuah <vocabulary>bencana gempa bumi</vocabulary>. Ini tidak bagus.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Bencana Gempa Bumi')
    RETURNING id INTO v_4302_bencana_gempa_bumi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '煙い', 'berasap', 20, 88, 'Ini adalah kanji tunggal dengan い di akhir, artinya Anda tahu itu mungkin kata sifat. Apa bentuk kata sifat dari <kanji>asap</kanji>? <vocabulary>berasap</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda sepertinya mempelajari bacaan ini dengan kosakata 煙, namun bacaan ini cukup berbeda sehingga kami pikir kami harus membuat mnemonik untuk bacaan ini: 

Semua <kosakata>asap</vocabulary>ini berasal dari tumpahan bahan kimia (けむ) yang mengerikan yang terjadi di dekatnya. Itu asam, jadi membakar semuanya dengan sangat baik, menyebabkan udara menjadi sangat berasap.', 'berasap')
    RETURNING id INTO v_4303_berasap;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '犯す', 'untuk-melakukan-kejahatan', 20, 89, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>kejahatan</kanji> dan versi kosakata kata kerjanya dapat berarti <vocabulary>melakukan kejahatan</vocabulary>, <vocabulary>melakukan kesalahan</vocabulary>, atau <vocabulary>memperkosa</vocabulary>, bergantung pada konteksnya.', 'Anda pergi <vocabulary>untuk melakukan kejahatan</vocabulary>. Bagaimana hasilnya, menurut Anda? Yah, kupikir itu jadi <read>oka</reading>y (おか). Bayangkan diri Anda melakukan kejahatan dan semuanya berjalan baik-baik saja. Tidak bagus, tidak buruk... yah. Oke.', 'Untuk Melakukan Kejahatan, Untuk Membuat Kesalahan')
    RETURNING id INTO v_4304_untuk_melakukan_kejahatan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '犯人', 'pelaku', 20, 90, '<kanji>kejahatan</kanji> <kanji>orang</kanji> adalah <vocabulary>pelakunya</vocabulary>, atau <vocabulary>penjahat</vocabulary>.

Perlu diketahui bahwa 犯人 sebagian besar digunakan untuk berbicara tentang pelaku kejahatan tertentu, bukan penjahat pada umumnya.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Pelaku, Pidana')
    RETURNING id INTO v_4305_pelaku;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '共犯者', 'kaki-tangan', 20, 91, '<kanji>Seseorang</kanji> yang melakukan <kanji>kejahatan</kanji> <kanji>bersama</kanji> dengan Anda adalah <vocabulary>kaki tangan</vocabulary> Anda dalam kejahatan. Yang terbaik adalah "menanganinya" sebelum polisi sampai ke sana.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kaki tangan')
    RETURNING id INTO v_4306_kaki_tangan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '確率', 'kemungkinan', 20, 92, 'Anda <kanji>yakin</kanji> ada <kanji>persen</kanji> kemungkinan hal itu akan terjadi? Tahukah Anda bahwa ini adalah <vocabulary>probability</vocabulary>?', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kemungkinan, Kemungkinan, Peluang')
    RETURNING id INTO v_4307_kemungkinan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '比率', 'perbandingan', 20, 93, 'Anda <kanji>membandingkan</kanji> <kanji>persentase</kanji>, mencari tahu <vocabulary>ratio</vocabulary> atau <vocabulary>proportion</vocabulary> dari satu hal ke hal lainnya. Hal ini juga dapat dinyatakan sebagai <vocabulary>persentase</vocabulary>!

比率 biasanya muncul ketika Anda membandingkan dua angka satu sama lain, seperti jumlah siswa laki-laki dan perempuan di ruang kelas.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Perbandingan, Proporsi, Persentase')
    RETURNING id INTO v_4308_perbandingan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '確かに', 'tentu', 20, 94, 'Ini adalah kata keterangan, namun memiliki arti yang sama (pada dasarnya) dengan kanji. Artinya <vocabulary>tentu saja</vocabulary>, dan bisa juga berarti <vocabulary>pasti</vocabulary>.', 'Bacaan yang ini <vocabulary>tentu saja</vocabulary> aneh. Untuk mengingat bacaan kata ini, pikirkan betapa Anda yakin bahwa jika Anda mencuri (たし) harta karun itu, tidak ada yang akan menemukannya di sini.', 'Tentu, Pasti')
    RETURNING id INTO v_4310_tentu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '正確', 'tepat', 20, 95, 'Itu <kanji>benar</kanji> dan Anda <kanji>yakin</kanji> akan hal itu. Ketika Anda sudah melakukan pengecekan sebanyak ini dan Anda yakin, pengukuran Anda harus sangat <vocabulary>akurat</vocabulary> dan <vocabulary>tepat</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Tepat, Tepat, Akurat')
    RETURNING id INTO v_4311_tepat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '立入禁止', 'jangan-masuk', 20, 96, '<kanji>Berdiri</kanji> dan <kanji>masuk</kanji> keduanya 禁止 (dilarang). Jika Anda melihat tanda ini, pada dasarnya tertulis <vocabulary>jangan masuk</vocabulary> atau <vocabulary>dilarang masuk</vocabulary>.

Meskipun jenis tanda ini biasanya bertuliskan 立入禁止, Anda mungkin juga menemukan variasi seperti 立ち入り禁止 atau 立入り禁止.', 'Pembacaan 立入 agak aneh, tapi mungkin ada baiknya Anda mengetahui bahwa itu juga bisa ditulis 立ち入り.立ち sama dengan yang Anda pelajari dengan 立ち飲み dan 入り adalah bacaan yang Anda pelajari dengan 入り口. Dalam versi kata kami, hiragana tidak terlihat (semacam dimasukkan ke dalam kanji), namun kata tersebut masih diucapkan dengan cara yang sama: たちいり.

Dan tidak ada keanehan apa pun yang terjadi di 禁止, jadi setidaknya Anda memilikinya!', 'Jangan Masuk, Dilarang masuk, Di luar Batas')
    RETURNING id INTO v_4312_jangan_masuk;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '穴場', 'permata-tersembunyi', 20, 97, 'Hei, <kanji>lubang</kanji> ini adalah <kanji>tempat</kanji> yang sangat bagus! Namun tidak ada yang mengetahuinya karena mereka mengira itu hanya sebuah lubang. Hal ini menjadikan tempat ini sebagai <vocabulary>permata tersembunyi</vocabulary> atau <vocabulary>tempat tersembunyi</vocabulary>, dan sebaiknya Anda berharap para turis tidak mendengarnya.

穴場 adalah untuk tempat-tempat yang bagus tetapi relatif belum diketahui. Anda dapat menggunakannya di mana saja — restoran, taman, pantai, tempat memancing yang hanya diketahui penduduk setempat, atau bahkan tempat belajar tersembunyi di kampus yang selalu Anda miliki.', 'Kata ini menggunakan bacaan kun''yomi pada setiap kanjinya. Anda pernah melihat kedua bacaan ini sebelumnya, tapi inilah mnemonik jika Anda membutuhkannya:

<vocabulary>permata tersembunyi</vocabulary> kota Anda adalah tempat di mana Anda dapat <reading>baa</reading> (ば) tanpa rasa malu. Ini adalah kebun binatang hebat yang belum diketahui siapa pun. Tempat ini tidak pernah ramai, jadi Anda bisa memanjakan domba sebanyak yang Anda suka tanpa takut akan penilaian masyarakat! (Apa itu? Kamu tidak datang ke sini untuk baa? Oke, aneh…)', 'Permata Tersembunyi, Tempat Tersembunyi, Tempat Bagus yang Sedikit Diketahui')
    RETURNING id INTO v_4314_permata_tersembunyi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '鼻の穴', 'lubang-hidung', 20, 98, 'Apa <kanji>lubang</kanji> <kanji>hidung</kanji>mu? Bagaimana dengan <vocabulary>nostril</vocabulary> Anda?', 'Bacaannya adalah bacaan untuk 鼻 dan 穴. Cium udara segar melalui <vocabulary>lubang hidung</vocabulary> Anda.', 'Lubang hidung, Lubang Hidung')
    RETURNING id INTO v_4315_lubang_hidung;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '穴子', 'belut-conger', 20, 99, '<kanji>lubang</kanji> <kanji>anak</kanji> bukanlah semacam anak lubang yang menyeramkan (tidak yakin bagaimana lagi menjelaskannya). Itu adalah <kosa kata>belut conger</vocabulary>, sejenis belut lezat yang dimakan di Jepang. Mungkin akan lebih mudah untuk mempelajari bacaannya terlebih dahulu, dan menggunakannya, karena pilihan makna yang kedua adalah <vocabulary>anago</vocabulary>, kata dalam bahasa Jepang untuk itu (juga digunakan dalam bahasa Inggris).', 'Bacaannya merupakan gabungan dua bacaan kosakata kun''yomi. Jadi, 穴 dan 子 digabungkan menjadi あなご. Hati-hati dengan rendaku, yang mengubah pembacaan 子 dari こ menjadi ご.', 'Belut Conger, Anago')
    RETURNING id INTO v_4316_belut_conger;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '経験', 'pengalaman', 20, 100, 'Melalui berbagai <kanji>ujian</kanji> selama <kanji>berjalannya waktu</kanji>, Anda telah memperoleh banyak <vocabulary>pengalaman</vocabulary>. Hanya waktu dan pengujian yang diperlukan.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Pengalaman')
    RETURNING id INTO v_4318_pengalaman;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '罪', 'dosa', 20, 101, 'Jika Anda memiliki <kanji>rasa bersalah</kanji> maka Anda telah melakukan <vocabulary>dosa</vocabulary> atau <vocabulary>kejahatan</vocabulary>. Kemarilah dan mengaku pada Pastor Koichi.', 'Karena kata ini terdiri dari satu kanji, maka sebaiknya menggunakan bacaan kun''yomi. Saat mempelajari kanji, Anda tidak mempelajari cara membacanya, jadi inilah mnemonik untuk membantu Anda dengan kata ini: Saat Anda mengakui <vocabulary>dosa</vocabulary> Anda kepada saya, Anda mulai mengklaim bahwa itu bukan Anda. Anda mengatakan itu adalah versi Anda yang lain! Apa? Bagaimana ini bisa terjadi? Nah, Anda mengatakan "ada <read>dua saya</reading> (つみ) di luar sana!" Yang satu melakukan hal buruk, dan yang lainnya adalah Anda, dan Anda tidak melakukan dosa apa pun!', 'Dosa, Kejahatan')
    RETURNING id INTO v_4320_dosa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '有罪', 'bersalah', 20, 102, '<kanji>memiliki</kanji> <kanji>rasa bersalah</kanji> berarti <vocabulary>bersalah</vocabulary>. Ini juga bisa berarti <vocabulary>rasa bersalah</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Bersalah, Kesalahan')
    RETURNING id INTO v_4321_bersalah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '犯罪', 'kejahatan', 20, 103, 'Anda memiliki <kanji>kejahatan</kanji> dan Anda memiliki <kanji>rasa bersalah</kanji>. Sepertinya Anda melakukan <vocabulary>kejahatan</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kejahatan')
    RETURNING id INTO v_4322_kejahatan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '臭い', 'bau', 20, 104, 'Ini adalah kanji tunggal dengan い di akhir, artinya Anda tahu itu mungkin kata sifat. Apa bentuk kata sifat dari <kanji>stinking</kanji>? Itu juga <vocabulary>stinky</vocabulary> (atau <vocabulary>stinky</vocabulary>).', 'Pembacaan yang Anda pelajari dengan kanji juga dapat digunakan di sini.', 'Bau, Bau, Berbau')
    RETURNING id INTO v_4323_bau;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '被害', 'kerusakan', 20, 105, 'Saat Anda <kanji>dilindungi</kanji>dalam <kanji>kerusakan</kanji>, Anda tidak dapat menghindarinya — Anda benar-benar menderita <vocabulary>kerusakan</vocabulary>.

被害 mengacu pada kerusakan atau <vocabulary>kecelakaan</vocabulary> yang diderita seseorang karena kejadian yang tidak menguntungkan, seperti kejahatan, kecelakaan, atau bencana. Seperti yang disarankan dalam kanji 被, ini menekankan pihak yang menerima kerugian, bukan hanya kerugian itu sendiri. Anda kebanyakan akan melihatnya dalam konteks serius di mana korban atau kerugian sedang dibahas — artikel berita dan laporan resmi, misalnya.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kerusakan, Menyakiti')
    RETURNING id INTO v_4324_kerusakan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '余裕', 'kelonggaran', 20, 106, 'Ketika <kanji>surplus</kanji> Anda <kanji>berlimpah</kanji>, Anda memiliki <vocabulary>kelonggaran</vocabulary> untuk banyak hal. Anda mempunyai banyak <vocabulary>ruang kosong</vocabulary>.

余裕 digunakan untuk menggambarkan keadaan memiliki banyak waktu luang untuk sesuatu. Artinya, Anda bisa menangani berbagai hal dengan nyaman, tanpa merasa stres atau terbebani, entah itu soal uang, waktu, atau sekadar mental.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kelonggaran, Ruang Cadangan')
    RETURNING id INTO v_4325_kelonggaran;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '裕福', 'kaya', 20, 107, 'Anda memiliki <kanji>berlimpah</kanji> <kanji>keberuntungan</kanji>! Jika Anda mempunyai banyak keberuntungan, kemungkinan besar Anda juga <vocabulary>kaya</vocabulary>, karena banyak <vocabulary>kekayaan</vocabulary> sama dengan banyak keberuntungan, bukan?', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kaya, Kekayaan')
    RETURNING id INTO v_4326_kaya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '論文', 'tesis', 20, 108, '<kanji>tulisan</kanji> dari <kanji>teori</kanji> Anda biasanya berupa <vocabulary>tesis</vocabulary>. Ingat bagaimana guru sekolah selalu ingin Anda menyajikan teori secara tertulis? Dan untuk memastikan Anda memiliki tesis di <vocabulary>makalah</vocabulary> itu? Saya bersedia.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Tesis, Kertas, Artikel, Karangan')
    RETURNING id INTO v_4327_tesis;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '理論', 'teori', 20, 109, 'Anda memiliki <kanji>alasan</kanji> di balik <kanji>teori</kanji> Anda, menjadikannya <vocabulary>teori</vocabulary> yang nyata (berbeda dengan teori yang tidak memiliki alasan, saya rasa?).', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Teori')
    RETURNING id INTO v_4328_teori;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '論理', 'logika', 20, 110, 'Dengan menggunakan <kanji>teori</kanji> dan <kanji>alasan</kanji>, Anda adalah orang yang banyak menggunakan <vocabulary>logika</vocabulary>. Bayangkan orang seperti ini, saya yakin Anda mengenal setidaknya satu orang.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Logika')
    RETURNING id INTO v_4329_logika;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '会議', 'pertemuan', 20, 111, 'Tempat orang-orang <kanji>bertemu</kanji> dan melakukan <kanji>musyawarah</kanji>. Kedengarannya membosankan, tapi juga terdengar seperti semacam <vocabulary>pertemuan</vocabulary> atau <vocabulary>konferensi</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Pertemuan, Konferensi, Perakitan')
    RETURNING id INTO v_4330_pertemuan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '議論', 'argumen', 20, 112, 'Ada banyak <kanji>pertimbangan</kanji> dan <kanji>teori</kanji> yang dipertukarkan ketika Anda mencoba menyajikan <vocabulary>argumen</vocabulary>. Tentu saja itu sangat bagus. Banyak pemikiran dan hal-hal lain, Anda tahu? Makanya ada musyawarah dan teori, bukan sekadar teriak-teriak. "Argumen" semacam itu.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Argumen, Diskusi, Kontroversi')
    RETURNING id INTO v_4331_argumen;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '不思議', 'rasa-takjub', 20, 113, 'Ini <kanji>bukan</kanji> yang Anda <kanji>pikirkan</kanji> akan terjadi selama <kanji>musyawarah</kanji> Anda. Anda pikir itu akan sangat normal. Sebaliknya, justru sebaliknya. Penuh dengan <vocabulary>keajaiban</vocabulary> dan <vocabulary>misteri</vocabulary>. <vocabulary>luar biasa</vocabulary>', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Rasa takjub, Misteri, Menakjubkan')
    RETURNING id INTO v_4332_rasa_takjub;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '防止', 'pencegahan', 20, 114, '<kanji>mencegah</kanji> dan <kanji>menghentikan</kanji> seseorang melakukan sesuatu adalah <vocabulary>pencegahan</vocabulary>. Ada baiknya melakukan pencegahan daripada membiarkan hal buruk terjadi.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Pencegahan')
    RETURNING id INTO v_4333_pencegahan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '防ぐ', 'untuk-bertahan-melawan', 20, 115, 'Anda sedang melakukan ion <kanji>pencegahan</kanji>. Ketika Anda mencegah sesuatu, apa yang sebenarnya Anda lakukan? Anda mencoba <vocabulary>untuk mempertahankan</vocabulary> sesuatu agar tidak terjadi. Itu sebabnya kata kerja ini sedikit aneh dan berarti <vocabulary>mempertahankan</vocabulary> atau <vocabulary>melindungi</vocabulary>. Bisa juga <vocabulary>mencegah</vocabulary>, tapi pastikan Anda memikirkannya seperti sedang membela sesuatu dengan pencegahan Anda.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak mempelajarinya dengan kanji ini, jadi inilah mnemonik yang dapat membantu Anda: Anda ingin <vocabulary>bertahan melawan</vocabulary> musuh? Anda mungkin harus mematikan <reading>sekring</reading> (ふせ) yang terpasang pada bom raksasa itu terlebih dahulu.', 'Untuk Bertahan Melawan, Untuk Melindungi Terhadap, Untuk Mencegah')
    RETURNING id INTO v_4334_untuk_bertahan_melawan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '予防', 'pencegahan', 20, 116, '<kanji>mencegah</kanji> <kanji>sebelumnya</kanji> tetaplah <vocabulary>pencegahan</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Pencegahan, Mencegah')
    RETURNING id INTO v_4337_pencegahan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '困難', 'kesulitan', 20, 117, 'Anda <kanji>tertekan</kanji> dan itu <kanji>sulit</kanji>. Ini adalah <vocabulary>kesulitan</vocabulary> dan <vocabulary>kesulitan</vocabulary> yang Anda rasakan.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Kesulitan, Kesulitan, Keras, Sulit')
    RETURNING id INTO v_4338_kesulitan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '非難', 'kritik', 20, 118, '<kanji>yang sulit</kanji> <kanji>ketidakadilan</kanji> untuk diambil dari seseorang adalah <vocabulary>kritik</vocabulary>. Ugh, sungguh menyakitkan untuk dikritik! Sangat sulit, dan selain itu, ini adalah ketidakadilan, karena saya sempurna!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kritik')
    RETURNING id INTO v_4339_kritik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '難しい', 'sulit', 20, 119, 'Ini adalah kanji tunggal dengan い di akhir, artinya Anda tahu itu mungkin kata sifat. Apa bentuk kata sifat dari <kanji>sulit</kanji>? Ini juga <vocabulary>sulit</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: Sangat sulit untuk memasukkan seekor sapi ke dalam <reading>Moo-zooka</reading> (むずか) Anda. Klik. Ledakan!', 'Sulit, Keras')
    RETURNING id INTO v_4340_sulit;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '地震', 'gempa-bumi', 20, 120, '<kanji>bumi</kanji> <kanji>gempa bumi</kanji> hanyalah cara lain untuk mengatakan <vocabulary>gempa bumi</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Perhatikan bahwa 地 dibaca sebagai じ dan bukan ち. Anda pernah melihat hal ini terjadi beberapa kali sebelumnya, jadi cobalah mengingat bahwa inilah yang terjadi di sini.', 'Gempa bumi')
    RETURNING id INTO v_4341_gempa_bumi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '震度', 'intensitas-gempa', 20, 121, '<kanji>gempa bumi</kanji> <kanji>derajat</kanji> adalah cara Anda mengukur gempa bumi.震度 adalah <vocabulary>intensitas gempa</vocabulary>, <vocabulary>magnitudo gempa</vocabulary> AKA, <vocabulary>intensitas seismik</vocabulary>, atau <vocabulary>skala seismik</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Intensitas Gempa, Intensitas Gempa, Skala Seismik')
    RETURNING id INTO v_4342_intensitas_gempa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '余震', 'gempa-susulan', 20, 122, '<kanji>surplus</kanji> (itu tambahan!) <kanji>gempa bumi</kanji> adalah gempa yang terjadi setelah gempa utama (non-surplus). Itu adalah <vocabulary>gempa susulan</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Gempa susulan')
    RETURNING id INTO v_4343_gempa_susulan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '人類学', 'antropologi', 20, 123, '<kanji>studi</kanji> tentang <kanji>manusia</kanji> (人類) dikenal sebagai <vocabulary>antropologi</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Antropologi')
    RETURNING id INTO v_4344_antropologi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '飛ぶ', 'untuk-terbang', 20, 124, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>terbang</kanji>, dan versi kosakata kata kerjanya juga <vocabulary>to fly</vocabulary>. Selain terbang, kata kerjanya juga berarti <vocabulary>melompat</vocabulary>. Bayangkan saja melompat sebagai semacam... versi terbang yang lebih kecil, dan ini akan masuk akal.', 'Saat Anda mencoba <vocabulary>terbang</vocabulary>, hal utama yang menghambat Anda adalah <reading>jari kaki</reading> (と). Ini seperti empat puluh pound dan menahan Anda.', 'Untuk Terbang, Untuk Melompat')
    RETURNING id INTO v_4345_untuk_terbang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '手洗い', 'cuci-tangan', 20, 125, 'Anda ingat bagaimana 洗う berarti "mencuci"? Nah, saat Anda <kanji>mencuci</kanji> <kanji>tangan</kanji> Anda, Anda sedang melakukan <vocabulary>mencuci tangan</vocabulary>.', 'Bacaannya adalah bacaan kosakata 手 dan 洗う yang disatukan.', 'Cuci tangan, Kamar mandi, Kamar kecil, WC')
    RETURNING id INTO v_4353_cuci_tangan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '胸焼け', 'maag', 20, 126, 'Saat <kanji>dada</kanji> Anda <kanji>terbakar</kanji>, Anda mengalami apa yang dikenal dengan <vocabulary>heartburn</vocabulary>.', 'Bacaannya adalah bacaan vocab kun''yomi (petunjuknya ada hiragana yang mencuat di sana). Jadi, pastikan saja Anda mengetahui kata 胸 dan 焼く. Jika ya, Anda dapat menggabungkan pengetahuan itu ke dalam kata ini, dan semoga tidak membuat sakit hati dalam prosesnya.', 'Maag')
    RETURNING id INTO v_4356_maag;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '不可分', 'tak-terpisahkan', 20, 127, 'Jika <kanji>tidak</kanji> <kanji>memungkinkan</kanji> untuk <kanji>membagi</kanji> sesuatu, hal itu menjadikannya <vocabulary>tidak dapat dibagi</vocabulary> atau <vocabulary>tidak dapat dipisahkan</vocabulary>.

不可分 adalah istilah formal yang menggambarkan sesuatu yang pada hakikatnya berkaitan dan tidak dapat dipisahkan tanpa kehilangan makna atau fungsinya.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Tak terpisahkan, Tak terpisahkan')
    RETURNING id INTO v_4357_tak_terpisahkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '可能性', 'kemungkinan', 20, 128, 'Kisaran <kanji>gender</kanji> (可能) yang <kanji>gender</kanji> lebih dari dua pilihan. Artinya ada <vocabulary>kemungkinan</vocabulary> untuk mengidentifikasi banyak identitas gender yang berbeda.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya. Kemampuan membaca 可能 juga akan membantu.', 'Kemungkinan, Kemungkinan')
    RETURNING id INTO v_4363_kemungkinan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '音訓', 'onyomi-dan-kunyomi', 20, 129, 'Anda pernah melihat (semoga) 音読み dan 訓読み. Ini adalah kombinasi keduanya. Inilah <vocabulary>on''yomi dan kun''yomi</vocabulary> alias <vocabulary>bacaan Cina dan Jepang</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'On''yomi dan Kun''yomi, Bacaan Cina dan Jepang')
    RETURNING id INTO v_4364_onyomi_dan_kunyomi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '人達', 'rakyat', 20, 130, 'Kanji 達 terkadang membuat banyak hal menjadi jamak. Jadi, jika Anda memiliki <kanji>jamak</kanji> jumlah <kanji>orang</kanji>, Anda memiliki lebih dari satu orang, Anda memiliki <vocabulary>orang</vocabulary>.

Perhatikan! Saat menggunakan kata ini, Anda ingin mengaitkannya dengan tipe "orang" yang Anda bicarakan. Misalnya, あの人達 (orang-orang di sana). Contoh lain: 男の人達, その人達, 向こうの人達, dll. Anda tidak menggunakannya sendiri, namun Anda menggunakannya dengan sesuatu yang menggambarkan orang seperti apa yang Anda bicarakan.', 'Bacaannya sama-sama bacaan kun''yomi dari kanji. Bacaannya berasal dari kata 人 dan だち dari 友達, padahal sekarang jadi たち karena belum di rendaku. Kamu suka <membaca>menyentuh</reading> (たち) orang, dasar mesum.', 'Rakyat')
    RETURNING id INTO v_4365_rakyat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '静々', 'diam-diam', 20, 131, '<kanji>Tenang</kanji> <kanji>tenang</kanji>! Tolong lakukan <vocabulary>dengan tenang</vocabulary>.', 'Anda tahu bagaimana 静か itu しずか? Nah, ini bacaan yang sama dengan itu. Ucapkan dengan berbisik kepada saya: "<reading>しずしず</reading>." Ssst!', 'Diam-diam, Dengan tenang')
    RETURNING id INTO v_4366_diam_diam;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '文句する', 'untuk-mengeluh', 20, 132, 'Anda tahu bagaimana 文句 merupakan <vocabulary>keluhan</vocabulary>, bukan? Tambahkan する untuk menjadikannya kata kerja dan Anda punya <vocabulary>untuk mengeluh</vocabulary>. Ini adalah cara yang sangat santai untuk mengeluh, biasanya digunakan di manga atau media sosial. Awasi itu!', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Untuk Mengeluh')
    RETURNING id INTO v_4369_untuk_mengeluh;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '焼ける', 'untuk-dipanggang', 20, 133, 'Ingat bagaimana 焼く adalah "memanggang", "membakar sesuatu", atau "memanggang"? 焼ける hanyalah versi intransitif. Itu berarti tidak diperlukan benda langsung! Jadi kata kerja ini berarti <vocabulary>dipanggang</vocabulary>, <vocabulary>dibakar</vocabulary>, atau <vocabulary>dipanggang</vocabulary>. 

焼ける digunakan ketika sesuatu dipanaskan dan diubah oleh panas. Tergantung pada konteksnya, kata ini bisa merujuk pada apa saja mulai dari muffin yang dipanggang, ikan yang dipanggang, atau tembikar yang dibakar. Anda bahkan dapat menggunakannya saat kulit Anda menjadi kecokelatan atau rumah terbakar. Nah, yang terakhir ini agak menyedihkan. Saya harap itu tidak pernah terjadi.

Anda dapat membedakan 焼ける dari 焼く karena saat memasak, Anda selalu <read>care</reading> (ける) untuk memastikan makanan dipanggang atau dipanggang dengan baik. Anda ingin memastikannya telah dipanaskan dengan benar (dipanaskan) agar aman!', 'Bacaannya sama dengan 焼く, jadi gunakan saja ilmu itu dan terapkan disini untuk bisa membaca ini juga.', 'Untuk Dipanggang, Terbakar, Untuk Dipanggang')
    RETURNING id INTO v_4370_untuk_dipanggang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '電子機器', 'perangkat-elektronik', 20, 134, 'Anda memiliki <kanji>elektronik</kanji> (電子) <kanji>wadah</kanji> <kanji>mesin</kanji>. Ini hanyalah sebuah mesin yang berisi listrik dan bagian-bagian listrik. Jadi pada dasarnya, sebuah <vocabulary>perangkat elektronik</vocabulary>, atau lebih umum lagi, <vocabulary>peralatan elektronik</vocabulary> atau <vocabulary>elektronik</vocabulary>.

電子機器 mengacu pada perangkat elektronik kompleks seperti komputer, ponsel pintar, perangkat medis, sistem kontrol, dan banyak lagi. Jadi meskipun dapat digunakan untuk merujuk pada berbagai macam perangkat elektronik, biasanya kata ini tidak digunakan untuk peralatan rumah tangga sederhana seperti pemanggang roti atau ketel.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Perangkat Elektronik, Peralatan Elektronik, Elektronik')
    RETURNING id INTO v_4371_perangkat_elektronik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '刺す', 'untuk-menusuk-sesuatu', 20, 135, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja.

Kanjinya sendiri berarti <kanji>menusuk</kanji> jadi versi kosakata kata kerjanya adalah <vocabulary>menusuk sesuatu</vocabulary>, <vocabulary>menusuk sesuatu</vocabulary>, atau <vocabulary>menyengat sesuatu</vocabulary>.

Ini kata kerja transitif, artinya kaulah yang menusuk... Haruskah aku takut padamu?', 'Karena kosakata ini terdiri dari satu kanji, maka menggunakan bacaan kun''yomi. Untungnya Anda mempelajari bacaan itu dengan kanji! Namun, berikut ini mnemonik untuk berjaga-jaga:

Jika Anda ingin <vocabulary>menusuk sesuatu</vocabulary>, gunakan <reading>gergaji</reading> (さ). Mungkin terasa lebih sulit untuk menusuk sesuatu dengan gergaji pada awalnya, namun ketika Anda melihat kerusakannya, ditambah betapa sulitnya untuk mengeluarkannya kembali, Anda akan menyadari bahwa gergaji adalah alat menusuk yang ideal.', 'Untuk Menusuk Sesuatu, Untuk Menusuk Sesuatu, Untuk Menyengat Sesuatu')
    RETURNING id INTO v_4895_untuk_menusuk_sesuatu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '経路', 'rute', 20, 136, 'Jika Anda <kanji>melewati</kanji> <kanji>jalan</kanji>, Anda akan menentukan jalan mana yang harus digunakan, kapan harus menggunakannya, dan pada dasarnya menentukan <vocabulary>rute</vocabulary> dan <vocabulary>jalur</vocabulary> yang harus diambil untuk mencapai tujuan Anda.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Rute, Kursus')
    RETURNING id INTO v_5464_rute;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '閉じる', 'untuk-menutup-sesuatu', 20, 137, 'Versi kata kerja lain dari kanji 閉! Ini adalah kata khusus yang dapat bersifat transitif atau intransitif, jadi 閉じる berarti <vocabulary>menutup sesuatu</vocabulary> atau <vocabulary>menutup</vocabulary>.

閉じる adalah untuk mengembalikan hal-hal yang telah diperluas terbuka kembali ke keadaan tertutupnya. Ini digunakan untuk buku, payung, browser web, dan bahkan mata dan mulut. Ada beberapa yang tumpang tindih dengan 閉める (misalnya, Anda bisa menggunakan 閉じる atau 閉める untuk gerbang) tetapi 閉める kebanyakan digunakan untuk hal-hal seperti pintu, jendela, dan gorden.', 'Bacaannya berbeda dengan 閉める atau 閉まる. Sebaliknya, 閉じる dibaca とじる.

Mengapa? Karena <vocabulary>untuk menutup sesuatu</vocabulary> yang melebar atau terbuka, Anda selalu menggunakan <reading>jari kaki</reading> (と)! Cukup mudah dengan buku, tapi payung adalah tantangan nyata… Tapi Anda, Anda bisa melakukannya! Anda memiliki kendali jari kaki dan dapat menutup apa pun yang diperluas seperti sebelumnya.', 'Untuk Menutup Sesuatu, Untuk Menutup')
    RETURNING id INTO v_5837_untuk_menutup_sesuatu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '読者', 'pembaca', 20, 138, 'Yang <kanji>membaca</kanji>ing <kanji>seseorang</kanji> adalah seseorang yang sedang membaca. Mereka adalah <vocabulary>pembaca</vocabulary> (sebuah buku, blog, artikel, dll).', 'Bacaan 読 adalah bacaan on''yomi, yang tidak Anda pelajari dengan kanji. Bacaan ini adalah どく, dan Anda dapat mengingatnya dengan memikirkan bagaimana Anda adalah <vocabulary>pembaca</vocabulary>, dan sebagai pembaca Anda memilih tempat untuk membaca. Bagi Anda, tempat terbaik untuk membaca adalah <reading>dock</reading> (どく) yang damai. Duduklah di dermaga dan bersantai. Jadilah pembaca.', 'Pembaca')
    RETURNING id INTO v_7485_pembaca;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '在留', 'tempat-tinggal', 20, 139, 'Tempat Anda <kanji>berada</kanji> adalah tempat Anda <kanji>ditahan</kanji>. Selama Anda berada di tempat ini, ini akan menjadi <vocabulary>tempat tinggal</vocabulary> Anda, meskipun Anda <vocabulary>tinggal di luar negeri</vocabulary>.

在留 adalah istilah resmi yang digunakan untuk orang yang tinggal di negara asing. Anda akan menemukannya dalam frasa seperti 在留カード (kartu penduduk) atau 在留外国人 (penduduk asing).', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Tempat tinggal, Tinggal Di Negara Asing')
    RETURNING id INTO v_7503_tempat_tinggal;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '機', 'mesin', 20, 140, 'Kanji dan kata-katanya sama. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan kanji yang Anda pelajari, artinya Anda tahu bacaannya!', 'Mesin, Peluang, Peluang')
    RETURNING id INTO v_7553_mesin;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '自在', 'kontrol-penuh', 20, 141, 'Saat Anda sendirian dan hanya <kanji>diri</kanji> <kanji>yang ada</kanji> Anda, Anda mungkin memiliki <vocabulary>kontrol penuh</vocabulary>. Anda dapat melakukan apapun yang Anda inginkan <vocabulary>dengan bebas</vocabulary> dan <vocabulary>sesuka hati</vocabulary>.

自在 umumnya digunakan dengan partikel に untuk membentuk kata keterangan 自在に. Ini menggambarkan bagaimana seseorang dapat menangani sesuatu dengan mudah, seolah-olah mereka memiliki kendali penuh atas hal tersebut.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Kontrol Penuh, Dengan bebas, Sesuka hati')
    RETURNING id INTO v_7594_kontrol_penuh;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '議会', 'diet', 20, 142, 'Tempat <kanji>bertemu</kanji> untuk <kanji>musyawarah</kanji> di Jepang disebut <vocabulary>Diet</vocabulary>. Ini adalah <vocabulary>kongres</vocabulary> versi mereka.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Diet, Pola Makan, Kongres, Parlemen, Perakitan')
    RETURNING id INTO v_7648_diet;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '会議室', 'ruang-konferensi', 20, 143, '<kanji>ruang</kanji> tempat Anda <kanji>bertemu</kanji> untuk <kanji>diskusi</kanji> dikenal sebagai <vocabulary>ruang konferensi</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Ruang Konferensi, Ruang Dewan, Ruang Pertemuan')
    RETURNING id INTO v_7705_ruang_konferensi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '議員', 'anggota-diet', 20, 144, 'Seorang <kanji>diskusi</kanji> <kanji>anggota</kanji> berbicara tentang semua hal yang sangat penting yang perlu didiskusikan demi kepentingan negara. Mereka adalah <vocabulary>anggota Diet</vocabulary>. Diet adalah kongres versi Jepang. <vocabulary>Anggota diet</vocabulary> mendiskusikan hal-hal yang sangat penting.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Anggota Diet, Anggota Diet, Legislator, Anggota Majelis')
    RETURNING id INTO v_7706_anggota_diet;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '尾', 'ekor', 20, 145, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Karena kata ini terdiri dari satu kanji, maka sebaiknya menggunakan bacaan kun''yomi. Anda belum mempelajari bacaan ini, jadi inilah mnemonik untuk membantu Anda:

Anda melihat ke bawah dan Anda telah menumbuhkan <vocabulary>ekor</vocabulary>! Kamu sangat terkejut sehingga yang bisa kamu katakan hanyalah "<reading>Oh</reading>. (お) Oh oke..." Inilah hidupmu sekarang. Kehidupan dengan ekor.', 'Ekor')
    RETURNING id INTO v_7707_ekor;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '最後尾', 'akhir-sebuah-garis', 20, 146, 'Anda memiliki 最, yang berarti <kanji>paling</kanji>, dan 後尾, yang berarti sesuatu seperti "belakang" atau "belakang" (<kanji>di belakang</kanji> + <kanji>ekor</kanji>). Saat Anda berada di bagian paling belakang dari suatu hal, Anda mungkin mendapati diri Anda berada di <vocabulary>akhir baris</vocabulary> atau <vocabulary>akhir antrian</vocabulary>.

最後尾 sering terlihat pada tanda di ujung antrean panjang untuk membantu orang menemukan tempat untuk bergabung dalam antrean.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Hati-hati, karena ini 最 + 後尾, dan bukan 最後 + 尾, artinya 後 dibaca こう, bukan ご! Anda mempelajari cara membaca こう dengan kanji, tetapi ini mungkin pertama kalinya Anda melihatnya dalam satu kata, jadi inilah mnemonik yang dapat membantu Anda:

Siapa yang selalu menunggu di <vocabulary>akhir baris</vocabulary>? Itu <membaca>こう</membaca>いち. Laki-laki itu selalu menjadi orang terakhir yang tiba di suatu tempat, dan dia mengantri setelah orang lain, itulah sebabnya dia berada di ujung antrean. Di sekolah menengah, para pengganggu memanggilnya "Akhir Antrean こういち." Orang malang.', 'Akhir Sebuah Garis, Akhir Antrian')
    RETURNING id INTO v_7708_akhir_sebuah_garis;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '天気予報', 'ramalan-cuaca', 20, 147, 'Ini adalah kombinasi dari kata 天気 yang berarti "cuaca" dan 予報 yang berarti "ramalan cuaca". Gabungkan semuanya dan Anda akan mendapatkan <vocabulary>ramalan cuaca</vocabulary>!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Ramalan cuaca')
    RETURNING id INTO v_7762_ramalan_cuaca;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '嫌悪', 'menjijikkan', 20, 148, 'Kamu <kanji>tidak menyukai</kanji> seseorang dengan <kanji>buruk</kanji>hingga berubah menjadi <vocabulary>jijik</vocabulary> dan <vocabulary>benci</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda belum mempelajari bacaan ini untuk 悪, jadi inilah mnemonik untuk membantu Anda:

Saat kamu merasa <vocabulary>jijik</vocabulary> pada seseorang, yang bisa kamu katakan saat melihatnya hanyalah, "<reading>Oh</reading>... (お), itu kamu." Rasakan kemarahan saat melihat wajah mereka, "Oh, kamu lagi. Bleh."', 'Menjijikkan, Membenci, Kebencian')
    RETURNING id INTO v_7763_menjijikkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '議長', 'ketua', 20, 149, 'Orang yang bertanggung jawab atas <kanji>diskusi</kanji>panjang</kanji> adalah <vocabulary>ketua</vocabulary>, atau <vocabulary>speaker</vocabulary>. Mereka juga mengatakan siapa yang boleh berbicara dan untuk berapa lama.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Ketua, Ketua, Pembicara')
    RETURNING id INTO v_8675_ketua;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '高等学校', 'sekolah-menengah-atas', 20, 150, 'Ingat ketika Anda mengetahui bahwa 高等 berarti "kelas atas" dan 学校 berarti "sekolah?" Gabungkan semuanya dan Anda akan memiliki <kosakata>sekolah menengah atas</vocabulary>! Ini adalah sekolah paling kelas atas yang Anda miliki (kecuali jika Anda melanjutkan ke universitas, tapi itu dianggap terpisah). 

Fakta menarik: 高校 adalah singkatan dari kata ini. Rapi, bukan?', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Sekolah Menengah Atas, Sekolah menengah atas')
    RETURNING id INTO v_8711_sekolah_menengah_atas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '喉飴', 'batuk-jatuh', 20, 151, '<kanji>Tenggorokan</kanji> <kanji>permen</kanji> adalah jenis permen yang seharusnya membuat tenggorokan Anda terasa lebih enak. Benar sekali, itu adalah <vocabulary>obat batuk</vocabulary> atau <vocabulary>permen tenggorokan</vocabulary>. Jangan hanya makan permen biasa saat tenggorokan Anda sakit! Gunakan jenis yang tepat.', 'Kata ini menggunakan bacaan kun''yomi untuk kedua kanjinya. Anda sudah mempelajari keduanya, jadi Anda seharusnya sudah bisa membacanya!', 'Batuk Jatuh, Permen Tenggorokan')
    RETURNING id INTO v_8850_batuk_jatuh;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '産まれる', 'untuk-dilahirkan', 20, 152, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja.

Ini adalah kata kerja intransitif. Artinya hal itu terjadi begitu saja, dan kita tidak membicarakan apa yang menyebabkan hal itu terjadi. Jadi kata kerja ini berarti <vocabulary>dilahirkan</vocabulary>.', 'Karena kata ini memiliki okurigana (hiragana yang melekat pada kanji), Anda tahu bahwa kemungkinan besar itu adalah bacaan kun''yomi.

Anda tahu kata lain yang berarti "dilahirkan" (生まれる), dan keduanya memiliki arti yang sama!', 'Untuk Dilahirkan')
    RETURNING id INTO v_8953_untuk_dilahirkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '経由', 'melalui', 20, 153, 'Anda <kanji>melewati</kanji> suatu tempat karena suatu <kanji>alasan</kanji>, jadi Anda akan <vocabulary>melalui</vocabulary> tempat itu.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda mempelajari bacaan ini untuk 経 dengan kanji, dan Anda mempelajari bacaan ini untuk 由 dengan kata 由来. Jika Anda memerlukan pengingat tambahan untuk hal itu, berikut ini mnemonik untuk berjaga-jaga:

Jika Anda bepergian melalui tempat asing, saya sarankan Anda mencari <reading>yu</reading>rt (ゆ) untuk menginap. Ke mana pun Anda pergi, tidak ada salahnya jika Anda menginap di yurt.', 'Melalui')
    RETURNING id INTO v_9067_melalui;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '種', 'benih', 20, 154, '<kanji>jenis</kanji>apa <vocabulary>benih</vocabulary> yang akan Anda tabur? Pikirkan tentang berbagai jenis benih, dan jenis tanaman yang akan ditanaminya.

Ini juga bisa berarti <vocabulary>source</vocabulary>, seperti sumber kekhawatiran atau kegembiraan, atau bahkan cerita yang bagus.', 'Pilih <vocabulary>seed</vocabulary> Anda dengan hati-hati, karena Anda suka <reading>tan eh?</reading> (たね). Anda menyukai penyamakan kulit, jadi Anda tidak ingin menanam apa pun yang akan tumbuh tinggi dan menciptakan keteduhan. Pilihlah jenis benih tersebut dengan hati-hati, dan jangan lupakan kulit kecokelatan Anda, ya?', 'Benih, Sumber')
    RETURNING id INTO v_9071_benih;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '無くなる', 'akan-pergi', 20, 155, 'Di sini kita memiliki <kanji>tidak ada</kanji>, diikuti dengan kata kerja なる. Kata kerja yang artinya "menjadi bukan apa-apa"? Itu akan menjadi <vocabulary>hilang</vocabulary>, <vocabulary>habis</vocabulary>, <vocabulary>hilang</vocabulary>, atau <vocabulary>menghilang</vocabulary>.

Hal ini dapat diterjemahkan dalam berbagai cara tergantung pada situasinya, namun ingatlah bahwa ini selalu mengacu pada sesuatu yang berubah dari berada di sana, menjadi tidak berada di sana.', 'Ini menggunakan bacaan kun''yomi, yang kamu pelajari dengan 無し, jadi sebaiknya kamu mulai saja.', 'Akan Pergi, Kehabisan, Tersesat, Menghilang')
    RETURNING id INTO v_9085_akan_pergi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '繋ぐ', 'untuk-menghubungkan-sesuatu', 20, 156, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>menghubungkan</kanji>, dan kata kerja ini berarti <vocabulary>menghubungkan sesuatu</vocabulary> atau <vocabulary>mengikat sesuatu ke</vocabulary> sesuatu yang lain. Seperti menyambungkan orang, berpegangan tangan, menyambungkan kabel ke charger, dan sebagainya.

Secara kiasan, ketika Anda ingin menghubungkan sesuatu dari waktu ke waktu, seperti percakapan, maka Anda juga ingin <vocabulary>mempertahankan</vocabulary> sesuatu dari waktu ke waktu.', 'Karena kata ini memiliki okurigana (hiragana yang melekat pada kanji), Anda tahu bahwa kemungkinan besar itu adalah bacaan kun''yomi, yang sudah Anda ketahui dari kanji.', 'Untuk Menghubungkan Sesuatu, Untuk Mengikat Sesuatu, Untuk Mempertahankan Sesuatu')
    RETURNING id INTO v_9253_untuk_menghubungkan_sesuatu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '実る', 'untuk-menghasilkan-buah', 20, 157, 'Anda mungkin ingat 実 berarti "kebenaran", namun bisa juga berarti <kanji>buah</kanji>! Itu sebabnya versi kosakata kata kerja ini berarti <vocabulary>berbuah</vocabulary> atau <vocabulary>berbuah</vocabulary>. 

実る secara harfiah berarti <kosa kata>mematangkan</vocabulary>, namun sebagian besar digunakan secara kiasan untuk menggambarkan kapan kerja keras membuahkan hasil, seperti dalam frasa 努力が実る (usaha membuahkan hasil).', 'Ini merupakan kata kerja, jadi menggunakan bacaan kun''yomi. Anda tidak mempelajari cara membaca dengan kanji, jadi inilah mnemonik untuk membantu Anda:

Eksperimen Anda akhirnya <vocabulary>menghasilkan buah</vocabulary>. Anda telah sepenuhnya mengubah diri Anda menjadi <read>mino</reading>taur (みの)! Ambisi jangka panjang Anda untuk mengubah diri Anda menjadi minotaur akhirnya mulai <vocabulary>mencapai hasil</vocabulary>. Semua memuji tuan minotaur baru kami!', 'Untuk Menghasilkan Buah, Akan Membuahkan Hasil, Untuk matang')
    RETURNING id INTO v_9348_untuk_menghasilkan_buah;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3547_perjanjian, 'Perjanjian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3547_perjanjian, 'Merasakan Hal yang Sama', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4035_kesadaran_diri, 'Kesadaran Diri', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4035_kesadaran_diri, 'Realisasi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4035_kesadaran_diri, 'Kesadaran', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4035_kesadaran_diri, 'Kesadaran', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4114_mencuci_piring, 'Mencuci piring', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4114_mencuci_piring, 'Mencuci Piring', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4114_mencuci_piring, 'Mencuci Piring', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4181_menjadi_tertekan, 'Menjadi Tertekan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4181_menjadi_tertekan, 'Menjadi Bermasalah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4181_menjadi_tertekan, 'Menjadi Bingung', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4181_menjadi_tertekan, 'Menjadi Kesal', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4204_untuk_diperbarui, 'Untuk Diperbarui', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4204_untuk_diperbarui, 'Untuk Diubah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4204_untuk_diperbarui, 'Untuk Direvisi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4204_untuk_diperbarui, 'Menjadi Formal', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4221_untuk_menjadi_campuran, 'Untuk Menjadi Campuran', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4221_untuk_menjadi_campuran, 'Untuk Dicampur', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4221_untuk_menjadi_campuran, 'Untuk Dicampur Dengan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4254_menjadi_surplus, 'Menjadi Surplus', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4254_menjadi_surplus, 'Untuk Tetap Tersisa', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4254_menjadi_surplus, 'Menjadi Berlebihan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4255_tidak_dibutuhkan, 'Tidak dibutuhkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4255_tidak_dibutuhkan, 'Lebih dari Dibutuhkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4255_tidak_dibutuhkan, 'Terlalu Banyak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4257_pribadi, 'Pribadi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4257_pribadi, 'Individu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4258_satu_hal_kecil, 'Satu Hal Kecil', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4258_satu_hal_kecil, 'Satu Hal', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4258_satu_hal_kecil, 'Satu Benda Kecil', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4258_satu_hal_kecil, 'Satu Objek', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4259_kamar_pribadi, 'Kamar Pribadi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4259_kamar_pribadi, 'Kamarnya Sendiri', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4260_tiga_hal_kecil, 'Tiga Hal Kecil', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4260_tiga_hal_kecil, 'Tiga Hal', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4260_tiga_hal_kecil, 'Tiga Objek', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4260_tiga_hal_kecil, 'Tiga Benda Kecil', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4261_untuk_mengetuk, 'Untuk Mengetuk', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4261_untuk_mengetuk, 'Untuk Menurunkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4261_untuk_mengetuk, 'Untuk Mengalahkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4262_masalah, 'Masalah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4262_masalah, 'Kesulitan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4263_kebangkrutan, 'Kebangkrutan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4263_kebangkrutan, 'Bangkrut', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4264_peminjam, 'Peminjam', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4264_peminjam, 'Penyewa', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4265_tebal, 'Tebal', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4266_tekanan, 'Tekanan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4266_tekanan, 'Menekankan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4267_tekanan_darah, 'Tekanan darah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4268_shiatsu, 'Shiatsu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4268_shiatsu, 'Tekanan Jari', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4269_adanya, 'Adanya', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4271_realitas, 'Realitas', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4271_realitas, 'Keberadaan Nyata', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4272_luar_negeri, 'Luar negeri', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4272_luar_negeri, 'Luar negeri', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4273_tergila_gila, 'Tergila-gila', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4273_tergila_gila, 'Penyerapan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4273_tergila_gila, 'Panik', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4274_mimpi_buruk, 'Mimpi buruk', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4274_mimpi_buruk, 'Mimpi Buruk', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4275_mimpi, 'Mimpi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4279_istri, 'Istri', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4279_istri, 'Istriku', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4280_suami_istri, 'Suami Istri', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4280_suami_istri, 'Pasangan Menikah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4280_suami_istri, 'Tuan dan Nyonya.', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4281_istri_dan_anak, 'Istri Dan Anak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4281_istri_dan_anak, 'Istri Dan Anak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4282_poligami, 'Poligami', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4282_poligami, 'Permaduan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4283_benci, 'Benci', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4283_benci, 'eh', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4283_benci, 'Bruto', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4283_benci, 'Enggan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4284_benci, 'Benci', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4284_benci, 'Membenci', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4284_benci, 'Tidak disukai', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4284_benci, 'Menjijikkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4285_suasana_hati, 'Suasana hati', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4285_suasana_hati, 'Melunakkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4286_kecurigaan, 'Kecurigaan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4287_mesin_penjawab, 'Mesin Penjawab', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4287_mesin_penjawab, 'Pesan suara', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4288_polusi, 'Polusi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4289_kerusakan_akibat_banjir, 'Kerusakan akibat Banjir', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4289_kerusakan_akibat_banjir, 'Kerusakan Air', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4290_tidak_berbahaya, 'Tidak berbahaya', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4291_pantat, 'Pantat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4291_pantat, 'Pantat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4291_pantat, 'Dasar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4293_busur_dan_anak_panah, 'Busur dan Anak Panah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4294_barang_yang_terlupakan, 'Barang yang Terlupakan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4294_barang_yang_terlupakan, 'Ada yang Tertinggal', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4295_mesin, 'Mesin', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4295_mesin, 'Mekanisme', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4296_pesawat_terbang, 'Pesawat terbang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4296_pesawat_terbang, 'Pesawat terbang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4296_pesawat_terbang, 'Pesawat terbang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4296_pesawat_terbang, 'Pesawat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4297_krisis, 'Krisis', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4298_bencana, 'Bencana', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4298_bencana, 'Kemalangan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4299_bencana_alam, 'Bencana Alam', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4299_bencana_alam, 'Bencana', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4299_bencana_alam, 'Kecelakaan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4300_bencana_kebakaran, 'Bencana Kebakaran', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4300_bencana_kebakaran, 'Kebakaran besar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4301_kemalangan, 'Kemalangan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4301_kemalangan, 'Bencana', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4301_kemalangan, 'Bencana', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4302_bencana_gempa_bumi, 'Bencana Gempa Bumi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4303_berasap, 'berasap', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4304_untuk_melakukan_kejahatan, 'Untuk Melakukan Kejahatan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4304_untuk_melakukan_kejahatan, 'Untuk Membuat Kesalahan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4305_pelaku, 'Pelaku', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4305_pelaku, 'Pidana', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4306_kaki_tangan, 'Kaki tangan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4307_kemungkinan, 'Kemungkinan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4307_kemungkinan, 'Kemungkinan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4307_kemungkinan, 'Peluang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4308_perbandingan, 'Perbandingan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4308_perbandingan, 'Proporsi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4308_perbandingan, 'Persentase', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4310_tentu, 'Tentu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4310_tentu, 'Pasti', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4311_tepat, 'Tepat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4311_tepat, 'Tepat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4311_tepat, 'Akurat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4312_jangan_masuk, 'Jangan Masuk', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4312_jangan_masuk, 'Dilarang masuk', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4312_jangan_masuk, 'Di luar Batas', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4314_permata_tersembunyi, 'Permata Tersembunyi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4314_permata_tersembunyi, 'Tempat Tersembunyi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4314_permata_tersembunyi, 'Tempat Bagus yang Sedikit Diketahui', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4315_lubang_hidung, 'Lubang hidung', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4315_lubang_hidung, 'Lubang Hidung', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4316_belut_conger, 'Belut Conger', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4316_belut_conger, 'Anago', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4318_pengalaman, 'Pengalaman', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4320_dosa, 'Dosa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4320_dosa, 'Kejahatan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4321_bersalah, 'Bersalah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4321_bersalah, 'Kesalahan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4322_kejahatan, 'Kejahatan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4323_bau, 'Bau', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4323_bau, 'Bau', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4323_bau, 'Berbau', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4324_kerusakan, 'Kerusakan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4324_kerusakan, 'Menyakiti', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4325_kelonggaran, 'Kelonggaran', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4325_kelonggaran, 'Ruang Cadangan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4326_kaya, 'Kaya', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4326_kaya, 'Kekayaan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4327_tesis, 'Tesis', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4327_tesis, 'Kertas', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4327_tesis, 'Artikel', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4327_tesis, 'Karangan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4328_teori, 'Teori', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4329_logika, 'Logika', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4330_pertemuan, 'Pertemuan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4330_pertemuan, 'Konferensi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4330_pertemuan, 'Perakitan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4331_argumen, 'Argumen', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4331_argumen, 'Diskusi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4331_argumen, 'Kontroversi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4332_rasa_takjub, 'Rasa takjub', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4332_rasa_takjub, 'Misteri', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4332_rasa_takjub, 'Menakjubkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4333_pencegahan, 'Pencegahan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4334_untuk_bertahan_melawan, 'Untuk Bertahan Melawan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4334_untuk_bertahan_melawan, 'Untuk Melindungi Terhadap', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4334_untuk_bertahan_melawan, 'Untuk Mencegah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4337_pencegahan, 'Pencegahan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4337_pencegahan, 'Mencegah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4338_kesulitan, 'Kesulitan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4338_kesulitan, 'Kesulitan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4338_kesulitan, 'Keras', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4338_kesulitan, 'Sulit', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4339_kritik, 'Kritik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4340_sulit, 'Sulit', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4340_sulit, 'Keras', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4341_gempa_bumi, 'Gempa bumi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4342_intensitas_gempa, 'Intensitas Gempa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4342_intensitas_gempa, 'Intensitas Gempa', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4342_intensitas_gempa, 'Skala Seismik', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4343_gempa_susulan, 'Gempa susulan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4344_antropologi, 'Antropologi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4345_untuk_terbang, 'Untuk Terbang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4345_untuk_terbang, 'Untuk Melompat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4353_cuci_tangan, 'Cuci tangan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4353_cuci_tangan, 'Kamar mandi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4353_cuci_tangan, 'Kamar kecil', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4353_cuci_tangan, 'WC', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4356_maag, 'Maag', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4357_tak_terpisahkan, 'Tak terpisahkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4357_tak_terpisahkan, 'Tak terpisahkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4363_kemungkinan, 'Kemungkinan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4363_kemungkinan, 'Kemungkinan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4364_onyomi_dan_kunyomi, 'On''yomi dan Kun''yomi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4364_onyomi_dan_kunyomi, 'Bacaan Cina dan Jepang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4365_rakyat, 'Rakyat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4366_diam_diam, 'Diam-diam', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4366_diam_diam, 'Dengan tenang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4369_untuk_mengeluh, 'Untuk Mengeluh', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4370_untuk_dipanggang, 'Untuk Dipanggang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4370_untuk_dipanggang, 'Terbakar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4370_untuk_dipanggang, 'Untuk Dipanggang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4371_perangkat_elektronik, 'Perangkat Elektronik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4371_perangkat_elektronik, 'Peralatan Elektronik', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4371_perangkat_elektronik, 'Elektronik', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4895_untuk_menusuk_sesuatu, 'Untuk Menusuk Sesuatu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4895_untuk_menusuk_sesuatu, 'Untuk Menusuk Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_4895_untuk_menusuk_sesuatu, 'Untuk Menyengat Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5464_rute, 'Rute', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5464_rute, 'Kursus', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5837_untuk_menutup_sesuatu, 'Untuk Menutup Sesuatu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5837_untuk_menutup_sesuatu, 'Untuk Menutup', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7485_pembaca, 'Pembaca', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7503_tempat_tinggal, 'Tempat tinggal', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7503_tempat_tinggal, 'Tinggal Di Negara Asing', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7553_mesin, 'Mesin', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7553_mesin, 'Peluang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7553_mesin, 'Peluang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7594_kontrol_penuh, 'Kontrol Penuh', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7594_kontrol_penuh, 'Dengan bebas', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7594_kontrol_penuh, 'Sesuka hati', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7648_diet, 'Diet', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7648_diet, 'Pola Makan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7648_diet, 'Kongres', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7648_diet, 'Parlemen', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7648_diet, 'Perakitan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7705_ruang_konferensi, 'Ruang Konferensi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7705_ruang_konferensi, 'Ruang Dewan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7705_ruang_konferensi, 'Ruang Pertemuan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7706_anggota_diet, 'Anggota Diet', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7706_anggota_diet, 'Anggota Diet', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7706_anggota_diet, 'Legislator', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7706_anggota_diet, 'Anggota Majelis', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7707_ekor, 'Ekor', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7708_akhir_sebuah_garis, 'Akhir Sebuah Garis', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7708_akhir_sebuah_garis, 'Akhir Antrian', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7762_ramalan_cuaca, 'Ramalan cuaca', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7763_menjijikkan, 'Menjijikkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7763_menjijikkan, 'Membenci', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7763_menjijikkan, 'Kebencian', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8675_ketua, 'Ketua', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8675_ketua, 'Ketua', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8675_ketua, 'Pembicara', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8711_sekolah_menengah_atas, 'Sekolah Menengah Atas', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8711_sekolah_menengah_atas, 'Sekolah menengah atas', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8850_batuk_jatuh, 'Batuk Jatuh', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8850_batuk_jatuh, 'Permen Tenggorokan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8953_untuk_dilahirkan, 'Untuk Dilahirkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9067_melalui, 'Melalui', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9071_benih, 'Benih', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9071_benih, 'Sumber', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9085_akan_pergi, 'Akan Pergi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9085_akan_pergi, 'Kehabisan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9085_akan_pergi, 'Tersesat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9085_akan_pergi, 'Menghilang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9253_untuk_menghubungkan_sesuatu, 'Untuk Menghubungkan Sesuatu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9253_untuk_menghubungkan_sesuatu, 'Untuk Mengikat Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9253_untuk_menghubungkan_sesuatu, 'Untuk Mempertahankan Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9348_untuk_menghasilkan_buah, 'Untuk Menghasilkan Buah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9348_untuk_menghasilkan_buah, 'Akan Membuahkan Hasil', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9348_untuk_menghasilkan_buah, 'Untuk matang', false, true);

  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_3547_perjanjian, 'どうかん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4035_kesadaran_diri, 'じかく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4114_mencuci_piring, 'さらあらい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4181_menjadi_tertekan, 'こまる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4204_untuk_diperbarui, 'あらたまる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4221_untuk_menjadi_campuran, 'まざる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4254_menjadi_surplus, 'あまる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4255_tidak_dibutuhkan, 'よけい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4257_pribadi, 'こじん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4258_satu_hal_kecil, 'いっこ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4259_kamar_pribadi, 'こしつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4260_tiga_hal_kecil, 'さんこ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4261_untuk_mengetuk, 'たおす', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4262_masalah, 'めんどう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4263_kebangkrutan, 'とうさん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4264_peminjam, 'かりて', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4265_tebal, 'あつい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4266_tekanan, 'あつりょく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4267_tekanan_darah, 'けつあつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4268_shiatsu, 'しあつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4269_adanya, 'そんざい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4271_realitas, 'じつざい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4272_luar_negeri, 'ざいがい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4273_tergila_gila, 'むちゅう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4274_mimpi_buruk, 'あくむ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4275_mimpi, 'ゆめ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4279_istri, 'つま', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4280_suami_istri, 'ふさい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4281_istri_dan_anak, 'さいし', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4282_poligami, 'いっぷたさい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4283_benci, 'いや', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4284_benci, 'きらい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4285_suasana_hati, 'きげん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4286_kecurigaan, 'けんぎ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4287_mesin_penjawab, 'るすばんでんわ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4288_polusi, 'こうがい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4289_kerusakan_akibat_banjir, 'すいがい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4290_tidak_berbahaya, 'むがい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4291_pantat, 'おしり', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4293_busur_dan_anak_panah, 'ゆみや', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4294_barang_yang_terlupakan, 'わすれもの', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4295_mesin, 'きかい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4296_pesawat_terbang, 'ひこうき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4297_krisis, 'きき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4298_bencana, 'わざわい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4299_bencana_alam, 'さいがい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4300_bencana_kebakaran, 'かさい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4301_kemalangan, 'さいなん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4302_bencana_gempa_bumi, 'しんさい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4303_berasap, 'けむい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4304_untuk_melakukan_kejahatan, 'おかす', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4305_pelaku, 'はんにん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4306_kaki_tangan, 'きょうはんしゃ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4307_kemungkinan, 'かくりつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4308_perbandingan, 'ひりつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4310_tentu, 'たしかに', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4311_tepat, 'せいかく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4312_jangan_masuk, 'たちいりきんし', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4314_permata_tersembunyi, 'あなば', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4315_lubang_hidung, 'はなのあな', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4316_belut_conger, 'あなご', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4318_pengalaman, 'けいけん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4320_dosa, 'つみ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4321_bersalah, 'ゆうざい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4322_kejahatan, 'はんざい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4323_bau, 'くさい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4324_kerusakan, 'ひがい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4325_kelonggaran, 'よゆう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4326_kaya, 'ゆうふく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4327_tesis, 'ろんぶん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4328_teori, 'りろん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4329_logika, 'ろんり', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4330_pertemuan, 'かいぎ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4331_argumen, 'ぎろん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4332_rasa_takjub, 'ふしぎ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4333_pencegahan, 'ぼうし', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4334_untuk_bertahan_melawan, 'ふせぐ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4337_pencegahan, 'よぼう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4338_kesulitan, 'こんなん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4339_kritik, 'ひなん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4340_sulit, 'むずかしい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4341_gempa_bumi, 'じしん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4342_intensitas_gempa, 'しんど', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4343_gempa_susulan, 'よしん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4344_antropologi, 'じんるいがく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4345_untuk_terbang, 'とぶ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4353_cuci_tangan, 'てあらい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4356_maag, 'むねやけ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4357_tak_terpisahkan, 'ふかぶん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4363_kemungkinan, 'かのうせい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4364_onyomi_dan_kunyomi, 'おんくん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4365_rakyat, 'ひとたち', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4366_diam_diam, 'しずしず', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4369_untuk_mengeluh, 'もんくする', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4370_untuk_dipanggang, 'やける', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4371_perangkat_elektronik, 'でんしきき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_4895_untuk_menusuk_sesuatu, 'さす', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5464_rute, 'けいろ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5837_untuk_menutup_sesuatu, 'とじる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7485_pembaca, 'どくしゃ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7503_tempat_tinggal, 'ざいりゅう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7553_mesin, 'き', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7594_kontrol_penuh, 'じざい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7648_diet, 'ぎかい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7705_ruang_konferensi, 'かいぎしつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7706_anggota_diet, 'ぎいん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7707_ekor, 'お', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7708_akhir_sebuah_garis, 'さいこうび', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7762_ramalan_cuaca, 'てんきよほう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7763_menjijikkan, 'けんお', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8675_ketua, 'ぎちょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8711_sekolah_menengah_atas, 'こうとうがっこう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8850_batuk_jatuh, 'のどあめ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8953_untuk_dilahirkan, 'うまれる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9067_melalui, 'けいゆ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9071_benih, 'たね', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9085_akan_pergi, 'なくなる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9253_untuk_menghubungkan_sesuatu, 'つなぐ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9348_untuk_menghasilkan_buah, 'みのる', NULL, true, true);

  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3547_perjanjian, '私もその意見に同感ですね。', 'Saya juga setuju dengan pendapat itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3547_perjanjian, '今までにこんなに同感したことがないぐらい、思いっきり同感しています。', 'Saya setuju dengan hal ini dengan sepenuh hati dibandingkan dengan apa pun yang pernah saya setujui sepanjang hidup saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3547_perjanjian, '「私、フグのこと嫌い。」「同感だわ。」', '"Aku benci Fugu." “Saya merasakan hal yang sama.”');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4035_kesadaran_diri, 'もう少し社会人としての自覚を持った方がいいよ。', 'Anda harus sadar bahwa Anda juga anggota masyarakat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4035_kesadaran_diri, '夫から、母親としての自覚が無いって言われて、めっちゃムカついたんです。', 'Suamiku bilang aku kurang punya kesadaran akan tanggung jawab sebagai ibu dan itu membuatku sangat kesal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4035_kesadaran_diri, 'モラハラは、自分では全く自覚がない人がほとんどだと聞いたんですが、山本さんがご自身のモラハラを自覚された時は、きっかけって何かありましたか？', 'Saya pernah mendengar bahwa kebanyakan orang yang terlibat dalam pelecehan moral sama sekali tidak menyadarinya, tapi apa yang membuat Anda sadar bahwa Anda melakukan pelecehan moral, Yamamoto-san?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4114_mencuci_piring, 'レストランで皿洗いのバイトを始めました。', 'Saya mulai bekerja paruh waktu sebagai pencuci piring di sebuah restoran.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4114_mencuci_piring, '食事代は皿洗いでOKなラーメン屋さんがあるってテレビで見たんですけど、本当ですか？', 'Saya melihat di TV ada toko ramen di mana Anda bisa membayar makanan Anda dengan mencuci piring, apakah benar?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4114_mencuci_piring, 'リビングのソファで横になっている夫を横目に、たまりにたまったお皿の皿洗いをしているとき、とても悲しくなります。', 'Saat suamiku sedang berbaring di sofa ruang tamu, aku merasa sedih sekali saat mencuci piring yang menumpuk, sambil mencuri pandang ke arahnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4181_menjadi_tertekan, 'そんなこと僕に言われても困るよ。', 'Aku merasa terganggu saat kamu mengatakan hal seperti itu padaku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4181_menjadi_tertekan, 'お金を家に忘れてきてしまって、今めっちゃ困っています。 ', 'Saya lupa uang saya di rumah dan sekarang saya dalam masalah besar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4181_menjadi_tertekan, '車イスユーザーの方にお話を聞いて、困りごとをまとめました。', 'Saya mendengarkan pengguna kursi roda dan mengumpulkan kekhawatiran mereka.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4204_untuk_diperbarui, 'まさか日本の年号がワニカニに改まる日が来るなんて！', 'Saya tidak pernah menyangka akan melihat hari dimana nama era Jepang diubah menjadi WaniKani.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4204_untuk_diperbarui, 'そう改まるなよ。うちの社長は、とても気さくなんだから。', 'Jangan terlalu formal! Presiden perusahaan kami sangat ramah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4204_untuk_diperbarui, 'その山の上で空を見上げると、心が改まるような気持ちになりました。', 'Ketika saya melihat ke langit dari puncak gunung itu, saya merasakan hati saya menjadi khusyuk.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4204_untuk_diperbarui, 'アイツの悪いクセがすぐに改まるとは思えないよ。', 'Saya tidak melihat kebiasaan buruknya berubah dalam waktu dekat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4204_untuk_diperbarui, '皆さんのお話を聞いて、考えが改まりました。', 'Setelah mendengar cerita semua orang, pikiranku berubah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4221_untuk_menjadi_campuran, '水と油って、混ざるんだっけ？混ざらないんだっけ？', 'Air dan minyak, apakah bisa tercampur? Atau bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4221_untuk_menjadi_campuran, '黄色に青色と赤色が混ざって、にじんで茶色っぽくなってしまいました。', 'Kuning bercampur biru dan merah menghasilkan warna kecoklatan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4221_untuk_menjadi_campuran, 'みんなの会話に混ざることができなくてとても悲しかったし、さみしかったよ。', 'Saya merasa sangat sedih dan kesepian karena saya tidak bisa berkontribusi sama sekali dalam percakapan tersebut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4254_menjadi_surplus, '穴づりでつった魚が余っているので、良かったら少しいかがですか？', 'Kami menangkap ikan lebih dari cukup untuk memancing di es, jadi silakan ambil beberapa jika Anda mau.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4254_menjadi_surplus, 'くらしぶりからして、あの夫妻、相当お金が余ってそうだと思いませんか。', 'Dari cara hidup mereka, sepertinya mereka mempunyai uang yang cukup banyak, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4254_menjadi_surplus, '私達の果樹園にはあり余るほどの林檎があります。', 'Ada banyak sekali buah apel di kebun kami.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4255_tidak_dibutuhkan, 'このイス、一つ余計だったね。', 'Ini terlalu banyak kursi, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4255_tidak_dibutuhkan, '分かってるよね？余計なことはゼッタイに言わないでね！', 'Anda tahu itu, kan? Jangan mengatakan sesuatu yang tidak perlu, oke?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4255_tidak_dibutuhkan, '息子から「余計なお世話だ」って言われて、余計にイライラしちゃったんですよね。', 'Putraku bilang aku terlalu banyak ikut campur, dan itu membuatku semakin jengkel.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4257_pribadi, 'これは私個人の意見です。', 'Ini adalah pendapat pribadi saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4257_pribadi, '個人的には反対です。', 'Secara pribadi, saya menentangnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4257_pribadi, '友達が個人でやってる、こじんまりとしたオシャレカフェに行ってきました。', 'Saya pergi ke sebuah kafe kecil bergaya yang dikelola secara mandiri oleh seorang teman.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4258_satu_hal_kecil, 'しょうがないなぁ。一個だけだよ？', 'Baiklah baiklah. Hanya satu, oke?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4258_satu_hal_kecil, 'え、このイチゴ、一個千五百円だって！', 'Apa? Stroberi ini masing-masing berharga 1.500 yen!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4258_satu_hal_kecil, 'シュークリーム、ちゃんと一人一個ずつあるから、取り合わなくていいよ。', 'Ada satu krim puff untuk setiap orang, jadi tidak perlu berebut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4259_kamar_pribadi, 'カフェで個室を予約して、友達とゆっくりおしゃべりを楽しみました。', 'Saya memesan kamar pribadi di sebuah kafe dan menikmati obrolan santai dengan teman-teman saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4259_kamar_pribadi, 'トイレの個室って、小さなカメラが付けられてることがあるので、気をつけてね！', 'Toilet di masing-masing bilik terkadang dipasang kamera kecil, jadi berhati-hatilah!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4259_kamar_pribadi, 'ジムに行ったら、ラッキーなことに個室のトレーニングエリアが空いていました。', 'Saat saya pergi ke gym, untungnya tersedia tempat latihan privat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4260_tiga_hal_kecil, 'コーヒーにはミルクとシロップを三個ずつ入れます。', 'Saya memasukkan tiga cangkir susu dan tiga cangkir sirup ke dalam kopi saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4260_tiga_hal_kecil, '三個入りの石けんを一箱買いました。', 'Saya membeli sekotak sabun yang berisi tiga batang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4260_tiga_hal_kecil, 'チーズバーガー三個の他に、ナゲットを三十三個も食べたので、今とても気持ちが悪い。', 'Saya merasa sangat mual sekarang setelah makan tiga burger keju dan tiga puluh tiga nugget.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4261_untuk_mengetuk, 'やばい、このクッパ強すぎる。誰か倒す方法知ってたら、教えて！', 'Wah, Bowser ini terlalu kuat. Jika kamu tahu cara mengalahkannya, tolong beri tahu aku!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4261_untuk_mengetuk, 'その本の山は、一つ倒すとドミノ倒しのように全部くずれ落ちてきてしまいました。', 'Tumpukan buku runtuh seperti kartu domino ketika saya menjatuhkan salah satunya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4261_untuk_mengetuk, '山で木を切り倒す手伝いをしていた時、チェーンソーが首に当たって、大ケガをしたんです。', 'Saat membantu menebang pohon di pegunungan, leher saya terkena gergaji mesin dan terluka parah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4262_masalah, 'こりゃまた面倒な仕事を引き受けたもんだね。', 'Anda telah melakukan pekerjaan yang sulit!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4262_masalah, 'クソリプは、言い返すのも面倒だし、シカトしてブロックするようにしています。', 'Saya merasa bosan menanggapi komentar yang tidak menyenangkan, jadi saya abaikan saja dan blokir.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4262_masalah, 'うちの社長には色々面倒もかけてきてて、それでもずっと面倒見てもらってるんで、感謝の気持ちでいっぱいです。', 'Aku telah menyebabkan berbagai masalah pada presiden kita, namun dia selalu menjagaku, jadi aku dipenuhi rasa terima kasih.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4263_kebangkrutan, '父さんの会社の倒産のニュース、見たよ！', 'Ayah, aku melihat berita tentang kebangkrutan perusahaanmu!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4263_kebangkrutan, '昨年はたくさんの企業が倒産しました。', 'Banyak perusahaan bangkrut tahun lalu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4263_kebangkrutan, '会社が倒産すると知った時、空を見上げたら、きれいな飛行機雲が見えたんです。', 'Ketika saya mengetahui perusahaan saya akan bangkrut, saya melihat ke langit dan melihat sebuah contrail yang indah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4264_peminjam, 'あのマンションは、お化けが出るというウワサのせいで借り手がつかない。', 'Apartemen tersebut masih belum ada penghuninya karena dikabarkan berhantu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4264_peminjam, '借り手は、銀行の金利が上がってほしくありません。', 'Peminjam tidak ingin suku bunga bank naik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4264_peminjam, 'そうは言っても、借り手が見つからない可能性もありますよね？', 'Terlepas dari apa yang Anda katakan, masih ada kemungkinan kami tidak dapat menemukan penyewa, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4265_tebal, 'うわっ、このカベ、すごく厚いですね。', 'Wah tebal sekali tembok ini ya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4265_tebal, 'ヨーロッパの石づくりの建物は、カベがとても厚いんです。', 'Bangunan Eropa yang terbuat dari batu memiliki tembok yang sangat tebal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4265_tebal, 'このグローブは、パッドが低反発でめっちゃ厚いやつなので、ロングライドにも良さそうです！', 'Sarung tangan ini memiliki bantalan busa memori yang tebal, sehingga cocok untuk perjalanan jauh!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4265_tebal, '私、食パンって厚ければ厚いほど美味しいと思うんですけど、気づいたら毎朝一斤まるまる食べるようになってました。', 'Menurut saya, semakin tebal potongan rotinya, semakin enak rasanya. Sebelum saya menyadarinya, saya mulai makan sepotong roti utuh setiap pagi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4266_tekanan, 'ロケットが大気に入るときには、ものすごい圧力がかかります。', 'Ketika roket memasuki atmosfer, ia mengalami tekanan yang sangat besar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4266_tekanan, 'その報道は上からの圧力でもみ消されました。', 'Laporan tersebut disembunyikan karena tekanan dari atasan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4266_tekanan, '日本はよく、同調圧力が強い国だと言われます。', 'Jepang sering dikatakan sebagai negara dengan tekanan dari teman sebaya yang kuat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4267_tekanan_darah, 'うちの家族はみんな血圧が高いんです。', 'Semua orang di keluarga saya memiliki tekanan darah tinggi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4267_tekanan_darah, '私は高血圧なので、血圧下げる薬を服用しています。', 'Saya mempunyai tekanan darah tinggi dan saya sedang minum obat untuk menurunkan tekanan darah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4267_tekanan_darah, '低血圧だから朝起きられなくて困っているんです。今日は血圧をはかってもらったら、上が85で下が30でした。コウイチ先生、何とかしてもらえませんか？', 'Saya sulit bangun di pagi hari karena tekanan darah saya rendah. Saat tekanan darahku diukur hari ini, angkanya delapan puluh lima per tiga puluh. Bisakah Anda melakukan sesuatu untuk saya, Dr. Koichi?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4268_shiatsu, '指圧は血行を良くして、ストレスや不安を和らげてくれます。', 'Shiatsu meningkatkan sirkulasi darah dan membantu mengurangi stres dan kecemasan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4268_shiatsu, '指圧をしすぎると体に良くないこともあると言う人もいます。', 'Beberapa orang mengatakan bahwa terlalu banyak pijat shiatsu tidak baik untuk Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4268_shiatsu, '指圧は日本で生まれたマッサージ法で、そのルーツは神話時代までさかのぼる事が出来ると言われています。', 'Shiatsu adalah teknik pijat yang lahir di Jepang, dan konon akarnya berasal dari era mitologi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4269_adanya, 'SNSをしないので、そのミームの存在を知りませんでした。', 'Saya tidak menggunakan media sosial, jadi saya tidak tahu meme itu ada.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4269_adanya, 'ルールは守るために存在するんですよ。', 'Aturan ada untuk diikuti.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4269_adanya, '彼は宇宙生活が長かったので、時々、重力の存在を忘れることがあります。', 'Dia sudah lama tinggal di luar angkasa, sehingga terkadang dia lupa bahwa gravitasi itu ada.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4271_realitas, 'クズリって、実在するんですね。', 'Wolverine benar-benar ada ya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4271_realitas, 'そのインスタグラマー、実在してないんだよ。', 'Instagrammer itu sebenarnya tidak ada.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4271_realitas, 'ワニカニの顔は、実在の人物をモデルに作られたというウワサがあります。', 'Ada rumor yang mengatakan bahwa wajah WaniKani meniru model orang sungguhan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4272_luar_negeri, '木戸さんは在外生活、もう長いんですか？', 'Apakah kamu sudah lama tinggal di luar negeri, Kido-san?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4272_luar_negeri, 'でも、日本に帰りたいと言ってる在外日本人女性ってすごく多いですよね？', 'Tapi, cukup banyak perempuan Jepang yang tinggal di luar negeri yang menyatakan keinginannya untuk kembali ke Jepang, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4272_luar_negeri, 'これまでのキャリアとアメリカでの在外経験を活かせば、日本での仕事はすぐに見つかると思っています。', 'Mengingat karir saya selama ini, dan pengalaman saya tinggal di luar negeri di Amerika, saya yakin saya bisa segera mendapatkan pekerjaan di Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4273_tergila_gila, '彼女はゲームに夢中になっていて、彼の声が聞こえませんでした。', 'Dia begitu asyik dengan permainan itu sehingga dia tidak mendengarnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4273_tergila_gila, 'テレビドラマに夢中になっていて、夕食の準備を忘れていました。', 'Saya begitu asyik dengan drama TV sehingga saya lupa menyiapkan makan malam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4273_tergila_gila, 'そのウェイトレスは、彼女に夢中になっている皿洗いの男に追いかけられ、とにかく夢中で家まで走って帰りました。', 'Pelayan itu, dikejar oleh seorang pencuci piring yang jatuh cinta padanya, berlari pulang dengan panik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4274_mimpi_buruk, '夜中に悪夢で目が覚めました。', 'Saya terbangun di tengah malam dengan mimpi buruk.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4274_mimpi_buruk, '昨日、悪夢にうなされてたよ。', 'Kemarin, kamu mengerang karena mimpi buruk.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4274_mimpi_buruk, 'まるで悪夢を見ているようでした。', 'Rasanya seperti mengalami mimpi buruk.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4275_mimpi, 'うわー、夢みたい！', 'Wow, ini seperti mimpi yang menjadi kenyataan!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4275_mimpi, '私の夢は日本に行って、日本で働くことです。', 'Impian saya adalah pergi dan bekerja di Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4275_mimpi, '昨日、コウイチに指圧をしてもらっている夢を見たんだ。', 'Kemarin, saya bermimpi Koichi sedang memijat saya shiatsu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4279_istri, '今日は妻とデートでした。', 'Hari ini saya berkencan dengan istri saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4279_istri, '元妻にプレゼントした車、返してくれないかな？', 'Saya ingin tahu apakah mantan istri saya akan mengembalikan mobil yang saya berikan kepadanya sebagai hadiah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4279_istri, '僕の妻は毎朝会社に行く前に鼻の穴にワセリンをぬります。', 'Istri saya mengoleskan Vaseline ke lubang hidungnya setiap pagi sebelum berangkat kerja.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4280_suami_istri, 'あの夫妻は顔がそっくりです。', 'Pasangan suami istri itu terlihat persis sama.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4280_suami_istri, 'そのBBQには、大谷夫妻やダルビッシュ夫妻も参加していました。', 'Bapak dan Ibu Otani serta Bapak dan Ibu Darvish juga menghadiri BBQ tersebut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4280_suami_istri, '知人のお医者さん夫妻から、あの薬だけはやめといた方がいいって止められたんです。', 'Sepasang dokter yang saya kenal menyarankan saya untuk menghindari pengobatan tersebut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4281_istri_dan_anak, '妻子がいるのに、他の女性と二人でご飯に行くのはダメでしょ。', 'Pergi makan bersama wanita lain saat Anda sudah punya istri dan anak tidaklah baik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4281_istri_dan_anak, 'うちの会社の男性社員は全員妻子持ちです。', 'Semua karyawan laki-laki di perusahaan kami sudah menikah dan memiliki anak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4281_istri_dan_anak, 'あの子、妻子のある人を好きになってしまったって言って泣いてたんだけど、泣いてるヒマがあるならさっさと別れなよって強く言っちゃった。', 'Dia menangis, mengatakan bahwa dia telah jatuh cinta dengan pria beristri dan mempunyai anak, tetapi saya mengatakan kepadanya dengan tegas, "Jika kamu punya waktu untuk menangis, cepatlah putus."');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4282_poligami, 'たとえ一夫多妻がOKになっても、お金がなければ少子化は止められないでしょ。', 'Sekalipun poligami bisa diterima, tanpa stabilitas finansial, kecil kemungkinan kita bisa menghentikan penurunan angka kelahiran, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4282_poligami, 'え、日本で一夫多妻をしてる人達もいるんですか！？', 'Oh, apakah di Jepang ada yang melakukan poligami?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4282_poligami, 'チョウチンアンコウやモリアオガエル、ミツバチなんかは一夫多妻の反対で、一妻多夫なんですよ。', 'Anglerfish chimera, katak pohon Jepang, dan lebah madu, misalnya, memiliki sistem perkawinan yang berlawanan dengan poligini, yang disebut poliandri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4283_benci, 'それはゼッタイ嫌です。', 'Saya pasti tidak suka melakukan itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4283_benci, '僕の彼女の嫌なところは、ポテトチップスにお湯を入れてマッシュポテトを作るとこかな。', 'Kebiasaan menyebalkan pacar saya mungkin adalah saat dia membuat kentang tumbuk dengan memasukkan air panas ke dalam keripik kentang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4283_benci, '仕事が嫌なら、やめたら？嫌なことを嫌々するのは体に良くないよ。', 'Jika Anda tidak menyukai pekerjaan Anda, mengapa Anda tidak berhenti? Tidak baik bagimu melakukan sesuatu yang tidak ingin kamu lakukan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4284_benci, '私はピーマンが嫌いです。', 'Aku benci paprika hijau.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4284_benci, '僕には嫌いな人はいません。', 'Saya tidak memiliki siapa pun yang tidak saya sukai.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4284_benci, '色々とごめんね。俺のこと、嫌なやつと思ってるかもしれないけど、できれば嫌いにならないでほしいな。', 'Saya minta maaf untuk semuanya. Aku tahu kamu mungkin mengira aku brengsek, tapi tolong jangan membenciku jika kamu bisa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4285_suasana_hati, '今日のお母さんの機嫌はどう？', 'Suasana hati ibu seperti apa hari ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4285_suasana_hati, 'おじいちゃん、めっちゃ機嫌いいね！どうしちゃったの？', 'Kakek sedang dalam suasana hati yang sangat baik! Apa yang telah terjadi?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4285_suasana_hati, '父は朝から機嫌が悪い。どうやら仕事で何かあったようだ。', 'Suasana hati ayahku sedang buruk sejak pagi ini. Rupanya, sesuatu telah terjadi di tempat kerja.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4286_kecurigaan, 'ビエトがヤクザだという嫌疑がぬぐえません。', 'Kecurigaan kami bahwa Viet adalah yakuza tidak bisa dihilangkan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4286_kecurigaan, 'あの政治家は人身売買に関わっていた嫌疑をかけられています。', 'Politisi itu diduga terlibat perdagangan manusia.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4286_kecurigaan, 'どうやら「嫌疑不十分」とされたみたいだね。', 'Sepertinya mereka dianggap “tidak cukup mencurigakan”, ya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4287_mesin_penjawab, '留守番電話にメッセージを残しました。', 'Saya meninggalkan pesan di mesin penjawab.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4287_mesin_penjawab, 'トーフグのオフィスに何度も何度も電話をしていますが、いつも留守番電話なんです。', 'Saya telah menelepon kantor Tofugu berulang kali, namun saya selalu mendapat mesin penjawab.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4287_mesin_penjawab, '留守番電話にコウイチから明日飛行機でハワイに行くというメッセージが入っていました。', 'Di mesin penjawabku, aku mendapat pesan dari Koichi yang mengabarkan dia akan terbang ke Hawaii besok.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4288_polusi, '私は歩きタバコは公害だと思っています。', 'Saya percaya merokok sambil berjalan adalah polusi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4288_polusi, '日本では1950~1960年代にかけて、公害が大きな社会問題になりました。', 'Di Jepang, polusi menjadi masalah sosial yang besar antara tahun 1950 dan 1960.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4288_polusi, '「カドミウム」は、四大公害病のひとつ「イタイイタイ病」を引き起こす原因となったことで知られています。', '"Kadmium" diketahui menyebabkan salah satu dari empat penyakit utama yang berhubungan dengan polusi yang disebut "penyakit Itai-Itai".');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4289_kerusakan_akibat_banjir, '地元が水害で大変なことになっているようだ。', 'Sepertinya kampung halamanku sedang dalam masalah serius akibat banjir.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4289_kerusakan_akibat_banjir, '私は、水害の起きやすい島で育ちました。', 'Saya dibesarkan di pulau yang rawan banjir.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4289_kerusakan_akibat_banjir, 'その水害で、5,000匹の猫が家を失いました。', 'Banjir menyebabkan 5.000 kucing kehilangan tempat tinggal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4290_tidak_berbahaya, '最近、色んな加工食品に使われているシリコーンって、本当に無害なのかな？コーヒーにも入ってるんだけど。', 'Entah apakah silikon yang akhir-akhir ini digunakan dalam berbagai makanan olahan memang tidak berbahaya. Itu bahkan digunakan dalam kopi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4290_tidak_berbahaya, 'アイツ、あんな無害そうな顔してセクハラをするなんて、信じられないよ。', 'Pria itu, dengan wajah yang tampak tidak berbahaya, terlibat dalam pelecehan seksual... Sungguh sulit dipercaya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4290_tidak_berbahaya, '私はアメリカに住むアジア人ですが、自ら存在をアピールしないと、ただの無害なモブとしてスルーされるように感じることは多々あります。', 'Sebagai orang Asia yang tinggal di Amerika, saya sering merasa diabaikan sebagai orang tambahan yang tidak berbahaya kecuali saya secara aktif menyatakan kehadiran saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4291_pantat, 'お尻にイボができました。', 'Aku punya kutil di pantatku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4291_pantat, '高いところに行くと、お尻がかゆくなるんです。', 'Saat saya pergi ke tempat tinggi, pantat saya gatal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4291_pantat, 'これはお尻のインナーマッスルのエクササイズです。', 'Ini adalah latihan untuk otot bagian dalam bokong.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4293_busur_dan_anak_panah, 'このアイヌのダンスでは弓矢が使われます。', 'Busur dan anak panah digunakan dalam tarian Ainu ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4293_busur_dan_anak_panah, 'このゲームでは、いつも弓矢を選んでプレイします。', 'Dalam permainan ini saya selalu memilih bermain dengan busur dan anak panah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4293_busur_dan_anak_panah, '夏休みに父と山で竹の弓矢を作りました。', 'Saya membuat busur dan anak panah bambu di pegunungan bersama ayah saya selama liburan musim panas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4294_barang_yang_terlupakan, '私は忘れ物が多い。', 'Saya banyak melupakan banyak hal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4294_barang_yang_terlupakan, 'これ、誰かの忘れ物じゃない？', 'Bukankah ini sesuatu yang dilupakan seseorang?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4294_barang_yang_terlupakan, '今日何か忘れ物をしたような気がするんだけど、それが何だったかをどうしても思い出せないんだよな。', 'Aku merasa seperti aku melupakan sesuatu hari ini, tapi aku tidak ingat apa itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4295_mesin, 'それはなんの機械ですか？', 'Mesin macam apa itu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4295_mesin, '今日は機械の調子があんまり良くないんだよね。', 'Saat ini mesin tersebut tidak bekerja dengan lancar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4295_mesin, 'コウイチは会社用にバッティングセンターの機械を買いました。', 'Koichi membeli mesin batting cage untuk kantor');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4296_pesawat_terbang, '飛行機のチケット、もう取っちゃったんだよね。', 'Saya sudah memesan tiket pesawat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4296_pesawat_terbang, '私は飛行機が苦手なので、一生日本に行けることはないでしょう。', 'Saya tidak suka pesawat terbang, jadi saya tidak akan pernah bisa pergi ke Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4296_pesawat_terbang, '飛行機でコウイチのとなりの席になった時、ビックリして目玉が飛び出るかと思いました。', 'Ketika saya duduk di sebelah Koichi di pesawat, saya sangat terkejut hingga saya mengira bola mata saya akan keluar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4297_krisis, '日本は今、国家存亡の危機にあります。', 'Jepang saat ini sedang menghadapi krisis yang mengancam kelangsungan hidup nasionalnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4297_krisis, 'もうちょっと危機感もった方がいいんじゃない？', 'Mungkin Anda harus lebih mempunyai rasa urgensi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4297_krisis, '第三次世界大戦は文明の危機につながります。', 'Perang Dunia III akan menyebabkan krisis peradaban.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4298_bencana, 'このお守りが、きっとあなたを災いから守ってくれるでしょう。', 'Jimat ini pasti akan melindungi Anda dari bencana.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4298_bencana, 'その人形が、この村に多くの災いをもたらしたんです。', 'Boneka itu membawa banyak kemalangan bagi desa ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4298_bencana, '口は災いの元だよ。', 'Mulut adalah sumber malapetaka.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4299_bencana_alam, '自然災害ほどおそろしいものはありません。', 'Tidak ada yang lebih menakutkan daripada bencana alam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4299_bencana_alam, '旅行中に災害が起こる可能性だってあります。', 'Bahkan ada kemungkinan terjadi bencana selama perjalanan Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4299_bencana_alam, '今日は災害やキャンプの時に便利なライフハックをお教えします。', 'Hari ini saya akan berbagi dengan Anda kiat hidup yang akan berguna saat terjadi bencana dan berkemah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4299_bencana_alam, 'しょうがないけど、自分が住んでいる場所で災害が起きないと、結局みんな他人事なんだよ。当事者にならないと、分からないことっていっぱいあるからさ。', 'Mau bagaimana lagi, tapi jika bencana tidak terjadi di tempat mereka tinggal, orang-orang hanya akan menganggapnya sebagai masalah orang lain. Ada banyak hal yang tidak Anda pahami kecuali hal itu memengaruhi Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4300_bencana_kebakaran, '明け方、あのビルで火災が発生したそうです。', 'Saya mendengar bahwa kebakaran terjadi di gedung itu saat fajar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4300_bencana_kebakaran, '原子力発電所で火災が起きたと聞いたんですが、本当ですか？', 'Saya dengar ada kebakaran di pembangkit listrik tenaga nuklir, benarkah?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4300_bencana_kebakaran, '私の父はオフィスの火災でずっと意識不明でしたが、今日ついに目を覚ましました！', 'Ayah saya lama tidak sadarkan diri setelah kebakaran di kantornya, namun akhirnya dia bangun hari ini!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4301_kemalangan, 'それはとんだ災難でしたね。', 'Itu sungguh sebuah kemalangan, ya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4301_kemalangan, 'さっきは災難だったね。あの先生、みんなにうるさいからさ、気にしない方がいいよ。', 'Itu adalah terobosan yang sulit sebelumnya. Guru itu selalu menangani kasus semua orang, jadi sebaiknya jangan biarkan hal itu mempengaruhi Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4301_kemalangan, 'せっかくの春休みなのに、インフルになるとは。災難すぎる。', 'Tidak kusangka aku terserang flu selama liburan musim semi yang berharga. Benar-benar sebuah bencana.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4302_bencana_gempa_bumi, '震災にあった日のことが、今でも忘れられないトラウマになっています。', 'Saya masih belum bisa melupakan trauma yang saya alami sejak hari terjadinya bencana gempa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4302_bencana_gempa_bumi, '私の学校の先生は震災で帰らぬ人となりました。', 'Seorang guru di sekolah saya tidak kembali ke rumah setelah gempa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4302_bencana_gempa_bumi, '震災で、地面が穴ぼこだらけになってしまいました。ここでは、震災から三ヶ月たった今でも、地面にヒビが入ったままです。', 'Gempa tersebut menyebabkan tanah penuh lubang. Di sini, tiga bulan setelah gempa, tanah masih retak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4303_berasap, 'なんか煙いと思ったら、近所で火事が起きてたらしい。', 'Saya kira baunya berasap, ternyata ada kebakaran di lingkungan sekitar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4303_berasap, '花火が煙くて、むせてしまいました。', 'Kembang api yang berasap membuatku terbatuk-batuk.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4303_berasap, '煙いなあ！一体いつになったらタバコやめるんだよ？本当に臭いんだけど。', 'Asap sekali! Kapan Anda akan berhenti merokok? Ini benar-benar baunya tidak enak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4304_untuk_melakukan_kejahatan, 'うわっ、はずかしい！こんな初歩的なミスを犯すとは！', 'Ups, memalukan! Saya tidak percaya saya melakukan kesalahan mendasar!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4304_untuk_melakukan_kejahatan, 'きちんとプロトコルを作ってみんなで守らないと、AIが殺人を犯す時代がやってくるかもしれません。', 'Kecuali kita membuat dan mematuhi protokol dengan ketat, era AI yang melakukan pembunuhan mungkin akan segera tiba.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4304_untuk_melakukan_kejahatan, '「法の不知は許さず」とは、たとえ法を知らずにやってしまったことだとしても、罪を犯す意思がなかったとすることにはできないというものです。', 'Yang dimaksud dengan “ketidaktahuan terhadap hukum bukanlah alasan” artinya walaupun seseorang berbuat sesuatu tanpa mengetahui hukum, tidak dapat dikatakan bahwa ia tidak mempunyai niat untuk melakukan suatu tindak pidana.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4305_pelaku, 'クッキー食べた犯人、お父さんだった。', 'Pelaku yang memakan kue tersebut ternyata adalah Ayah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4305_pelaku, 'まだ犯人つかまってないらしいよ。', 'Kudengar mereka belum menangkap pelakunya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4305_pelaku, 'その犯人は、口は災いの元だということを思い知った。', 'Penjahat belajar dari pengalaman pahit bahwa berbicara sembarangan dapat membawa bencana.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4306_kaki_tangan, '共犯者は国外にいる可能性が高いそうだ。', 'Mereka mengatakan kaki tangannya kemungkinan besar berada di luar negeri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4306_kaki_tangan, '共犯者の息子は、一昨年の一月に生まれました。', 'Putra kaki tangan saya lahir pada bulan Januari tahun lalu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4306_kaki_tangan, 'あの共犯者は、まさに飛んで火にいる夏の虫だったな。', 'Kaki tangannya memang seperti serangga yang terbang ke dalam api di musim panas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4307_kemungkinan, '宝くじに当たる確率がどのくらいか知っていますか？', 'Tahukah Anda seberapa besar kemungkinan memenangkan lotre?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4307_kemungkinan, 'なんか金曜日は高確率でカレーを食べてる気がする。', 'Rasanya seperti saya makan kari pada hari Jumat dengan kemungkinan besar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4307_kemungkinan, 'ミドリちゃんと付き合える確率、自分では五分五分かなって思ってるんだけど、もっと低いと思う？', 'Aku merasa kemungkinan berkencan dengan Midori-chan adalah lima puluh lima puluh, tapi menurutmu apakah itu lebih rendah lagi?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4308_perbandingan, 'うちの会社の男女比率は、5:2です。', 'Rasio pria dan wanita di perusahaan kami adalah 5:2.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4308_perbandingan, 'それってGDP比率の何パーセントぐらいですか？', 'Kira-kira berapa persentase PDB-nya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4308_perbandingan, '何かを学ぼうとするときは、インプットとアウトプットの比率を考えながら学ぶといいですよ。', 'Saat Anda mencoba mempelajari sesuatu, Anda harus mempertimbangkan rasio masukan dan keluaran.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4310_tentu, 'それは確かにそうですね。', 'Hal itu memang benar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4310_tentu, '彼は確かにリーダーに向いていると思います。でも、時々言葉がきついのがネックです。', 'Tentu saja dia adalah pemimpin yang baik. Tapi masalahnya terkadang bahasanya terlalu kasar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4310_tentu, 'コウイチが百メートルほど飛ぶのを、この目で確かに見ました。', 'Saya yakin saya melihat Koichi terbang sekitar seratus meter dengan mata kepala sendiri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4311_tepat, 'コンピュータで計算したので、正確ですよ。', 'Saya melakukan perhitungan di komputer, jadi akurat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4311_tepat, 'その記者の報道はいつもとても正確です。', 'Pelaporan reporter itu selalu sangat akurat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4311_tepat, 'コウイチはワニカニの正確なユーザー数を知りません。', 'Koichi tidak mengetahui jumlah pasti pengguna WaniKani.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4312_jangan_masuk, 'スーパーのバックヤードは立入禁止です。', 'Ruang belakang toko kelontong terlarang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4312_jangan_masuk, 'このドアには、関係者以外立入禁止って書かれているよ。', 'Pintu ini bertuliskan Hanya Personil yang Berwenang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4312_jangan_masuk, '立入禁止って聞くと入りたくなっちゃうのが人間でしょ？', 'Saat orang mendengar ada sesuatu yang dilarang, mereka ingin masuk, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4314_permata_tersembunyi, 'ここは、フグ料理の穴場なんですよ。', 'Ini adalah restoran ikan buntal yang bagus, yang tidak diketahui publik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4314_permata_tersembunyi, '日曜日、ビーチに行きませんか？いい穴場を知ってるんです！', 'Apakah Anda ingin pergi ke pantai pada hari Minggu? Aku tahu tempat tersembunyi yang bagus!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4314_permata_tersembunyi, '新橋にあるカガヤって言うお店は、東京でも穴場中の穴場だよ。', 'Restoran bernama Kagaya di Shinbashi adalah permata tersembunyi di antara permata tersembunyi, bahkan di Tokyo.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4315_lubang_hidung, '私の鼻の穴は小さすぎて指が入りません。', 'Lubang hidungku terlalu kecil untuk menampung jari-jariku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4315_lubang_hidung, 'うちのハムスターは、ご飯を食べるとき、鼻の穴がふくらんでヒクヒクするのがすごくかわいいんです。', 'Hamster saya terlihat menggemaskan saat makan, lubang hidungnya menggembung dan bergerak-gerak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4315_lubang_hidung, '整形で鼻先を小さくすると、鼻の穴の形が三角になって、正面から見た時に見える鼻の穴のエリアが大きくなって、整形感がアップしちゃうんですよね。', 'Jika Anda memperkecil ujung hidung melalui operasi plastik, bentuk lubang hidung Anda menjadi segitiga, dan area lubang hidung yang terlihat dari depan bertambah, sehingga menambah kesan seperti telah menjalani operasi plastik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4316_belut_conger, '今日はお昼に穴子の天ぷらを食べました。', 'Hari ini saya makan tempura belut conger untuk makan siang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4316_belut_conger, '穴子の身はやわらかくて、食べやすいです。', 'Daging buah anago lembut dan mudah dimakan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4316_belut_conger, 'アメリカでは穴子は手に入りにくいので、代わりにウナギが使われています。', 'Karena sulitnya mendapatkan conger eel di Amerika, maka yang digunakan adalah belut air tawar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4318_pengalaman, 'すごく良い経験になりました。', 'Itu adalah pengalaman yang luar biasa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4318_pengalaman, '若いうちに色々な経験をしておいた方がいいよ。', 'Anda harus memiliki banyak pengalaman saat Anda masih muda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4318_pengalaman, '私は、飛行機で旅行をした経験がありません。', 'Saya belum pernah punya pengalaman bepergian dengan pesawat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4320_dosa, '私のプリンを勝手に食べた罪は重いよ！', 'Dosa memakan pudingku tanpa izin itu serius!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4320_dosa, 'それが、せめてもの罪ほろぼしのつもりだったんです。', 'Setidaknya itu dimaksudkan sebagai tindakan penebusan kecil atas kejahatanku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4320_dosa, 'あのユリちゃんを泣かせるとは、アイツも罪な男だねぇ。', 'Membuat Yurichan menangis seperti itu, dia pria yang sangat berdosa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4321_bersalah, '彼は不法滞在で有罪となりました。', 'Dia dinyatakan bersalah atas imigrasi ilegal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4321_bersalah, '彼女はアリバイもあるのに、なぜか有罪とされてしまいました。', 'Dia punya alibi, tapi entah kenapa dia dinyatakan bersalah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4321_bersalah, '犯人は犯行を認め、有罪を受け入れました。', 'Pelaku mengakui kejahatannya dan menerima pengakuan bersalah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4322_kejahatan, 'イジメは犯罪ですよ。', 'Penindasan adalah kejahatan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4322_kejahatan, '日本の学校では、先生の犯罪歴をチェックしないんですか？', 'Bukankah sekolah di Jepang memeriksa catatan kriminal guru?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4322_kejahatan, '日本で一番重い犯罪は何か知っていますか？', 'Tahukah Anda apa kejahatan paling serius di Jepang?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4323_bau, 'このチョコレート、くつ下の臭いがする。', 'Cokelat ini berbau busuk seperti kaus kaki.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4323_bau, 'ニンニク臭くてごめんね。すごい臭いよね。さっきラーメン食べたんだ。', 'Maafkan nafas bawang putihku. Baunya tidak enak, bukan? Aku baru saja makan ramen.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4323_bau, '鼻血が出てきたので、鼻の穴にチクワをさしこんで止血しようとしたけど、チクワは穴が開いているので意味がなかった上に、めっちゃチクワ臭かったです。', 'Saya mimisan, jadi saya mencoba menghentikannya dengan menusukkan tusuk ikan ke lubang hidung saya, tetapi karena tusuk itu berlubang, tidak berhasil, dan hanya berbau kue ikan yang menyengat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4324_kerusakan, 'この町は、山火事の被害は受けませんでした。', 'Kota ini tidak rusak akibat kebakaran hutan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4324_kerusakan, '被害にあった方がガマンしなきゃいけないなんて、おかしいよ！', 'Tidak benar kalau korbanlah yang harus menanggungnya!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4324_kerusakan, '今回の地震では、色々な場所で大きな被害が出ています。', 'Gempa bumi ini telah menyebabkan kerusakan besar di banyak tempat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4325_kelonggaran, 'まだ二、三人分ぐらい余裕があるよ。', 'Kami masih memiliki cukup ruang untuk beberapa orang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4325_kelonggaran, '新しいパソコンとAKB48のフィギュアを買いたいが、今は余裕が無い。', 'Saya ingin membeli komputer baru dan beberapa figure AKB48, tapi saya tidak mampu membelinya saat ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4325_kelonggaran, 'めっちゃプレッシャーだろうけど、大谷選手ならまあ余裕でしょ！', 'Pasti banyak tekanannya, tapi kalau itu Ohtani, dia mungkin akan mengatasinya dengan mudah!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4326_kaya, '僕も裕福な家庭に生まれたかったな。', 'Saya berharap saya dilahirkan dalam keluarga kaya juga.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4326_kaya, '実家が裕福で、教育にお金をかけてもらっていても、地頭が良くないと受験でうまくいかないこともあります。', 'Berasal dari keluarga kaya dan menerima dukungan finansial untuk pendidikan tidak menjamin keberhasilan dalam ujian jika seseorang kurang cerdas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4326_kaya, '高級ブランドのターゲットって、本当に裕福な人じゃなくて、「自分を金持ちに見せたい人」なんだよ。だからブランド物を見せびらかしてる人って、なんかちょっとダサいんだよな。', 'Target pasar merek-merek mewah tidak selalu orang-orang kaya, melainkan mereka yang ingin tampil makmur. Jadi, orang yang memamerkan barang-barang bermerek akan dianggap norak, lho?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4327_tesis, 'やっと二本目の論文が書けました！', 'Saya akhirnya berhasil menyelesaikan penulisan makalah kedua saya!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4327_tesis, '論文を読むのは、ラノベを読むより時間がかかります。', 'Membaca tesis membutuhkan waktu lebih lama dibandingkan membaca light novel.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4327_tesis, '大学の卒業論文のテーマは何だったんですか？', 'Apa tema tesis kelulusan perguruan tinggi Anda?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4328_teori, 'それ、ナゾ理論すぎるでしょ！', 'Teori itu terdengar terlalu tidak masuk akal!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4328_teori, '気にしない、気にしない。理論通りにいくことの方が少ないでしょ。', 'Jangan khawatir tentang hal itu, jangan khawatir tentang hal itu. Anda tahu, kecil kemungkinannya akan berjalan sesuai teori Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4328_teori, '私、ドラマチックに伝えるのは得意なんですが、理論的に説明するのは苦手なんです。', 'Saya pandai menyampaikan sesuatu secara dramatis, tetapi saya kesulitan menjelaskan sesuatu secara teoritis.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4329_logika, 'その論理でいくと意味が通じないよ。', 'Tidak masuk akal jika kita menggunakan logika itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4329_logika, '人は論理で動かないことの方が多いんですよ。', 'Orang sering kali tidak didorong oleh logika.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4329_logika, 'えー？あの人って、論理的かな？私にはヘリクツばっかり言ってる人にしか見えないけど。', 'Eh? Apakah orang itu logis? Bagiku, dia tampak seperti orang yang penuh rahasia.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4330_pertemuan, '会議は日本時間の午後三時からですよ。', 'Rapat dimulai pukul 15.00. waktu Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4330_pertemuan, 'え、日本では会議中に電話に出たらダメなんですか！？', 'Apa? Di Jepang, Anda tidak diperbolehkan menjawab telepon saat rapat!?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4330_pertemuan, '会議をサボって連ドラを見てるとは、何事だ！', 'Anda meninggalkan konferensi untuk menonton serial drama TV!? Apa-apaan ini!?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4331_argumen, '私はその議論には意味がないと思ってるんですが、あなたはどんなご意見をお持ちですか？', 'Saya tidak melihat argumen itu ada gunanya, apa pendapat Anda?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4331_argumen, '今日はネットで議論されてる車イスユーザーの話題についてみんなで考えてみましょう。', 'Mari kita pikirkan topik pengguna kursi roda yang sedang dibicarakan di Internet saat ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4331_argumen, 'コウイチとビエトは、夕飯に何を食べるかについて議論に議論を重ねました。', 'Koichi dan Viet berdebat tentang apa yang harus dimakan untuk makan malam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4332_rasa_takjub, 'へー、不思議なこともあるもんだね！', 'Wah, ternyata ada hal-hal aneh diluar sana ya!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4332_rasa_takjub, 'コンビニでダンスしてたら、店員さんから不思議そうに見られました。', 'Saya sedang menari di toko serba ada dan kasir menatap saya dengan aneh.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4332_rasa_takjub, 'いつ大きな地震が来ても全く不思議はないほど、最近は地震が多いです。', 'Tak heran jika gempa besar akan datang dalam waktu dekat, mengingat seringnya terjadi gempa akhir-akhir ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4333_pencegahan, 'このコミュニティフォーラムでは、ユーザー同士のトラブル防止のため、DMは禁止にしています。', 'Di forum komunitas ini, pesan langsung dilarang untuk mencegah konflik antar pengguna.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4333_pencegahan, 'この大学芋、サツマイモと水とハチミツとミリンだけで作ったんだよ。老化防止にいいんだって。', 'Hidangan ubi jalar yang disebut <i>daigakuimo</i> ini dibuat hanya dengan ubi, air, madu, dan mirin. Dikatakan baik untuk mencegah penuaan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4333_pencegahan, 'その先生は、コピペとAI使用を防止するために細工をしていました。', 'Guru merancang cara untuk mencegah copy-paste dan penggunaan AI.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4334_untuk_bertahan_melawan, '地元のゴーストタウン化を防ぐためにも、ゼッタイにこのビジネスを成功させます。', 'Saya pasti akan menyukseskan bisnis ini agar kampung halaman saya tidak menjadi kota hantu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4334_untuk_bertahan_melawan, '食中毒を防ぐためにも、電子レンジでしっかり加熱するようにしてください。', 'Untuk mencegah keracunan makanan, pastikan untuk memanaskannya secara menyeluruh di dalam microwave.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4334_untuk_bertahan_melawan, 'コロナにかかるのを防ぐ方法って今はまだないんで、とりあえずマスクを付けようってなってるんですよ。', 'Karena masih belum ada cara untuk mencegah tertular COVID-19, untuk saat ini masyarakat hanya diimbau untuk memakai masker.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4337_pencegahan, 'はしかの予防は、ワクチンしかありません。', 'Satu-satunya pencegahan campak adalah vaksinasi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4337_pencegahan, 'その国に行くなら、事前に必ずマラリア予防の薬を飲んでください。', 'Jika Anda pergi ke negara tersebut, pastikan untuk minum obat untuk mencegah malaria terlebih dahulu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4337_pencegahan, '日焼けを予防するために、日焼け止めは欠かせません。', 'Untuk mencegah sengatan matahari, tabir surya sangat penting.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4338_kesulitan, '私、仕事で困難に直面すると、ワクワクするんです。', 'Saya menjadi bersemangat ketika saya menghadapi kesulitan dalam pekerjaan saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4338_kesulitan, 'このレストランはとても人気で、予約が困難なことで有名です。', 'Restoran ini sangat populer dan terkenal dengan kesulitannya dalam melakukan reservasi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4338_kesulitan, '私はそれが原因で、歩行困難になってしまいました。', 'Hal itu menyebabkan saya kesulitan berjalan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4339_kritik, 'その記事の内容には、たくさんの非難の声が上がりました。', 'Artikel tersebut mendapat banyak kritik karena isinya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4339_kritik, 'あの行動に非難の目を向ける人が多くて、ビックリしました。', 'Saya terkejut melihat banyaknya orang yang mengutuk perilaku itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4339_kritik, 'ちょっとしたイタズラのつもりだったのに、その若者は世間の非難にさらされることになってしまいました。', 'Apa yang dimaksudkan sebagai lelucon kecil akhirnya membuat pemuda itu mendapat kecaman publik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4340_sulit, 'それってそんなに難しいことなの？', 'Apakah itu sangat sulit untuk dilakukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4340_sulit, 'ちょっと私には難しそうだし、やめておくよ。', 'Kedengarannya agak terlalu sulit bagi saya, jadi saya tidak akan melakukannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4340_sulit, 'このゲーム、難しすぎて全然クリアできない。', 'Game ini terlalu sulit untuk diselesaikan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4341_gempa_bumi, '最近、地震、多いよね。昨日もでしょ？', 'Akhir-akhir ini banyak terjadi gempa ya? Kemarin juga kan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4341_gempa_bumi, '人工地震って、本当にあると思いますか？', 'Apakah menurut Anda gempa bumi buatan manusia benar-benar ada?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4341_gempa_bumi, '東日本大震災では、マグニチュード9の大地震が起こりました。', 'Gempa Bumi Besar Jepang Timur adalah gempa bumi berkekuatan 9,0 skala Richter yang sangat besar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4342_intensitas_gempa, 'マグニチュードと震度って、何がちがうの？', 'Apa perbedaan antara magnitudo dan skala seismik?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4342_intensitas_gempa, 'あの地震では、最大震度が７強もあったらしいよ。', 'Saya dengar intensitas maksimum gempa itu lebih dari tujuh.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4342_intensitas_gempa, 'うちの魚は震度３くらいの地震だと、ピクリとも動きません。', 'Ikan saya bahkan tidak bergerak-gerak saat gempa berkekuatan tiga skala seismik Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4343_gempa_susulan, 'まだ余震が続いているので、気をつけてください。', 'Masih ada gempa susulan, jadi harap berhati-hati.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4343_gempa_susulan, '今日は何回ぐらい余震を感じましたか？', 'Berapa kali gempa susulan yang Anda rasakan hari ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4343_gempa_susulan, 'その地震の後に、余震が相次ぎました。', 'Gempa tersebut disusul gempa susulan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4344_antropologi, '私の専門は文化人類学です。', 'Jurusan saya adalah antropologi budaya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4344_antropologi, '私の父は、大学で人類学を教えています。', 'Ayah saya mengajar antropologi di universitas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4344_antropologi, 'この本を書いたのは日本で人類学を学んだモンゴル人の方だそうです。', 'Saya pernah mendengar bahwa orang yang menulis buku ini adalah seorang Mongolia yang pernah belajar antropologi di Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4345_untuk_terbang, 'フライパンから油が飛ぶかもしれないので気をつけてね！', 'Hati-hati karena minyak bisa memercik dari penggorengan!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4345_untuk_terbang, '公園につくと、たくさんのシャボン玉が飛んでいました。', 'Ketika saya sampai di taman, saya melihat banyak gelembung beterbangan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4345_untuk_terbang, 'ワニカニの年間サブスクリプションは、飛ぶように売れています。', 'Langganan tahunan untuk WaniKani semakin laris.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4353_cuci_tangan, '家に帰ったら、まず手洗いうがいをしましょう。', 'Sesampainya di rumah, cuci tangan dan kumur dulu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4353_cuci_tangan, 'このマスクは、手洗いすればまた使えますよ。', 'Masker ini bisa digunakan kembali jika dicuci dengan tangan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4353_cuci_tangan, '料理をする前には必ず手洗いするのはもちろんですが、料理中もお肉やタマゴにタッチしちゃったりしたら、小まめに手洗いするようにしてくださいね。', 'Tentu saja, selalu cuci tangan sebelum memasak, tetapi pastikan juga untuk sering mencuci tangan selama memasak, terutama jika Anda menyentuh daging atau telur.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4356_maag, '朝からカツカレーなんて、胸焼けするわ！', 'Makan kari potongan daging babi untuk sarapan membuatku mulas!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4356_maag, 'コーヒーの飲みすぎは胸焼けを引き起こすことがあるので注意してください。', 'Hati-hati jangan minum kopi terlalu banyak karena bisa menyebabkan sakit maag.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4356_maag, '俺、コンビニのおにぎりを食べると、ゲップが出たり胸焼けしたりすることが多いんです。保存料のせいなのかな。', 'Saya sering mulas atau sering bersendawa setelah makan onigiri di toko swalayan. Saya ingin tahu apakah itu karena bahan pengawetnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4357_tak_terpisahkan, '今って、ネットとリアルはほぼ不可分になってしまっていますよね？', 'Saat ini, Internet dan dunia nyata hampir tidak dapat dipisahkan, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4357_tak_terpisahkan, '正直、AIの使用は、もはや自身の生活と不可分になっています。', 'Sejujurnya, penggunaan AI sudah tidak bisa dipisahkan dari hidup saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4357_tak_terpisahkan, 'ご存知のように、ワニカニではワニとカニは不可分です。', 'Seperti yang kalian tahu, di WaniKani, buaya dan kepiting memang tidak bisa dipisahkan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4363_kemungkinan, '戦争になる可能性は低いと思うけど、心配だよね。', 'Saya pikir kemungkinan pecahnya perang kecil, tapi saya khawatir.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4363_kemungkinan, '今年のクリスマスは雪になる可能性が高いみたいです。', 'Sepertinya kemungkinan turun salju di Hari Natal sangat tinggi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4363_kemungkinan, 'そのプロジェクト、可能性のかたまりって感じだね。もちろん失敗する可能性もあるけど、面白そう！', 'Proyek itu terasa seperti sekumpulan kemungkinan, bukan? Tentu saja, ada juga kemungkinan gagal, tapi kedengarannya menarik!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4364_onyomi_dan_kunyomi, '漢字の音訓の見分け方を教えてください。', 'Tolong ajari saya cara membedakan on''yomi dan kun''yomi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4364_onyomi_dan_kunyomi, 'これは常用漢字の音訓表です。', 'Ini adalah tabel pembacaan kanji yang umum digunakan dalam bahasa Mandarin dan Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4364_onyomi_dan_kunyomi, '漢字の音訓って、例外も多いし、それぞれ二つ以上あるものもあるし、いちいちどれが音読みでどれが訓読みなのかを覚える必要ってあるんですかね？', 'Dalam kanji, terdapat banyak pengecualian pada pembacaan on''yomi dan kun''yomi, dan banyak karakter yang memiliki banyak bacaan. Apakah memang perlu hafal mana bacaan yang on''yomi dan mana yang kun''yomi untuk setiap karakternya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4365_rakyat, '私の近所に住む人達は、パーティが大好きな人達ばかりです。', 'Orang-orang yang tinggal di lingkungan saya semuanya adalah penggemar berat pesta.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4365_rakyat, '「ワニカニをしている人達は、漢字をすぐに覚えてしまう」と色んな人達が言っていました。', 'Berbagai orang mengatakan bahwa orang yang melakukan WaniKani cepat menghafal kanji.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4365_rakyat, 'お父さんがピザの配達人であることを笑う人達もいますが、僕はそういう人達こそ笑われるべきだと思っています。', 'Beberapa orang menertawakan kenyataan bahwa ayah saya adalah seorang pengantar pizza, tapi saya yakin orang-orang itulah yang patut ditertawakan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4366_diam_diam, '京都旅行で行った小料理屋では、静々と流れる小川を見下ろしながら、アユの塩焼きをいただきました。', 'Selama perjalanan saya ke Kyoto, di sebuah restoran kecil yang saya kunjungi, saya menikmati ikan ayu bakar sambil memandangi aliran sungai yang tenang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4366_diam_diam, '雪が静々とつもりゆくのを見て、ホットココアが飲みたくなりました。', 'Melihat salju yang menumpuk tanpa suara, aku merasa seperti sedang menikmati coklat panas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4366_diam_diam, '昔の日本では、夫の後ろを静々と歩くような妻が良妻とされてきました。', 'Di Jepang kuno, istri yang berjalan diam-diam di belakang suaminya dianggap sebagai istri yang baik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4369_untuk_mengeluh, '意見を言っただけなのに、上司に「文句するな」と怒鳴られました。', 'Saya baru saja mengutarakan pendapat saya, namun atasan saya berteriak, "jangan mengeluh," kepada saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4370_untuk_dipanggang, 'まさか火事で家が焼けるとは思っても見ませんでした。', 'Saya tidak pernah menyangka rumah saya akan terbakar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4370_untuk_dipanggang, 'このパンはこんがりとよく焼けています。', 'Roti ini dipanggang dengan baik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4370_untuk_dipanggang, '「この肉は厚いから、焼けるまでに時間がかかりそうだね」「あなたが皿洗いをしている間に、焼けると思うけど」', '“Daging ini tebal, jadi menurutku butuh waktu lama sampai matang.” "Menurutku itu akan matang saat kamu mencuci piring."');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4371_perangkat_elektronik, 'この部屋への電子機器持ち込みは禁止されています。', 'Tidak boleh ada perangkat elektronik di ruangan ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4371_perangkat_elektronik, 'この工場では、電子機器に問題がないか、最後に作業員が一つずつ手作業でチェックしています。', 'Di pabrik ini, para pekerja memeriksa secara manual setiap perangkat elektronik satu per satu di akhir proses untuk memastikan tidak ada masalah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4371_perangkat_elektronik, '私、電気のニオイが分かるんですよね。最近若い方は電子機器を常に使っているので、電気のニオイがプンプンします。', 'Aku bisa mencium bau listrik, lho. Anak muda jaman sekarang selalu menggunakan alat elektronik, sehingga saya sering mencium bau listrik disekitarnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4895_untuk_menusuk_sesuatu, 'え、このフルーツをクシに刺すんですか？', 'Oh, apakah kita akan menusuk buah-buahan ini ke tusuk sate?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4895_untuk_menusuk_sesuatu, '黒いスズメバチに刺されたことがあります。', 'Saya pernah disengat lebah hitam sebelumnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_4895_untuk_menusuk_sesuatu, 'フォークでハエにトドメを刺しました。', 'Saya menghabiskan seekor lalat dengan garpu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5464_rute, '事前にGoogleマップで目的地までの経路をチェックしておいてくださいね！', 'Pastikan untuk memeriksa rute ke tujuan Anda terlebih dahulu menggunakan Google Maps!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5464_rute, 'こういう小さい事件って、どういう経路でニュースになるんだろうね。', 'Saya bertanya-tanya bagaimana insiden kecil ini bisa menjadi berita.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5464_rute, '犯人がこのドラッグを入手した経路はまだ分かっていません。', 'Belum diketahui bagaimana cara pelaku mendapatkan obat tersebut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5837_untuk_menutup_sesuatu, 'スマホでブラウザってどうやって閉じるんですか？', 'Bagaimana cara menutup browser di smartphone?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5837_untuk_menutup_sesuatu, 'あ！シオリをはさむ前にページを閉じちゃった。', 'Ups! Saya menutup buku itu sebelum mem-bookmark-nya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5837_untuk_menutup_sesuatu, '急にパソコンの画面が勝手に閉じちゃったんです。', 'Layar komputer tiba-tiba tertutup dengan sendirinya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7485_pembaca, '彼は、読者にとって分かりやすい文章を書くことに心がけています。', 'Dia berusaha untuk menulis teks yang jelas dan dapat dimengerti oleh pembaca.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7485_pembaca, '彼女は読者からの手紙やコメントを読むのが大好きです。', 'Dia suka membaca surat dan komentar dari pembaca.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7485_pembaca, 'あなたはトーフグの記事の読者ですか？え、トーフグを知らないんですか？日本語や日本文化について、分かりやすく記事にしているサイトですよ！役立つ記事ばかりなんで、ぜひ読者になってください！', 'Apakah Anda pembaca artikel Tofugu? Oh, kamu belum kenal dengan Tofugu? Ini adalah situs web yang menyediakan artikel yang mudah dipahami tentang bahasa dan budaya Jepang! Mereka memiliki banyak artikel bermanfaat, jadi mohon pertimbangkan untuk menjadi pembaca!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7503_tempat_tinggal, '日本在留のアメリカ人と友達になりました。', 'Saya berteman dengan seorang Amerika yang tinggal di Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7503_tempat_tinggal, '昨日、ビザと在留カードを受け取りました。', 'Kemarin, saya menerima visa dan kartu tempat tinggal saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7503_tempat_tinggal, '家事代行を行う外国人労働者の在留期間が、最長5年から7年に変わるそうです。', 'Tampaknya masa tinggal maksimum bagi pekerja asing yang melakukan pekerjaan rumah tangga akan diperpanjang dari lima tahun menjadi tujuh tahun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7553_mesin, 'うちの社長はジェット機を二機持っています。', 'Presiden kita memiliki dua jet.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7553_mesin, '今はまだ、機じゃないのかもしれません。', 'Ini mungkin belum saat yang tepat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7553_mesin, '今はまだ、機をうかがっているところです。', 'Saat ini kami masih menunggu kesempatan yang tepat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7594_kontrol_penuh, 'ヴァンパイアは人の心を自在にコントロールすることができる。', 'Vampir dapat mengendalikan pikiran manusia sesuka hati.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7594_kontrol_penuh, '彼女はスマホを、まるで体の一部のように自由自在に使いこなします。', 'Dia menggunakan smartphone-nya dengan bebas seolah-olah itu adalah bagian dari tubuhnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7594_kontrol_penuh, 'その歌手は、パワフルな高音からソフトな低音まで、様々な歌声を自在にあやつることができます。', 'Penyanyi tersebut memiliki kemampuan memanipulasi berbagai nada vokal dengan mudah, mulai dari nada tinggi yang kuat hingga nada rendah yang lembut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7648_diet, 'もう議会で決定したことなんだ。', 'Diet sudah mengambil keputusan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7648_diet, '私たちの出した意見書が、議会で可決されました。', 'Surat pendapat yang kami ajukan disahkan oleh Majelis.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7648_diet, 'ウトウトする議員が多いので、議員たちは議会ではイスに座らず、立って議論することになりました。', 'Karena banyak anggota parlemen yang tertidur, anggota parlemen memutuskan untuk berdiri dan berdebat daripada duduk dalam sidang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7705_ruang_konferensi, '会議室は三階にあります。', 'Ruang konferensi terletak di lantai tiga.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7705_ruang_konferensi, 'この会議室にはプロジェクターとホワイトボードがあります。', 'Ruang pertemuan ini memiliki proyektor dan papan tulis.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7705_ruang_konferensi, 'ビエトとコウイチが会議室に入ったまんまずっと出てこないんだ。', 'Viet dan Koichi masuk ke ruang pertemuan dan masih belum keluar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7706_anggota_diet, '彼は国会議員です。', 'Dia adalah anggota parlemen.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7706_anggota_diet, '議員バッヂを失くしてしまいました。', 'Saya kehilangan lencana anggota Diet saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7706_anggota_diet, '大学生の時にある市議会議員のところでインターンをしていました。とてもいい経験でした。', 'Ketika saya masih mahasiswa, saya magang di anggota Diet dewan kota. Itu adalah pengalaman yang sangat bagus.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7707_ekor, 'このカメ、尾がトゲトゲしててカッコいい！', 'Penyu ini memiliki ekor yang runcing; itu terlihat sangat keren!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7707_ekor, '私の特技は、魚の尾を見ただけで魚の種類を当てることです。', 'Keahlian khusus saya adalah bisa mengidentifikasi jenis ikan hanya dengan melihat ekornya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7707_ekor, '友達に「お前の鳥の尾、短くない？」って言われたこと、まだ尾を引いてるんですよね。', 'Saya masih terpaku pada teman saya yang berkata, "Burungmu pendek, ekornya pendek?"');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7708_akhir_sebuah_garis, '列の最後尾はこちらです。', 'Akhir dari garis ada di sini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7708_akhir_sebuah_garis, 'なんと、昨日通りかかったラーメン屋の行列の最後尾に課長がいたんだよ。', 'Yang mengejutkan saya, kepala bagian berada di ujung antrean di toko ramen yang saya lewati kemarin.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7708_akhir_sebuah_garis, '大人気のゲームを発売日に買うために開店前にお店に行ったけど、すでにお店の前から列の最後尾まで200mぐらいあった。', 'Untuk membeli game super populer di hari peluncurannya, saya pergi ke toko sebelum toko tersebut dibuka, namun sudah ada antrean di depan yang membentang sekitar 200 meter hingga ke ujung.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7762_ramalan_cuaca, '天気予報では午後から雨になってたよ。', 'Ramalan cuaca menyebutkan akan turun hujan sore ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7762_ramalan_cuaca, '天気予報、見事に外れましたね。', 'Ramalan cuacanya sangat buruk, ya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7762_ramalan_cuaca, '天気予報を事前にチェックするのが面倒臭かったんです。', 'Saya hanya merasa repot untuk memeriksa ramalan cuaca sebelumnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7763_menjijikkan, '彼女はいつも通り、私に嫌悪の目を向けてきた。', 'Dia menatapku dengan jijik, seperti biasa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7763_menjijikkan, 'ドラキュラはニンニクを嫌悪しています。', 'Drakula tidak menyukai bawang putih.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7763_menjijikkan, 'もちろん嫌悪感を感じましたが、その時は何も言えませんでした。', 'Tentu saja aku merasa jijik, tapi aku tidak bisa berkata apa-apa saat itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8675_ketua, '議長、今日の議題は何ですか？', 'Pak Ketua, apa agenda hari ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8675_ketua, 'その議長は、いつも皆の意見を公平に聞いてくれます。', 'Ketua itu selalu mendengarkan pendapat semua orang dengan adil.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8675_ketua, '今、2024年の最初のFOMCでのパウエル議長の会見のビデオを見ているところです。', 'Saya baru saja menonton video konferensi pers Ketua Powell pada pertemuan pertama FOMC tahun 2024.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8711_sekolah_menengah_atas, '来月、うちの高校の声楽部が、市の声楽アンサンブルコンテストの高等学校部門に出場することになりました。', 'Bulan depan, klub musik vokal sekolah menengah kami akan berpartisipasi dalam kontes ansambel vokal kota di divisi sekolah menengah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8711_sekolah_menengah_atas, 'アメリカでは、高等学校への進学率は高く、ほぼ全ての学生が高校を卒業します。日本の高等学校への進学率はどれくらいですか？', 'Di Amerika, angka partisipasi sekolah menengah atas tinggi, dengan hampir semua siswa lulus sekolah menengah atas. Seperti apa angka partisipasi sekolah menengah di Jepang?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8711_sekolah_menengah_atas, '外国人が留学で日本の高等学校に入学する場合、20才以下かつ教育機関において1年以上の日本語教育、もしくは日本語による教育を受けている必要があります。 ', 'Jika orang asing ingin mendaftar di sekolah menengah Jepang untuk belajar di luar negeri, mereka harus berusia dua puluh tahun atau lebih muda dan telah menerima setidaknya satu tahun pendidikan bahasa Jepang di lembaga pendidikan, atau telah dididik dalam bahasa Jepang selama setidaknya satu tahun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8850_batuk_jatuh, '喉飴持ってない？', 'Apakah Anda kebetulan mempunyai obat pelega tenggorokan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8850_batuk_jatuh, '今日はカゼを治すために、水分とって喉飴なめて、一日ゆっくりします。', 'Hari ini, saya akan meminum air dan obat pelega tenggorokan untuk menyembuhkan flu saya, dan kemudian bersantai sepanjang hari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8850_batuk_jatuh, '喉飴って理科室みたいな味がすると思わない？', 'Tidakkah menurut Anda obat batuk rasanya seperti ruang sains?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8953_untuk_dilahirkan, 'いつ産まれる予定なの？', 'Kapan Anda mengharapkan bayinya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8953_untuk_dilahirkan, '小野さんの家では、もうすぐ子犬が産まれるそうだ。', 'Tampaknya anak anjing akan segera lahir di rumah Ono-san.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8953_untuk_dilahirkan, 'コウイチは、産まれる前からワニカニを始めていたので、産まれた時にはすでに漢字を読むことができたんです！', 'Koichi mulai menggunakan WaniKani bahkan sebelum dia lahir, jadi saat dia lahir, dia sudah bisa membaca kanji!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9067_melalui, 'そのお店なら、大阪経由でも京都経由でも行けますよ。', 'Jika ingin ke restoran tersebut, bisa melalui Osaka atau Kyoto.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9067_melalui, '最近はSNS経由でちょこちょこお仕事をもらえるようになってきました。', 'Akhir-akhir ini, saya mendapatkan sedikit pekerjaan melalui media sosial.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9067_melalui, '旅館の予約は、インターネット経由で行うのが一番いいと思う。', 'Saya pikir yang terbaik adalah memesan penginapan Anda melalui internet.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9071_benih, 'あそこで、ヒマワリの種をもらいました。', 'Di sana, saya menerima biji bunga matahari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9071_benih, 'その種、いつまくの？', 'Kapan Anda akan menabur benih itu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9071_benih, 'ありがとう、いい話の種ができたよ。', 'Terima kasih, kamu telah memberiku cerita yang bagus untuk diceritakan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9085_akan_pergi, 'あ、トイレットペーパー、もうすぐ無くなるよ。', 'Oh, tisu toilet kita hampir habis.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9085_akan_pergi, 'することが無くなっちゃって、ヒマなんだよね。', 'Aku sudah kehabisan hal untuk dilakukan dan aku bosan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9085_akan_pergi, '正直、カード社会になってから、キャッシュを持つ必要性ってほぼ無くなったよね。', 'Jujur saja, karena kita sudah menjadi masyarakat yang berpusat pada kartu, kebutuhan untuk membawa uang tunai sudah hampir menjadi hal yang ketinggalan jaman, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9253_untuk_menghubungkan_sesuatu, 'いつも何回目のデートで手を繋ぐ？', 'Setelah berapa kali kencan biasanya kamu berpegangan tangan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9253_untuk_menghubungkan_sesuatu, '音楽は人と人を繋ぎます。', 'Musik menghubungkan orang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9253_untuk_menghubungkan_sesuatu, '今はケーブルがなくてもWi-Fiでパソコンとデジカメを繋ぐことができます。', 'Saat ini, bahkan tanpa kabel, Anda dapat menghubungkan komputer dan kamera digital menggunakan Wi-Fi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9348_untuk_menghasilkan_buah, 'まさか、この恋が実るなんて！', 'Aku tidak percaya cinta ini membuahkan hasil!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9348_untuk_menghasilkan_buah, '今年もたくさんのオレンジが実りました。', 'Banyak jeruk yang matang kembali tahun ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9348_untuk_menghasilkan_buah, '先生、長年の努力が実りましたね！', 'Guru, usahamu selama bertahun-tahun akhirnya membuahkan hasil!');

  -- 4. PREREQUISITES
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1086_tertekan, id FROM items WHERE type = 'radical' AND (slug = '16' OR id = '16') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1086_tertekan, id FROM items WHERE type = 'radical' AND (slug = '23' OR id = '23') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1089_bencana, r_273_banjir);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1089_bencana, id FROM items WHERE type = 'radical' AND (slug = '46' OR id = '46') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1090_mesin, id FROM items WHERE type = 'radical' AND (slug = '23' OR id = '23') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1090_mesin, id FROM items WHERE type = 'radical' AND (slug = '87' OR id = '87') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1090_mesin, id FROM items WHERE type = 'radical' AND (slug = '194' OR id = '194') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1090_mesin, id FROM items WHERE type = 'radical' AND (slug = '9' OR id = '9') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1091_persen, id FROM items WHERE type = 'radical' AND (slug = '8' OR id = '8') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1091_persen, id FROM items WHERE type = 'radical' AND (slug = '87' OR id = '87') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1091_persen, r_8788_ledakan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1091_persen, id FROM items WHERE type = 'radical' AND (slug = '15' OR id = '15') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1092_terbang, r_270_terbang);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1093_kerusakan, id FROM items WHERE type = 'radical' AND (slug = '78' OR id = '78') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1093_kerusakan, id FROM items WHERE type = 'radical' AND (slug = '9452' OR id = '9452') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1093_kerusakan, id FROM items WHERE type = 'radical' AND (slug = '16' OR id = '16') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1094_kelebihan, id FROM items WHERE type = 'radical' AND (slug = '8764' OR id = '8764') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1094_kelebihan, id FROM items WHERE type = 'radical' AND (slug = '207' OR id = '207') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1095_sulit, id FROM items WHERE type = 'radical' AND (slug = '8774' OR id = '8774') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1095_sulit, id FROM items WHERE type = 'radical' AND (slug = '240' OR id = '240') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1097_menutupi, id FROM items WHERE type = 'radical' AND (slug = '9392' OR id = '9392') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1097_menutupi, id FROM items WHERE type = 'radical' AND (slug = '195' OR id = '195') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1098_melimpah, id FROM items WHERE type = 'radical' AND (slug = '9392' OR id = '9392') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1098_melimpah, id FROM items WHERE type = 'radical' AND (slug = '249' OR id = '249') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1099_gempa_bumi, id FROM items WHERE type = 'radical' AND (slug = '119' OR id = '119') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1099_gempa_bumi, id FROM items WHERE type = 'radical' AND (slug = '183' OR id = '183') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1100_pantat, id FROM items WHERE type = 'radical' AND (slug = '37' OR id = '37') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1100_pantat, id FROM items WHERE type = 'radical' AND (slug = '11' OR id = '11') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1101_ekor, id FROM items WHERE type = 'radical' AND (slug = '37' OR id = '37') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1101_ekor, id FROM items WHERE type = 'radical' AND (slug = '67' OR id = '67') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1102_alat, id FROM items WHERE type = 'radical' AND (slug = '23' OR id = '23') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1102_alat, id FROM items WHERE type = 'radical' AND (slug = '194' OR id = '194') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1102_alat, id FROM items WHERE type = 'radical' AND (slug = '106' OR id = '106') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1103_yakin, id FROM items WHERE type = 'radical' AND (slug = '54' OR id = '54') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1103_yakin, id FROM items WHERE type = 'radical' AND (slug = '76' OR id = '76') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1103_yakin, id FROM items WHERE type = 'radical' AND (slug = '240' OR id = '240') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1104_benci, id FROM items WHERE type = 'radical' AND (slug = '19' OR id = '19') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1104_benci, r_271_monalisa);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1105_individu, id FROM items WHERE type = 'radical' AND (slug = '75' OR id = '75') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1105_individu, id FROM items WHERE type = 'radical' AND (slug = '16' OR id = '16') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1105_individu, id FROM items WHERE type = 'radical' AND (slug = '69' OR id = '69') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1106_tekanan, id FROM items WHERE type = 'radical' AND (slug = '116' OR id = '116') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1106_tekanan, id FROM items WHERE type = 'radical' AND (slug = '17' OR id = '17') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1107_ada, id FROM items WHERE type = 'radical' AND (slug = '26' OR id = '26') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1107_ada, id FROM items WHERE type = 'radical' AND (slug = '8761' OR id = '8761') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1107_ada, id FROM items WHERE type = 'radical' AND (slug = '17' OR id = '17') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1108_mimpi, id FROM items WHERE type = 'radical' AND (slug = '90' OR id = '90') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1108_mimpi, id FROM items WHERE type = 'radical' AND (slug = '163' OR id = '163') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1108_mimpi, id FROM items WHERE type = 'radical' AND (slug = '76' OR id = '76') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1108_mimpi, id FROM items WHERE type = 'radical' AND (slug = '33' OR id = '33') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1109_melahirkan, id FROM items WHERE type = 'radical' AND (slug = '55' OR id = '55') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1109_melahirkan, id FROM items WHERE type = 'radical' AND (slug = '116' OR id = '116') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1109_melahirkan, id FROM items WHERE type = 'radical' AND (slug = '210' OR id = '210') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1110_menggulingkan, id FROM items WHERE type = 'radical' AND (slug = '75' OR id = '75') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1110_menggulingkan, r_274_tikus_tanah);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1110_menggulingkan, id FROM items WHERE type = 'radical' AND (slug = '128' OR id = '128') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1111_bau, id FROM items WHERE type = 'radical' AND (slug = '109' OR id = '109') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1111_bau, id FROM items WHERE type = 'radical' AND (slug = '18' OR id = '18') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1112_tebal, id FROM items WHERE type = 'radical' AND (slug = '116' OR id = '116') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1112_tebal, id FROM items WHERE type = 'radical' AND (slug = '22' OR id = '22') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1112_tebal, id FROM items WHERE type = 'radical' AND (slug = '34' OR id = '34') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1113_istri, id FROM items WHERE type = 'radical' AND (slug = '15' OR id = '15') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1113_istri, id FROM items WHERE type = 'radical' AND (slug = '105' OR id = '105') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1113_istri, id FROM items WHERE type = 'radical' AND (slug = '19' OR id = '19') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1114_pertimbangan, id FROM items WHERE type = 'radical' AND (slug = '117' OR id = '117') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1114_pertimbangan, r_383_kebenaran);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1115_kejahatan, id FROM items WHERE type = 'radical' AND (slug = '144' OR id = '144') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1115_kejahatan, id FROM items WHERE type = 'radical' AND (slug = '158' OR id = '158') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1116_kesalahan, id FROM items WHERE type = 'radical' AND (slug = '163' OR id = '163') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1116_kesalahan, id FROM items WHERE type = 'radical' AND (slug = '209' OR id = '209') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1117_mencegah, id FROM items WHERE type = 'radical' AND (slug = '176' OR id = '176') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1117_mencegah, id FROM items WHERE type = 'radical' AND (slug = '66' OR id = '66') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1119_teori, id FROM items WHERE type = 'radical' AND (slug = '117' OR id = '117') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1119_teori, id FROM items WHERE type = 'radical' AND (slug = '8764' OR id = '8764') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1119_teori, id FROM items WHERE type = 'radical' AND (slug = '1' OR id = '1') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1119_teori, id FROM items WHERE type = 'radical' AND (slug = '226' OR id = '226') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1120_lorong_waktu, id FROM items WHERE type = 'radical' AND (slug = '86' OR id = '86') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1120_lorong_waktu, id FROM items WHERE type = 'radical' AND (slug = '179' OR id = '179') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1296_menusuk, id FROM items WHERE type = 'radical' AND (slug = '23' OR id = '23') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1296_menusuk, id FROM items WHERE type = 'radical' AND (slug = '29' OR id = '29') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1296_menusuk, id FROM items WHERE type = 'radical' AND (slug = '128' OR id = '128') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3547_perjanjian, id FROM items WHERE type = 'kanji' AND (slug = '568' OR id = '568') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_3547_perjanjian, id FROM items WHERE type = 'kanji' AND (slug = '862' OR id = '862') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4035_kesadaran_diri, id FROM items WHERE type = 'kanji' AND (slug = '578' OR id = '578') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4035_kesadaran_diri, id FROM items WHERE type = 'kanji' AND (slug = '1025' OR id = '1025') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4114_mencuci_piring, id FROM items WHERE type = 'kanji' AND (slug = '540' OR id = '540') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4114_mencuci_piring, id FROM items WHERE type = 'kanji' AND (slug = '1043' OR id = '1043') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4181_menjadi_tertekan, k_1086_tertekan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4204_untuk_diperbarui, id FROM items WHERE type = 'kanji' AND (slug = '1082' OR id = '1082') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4221_untuk_menjadi_campuran, id FROM items WHERE type = 'kanji' AND (slug = '1078' OR id = '1078') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4254_menjadi_surplus, k_1094_kelebihan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4255_tidak_dibutuhkan, k_1094_kelebihan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4255_tidak_dibutuhkan, id FROM items WHERE type = 'kanji' AND (slug = '935' OR id = '935') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4257_pribadi, k_1105_individu);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4257_pribadi, id FROM items WHERE type = 'kanji' AND (slug = '444' OR id = '444') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4258_satu_hal_kecil, id FROM items WHERE type = 'kanji' AND (slug = '440' OR id = '440') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4258_satu_hal_kecil, k_1105_individu);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4259_kamar_pribadi, k_1105_individu);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4259_kamar_pribadi, id FROM items WHERE type = 'kanji' AND (slug = '635' OR id = '635') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4260_tiga_hal_kecil, id FROM items WHERE type = 'kanji' AND (slug = '449' OR id = '449') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4260_tiga_hal_kecil, k_1105_individu);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4261_untuk_mengetuk, k_1110_menggulingkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4262_masalah, id FROM items WHERE type = 'kanji' AND (slug = '974' OR id = '974') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4262_masalah, k_1110_menggulingkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4263_kebangkrutan, k_1110_menggulingkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4263_kebangkrutan, k_1109_melahirkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4264_peminjam, id FROM items WHERE type = 'kanji' AND (slug = '1039' OR id = '1039') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4264_peminjam, id FROM items WHERE type = 'kanji' AND (slug = '474' OR id = '474') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4265_tebal, k_1112_tebal);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4266_tekanan, k_1106_tekanan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4266_tekanan, id FROM items WHERE type = 'kanji' AND (slug = '447' OR id = '447') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4267_tekanan_darah, id FROM items WHERE type = 'kanji' AND (slug = '619' OR id = '619') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4267_tekanan_darah, k_1106_tekanan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4268_shiatsu, id FROM items WHERE type = 'kanji' AND (slug = '797' OR id = '797') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4268_shiatsu, k_1106_tekanan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4269_adanya, id FROM items WHERE type = 'kanji' AND (slug = '990' OR id = '990') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4269_adanya, k_1107_ada);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4271_realitas, id FROM items WHERE type = 'kanji' AND (slug = '715' OR id = '715') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4271_realitas, k_1107_ada);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4272_luar_negeri, k_1107_ada);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4272_luar_negeri, id FROM items WHERE type = 'kanji' AND (slug = '521' OR id = '521') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4273_tergila_gila, k_1108_mimpi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4273_tergila_gila, id FROM items WHERE type = 'kanji' AND (slug = '469' OR id = '469') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4274_mimpi_buruk, id FROM items WHERE type = 'kanji' AND (slug = '829' OR id = '829') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4274_mimpi_buruk, k_1108_mimpi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4275_mimpi, k_1108_mimpi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4279_istri, k_1113_istri);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4280_suami_istri, id FROM items WHERE type = 'kanji' AND (slug = '945' OR id = '945') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4280_suami_istri, k_1113_istri);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4281_istri_dan_anak, k_1113_istri);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4281_istri_dan_anak, id FROM items WHERE type = 'kanji' AND (slug = '462' OR id = '462') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4282_poligami, id FROM items WHERE type = 'kanji' AND (slug = '440' OR id = '440') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4282_poligami, id FROM items WHERE type = 'kanji' AND (slug = '945' OR id = '945') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4282_poligami, id FROM items WHERE type = 'kanji' AND (slug = '570' OR id = '570') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4282_poligami, k_1113_istri);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4283_benci, k_1104_benci);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4284_benci, k_1104_benci);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4285_suasana_hati, k_1090_mesin);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4285_suasana_hati, k_1104_benci);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4286_kecurigaan, k_1104_benci);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4286_kecurigaan, id FROM items WHERE type = 'kanji' AND (slug = '894' OR id = '894') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4287_mesin_penjawab, id FROM items WHERE type = 'kanji' AND (slug = '986' OR id = '986') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4287_mesin_penjawab, id FROM items WHERE type = 'kanji' AND (slug = '968' OR id = '968') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4287_mesin_penjawab, id FROM items WHERE type = 'kanji' AND (slug = '696' OR id = '696') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4287_mesin_penjawab, id FROM items WHERE type = 'kanji' AND (slug = '706' OR id = '706') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4287_mesin_penjawab, id FROM items WHERE type = 'kanji' AND (slug = '705' OR id = '705') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4288_polusi, id FROM items WHERE type = 'kanji' AND (slug = '499' OR id = '499') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4288_polusi, k_1093_kerusakan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4289_kerusakan_akibat_banjir, id FROM items WHERE type = 'kanji' AND (slug = '479' OR id = '479') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4289_kerusakan_akibat_banjir, k_1093_kerusakan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4290_tidak_berbahaya, id FROM items WHERE type = 'kanji' AND (slug = '1008' OR id = '1008') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4290_tidak_berbahaya, k_1093_kerusakan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4291_pantat, k_1100_pantat);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4293_busur_dan_anak_panah, id FROM items WHERE type = 'kanji' AND (slug = '1030' OR id = '1030') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4293_busur_dan_anak_panah, id FROM items WHERE type = 'kanji' AND (slug = '526' OR id = '526') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4294_barang_yang_terlupakan, id FROM items WHERE type = 'kanji' AND (slug = '1042' OR id = '1042') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4294_barang_yang_terlupakan, id FROM items WHERE type = 'kanji' AND (slug = '718' OR id = '718') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4295_mesin, k_1090_mesin);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4295_mesin, k_1102_alat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4296_pesawat_terbang, k_1092_terbang);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4296_pesawat_terbang, id FROM items WHERE type = 'kanji' AND (slug = '580' OR id = '580') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4296_pesawat_terbang, k_1090_mesin);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4297_krisis, id FROM items WHERE type = 'kanji' AND (slug = '989' OR id = '989') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4297_krisis, k_1090_mesin);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4298_bencana, k_1089_bencana);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4299_bencana_alam, k_1089_bencana);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4299_bencana_alam, k_1093_kerusakan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4300_bencana_kebakaran, id FROM items WHERE type = 'kanji' AND (slug = '480' OR id = '480') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4300_bencana_kebakaran, k_1089_bencana);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4301_kemalangan, k_1089_bencana);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4301_kemalangan, k_1095_sulit);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4302_bencana_gempa_bumi, k_1099_gempa_bumi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4302_bencana_gempa_bumi, k_1089_bencana);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4303_berasap, id FROM items WHERE type = 'kanji' AND (slug = '1056' OR id = '1056') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4304_untuk_melakukan_kejahatan, k_1115_kejahatan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4305_pelaku, k_1115_kejahatan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4305_pelaku, id FROM items WHERE type = 'kanji' AND (slug = '444' OR id = '444') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4306_kaki_tangan, id FROM items WHERE type = 'kanji' AND (slug = '778' OR id = '778') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4306_kaki_tangan, k_1115_kejahatan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4306_kaki_tangan, id FROM items WHERE type = 'kanji' AND (slug = '690' OR id = '690') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4307_kemungkinan, k_1103_yakin);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4307_kemungkinan, k_1091_persen);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4308_perbandingan, id FROM items WHERE type = 'kanji' AND (slug = '1088' OR id = '1088') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4308_perbandingan, k_1091_persen);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4310_tentu, k_1103_yakin);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4311_tepat, id FROM items WHERE type = 'kanji' AND (slug = '488' OR id = '488') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4311_tepat, k_1103_yakin);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4312_jangan_masuk, id FROM items WHERE type = 'kanji' AND (slug = '494' OR id = '494') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4312_jangan_masuk, id FROM items WHERE type = 'kanji' AND (slug = '445' OR id = '445') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4312_jangan_masuk, id FROM items WHERE type = 'kanji' AND (slug = '1054' OR id = '1054') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4312_jangan_masuk, id FROM items WHERE type = 'kanji' AND (slug = '514' OR id = '514') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4314_permata_tersembunyi, id FROM items WHERE type = 'kanji' AND (slug = '1118' OR id = '1118') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4314_permata_tersembunyi, id FROM items WHERE type = 'kanji' AND (slug = '694' OR id = '694') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4315_lubang_hidung, id FROM items WHERE type = 'kanji' AND (slug = '998' OR id = '998') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4315_lubang_hidung, id FROM items WHERE type = 'kanji' AND (slug = '1118' OR id = '1118') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4316_belut_conger, id FROM items WHERE type = 'kanji' AND (slug = '1118' OR id = '1118') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4316_belut_conger, id FROM items WHERE type = 'kanji' AND (slug = '462' OR id = '462') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4318_pengalaman, k_1120_lorong_waktu);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4318_pengalaman, id FROM items WHERE type = 'kanji' AND (slug = '1048' OR id = '1048') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4320_dosa, k_1116_kesalahan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4321_bersalah, id FROM items WHERE type = 'kanji' AND (slug = '615' OR id = '615') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4321_bersalah, k_1116_kesalahan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4322_kejahatan, k_1115_kejahatan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4322_kejahatan, k_1116_kesalahan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4323_bau, k_1111_bau);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4324_kerusakan, k_1097_menutupi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4324_kerusakan, k_1093_kerusakan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4325_kelonggaran, k_1094_kelebihan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4325_kelonggaran, k_1098_melimpah);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4326_kaya, k_1098_melimpah);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4326_kaya, id FROM items WHERE type = 'kanji' AND (slug = '867' OR id = '867') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4327_tesis, k_1119_teori);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4327_tesis, id FROM items WHERE type = 'kanji' AND (slug = '475' OR id = '475') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4328_teori, id FROM items WHERE type = 'kanji' AND (slug = '669' OR id = '669') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4328_teori, k_1119_teori);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4329_logika, k_1119_teori);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4329_logika, id FROM items WHERE type = 'kanji' AND (slug = '669' OR id = '669') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4330_pertemuan, id FROM items WHERE type = 'kanji' AND (slug = '566' OR id = '566') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4330_pertemuan, k_1114_pertimbangan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4331_argumen, k_1114_pertimbangan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4331_argumen, k_1119_teori);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4332_rasa_takjub, id FROM items WHERE type = 'kanji' AND (slug = '563' OR id = '563') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4332_rasa_takjub, id FROM items WHERE type = 'kanji' AND (slug = '637' OR id = '637') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4332_rasa_takjub, k_1114_pertimbangan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4333_pencegahan, k_1117_mencegah);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4333_pencegahan, id FROM items WHERE type = 'kanji' AND (slug = '514' OR id = '514') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4334_untuk_bertahan_melawan, k_1117_mencegah);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4337_pencegahan, id FROM items WHERE type = 'kanji' AND (slug = '854' OR id = '854') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4337_pencegahan, k_1117_mencegah);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4338_kesulitan, k_1086_tertekan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4338_kesulitan, k_1095_sulit);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4339_kritik, id FROM items WHERE type = 'kanji' AND (slug = '1013' OR id = '1013') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4339_kritik, k_1095_sulit);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4340_sulit, k_1095_sulit);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4341_gempa_bumi, id FROM items WHERE type = 'kanji' AND (slug = '608' OR id = '608') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4341_gempa_bumi, k_1099_gempa_bumi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4342_intensitas_gempa, k_1099_gempa_bumi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4342_intensitas_gempa, id FROM items WHERE type = 'kanji' AND (slug = '725' OR id = '725') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4343_gempa_susulan, k_1094_kelebihan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4343_gempa_susulan, k_1099_gempa_bumi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4344_antropologi, id FROM items WHERE type = 'kanji' AND (slug = '444' OR id = '444') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4344_antropologi, id FROM items WHERE type = 'kanji' AND (slug = '1034' OR id = '1034') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4344_antropologi, id FROM items WHERE type = 'kanji' AND (slug = '599' OR id = '599') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4345_untuk_terbang, k_1092_terbang);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4353_cuci_tangan, id FROM items WHERE type = 'kanji' AND (slug = '474' OR id = '474') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4353_cuci_tangan, id FROM items WHERE type = 'kanji' AND (slug = '1043' OR id = '1043') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4356_maag, id FROM items WHERE type = 'kanji' AND (slug = '1044' OR id = '1044') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4356_maag, id FROM items WHERE type = 'kanji' AND (slug = '1040' OR id = '1040') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4357_tak_terpisahkan, id FROM items WHERE type = 'kanji' AND (slug = '563' OR id = '563') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4357_tak_terpisahkan, id FROM items WHERE type = 'kanji' AND (slug = '1049' OR id = '1049') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4357_tak_terpisahkan, id FROM items WHERE type = 'kanji' AND (slug = '501' OR id = '501') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4363_kemungkinan, id FROM items WHERE type = 'kanji' AND (slug = '1049' OR id = '1049') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4363_kemungkinan, id FROM items WHERE type = 'kanji' AND (slug = '921' OR id = '921') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4363_kemungkinan, id FROM items WHERE type = 'kanji' AND (slug = '918' OR id = '918') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4364_onyomi_dan_kunyomi, id FROM items WHERE type = 'kanji' AND (slug = '606' OR id = '606') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4364_onyomi_dan_kunyomi, id FROM items WHERE type = 'kanji' AND (slug = '1028' OR id = '1028') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4365_rakyat, id FROM items WHERE type = 'kanji' AND (slug = '444' OR id = '444') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4365_rakyat, id FROM items WHERE type = 'kanji' AND (slug = '1033' OR id = '1033') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4366_diam_diam, id FROM items WHERE type = 'kanji' AND (slug = '1052' OR id = '1052') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4366_diam_diam, id FROM items WHERE type = 'kanji' AND (slug = '856' OR id = '856') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4369_untuk_mengeluh, id FROM items WHERE type = 'kanji' AND (slug = '475' OR id = '475') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4369_untuk_mengeluh, id FROM items WHERE type = 'kanji' AND (slug = '1053' OR id = '1053') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4370_untuk_dipanggang, id FROM items WHERE type = 'kanji' AND (slug = '1040' OR id = '1040') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4371_perangkat_elektronik, id FROM items WHERE type = 'kanji' AND (slug = '706' OR id = '706') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4371_perangkat_elektronik, id FROM items WHERE type = 'kanji' AND (slug = '462' OR id = '462') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4371_perangkat_elektronik, k_1090_mesin);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_4371_perangkat_elektronik, id FROM items WHERE type = 'kanji' AND (slug = '876' OR id = '876') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_4895_untuk_menusuk_sesuatu, k_1296_menusuk);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5464_rute, k_1120_lorong_waktu);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5464_rute, id FROM items WHERE type = 'kanji' AND (slug = '758' OR id = '758') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5837_untuk_menutup_sesuatu, id FROM items WHERE type = 'kanji' AND (slug = '1514' OR id = '1514') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7485_pembaca, id FROM items WHERE type = 'kanji' AND (slug = '765' OR id = '765') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7485_pembaca, id FROM items WHERE type = 'kanji' AND (slug = '690' OR id = '690') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7503_tempat_tinggal, k_1107_ada);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7503_tempat_tinggal, id FROM items WHERE type = 'kanji' AND (slug = '986' OR id = '986') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7553_mesin, k_1090_mesin);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7594_kontrol_penuh, id FROM items WHERE type = 'kanji' AND (slug = '578' OR id = '578') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7594_kontrol_penuh, k_1107_ada);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7648_diet, k_1114_pertimbangan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7648_diet, id FROM items WHERE type = 'kanji' AND (slug = '566' OR id = '566') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7705_ruang_konferensi, id FROM items WHERE type = 'kanji' AND (slug = '566' OR id = '566') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7705_ruang_konferensi, k_1114_pertimbangan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7705_ruang_konferensi, id FROM items WHERE type = 'kanji' AND (slug = '635' OR id = '635') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7706_anggota_diet, k_1114_pertimbangan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7706_anggota_diet, id FROM items WHERE type = 'kanji' AND (slug = '821' OR id = '821') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7707_ekor, k_1101_ekor);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7708_akhir_sebuah_garis, id FROM items WHERE type = 'kanji' AND (slug = '774' OR id = '774') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7708_akhir_sebuah_garis, id FROM items WHERE type = 'kanji' AND (slug = '636' OR id = '636') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7708_akhir_sebuah_garis, k_1101_ekor);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7762_ramalan_cuaca, id FROM items WHERE type = 'kanji' AND (slug = '473' OR id = '473') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7762_ramalan_cuaca, id FROM items WHERE type = 'kanji' AND (slug = '548' OR id = '548') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7762_ramalan_cuaca, id FROM items WHERE type = 'kanji' AND (slug = '854' OR id = '854') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7762_ramalan_cuaca, id FROM items WHERE type = 'kanji' AND (slug = '1035' OR id = '1035') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7763_menjijikkan, k_1104_benci);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7763_menjijikkan, id FROM items WHERE type = 'kanji' AND (slug = '829' OR id = '829') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8675_ketua, k_1114_pertimbangan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8675_ketua, id FROM items WHERE type = 'kanji' AND (slug = '632' OR id = '632') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8711_sekolah_menengah_atas, id FROM items WHERE type = 'kanji' AND (slug = '666' OR id = '666') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8711_sekolah_menengah_atas, id FROM items WHERE type = 'kanji' AND (slug = '1037' OR id = '1037') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8711_sekolah_menengah_atas, id FROM items WHERE type = 'kanji' AND (slug = '599' OR id = '599') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8711_sekolah_menengah_atas, id FROM items WHERE type = 'kanji' AND (slug = '658' OR id = '658') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8850_batuk_jatuh, id FROM items WHERE type = 'kanji' AND (slug = '8838' OR id = '8838') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8850_batuk_jatuh, id FROM items WHERE type = 'kanji' AND (slug = '8840' OR id = '8840') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8953_untuk_dilahirkan, k_1109_melahirkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_9067_melalui, k_1120_lorong_waktu);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9067_melalui, id FROM items WHERE type = 'kanji' AND (slug = '648' OR id = '648') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9071_benih, id FROM items WHERE type = 'kanji' AND (slug = '1032' OR id = '1032') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9085_akan_pergi, id FROM items WHERE type = 'kanji' AND (slug = '1008' OR id = '1008') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9253_untuk_menghubungkan_sesuatu, id FROM items WHERE type = 'kanji' AND (slug = '9246' OR id = '9246') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9348_untuk_menghasilkan_buah, id FROM items WHERE type = 'kanji' AND (slug = '715' OR id = '715') LIMIT 1;

END $$;
