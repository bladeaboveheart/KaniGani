-- ====================================================
-- KaniGani — Seed Data Level 34 (v2, relasional)
-- Auto-generated with Indonesian Slugs
-- ====================================================

DO $$
DECLARE
  -- ============ RADICAL IDs (Level 34) ============
  r_348_melontarkan UUID; r_349_anggota UUID; r_350_cakar UUID; r_351_mengiris UUID; r_358_berharga UUID;

  -- ============ KANJI IDs (Level 34) ============
  k_1545_kesalahan UUID; k_1546_organ_dalam UUID; k_1547_berharga UUID; k_1549_tempat_nasi UUID; k_1550_muntah UUID; k_1551_bung UUID; k_1552_budak UUID; k_1554_menyusut UUID; k_1555_murni UUID; k_1556_vertikal UUID; k_1557_bergaya UUID; k_1558_suci UUID; k_1559_magnet UUID; k_1560_merah_tua UUID; k_1561_menembak UUID; k_1562_tirai UUID; k_1563_memuja UUID; k_1564_menyarankan UUID; k_1565_menyimpulkan UUID; k_1566_mengayunkan UUID; k_1567_jalankan_bersamaan UUID; k_1568_asal UUID; k_1570_bekerja UUID; k_1571_sukacita UUID; k_1572_izin UUID; k_1573_kehilangan UUID; k_1574_cabang UUID; k_1575_cakar UUID; k_1576_kacang_polong UUID; k_1577_mengukir UUID; k_1578_membusuk UUID; k_8864_tipis UUID; k_8968_batuk UUID;

  -- ============ VOCABULARY IDs (Level 34) ============
  v_2592_lama_tak_jumpa UUID; v_5616_peniruan UUID; v_5714_jamak UUID; v_5718_jantung UUID; v_5719_paru_paru UUID; v_5720_organ_dalam UUID; v_5721_untuk_bergerak UUID; v_5722_untuk_menyalip UUID; v_5723_kakek_nenek UUID; v_5724_pemilik_hewan_peliharaan UUID; v_5726_untuk_menyakiti_seseorang UUID; v_5727_sekali_pakai UUID; v_5728_untuk_membuang UUID; v_5729_untuk_dimasukkan UUID; v_5730_untuk_melamar UUID; v_5731_bunuh_diri_dengan_kereta_api UUID; v_5732_untuk_menulis UUID; v_5733_kerumunan_orang UUID; v_5734_noda UUID; v_5735_untuk_dicelup UUID; v_5736_untuk_membuat_kotor UUID; v_5737_mengizinkan UUID; v_5738_untuk_mengisi UUID; v_5739_selamat_datang UUID; v_5740_golongan_darah UUID; v_5741_tidak_ada_bunga UUID; v_5742_setuju UUID; v_5743_salah_paham UUID; v_5744_salah_ketik UUID; v_5745_penyalahgunaan UUID; v_5746_kesalahan_hitung UUID; v_5748_kakak UUID; v_5752_menyerah UUID; v_5754_mangkuk_daging_sapi UUID; v_5756_tempat_nasi UUID; v_5757_untuk_muntah UUID; v_5758_bung UUID; v_5759_budak UUID; v_5763_untuk_menyusut UUID; v_5764_pengurangan UUID; v_5765_sederhana UUID; v_5766_najis UUID; v_5767_semua_wol UUID; v_5768_vertikal UUID; v_5769_penulisan_vertikal UUID; v_5770_panjang_lebar UUID; v_5771_murni UUID; v_5772_bergaya UUID; v_5773_kekudusan UUID; v_5774_alkitab UUID; v_5775_hari_suci UUID; v_5776_tanah_suci UUID; v_5777_daya_tarik UUID; v_5778_magnet UUID; v_5779_medan_magnet UUID; v_5781_teh_hitam UUID; v_5782_tembakan UUID; v_5783_cerminan UUID; v_5784_untuk_meluncurkan UUID; v_5785_radiasi UUID; v_5786_tirai UUID; v_5787_subtitle UUID; v_5788_penarik_kawat UUID; v_5789_untuk_menyembah UUID; v_5790_untuk_dilihat UUID; v_5791_perkiraan UUID; v_5792_pemikiran UUID; v_5793_rekomendasi UUID; v_5794_rekomendasi_mandiri UUID; v_5795_untuk_merekomendasikan UUID; v_5796_untuk_memamerkan UUID; v_5797_memerintah UUID; v_5798_pesisir UUID; v_5799_perairan_pantai UUID; v_5800_sepanjang_jalur_kereta_api UUID; v_5801_untuk_berlari_bersamaan UUID; v_5802_asal UUID; v_5803_genji UUID; v_5804_sumber_daya UUID; v_5805_pusat_gempa UUID; v_5813_untuk_dipekerjakan_di UUID; v_5814_bepergian UUID; v_5815_pekerjaan_penuh_waktu UUID; v_5816_untuk_dengan_rendah_hati_mendengar UUID; v_5817_izin UUID; v_5818_persetujuan UUID; v_5819_distrik_hiburan UUID; v_5820_membahayakan UUID; v_5821_kerugian UUID; v_5822_kerusakan UUID; v_5823_kerugian_besar UUID; v_5824_kerugian_total UUID; v_5825_cabang UUID; v_5826_kacang_polong UUID; v_5827_kacang_azuki UUID; v_5828_natto UUID; v_5829_membusuk UUID; v_5830_korosi UUID; v_5831_penguraian UUID; v_5832_cakar UUID; v_5833_gunting_kuku UUID; v_5834_untuk_mengukir UUID; v_5835_jadwal UUID; v_5836_serius UUID; v_7473_kacamata UUID; v_7608_bakufu UUID; v_7722_pertemuan UUID; v_8725_menjadi_rusak UUID; v_8810_selanjutnya UUID; v_8878_menjadi_kurus UUID; v_8879_bersandar UUID; v_8976_selangkangan UUID; v_8986_batuk UUID; v_9291_dedaunan_musim_gugur UUID; v_9332_menyelam UUID; v_9339_handuk_tangan UUID; v_9440_mencari_uang UUID; v_9463_untuk_meniru_identitas_secara_palsu UUID; v_9484_senter UUID;

BEGIN

  DELETE FROM items WHERE level = 34;

  -- 1. RADICALS
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '呉', 'melontarkan', 34, 1, 'Lihat batu di <radical>ketapel</radikal>? Ia bahkan mempunyai kaki kecil untuk menahannya agar tetap stabil sehingga dapat melontarkan lebih baik.')
    RETURNING id INTO r_348_melontarkan;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '員', 'anggota', 34, 2, 'Radikal ini sama dengan kanji. Artinya <radikal>anggota</radikal>.')
    RETURNING id INTO r_349_anggota;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '爪', 'cakar', 34, 3, 'Ini sudah terlihat seperti <radical>cakar</radical>, membuatnya cukup mudah!')
    RETURNING id INTO r_350_cakar;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '亥', 'mengiris', 34, 4, 'Lihat pria itu? Lihat bagaimana dia dipotong setengah??? Itu pasti merupakan satu <radikal>irisan</radikal> yang hebat untuk melakukan hal itu pada seseorang.')
    RETURNING id INTO r_351_mengiris;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '貴', 'berharga', 34, 5, 'Ada kerang, tapi ada semacam tutup kepala yang mewah. Apakah itu… sebuah mahkota, mungkin? Kelihatannya sangat <radikal>berharga</radikal> — dan kerang yang memakainya pasti lebih berharga lagi agar layak mendapat simbol status seperti itu!

Alternatifnya, Anda bisa mengingat radikal ini dengan komponennya: di tengah tanah ada kerang. Mengapa? Karena itu sangat berharga. Tempat paling aman untuk menyimpan kerang berharga adalah terkubur di tengah tanah.')
    RETURNING id INTO r_358_berharga;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_348_melontarkan, 'Melontarkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_349_anggota, 'Anggota', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_350_cakar, 'Cakar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_351_mengiris, 'Mengiris', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_358_berharga, 'Berharga', true, true);

  -- 2. KANJIS
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '誤', 'kesalahan', 34, 6, 'Mereka <radikal>mengatakan</radikal> menembakkan <radikal>ketapel</radikal> secara tidak sengaja adalah <kanji>kesalahan</kanji> yang tidak dapat dimaafkan. Mereka bilang kamu menembakkan ketapel ke kastilmu sendiri. Meskipun itu sebuah kecelakaan, tetap saja itu adalah kesalahan yang tidak akan pernah Anda maafkan.', '<kanji>Kesalahan</kanji> ini memperingatkan <reading>Go</reading>dzilla (ご), yang mengira ini adalah waktunya menghancurkan kota. Dia meluncur melintasi perbukitan, melihat di mana Anda secara keliru melemparkan orang-orang Anda sendiri, dan mulai menginjak-injak sisanya untuk Anda.')
    RETURNING id INTO k_1545_kesalahan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '臓', 'organ-dalam', 34, 7, '<radical>bulan</radikal> <radical>gudang</radikal> Anda adalah gudang lain yang Anda miliki. Ingat bagaimana gudang biasa Anda menyimpan zombie (dari kanji 蔵?). Gudang bulan Anda ada di bulan, dan berisi <kanji>organ dalam</kanji>.', 'Dari mana kamu mendapatkan semua <kanji>organ dalam</kanji> ini? Anda sebenarnya memanennya dari <reading>zo</reading>mbies (ぞう) dari gudang Anda yang lain.')
    RETURNING id INTO k_1546_organ_dalam;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '貴', 'berharga', 34, 8, 'Kanji <radikal>berharga</radikal> dan kanji <kanji>berharga</kanji> adalah sama!', 'Kebanyakan hal <kanji>berharga</kanji> memerlukan <reading>key</reading> (き) untuk dapat diakses. Maksudku, kamu harus menyimpan barang-barang berhargamu dengan aman, bukan? Yang terbaik adalah menyimpannya di tempat terkunci.')
    RETURNING id INTO k_1547_berharga;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '丼', 'tempat-nasi', 34, 9, 'Ke dalam <radical>well</radical>, <radical>setetes</radical> nasi jatuh dari <kanji>mangkuk nasi</kanji> Anda. Anda sedang makan dari mangkuk nasi Anda di sisi sumur, dan ada nasi yang jatuh dari mangkuk nasi Anda dan setetes nasi ini terus berjatuhan ke bawah.', 'Saat itu, <reading>don</reading> (どん) dari mafia lokal Anda muncul, mencuri <kanji>mangkuk nasi</kanji> Anda, dan mendorong Anda ke dalam sumur. Anda berada di sisi buruk sang don, jadi dia datang untuk memberi Anda pelajaran. Don mencuri mangkuk nasi Anda dan mendorong Anda ke dalam sumur.')
    RETURNING id INTO k_1549_tempat_nasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '吐', 'muntah', 34, 10, 'Jika <radical>mulut</radical> Anda mengandung <radical>kotoran</radical>, Anda akan <kanji>muntah</kanji>. Itu hanya fakta.', 'Saat Anda <kanji>muntah</kanji> terdengar seperti Anda berteriak, "<reading>Hah</reading> (は)!" Kemudian semua muntahan kotoran keluar secara bergelombang. Ini bukan sekedar tertawa "hah" dan lebih seperti oh tidak, aku muntah "hah."')
    RETURNING id INTO k_1550_muntah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '奴', 'bung', 34, 11, '<radikal>wanita</radikal> yang duduk di <radikal>bangku</radikal> itu sebenarnya adalah <kanji>pria</kanji>. Oh ups! Anda mengira dia seorang wanita karena rambutnya yang panjang dan cara dia duduk. Mungkin Anda tidak seharusnya menilai orang berdasarkan penampilannya!', 'Anda baru mengetahui <kanji>pria</kanji> ini bukan seorang wanita ketika <reading>do</reading>g (ど) berlari dan pria itu berdiri. Dia mulai mengusap wajah anjing itu sambil berkata, "Siapa anak baik? Siapa anak baik? Bukan kamu! Aku! Akulah anak laki-laki terbaik di antara mereka semua. Karena aku laki-laki, yang terbaik dari semua laki-laki! HAHAHAHA!"')
    RETURNING id INTO k_1551_bung;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '隷', 'budak', 34, 12, 'Seorang <radical>samurai</radical> menggunakan <radical>jackhammer</radical> sementara <radical>stick</radical> yang memegang <radical>Wolverine</radical> menyesap <radical>water</radical> dan mengawasinya. Jelas sekali, dia adalah <kanji>budak</kanji> Wolverine, dan dia dipaksa melakukan pekerjaan kasar yang melelahkan yang tidak sesuai dengan pangkat samurainya.', 'Anda tidak suka melihat <kanji>budak</kanji>. Saat Anda lewat, Anda memberikan pistol <reading>ray</reading> (れい) kepada samurai yang diperbudak sehingga dia dapat membebaskan dirinya.')
    RETURNING id INTO k_1552_budak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '縮', 'menyusut', 34, 13, 'Sebuah <radikal>benang</radikal> ajaib jatuh dari <radikal>atap</radikal> ke <radikal>pemimpin</radikal> dari <radikal>seratus</radikal> orang, menyebabkan dia <kanji>menyusut</kanji>!', 'Saat <kanji>pemimpinnya menyusut</kanji>, seratus orang mulai berteriak dan berlarian ke seluruh tempat. Hasilnya, semuanya <read>terguncang</reading> (しゅく). Terutama pemimpin yang miskin dan menyusut, yang paling sering tersingkir.')
    RETURNING id INTO k_1554_menyusut;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '純', 'murni', 34, 14, 'Jika terbuat dari <radical>benang</radikal>, <radical>barak</radikal> Anda akan <kanji>murni</kanji>. Jika Anda membangunnya dari tanah liat, batu bata, atau kayu, pasti ada kotoran di dalamnya. Buatlah dari benang agar tetap murni dari... yah, kotoran.', 'Sayangnya, barak benang <kanji>murni</kanji> ini hanya dapat digunakan pada bulan <reading>Juni</reading> (じゅん). Pada waktu lain sepanjang tahun akan terjadi salju, hujan, dan lumpur yang akan masuk ke dalam barak murni dan merusaknya. Tapi bulan Juni adalah bulan terbersih dan paling murni, jadi Anda bisa menggunakannya saat itu juga.')
    RETURNING id INTO k_1555_murni;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '縦', 'vertikal', 34, 15, 'Saat <radical>benang</radikal> <radikal>berkeliaran</radikal> di <radikal>tanduk</radikal> <radikal>rak mantel</radikal>, selalu <kanji>vertikal</kanji>. Yang saya maksud dengan berkeliaran adalah berkeliaran, dan yang saya maksud dengan tanduk adalah potongan-potongan kecil yang menempel di rak mantel tempat Anda menggantungkan benang vertikal. Jelas sekali.', 'Apakah benang akan digantung <kanji>vertikal</kanji> tergantung pada bagaimana Anda <membaca>立て</reading>る (たて) rak mantel Anda. Jika Anda menata rak mantel dengan benar, benangnya akan menggantung secara vertikal sempurna. Di sisi lain, jika kamu melakukannya dengan sembarangan, segalanya mungkin akan menjadi diagonal dan aneh.')
    RETURNING id INTO k_1556_vertikal;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '粋', 'bergaya', 34, 16, 'Ada beberapa <radical>nasi</radical> dalam bentuk <radical>sembilan</radical> pada <radical>salib</radical> dan ini <kanji>bergaya</kanji>. Butir-butir beras tersebut disusun membentuk angka sembilan. Nomor sembilan ini ditampilkan dengan jelas di salib, dan sangat bergaya untuk dibawa kemana-mana dan dilihat bersamanya.', 'Ini juga <kanji>bergaya</kanji> untuk <reading>mengusir</reading>ng (すい) tanda silang sambil menunggu sesuatu. Anda sedang menunggu di halte bus sehingga Anda mengayunkan salib dengan kasar. Anda mengayunkannya dengan sangat keras hingga nasinya beterbangan!')
    RETURNING id INTO k_1557_bergaya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '聖', 'suci', 34, 17, '<radikal>telinga</radikal> dan <radikal>mulut</radikal> seorang <radikal>raja</radikal> adalah <kanji>suci</kanji>. Raja mempunyai pendengaran yang suci dan kemampuan makan yang suci. Raja ini ilahi.', 'Raja <kanji>suci</kanji> ini telah mendengar tentangmu dan <reading>sa</reading>ber (せい) spesialmu yang bersinar dengan cahaya biru murni. Secara khusus, raja suci ingin menggunakannya pada makanannya!')
    RETURNING id INTO k_1558_suci;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '磁', 'magnet', 34, 18, 'Melihat <radical>batu</radical> dan beberapa <radical>tanduk</radical> di <radical>tanah</radical> di samping sepotong <radical>kotoran</radikal> dan sepotong <radikal>kotoran</radikal> lainnya, Anda mencoba mengambil masing-masing dengan <kanji>magnet</kanji>. Magnet gagal mengambil kotoran apa pun. Magnetnya juga tidak menarik tanduknya. Tapi tunggu! Magnet mengambil batu itu!', 'Anda sangat gembira karena telah mengangkat sesuatu dengan <kanji>magnet</kanji> Anda. Sains itu keren! Tapi kemudian Anda mendengar seseorang tertawa di belakang Anda. Itu <read>Je</reading>sus (じ)! Selama ini Yesus menggunakan sihirnya untuk mengangkat batu itu, itu bukan magnet Anda. Sialan, Yesus! Anda telah membodohi saya untuk terakhir kalinya!')
    RETURNING id INTO k_1559_magnet;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '紅', 'merah-tua', 34, 19, 'Anda menggunakan <radical>thread</radical> dalam proyek <radical>konstruksi</radical> untuk menyatukan semuanya. Warna benangnya adalah <kanji>merah tua</kanji>, dan memberikan segala sesuatunya tampilan <kanji>merah tua</kanji>.', 'Anda sudah selesai, dan seluruh bangunan berwarna <kanji>merah tua</kanji> <kanji>merah</kanji> (dibutuhkan banyak benang untuk menahan seluruh bangunan pada tempatnya). Saatnya menunjukkan kepada klien, Kaisar <reading>こう</reading>いち, produk akhirnya.')
    RETURNING id INTO k_1560_merah_tua;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '射', 'menembak', 34, 20, 'Anda perlu melakukan <radical>tubuh</radical> <radical>pengukuran</radical> sebelum Anda dapat <kanji>memotret</kanji>. Entah itu untuk pemotretan, Anda akan menembak mereka dengan pistol, atau jika Anda akan memotret mereka dengan radiasi penuh untuk sinar-X, Anda memerlukan pengukuran yang tepat pada tubuh tersebut terlebih dahulu.', '<kanji>pemotretan</kanji> ini dilakukan oleh seorang <reading>sha</reading>man (しゃ). Dia tidak hanya melakukan pengukuran tubuh untuk pengambilan gambar, tetapi dia juga akan menembak Anda dengan suntikan agar Anda tidak terkena flu.')
    RETURNING id INTO k_1561_menembak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '幕', 'tirai', 34, 21, 'Di <radical>rumah kaca</radical>, <radical>handuk</radical> menjadi <kanji>tirai</kanji> segera setelah Anda menggantungnya. Rumah kaca terbuat dari jendela, semuanya kaca, tidak ada dinding. Jadi ketika Anda menaruh handuk di sana, itu berubah menjadi tirai. Lagipula, ia tidak punya pilihan selain menutup jendela.', 'Anda menggantung <kanji>tirai</kanji> handuk ini karena Anda memerlukan tempat yang tenang untuk makan <read>Mac</reading> Besar (まく). Tapi kamu sedikit malu. Big Mac tidak terlalu baik untuk Anda, tetapi rumah kaca bodoh ini memiliki terlalu banyak jendela dan semua orang dapat melihat Anda menjejali wajah Anda. Jadi di situlah peran tirai handuk.')
    RETURNING id INTO k_1562_tirai;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '拝', 'memuja', 34, 22, 'Ambil <radical>jari</radical> Anda dan <radical>keringkan</radical>. Lalu <radikal>keringkan</radikal> lagi. Inilah yang Anda lakukan ketika Anda sedang <kanji>beribadah</kanji>. Sekali anda masuk ke tempat ibadah anda, dan sekali lagi sebelum anda berangkat. Jari-jarimu sangat berkeringat, dan kamu tidak bisa menyembah siapa pun atau apa pun jika tanganmu basah. Jadi kamu mengeringkannya!', 'Setelah Anda kering dan berada di mana pun <kanji>ibadah</kanji> Anda berada, Anda mulai dengan <reading>hai</reading>ku (はい). Sebenarnya semua tempat ibadah mempunyai versi haikunya masing-masing, dan aturan 5-7-5 hanyalah pedoman, jadi semua orang melakukannya dengan hampir benar.')
    RETURNING id INTO k_1563_memuja;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '薦', 'menyarankan', 34, 23, 'Anda ingin beberapa <radical>bunga</radical> diletakkan di <radical>kanopi</radical> di atas <radical>helikopter</radical> Anda untuk mengusir <radical>burung</radical>, jadi Anda bertanya kepada orang-orang apa yang akan <kanji>rekomendasikan</kanji>.', 'Anda meminta <kanji>rekomendasi</kanji>asi dari <reading>cen</reading>taur (せん) pemilik toko bunga setempat. Sekarang dia berjalan mengitari kanopi helikopter Anda dan menatap burung-burung sambil mengangguk.')
    RETURNING id INTO k_1564_menyarankan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '推', 'menyimpulkan', 34, 24, 'Jika <radical>jari</radical> pada <radical>kalkun</radical> menunjuk tepat ke arah Anda, Anda dapat <kanji>menyimpulkan</kanji> bahwa ia ingin membalas dendam. Kalkun ini tahu kamu membunuh saudaranya saat makan malam tadi malam, dan sekarang dia akan membuatmu membayar. Anda menyimpulkan bahwa kalkun ini akan mengambil jari-jarinya dan melingkarkannya di leher Anda.', 'Anda dapat <kanji>menyimpulkan</kanji> rencana kalkun, jadi sekarang giliran Anda. Anda melihat sekeliling dan melihat satu-satunya jalan keluar... adalah <reading>berenang</reading>ng (すい) ke tempat yang aman! Bagaimana aku menyimpulkannya, Watson sayang? Wah, bukankah sudah jelas! Ada tanaman merambat di sini. Kalkun tidak bisa terbang. Jadi aku akan menuju kebebasan!')
    RETURNING id INTO k_1565_menyimpulkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '揮', 'mengayunkan', 34, 25, 'Ambil <radical>jari</radical> Anda, injak <radical>dahi</radical> <radical>mobil</radical> Anda, dan <kanji>acungkan</kanji> ke udara. Lambaikan mereka agar semua orang dapat melihatnya.', 'Apa yang <kanji>acungkan</kanji>di jarimu? <read>kunci</reading> mobil Anda (き)! Anda ingin setiap pengemudi dan setiap mobil mengetahui bahwa Anda tidak akan mengemudi lagi!')
    RETURNING id INTO k_1566_mengayunkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '沿', 'jalankan-bersamaan', 34, 26, '<radical>tsunami</radical> akan datang, jadi pakailah <radical>sirip</radical> Anda, buka <radical>mulut</radical> lebar-lebar, dan coba <kanji>berlari di sampingnya</kanji>.', 'Anda dapat <kanji>berlari bersama</kanji> tsunami selama sekitar sepuluh detik sebelum semuanya <reading>en</reading>ds (えん).')
    RETURNING id INTO k_1567_jalankan_bersamaan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '源', 'asal', 34, 27, '<radikal>tsunami</radikal> adalah peristiwa <radikal>asli</radikal> yang menandai <kanji>asal usul</kanji> Jepang. Tsunami besar datang dan mengungkap kepulauan Jepang. Ini adalah asal mula semua kehidupan, menurut masyarakat Jepang.', 'Tsunami ini juga merupakan <kanji>asal</kanji> dari <reading>Gen</reading>ji (げん), dari "Kisah Genji." Bayangkan saja, tanpa asal usul ini, Jepang tidak akan ada dan begitu pula dengan kekasih Jepang pertama, Genji!')
    RETURNING id INTO k_1568_asal;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '勤', 'bekerja', 34, 28, '<radical>Boot</radical> memberi Anda <radical>kekuatan</radical> untuk <kanji>bekerja</kanji>! Itu sebabnya banyak sekali profesi yang mengharuskan Anda memiliki sepatu bot kerja.', 'Anda memerlukan sepatu bot untuk memberi Anda kekuatan <kanji>bekerja</kanji> untuk <reading>Kin</reading>g (きん) di Inggris. Sungguh, semua pekerjaan adalah untuk Raja, karena semuanya untuk dia. Tapi bahkan dia memakai sepatu bot. Dan mereka memberinya kekuatan untuk uh... menjadi raja atas berbagai hal.')
    RETURNING id INTO k_1570_bekerja;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '歓', 'sukacita', 34, 29, 'Sebuah <radical>panah</radikal> adalah apa yang <radikal>kalkun</radikal> <radikal>kekurangan</radikal> ini. Bagi seekor kalkun, itu adalah <kanji>kegembiraan</kanji>.', '<kanji>Kegembiraan</kanji> adalah apa yang dirasakan Jenghis <reading>Khan</reading> (かん) saat melihat teman kalkunnya, tanpa anak panah.')
    RETURNING id INTO k_1571_sukacita;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '承', 'izin', 34, 30, 'Seorang <radical>anak</radical> akan bertanya apakah mereka menginginkan <radical>dua</radical> <radical>air</radical> karena mereka memerlukan <kanji>persetujuan</kanji> orang dewasa. Anak-anak tidak boleh mendapatkan apa pun yang mereka inginkan, mereka perlu memastikan bahwa hal tersebut diperbolehkan dan mendapat persetujuan terlebih dahulu.', '"Tentu saja anakku, kamu mendapat <kanji>persetujuan</kanji> dariku," terdengar suara <reading>Shou</reading>gun (しょう). Shougun sangat senang dengan anak ini, karena dia mengharapkan semua orang meminta persetujuan disekitarnya.')
    RETURNING id INTO k_1572_izin;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '損', 'kehilangan', 34, 31, 'Angkat <radical>jari</radical> Anda ke <radical>anggota</radical> lain dan Anda akan menerima <kanji>kerugian</kanji> sebagai imbalannya. Anda tidak boleh <kanji>menyakiti</kanji> anggota tim, kelompok, atau masyarakat Anda. Itu salah. Dan Anda akan mendapat kerugian sebagai hukuman atas perbuatan buruk Anda.', 'Sayangnya bagi Anda, pembayarannya berupa <kanji>kerugian</kanji> <reading>anak</reading> (そん) Anda. Kehilangan anggota keluarga mana pun memang menyedihkan, tapi ini adalah putra Anda. Dia adalah anak kesayanganmu. Anda mencintainya. Namun itulah kerugian yang harus Anda tanggung karena mengacungkan jari kepada anggota tim.')
    RETURNING id INTO k_1573_kehilangan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '枝', 'cabang', 34, 32, '<radical>pohon</radikal> <radikal>cabang</radikal> persis seperti namanya: <kanji>cabang</kanji> dari sebuah pohon.', 'Anda sedang mencium dan merasakan <kanji>ranting</kanji> ketika, tiba-tiba, ia mulai berteriak kepada Anda: "<reading>Eh, da</reading>d?" (えだ). Cabang tidak akan meninggalkan Anda sendirian. Ia mengikuti Anda berkeliling sambil berteriak, "Eh, ayah?", mengira Anda adalah ayah dari cabang pohon yang telah lama hilang. Kasihan sekali.')
    RETURNING id INTO k_1574_cabang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '爪', 'cakar', 34, 33, 'Kanji <radical>claw</radical> dan kanji <kanji>claw</kanji> sama persis! Yg menggairahkan!', 'Kamu menancapkan <kanji>cakar</kanji>mu ke dalam apa pun yang dilihat kedua <read>目</reading> (つめ) kamu, karena kamu adalah predator yang ganas. Jika kedua 目 Anda dapat melihatnya, cakar Anda akan mencapainya. Cakar Anda pada dasarnya adalah perpanjangan dari kedua mata Anda, itulah seberapa terampil Anda.')
    RETURNING id INTO k_1575_cakar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '豆', 'kacang-polong', 34, 34, 'Kanji <radical>beans</radical> dan kanji <kanji>beans</kanji> sama persis!', '<kanji>kacang</kanji> ini berasal dari <reading>とう</reading>きょう. Semua orang tahu とうきょう memiliki kacang terbaik. Apa?! Anda tidak mengetahuinya? Kacang Tokyo adalah kacang terbaik!')
    RETURNING id INTO k_1576_kacang_polong;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '刻', 'mengukir', 34, 35, '<radikal>irisan</radikal> dengan <radikal>pisau</radikal> disebut <kanji>ukiran</kanji>.', 'Anda berkeringat saat mencoba <kanji>mengukir</kanji> daging dan kayu sepanjang hari, jadi Anda membeli <read>Coke</reading> (こく) yang enak. Anda menyukai Coke, dan cocok dengan daging dan serbuk gergaji.')
    RETURNING id INTO k_1577_mengukir;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '腐', 'membusuk', 34, 36, 'Siapkan <radical>kanopi</radikal> Anda, <radical>tempelkan</radikal> beberapa <radikal>daging</radikal> ke dalamnya, dan daging pada akhirnya akan <kanji>membusuk</kanji>.', 'Anda membiarkan daging <kanji>membusuk</kanji>. Anda adalah <read>foo</reading>l (ふ). Hanya itu yang bisa saya katakan saat ini.')
    RETURNING id INTO k_1578_membusuk;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '痩', 'tipis', 34, 37, 'Anda sangat <radikal>sakit</radikal> sehingga Anda terlihat seperti <radikal>sederhana</radikal> <radikal>tinja</radikal>: <kanji>kurus</kanji>. Faktanya, sangat kurus.', 'Saat kamu <kanji>kurus</kanji> ini, <reading>sou</reading>l (そう) kamu juga terlihat dari luar tubuhmu.')
    RETURNING id INTO k_8864_tipis;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '咳', 'batuk', 34, 38, '<radical>Mulut</radical> Anda <radical>terpotong</radical>terbuka oleh <kanji>batuk</kanji> yang parah.', 'Anehnya, beberapa orang menganggap <kanji>batuk</kanji> Anda <reading>seksi</reading> (せき).')
    RETURNING id INTO k_8968_batuk;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1545_kesalahan, 'Kesalahan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1546_organ_dalam, 'Organ Dalam', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1547_berharga, 'Berharga', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1549_tempat_nasi, 'Tempat nasi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1550_muntah, 'Muntah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1550_muntah, 'Meludah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1550_muntah, 'Muntah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1551_bung, 'Bung', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1552_budak, 'Budak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1554_menyusut, 'Menyusut', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1555_murni, 'Murni', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1556_vertikal, 'Vertikal', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1557_bergaya, 'Bergaya', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1557_bergaya, 'Murni', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1558_suci, 'Suci', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1559_magnet, 'magnet', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1560_merah_tua, 'Merah Tua', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1560_merah_tua, 'Merah tua', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1561_menembak, 'Menembak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1562_tirai, 'Tirai', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1563_memuja, 'Memuja', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1564_menyarankan, 'Menyarankan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1565_menyimpulkan, 'Menyimpulkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1566_mengayunkan, 'Mengayunkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1567_jalankan_bersamaan, 'Jalankan Bersamaan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1568_asal, 'Asal', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1570_bekerja, 'Bekerja', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1571_sukacita, 'Sukacita', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1572_izin, 'Izin', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1573_kehilangan, 'Kehilangan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1573_kehilangan, 'Terluka', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1574_cabang, 'Cabang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1575_cakar, 'Cakar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1575_cakar, 'Paku', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1576_kacang_polong, 'kacang polong', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1577_mengukir, 'Mengukir', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1578_membusuk, 'Membusuk', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_8864_tipis, 'Tipis', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_8968_batuk, 'Batuk', true, true);

  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1545_kesalahan, 'ご', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1545_kesalahan, 'あやま', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1546_organ_dalam, 'ぞう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1547_berharga, 'き', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1547_berharga, 'とうと', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1549_tempat_nasi, 'どん', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1549_tempat_nasi, 'どんぶり', 'kunyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1550_muntah, 'は', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1550_muntah, 'つ', 'kunyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1550_muntah, 'と', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1551_bung, 'ど', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1551_bung, 'やつ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1552_budak, 'れい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1554_menyusut, 'しゅく', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1554_menyusut, 'ちぢ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1555_murni, 'じゅん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1556_vertikal, 'たて', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1556_vertikal, 'じゅう', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1557_bergaya, 'すい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1557_bergaya, 'いき', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1558_suci, 'せい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1559_magnet, 'じ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1560_merah_tua, 'こう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1560_merah_tua, 'く', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1560_merah_tua, 'べに', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1560_merah_tua, 'くれない', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1561_menembak, 'しゃ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1561_menembak, 'い', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1561_menembak, 'さ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1561_menembak, 'う', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1562_tirai, 'まく', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1562_tirai, 'ばく', 'onyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1562_tirai, 'とばり', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1563_memuja, 'はい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1563_memuja, 'おが', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1564_menyarankan, 'せん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1564_menyarankan, 'すす', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1565_menyimpulkan, 'すい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1565_menyimpulkan, 'お', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1566_mengayunkan, 'き', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1567_jalankan_bersamaan, 'えん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1567_jalankan_bersamaan, 'そ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1568_asal, 'げん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1568_asal, 'みなもと', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1570_bekerja, 'きん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1570_bekerja, 'つと', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1571_sukacita, 'かん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1572_izin, 'しょう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1572_izin, 'うけたまわ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1573_kehilangan, 'そん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1573_kehilangan, 'そこ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1574_cabang, 'えだ', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1574_cabang, 'し', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1575_cakar, 'つめ', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1575_cakar, 'つま', 'kunyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1575_cakar, 'そう', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1576_kacang_polong, 'とう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1576_kacang_polong, 'まめ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1577_mengukir, 'こく', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1577_mengukir, 'きざ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1578_membusuk, 'ふ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1578_membusuk, 'くさ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_8864_tipis, 'そう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_8864_tipis, 'や', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_8968_batuk, 'せき', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_8968_batuk, 'がい', 'onyomi', false, false);

  -- 3. VOCABULARIES
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '久しぶり', 'lama-tak-jumpa', 34, 39, 'Ini semacam "frasa tetap" dalam bahasa Jepang, meskipun di sini kita akan memperlakukannya seperti kata vocab (karena ini sangat umum dan berguna!). Anda tahu bahwa <kanji>久</kanji> berarti "lama" - jadi sekarang mari kita perhatikan kananya: しぶり. Bayangkan saja <reading>dia menguburmu hidup-hidup, lalu beberapa hari kemudian datang kembali untuk menggalimu. Hal pertama yang dia ucapkan adalah "<vocabulary>LAMA TIDAK BERTEMU!</vocabulary>"', 'Anda mempelajari bacaan ini ketika Anda mempelajari 久しい. Itu sama!', 'Lama tak jumpa, Sudah lama')
    RETURNING id INTO v_2592_lama_tak_jumpa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '物真似', 'peniruan', 34, 40, '真似 adalah "peniruan identitas". Sebenarnya kata ini juga demikian. Itu juga merupakan <vocabulary>peniruan identitas</vocabulary>.

物真似 sangat mirip dengan 真似, tetapi dapat digunakan dalam konteks yang sedikit berbeda. 真似 digunakan untuk tindakan umum mimikri atau peniruan, dan juga dapat digunakan untuk merujuk pada cara seseorang melakukan sesuatu. Di sisi lain, meskipun 物真似 juga mendeskripsikan tindakan mimikri dan peniruan, kata ini juga digunakan dalam konteks pertunjukan atau hiburan untuk merujuk pada orang yang melakukan tindakan peniruan identitas.', 'Bacaannya adalah 物 ditambah 真似 disatukan.', 'Peniruan, Imitasi, Peniruan')
    RETURNING id INTO v_5616_peniruan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '複数形', 'jamak', 34, 41, 'Jika 複数 adalah <kanji>banyak</kanji>, dan 形 adalah <kanji>bentuk</kanji>, maka ketika sesuatu berada dalam "bentuk ganda", ia mempunyai lebih dari satu versinya sendiri. Itu adalah <vocabulary>jamak</vocabulary>, atau <vocabulary>bentuk jamak</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri. Akan membantu untuk mengetahui kata 複数 juga.', 'Jamak, Bentuk Jamak')
    RETURNING id INTO v_5714_jamak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '心臓', 'jantung', 34, 42, '<kanji>jantung</kanji> <kanji>organ dalam</kanji> tentu saja adalah <vocabulary>jantung</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Jantung')
    RETURNING id INTO v_5718_jantung;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '肺臓', 'paru-paru', 34, 43, '<kanji>paru-paru</kanji> <kanji>organ dalam</kanji> adalah <vocabulary>paru-paru</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Paru-paru')
    RETURNING id INTO v_5719_paru_paru;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '内臓', 'organ-dalam', 34, 44, '<kanji>Di dalam</kanji> <kanji>organ dalam</kanji> adalah <vocabulary>organ dalam</vocabulary> Anda, meskipun Anda mungkin berpikir kanji kedua akan memberikan petunjuk tentang hal itu tanpa 内.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Organ Dalam')
    RETURNING id INTO v_5720_organ_dalam;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '引っ越す', 'untuk-bergerak', 34, 45, '越す adalah "melampaui." Sekarang Anda akan keluar dari rumah Anda dan <kanji>membawa segala sesuatunya untuk pergi ke rumah lain. Anda mencoba <vocabulary>pindah</vocabulary> / <vocabulary>pindah rumah</vocabulary>.', 'Bacaannya berasal dari 引く dan 越す disatukan. Hati-hati itu っ.', 'Untuk Bergerak, Untuk Pindah Rumah')
    RETURNING id INTO v_5721_untuk_bergerak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '追い越す', 'untuk-menyalip', 34, 46, '越す berarti "melampaui." 追 adalah <kanji>ikuti</kanji>. Jika Anda mengikuti seseorang, dan kemudian Anda melampauinya, Anda telah menyusulnya. Itu sebabnya kata ini berarti <vocabulary>menyalip</vocabulary> atau <vocabulary>melampaui</vocabulary>.', 'Bacaannya berasal dari 追う dan 越す yang dirangkai menjadi satu. Anda dapat mengambil alih kata ini sekarang setelah Anda mengetahuinya.', 'Untuk Menyalip, Untuk Melampaui, Untuk Lulus, Untuk Menarik Ke Depan')
    RETURNING id INTO v_5722_untuk_menyalip;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '祖父母', 'kakek-nenek', 34, 47, 'Anda tahu bahwa 祖父 adalah kakek dan 祖母 adalah nenek. Ini keduanya digabungkan. Apakah itu monster nenek-nenek hibrida yang Anda buat di lab Anda? Hampir tidak, ini hanya mengacu pada <vocabulary>kakek-nenek</vocabulary> Anda.', 'Bacaannya berasal dari 祖父 dan 祖母, yang merupakan bacaan yang luar biasa, jadi Anda memerlukannya agar bisa membaca yang ini juga.', 'Kakek-nenek')
    RETURNING id INTO v_5723_kakek_nenek;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '飼い主', 'pemilik-hewan-peliharaan', 34, 48, 'Anda tahu bahwa 飼う berarti "memelihara hewan peliharaan". Jika Anda adalah <kanji>master</kanji> yang <kanji>memelihara hewan peliharaan</kanji> (飼う), maka Anda adalah <vocabulary>pemilik hewan peliharaan</vocabulary>.', 'Bacaannya merupakan bacaan kun''yomi bagi keduanya. Anda harus mengingat kata 飼う dan 主 agar dapat mengingat bacaan kata ini.', 'Pemilik Hewan Peliharaan')
    RETURNING id INTO v_5724_pemilik_hewan_peliharaan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '傷つける', 'untuk-menyakiti-seseorang', 34, 49, 'Anda つける (melampirkan) <kanji>luka</kanji> pada seseorang atau sesuatu. Dengan kata lain, ini berarti <vocabulary>menyakiti seseorang</vocabulary>, atau <vocabulary>mencakar</vocabulary> atau <vocabulary>merusak</vocabulary> sesuatu.', 'Bacaannya adalah 傷. Jika Anda ingat bacaannya, Anda juga mendapatkannya.', 'Untuk Menyakiti Seseorang, Untuk Menggaruk, Untuk Merusak')
    RETURNING id INTO v_5726_untuk_menyakiti_seseorang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '使い捨て', 'sekali-pakai', 34, 50, 'Setelah Anda <kanji>menggunakan</kanji>, Anda <kanji>membuang</kanji>, menjadikan apa pun yang Anda gunakan sebagai item <vocabulary>sekali pakai</vocabulary>.', 'Bacaannya berasal dari 使う dan 捨てる yang digabungkan menjadi satu.', 'Sekali pakai')
    RETURNING id INTO v_5727_sekali_pakai;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '投げ捨てる', 'untuk-membuang', 34, 51, 'Anda <kanji>membuang</kanji> dan <kanji>membuang</kanji> sesuatu. Itu sebabnya ini berarti <vocabulary>membuang</vocabulary>.', 'Pembacaannya berasal dari 投げる dan 捨てる, digabungkan menjadi satu kata yang menyebabkan pembuangan sampah.', 'Untuk Membuang')
    RETURNING id INTO v_5728_untuk_membuang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '込める', 'untuk-dimasukkan', 34, 52, 'Anda tahu kanji 込 berarti <kanji>ke</kanji>. Kata kerja ini bersifat transitif, artinya Anda sedang melakukan tindakan. Jika Anda “melakukan sesuatu menjadi sesuatu”, Anda memasukkannya ke dalam hal itu. Jadi ini berarti <vocabulary>memasukkan</vocabulary> atau <vocabulary>memuat sesuatu</vocabulary>.', 'Beruntungnya Anda, bacaan yang Anda pelajari dengan kanji adalah yang Anda gunakan di sini. Jika Anda membutuhkan bantuan okurigana, berikut ini mnemonik untuk Anda:

Anda selalu mencoba <vocabulary>memasukkan</vocabulary> emosi Anda ke dalam <reading>mail</reading> (める) yang Anda kirimkan. Anda tidak hanya memuat surat Anda dengan kata-kata, tetapi juga dengan emosi, untuk menjadikannya surat yang benar-benar menyentuh hati.', 'Untuk Dimasukkan, Untuk Memuat Sesuatu')
    RETURNING id INTO v_5729_untuk_dimasukkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '申し込む', 'untuk-melamar', 34, 53, 'Saya harus <kanji>mengatakan dengan rendah hati</kanji> bahwa saya ingin <kanji>mendapatkan</kanji> posisi ini, jadi saya berencana <vocabulary>melamar</vocabulary> dan <vocabulary>mendaftarkan lamaran</vocabulary>.

Namun, 申し込む bukan hanya tentang melamar. Ini tentang mengkomunikasikan keinginan secara resmi, apakah Anda ingin <vocabulary>melamar</vocabulary> pernikahan, menantang seseorang bermain tenis, atau bahkan menawarkan sumbangan untuk tujuan baik.', 'Bacaannya berasal dari kata 申す dan kanji 込, disatukan... dengan rendah hati.', 'Untuk Melamar, Untuk Mengirimkan Lamaran, Untuk Melamar')
    RETURNING id INTO v_5730_untuk_melamar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '飛び込み自殺', 'bunuh-diri-dengan-kereta-api', 34, 54, '<kanji>terbang</kanji> <kanji>ke</kanji> sesuatu dan "bunuh diri" (自殺) adalah <vocabulary>bunuh diri dengan kereta</vocabulary>. Sayangnya, istilah ini mungkin sudah tidak asing lagi bagi Anda karena istilah ini muncul dari waktu ke waktu di berita dan di sekitar stasiun kereta. (Mudah-mudahan suatu saat nanti istilah tersebut tidak lagi menjadi istilah yang perlu Anda ketahui dan kami dapat menghapusnya selamanya.)', 'Bacaannya berasal dari 飛ぶ, 込, dan 自殺. Gabungkan keduanya untuk membaca keseluruhan kata ini.', 'Bunuh Diri Dengan Kereta Api')
    RETURNING id INTO v_5731_bunuh_diri_dengan_kereta_api;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '書き込む', 'untuk-menulis', 34, 55, 'Anda tahu bahwa 書く adalah "menulis" dan kanji 込 adalah <kanji>ke</kanji>, jadi ini berarti <vocabulary>menulis</vocabulary>, <vocabulary>mengisi</vocabulary>, atau <vocabulary>mencatat</vocabulary>.

書き込む lebih berfokus pada tindakan fisik menulis daripada 書く sendiri. Ini karena 込む menekankan bahwa Anda memasukkan kata-kata ke dalam suatu ruang, baik di atas kertas atau di komputer.', 'Bacaannya berasal dari kata 書く dan kanji 込 yang digabungkan menjadi satu.', 'Untuk Menulis, Untuk Mengisi, Untuk Mencatat')
    RETURNING id INTO v_5732_untuk_menulis;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '人込み', 'kerumunan-orang', 34, 56, 'Ketika <kanji>orang</kanji> masuk <kanji>ke</kanji> suatu tempat (lalu orang lain masuk ke tempat itu, lalu orang lain dan orang lain), tempat itu pada akhirnya akan dipenuhi dengan <vocabulary>kerumunan orang</vocabulary>.

Perhatikan bahwa kata ini lebih umum ditulis 人混み.', 'Bacaannya berasal dari kata 人 dan kanji 込. Ingatlah bahwa こ berubah menjadi ご dan Anda akan baik-baik saja.', 'Kerumunan Orang')
    RETURNING id INTO v_5733_kerumunan_orang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '染み', 'noda', 34, 57, 'Ini adalah versi kata benda dari 染. Pewarna sepertinya merupakan jawaban yang tepat, tapi apa lagi yang dimaksud dengan pewarna? Jika Anda mendapatkannya pada saat Anda tidak menginginkannya, itu akan menjadi <vocabulary>noda</vocabulary>.', 'Pembacaannya tidak seperti yang Anda pelajari dengan kanji ini sebelumnya. Bayangkan saja bagaimana Anda memiliki <vocabulary>noda</vocabulary> ini di baju Anda, semua karena Anda mencoba mewarnai beberapa <reading>shee</reading>p (し) dan mereka tidak menyukainya. Jadi sekarang Anda memiliki noda pewarna dan kotoran domba yang besar. Bagaimana kamu bisa tahu domba tidak suka diwarnai?!', 'Noda, Noda')
    RETURNING id INTO v_5734_noda;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '染まる', 'untuk-dicelup', 34, 58, 'Jika 染める berarti "mewarnai", maka ini adalah <vocabulary>untuk dicelup</vocabulary>. Anda tidak melakukan pewarnaan, karena Anda tahu bahwa jika Anda melakukannya, Anda akan melakukan hal yang benar, tidak seperti orang lain yang mewarnai rambut Anda. Orang ini <read>menikahi</reading>ed (まる) itu sangat buruk.', 'Bacaannya sama dengan 染める.', 'Untuk Dicelup')
    RETURNING id INTO v_5735_untuk_dicelup;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '汚す', 'untuk-membuat-kotor', 34, 59, '汚れる berarti "menjadi kotor". Ini adalah saat Anda membuat sesuatu menjadi kotor, alias "<vocabulary>membuat kotor</vocabulary>." Kamu tahu bahwa ini adalah versi di mana kamu mengotori diri sendiri karena ketika kamu membuat seseorang kotor dengan semua kotoran yang kamu buang, mereka <reading>menuntut</reading> (す) kamu langsung. Ini sering terjadi.', 'Bacaannya berasal dari 汚れる, jadi jika Anda mengetahuinya, Anda bisa membaca ini.

Perhatikan bahwa bacaan よごす umumnya digunakan untuk membuat sesuatu menjadi kotor secara fisik, sedangkan けがす berarti membuat seseorang atau sesuatu menjadi najis secara kiasan.', 'Untuk Membuat Kotor, Untuk Membuat Sesuatu Kotor')
    RETURNING id INTO v_5736_untuk_membuat_kotor;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '言い訳', 'mengizinkan', 34, 60, 'Anda <kanji>mengatakan</kanji> sebuah <kanji>alasan</kanji> atas tindakan Anda, namun sebenarnya itu hanyalah <vocabulary>alasan</vocabulary>.', 'Bacaannya adalah gabungan 言う dan 訳.', 'Mengizinkan, Penjelasan')
    RETURNING id INTO v_5737_mengizinkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '詰め込む', 'untuk-mengisi', 34, 61, 'Anda tahu bahwa 詰める adalah "memasukkan" dan kanji 込 adalah <kanji>ke</kanji>. Saat Anda memasukkan sesuatu ke dalam sesuatu yang lain, Anda akan <vocabulary>memasukkannya</vocabulary> atau <vocabulary>menjejalkannya</vocabulary> ke dalamnya.

Sama seperti dalam bahasa Inggris, kata ini juga dapat digunakan dalam arti kiasan, seperti menjejalkan pengetahuan ke dalam kepala.', 'Kata ini menggunakan bacaan yang Anda pelajari dengan kanji. Jika Anda ingat pembacaan kanji Anda, Anda akan baik-baik saja di sini.', 'Untuk Mengisi, Untuk menjejalkan')
    RETURNING id INTO v_5738_untuk_mengisi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '歓迎', 'selamat-datang', 34, 62, 'Merupakan <kanji>kegembiraan</kanji> saya untuk <kanji>menyambut</kanji> Anda, jadi saya memberikan <vocabulary>sambutan</vocabulary> yang besar dan hangat.

歓迎 adalah kata yang relatif formal yang mengacu pada penerimaan seseorang dengan hangat, seperti <vocabulary>menyambut</vocabulary> seseorang yang telah tiba di suatu tempat atau bergabung dengan suatu grup.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Selamat datang, Menyambut')
    RETURNING id INTO v_5739_selamat_datang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '血液型', 'golongan-darah', 34, 63, '<kanji>darah</kanji> <kanji>cairan</kanji> <kanji>tipe</kanji> Anda adalah <vocabulary>golongan darah</vocabulary> Anda. Ini adalah hal yang sangat penting untuk diketahui di Jepang karena alasan tertentu.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi, setidaknya bagian 血液.型 menggunakan bacaan kun''yomi, mungkin karena itu adalah kata tambahan.', 'Golongan darah, Golongan Darah')
    RETURNING id INTO v_5740_golongan_darah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '興味がない', 'tidak-ada-bunga', 34, 64, '興味 adalah <kanji>ketertarikan</kanji> pada sesuatu. Jika Anda tidak memiliki (がない) minat tersebut, berarti Anda <vocabulary>tidak tertarik</vocabulary> atau Anda <vocabulary>tidak tertarik</vocabulary>.', 'Anda mengetahui bahwa kata 興味 menggunakan pembacaan on''yomi untuk kedua kanji, jadi yang perlu Anda lakukan hanyalah menambahkan が + ない dan Anda mendapatkan ekspresi baru!', 'Tidak Ada Bunga, Tidak Tertarik')
    RETURNING id INTO v_5741_tidak_ada_bunga;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '賛成する', 'setuju', 34, 65, 'Bagian 賛成 berarti "persetujuan", "persetujuan", atau "dukungan", jadi versi kata kerjanya juga adalah <vocabulary>menyetujui</vocabulary>, <vocabulary>menyetujui</vocabulary>, atau <vocabulary>mendukung</vocabulary>!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Setuju, Untuk Menyetujui, Untuk Mendukung')
    RETURNING id INTO v_5742_setuju;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '誤解', 'salah-paham', 34, 66, 'Sebuah <kanji>kesalahan</kanji> pada apa yang Anda <kanji>pecahkan</kanji>... wow, maaf, saya pikir saya seharusnya menyelesaikan ini, bukan itu. Sungguh <vocabulary>kesalahpahaman</vocabulary> yang buruk.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Salah paham')
    RETURNING id INTO v_5743_salah_paham;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '誤字', 'salah-ketik', 34, 67, '<kanji>kesalahan</kanji> pada <kanji>huruf</kanji> adalah <vocabulary>typo</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Salah ketik')
    RETURNING id INTO v_5744_salah_ketik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '誤用', 'penyalahgunaan', 34, 68, '<kanji>kesalahan</kanji> dalam <kanji>penggunaan</kanji> adalah <vocabulary>penyalahgunaan</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Penyalahgunaan')
    RETURNING id INTO v_5745_penyalahgunaan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '誤算', 'kesalahan-hitung', 34, 69, 'Sebuah <kanji>kesalahan</kanji> dalam apa yang Anda <kanji>hitung</kanji> adalah <vocabulary>salah perhitungan</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Kesalahan hitung')
    RETURNING id INTO v_5746_kesalahan_hitung;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '兄貴', 'kakak', 34, 70, '<kanji>kakak</kanji> adalah <kanji>berharga</kanji> bagimu. Namun, betapapun berharganya dia bagimu, dia tetaplah <vocabulary>kakak</vocabulary>mu. 

P.S. Anda akan sering melihat beberapa preman gangstah menyebut preman gangstah berpangkat lebih tinggi (yang bertindak seperti kakak bagi semua preman gangstah lainnya) ini. Ini seperti keluarga di dalam geng.', 'Bacaannya adalah 兄 tersendiri ditambah bacaan untuk 貴. ANIKIIIIII.', 'Kakak, Kakak, Senior seseorang')
    RETURNING id INTO v_5748_kakak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '降参', 'menyerah', 34, 71, 'Saya akan <kanji>menurunkan</kanji> <kanji>partisipasi</kanji>saya dalam konflik ini. Saya akan menurunkan semua senjata saya ke tanah. Saya akan <vocabulary>menyerah</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Menyerah')
    RETURNING id INTO v_5752_menyerah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '牛丼', 'mangkuk-daging-sapi', 34, 72, '<kanji>sapi</kanji> <kanji>mangkuk nasi</kanji> adalah semangkuk nasi yang dilapisi daging sapi, menjadikannya <vocabulary>mangkuk daging sapi</vocabulary>. Ambillah Yoshinoya.', 'Kata ini menggunakan bacaan yang sama yang Anda pelajari dengan kanji. Anda seharusnya bisa membaca ini sendiri.', 'Mangkuk Daging Sapi, Mangkuk Nasi Daging Sapi')
    RETURNING id INTO v_5754_mangkuk_daging_sapi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '丼', 'tempat-nasi', 34, 73, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.

Tepatnya, 丼 merujuk pada mangkuk barang pecah belah yang lebih besar dan kokoh dibandingkan <vocabulary>rice bowl</vocabulary> biasa. Ini sering digunakan untuk hidangan satu mangkuk seperti katsudon, gyūdon, poke, tetapi juga mie kuah seperti ramen!', 'Anda mempelajari bacaan どん untuk kanji ini, dan bacaan ini hanyalah perpanjangan dari itu, menjadi どんぶり. Perubahan ini mungkin agak sulit untuk diingat, jadi inilah mnemonik yang dapat membantu Anda:

<vocabulary>Mangkuk nasi</vocabulary> terus menghilang, dan semua orang ketakutan. Siapa di baliknya? <read>Don Brie</reading> (どんぶり), bos mafia pecinta keju yang ditakuti. Dia ingin mangkuk nasi itu menghabiskan semua brie-nya, karena menurutku piringnya tidak cukup enak. Itu sebabnya mereka memanggilnya Don Brie.', 'Tempat nasi, Mangkuk Donburi')
    RETURNING id INTO v_5756_tempat_nasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '吐く', 'untuk-muntah', 34, 74, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>muntah</kanji> sehingga versi kata kerjanya adalah <vocabulary>muntah</vocabulary> atau <vocabulary>muntah</vocabulary> atau <vocabulary>meludah</vocabulary>.', 'Bacaannya berasal dari bacaan yang Anda pelajari dengan kanji. HA HA HA! muntah.', 'Untuk Muntah, Untuk Muntah, Untuk meludah')
    RETURNING id INTO v_5757_untuk_muntah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '奴', 'bung', 34, 75, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Karena kata ini terdiri dari satu kanji, kemungkinan besar menggunakan bacaan kun''yomi. Anda tidak mempelajari bacaan ini, jadi inilah mnemonik untuk membantu Anda mengingat: 

Beberapa <vocabulary>dude</vocabulary>... dia melakukannya dua kali. <reading>Yah, dua</reading> (やつ) kali.

Ini mungkin tampak menghina, jika Anda mengatakannya dengan cara yang salah. Namun selama Anda bersikap sopan kepada teman-teman Anda dan bukan atasan Anda yang tidak sopan, Anda boleh-boleh saja melakukannya!', 'Bung, Pria')
    RETURNING id INTO v_5758_bung;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '奴隷', 'budak', 34, 76, 'Beberapa <kanji>dude</kanji> yang merupakan <kanji>budak</kanji> hanyalah <vocabulary>budak</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Budak')
    RETURNING id INTO v_5759_budak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '縮まる', 'untuk-menyusut', 34, 77, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>menyusut</kanji> jadi versi vocab verbanya berarti <vocabulary>menyusut</vocabulary>.', 'Yesus tidak bisa menyebabkan <kosakata>mengecil</vocabulary> monster itu. Dia harus berubah menjadi <reading>cheese yesus</reading> (ちぢ), versi dirinya yang lebih kuat, untuk memperkecil ukuran monster itu.', 'Untuk Menyusut, Untuk Mengontrak')
    RETURNING id INTO v_5763_untuk_menyusut;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '縮小', 'pengurangan', 34, 78, '<kanji>Kecilkan</kanji> apa yang Anda miliki menjadi sesuatu <kanji>kecil</kanji>. Tadinya besar, sekarang kecil. Ini adalah <vocabulary>pengurangan</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Pengurangan, Memotong')
    RETURNING id INTO v_5764_pengurangan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '単純', 'sederhana', 34, 79, '<kanji>Sederhana</kanji> dan <kanji>murni</kanji>. Ini <vocabulary>sederhana</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Sederhana')
    RETURNING id INTO v_5765_sederhana;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '不純', 'najis', 34, 80, '<kanji>Tidak</kanji> <kanji>murni</kanji> sesuatu adalah <vocabulary>tidak murni</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Najis')
    RETURNING id INTO v_5766_najis;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '純毛', 'semua-wol', 34, 81, 'Sesuatu yang <kanji>murni</kanji> <kanji>bulu</kanji> adalah bulu murni... tapi jenis bulu apa? Dalam hal ini adalah wol, sehingga berarti <kosakata>semua wol</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Semua Wol')
    RETURNING id INTO v_5767_semua_wol;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '縦', 'vertikal', 34, 82, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji!', 'Vertikal')
    RETURNING id INTO v_5768_vertikal;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '縦書', 'penulisan-vertikal', 34, 83, '<kanji>Vertikal</kanji> <kanji>tulisan</kanji> adalah <vocabulary>tulisan vertikal</vocabulary>. Saat itulah Anda melihat bahasa Jepang dan ditulis dari atas ke bawah, bukan menyamping.', 'Bacaannya adalah bacaan yang dipelajari dengan kanji 縦 dan かき (berubah menjadi がき), meskipun き terhapus di dalam kanji, karena ingin membingungkan seperti itu.', 'Penulisan Vertikal, Penulisan Gaya Vertikal')
    RETURNING id INTO v_5769_penulisan_vertikal;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '縦横', 'panjang-lebar', 34, 84, '<kanji>Vertikal</kanji> dan <kanji>samping</kanji> (horizontal). Itu berarti Anda memiliki <vocabulary>panjang dan lebar</vocabulary> serta <vocabulary>vertikal dan horizontal</vocabulary>.', 'Ini adalah kata jukugo yang biasanya menggunakan pembacaan kanji kun''yomi. Anda seharusnya bisa membaca ini sendiri.

Namun perhatikan, ada bacaan on''yomi yang kurang umum, じゅうおう, yang digunakan dalam beberapa idiom. Senang mengetahui bahwa bacaan ini ada, tetapi Anda mungkin tidak akan sering menemukannya.', 'Panjang lebar, Vertikal Dan Horisontal')
    RETURNING id INTO v_5770_panjang_lebar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '純粋', 'murni', 34, 85, '<kanji>Murni</kanji> ditambah 粋, yang mungkin Anda ingat sebagai "bergaya" namun bisa berarti <kanji>murni</kanji> juga. Wow, kemurnian kata ini dua kali lipat. Pantas saja kata ini juga berarti <vocabulary>murni</vocabulary>! 

純粋 biasanya untuk orang yang berhati murni atau perasaan, seperti 純粋な心 (hati yang murni) atau 純粋な気持ち (perasaan murni). Anda juga bisa mengucapkan 純粋な疑問 — untuk keraguan <vocabulary>asli</vocabulary> atau pertanyaan polos yang muncul begitu saja di kepala Anda, semata-mata karena rasa ingin tahu, tanpa motif tersembunyi.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Murni, Asli')
    RETURNING id INTO v_5771_murni;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '粋', 'bergaya', 34, 86, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.

粋 berarti <vocabulary>bergaya</vocabulary>, <vocabulary>chic</vocabulary>, atau <vocabulary>selera</vocabulary>, namun dengan nuansa keanggunan yang bersahaja atau kesejukan yang halus. Misalnya, mengatur sesuatu di balik layar agar semuanya berjalan indah mungkin dianggap sebagai 粋 — sebuah gerakan <vocabulary>berkelas</vocabulary> yang dilakukan dengan penuh gaya!', 'Kata ini menggunakan bacaan kun''yomi yang belum Anda pelajari, jadi inilah mnemonik untuk membantu Anda:

Anda <vocabulary>bergaya</vocabulary>. Karena Anda bergaya, Anda menghindari pakaian yang <reading>menjijikkan</reading> (いき) dengan cara apa pun. Anda bahkan tidak akan terlihat di ruangan yang sama, begitulah gaya Anda.', 'Bergaya, Cantik, Gurih, Berkelas')
    RETURNING id INTO v_5772_bergaya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '神聖', 'kekudusan', 34, 87, '<kanji>Tuhan</kanji> itu <kanji>suci</kanji>. Segala sesuatu tentang dewa suci penuh dengan <vocabulary>kekudusan</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Kekudusan, Suci')
    RETURNING id INTO v_5773_kekudusan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '聖書', 'alkitab', 34, 88, '<kanji>suci</kanji> <kanji>tulisan</kanji> adalah <vocabulary>Alkitab</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Alkitab')
    RETURNING id INTO v_5774_alkitab;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '聖日', 'hari-suci', 34, 89, '<kanji>hari</kanji> <kanji>hari</kanji> adalah <vocabulary>hari suci</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Hari Suci')
    RETURNING id INTO v_5775_hari_suci;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '聖地', 'tanah-suci', 34, 90, '<kanji>Suci</kanji> <kanji>tanah</kanji> adalah <vocabulary>tanah suci</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Tanah Suci, Tanah Suci')
    RETURNING id INTO v_5776_tanah_suci;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '磁気', 'daya-tarik', 34, 91, '<kanji>Magnet</kanji>ic <kanji>energi</kanji> adalah ketika <vocabulary>magnetism</vocabulary> terjadi.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Daya tarik')
    RETURNING id INTO v_5777_daya_tarik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '磁石', 'magnet', 34, 92, '<kanji>magnet</kanji> <kanji>batu</kanji> adalah <vocabulary>magnet</vocabulary>. Magnet terlihat seperti batu kecil, bukan?', 'Pembacaan 磁 masuk akal. Pembacaan しゃく untuk 石 merupakan pengecualian. Untuk mengingat hal ini, coba pikirkan bagaimana Anda menggunakan magnet dan menemukan <reading>gubuk</reading> (しゃく) ini penuh dengan magnet lainnya. Ini menarik Anda ke arah gubuk, dan ketika Anda menemukannya dan membukanya, semua magnet terbang keluar dan menghancurkan Anda karena alasan magnetis.', 'magnet, Sebuah Magnet')
    RETURNING id INTO v_5778_magnet;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '磁場', 'medan-magnet', 34, 93, '<kanji>magnet</kanji> <kanji>lokasi</kanji> adalah area dengan <vocabulary>medan magnet</vocabulary>.', 'Kata ini menggunakan bacaan on''yomi untuk kanji pertama dan bacaan kun''yomi untuk kanji kedua. Anda tidak mempelajari pembacaan kun''yomi untuk 場 dengan kanji, jadi inilah mnemonik untuk membantu Anda mengingatnya:

Apakah <vocabulary>medan magnet</vocabulary> mengatakan "<reading>baa</reading>" (ば)? Tidak, namun beberapa penelitian menunjukkan bahwa domba suka menyesuaikan diri dengan garis medan magnet bumi ketika mereka berdiri di dekatnya. Hanya sedikit hal-hal sepele yang aneh untukmu!', 'Medan Magnet')
    RETURNING id INTO v_5779_medan_magnet;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '紅茶', 'teh-hitam', 34, 94, '<kanji>merah tua</kanji> <kanji>teh</kanji> bukanlah teh merah tua... melainkan <vocabulary>teh hitam</vocabulary>. Jika dipikir-pikir, banyak teh hitam yang berwarna merah tua, itulah sebabnya teh merah tua adalah teh hitam.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Teh Hitam')
    RETURNING id INTO v_5781_teh_hitam;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '注射', 'tembakan', 34, 95, 'Saat Anda <kanji>menembak</kanji> sesuatu ke seseorang yang sebenarnya harus Anda <kanji>tuangkan</kanji> (alias cairan), Anda menembaknya dengan jarum, memberinya <vocabulary>suntikan</vocabulary> / <vocabulary>injeksi</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Tembakan, Injeksi')
    RETURNING id INTO v_5782_tembakan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '反射', 'cerminan', 34, 96, 'Anda <kanji>menembak</kanji> diri Anda sendiri ke cermin, dan itu adalah <kanji>anti</kanji>-Anda. Ini adalah <vocabulary>refleksi</vocabulary> Anda.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Cerminan, Refleks')
    RETURNING id INTO v_5783_cerminan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '発射する', 'untuk-meluncurkan', 34, 97, '<kanji>Keberangkatan</kanji> dan <kanji>tembak</kanji> sesuatu. Jika Anda melakukan itu pada sesuatu, Anda akan <vocabulary>meluncurkan</vocabulary> itu.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Untuk Meluncurkan, Untuk Menembak')
    RETURNING id INTO v_5784_untuk_meluncurkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '放射', 'radiasi', 34, 98, 'Ia <kanji>melepaskan</kanji> dan <kanji>menembak</kanji> dari bom. Itu bukan api. Itu adalah <vocabulary>radiation</vocabulary>, dan bertahan lama setelah dilepaskan.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Radiasi')
    RETURNING id INTO v_5785_radiasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '幕', 'tirai', 34, 99, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan yang kamu pelajari dengan kanji, bebek yang beruntung.', 'Tirai')
    RETURNING id INTO v_5786_tirai;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '字幕', 'subtitle', 34, 100, '<kanji>tirai</kanji> dari <kanji>huruf</kanji> yang muncul di layar Anda adalah <vocabulary>subtitle</vocabulary>. Terkadang mereka juga memiliki latar belakang garis hitam, seperti tirai!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Subtitle')
    RETURNING id INTO v_5787_subtitle;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '黒幕', 'penarik-kawat', 34, 101, 'Bayangkan saja <kanji>hitam</kanji> <kanji>tirai</kanji> di latar belakang. Kamu tidak tahu apa yang ada di baliknya, tapi kamu tahu apa yang ada di depannya. Soalnya, apa yang ada di depan tirai itu dikendalikan oleh siapa pun yang ada di balik tirai hitam itu. Orang ini adalah <vocabulary>wirepuller</vocabulary> atau <vocabulary>dalang</vocabulary> dari situasi tersebut. Seperti Wizard of Oz, atau semacamnya.', 'Bacaannya adalah bacaan vocab untuk 黒 dan 幕, padahal bacaan vocab untuk 幕 sama dengan bacaan on''yomi, sehingga memudahkan Anda.', 'penarik kawat, Dalang, Tirai Hitam')
    RETURNING id INTO v_5788_penarik_kawat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '拝む', 'untuk-menyembah', 34, 102, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>menyembah</kanji> jadi versi kosakata kata kerjanya adalah <vocabulary>to ibadah</vocabulary>.

拝む umumnya berarti <kosa kata>berdoa kepada</vocabulary> dewa, roh, atau benda yang dihormati sambil mengambil posisi beribadah, seperti membungkuk atau mengatupkan kedua tangan saat berdoa. Selain itu, 拝む juga bisa berarti <vocabulary>melihat</vocabulary> dengan rasa hormat dan hormat.', 'Kamu harus <vocabulary>memuja</vocabulary> <reading>ogre</reading> (おが), karena jika tidak, dia akan memakan mukamu.', 'Untuk Menyembah, Untuk Berdoa Kepada, Untuk Melihat')
    RETURNING id INTO v_5789_untuk_menyembah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '拝見する', 'untuk-dilihat', 34, 103, 'Anda <kanji>menyembah</kanji> hanya hal-hal yang Anda <kanji>lihat</kanji>. Jadi, untuk melihat apakah sesuatu itu layak disembah, Anda akan <vocabulary>melihat</vocabulary> benda itu.

Dan asal tahu saja, ini adalah kata yang sangat formal yang digunakan saat Anda mencoba bersikap sopan. Jadi harap diingat!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Untuk Dilihat, Untuk Melihat')
    RETURNING id INTO v_5790_untuk_dilihat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '推定', 'perkiraan', 34, 104, 'Anda melakukan sedikit <kanji>menyimpulkan</kanji>saat Anda <kanji>menentukan</kanji> sesuatu, yang berarti Anda tidak 100% yakin, sehingga menjadikan ini sebagai <vocabulary>estimasi</vocabulary>.

推定 mengacu pada perkiraan yang umumnya didasarkan pada beberapa bukti atau alasan. Anda akan sering menemukan ini digunakan dalam konteks statistik atau ilmiah, yang mengacu pada tebakan atau estimasi berdasarkan data yang tersedia.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Perkiraan, Memperkirakan')
    RETURNING id INTO v_5791_perkiraan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '推理', 'pemikiran', 34, 105, '<kanji>menyimpulkan</kanji> <kanji>alasan</kanji> berarti memiliki <vocabulary>penalaran</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Pemikiran, Kesimpulan')
    RETURNING id INTO v_5792_pemikiran;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '推薦', 'rekomendasi', 34, 106, '<kanji>menyimpulkan</kanji> dan <kanji>merekomendasikan</kanji> sesuatu berarti memberikan <vocabulary>rekomendasi</vocabulary>. Menu apa yang Anda sarankan?', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Rekomendasi')
    RETURNING id INTO v_5793_rekomendasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '自薦', 'rekomendasi-mandiri', 34, 107, 'Sedangkan untuk<kanji>diriku</kanji>? Saya <kanji>merekomendasikan</kanji> produk ini. Ini adalah <vocabulary>rekomendasi mandiri</vocabulary>. Anda berhasil melakukannya sendiri!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Rekomendasi Mandiri, Nominasi Diri')
    RETURNING id INTO v_5794_rekomendasi_mandiri;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '薦める', 'untuk-merekomendasikan', 34, 108, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>menyarankan</kanji> jadi versi kosakata kata kerjanya adalah <vocabulary>recommended</vocabulary>. Kata ini sering digunakan dalam konteks positif untuk merekomendasikan sesuatu, tindakan, dan orang dengan menyiratkan atau menunjukkan pesona, kelebihan, atau keduanya.

Walaupun 薦める dan 勧める serupa, ada sedikit perbedaan di antara keduanya. 勧める sering digunakan untuk menyarankan seseorang melakukan tindakan tertentu, sering kali sebagai nasihat atau dorongan ramah. Bisa juga digunakan saat menawarkan sesuatu, misalnya minuman. Di sisi lain, 薦める digunakan untuk merekomendasikan seseorang atau sesuatu yang cocok untuk situasi tertentu, dengan fokus pada mendukung subjek daripada tindakan tertentu.', 'Bacaannya sama dengan 勧める, karena artinya hampir sama.', 'Untuk Merekomendasikan')
    RETURNING id INTO v_5795_untuk_merekomendasikan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '発揮する', 'untuk-memamerkan', 34, 109, 'Anda menyebabkan <kanji>kepergian</kanji> sesuatu dalam diri Anda (ke luar), lalu <kanji>mengacungkan</kanji> agar semua orang dapat melihatnya. Anda mengirimkannya untuk ditunjukkan kepada semua orang. Oleh karena itu, ini berarti <vocabulary>memamerkan</vocabulary> atau <vocabulary>menunjukkan</vocabulary>.

発揮する berarti <vocabulary>untuk mengeluarkan</vocabulary> kemampuan, kekuatan, atau kualitas seseorang dengan cara yang terlihat atau efektif. Ini sering digunakan ketika seseorang berkinerja baik di bawah tekanan atau memaksimalkan potensinya dalam situasi tertentu.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri. Namun はつ menjadi はっ.', 'Untuk Memamerkan, Untuk Mendemonstrasikan, Untuk Membawa Keluar')
    RETURNING id INTO v_5796_untuk_memamerkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '指揮', 'memerintah', 34, 110, 'Ambil <kanji>jari</kanji> Anda dan <kanji>acungkan</kanji> untuk <vocabulary>memerintahkan</vocabulary> pasukan.', 'Bacaannya adalah bacaan on''yomi, jadi jika Anda mengetahuinya, Anda dapat menguasai kosakata ini.', 'Memerintah, Memimpin')
    RETURNING id INTO v_5797_memerintah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '沿岸', 'pesisir', 34, 111, '<kanji>berlari di sepanjang</kanji> <kanji>pantai</kanji> berarti mengikuti garis pertemuan daratan dengan air. Seluruh bentangan itu adalah <vocabulary>pantai</vocabulary>. Ini bukan hanya sekedar tepian perairan, namun mencakup daratan dan lautan di sampingnya.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Pesisir, Pantai')
    RETURNING id INTO v_5798_pesisir;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '沿海', 'perairan-pantai', 34, 112, '<kanji>berjalan di sepanjang</kanji> <kanji>laut</kanji> mengacu pada area di sepanjang pantai. Bisa berupa laut yang mengalir di sepanjang daratan atau daratan yang mengalir di sepanjang laut, menjadikannya <vocabulary>perairan pesisir</vocabulary> atau <vocabulary>garis pantai</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Perairan pantai, Garis pantai')
    RETURNING id INTO v_5799_perairan_pantai;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '沿線', 'sepanjang-jalur-kereta-api', 34, 113, '<kanji>berjalan di sepanjang</kanji> <kanji>jalur</kanji> (mengacu pada jalur kereta) berarti <vocabulary>sepanjang jalur kereta</vocabulary>. Apa yang ada di sepanjang jalur kereta? Segala macam hal jika Anda perhatikan dengan cermat.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Sepanjang Jalur Kereta Api, Sepanjang Kereta Api')
    RETURNING id INTO v_5800_sepanjang_jalur_kereta_api;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '沿う', 'untuk-berlari-bersamaan', 34, 114, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>berlari bersama</kanji> sehingga versi kosakata kata kerjanya adalah <vocabulary>berjalan bersama</vocabulary>.', 'Bayangkan diri Anda berada di jalur yang dirancang <vocabulary>untuk dijalankan bersama</vocabulary> deretan bilah <reading>so</reading>ap (そ) yang tak ada habisnya. Saat Anda berjalan di samping sabun batangan, Anda menikmati aromanya yang menyenangkan. Ini adalah kawasan pejalan kaki "aroma-sasional" dengan sabun batangan yang membuat Anda merasa bersih!', 'Untuk Berlari Bersamaan, Untuk Menjalankan Paralel Ke')
    RETURNING id INTO v_5801_untuk_berlari_bersamaan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '源', 'asal', 34, 115, '<kanji>asal</kanji> adalah <vocabulary>asal</vocabulary>, tetapi juga mengacu pada <vocabulary>mata air tanah</vocabulary>, tempat asal mula air.', 'Karena kata ini terdiri dari satu kanji, kemungkinan besar menggunakan bacaan kun''yomi. Anda tidak mempelajari bacaan ini, jadi inilah mnemonik untuk membantu Anda mengingat: Pikirkan bagaimana <kosakata>mata air tanah</vocabulary> ini adalah (皆) asal usul semua orang (元). Semua orang bisa menggunakannya, itulah 皆元!', 'Asal, Sumber, Pegas Tanah')
    RETURNING id INTO v_5802_asal;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '源氏', 'genji', 34, 116, '<kanji>asal</kanji> <kanji>nama keluarga</kanji> adalah pria asli. Bung asli berasal dari novel asli dan pertama yang pernah ditulis, Kisah <kanji>Genji</kanji>. Kanji ini melambangkan <vocabulary>Genji</vocabulary>, Genji yang baik. Mungkin membaca bacaannya akan membantu Anda mengetahui arti kanji ini.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Genji')
    RETURNING id INTO v_5803_genji;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '電源', 'sumber-daya', 34, 117, '<kanji>listrik</kanji> <kanji>asal</kanji> adalah asal mula listrik. Ini adalah <vocabulary>sumber kekuatan</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Sumber Daya, jalan keluar, Stopkontak')
    RETURNING id INTO v_5804_sumber_daya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '震源地', 'pusat-gempa', 34, 118, '<kanji>gempa</kanji> <kanji>asal</kanji> <kanji>tanah</kanji> adalah asal mula gempa bumi. Ini adalah <vocabulary>episentrum</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Pusat gempa, Pusat gempa')
    RETURNING id INTO v_5805_pusat_gempa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '勤める', 'untuk-dipekerjakan-di', 34, 119, 'Kanjinya adalah <kanji>kerja</kanji> yang artinya kata kerja ini ada hubungannya dengan bekerja. Kata ini tidak langsung berarti "bekerja", melainkan "<vocabulary>bekerja untuk</vocabulary>" atau "<vocabulary>dipekerjakan di</vocabulary>".', 'Bacaannya sama dengan kata lain yang berarti “bekerja sebagai” (務める). Ingatlah ini dan Anda akan dapat mengingat bacaan kata ini juga.', 'Untuk Dipekerjakan Di, Untuk Bekerja')
    RETURNING id INTO v_5813_untuk_dipekerjakan_di;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '通勤', 'bepergian', 34, 120, 'Hal-hal yang Anda <kanji>lalui</kanji> dalam perjalanan menuju <kanji>bekerja</kanji> adalah hal-hal yang Anda lihat dan temui selama <vocabulary>perjalanan</vocabulary> Anda.

Perhatikan bahwa Anda hanya dapat menggunakan kata ini untuk perjalanan ke tempat kerja. Anda tidak menggunakannya untuk pergi ke sekolah kecuali Anda bekerja di sekolah atau semacamnya!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Bepergian, Perjalanan Ke Tempat Kerja')
    RETURNING id INTO v_5814_bepergian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '常勤', 'pekerjaan-penuh-waktu', 34, 121, '<kanji>Normal</kanji> <kanji>pekerjaan</kanji> adalah pekerjaan yang Anda lakukan sepanjang hari, 8 jam sehari, 5 hari seminggu. Yaitu <vocabulary>pekerjaan penuh waktu</vocabulary> atau <vocabulary>penuh waktu</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Pekerjaan Penuh Waktu, Penuh Waktu')
    RETURNING id INTO v_5815_pekerjaan_penuh_waktu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '承る', 'untuk-dengan-rendah-hati-mendengar', 34, 122, 'Memberikan <kanji>persetujuan</kanji> kepada seseorang sama dengan dengan rendah hati mendengarkan dan menerima perkataannya. Jadi kata ini berarti <vocabulary>dengan rendah hati mendengarkan</vocabulary> dan <vocabulary>menerima</vocabulary>.

承る adalah versi sederhana dari 聞く. Bentuk lampaunya 承りました biasanya digunakan dalam lingkungan profesional untuk mengakui dan menerima permintaan, informasi, atau tugas dengan hormat.', 'Anda menerima (<reading>受けた</reading>) beberapa informasi. Sekarang, Anda akan mengambil informasi yang Anda terima dan kemudian memutarnya (<reading>回る</reading>) di kepala Anda untuk memikirkannya. Hmmm... hmm... Oke, saya suka apa yang saya dengar. Saya akan <vocabulary>menerima</vocabulary> apa yang Anda katakan. Terima kasih.', 'Untuk Dengan Rendah Hati Mendengar, Untuk Menerima')
    RETURNING id INTO v_5816_untuk_dengan_rendah_hati_mendengar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '承知', 'izin', 34, 123, 'Anda <kanji>menyetujui</kanji> dan <kanji>mengetahui</kanji> semua yang terjadi. Anda <vocabulary>menyetujui</vocabulary> dan <vocabulary>mengetahui</vocabulary> tentang semua ini. Anda <vocabulary>menyadari</vocabulary> akan hal itu.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Anda tidak mempelajari on''yomi 知 saat mempelajari kanji, jadi inilah mnemonik untuk membantu Anda:

Kamu memerlukan <vocabulary>persetujuan</vocabulary> seseorang sebelum memberikan <reading>chee</reading>se (ち) kepada mereka. Keju memiliki kekuatan untuk memikat seseorang dan membuat mereka berada dalam keadaan ekstasi total, jadi sebaiknya pastikan mereka menyetujuinya dan <vocabulary>mengetahui</vocabulary> apa yang akan terjadi sebelum Anda memberi mereka keju apa pun.', 'Izin, Tahu, Menyadari')
    RETURNING id INTO v_5817_izin;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '承認', 'persetujuan', 34, 124, 'Saya <kanji>mengakui</kanji> <kanji>persetujuan</kanji> Anda. Itu adalah <vocabulary>persetujuan</vocabulary> dan <vocabulary>pengakuan</vocabulary> atas apa yang saya lakukan.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Persetujuan, Pengakuan, Perjanjian')
    RETURNING id INTO v_5818_persetujuan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '歓楽街', 'distrik-hiburan', 34, 125, 'Anda akan menemukan <kanji>kegembiraan</kanji> dan <kanji>kenyamanan</kanji> di <kanji>jalanan</kanji> ini, karena Anda telah memasuki <vocabulary>distrik hiburan</vocabulary>! 

歓楽街 mengacu pada area di kota tempat banyak tempat hiburan malam, seperti bar, klub dansa, klub tuan rumah atau nyonya rumah, dan terkadang bisnis yang menawarkan layanan dewasa di lampu merah, berkumpul bersama.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Distrik Hiburan')
    RETURNING id INTO v_5819_distrik_hiburan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '損なう', 'membahayakan', 34, 126, 'Melakukan <kanji>kerugian</kanji> terhadap sesuatu berarti Anda melakukan sesuatu yang menyebabkan sesuatu mengalami kerugian. Ini adalah <vocabulary>membahayakan</vocabulary> atau <vocabulary>melukai</vocabulary>.', 'Untuk <vocabulary>membahayakan</vocabulary> lawan, Anda bertindak berlebihan. Anda <read>merendam</reading> (そこ) dalam asam. Rendam dari ujung kepala sampai ujung kaki. Terlalu jauh kawan, terlalu jauh.', 'Membahayakan, Untuk Melukai, Untuk Merusak')
    RETURNING id INTO v_5820_membahayakan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '損', 'kerugian', 34, 127, '<kanji>kerugian</kanji> akan memberi Anda <vocabulary>kerugian</vocabulary>. Jadi, usahakan jangan sampai ada kerugian... atau Anda akan dirugikan.', 'Pembacaannya berasal dari kanji, jadi Anda tidak berada dalam <vocabulary>kerugian</vocabulary>... kali ini.', 'Kerugian, Kehilangan')
    RETURNING id INTO v_5821_kerugian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '損害', 'kerusakan', 34, 128, '<kanji>kerugian</kanji> Anda berasal dari <kanji>kerusakan</kanji> yang dilakukan pada Anda. Ini adalah <vocabulary>kerusakan</vocabulary>.

Kata ini biasanya digunakan sebagai kata benda. Kadang-kadang bisa diubah menjadi kata kerja dengan menambahkan する, tapi ini sangat jarang!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Kerusakan, Cedera')
    RETURNING id INTO v_5822_kerusakan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '大損', 'kerugian-besar', 34, 129, '<kanji>kerugian</kanji> besar</kanji> adalah <vocabulary>kerugian besar</vocabulary>.', 'Bacaannya adalah bacaan おお dari 大 ditambah dengan bacaan on''yomi untuk 損. Ingatlah bahwa そん berubah menjadi ぞん dan Anda akan baik-baik saja di sini.', 'Kerugian Besar, Kerugian Besar')
    RETURNING id INTO v_5823_kerugian_besar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '全損', 'kerugian-total', 34, 130, '<kanji>semua</kanji> <kanji>kerugian</kanji> adalah saat Anda kehilangan semuanya. Ini adalah <vocabulary>kerugian total</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Kerugian Total')
    RETURNING id INTO v_5824_kerugian_total;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '枝', 'cabang', 34, 131, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Karena ini adalah kata yang terdiri dari satu kanji dan tidak ada yang lain, Anda dapat berasumsi bahwa kata ini akan menggunakan bacaan kun''yomi. Pembacaan yang Anda pelajari untuk kanji ini kebetulan merupakan pembacaan kun''yomi juga. Jadi jika Anda tahu kanjinya, Anda tahu bacaannya.', 'Cabang')
    RETURNING id INTO v_5825_cabang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '豆', 'kacang-polong', 34, 132, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Kamu ingin <vocabulary>beans</vocabulary>, tapi kamu juga sangat malas, jadi kamu memanggil ibumu sambil berteriak: "<reading>MAMEYYYYY</reading>, MAMMMEEYYY!" (まめ).', 'kacang polong')
    RETURNING id INTO v_5826_kacang_polong;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '小豆', 'kacang-azuki', 34, 133, '<kanji>Kacang</kanji> kecil mengacu pada jenis kacang yang dikenal sebagai <vocabulary>kacang azuki</vocabulary>. Akan sangat membantu jika Anda pernah mendengar tentang kacang populer yang lezat ini, karena tidak ada sesuatu pun yang efektif yang dapat kita lakukan dengan mnemonik makna mulai saat ini. Ketahuilah bahwa kacang kecil adalah kacang azuki.', 'Bacaannya juga tidak masuk akal. Jika Anda mengetahui bahwa kacang kecil adalah <vocabulary>kacang azuki</vocabulary>, maka Anda tahu bahwa ini mengacu pada sesuatu yang dikenal sebagai <reading>azuki</reading> (あずき). Selain itu, tidak banyak lagi yang bisa dilakukan.', 'Kacang Azuki, Kacang Adzuki')
    RETURNING id INTO v_5827_kacang_azuki;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '納豆', 'natto', 34, 134, '<kanji>persediaan</kanji> <kanji>kacang</kanji> adalah saat Anda mengambil seikat kacang, menumbuknya hingga menjadi persediaan, lalu memfermentasi semuanya hingga menjadi <vocabulary>natto</vocabulary> (juga dikenal sebagai <vocabulary>kedelai fermentasi</vocabulary>).', 'Bacaannya sungguh luar biasa. 豆 baik-baik saja, dan merupakan bacaan on''yomi dari kanji. Bagian 納nya aneh. Bukannya のう, tapi なっ. Tapi, kalau kamu masih ingat arti kata ini, coba pikirkan bagaimana kamu <membaca>tidak</membaca> (なっとう) ingin makan <vocabulary>natto</vocabulary>. Setidaknya banyak orang yang tidak mau memakannya. Rasanya cukup enak.', 'Natto, Kedelai yang difermentasi')
    RETURNING id INTO v_5828_natto;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '腐る', 'membusuk', 34, 135, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>busuk</kanji> sehingga versi kosakata kata kerjanya adalah <vocabulary>to rot</vocabulary>.', 'Ingat kata 臭い yang artinya "bau"? Ketika sesuatu membusuk, ia menjadi bau, dan sebagainya.', 'Membusuk')
    RETURNING id INTO v_5829_membusuk;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '腐食', 'korosi', 34, 136, 'Ketika sesuatu <kanji>membusuk</kanji> dan <kanji>memakan</kanji> sesuatu, itulah <vocabulary>korosi</vocabulary>. Bukan hal yang baik.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Korosi')
    RETURNING id INTO v_5830_korosi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '腐敗', 'penguraian', 34, 137, '<kanji>Kebusukan</kanji> dan <kanji>kegagalan</kanji> menyebabkan <vocabulary>dekomposisi</vocabulary> dan <vocabulary>busuk</vocabulary>. Kata ini juga memiliki arti terkait dengan <vocabulary>corruption</vocabulary>, serupa dengan arti "rotten" yang bisa berarti "corrupt" dalam bahasa Inggris.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Penguraian, Membusuk, Korupsi')
    RETURNING id INTO v_5831_penguraian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '爪', 'cakar', 34, 138, 'Kanji dan kata-katanya sama persis. Itu berarti keduanya memiliki arti yang sama, meskipun ada tambahan beberapa arti juga, seperti <vocabulary>kuku</vocabulary> atau <vocabulary>talon</vocabulary> atau <vocabulary>hoof</vocabulary> atau benda keras apa pun yang ada di ujung jari tangan atau kaki.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji.', 'Cakar, Paku, Cakar, Menerjang')
    RETURNING id INTO v_5832_cakar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '爪切り', 'gunting-kuku', 34, 139, 'Saat Anda <kanji>memotong</kanji> <kanji>cakar</kanji> Anda, Anda menggunakan <vocabulary>gunting kuku</vocabulary>.', 'Bacaannya adalah bacaan yang dipelajari untuk kanji 爪 dan kata untuk bacaan 切る.', 'Gunting Kuku')
    RETURNING id INTO v_5833_gunting_kuku;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '刻む', 'untuk-mengukir', 34, 140, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>mengukir</kanji> jadi versi kata kerjanya adalah <vocabulary>to carve</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda:

Anda tidak memiliki pisau untuk steak Anda, jadi Anda harus <vocabulary>memahat</vocabulary> menggunakan teknik <reading>key za</reading>g (きざ). Anda mengambil kunci dan memasukkannya ke dalam steak berulang kali hingga Anda dapat <vocabulary>memotong</vocabulary> beberapa potongan zaggy seukuran sekali gigit.', 'Untuk Mengukir, Untuk Memotong')
    RETURNING id INTO v_5834_untuk_mengukir;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '時刻表', 'jadwal', 34, 141, 'Jika Anda mengambil <kanji>waktu</kanji> dan <kanji>memahat</kanji> ke dalam <kanji>permukaan</kanji>, maka Anda telah membuat <vocabulary>jadwal</vocabulary> atau <vocabulary>jadwal</vocabulary>.

時刻表 umumnya mengacu pada jadwal atau jadwal transportasi, seperti kereta api, bus, atau penerbangan.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Jadwal, Jadwal')
    RETURNING id INTO v_5835_jadwal;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '深刻', 'serius', 34, 142, '<kanji>dalam</kanji> <kanji>mengukir</kanji> sangat <vocabulary>serius</vocabulary> dan <vocabulary>kuburan</vocabulary>. Bayangkan saja ditebas dengan pedang. Jika ukirannya dalam, itu serius.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Serius, Kuburan')
    RETURNING id INTO v_5836_serius;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '眼鏡', 'kacamata', 34, 143, '<kanji>bola mata</kanji> <kanji>cermin</kanji> adalah sesuatu yang membiaskan dan memfokuskan cahaya ke bola mata Anda dengan cara yang berbeda sehingga Anda dapat melihat lebih baik. Sungguh, benda-benda ini adalah kacamata, bukan cermin mata, tapi benda serupa jika Anda langsung melakukannya. Bayangkan saja seseorang memakai cermin di matanya, dan ketika Anda bertanya untuk apa cermin itu, mereka hanya mengatakan itu <vocabulary>kacamata</vocabulary>.', 'Bacaan 眼 sama dengan kosakata 眼. Pembacaan untuk 鏡 adalah pengecualian, sangat berbeda. Namun, bacaannya sama dengan 金 (emas), jadi bayangkan cermin di mata orang tersebut terbuat dari emas. Kacamata yang bagus!

Kata ini juga dapat dibaca sebagai がんきょう, namun biasanya hanya pada dokumen resmi/tertulis. Jika Anda berbicara dan tidak membaca dokumen pemerintah, Anda harus mengucapkan めがね!', 'Kacamata, Kacamata')
    RETURNING id INTO v_7473_kacamata;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '幕府', 'bakufu', 34, 144, '<kanji>pemerintahan</kanji> di balik <kanji>tirai</kanji> adalah <vocabulary>bakufu</vocabulary>. Mereka tidak membiarkan siapa pun mengetahui rahasia pemerintahannya sehingga mereka bersembunyi di balik tirai dan menyimpan semuanya untuk diri mereka sendiri.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda belum mempelajari bacaan ini untuk 幕, jadi inilah mnemonik untuk membantu Anda:

Jika kamu mencoba mengintip melalui tirai <vocabulary>bakufu</vocabulary> kamu hanya akan melihat <reading>back</reading> (ばく) seseorang. Mereka semua berkumpul untuk mendiskusikan berbagai hal sehingga hanya sederet punggung bungkuk yang bisa Anda dapatkan dari keshogunan. Itu tidak membantu.', 'bakufu, Keshogunan')
    RETURNING id INTO v_7608_bakufu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '迎え', 'pertemuan', 34, 145, 'Ini adalah versi kata benda dari kanji <kanji>selamat datang</kanji>, jadi artinya <vocabulary>selamat datang</vocabulary> atau <vocabulary>salam</vocabulary>, namun biasanya digunakan untuk seseorang yang datang dan <vocabulary>bertemu</vocabulary> dengan Anda!', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda sudah mempelajari bacaan ini jadi Anda harus bisa membacanya!', 'Pertemuan, Selamat datang, Salam, Penerimaan')
    RETURNING id INTO v_7722_pertemuan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '傷む', 'menjadi-rusak', 34, 146, 'Kanji berarti <kanji>luka</kanji>, dan kata kerja ini bersifat intransitif, sehingga berarti <vocabulary>menjadi rusak</vocabulary> atau <vocabulary>menjadi buruk</vocabulary>. Lagi pula, buah yang memiliki luka akan menjadi buruk, bukan?', 'Ini memiliki bacaan yang sama dengan 痛む. Artinya juga mirip, jadi mudah diingat, kecuali otak Anda dirusak oleh mnemonik ini atau semacamnya.', 'Menjadi Rusak, Menjadi Buruk, Untuk Merusak')
    RETURNING id INTO v_8725_menjadi_rusak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '以降', 'selanjutnya', 34, 147, 'Segala sesuatu yang terjadi <kanji>sejak</kanji> Anda <kanji>turun</kanji>beberapa anak tangga, adalah <vocabulary>selanjutnya</vocabulary>. Itu semua <vocabulary>setelah</vocabulary> tangga yang Anda lakukan, <vocabulary>karena</vocabulary> Anda sudah melakukannya.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Selanjutnya, Setelah, Sejak')
    RETURNING id INTO v_8810_selanjutnya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '痩せる', 'menjadi-kurus', 34, 148, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>kurus</kanji> jadi versi kata kerjanya adalah <vocabulary>to get thin</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda belum mempelajari bacaan ini, jadi inilah mnemonik untuk membantu Anda:

Jika Anda ingin <vocabulary>menjadi kurus</vocabulary>, bergabung saja dengan <reading>Ya</reading>nkees (や). Mereka menjalankan pemainnya di sekitar empat base itu sedemikian rupa sehingga mereka menjadi lebih kurus lebih cepat daripada Anda bisa melempar bola.', 'Menjadi Kurus, Untuk Menurunkan Berat Badan')
    RETURNING id INTO v_8878_menjadi_kurus;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '痩身', 'bersandar', 34, 149, 'Tipe <kanji>kurus</kanji> <kanji>tubuh</kanji> disebut <vocabulary>lean</vocabulary> atau <vocabulary>slim</vocabulary>. Saat ini istilah ini biasanya digunakan dalam konteks salon <vocabulary>pelangsingan</vocabulary> dan pijat yang bisa Anda dapatkan, yang mungkin berhasil atau tidak.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda sudah mempelajarinya, jadi Anda seharusnya bisa membacanya sendiri!', 'Bersandar, Langsing, Yg melangsingkan')
    RETURNING id INTO v_8879_bersandar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '股', 'selangkangan', 34, 150, 'Kanji berarti <kanji>selangkangan</kanji> dan kosakatanya juga berarti <vocabulary>selangkangan</vocabulary> atau <vocabulary>groin</vocabulary>.

Perhatikan bahwa 股 sedikit kurang spesifik dibandingkan 股間, dan juga dapat digunakan untuk <vocabulary>percabangan</vocabulary> dalam suatu jalan, yang masuk akal jika Anda memikirkannya, bukan?', 'Anda telah mempelajari on''yomi untuk kanji ini, tetapi seperti banyak kanji lainnya, kanji ini membutuhkan kun''yomi saat digunakan sendiri. Anda belum mempelajari kun''yomi, jadi inilah mnemonik untuk membantu Anda:

Kamu menumpahkan sesuatu ke <vocabulary>selangkangan</vocabulary>mu lagi, tapi celanamu sudah sangat ternoda sehingga tidak menjadi <reading>masalah</reading> (また).', 'selangkangan, Kunci paha, Garpu')
    RETURNING id INTO v_8976_selangkangan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '咳', 'batuk', 34, 151, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Pembacaan kosakata ini sama dengan pembacaan yang Anda pelajari dengan kanji.', 'Batuk')
    RETURNING id INTO v_8986_batuk;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '紅葉', 'dedaunan-musim-gugur', 34, 152, 'Anda mendapatkan beberapa <kanji>merah tua</kanji> <kanji>daun</kanji>. Biasanya Anda akan melihatnya saat musim gugur, sehingga <vocabulary>musim gugur ini berakhir</vocabulary>. <vocabulary>daun merah</vocabulary> saja juga tidak masalah.

Perhatikan bahwa ini tidak hanya mengacu pada daun itu sendiri, tetapi juga proses perubahan warnanya, jadi ini juga bisa berarti <vocabulary>daun menjadi merah</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Karena Anda belum mempelajari bacaan ini untuk 葉, berikut ini mnemonik untuk membantu Anda:

Hiburan favorit Anda selama musim gugur adalah duduk di sana mengagumi <vocabulary>dedaunan musim gugur</vocabulary> sambil makan <reading>yo</reading>gurt (よう). Tidak ada kombinasi yang lebih baik dari daun musim gugur dan yogurt.

Perhatikan bahwa ada juga bacaan tambahan, もみじ, yang digunakan untuk merujuk pada pohon maple Jepang, atau daunnya, tapi kami ingin Anda fokus pada こうよう untuk yang satu ini.', 'Dedaunan Musim Gugur, Daun Merah, Daun Menjadi Merah')
    RETURNING id INTO v_9291_dedaunan_musim_gugur;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '飛び込み', 'menyelam', 34, 153, 'Anda melakukan 飛ぶ dan 込む secara bersamaan, atau Anda <kanji>melompat</kanji> <kanji>ke</kanji>, artinya Anda <vocabulary>menyelam ke</vocabulary>. Bayangkan diri Anda berdiri di suatu tempat yang tinggi, lalu melompat untuk menyelam ke perairan yang dalam.

Atau, ini juga bisa merujuk pada melakukan sesuatu, atau bergabung atau pergi ke suatu tempat tanpa janji temu, pengumuman, atau registrasi sebelumnya, yang merupakan asal mula arti <vocabulary>mampir</vocabulary>. Untuk beberapa kasus penggunaan ini, lihat kombinasi kata umum dan kalimat konteks kami di bawah!', 'Selama Anda ingat bahwa kami menggabungkan pembacaan kun''yomi dari kata kerja dan kemudian mengubahnya menjadi kata benda, Anda harus tahu cara membacanya.', 'Menyelam, Mampir')
    RETURNING id INTO v_9332_menyelam;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '手拭い', 'handuk-tangan', 34, 154, 'Anda memiliki kanji untuk <kanji>tangan</kanji> dan versi kata benda dari kata kerja untuk <kanji>wipe</kanji>. Dengan sedikit imajinasi, ini akan menjadi <vocabulary>handuk</vocabulary>, atau sekadar <vocabulary>handuk</vocabulary>. Ini adalah jenis handuk kain yang sangat spesifik, itulah sebabnya Anda juga akan sering menemukannya dengan nama Jepangnya <vocabulary>tenugui</vocabulary>.

Berbeda dengan お手拭き, yang telah Anda pelajari beberapa level yang lalu, 手拭い selalu berupa handuk — bukan tisu. Kain tipis dan rata ini panjang dan sempit, memiliki berbagai kegunaan lebih dari sekadar membersihkan tangan. Sejarah mereka sangat menarik, jadi pastikan untuk mencarinya!', 'Anda memiliki kosakata mandiri (手) yang dikombinasikan dengan versi kata benda dari kata kerja (拭い dari 拭う), yang artinya menggunakan bacaan kun''yomi. Anda sudah mempelajarinya, jadi sebaiknya Anda mulai!', 'Handuk Tangan, Handuk, Tenugui')
    RETURNING id INTO v_9339_handuk_tangan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '金儲け', 'mencari-uang', 34, 155, 'Kata 金 di sini berasal dari お金 (uang), dan baru-baru ini Anda mengetahui bahwa 儲ける berarti "mendapatkan keuntungan". Nah, jika Anda memperoleh uang dan menghasilkan keuntungan, Anda <vocabulary>menghasilkan uang</vocabulary>. Anda sudah memahami seluruh hal <vocabulary>menghasilkan uang</vocabulary> ini.

金儲け adalah kata biasa untuk menghasilkan uang dengan kesan praktis dan sedikit mementingkan diri sendiri. Ini bersifat lugas dan agak kasar — ​​istilah yang biasa Anda dengar dalam pembicaraan sederhana tentang keuntungan, usaha sampingan, dan skema cepat kaya.', 'Bacaannya berupa vocab kata お金 dan 儲ける yang digabungkan menjadi satu. Selama Anda ingat bacaan kata-kata itu, Anda harus bisa membaca yang ini juga.', 'Mencari uang, Menghasilkan Uang')
    RETURNING id INTO v_9440_mencari_uang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '騙る', 'untuk-meniru-identitas-secara-palsu', 34, 156, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Hah — kata kerja lain untuk <kanji>tipu daya</kanji>? Yup, tapi ini untuk jenis tipu daya tertentu: artinya <vocabulary>meniru identitas</vocabulary> secara palsu.

騙る mengacu pada berpura-pura menjadi sesuatu yang bukan diri Anda, terutama dengan mengklaim identitas, status, atau cerita palsu. Kata ini lebih sempit daripada 騙す, karena secara khusus melibatkan penafsiran yang salah — seperti saat penipu mencoba <vocabulary>menyamar</vocabulary> seseorang yang bukan dirinya.', 'Kata ini menggunakan bacaan kun''yomi yang berbeda dari yang Anda pelajari dengan kanji dan 騙す. Berikut ini mnemonik untuk membantu Anda mengingatnya:

Hukuman karena mencoba <vocabulary>meniru identitas</vocabulary> seseorang secara palsu adalah dikeluarkan dari <reading>cata</reading>pult (かた). Jika Anda ingin <vocabulary>berpura-pura sebagai</vocabulary> orang lain dan menipu orang yang tidak bersalah, Anda sebaiknya bersiap untuk dimasukkan ke dalam ketapel dan dibuang hingga terlupakan.

Atau, Anda dapat memikirkan bagaimana kata ini seperti versi jahat dari 語る (berbicara). Anda sedang berbicara, namun kali ini Anda menggunakan kata-kata Anda untuk secara curang mengaku sebagai seseorang yang bukan Anda.', 'Untuk Meniru Identitas Secara Palsu, Untuk Berpose Sebagai, Untuk Meniru')
    RETURNING id INTO v_9463_untuk_meniru_identitas_secara_palsu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '懐中電灯', 'senter', 34, 157, '懐 berarti "nostalgia", tapi bisa juga berarti "kantong dada", bukan? Nah, di <kanji>kanji>tengah</kanji> <kanji>kantong dada</kanji>mu, kamu punya 電灯 (lampu listrik). Jenis 電灯 apa yang cukup kecil untuk disimpan di tengah saku dada Anda? <vocabulary>senter</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda belum mempelajari on''yomi 懐, jadi inilah mnemonik untuk membantu Anda mengingatnya:

Anda menyorotkan <vocabulary>senter</vocabulary> Anda ke dalam <reading>kay</reading>ak (かい) karena Anda menjatuhkan sesuatu di sana saat Anda sedang bermain kayak. Anda cukup yakin itu ada di suatu tempat jauh di dalam bagian dalam kayak, jadi Anda merangkak terlebih dahulu dengan senter untuk memeriksanya. Cobalah untuk tidak terjebak.', 'Senter, Obor Listrik')
    RETURNING id INTO v_9484_senter;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2592_lama_tak_jumpa, 'Lama tak jumpa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_2592_lama_tak_jumpa, 'Sudah lama', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5616_peniruan, 'Peniruan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5616_peniruan, 'Imitasi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5616_peniruan, 'Peniruan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5714_jamak, 'Jamak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5714_jamak, 'Bentuk Jamak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5718_jantung, 'Jantung', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5719_paru_paru, 'Paru-paru', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5720_organ_dalam, 'Organ Dalam', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5721_untuk_bergerak, 'Untuk Bergerak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5721_untuk_bergerak, 'Untuk Pindah Rumah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5722_untuk_menyalip, 'Untuk Menyalip', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5722_untuk_menyalip, 'Untuk Melampaui', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5722_untuk_menyalip, 'Untuk Lulus', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5722_untuk_menyalip, 'Untuk Menarik Ke Depan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5723_kakek_nenek, 'Kakek-nenek', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5724_pemilik_hewan_peliharaan, 'Pemilik Hewan Peliharaan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5726_untuk_menyakiti_seseorang, 'Untuk Menyakiti Seseorang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5726_untuk_menyakiti_seseorang, 'Untuk Menggaruk', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5726_untuk_menyakiti_seseorang, 'Untuk Merusak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5727_sekali_pakai, 'Sekali pakai', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5728_untuk_membuang, 'Untuk Membuang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5729_untuk_dimasukkan, 'Untuk Dimasukkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5729_untuk_dimasukkan, 'Untuk Memuat Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5730_untuk_melamar, 'Untuk Melamar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5730_untuk_melamar, 'Untuk Mengirimkan Lamaran', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5730_untuk_melamar, 'Untuk Melamar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5731_bunuh_diri_dengan_kereta_api, 'Bunuh Diri Dengan Kereta Api', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5732_untuk_menulis, 'Untuk Menulis', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5732_untuk_menulis, 'Untuk Mengisi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5732_untuk_menulis, 'Untuk Mencatat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5733_kerumunan_orang, 'Kerumunan Orang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5734_noda, 'Noda', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5734_noda, 'Noda', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5735_untuk_dicelup, 'Untuk Dicelup', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5736_untuk_membuat_kotor, 'Untuk Membuat Kotor', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5736_untuk_membuat_kotor, 'Untuk Membuat Sesuatu Kotor', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5737_mengizinkan, 'Mengizinkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5737_mengizinkan, 'Penjelasan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5738_untuk_mengisi, 'Untuk Mengisi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5738_untuk_mengisi, 'Untuk menjejalkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5739_selamat_datang, 'Selamat datang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5739_selamat_datang, 'Menyambut', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5740_golongan_darah, 'Golongan darah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5740_golongan_darah, 'Golongan Darah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5741_tidak_ada_bunga, 'Tidak Ada Bunga', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5741_tidak_ada_bunga, 'Tidak Tertarik', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5742_setuju, 'Setuju', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5742_setuju, 'Untuk Menyetujui', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5742_setuju, 'Untuk Mendukung', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5743_salah_paham, 'Salah paham', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5744_salah_ketik, 'Salah ketik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5745_penyalahgunaan, 'Penyalahgunaan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5746_kesalahan_hitung, 'Kesalahan hitung', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5748_kakak, 'Kakak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5748_kakak, 'Kakak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5748_kakak, 'Senior seseorang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5752_menyerah, 'Menyerah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5754_mangkuk_daging_sapi, 'Mangkuk Daging Sapi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5754_mangkuk_daging_sapi, 'Mangkuk Nasi Daging Sapi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5756_tempat_nasi, 'Tempat nasi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5756_tempat_nasi, 'Mangkuk Donburi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5757_untuk_muntah, 'Untuk Muntah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5757_untuk_muntah, 'Untuk Muntah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5757_untuk_muntah, 'Untuk meludah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5758_bung, 'Bung', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5758_bung, 'Pria', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5759_budak, 'Budak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5763_untuk_menyusut, 'Untuk Menyusut', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5763_untuk_menyusut, 'Untuk Mengontrak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5764_pengurangan, 'Pengurangan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5764_pengurangan, 'Memotong', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5765_sederhana, 'Sederhana', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5766_najis, 'Najis', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5767_semua_wol, 'Semua Wol', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5768_vertikal, 'Vertikal', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5769_penulisan_vertikal, 'Penulisan Vertikal', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5769_penulisan_vertikal, 'Penulisan Gaya Vertikal', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5770_panjang_lebar, 'Panjang lebar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5770_panjang_lebar, 'Vertikal Dan Horisontal', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5771_murni, 'Murni', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5771_murni, 'Asli', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5772_bergaya, 'Bergaya', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5772_bergaya, 'Cantik', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5772_bergaya, 'Gurih', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5772_bergaya, 'Berkelas', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5773_kekudusan, 'Kekudusan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5773_kekudusan, 'Suci', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5774_alkitab, 'Alkitab', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5775_hari_suci, 'Hari Suci', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5776_tanah_suci, 'Tanah Suci', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5776_tanah_suci, 'Tanah Suci', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5777_daya_tarik, 'Daya tarik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5778_magnet, 'magnet', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5778_magnet, 'Sebuah Magnet', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5779_medan_magnet, 'Medan Magnet', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5781_teh_hitam, 'Teh Hitam', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5782_tembakan, 'Tembakan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5782_tembakan, 'Injeksi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5783_cerminan, 'Cerminan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5783_cerminan, 'Refleks', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5784_untuk_meluncurkan, 'Untuk Meluncurkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5784_untuk_meluncurkan, 'Untuk Menembak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5785_radiasi, 'Radiasi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5786_tirai, 'Tirai', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5787_subtitle, 'Subtitle', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5788_penarik_kawat, 'penarik kawat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5788_penarik_kawat, 'Dalang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5788_penarik_kawat, 'Tirai Hitam', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5789_untuk_menyembah, 'Untuk Menyembah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5789_untuk_menyembah, 'Untuk Berdoa Kepada', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5789_untuk_menyembah, 'Untuk Melihat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5790_untuk_dilihat, 'Untuk Dilihat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5790_untuk_dilihat, 'Untuk Melihat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5791_perkiraan, 'Perkiraan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5791_perkiraan, 'Memperkirakan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5792_pemikiran, 'Pemikiran', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5792_pemikiran, 'Kesimpulan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5793_rekomendasi, 'Rekomendasi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5794_rekomendasi_mandiri, 'Rekomendasi Mandiri', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5794_rekomendasi_mandiri, 'Nominasi Diri', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5795_untuk_merekomendasikan, 'Untuk Merekomendasikan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5796_untuk_memamerkan, 'Untuk Memamerkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5796_untuk_memamerkan, 'Untuk Mendemonstrasikan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5796_untuk_memamerkan, 'Untuk Membawa Keluar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5797_memerintah, 'Memerintah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5797_memerintah, 'Memimpin', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5798_pesisir, 'Pesisir', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5798_pesisir, 'Pantai', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5799_perairan_pantai, 'Perairan pantai', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5799_perairan_pantai, 'Garis pantai', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5800_sepanjang_jalur_kereta_api, 'Sepanjang Jalur Kereta Api', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5800_sepanjang_jalur_kereta_api, 'Sepanjang Kereta Api', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5801_untuk_berlari_bersamaan, 'Untuk Berlari Bersamaan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5801_untuk_berlari_bersamaan, 'Untuk Menjalankan Paralel Ke', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5802_asal, 'Asal', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5802_asal, 'Sumber', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5802_asal, 'Pegas Tanah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5803_genji, 'Genji', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5804_sumber_daya, 'Sumber Daya', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5804_sumber_daya, 'jalan keluar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5804_sumber_daya, 'Stopkontak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5805_pusat_gempa, 'Pusat gempa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5805_pusat_gempa, 'Pusat gempa', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5813_untuk_dipekerjakan_di, 'Untuk Dipekerjakan Di', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5813_untuk_dipekerjakan_di, 'Untuk Bekerja', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5814_bepergian, 'Bepergian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5814_bepergian, 'Perjalanan Ke Tempat Kerja', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5815_pekerjaan_penuh_waktu, 'Pekerjaan Penuh Waktu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5815_pekerjaan_penuh_waktu, 'Penuh Waktu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5816_untuk_dengan_rendah_hati_mendengar, 'Untuk Dengan Rendah Hati Mendengar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5816_untuk_dengan_rendah_hati_mendengar, 'Untuk Menerima', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5817_izin, 'Izin', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5817_izin, 'Tahu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5817_izin, 'Menyadari', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5818_persetujuan, 'Persetujuan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5818_persetujuan, 'Pengakuan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5818_persetujuan, 'Perjanjian', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5819_distrik_hiburan, 'Distrik Hiburan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5820_membahayakan, 'Membahayakan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5820_membahayakan, 'Untuk Melukai', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5820_membahayakan, 'Untuk Merusak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5821_kerugian, 'Kerugian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5821_kerugian, 'Kehilangan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5822_kerusakan, 'Kerusakan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5822_kerusakan, 'Cedera', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5823_kerugian_besar, 'Kerugian Besar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5823_kerugian_besar, 'Kerugian Besar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5824_kerugian_total, 'Kerugian Total', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5825_cabang, 'Cabang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5826_kacang_polong, 'kacang polong', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5827_kacang_azuki, 'Kacang Azuki', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5827_kacang_azuki, 'Kacang Adzuki', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5828_natto, 'Natto', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5828_natto, 'Kedelai yang difermentasi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5829_membusuk, 'Membusuk', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5830_korosi, 'Korosi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5831_penguraian, 'Penguraian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5831_penguraian, 'Membusuk', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5831_penguraian, 'Korupsi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5832_cakar, 'Cakar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5832_cakar, 'Paku', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5832_cakar, 'Cakar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5832_cakar, 'Menerjang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5833_gunting_kuku, 'Gunting Kuku', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5834_untuk_mengukir, 'Untuk Mengukir', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5834_untuk_mengukir, 'Untuk Memotong', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5835_jadwal, 'Jadwal', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5835_jadwal, 'Jadwal', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5836_serius, 'Serius', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5836_serius, 'Kuburan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7473_kacamata, 'Kacamata', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7473_kacamata, 'Kacamata', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7608_bakufu, 'bakufu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7608_bakufu, 'Keshogunan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7722_pertemuan, 'Pertemuan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7722_pertemuan, 'Selamat datang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7722_pertemuan, 'Salam', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7722_pertemuan, 'Penerimaan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8725_menjadi_rusak, 'Menjadi Rusak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8725_menjadi_rusak, 'Menjadi Buruk', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8725_menjadi_rusak, 'Untuk Merusak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8810_selanjutnya, 'Selanjutnya', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8810_selanjutnya, 'Setelah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8810_selanjutnya, 'Sejak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8878_menjadi_kurus, 'Menjadi Kurus', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8878_menjadi_kurus, 'Untuk Menurunkan Berat Badan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8879_bersandar, 'Bersandar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8879_bersandar, 'Langsing', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8879_bersandar, 'Yg melangsingkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8976_selangkangan, 'selangkangan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8976_selangkangan, 'Kunci paha', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8976_selangkangan, 'Garpu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8986_batuk, 'Batuk', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9291_dedaunan_musim_gugur, 'Dedaunan Musim Gugur', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9291_dedaunan_musim_gugur, 'Daun Merah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9291_dedaunan_musim_gugur, 'Daun Menjadi Merah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9332_menyelam, 'Menyelam', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9332_menyelam, 'Mampir', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9339_handuk_tangan, 'Handuk Tangan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9339_handuk_tangan, 'Handuk', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9339_handuk_tangan, 'Tenugui', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9440_mencari_uang, 'Mencari uang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9440_mencari_uang, 'Menghasilkan Uang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9463_untuk_meniru_identitas_secara_palsu, 'Untuk Meniru Identitas Secara Palsu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9463_untuk_meniru_identitas_secara_palsu, 'Untuk Berpose Sebagai', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9463_untuk_meniru_identitas_secara_palsu, 'Untuk Meniru', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9484_senter, 'Senter', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9484_senter, 'Obor Listrik', false, true);

  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_2592_lama_tak_jumpa, 'ひさしぶり', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5616_peniruan, 'ものまね', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5714_jamak, 'ふくすうけい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5718_jantung, 'しんぞう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5719_paru_paru, 'はいぞう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5720_organ_dalam, 'ないぞう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5721_untuk_bergerak, 'ひっこす', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5722_untuk_menyalip, 'おいこす', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5723_kakek_nenek, 'そふぼ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5724_pemilik_hewan_peliharaan, 'かいぬし', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5726_untuk_menyakiti_seseorang, 'きずつける', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5727_sekali_pakai, 'つかいすて', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5728_untuk_membuang, 'なげすてる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5729_untuk_dimasukkan, 'こめる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5730_untuk_melamar, 'もうしこむ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5731_bunuh_diri_dengan_kereta_api, 'とびこみじさつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5732_untuk_menulis, 'かきこむ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5733_kerumunan_orang, 'ひとごみ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5734_noda, 'しみ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5735_untuk_dicelup, 'そまる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5736_untuk_membuat_kotor, 'よごす', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5736_untuk_membuat_kotor, 'けがす', NULL, false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5737_mengizinkan, 'いいわけ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5738_untuk_mengisi, 'つめこむ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5739_selamat_datang, 'かんげい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5740_golongan_darah, 'けつえきがた', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5741_tidak_ada_bunga, 'きょうみがない', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5742_setuju, 'さんせいする', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5743_salah_paham, 'ごかい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5744_salah_ketik, 'ごじ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5745_penyalahgunaan, 'ごよう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5746_kesalahan_hitung, 'ごさん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5748_kakak, 'あにき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5752_menyerah, 'こうさん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5754_mangkuk_daging_sapi, 'ぎゅうどん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5756_tempat_nasi, 'どんぶり', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5757_untuk_muntah, 'はく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5758_bung, 'やつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5759_budak, 'どれい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5763_untuk_menyusut, 'ちぢまる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5764_pengurangan, 'しゅくしょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5765_sederhana, 'たんじゅん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5766_najis, 'ふじゅん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5767_semua_wol, 'じゅんもう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5768_vertikal, 'たて', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5769_penulisan_vertikal, 'たてがき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5770_panjang_lebar, 'たてよこ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5770_panjang_lebar, 'じゅうおう', NULL, false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5771_murni, 'じゅんすい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5772_bergaya, 'いき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5773_kekudusan, 'しんせい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5774_alkitab, 'せいしょ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5775_hari_suci, 'せいじつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5776_tanah_suci, 'せいち', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5777_daya_tarik, 'じき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5778_magnet, 'じしゃく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5779_medan_magnet, 'じば', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5781_teh_hitam, 'こうちゃ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5782_tembakan, 'ちゅうしゃ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5783_cerminan, 'はんしゃ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5784_untuk_meluncurkan, 'はっしゃする', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5785_radiasi, 'ほうしゃ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5786_tirai, 'まく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5787_subtitle, 'じまく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5788_penarik_kawat, 'くろまく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5789_untuk_menyembah, 'おがむ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5790_untuk_dilihat, 'はいけんする', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5791_perkiraan, 'すいてい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5792_pemikiran, 'すいり', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5793_rekomendasi, 'すいせん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5794_rekomendasi_mandiri, 'じせん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5795_untuk_merekomendasikan, 'すすめる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5796_untuk_memamerkan, 'はっきする', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5797_memerintah, 'しき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5798_pesisir, 'えんがん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5799_perairan_pantai, 'えんかい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5800_sepanjang_jalur_kereta_api, 'えんせん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5801_untuk_berlari_bersamaan, 'そう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5802_asal, 'みなもと', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5803_genji, 'げんじ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5804_sumber_daya, 'でんげん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5805_pusat_gempa, 'しんげんち', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5813_untuk_dipekerjakan_di, 'つとめる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5814_bepergian, 'つうきん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5815_pekerjaan_penuh_waktu, 'じょうきん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5816_untuk_dengan_rendah_hati_mendengar, 'うけたまわる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5817_izin, 'しょうち', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5818_persetujuan, 'しょうにん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5819_distrik_hiburan, 'かんらくがい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5820_membahayakan, 'そこなう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5821_kerugian, 'そん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5822_kerusakan, 'そんがい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5823_kerugian_besar, 'おおぞん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5824_kerugian_total, 'ぜんそん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5825_cabang, 'えだ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5826_kacang_polong, 'まめ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5827_kacang_azuki, 'あずき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5828_natto, 'なっとう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5829_membusuk, 'くさる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5830_korosi, 'ふしょく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5831_penguraian, 'ふはい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5832_cakar, 'つめ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5833_gunting_kuku, 'つめきり', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5834_untuk_mengukir, 'きざむ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5835_jadwal, 'じこくひょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5836_serius, 'しんこく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7473_kacamata, 'めがね', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7473_kacamata, 'がんきょう', NULL, false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7608_bakufu, 'ばくふ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7722_pertemuan, 'むかえ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8725_menjadi_rusak, 'いたむ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8810_selanjutnya, 'いこう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8878_menjadi_kurus, 'やせる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8879_bersandar, 'そうしん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8976_selangkangan, 'また', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8986_batuk, 'せき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9291_dedaunan_musim_gugur, 'こうよう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9291_dedaunan_musim_gugur, 'もみじ', NULL, false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9332_menyelam, 'とびこみ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9339_handuk_tangan, 'てぬぐい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9440_mencari_uang, 'かねもうけ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9463_untuk_meniru_identitas_secara_palsu, 'かたる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9484_senter, 'かいちゅうでんとう', NULL, true, true);

  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2592_lama_tak_jumpa, '久しぶりですね！', 'Lama tak jumpa!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2592_lama_tak_jumpa, '久しぶりのビールは、なみだが出るほどおいしかった。', 'Bir setelah sekian lama tidak mabuk ternyata sangat enak hingga membuatku menangis.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_2592_lama_tak_jumpa, '久しぶり！とあったことのない人にいわれた。', 'Saya diberitahu "lama tidak bertemu" oleh seseorang yang belum pernah saya temui sebelumnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5616_peniruan, '「いつも何してるの？」「毎日一日中物真似の練習をしてるよ。」', '"Apa yang kamu lakukan setiap hari?" "Saya berlatih peniruan identitas sepanjang hari, setiap hari."');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5714_jamak, 'Sheepの複数形はsheepです。', 'Bentuk jamak dari domba adalah domba.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5714_jamak, '「この単語の複数形も知らないの？」って友達に笑われて、とても傷つきました。', 'Teman saya berkata, "Kamu bahkan tidak tahu bentuk jamak dari kata ini?" dan menertawakanku, dan aku sangat terluka.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5714_jamak, '日本語では英語に比べて単語を複数形にすることは少ないです。', 'Dalam bahasa Jepang Anda tidak perlu mengubah sesuatu menjadi bentuk jamak sesering dalam bahasa Inggris.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5718_jantung, '電話恐怖症みたいなのがあって、電話で話をする時に心臓がバクバクするんです。', 'Saya memiliki sejenis fobia telepon dan jantung saya mulai berdetak sangat cepat setiap kali saya berbicara di telepon.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5719_paru_paru, '私の祖父は肺臓炎で亡くなりました。', 'Kakek saya meninggal karena radang paru-paru.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5720_organ_dalam, 'ご近所さんのガレージで鹿の内臓を取り出すんです。', 'Mereka mengambil organ dalam rusa di garasi tetangga saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5721_untuk_bergerak, '「パパ、フグと私、結婚して日本に引っ越すつもりよ。」「俺の目の黒いうちはそんなことはさせないぞ。」', '“Ayah, Fugu dan aku akan menikah dan pindah ke Jepang.” "Tidak selama aku masih hidup, kamu tidak akan melakukannya."');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5722_untuk_menyalip, '他の自転車走者を追い越す時、いつも挨拶代わりに手を振ります。', 'Saya selalu melambaikan tangan untuk menyapa setiap kali saya berpapasan dengan pengendara motor lain.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5723_kakek_nenek, '私の祖父母はまだ小児科医にかかっています。', 'Kakek-nenek saya masih menemui dokter anak mereka.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5724_pemilik_hewan_peliharaan, 'もし犬の飼い主が水疱瘡になったら、その犬も水疱瘡になる可能性はあるんでしょうか。', 'Jika pemilik anjing menderita cacar air, apakah anjingnya juga dapat tertular?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5726_untuk_menyakiti_seseorang, 'コンタクトレンズを傷つけちゃったかも。', 'Saya mungkin telah menggores lensa kontak saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5726_untuk_menyakiti_seseorang, '私たちも知らないうちに人を傷つけているかもしれません。', 'Kita mungkin juga menyakiti orang lain tanpa menyadarinya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5726_untuk_menyakiti_seseorang, '誰だよ？俺のベンツに鉄棒で傷つけやがったのは？！見つけたらただじゃおかねえぞ！', 'Siapa yang merusak Mercedes saya dengan batang besi?! Mereka akan membayarnya!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5727_sekali_pakai, '私にとって、使い捨てカイロは冬には無くてはならないものです。', 'Bagi saya, penghangat saku sekali pakai sangat diperlukan di musim dingin.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5728_untuk_membuang, '今朝、六時に目覚ましがなった時に、その時計を投げ捨ててしまいました。', 'Aku membuang jam wekerku ketika berbunyi pukul enam pagi ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5729_untuk_dimasukkan, 'ショットガンに弾を込める時間がなかったんだ。', 'Saya tidak punya cukup waktu untuk memasukkan peluru ke dalam senapan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5729_untuk_dimasukkan, 'もっと気持ちを込めて演技しろよ！それでもプロの劇団員か？', 'Berikan lebih banyak emosi dalam penampilan Anda! Apakah Anda benar-benar seorang aktor teater profesional?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5730_untuk_melamar, 'JLPTのテストに申し込むのを忘れてしまった。', 'Saya lupa mendaftar ujian JLPT.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5731_bunuh_diri_dengan_kereta_api, 'あいつ、飛び込み自殺をするために家を出る前、俺のプレイステーションをあいつのテレビに繋いだんだよな。何か意味があったのかな？', 'Dia menghubungkan PlayStation saya ke TV-nya sebelum meninggalkan rumah kami untuk bunuh diri dengan melompat ke depan kereta. Apakah menurut Anda itu berarti sesuatu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5732_untuk_menulis, '急いで申込書に書き込んだ方がいいよ。あと十分で事務所は閉まっちゃうんだから。', 'Anda sebaiknya bergegas dan mengisi aplikasi. Kantor akan tutup sepuluh menit lagi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5733_kerumunan_orang, '怖くて人込みの中に行けません。', 'Saya tidak bisa pergi ke tengah kerumunan orang karena saya takut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5733_kerumunan_orang, '新宿駅構内を歩く時は、人込みでいつもイライラする。', 'Saat saya berjalan di dalam Stasiun Shinjuku, saya selalu merasa frustrasi dengan banyaknya orang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5733_kerumunan_orang, '男はそう言うと、人込みにまぎれて消えてしまった。', 'Setelah mengatakan itu, pria itu menghilang ke tengah kerumunan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5734_noda, 'この染みなんとか取れないかなあ。', 'Tidak bisakah Anda menemukan cara untuk menghilangkan noda ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5735_untuk_dicelup, '子供たちがこの悪い環境に染まってしまうことを心配してるのよ。', 'Saya khawatir anak-anak kita akan ternoda oleh lingkungan yang buruk ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5736_untuk_membuat_kotor, '綺麗なスタイが無くなっちゃった。うちの赤ちゃんが全部汚しちゃって。', 'Kami kehabisan oto bersih. Bayi laki-laki kami membuat semuanya kotor.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5736_untuk_membuat_kotor, 'アイツは自分では決して手を汚さない、ずるい男だ。', 'Dia adalah pria licik yang tidak pernah mengotori tangannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5736_untuk_membuat_kotor, 'ひどい！許せません。神聖な場所を汚された気分です。', 'Sangat buruk!!! Saya tidak bisa mentolerirnya. Rasanya seperti tempat suci telah dikotori.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5737_mengizinkan, '分かってもらえることを願って、言い訳を書いたEメールを送りました。', 'Saya mengiriminya email penjelasan dan saya harap dia bisa mengerti.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5738_untuk_mengisi, 'なんとか洋服を全部スーツケースに詰め込めました。', 'Aku berhasil menjejalkan semua pakaianku ke dalam koper.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5739_selamat_datang, 'カウンターの上に「チップ大歓迎」と書かれた箱がありましたよ。', 'Saya melihat sebuah kotak di konter yang bertuliskan "tips selamat datang".');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5740_golongan_darah, '私は血液型がB型の人が苦手です。', 'Saya tidak suka orang yang bergolongan darah B.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5741_tidak_ada_bunga, '俺は顧客と個人的に仲良くなることには興味がないんだ。', 'Saya tidak tertarik membangun hubungan pribadi dengan pelanggan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5742_setuju, 'それがどんな汚い手を使ってでも勝たなきゃいけない試合だってことには賛成するよ。', 'Saya setuju bahwa ini adalah pertandingan yang harus kita menangkan dengan cara apa pun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5743_salah_paham, '君は誤解しているよ。あれは俺の姉貴だよ。', 'Anda salah paham. Dia adalah kakak perempuanku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5744_salah_ketik, 'とりあえず今は誤字脱字を見つけてくれればそれでいいから。', 'Untuk saat ini, yang harus Anda lakukan hanyalah menemukan kesalahan ketik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5745_penyalahgunaan, '薬の誤用は命に関わることがあります。', 'Penyalahgunaan obat bisa berakibat fatal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5746_kesalahan_hitung, '彼女は英語がペラペラだと思ったが、とんだ誤算だった。', 'Saya salah dalam berpikir bahwa dia akan berbicara bahasa Inggris dengan baik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5748_kakak, 'お前の兄貴はイケてるけど、俺の兄貴はダサイからな。', 'Kakak laki-lakimu adalah pria yang sangat keren, tapi kakakku tidak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5748_kakak, '兄貴の子どもたちは、ちゃんと順番を守って交互にブランコに乗った。', 'Anak-anak kakak laki-laki saya bergantian bermain ayunan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5752_menyerah, '私はまだ降参していません。', 'Saya belum menyerah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5754_mangkuk_daging_sapi, '「この牛丼は、私のおごりね。」「わあ、ありがとう。じゃあ、お言葉に甘えます。」', '"Mangkuk daging sapi ini adalah traktiranku." “Oh, terima kasih. Saya akan menjelaskannya kepada Anda.”');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5756_tempat_nasi, 'アメリカで日本の丼みたいな食器を買いたいんですが、ちょうどいいサイズのがないんですよね〜。', 'Saya ingin membeli beberapa peralatan makan di Amerika, seperti rice bowl Jepang, tapi saya tidak dapat menemukan ukuran yang tepat!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5756_tempat_nasi, 'ねえ、あの丼の中に干からびた納豆が入ってたよ。', 'Hei, ada natto kering di mangkuk nasi itu!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5756_tempat_nasi, '朝から蟹丼なんて食べてるの？あんたって、本当に朝型人間ね。', 'Anda makan semangkuk kepiting di pagi hari? Anda benar-benar orang yang suka bangun pagi, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5757_untuk_muntah, '「遅れてごめんなさい。朝、少し気分が悪くて吐いてしまって。」「大丈夫だよ。遅れても来ないよりはましだよ。」', '“Maaf aku terlambat. Aku sakit dan muntah pagi ini.” "Tidak apa-apa. Lebih baik terlambat daripada tidak sama sekali."');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5758_bung, '宝くじが当たってから、奴は数週間最高の気分を味わったんだ。', 'Setelah memenangkan lotre, pria itu bersemangat selama berminggu-minggu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5759_budak, 'そう取り乱すなよ。心配ないって。俺らはまだ奴隷だけど、そのうち何とかなるよ。', 'Jangan kehilangan ketenanganmu. Jangan khawatir. Kami masih menjadi budak sekarang, tapi segalanya akan beres.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5763_untuk_menyusut, '雷がゴロゴロ鳴っている間、うちの犬は怖がって縮まっていました。', 'Anak anjing saya menyusut ketakutan saat guntur bergemuruh.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5764_pengurangan, 'うちの会社、他社との競争に勝つために、利鞘を縮小することを検討しているんだ。', 'Perusahaan kami sedang berpikir untuk mengurangi margin keuntungan agar dapat bersaing dengan perusahaan lain.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5765_sederhana, '日本語で単純な文章なら作れますが、難しいのはまだ無理です。', 'Saya bisa membuat kalimat sederhana dalam bahasa Jepang, tapi saya belum bisa membuat kalimat rumit.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5766_najis, '私は不純な動機から日本語を勉強し始めました。', 'Saya mulai belajar bahasa Jepang karena motif yang tidak murni.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5767_semua_wol, '新しい純毛のセーター、チクチクして痒いんだよね。', 'Sweter wol baruku terasa menusuk dan membuatku gatal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5768_vertikal, '縦100cm横160cmの窓に合う良いカーテンを探しています。', 'Saya mencari tirai bagus yang sesuai dengan jendela berukuran 100 sentimeter kali 160 sentimeter.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5769_penulisan_vertikal, '文章を縦書にしたいんです。', 'Saya ingin membuat tulisannya vertikal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5770_panjang_lebar, 'このパネルの縦横の長さを測りたいんだけどちょっと手伝ってくれない？', 'Bisakah Anda membantu saya mengukur panjang vertikal dan horizontal panel ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5771_murni, '純粋に金銭的な理由だけで、夫とまだ一緒にいるんです。', 'Saya masih bersama suami saya semata-mata karena alasan keuangan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5772_bergaya, '先生の着物の着こなしって、本当に粋ですよね。めっちゃ憧れます。', 'Cara guru kita memakai kimononya sangat stylish dan berkelas, bukan? Saya sangat mengaguminya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5772_bergaya, 'へー、それは粋な生き方だね。って、ダジャレじゃないよ！', 'Oh, itu cara hidup yang berkelas. Dan tidak, itu bukan pelesetan!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5772_bergaya, '店長の粋な計らいでデザートがサービスされました。', 'Berkat sikap bijaksana pemiliknya, kami mendapat makanan penutup gratis.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5772_bergaya, 'アイツ、自分で粋な会話をしてるって思ってるところがムカツクんだよね。粋にキメてるつもりかもしれないけど、いつもダダすべりだっつーの。', 'Yang membuatku kesal adalah dia mengira dia sedang melakukan percakapan yang keren dan jenaka. Dia mungkin berpikir dia berhasil, tapi dia selalu gagal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5773_kekudusan, '村人たちは、自然に対し神聖な敬意を持っています。', 'Penduduk desa sangat menghormati alam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5774_alkitab, '聖書を半分ぐらい読み終わりました。', 'Saya sudah membaca setengah bagian Alkitab.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5775_hari_suci, '今日はユダヤ教の聖日にあたります。', 'Hari ini adalah hari suci Yahudi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5776_tanah_suci, 'この道は聖地に続いています。', 'Jalan ini menuju ke tanah suci.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5777_daya_tarik, '磁気カードと磁石を一緒にしない方がいいよ。', 'Anda tidak boleh menyatukan kartu magnetik dan magnet.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5778_magnet, 'お土産に可愛い磁石をいくつか買ったわよ。', 'Aku punya beberapa magnet lucu untuk oleh-olehmu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5779_medan_magnet, '地球にはとても強い磁場があります。', 'Bumi mempunyai medan magnet yang besar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5781_teh_hitam, 'お紅茶はどのようにおいれ致しましょうか。', 'Bagaimana Anda menyukai teh hitam Anda?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5782_tembakan, '腰が痛かったんですが、お医者さんが痛み止めの注射を打ってくれました。', 'Punggung bawah saya sakit sehingga dokter memberi saya suntikan obat pereda nyeri.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5783_cerminan, '雪野原は、巨大な鏡のように、冬の太陽の光をキラキラと反射します。', 'Bidang salju dengan terang memantulkan sinar matahari musim dingin seperti cermin raksasa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5784_untuk_meluncurkan, 'ミサイルは予定通り発射された。', 'Rudal itu diluncurkan sesuai rencana.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5784_untuk_meluncurkan, 'ロケットは垂直に発射した。', 'Roket itu lepas landas secara vertikal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5785_radiasi, '放射冷却のせいで今朝起きた時はものすごい冷え込みだったよ。', 'Udara sangat dingin ketika saya bangun pagi ini karena pendinginan radiasi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5786_tirai, 'その劇では、女主人公が死んで幕が下りました。', 'Dalam drama tersebut, tirai dibuka ketika pahlawan wanita meninggal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5787_subtitle, '字幕のせいで気が散ることもあります。', 'Subtitle bisa menjadi pengalih perhatian.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5788_penarik_kawat, '結局、あんたが黒幕だったんだな。どうりであの女を殺した時手慣れていたと思ったよ。', 'Jadi kamu dalangnya ya? Pantas saja Anda tampak begitu profesional saat membunuhnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5789_untuk_menyembah, '私の家族は、毎朝仏壇の前に集まって仏様に拝みます。', 'Keluarga saya berkumpul di depan altar Buddha keluarga kami untuk berdoa kepada Buddha setiap pagi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5790_untuk_dilihat, 'あなたが描いた日陰に座っている少女の絵を拝見しました。', 'Saya melihat lukisan Anda tentang seorang gadis yang duduk di tempat teduh.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5791_perkiraan, '社長の推定年収は五千万円です。', 'Perkiraan gaji tahunan direktur perusahaan adalah sekitar 50 juta yen.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5791_perkiraan, '死亡推定時刻は11日夜から12日朝の間だそうです。', 'Perkiraan waktu kematian dikatakan antara malam tanggal 11 dan pagi hari tanggal 12.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5791_perkiraan, 'そのサバンの男は群衆の規模を534人と推定したのだが、実際の数とピッタリ当っていた。', 'Pria yang cerdas itu memperkirakan jumlah penontonnya adalah 534 orang dan dia memang benar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5792_pemikiran, '日付の書き方から、その脅迫状はアメリカ人によって書かれたものだと推理しました。', 'Saya menyimpulkan bahwa surat yang mengintimidasi itu ditulis oleh orang Amerika karena cara penulisan tanggalnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5793_rekomendasi, 'あなたを、優秀な屁こき野郎として、屁こき大会に推薦しておきましたよ。', 'Saya merekomendasikan Anda sebagai pemain kentut yang baik untuk kompetisi kentut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5794_rekomendasi_mandiri, '今回のモデルへの応募について、自薦・他薦は問いません。', 'Mengenai lamaran untuk peluang modeling ini, kami menerima nominasi mandiri dan nominasi pihak ketiga.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5795_untuk_merekomendasikan, 'この番組を彼に薦められたんだけど、アニメを観るのはあまり好きじゃないんだよね。', 'Dia merekomendasikan acara ini kepadaku, tapi aku tidak terlalu suka menonton anime.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5795_untuk_merekomendasikan, 'コウイチが美味しいと薦めてきたクラブケーキを食べてみたらすごく不味かった。', 'Koichi mengatakan kue kepitingnya enak dan merekomendasikannya; ketika saya mencobanya, rasanya tidak enak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5795_untuk_merekomendasikan, 'ミステリーファンにはこの映画を見ることを薦めます。', 'Saya merekomendasikan penggemar misteri untuk menonton film ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5796_untuk_memamerkan, '問題解決にリーダーシップを一番発揮していたのは誰ですか。', 'Siapa yang paling menunjukkan kepemimpinan dalam menyelesaikan masalah?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5797_memerintah, 'アメリカ軍を指揮している司令官に一度会ってみたいな。', 'Saya ingin bertemu dengan komandan tentara Amerika.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5798_pesisir, '太平洋沿岸に大きな波が押し寄せました。', 'Gelombang besar melonjak menuju pantai Pasifik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5798_pesisir, 'この種類のカニは北海道の沿岸にしか生息してないんですよ。', 'Spesies kepiting ini hanya hidup di sepanjang pantai Hokkaido.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5798_pesisir, 'ワシントン州沿岸に位置するオリンピック国立公園のすぐ近くで育ちました。', 'Saya dibesarkan di dekat Taman Nasional Olimpiade, yang terletak di sepanjang pantai negara bagian Washington.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5799_perairan_pantai, '沿海部での生活について、月一でコラムを書いてみませんか。', 'Apakah Anda ingin menulis kolom bulanan tentang kehidupan di wilayah pesisir?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5800_sepanjang_jalur_kereta_api, '私の弟は、京王沿線に住んでいます。', 'Adikku tinggal di sepanjang Jalur Keio.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5801_untuk_berlari_bersamaan, '川の両岸に沿って、ずうっと、美しい桜並木があるんです。', 'Ada pohon sakura yang indah di sepanjang tepi sungai.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5802_asal, '音楽が私の日々の生活のパワーの源です。', 'Musik adalah sumber kekuatan dalam kehidupan saya sehari-hari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5803_genji, 'どうして娼婦やホステス、キャバ嬢、芸者さんなどが使う偽名を「源氏名」って言うんですか？', 'Mengapa nama palsu untuk pelacur, nyonya rumah, dan geisha disebut "nama Genji?"');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5804_sumber_daya, '出かける時は、完全に電源を切るために全部のコンセントを抜きます。', 'Ketika saya keluar, saya mematikan semua listrik dengan mencabut segala sesuatu dari stopkontak listrik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5805_pusat_gempa, '震源地に近いところに住んでる友達が心配だよ。', 'Saya khawatir dengan teman-teman saya yang tinggal dekat pusat gempa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5813_untuk_dipekerjakan_di, '娘が小学校に上がったので、私は図書館に勤め始めました。', 'Saya mulai bekerja di perpustakaan sejak putri saya masuk sekolah dasar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5814_bepergian, '通勤は時間を浪費するので、私は職場の近くに住む方がいいですね。', 'Perjalanan pulang pergi bisa memakan banyak waktu, jadi saya lebih suka tinggal di dekat kantor saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5815_pekerjaan_penuh_waktu, '子どもがもうちょっと大きくなるまでは、常勤でのお仕事はちょっと無理かな。', 'Saya tidak akan bisa bekerja penuh waktu untuk saat ini sampai anak saya bertambah besar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5816_untuk_dengan_rendah_hati_mendengar, 'ご伝言を承りましょうか。', 'Apakah Anda ingin meninggalkan pesan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5817_izin, '無理を承知でお願いしています。', 'Aku tahu itu tidak masuk akal, tapi aku tetap bertanya padamu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5817_izin, 'この事件に関してはみなさまよくご承知のこととは思いますが、もう一度説明させていただきます。', 'Saya yakin Anda semua sudah mengetahui kejadian ini dengan baik, namun izinkan saya menjelaskannya lagi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5817_izin, 'わしの娘がお前と結婚することは承知できん。', 'Saya tidak bisa menyetujui Anda menikahi putri saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5818_persetujuan, '委員会から承認を得られる自信はあまりありません。', 'Saya tidak terlalu yakin bisa mendapatkan persetujuan dari panitia.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5818_persetujuan, '新しいプロジェクト案は無事承認されました。', 'Proposal proyek baru berhasil disetujui.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5818_persetujuan, '焼き芋を焼いているたき火の中に承認印を落としてしまった。', 'Saya menjatuhkan meterai persetujuan saya di api unggun sambil memanggang kentang panggang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5819_distrik_hiburan, '黒田はそう言い残すと、歓楽街へと消えていった。', 'Mengatakan itu, Kuroda menghilang ke dalam kawasan hiburan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5819_distrik_hiburan, '歓楽街のツアーには何が含まれていますか。', 'Apa saja yang termasuk dalam tur kawasan kesenangan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5819_distrik_hiburan, '私が歓楽街で働いているという噂の源をつきとめました。', 'Saya telah menelusuri sumber rumor bahwa saya bekerja di bagian kesenangan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5820_membahayakan, '働きすぎてあんたが健康を損なうんじゃないかって、心配してるのよ。', 'Saya khawatir Anda akan merusak kesehatan Anda karena bekerja terlalu keras.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5821_kerugian, 'ポーカーで五百ドル損をした。', 'Saya mengalami kerugian $500 dalam poker.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5822_kerusakan, 'トラックの衝突で積荷がダメージを受けたが、小さな損害で済んだ。', 'Tabrakan truk tersebut merusak muatan, namun hanya kerusakan ringan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5823_kerugian_besar, '大儲けするつもりでパチンコに行ったが、結局大損してしまった。', 'Saya pergi ke salon pachinko dengan harapan menghasilkan banyak uang, namun saya malah mengalami kerugian besar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5824_kerugian_total, '車が全損してしまった場合、修理代は保険で全額支払われないことが多いです。', 'Jika ternyata mobilnya hilang total, banyak perusahaan asuransi yang tidak membayar biaya perbaikan secara penuh.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5825_cabang, '枝は真っ赤な林檎でたわんでいた。', 'Cabang-cabangnya ditekuk oleh apel berwarna merah darah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5826_kacang_polong, 'お豆さん、お豆さん、魔法の野菜。たくさん食べれば食べるほど、たくさん屁が出るぷっぷぷぷ。たくさんぷっぷぷ屁が出れば、気持ちが良くなるウッフフフ。だから毎食お豆を食べなさい。', 'Kacang-kacangan, kacang-kacangan adalah buah ajaib, semakin banyak Anda makan, semakin banyak Anda makan, semakin banyak Anda makan, semakin baik perasaan Anda, jadi makanlah kacang-kacangan setiap kali makan. ');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5827_kacang_azuki, '餡こは小豆から作られているが、けっこう糖分が高い。', 'Pasta kacang azuki terbuat dari kacang azuki, namun kandungan gulanya cukup tinggi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5828_natto, '誤解しないでね。日本料理は大好きなんだけど、納豆だけはどうしても食べられないの。', 'Jangan salah paham. Saya suka makanan Jepang, tapi natto adalah satu-satunya makanan yang tidak bisa saya makan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5829_membusuk, '牛乳は腐りやすいんだから冷蔵庫の外に出しっ放しにしないでね。', 'Jangan tinggalkan susu di luar lemari es karena mudah rusak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5830_korosi, 'ステンレスは腐食作用への耐久性があるんじゃなかったっけ？', 'Baja tahan karat seharusnya tahan terhadap korosi, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5831_penguraian, 'そこには、何かが腐敗したような臭いがただよっていた。', 'Ada bau sesuatu yang membusuk di udara.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5831_penguraian, 'この添加物により、食品の腐敗が防げます。', 'Bahan tambahan ini mencegah makanan membusuk.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5831_penguraian, '多くの人々が腐敗した政治組織にうんざりしています。', 'Banyak orang sudah bosan dengan lingkaran politik yang korup.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5832_cakar, '彼女の右の小指の爪の長さはなんと六メートルもあります。', 'Kuku kelingking kanannya panjangnya enam meter.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5833_gunting_kuku, '犬の爪を爪切りで切ってあげようとしてたんですけど、つい携帯に気を取られちゃいました。', 'Saya mencoba memotong kuku anjing saya tetapi ponsel saya mengganggu saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5834_untuk_mengukir, '葱を刻むのは面倒くさいよ。', 'Saya tidak mau repot-repot memotong daun bawang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5834_untuk_mengukir, '効率が第一だということを、しっかり心に刻んで置いてください。', 'Efisiensi adalah prioritas utama kami — pastikan untuk selalu mengingatnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5835_jadwal, '通勤・通学者にとって、電車の時刻表は絶対に必要なものです。', 'Jadwal kereta api merupakan hal yang wajib dimiliki oleh para komuter.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5835_jadwal, '列車は時刻表どおりに出発した。', 'Kereta berangkat sesuai jadwal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5836_serius, '甲状腺異常のある日本の子どもたちの数が増えているのは、深刻な問題です。', 'Meningkatnya jumlah anak-anak Jepang yang mengidap kelainan tiroid merupakan masalah serius.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7473_kacamata, '眼鏡を拭いた方がいいですよ。', 'Anda harus menyeka kacamata Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7608_bakufu, '幕府が俺の家族を皆殺しにした。', 'Bakufu membantai keluargaku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7722_pertemuan, '駅まで迎えをよこすよ。', 'Saya akan mengirim seseorang untuk menemui Anda di stasiun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8725_menjadi_rusak, 'このアボカド、昨日買ったところなのにもう傷んでるよ。', 'Saya membeli alpukat ini kemarin dan rasanya sudah busuk.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8725_menjadi_rusak, '日の光が当たる所に置いていたせいで、箱が傷んでしまったみたい。', 'Sepertinya kotaknya rusak karena saya taruh di tempat yang terkena sinar matahari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8725_menjadi_rusak, '生クリームは傷みやすいから、使ったらすぐに冷蔵庫に閉まってね。', 'Krim segar mudah rusak, jadi harap masukkan kembali ke dalam lemari es segera setelah Anda selesai menggunakannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8810_selanjutnya, '返事は来週以降になります。', 'Jawabannya adalah minggu depan atau sesudahnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8810_selanjutnya, '八月三日以降にもう一度ご連絡していただけますか？', 'Bisakah Anda menghubungi kami lagi pada atau setelah tanggal 3 Agustus?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8810_selanjutnya, '夜九時以降の外出は父に禁止されているんです。', 'Ayah saya melarang saya keluar setelah jam 9 malam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8878_menjadi_kurus, '「痩せたい」と、言い始めてから二年が経ちます。', 'Sudah beberapa tahun sejak saya mulai berkata, "Saya ingin menurunkan berat badan."');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8878_menjadi_kurus, '私の村にいる野良犬のほとんどは痩せていますよ。', 'Kebanyakan anjing liar di desa saya kurus.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8878_menjadi_kurus, '会話が途切れて気まずくなった時は、とりあえず「最近、痩せた？」と言うことにしている。', 'Saat suasana menjadi hening dan canggung selama percakapan, saya membuat aturan untuk hanya mengatakan, "Apakah berat badanmu turun akhir-akhir ini?"');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8879_bersandar, 'そのエステは痩身を専門にしているんだって。', 'Saya mendengar salon kecantikan mengkhususkan diri dalam melangsingkan tubuh.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8879_bersandar, '一年くらいマッサージに通ったんだけど、痩身の効果はなかったよ。', 'Saya terus dipijat selama sekitar satu tahun, tetapi saya tidak mendapatkan hasil melangsingkan apa pun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8879_bersandar, '防犯カメラに写っていたのは、痩身の男性でした。', 'Orang yang tertangkap kamera keamanan adalah seorang pria kurus.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8976_selangkangan, 'コウイチの股には星の形のホクロがある。', 'Ada tahi lalat berbentuk bintang di selangkangan Koichi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8976_selangkangan, '股の辺りにトーフグのタトゥーを入れようと思っているんだ。', 'Saya sedang berpikir untuk membuat tato Tofugu di area selangkangan saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8976_selangkangan, 'トンネルを出ると、道が二股に分かれていた。', 'Setelah saya melewati terowongan, ada pertigaan jalan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8986_batuk, '咳にはハチミツがいいですよ。', 'Madu baik untuk batuk.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8986_batuk, '咳止めシロップを買いに行ってきます。', 'Aku akan pergi membeli sirup obat batuk.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8986_batuk, '咳が長引いています。', 'Batukku masih ada.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9291_dedaunan_musim_gugur, '京都に紅葉を見に行きませんか？', 'Mengapa kita tidak pergi ke Kyoto untuk melihat dedaunan musim gugur?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9291_dedaunan_musim_gugur, '今年も紅葉シーズンが始まりましたね。', 'Musim dedaunan musim gugur tahun ini telah dimulai.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9291_dedaunan_musim_gugur, 'うちの庭の紅葉の木はまだ紅葉してません。', 'Pohon maple Jepang di halaman rumah saya belum berubah warna menjadi merah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9291_dedaunan_musim_gugur, '「紅葉の紅葉」は「モミジのこうよう」って読むんですよ。', '"<ja>紅葉の紅葉</ja>" dibaca "momiji no kōyō."');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9332_menyelam, 'このプールでは飛び込みは禁止されています。', 'Dilarang menyelam di kolam ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9332_menyelam, 'これは飛び込み防止のためのフェンスです。', 'Ini adalah pagar untuk mencegah orang melompat ke dalamnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9332_menyelam, '新人は毎日、飛び込み営業をしなくてはなりません。', 'Pendatang baru harus melakukan penjualan door to door setiap hari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9339_handuk_tangan, '日本で手拭いを買ってきました。', 'Saya membeli handuk tenugui di Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9339_handuk_tangan, '手拭いは、ふつうのタオルとどう違うんですか？', 'Apa bedanya handuk tenugui dengan handuk biasa?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9339_handuk_tangan, 'うわぁ、かっこいい！ワニカニの手拭いがあるなんて知らなかったです。', 'Wow Keren! Saya tidak tahu ada handuk WaniKani tenugui.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9440_mencari_uang, 'アイツは金儲けがうまい。', 'Dia pandai menghasilkan uang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9440_mencari_uang, 'お前って、金儲けの話ばっかりだな。', 'Yang Anda bicarakan hanyalah menghasilkan uang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9440_mencari_uang, '金儲けの話をすると、目の色が変わるやつっているじゃん？', 'Tahukah Anda bagaimana ada beberapa orang yang matanya berbinar ketika Anda berbicara tentang menghasilkan uang?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9440_mencari_uang, '金儲けの話ばかりする人はあまり信用できない。', 'Orang yang hanya berbicara tentang menghasilkan uang tidak terlalu bisa dipercaya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9463_untuk_meniru_identitas_secara_palsu, '有名人を騙るアカウントに注意してください。', 'Berhati-hatilah terhadap akun yang meniru identitas selebriti.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9463_untuk_meniru_identitas_secara_palsu, '彼女は記者を騙って情報を集めた。', 'Dia berpura-pura menjadi reporter dan mengumpulkan informasi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9463_untuk_meniru_identitas_secara_palsu, '本人を騙る人物がSNSに現れた。', 'Seseorang yang secara palsu meniru identitas seseorang muncul di media sosial.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9463_untuk_meniru_identitas_secara_palsu, '市の職員を騙る電話がかかってきた。', 'Saya menerima telepon dari seseorang yang menyamar sebagai pegawai kota.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9484_senter, '懐中電灯をつけて、足元を照らした。', 'Saya menyalakan senter dan menerangi area sekitar kaki saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9484_senter, '懐中電灯を顔に当てると、なぜかホラーが始まる。', 'Sorotkan senter ke wajah Anda, dan entah kenapa Anda sekarang berada di film horor.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9484_senter, '停電のときだけ、懐中電灯の存在を思い出すんだよね。', 'Saya hanya ingat senter saya ada saat listrik padam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9484_senter, '非常用の懐中電灯の電池が切れていないか、毎月チェックしています。', 'Saya memeriksa setiap bulan untuk memastikan baterai di senter darurat saya tidak mati.');

  -- 4. PREREQUISITES
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1545_kesalahan, id FROM items WHERE type = 'radical' AND (slug = '117' OR id = '117') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1545_kesalahan, r_348_melontarkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1546_organ_dalam, id FROM items WHERE type = 'radical' AND (slug = '43' OR id = '43') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1546_organ_dalam, id FROM items WHERE type = 'radical' AND (slug = '347' OR id = '347') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1547_berharga, r_358_berharga);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1549_tempat_nasi, id FROM items WHERE type = 'radical' AND (slug = '246' OR id = '246') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1549_tempat_nasi, id FROM items WHERE type = 'radical' AND (slug = '3' OR id = '3') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1550_muntah, id FROM items WHERE type = 'radical' AND (slug = '16' OR id = '16') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1550_muntah, id FROM items WHERE type = 'radical' AND (slug = '17' OR id = '17') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1551_bung, id FROM items WHERE type = 'radical' AND (slug = '19' OR id = '19') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1551_bung, id FROM items WHERE type = 'radical' AND (slug = '30' OR id = '30') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1552_budak, id FROM items WHERE type = 'radical' AND (slug = '97' OR id = '97') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1552_budak, id FROM items WHERE type = 'radical' AND (slug = '207' OR id = '207') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1552_budak, id FROM items WHERE type = 'radical' AND (slug = '8761' OR id = '8761') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1552_budak, id FROM items WHERE type = 'radical' AND (slug = '105' OR id = '105') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1552_budak, id FROM items WHERE type = 'radical' AND (slug = '45' OR id = '45') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1554_menyusut, id FROM items WHERE type = 'radical' AND (slug = '86' OR id = '86') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1554_menyusut, id FROM items WHERE type = 'radical' AND (slug = '78' OR id = '78') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1554_menyusut, id FROM items WHERE type = 'radical' AND (slug = '75' OR id = '75') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1554_menyusut, id FROM items WHERE type = 'radical' AND (slug = '239' OR id = '239') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1555_murni, id FROM items WHERE type = 'radical' AND (slug = '86' OR id = '86') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1555_murni, id FROM items WHERE type = 'radical' AND (slug = '315' OR id = '315') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1556_vertikal, id FROM items WHERE type = 'radical' AND (slug = '86' OR id = '86') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1556_vertikal, id FROM items WHERE type = 'radical' AND (slug = '99' OR id = '99') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1556_vertikal, id FROM items WHERE type = 'radical' AND (slug = '8767' OR id = '8767') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1556_vertikal, id FROM items WHERE type = 'radical' AND (slug = '420' OR id = '420') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1557_bergaya, id FROM items WHERE type = 'radical' AND (slug = '98' OR id = '98') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1557_bergaya, id FROM items WHERE type = 'radical' AND (slug = '11' OR id = '11') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1557_bergaya, id FROM items WHERE type = 'radical' AND (slug = '15' OR id = '15') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1558_suci, id FROM items WHERE type = 'radical' AND (slug = '88' OR id = '88') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1558_suci, id FROM items WHERE type = 'radical' AND (slug = '16' OR id = '16') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1558_suci, id FROM items WHERE type = 'radical' AND (slug = '48' OR id = '48') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1559_magnet, id FROM items WHERE type = 'radical' AND (slug = '54' OR id = '54') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1559_magnet, id FROM items WHERE type = 'radical' AND (slug = '8767' OR id = '8767') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1559_magnet, id FROM items WHERE type = 'radical' AND (slug = '1' OR id = '1') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1559_magnet, id FROM items WHERE type = 'radical' AND (slug = '87' OR id = '87') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1560_merah_tua, id FROM items WHERE type = 'radical' AND (slug = '86' OR id = '86') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1560_merah_tua, id FROM items WHERE type = 'radical' AND (slug = '25' OR id = '25') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1561_menembak, id FROM items WHERE type = 'radical' AND (slug = '234' OR id = '234') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1561_menembak, id FROM items WHERE type = 'radical' AND (slug = '74' OR id = '74') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1562_tirai, id FROM items WHERE type = 'radical' AND (slug = '356' OR id = '356') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1562_tirai, id FROM items WHERE type = 'radical' AND (slug = '102' OR id = '102') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1563_memuja, id FROM items WHERE type = 'radical' AND (slug = '63' OR id = '63') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1563_memuja, id FROM items WHERE type = 'radical' AND (slug = '61' OR id = '61') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1564_menyarankan, id FROM items WHERE type = 'radical' AND (slug = '90' OR id = '90') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1564_menyarankan, id FROM items WHERE type = 'radical' AND (slug = '62' OR id = '62') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1564_menyarankan, id FROM items WHERE type = 'radical' AND (slug = '424' OR id = '424') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1564_menyarankan, id FROM items WHERE type = 'radical' AND (slug = '151' OR id = '151') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1565_menyimpulkan, id FROM items WHERE type = 'radical' AND (slug = '63' OR id = '63') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1565_menyimpulkan, id FROM items WHERE type = 'radical' AND (slug = '240' OR id = '240') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1566_mengayunkan, id FROM items WHERE type = 'radical' AND (slug = '63' OR id = '63') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1566_mengayunkan, id FROM items WHERE type = 'radical' AND (slug = '76' OR id = '76') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1566_mengayunkan, id FROM items WHERE type = 'radical' AND (slug = '93' OR id = '93') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1567_jalankan_bersamaan, id FROM items WHERE type = 'radical' AND (slug = '103' OR id = '103') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1567_jalankan_bersamaan, id FROM items WHERE type = 'radical' AND (slug = '2' OR id = '2') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1567_jalankan_bersamaan, id FROM items WHERE type = 'radical' AND (slug = '16' OR id = '16') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1568_asal, id FROM items WHERE type = 'radical' AND (slug = '103' OR id = '103') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1568_asal, id FROM items WHERE type = 'radical' AND (slug = '230' OR id = '230') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1570_bekerja, id FROM items WHERE type = 'radical' AND (slug = '428' OR id = '428') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1570_bekerja, id FROM items WHERE type = 'radical' AND (slug = '13' OR id = '13') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1571_sukacita, id FROM items WHERE type = 'radical' AND (slug = '72' OR id = '72') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1571_sukacita, id FROM items WHERE type = 'radical' AND (slug = '240' OR id = '240') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1571_sukacita, id FROM items WHERE type = 'radical' AND (slug = '142' OR id = '142') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1572_izin, id FROM items WHERE type = 'radical' AND (slug = '34' OR id = '34') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1572_izin, id FROM items WHERE type = 'radical' AND (slug = '7' OR id = '7') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1572_izin, id FROM items WHERE type = 'radical' AND (slug = '45' OR id = '45') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1573_kehilangan, id FROM items WHERE type = 'radical' AND (slug = '63' OR id = '63') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1573_kehilangan, r_349_anggota);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1574_cabang, id FROM items WHERE type = 'radical' AND (slug = '23' OR id = '23') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1574_cabang, id FROM items WHERE type = 'radical' AND (slug = '81' OR id = '81') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1575_cakar, r_350_cakar);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1576_kacang_polong, id FROM items WHERE type = 'radical' AND (slug = '181' OR id = '181') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1577_mengukir, r_351_mengiris);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1577_mengukir, id FROM items WHERE type = 'radical' AND (slug = '128' OR id = '128') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1578_membusuk, id FROM items WHERE type = 'radical' AND (slug = '62' OR id = '62') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1578_membusuk, id FROM items WHERE type = 'radical' AND (slug = '248' OR id = '248') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1578_membusuk, id FROM items WHERE type = 'radical' AND (slug = '108' OR id = '108') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_8864_tipis, id FROM items WHERE type = 'radical' AND (slug = '187' OR id = '187') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_8864_tipis, id FROM items WHERE type = 'radical' AND (slug = '190' OR id = '190') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_8864_tipis, id FROM items WHERE type = 'radical' AND (slug = '30' OR id = '30') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_8968_batuk, id FROM items WHERE type = 'radical' AND (slug = '16' OR id = '16') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_8968_batuk, r_351_mengiris);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_2592_lama_tak_jumpa, id FROM items WHERE type = 'kanji' AND (slug = '496' OR id = '496') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5616_peniruan, id FROM items WHERE type = 'kanji' AND (slug = '718' OR id = '718') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5616_peniruan, id FROM items WHERE type = 'kanji' AND (slug = '971' OR id = '971') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5616_peniruan, id FROM items WHERE type = 'kanji' AND (slug = '1472' OR id = '1472') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5714_jamak, id FROM items WHERE type = 'kanji' AND (slug = '1493' OR id = '1493') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5714_jamak, id FROM items WHERE type = 'kanji' AND (slug = '703' OR id = '703') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5714_jamak, id FROM items WHERE type = 'kanji' AND (slug = '589' OR id = '589') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5718_jantung, id FROM items WHERE type = 'kanji' AND (slug = '508' OR id = '508') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5718_jantung, k_1546_organ_dalam);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5719_paru_paru, id FROM items WHERE type = 'kanji' AND (slug = '1537' OR id = '1537') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5719_paru_paru, k_1546_organ_dalam);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5720_organ_dalam, id FROM items WHERE type = 'kanji' AND (slug = '500' OR id = '500') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5720_organ_dalam, k_1546_organ_dalam);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5721_untuk_bergerak, id FROM items WHERE type = 'kanji' AND (slug = '507' OR id = '507') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5721_untuk_bergerak, id FROM items WHERE type = 'kanji' AND (slug = '1437' OR id = '1437') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5722_untuk_menyalip, id FROM items WHERE type = 'kanji' AND (slug = '802' OR id = '802') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5722_untuk_menyalip, id FROM items WHERE type = 'kanji' AND (slug = '1437' OR id = '1437') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5723_kakek_nenek, id FROM items WHERE type = 'kanji' AND (slug = '1489' OR id = '1489') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5723_kakek_nenek, id FROM items WHERE type = 'kanji' AND (slug = '512' OR id = '512') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5723_kakek_nenek, id FROM items WHERE type = 'kanji' AND (slug = '524' OR id = '524') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5724_pemilik_hewan_peliharaan, id FROM items WHERE type = 'kanji' AND (slug = '1498' OR id = '1498') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5724_pemilik_hewan_peliharaan, id FROM items WHERE type = 'kanji' AND (slug = '528' OR id = '528') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5726_untuk_menyakiti_seseorang, id FROM items WHERE type = 'kanji' AND (slug = '1499' OR id = '1499') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5727_sekali_pakai, id FROM items WHERE type = 'kanji' AND (slug = '709' OR id = '709') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5727_sekali_pakai, id FROM items WHERE type = 'kanji' AND (slug = '1503' OR id = '1503') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5728_untuk_membuang, id FROM items WHERE type = 'kanji' AND (slug = '686' OR id = '686') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5728_untuk_membuang, id FROM items WHERE type = 'kanji' AND (slug = '1503' OR id = '1503') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5729_untuk_dimasukkan, id FROM items WHERE type = 'kanji' AND (slug = '1504' OR id = '1504') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5730_untuk_melamar, id FROM items WHERE type = 'kanji' AND (slug = '538' OR id = '538') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5730_untuk_melamar, id FROM items WHERE type = 'kanji' AND (slug = '1504' OR id = '1504') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5731_bunuh_diri_dengan_kereta_api, id FROM items WHERE type = 'kanji' AND (slug = '1092' OR id = '1092') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5731_bunuh_diri_dengan_kereta_api, id FROM items WHERE type = 'kanji' AND (slug = '1504' OR id = '1504') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5731_bunuh_diri_dengan_kereta_api, id FROM items WHERE type = 'kanji' AND (slug = '578' OR id = '578') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5731_bunuh_diri_dengan_kereta_api, id FROM items WHERE type = 'kanji' AND (slug = '880' OR id = '880') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5732_untuk_menulis, id FROM items WHERE type = 'kanji' AND (slug = '962' OR id = '962') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5732_untuk_menulis, id FROM items WHERE type = 'kanji' AND (slug = '1504' OR id = '1504') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5733_kerumunan_orang, id FROM items WHERE type = 'kanji' AND (slug = '444' OR id = '444') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5733_kerumunan_orang, id FROM items WHERE type = 'kanji' AND (slug = '1504' OR id = '1504') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5734_noda, id FROM items WHERE type = 'kanji' AND (slug = '1512' OR id = '1512') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5735_untuk_dicelup, id FROM items WHERE type = 'kanji' AND (slug = '1512' OR id = '1512') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5736_untuk_membuat_kotor, id FROM items WHERE type = 'kanji' AND (slug = '1506' OR id = '1506') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5737_mengizinkan, id FROM items WHERE type = 'kanji' AND (slug = '593' OR id = '593') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5737_mengizinkan, id FROM items WHERE type = 'kanji' AND (slug = '1511' OR id = '1511') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5738_untuk_mengisi, id FROM items WHERE type = 'kanji' AND (slug = '1411' OR id = '1411') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5738_untuk_mengisi, id FROM items WHERE type = 'kanji' AND (slug = '1504' OR id = '1504') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5739_selamat_datang, k_1571_sukacita);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5739_selamat_datang, id FROM items WHERE type = 'kanji' AND (slug = '1481' OR id = '1481') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5740_golongan_darah, id FROM items WHERE type = 'kanji' AND (slug = '619' OR id = '619') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5740_golongan_darah, id FROM items WHERE type = 'kanji' AND (slug = '1487' OR id = '1487') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5740_golongan_darah, id FROM items WHERE type = 'kanji' AND (slug = '1232' OR id = '1232') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5741_tidak_ada_bunga, id FROM items WHERE type = 'kanji' AND (slug = '1491' OR id = '1491') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5741_tidak_ada_bunga, id FROM items WHERE type = 'kanji' AND (slug = '812' OR id = '812') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5742_setuju, id FROM items WHERE type = 'kanji' AND (slug = '1495' OR id = '1495') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5742_setuju, id FROM items WHERE type = 'kanji' AND (slug = '780' OR id = '780') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5743_salah_paham, k_1545_kesalahan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5743_salah_paham, id FROM items WHERE type = 'kanji' AND (slug = '1150' OR id = '1150') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5744_salah_ketik, k_1545_kesalahan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5744_salah_ketik, id FROM items WHERE type = 'kanji' AND (slug = '545' OR id = '545') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5745_penyalahgunaan, k_1545_kesalahan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5745_penyalahgunaan, id FROM items WHERE type = 'kanji' AND (slug = '525' OR id = '525') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5746_kesalahan_hitung, k_1545_kesalahan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5746_kesalahan_hitung, id FROM items WHERE type = 'kanji' AND (slug = '762' OR id = '762') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5748_kakak, id FROM items WHERE type = 'kanji' AND (slug = '515' OR id = '515') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5748_kakak, k_1547_berharga);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5752_menyerah, id FROM items WHERE type = 'kanji' AND (slug = '1548' OR id = '1548') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5752_menyerah, id FROM items WHERE type = 'kanji' AND (slug = '899' OR id = '899') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5754_mangkuk_daging_sapi, id FROM items WHERE type = 'kanji' AND (slug = '511' OR id = '511') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5754_mangkuk_daging_sapi, k_1549_tempat_nasi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5756_tempat_nasi, k_1549_tempat_nasi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5757_untuk_muntah, k_1550_muntah);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5758_bung, k_1551_bung);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5759_budak, k_1551_bung);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5759_budak, k_1552_budak);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5763_untuk_menyusut, k_1554_menyusut);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5764_pengurangan, k_1554_menyusut);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5764_pengurangan, id FROM items WHERE type = 'kanji' AND (slug = '463' OR id = '463') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5765_sederhana, id FROM items WHERE type = 'kanji' AND (slug = '942' OR id = '942') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5765_sederhana, k_1555_murni);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5766_najis, id FROM items WHERE type = 'kanji' AND (slug = '563' OR id = '563') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5766_najis, k_1555_murni);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5767_semua_wol, k_1555_murni);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5767_semua_wol, id FROM items WHERE type = 'kanji' AND (slug = '513' OR id = '513') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5768_vertikal, k_1556_vertikal);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5769_penulisan_vertikal, k_1556_vertikal);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5769_penulisan_vertikal, id FROM items WHERE type = 'kanji' AND (slug = '962' OR id = '962') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5770_panjang_lebar, k_1556_vertikal);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5770_panjang_lebar, id FROM items WHERE type = 'kanji' AND (slug = '768' OR id = '768') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5771_murni, k_1555_murni);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5771_murni, k_1557_bergaya);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5772_bergaya, k_1557_bergaya);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5773_kekudusan, id FROM items WHERE type = 'kanji' AND (slug = '799' OR id = '799') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5773_kekudusan, k_1558_suci);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5774_alkitab, k_1558_suci);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5774_alkitab, id FROM items WHERE type = 'kanji' AND (slug = '962' OR id = '962') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5775_hari_suci, k_1558_suci);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5775_hari_suci, id FROM items WHERE type = 'kanji' AND (slug = '476' OR id = '476') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5776_tanah_suci, k_1558_suci);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5776_tanah_suci, id FROM items WHERE type = 'kanji' AND (slug = '608' OR id = '608') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5777_daya_tarik, k_1559_magnet);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5777_daya_tarik, id FROM items WHERE type = 'kanji' AND (slug = '548' OR id = '548') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5778_magnet, k_1559_magnet);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5778_magnet, id FROM items WHERE type = 'kanji' AND (slug = '493' OR id = '493') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5779_medan_magnet, k_1559_magnet);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5779_medan_magnet, id FROM items WHERE type = 'kanji' AND (slug = '694' OR id = '694') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5781_teh_hitam, k_1560_merah_tua);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5781_teh_hitam, id FROM items WHERE type = 'kanji' AND (slug = '643' OR id = '643') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5782_tembakan, id FROM items WHERE type = 'kanji' AND (slug = '794' OR id = '794') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5782_tembakan, k_1561_menembak);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5783_cerminan, id FROM items WHERE type = 'kanji' AND (slug = '855' OR id = '855') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5783_cerminan, k_1561_menembak);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5784_untuk_meluncurkan, id FROM items WHERE type = 'kanji' AND (slug = '729' OR id = '729') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5784_untuk_meluncurkan, k_1561_menembak);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5785_radiasi, id FROM items WHERE type = 'kanji' AND (slug = '791' OR id = '791') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5785_radiasi, k_1561_menembak);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5786_tirai, k_1562_tirai);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5787_subtitle, id FROM items WHERE type = 'kanji' AND (slug = '545' OR id = '545') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5787_subtitle, k_1562_tirai);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5788_penarik_kawat, id FROM items WHERE type = 'kanji' AND (slug = '677' OR id = '677') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5788_penarik_kawat, k_1562_tirai);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5789_untuk_menyembah, k_1563_memuja);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5790_untuk_dilihat, k_1563_memuja);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5790_untuk_dilihat, id FROM items WHERE type = 'kanji' AND (slug = '558' OR id = '558') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5791_perkiraan, k_1565_menyimpulkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5791_perkiraan, id FROM items WHERE type = 'kanji' AND (slug = '714' OR id = '714') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5792_pemikiran, k_1565_menyimpulkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5792_pemikiran, id FROM items WHERE type = 'kanji' AND (slug = '669' OR id = '669') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5793_rekomendasi, k_1565_menyimpulkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5793_rekomendasi, k_1564_menyarankan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5794_rekomendasi_mandiri, id FROM items WHERE type = 'kanji' AND (slug = '578' OR id = '578') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5794_rekomendasi_mandiri, k_1564_menyarankan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5795_untuk_merekomendasikan, k_1564_menyarankan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5796_untuk_memamerkan, id FROM items WHERE type = 'kanji' AND (slug = '729' OR id = '729') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5796_untuk_memamerkan, k_1566_mengayunkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5797_memerintah, id FROM items WHERE type = 'kanji' AND (slug = '797' OR id = '797') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5797_memerintah, k_1566_mengayunkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5798_pesisir, k_1567_jalankan_bersamaan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5798_pesisir, id FROM items WHERE type = 'kanji' AND (slug = '790' OR id = '790') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5799_perairan_pantai, k_1567_jalankan_bersamaan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5799_perairan_pantai, id FROM items WHERE type = 'kanji' AND (slug = '640' OR id = '640') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5800_sepanjang_jalur_kereta_api, k_1567_jalankan_bersamaan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5800_sepanjang_jalur_kereta_api, id FROM items WHERE type = 'kanji' AND (slug = '767' OR id = '767') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5801_untuk_berlari_bersamaan, k_1567_jalankan_bersamaan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5802_asal, k_1568_asal);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5803_genji, k_1568_asal);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5803_genji, id FROM items WHERE type = 'kanji' AND (slug = '647' OR id = '647') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5804_sumber_daya, id FROM items WHERE type = 'kanji' AND (slug = '706' OR id = '706') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5804_sumber_daya, k_1568_asal);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5805_pusat_gempa, id FROM items WHERE type = 'kanji' AND (slug = '1099' OR id = '1099') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5805_pusat_gempa, k_1568_asal);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5805_pusat_gempa, id FROM items WHERE type = 'kanji' AND (slug = '608' OR id = '608') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5813_untuk_dipekerjakan_di, k_1570_bekerja);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5814_bepergian, id FROM items WHERE type = 'kanji' AND (slug = '665' OR id = '665') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5814_bepergian, k_1570_bekerja);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5815_pekerjaan_penuh_waktu, id FROM items WHERE type = 'kanji' AND (slug = '1011' OR id = '1011') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5815_pekerjaan_penuh_waktu, k_1570_bekerja);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5816_untuk_dengan_rendah_hati_mendengar, k_1572_izin);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5817_izin, k_1572_izin);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5817_izin, id FROM items WHERE type = 'kanji' AND (slug = '631' OR id = '631') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5818_persetujuan, k_1572_izin);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5818_persetujuan, id FROM items WHERE type = 'kanji' AND (slug = '1152' OR id = '1152') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5819_distrik_hiburan, k_1571_sukacita);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5819_distrik_hiburan, id FROM items WHERE type = 'kanji' AND (slug = '704' OR id = '704') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5819_distrik_hiburan, id FROM items WHERE type = 'kanji' AND (slug = '1400' OR id = '1400') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5820_membahayakan, k_1573_kehilangan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5821_kerugian, k_1573_kehilangan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5822_kerusakan, k_1573_kehilangan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5822_kerusakan, id FROM items WHERE type = 'kanji' AND (slug = '1093' OR id = '1093') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5823_kerugian_besar, id FROM items WHERE type = 'kanji' AND (slug = '453' OR id = '453') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5823_kerugian_besar, k_1573_kehilangan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5824_kerugian_total, id FROM items WHERE type = 'kanji' AND (slug = '610' OR id = '610') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5824_kerugian_total, k_1573_kehilangan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5825_cabang, k_1574_cabang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5826_kacang_polong, k_1576_kacang_polong);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5827_kacang_azuki, id FROM items WHERE type = 'kanji' AND (slug = '463' OR id = '463') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5827_kacang_azuki, k_1576_kacang_polong);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5828_natto, id FROM items WHERE type = 'kanji' AND (slug = '1536' OR id = '1536') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5828_natto, k_1576_kacang_polong);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5829_membusuk, k_1578_membusuk);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5830_korosi, k_1578_membusuk);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5830_korosi, id FROM items WHERE type = 'kanji' AND (slug = '644' OR id = '644') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5831_penguraian, k_1578_membusuk);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5831_penguraian, id FROM items WHERE type = 'kanji' AND (slug = '1004' OR id = '1004') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5832_cakar, k_1575_cakar);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5833_gunting_kuku, k_1575_cakar);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5833_gunting_kuku, id FROM items WHERE type = 'kanji' AND (slug = '502' OR id = '502') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5834_untuk_mengukir, k_1577_mengukir);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5835_jadwal, id FROM items WHERE type = 'kanji' AND (slug = '662' OR id = '662') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5835_jadwal, k_1577_mengukir);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5835_jadwal, id FROM items WHERE type = 'kanji' AND (slug = '720' OR id = '720') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5836_serius, id FROM items WHERE type = 'kanji' AND (slug = '831' OR id = '831') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_5836_serius, k_1577_mengukir);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7473_kacamata, id FROM items WHERE type = 'kanji' AND (slug = '1488' OR id = '1488') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7473_kacamata, id FROM items WHERE type = 'kanji' AND (slug = '887' OR id = '887') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7608_bakufu, k_1562_tirai);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7608_bakufu, id FROM items WHERE type = 'kanji' AND (slug = '977' OR id = '977') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7722_pertemuan, id FROM items WHERE type = 'kanji' AND (slug = '1481' OR id = '1481') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8725_menjadi_rusak, id FROM items WHERE type = 'kanji' AND (slug = '1499' OR id = '1499') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8810_selanjutnya, id FROM items WHERE type = 'kanji' AND (slug = '653' OR id = '653') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8810_selanjutnya, id FROM items WHERE type = 'kanji' AND (slug = '1548' OR id = '1548') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8878_menjadi_kurus, k_8864_tipis);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8879_bersandar, k_8864_tipis);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8879_bersandar, id FROM items WHERE type = 'kanji' AND (slug = '689' OR id = '689') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8976_selangkangan, id FROM items WHERE type = 'kanji' AND (slug = '8964' OR id = '8964') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8986_batuk, k_8968_batuk);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_9291_dedaunan_musim_gugur, k_1560_merah_tua);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9291_dedaunan_musim_gugur, id FROM items WHERE type = 'kanji' AND (slug = '750' OR id = '750') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9332_menyelam, id FROM items WHERE type = 'kanji' AND (slug = '1092' OR id = '1092') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9332_menyelam, id FROM items WHERE type = 'kanji' AND (slug = '1504' OR id = '1504') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9339_handuk_tangan, id FROM items WHERE type = 'kanji' AND (slug = '474' OR id = '474') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9339_handuk_tangan, id FROM items WHERE type = 'kanji' AND (slug = '9338' OR id = '9338') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9440_mencari_uang, id FROM items WHERE type = 'kanji' AND (slug = '602' OR id = '602') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9440_mencari_uang, id FROM items WHERE type = 'kanji' AND (slug = '9393' OR id = '9393') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9463_untuk_meniru_identitas_secara_palsu, id FROM items WHERE type = 'kanji' AND (slug = '9448' OR id = '9448') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9484_senter, id FROM items WHERE type = 'kanji' AND (slug = '1429' OR id = '1429') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9484_senter, id FROM items WHERE type = 'kanji' AND (slug = '469' OR id = '469') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9484_senter, id FROM items WHERE type = 'kanji' AND (slug = '706' OR id = '706') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9484_senter, id FROM items WHERE type = 'kanji' AND (slug = '2037' OR id = '2037') LIMIT 1;

END $$;
