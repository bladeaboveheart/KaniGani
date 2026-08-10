-- ====================================================
-- KaniGani — Seed Data Level 42 (v2, relasional)
-- Auto-generated with Indonesian Slugs
-- ====================================================

DO $$
DECLARE
  -- ============ RADICAL IDs (Level 42) ============
  r_384_melon UUID; r_385_tulang UUID; r_386_granat UUID; r_387_toko UUID; r_8798_satelit UUID;

  -- ============ KANJI IDs (Level 42) ============
  k_1804_mengatasi UUID; k_1805_kedatangan UUID; k_1806_pasangan UUID; k_1807_filsafat UUID; k_1808_duka UUID; k_1809_padat UUID; k_1811_kencangkan UUID; k_1812_busur UUID; k_1813_tantangan UUID; k_1814_menggali UUID; k_1815_kerekan UUID; k_1816_pegangan UUID; k_1817_menggoyang UUID; k_1818_pemurnian UUID; k_1819_untuk_sementara UUID; k_1820_analisa UUID; k_1821_engsel UUID; k_1822_sumbu UUID; k_1823_pola UUID; k_1824_semalam UUID; k_1825_menggeser UUID; k_1826_laguna UUID; k_1827_arang UUID; k_1828_contoh UUID; k_1829_mengganggu UUID; k_1830_memutar_bersama UUID; k_1831_tali UUID; k_1833_hati UUID; k_1834_halaman_rumput UUID; k_1835_liar UUID; k_1836_memecat UUID; k_8993_mochi UUID; k_9378_ramai UUID;

  -- ============ VOCABULARY IDs (Level 42) ============
  v_5287_tuntutan UUID; v_6325_kemajuan_pesat UUID; v_6326_semangat UUID; v_6501_dumping UUID; v_6560_untuk_terburu_buru UUID; v_6561_untuk_mulai_berjalan UUID; v_6562_untuk_berlari UUID; v_6563_anak_yang_tidak_taat UUID; v_6564_kurangnya_kesalehan_berbakti UUID; v_6565_telepon_portabel UUID; v_6566_canggih UUID; v_6567_pengorbanan_terbang UUID; v_6568_kegelapan UUID; v_6569_penaklukan UUID; v_6570_terperinci UUID; v_6571_kedatangan UUID; v_6572_saudara_kembar UUID; v_6573_pasangan UUID; v_6574_teropong UUID; v_6575_filsafat UUID; v_6576_duka UUID; v_6577_kehilangan UUID; v_6578_padat UUID; v_6583_untuk_mengikat UUID; v_6584_bersama UUID; v_6585_kesimpulannya UUID; v_6586_penyatuan UUID; v_6587_tanda_kurung UUID; v_6588_busur UUID; v_6589_untuk_menantang_seseorang UUID; v_6590_sebuah_tantangan UUID; v_6591_provokasi UUID; v_6592_untuk_menggali UUID; v_6593_penggalian UUID; v_6594_untuk_menggoreng UUID; v_6595_untuk_dipahami UUID; v_6596_jabat_tangan UUID; v_6597_pegangan UUID; v_6598_untuk_mengguncang UUID; v_6599_gejolak_emosional UUID; v_6600_belajar UUID; v_6601_aula_pemakaman UUID; v_6602_sebentar UUID; v_6603_bisa_berubah UUID; v_6604_analisa UUID; v_6605_analisa UUID; v_6606_sumbu UUID; v_6607_tengah UUID; v_6608_sumbu UUID; v_6609_gulir_gantung UUID; v_6610_sumbu UUID; v_6611_pola UUID; v_6612_karakter_bangsa UUID; v_6613_karakter_pribadi UUID; v_6614_menginap_satu_malam UUID; v_6615_menginap_dua_malam UUID; v_6616_penginapan UUID; v_6617_untuk_menginap_malam_ini UUID; v_6618_untuk_meluncur UUID; v_6619_mudah UUID; v_6620_laguna UUID; v_6621_datar_pasang_surut UUID; v_6622_titik_fokus UUID; v_6623_untuk_terbakar UUID; v_6624_cakupan UUID; v_6625_contoh UUID; v_6626_contoh UUID; v_6627_untuk_mengalihkan_perhatian UUID; v_6628_komplikasi UUID; v_6629_penghukuman UUID; v_6630_tali UUID; v_6632_tarik_tambang UUID; v_6636_hati UUID; v_6637_hepatitis UUID; v_6638_hati UUID; v_6639_halaman_rumput UUID; v_6640_halaman_rumput UUID; v_6641_toshiba UUID; v_6642_halaman_rumput UUID; v_6643_liar UUID; v_6644_menjadi_badai UUID; v_6645_memecat UUID; v_6646_kantong_sampah UUID; v_6647_tas_misteri UUID; v_6934_kesalehan_anak UUID; v_6936_untuk_mulai_meniup UUID; v_6937_untuk_meniup UUID; v_6938_untuk_bersiul UUID; v_6939_untuk_mencairkan UUID; v_6940_untuk_melarikan_diri UUID; v_6942_untuk_menerbangkan UUID; v_7462_semua_orang UUID; v_7558_untuk_membiarkan_seseorang_melarikan_diri UUID; v_7665_bangunan_kecil UUID; v_7725_menjadi_transparan UUID; v_8558_agar_diasinkan_dengan_baik UUID; v_8972_ramen UUID; v_8973_beberapa UUID; v_9003_mochi UUID; v_9040_insektisida UUID; v_9077_kedua_pihak UUID; v_9275_nasi_goreng UUID; v_9310_pakaian UUID; v_9379_menjadi_sibuk UUID; v_9380_ramai UUID; v_9505_sejahtera UUID;

BEGIN

  DELETE FROM items WHERE level = 42;

  -- 1. RADICALS
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '瓜', 'melon', 42, 1, 'Ini adalah <radikal>melon</radikal>. Bayangkan sebuah melon dipotong menjadi dua, dan Anda melihat bagian dalamnya dari samping. Lihat bagian melon pribadi yang berharga itu? Anda akan menyimpannya untuk diri Anda sendiri, karena melon itu enak dan tidak untuk dibagikan.')
    RETURNING id INTO r_384_melon;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '骨', 'tulang', 42, 2, 'Radikal ini sama dengan kanji. Artinya <radikal>tulang</radikal>.')
    RETURNING id INTO r_385_tulang;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '臼', 'granat', 42, 3, 'Ini adalah cangkang <radikal>granat</radikal> yang telah meledak. LEDAKAN! Itu meledak, membelahnya di tengah.')
    RETURNING id INTO r_386_granat;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '屋', 'toko', 42, 4, 'Kita sudah mempunyai akar kata radikal, jadi kita akan menggunakan arti kanji sekunder untuk kata radikal ini. Ini <radical>toko</radical>, ingat?')
    RETURNING id INTO r_387_toko;
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '/radicals/satellite.svg', 'satelit', 42, 5, 'Lihatlah radikal ini. Dapatkah Anda melihatnya melayang di angkasa? Dapatkah Anda melihat antena dan reflektornya? Itu karena ini adalah <radical>satelit</radical>.')
    RETURNING id INTO r_8798_satelit;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_384_melon, 'Melon', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_385_tulang, 'Tulang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_386_granat, 'Granat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_387_toko, 'Toko', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_8798_satelit, 'Satelit', true, true);

  -- 2. KANJIS
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '克', 'mengatasi', 42, 6, 'Meskipun Anda <radical>tua</radical> <radical>kaki</radical>, Anda <kanji>mengatasi</kanji> kecacatan Anda. Kaki tua Anda ini tidak berfungsi dengan baik, tetapi Anda mengatasi rintangan dan berlari maraton!', 'Saat Anda melewati garis finis dan akhirnya <kanji>mengatasi</kanji> batas kemampuan lama Anda, seseorang memberi Anda <read>Coke</reading> (こく) dingin sebagai hadiah. Mmm, Coke yang menyegarkan.')
    RETURNING id INTO k_1804_mengatasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '到', 'kedatangan', 42, 7, '<radical>tahi lalat</radical> memiliki <radical>pisau</radical> yang siap untuk <kanji>kedatangan</kanji> Anda. Anda keluar dari pesawat, Anda menginjak tanah dan... aduh! Anda menginjak pisaunya, dan di sanalah tahi lalat itu, mencuat dari tanah. "Aku sudah memeriksa jadwal kedatanganmu!" ia berdecit gembira, dan menghilang.', '<kanji>kedatangan</kanji> Anda ke <reading>とう</reading>きょう kini hancur. Dan perhentian Anda selanjutnya adalah tiba di rumah sakit untuk mengeluarkan pisau tahi lalat ini.')
    RETURNING id INTO k_1805_kedatangan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '双', 'pasangan', 42, 8, 'Jika Anda memiliki satu <radical>tinja</radikal> dan <radikal>tinja</radikal> lainnya, Anda memiliki <kanji>sepasang</kanji> tinja. Lihatlah sepasang bangku ini. Lihatlah itu.', '<kanji>sepasang</kanji> bangku ini berbagi <reading>sou</reading>l (そう). Sekalipun Anda mencoba memisahkan mereka, pada akhirnya mereka akan menemukan jalan kembali bersama.')
    RETURNING id INTO k_1806_pasangan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '哲', 'filsafat', 42, 9, 'Lingkarkan <radical>jari</radical> Anda pada <radical>kapak</radical> ini dan letakkan di <radical>mulut</radical> Anda untuk mengekspresikan <kanji>filosofi</kanji> Anda. Filosofi Anda…meletakkan kapak di mulut Anda. Semua orang tampaknya berpikir itu adalah filosofi yang bodoh, tetapi dengan melakukan ini Anda menunjukkan kepada mereka bahwa itu tidak benar!', '<kanji>filosofi</kanji> kapak di mulut Anda berarti Anda selalu mencicipi <reading>鉄</reading> (てつ). Mereka bilang darah rasanya seperti tembaga. Senjata (dan filosofi Anda) rasanya seperti besi.')
    RETURNING id INTO k_1807_filsafat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '喪', 'duka', 42, 10, 'Di bawah <radical>salib</radikal> ada <radikal>mulut</radikal> dan <radikal>mulut</radikal> lainnya mengenakan <radikal>pakaian</radikal> khusus karena sedang <kanji>berkabung</kanji>.', 'Saat <kanji>berkabung</kanji> berlanjut, <reading>sou</reading>l (そう) orang yang meninggal bangkit dari salib. Jiwa melihat ke sekeliling pada semua pelayat dan mengangguk. Ya, dukamu telah menyenangkannya.')
    RETURNING id INTO k_1808_duka;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '堅', 'padat', 42, 11, 'Seorang <radical>pelayan</radical> mengamankan <radical>bangku</radical> di <radical>tanah</radical> sehingga menjadi alat duduk yang <kanji>kokoh</kanji>. Jika Anda hanya melempar bangku ke tanah, bangku itu akan mudah terjatuh. Tetapi jika Anda memiliki pelayan untuk menggalinya sedikit ke dalam tanah, itu akan menjadi bagus dan kokoh serta aman untuk diduduki!', 'Anda memerlukan bangku ini yang <kanji>padat</kanji> ekstra karena Anda menggunakannya untuk menguji <reading>cata</reading>pult (かた) baru Anda. Jika tidak padat, saat Anda meluncurkannya dan diri Anda sendiri yang menggunakan ketapel, bangku tersebut mungkin akan terjatuh dan membunuh Anda berdua. Dan Anda tidak menginginkan itu, bukan?')
    RETURNING id INTO k_1809_padat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '括', 'kencangkan', 42, 12, '<radical>jari</radical> seseorang menyentuh <radical>lidah</radical> Anda dan <kanji>mengikat</kanji> menjadi satu. Anda tidak dapat berbicara. Yang bisa Anda lakukan hanyalah mengeluarkan suara sedih tanpa lidah saat Anda mencoba mencari tahu siapa yang akan mengencangkan lidah Anda seperti ini.', 'Hanya satu makhluk yang bisa menggunakan jari-jarinya untuk <kanji>mengikat</kanji> lidahmu seperti ini: <reading>kucing</reading> (かつ). Kucing terkenal suka mengatupkan lidahnya sehingga orang tidak bisa berbicara. Pernahkah Anda mendengar ungkapan, “Kucing menguasai lidahmu?”')
    RETURNING id INTO k_1811_kencangkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '弧', 'busur', 42, 13, 'Dengan menggunakan <radical>busur</radical>, tembak <radical>melon</radical> dan melon tersebut akan terbang dalam <kanji>arc</kanji> yang curam. Lagipula, melon terlalu berat untuk diterbangkan secara lurus.', 'Memotret melon dalam <kanji>arc</kanji> adalah sesuatu yang (こ) suka dilakukan oleh <reading>子</reading>. Ini juga membantu ketika mereka turun dari busur, mereka hancur di semua tempat.')
    RETURNING id INTO k_1812_busur;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '挑', 'tantangan', 42, 14, 'Ketika <radical>jari</radical> Anda bergerak seperti itu, Anda tahu itu adalah <radical>pertanda</radikal> dari sebuah <kanji>tantangan</kanji> yang akan segera Anda hadapi di masa depan.', 'Di jari Anda, Anda melihat <kanji>tantangan</kanji>. Dan... jika kamu perhatikan lebih dekat, kamu dapat melihat gerakan cepat jari-jarimu membentuk garis luar wajah Nyonya <reading>Chou</reading> (ちょう). Oh tidak, tantangannya adalah Ny. Chou!')
    RETURNING id INTO k_1813_tantangan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '掘', 'menggali', 42, 15, 'Anda melihat <radical>jari</radical> pada <radical>bendera</radical> di dekat <radical>keluar</radical>, yang menunjukkan bahwa Anda harus <kanji>menggali</kanji>. Jari-jari pada bendera mengarah ke bawah, tepat di dekat pintu keluar, seolah-olah mengatakan "gali di sini!" Pasti ada sesuatu di bawah sini. Itulah yang Anda pikirkan ketika Anda mulai menggali dengan jari Anda.', 'Anda <kanji>menggali</kanji> hingga akhirnya menemukan sesuatu. Itu adalah sekelompok <read>coot</reading> (くつ) tua yang terkubur. Mereka berada di ruang bawah tanah untuk orang-orang tua. Ada yang berteriak padamu, "Apa yang kamu lakukan pada atap kami, kakap?! Berhenti menggali di halaman kami!"')
    RETURNING id INTO k_1814_menggali;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '揚', 'kerekan', 42, 16, 'Jika Anda memiliki <radical>jari</radical>, <radical>mudah</radical> untuk <kanji>mengangkat</kanji> sesuatu di atas kepala Anda. Jika Anda tidak punya jari, itu tidak mudah.', 'Hari ini, Anda harus <kanji>mengangkat</kanji> begitu banyak barang. "<membaca>Ah</membaca> (あ)!" Anda berkata, "Banyak hal yang harus dilakukan." Lebih baik lakukan itu!')
    RETURNING id INTO k_1815_kerekan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '握', 'pegangan', 42, 17, 'Anda menggunakan <radical>jari</radical> Anda di <radical>toko</radical> untuk <kanji>memegang</kanji> apa yang ingin Anda beli.', 'Anda memiliki <kanji>pegangan</kanji> yang sangat kuat berkat <reading>acu</reading>tusukan (あく)! Semua jari Anda siap untuk membeli sesuatu. Anda bisa mendapatkan apa saja di toko—nanas, ban, bahkan kura-kura hidup. Semua berkat beberapa jarum yang ditempatkan dengan baik.')
    RETURNING id INTO k_1816_pegangan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '揺', 'menggoyang', 42, 18, 'Dengan <radical>jari</radical> Anda, ambil <radical>satelit</radical> dan <kanji>goyangkan</kanji>! Anda seorang astronot dan itu tugas Anda. Jangan khawatir, satelitnya tidak akan pecah atau apa pun, satelit ini cukup kuat untuk perjalanan luar angkasa. Lakukan saja apa yang diperintahkan dan kocok pengisapnya.', 'Anda perlu <kanji>mengguncang</kanji> karena satelit ini penuh dengan <reading>yo</reading>gurt (よう). Anda hanya menyukai yogurt yang sudah dikocok dengan baik. Dan siapa yang bisa menolak yogurt luar angkasa? Hah? Siapa pun?')
    RETURNING id INTO k_1817_menggoyang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '斎', 'pemurnian', 42, 19, 'Gunakan <radical>bersamaan</radikal> <radical>jackhammer</radical> untuk melakukan ritual <kanji>pemurnian</kanji>. Dua jackhammer yang berjalan selaras sempurna akan memurnikan tubuh, pikiran, dan jiwa Anda! (Dan tanah di sekitarmu yang sedang dipalu.)', 'Ritual <kanji>pemurnian</kanji> ini seharusnya membantu Anda melupakan <reading>cy</reading>borg (さい) Anda. Sudah cukup lama, tapi sepertinya Anda tidak bisa melupakannya.')
    RETURNING id INTO k_1818_pemurnian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '暫', 'untuk-sementara', 42, 20, 'Anda menaiki <radical>mobil</radical> Anda dengan <radical>kapak</radical> dan berkendara menuju <radical>matahari</radical>, namun Anda hanya akan berada di sana <kanji>sementara</kanji>. Anda membunuh seseorang dengan kapak Anda, dan Anda melarikan diri ke matahari untuk bersembunyi sementara sementara polisi mencari Anda.', 'Tampaknya kamu salah belok, dan tempat kamu <kanji>sementara</kanji> bersembunyi adalah <reading>Zan</reading>zibar (ざん) — bukan matahari. Zanzibar juga sangat panas dan cerah, jadi dimaafkan jika melakukan kesalahan ini.')
    RETURNING id INTO k_1819_untuk_sementara;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '析', 'analisa', 42, 21, 'Anda menabrak <radical>pohon</radical> dengan <radical>kapak</radikal> sehingga Anda dapat melakukan <kanji>analisis</kanji> padanya. Untuk melakukan analisa pada pohon, perlu diperoleh penampang, jadi harus dipotong menjadi dua dengan kapak.', 'Orang yang melakukan <kanji>analisis</kanji> ini sangat <membaca>seksi</reading> (せき). Siapa orang seksi ini? Tentu saja itu kamu, dasar binatang i. Saya suka melihat Anda melakukan analisis pada pepohonan. Itu sangat seksi.')
    RETURNING id INTO k_1820_analisa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '枢', 'engsel', 42, 22, 'Di <radical>pohon</radikal> <radical>distrik</radikal> kota Anda dapat membeli banyak produk pohon, termasuk pintu. Namun, dengan pintu seperti itu, Anda selalu membutuhkan <kanji>engsel</kanji>.', 'Anda membeli <kanji>engsel</kanji> yang keren dan mencobanya. Alih-alih berfungsi dengan baik, pintu itu malah berantakan dan pintunya menimpa Anda, menghancurkan tubuh bagian bawah Anda. Kamu berteriak (dan kamu harus berteriak) "AKU AKAN <membaca>SUUUUEEE</reading> (すう) KAMU!"')
    RETURNING id INTO k_1821_engsel;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '軸', 'sumbu', 42, 23, 'Sebuah <radical>mobil</radical> berfungsi karena satu <radical>alasan</radical>: rodanya dapat berputar pada <kanji>sumbu</kanji>. Yap, sumbu lateral itu jelas merupakan <kanji>bagian penting</kanji> sebuah mobil.', 'Teman Anda selalu membual tentang <kanji>poros</kanji> mobilnya. Dia berkata, "Roda mobil saya bergerak pada lebih dari satu sumbu!" Dan Anda dengan sinis membalas: "<reading>Wah, keren</reading>l" (じく).')
    RETURNING id INTO k_1822_sumbu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '柄', 'pola', 42, 24, 'Anda berjalan ke <radical>pohon</radical> dan meletakkan <radical>dinamit</radical> di atasnya. Kemudian Anda mematikannya. LEDAKAN. Itu meledak, tetapi tidak menghasilkan apa yang Anda harapkan. Alih-alih meledakkan pohon, ia malah meledakkan <kanji>pola</kanji> yang sangat indah ke sisi pohon serta tanah di sekitarnya.', '<kanji>pola</kanji> sangat indah sehingga Anda ingin menaruhnya di <reading>gara</reading>ge (がら) Anda. Jadi, kamu melakukannya.')
    RETURNING id INTO k_1823_pola;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '泊', 'semalam', 42, 25, '<radikal>tsunami</radikal> yang <radikal>putih</radikal> adalah tsunami yang paling menakutkan. Ia tidak masuk dan menghancurkan segalanya. Tidak, ia masuk, masuk ke dalam pintu Anda, lalu menginap di tempat Anda <kanji>semalaman</kanji>, bahkan tanpa diminta!', 'Kucing Anda berjalan menuju tsunami putih yang terjadi <kanji>semalaman</kanji> dan memutuskan bahwa ia tidak menyukainya, sehingga ia <reading>meretas</reading> (はく) hingga menjadi bola rambut di atasnya. Itupun tidak membuat tsunaminya hilang.')
    RETURNING id INTO k_1824_semalam;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '滑', 'menggeser', 42, 26, '<radikal>tsunami</radikal> mematahkan <radikal>tulang</radikal> Anda, bukan karena mengenai Anda, namun karena membuat Anda <kanji>tergelincir</kanji> dan <kanji>tergelincir</kanji> ke dalam benda. Sulit untuk tetap bertahan di tengah tsunami, Anda tahu? Anda tergelincir dan meluncur ke mana-mana.', 'Saat Anda terus <kanji>meluncur</kanji> di sekitar Anda, Anda akan melihat sekelompok <reading>kucing</reading> (かつ) liar juga tergelincir dan meluncur. Mereka mengeong dan meluncur ke arah Anda. Uh oh…')
    RETURNING id INTO k_1825_menggeser;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '潟', 'laguna', 42, 27, 'Sebuah <radikal>tsunami</radikal> menabrak <radikal>matahari</radikal> (memecahnya menjadi dua) dan menciptakan <radikal>sayap</radikal> tsunami yang berbeda secara keseluruhan. Sayap ini runtuh dan menciptakan <kanji>laguna</kanji>.', '<kanji>laguna</kanji> ini dibuat dengan sengaja oleh pria yang sangat marah dan <reading>cata</reading>pult (かた) miliknya. Dia menginginkan tempat bersantai yang nyaman dan tropis, namun tidak terlalu terang. Jadi dia punya rencana: gunakan ketapel raksasa untuk mengirimkan tsunami ke matahari!')
    RETURNING id INTO k_1826_laguna;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '焦', 'arang', 42, 28, 'Anda mengambil <radical>kalkun</radical> dan mencoba <radical>merebus</radikal> tetapi Anda malah <kanji>mengarang</kanji>. Itulah yang terjadi jika Anda memasukkan daging ke dalam panci yang tinggi dan tidak ada air di dalamnya.', 'Anda sedang menatap kalkun merah <kanji>char</kanji> dengan sedih ketika Anda tiba-tiba merasakan <reading>Shou</reading>gun (しょう) menjulang di belakang Anda. Anda seharusnya memasak kalkun ini untuknya dan sekarang dia terlihat sangat, sangat marah.')
    RETURNING id INTO k_1827_arang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '範', 'contoh', 42, 29, '<radikal>bambu</radikal> ini dapat disederhanakan menjadi <kanji>contoh</kanji> apa pun. Lihat, ini adalah <radical>mobil</radical>. Ini adalah <radical>ular</radical>. Saya bisa membuat banyak contoh hanya dengan bambu.', 'Satu <kanji>contoh</kanji> terakhir untuk Anda. Sekarang saya akan mengambil bambu ini dan memotongnya menjadi contoh <reading>Han</reading> (はん) Solo!')
    RETURNING id INTO k_1828_contoh;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '紛', 'mengganggu', 42, 30, 'Ambil <radical>utas</radikal> ini dan lihat <radikal>bagian</radikal> ini. Sekarang lihat bagian ini! Sekarang lihat bagian ini. Anda tidak tahu di mana mencarinya! Haha, aku telah <kanji>mengalihkan</kanji> kamu!', 'Meskipun perhatianmu teralihkan, itu sungguh <membaca>menyenangkan</reading> (ふん).')
    RETURNING id INTO k_1829_mengganggu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '糾', 'memutar-bersama', 42, 31, '<radical>Benang</radikal> dan <radikal>tanaman merambat</radikal> saja sudah terlalu lemah untuk menahan apa pun, namun jika Anda <kanji>memelintir</kanji> keduanya, Anda bisa membuat sesuatu menjadi lebih kuat.', 'Saat Anda <kanji>memelintir</kanji> benang dan tanaman merambat, Anda tiba-tiba merasakan ada yang mengganjal. Anda melihat ke bawah dan melihat <reading>cu</reading>cumber (きゅう) terpelintir ke dalamnya.')
    RETURNING id INTO k_1830_memutar_bersama;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '綱', 'tali', 42, 32, 'Jika Anda mengambil <radical>utas</radikal> dan membungkusnya hingga menjadi <radikal>bukit</radikal> utas, Anda akan memiliki banyak utas. Anda dapat melilitkan sebagian benang itu ke benang lain untuk membuat benang yang lebih tebal. Utas ini adalah <kanji>tali</kanji>.', 'Selamat, sekarang Anda memiliki tali yang sempurna untuk memancing <reading>tuna</reading> (つな). Tuna berukuran besar, jadi Anda memerlukan tali yang kuat untuk menggulungnya.')
    RETURNING id INTO k_1831_tali;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '肝', 'hati', 42, 33, 'Jika <radical>bulan</radical> <radical>kering</radical>, hal ini baik untuk <kanji>liver</kanji> Anda! Haha, mengerti? Karena tidak ada minuman keras yang merusak hati Anda. Jangan minum, anak-anak.', 'Saat Anda menepuk <kanji>hati</kanji> Anda tiba-tiba perasaan aneh muncul dan hantu <reading>Khan</reading> (かん) Jenghis keluar! Keluar dari hatimu.')
    RETURNING id INTO k_1833_hati;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '芝', 'halaman-rumput', 42, 34, 'Ada <radical>bunga</radical> dan <radical>bukit</radical> di <kanji>halaman</kanji> depan Anda. Halaman rumput Anda cukup besar dan ditutupi dengan bunga dan bukit. Itu sangat cantik.', 'Anda bangga menjadi pemilik <reading>Shiba</reading> (しば) Inu, tahukah Anda, anjing Jepang? Nah, Shiba Inu Anda ini suka berlarian di <kanji>halaman</kanji> Anda dan melewati bunga-bunga dan melewati bukit. Ini adalah halaman rumput yang sempurna untuk Shiba Anda.')
    RETURNING id INTO k_1834_halaman_rumput;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '荒', 'liar', 42, 35, '<radical>Bunga</radical> menemukan <radical>kematian</radical> di <radical>sungai</radical> di <kanji>liar</kanji>. Bunga hidup di air, namun sungai ini menenggelamkan bunga hingga mati. Alam liar adalah tempat yang berbahaya.', '<reading>Ah</reading> (あ), bunga di <kanji>liar</kanji> telah diklaim <reading>à la</reading> (あら) sebagai banjir besar. Ah, menurutmu tidak? Ya, benar.')
    RETURNING id INTO k_1835_liar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '袋', 'memecat', 42, 36, 'Anda menyimpan <radical>pengganti</radical> <radical>pakaian</radical> Anda di dalam <kanji>karung</kanji>. Pakaian yang ada di dalam karung hanyalah pakaian pengganti, sehingga hanya keluar dalam keadaan darurat saja.', 'Anda membutuhkan pakaian pengganti sehingga Anda mengeluarkan <kanji>karung</kanji> pakaian pengganti Anda. Anda membukanya untuk mengambil pakaian pengganti, hanya untuk mengetahui bahwa ada banyak telur salmon di dalam karung Anda. Ya ampun, kamu lupa menaruhnya di sana. Kamu berteriak: <reading>F**K ROE</reading> (ふくろ) karena telur itu menghancurkan seluruh pakaianmu dan membuatnya kotor.')
    RETURNING id INTO k_1836_memecat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '餅', 'mochi', 42, 37, 'Apa yang Anda <radical>makan</radical> jika Anda mengenakan <radical>tanduk</radical> dan dikelilingi oleh <radical>lentera</radical>? <kanji>Mochi</kanji> (atau <kanji>kue ketan</kanji>) tentu saja!', 'Pembacaan <kanji>mochi</kanji> adalah <reading>mochi</reading> (もち). Hore!')
    RETURNING id INTO k_8993_mochi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '賑', 'ramai', 42, 38, '<radical>Kerang</radical> menyebabkan <radical>tanah longsor</radical> karena aktivitas bawah airnya yang <kanji>ramai</kanji> dan <kanji>hidup</kanji>.', 'Anda tidak tahan dengan situasi <kanji>sibuk</kanji> dan <kanji>hidup</kanji>, jadi keluarkan <reading>knee gui</reading>llotine (にぎ) Anda. Apa itu guillotine lutut? Persis seperti apa yang terdengar, dan Anda akan menggunakannya pada kerang-kerangan ini untuk mencegah tanah longsor.')
    RETURNING id INTO k_9378_ramai;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1804_mengatasi, 'Mengatasi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1805_kedatangan, 'Kedatangan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1806_pasangan, 'Pasangan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1807_filsafat, 'Filsafat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1808_duka, 'Duka', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1809_padat, 'Padat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1811_kencangkan, 'Kencangkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1812_busur, 'Busur', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1813_tantangan, 'Tantangan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1814_menggali, 'Menggali', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1815_kerekan, 'Kerekan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1816_pegangan, 'Pegangan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1817_menggoyang, 'Menggoyang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1818_pemurnian, 'Pemurnian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1819_untuk_sementara, 'Untuk sementara', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1820_analisa, 'Analisa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1821_engsel, 'Engsel', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1822_sumbu, 'Sumbu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1822_sumbu, 'Bagian Penting', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1823_pola, 'Pola', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1824_semalam, 'Semalam', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1825_menggeser, 'Menggeser', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1825_menggeser, 'Tergelincir', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1825_menggeser, 'Meluncur', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1826_laguna, 'Laguna', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1827_arang, 'Arang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1828_contoh, 'Contoh', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1829_mengganggu, 'Mengganggu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1830_memutar_bersama, 'Memutar Bersama', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1831_tali, 'Tali', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1833_hati, 'Hati', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1834_halaman_rumput, 'Halaman rumput', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1835_liar, 'Liar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_1836_memecat, 'Memecat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_8993_mochi, 'Mochi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_8993_mochi, 'Kue Ketan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_9378_ramai, 'Ramai', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_9378_ramai, 'Hidup', false, true);

  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1804_mengatasi, 'こく', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1805_kedatangan, 'とう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1806_pasangan, 'そう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1806_pasangan, 'ふた', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1807_filsafat, 'てつ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1808_duka, 'そう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1808_duka, 'も', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1809_padat, 'かた', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1809_padat, 'けん', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1811_kencangkan, 'かつ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1811_kencangkan, 'くく', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1812_busur, 'こ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1813_tantangan, 'ちょう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1813_tantangan, 'いど', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1814_menggali, 'くつ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1814_menggali, 'ほ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1815_kerekan, 'あ', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1815_kerekan, 'よう', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1816_pegangan, 'あく', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1816_pegangan, 'にぎ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1817_menggoyang, 'よう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1817_menggoyang, 'ゆ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1818_pemurnian, 'さい', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1818_pemurnian, 'いつ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1819_untuk_sementara, 'ざん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1819_untuk_sementara, 'しばら', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1820_analisa, 'せき', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1821_engsel, 'すう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1821_engsel, 'からくり', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1822_sumbu, 'じく', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1823_pola, 'がら', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1823_pola, 'え', 'kunyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1823_pola, 'へい', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1824_semalam, 'はく', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1824_semalam, 'と', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1825_menggeser, 'かつ', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1825_menggeser, 'すべ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1825_menggeser, 'なめ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1826_laguna, 'かた', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1826_laguna, 'せき', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1827_arang, 'しょう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1827_arang, 'こ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1827_arang, 'あせ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1828_contoh, 'はん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1829_mengganggu, 'ふん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1829_mengganggu, 'まぎ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1829_mengganggu, 'まぐ', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1830_memutar_bersama, 'きゅう', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1831_tali, 'つな', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1831_tali, 'こう', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1833_hati, 'かん', 'onyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1833_hati, 'きも', 'kunyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1834_halaman_rumput, 'しば', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1834_halaman_rumput, 'し', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1835_liar, 'あ', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1835_liar, 'あら', 'kunyomi', false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1835_liar, 'こう', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1836_memecat, 'ふくろ', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_1836_memecat, 'たい', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_8993_mochi, 'もち', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_8993_mochi, 'へい', 'onyomi', false, false);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_9378_ramai, 'にぎ', 'kunyomi', true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (k_9378_ramai, 'しん', 'onyomi', false, false);

  -- 3. VOCABULARIES
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '要請', 'tuntutan', 42, 39, 'Anda <kanji>membutuhkan</kanji> sesuatu jadi Anda <kanji>meminta</kanji> itu. Namun, karena ini merupakan kebutuhan yang sangat kuat, hal ini sebenarnya bukan sebuah permintaan, melainkan lebih merupakan sebuah <vocabulary>permintaan</vocabulary>.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Tuntutan, Meminta')
    RETURNING id INTO v_5287_tuntutan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '躍進', 'kemajuan-pesat', 42, 40, 'Saat Anda <kanji>melompat</kanji> dan <kanji>maju</kanji>, Anda membuat <vocabulary>kemajuan pesat</vocabulary> dan <vocabulary>kemajuan besar</vocabulary>.

Anda mungkin ingat bahwa 飛躍 juga berarti "kemajuan pesat", tetapi apa yang membedakannya? 躍進 menekankan perspektif subjek seiring kemajuannya dengan cepat, sedangkan 飛躍 menyampaikan kemajuan atau lompatan signifikan dengan lebih netral, tanpa menonjolkan kecepatan atau perspektif.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Kemajuan Pesat, Kemajuan Besar')
    RETURNING id INTO v_6325_kemajuan_pesat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '躍動', 'semangat', 42, 41, 'Setiap <kanji>lompatan</kanji> yang Anda lakukan adalah <kanji>gerakan</kanji> yang penuh dengan <vocabulary>kegembiraan</vocabulary>. <vocabulary>gerakan dinamis</vocabulary> Anda menangkap esensi dari <vocabulary>gerakan hidup</vocabulary>, sehingga memikat semua orang yang menyaksikannya.

躍動 bukan hanya tentang gerakan, tetapi juga tentang mengekspresikan vitalitas atau keaktifan internal melalui gerakan atau tindakan. Ini biasanya digunakan sebagai 躍動感 (perasaan yang hidup).', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Semangat, Gerakan Dinamis, Gerakan Hidup')
    RETURNING id INTO v_6326_semangat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '投棄', 'dumping', 42, 42, 'Saat Anda <kanji>membuang</kanji> sesuatu dan <kanji>meninggalkannya</kanji>, pada dasarnya Anda <vocabulary>membuang</vocabulary> itu.

投棄 adalah kata formal untuk <kosakata>membuang</vocabulary> barang, sering digunakan dalam konteks membuang sampah secara ilegal.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda mempelajari on''yomi untuk 投 ketika Anda mempelajari 投資 beberapa waktu yang lalu.', 'Dumping, Membuang')
    RETURNING id INTO v_6501_dumping;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '駆け込む', 'untuk-terburu-buru', 42, 43, '駆ける adalah "berlari" dan kanji 込 berarti <kanji>ke</kanji>. Berlari ke suatu tempat berarti <kosakata>tergesa-gesa memasuki</kosakata> tempat tersebut. Lagipula, kamu tidak bisa berlari kencang.

Ini juga dapat berarti <vocabulary>mencari perlindungan</vocabulary>, seperti bergegas menuju tempat yang aman dan mendapat dukungan.', 'Bacaannya berasal dari 駆ける dan 込む.', 'Untuk Terburu-buru')
    RETURNING id INTO v_6560_untuk_terburu_buru;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '駆け出す', 'untuk-mulai-berjalan', 42, 44, 'Anda tahu 駆ける berarti "berlari kencang" dan 出す berarti "melepaskan". Nah, untuk bisa berlari kencang dan keluar dari suatu tempat, Anda perlu <vocabulary>mulai berlari</vocabulary> terlebih dahulu.

Pada dasarnya, 駆け出す hanya mendeskripsikan tindakan mulai berlari, namun sering kali digunakan dalam arti <vocabulary>terburu-buru</vocabulary> ke suatu tempat. Misalnya, anak sekolah mungkin keluar dari kelasnya dan langsung menuju taman bermain ketika mereka mendengar bel berbunyi.', 'Bacaannya berasal dari 駆ける dan 出す.', 'Untuk Mulai Berjalan, Untuk bergegas keluar, Kehabisan')
    RETURNING id INTO v_6561_untuk_mulai_berjalan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '駆け回る', 'untuk-berlari', 42, 45, 'To 駆ける berarti "berlari kencang". 回る adalah "berputar". Jadi jika Anda berlari kencang dengan cara berputar, Anda akan <vocabulary>berlari</vocabulary>.', 'Bacaannya berasal dari 駆ける dan 回る.', 'Untuk Berlari')
    RETURNING id INTO v_6562_untuk_berlari;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '不孝者', 'anak-yang-tidak-taat', 42, 46, 'Ingat bagaimana 不孝 adalah "ketidaktaatan kepada orang tua"? Nah, <kanji>seseorang</kanji> yang menunjukkan <kanji>ketidaktaatan kepada orang tua</kanji> adalah <vocabulary>anak durhaka</vocabulary> atau <vocabulary>anak tidak berbakti</vocabulary>.', '不孝 adalah bacaan yang harus Anda ketahui. Tambahkan bacaan もの untuk 者 dan Anda akan mendapatkan bacaannya sendiri. Sekarang patuhi orang tuamu dan terus pelajari kanjimu.', 'Anak yang Tidak Taat, Anak Tidak Berbakti')
    RETURNING id INTO v_6563_anak_yang_tidak_taat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '親不孝', 'kurangnya-kesalehan-berbakti', 42, 47, 'Anda tahu bahwa 不孝 berarti "ketidaktaatan kepada orang tua. Jadi, jika Anda menambahkan <kanji>orang tua</kanji> ke dalamnya, artinya sama saja. Pada dasarnya, hanya versi yang lebih panjang dari kata tersebut. Artinya <vocabulary>kurangnya rasa berbakti</vocabulary> atau <vocabulary>ketidaktaatan kepada orang tua</vocabulary>.', 'Bacaan untuk 不孝 adalah bacaan yang Anda pelajari. Kemudian, tambahkan bacaan (vocab) 親 ke dalamnya.', 'Kurangnya Kesalehan Berbakti, Ketidaktaatan Kepada Orang Tua')
    RETURNING id INTO v_6564_kurangnya_kesalehan_berbakti;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '携帯電話', 'telepon-portabel', 42, 48, 'Anda tahu bahwa 携帯 berarti "portabel" atau "ponsel" atau "ponsel". Lalu 電話 berarti "telepon". Ini pada dasarnya hanyalah versi yang lebih panjang dari sekedar mengucapkan 携帯, menjadikannya <vocabulary>ponsel portabel</vocabulary> atau <vocabulary>ponsel</vocabulary> atau <vocabulary>ponsel</vocabulary>. Ini seperti perbedaan antara mengatakan "ponsel saya" dan "ponsel saya", Anda paham?', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri. Akan membantu untuk mengetahui bacaan 携帯 dan 電話 yang satu ini.', 'Telepon Portabel, Ponsel, Telepon genggam')
    RETURNING id INTO v_6565_telepon_portabel;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '最新鋭', 'canggih', 42, 49, '最新 adalah, seperti yang mungkin bisa Anda tebak, "yang terbaru". Jadi, hal <kanji>tajam</kanji> terbaru adalah <vocabulary>canggih</vocabulary>. Ini adalah <vocabulary>tercanggih</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Canggih, Terdepan')
    RETURNING id INTO v_6566_canggih;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '犠飛', 'pengorbanan-terbang', 42, 50, '<kanji>pengorbanan</kanji> <kanji>lalat</kanji> adalah <vocabulary>lalat pengorbanan</vocabulary>. Dalam bisbol, ini adalah saat Anda memukul bola di udara sehingga pelari dapat naik dan naik ke base.', 'Bacaannya adalah bacaan on''yomi. Karena 飛 coba pikirkan bagaimana <reading>dia</reading> (ひ) memukul lalat pengorbanan, dan dia memukulnya begitu keras hingga bolanya <reading>dia</reading> habiskan.', 'Pengorbanan Terbang')
    RETURNING id INTO v_6567_pengorbanan_terbang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '不透明', 'kegelapan', 42, 51, 'Anda tahu bahwa 透明 adalah "transparansi" atau "transparan" - jadi, jika ada sesuatu yang tidak transparan, maka itu adalah <vocabulary>buram</vocabulary>, sehingga menjadikan kata ini menjadi <vocabulary>opacity</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Kegelapan, Buram')
    RETURNING id INTO v_6568_kegelapan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '克服', 'penaklukan', 42, 52, 'Saatnya <kanji>mengatasi</kanji> <kanji>pakaian</kanji> musuh kita. Mereka semua memakai pakaian yang sama (misalkan baju biru) jadi kita tahu kalau kita mengalahkan orang berjas biru, kita akan menang. Ini akan menjadi <vocabulary>penaklukan</vocabulary>!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Penaklukan')
    RETURNING id INTO v_6569_penaklukan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '克明', 'terperinci', 42, 53, 'Jika Anda <kanji>dipenuhi</kanji> dengan <kanji>kecerahan</kanji>, Anda akan dapat melihat semua hal-hal kecil <vocabulary>detail</vocabulary> yang bagus.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Terperinci')
    RETURNING id INTO v_6570_terperinci;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '到着', 'kedatangan', 42, 54, 'Pada waktu <kanji>kedatangan</kanji> Anda akan <kanji>tiba</kanji>. Ini adalah <vocabulary>kedatangan</vocabulary> Anda.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Kedatangan')
    RETURNING id INTO v_6571_kedatangan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '双子', 'saudara-kembar', 42, 55, '<kanji>pasangan</kanji> dari <kanji>anak</kanji>ren adalah sama satu sama lain. Mereka <vocabulary>kembar</vocabulary>.', 'Bacaannya seperti 二人, (bagian ふた) ditambah 子, digabungkan menjadi satu. Agak aneh, tapi masuk akal. Hati-hati dengan rendaku.', 'Saudara kembar')
    RETURNING id INTO v_6572_saudara_kembar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '双', 'pasangan', 42, 56, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Pembacaan yang Anda pelajari dengan kanji sama dengan yang digunakan di sini. Mereka adalah <vocabulary>pasangan</vocabulary>, lho?', 'Pasangan')
    RETURNING id INTO v_6573_pasangan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '双眼鏡', 'teropong', 42, 57, 'Sepasang <kanji>sepasang</kanji> <kanji>bola mata</kanji> <kanji>cermin</kanji> - itulah <vocabulary>teropong</vocabulary>. Teropong memiliki cermin di dalamnya yang memungkinkan Anda melihat melalui sepasang lubang mata, sehingga kata ini masuk akal.', 'Bagian 鏡 menggunakan bacaan on''yomi, yang belum Anda pelajari. Untuk mengingat hal ini, coba pikirkan bagaimana ketika Anda melihat ke bawah melalui teropong, Anda melihat sesuatu yang aneh (seperti pembacaan yang aneh untuk 鏡). Hal aneh yang Anda lihat melalui teropong fantastis ini adalah... besok. Teropongmu sangat kuat sehingga kamu sudah bisa melihat hari esok, <reading>hari ini</reading> (きょう)!', 'Teropong')
    RETURNING id INTO v_6574_teropong;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '哲学', 'filsafat', 42, 58, '<kanji>filsafat</kanji> <kanji>studi</kanji> adalah studi tentang <vocabulary>filsafat</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Filsafat')
    RETURNING id INTO v_6575_filsafat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '喪', 'duka', 42, 59, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Karena kata ini terdiri dari satu kanji, kemungkinan besar menggunakan bacaan kun''yomi. Anda tidak mempelajari bacaan ini, jadi inilah mnemonik untuk membantu Anda: 

Apa dua huruf pertama dari kata <vocabulary>berkabung</vocabulary>? Ini <read>mo</reading> (も). Anda dapat menggunakannya untuk mengingat.', 'Duka')
    RETURNING id INTO v_6576_duka;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '喪失', 'kehilangan', 42, 60, 'Anda <kanji>berduka</kanji> atas <kanji>kesalahan</kanji> Anda. Karena kesalahan anda, anda mendapat <vocabulary>kerugian</vocabulary> dan <vocabulary>kehilangan</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Kehilangan, Kehilangan')
    RETURNING id INTO v_6577_kehilangan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '堅い', 'padat', 42, 61, 'Ini adalah kanji tunggal dengan い di akhir, artinya Anda tahu itu mungkin kata sifat. Apa bentuk kata sifat dari <kanji>padat</kanji>? Itu adalah <vocabulary>solid</vocabulary>, <vocabulary>serius</vocabulary>, <vocabulary>tegak</vocabulary>, atau <vocabulary>hard</vocabulary>. Kata ini sering digunakan dalam arti kiasan, seperti dalam pembelaan yang kokoh, topik yang serius, atau orang yang jujur.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji.', 'Padat, Serius, Jujur, Keras')
    RETURNING id INTO v_6578_padat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '括る', 'untuk-mengikat', 42, 62, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>kencangkan</kanji> dan versi kosakata kata kerjanya adalah <vocabulary>to fast</vocabulary> atau <vocabulary>to tie up</vocabulary> atau <vocabulary>to tie Together>.', 'Anda mengencangkan jam <reading>coocoo</reading> (くく), sehingga burung coocoo tidak keluar lagi. Burung coocoo yang menyebalkan itu.', 'Untuk Mengikat, Untuk Mengencangkan, Untuk Mengikat Bersama, Untuk Mengikat')
    RETURNING id INTO v_6583_untuk_mengikat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '一括', 'bersama', 42, 63, '<kanji>Kencangkan</kanji> semuanya menjadi <kanji>satu</kanji>. <vocabulary>Semuanya</vocabulary> dalam satu <vocabulary>batch</vocabulary> atau <vocabulary>lump</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri. Hati-hati dengan いち yang dipersingkat.', 'Bersama, Kelompok, Satu Benjolan')
    RETURNING id INTO v_6584_bersama;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '総括', 'kesimpulannya', 42, 64, 'Jika Anda mengambil <kanji>keseluruhan</kanji> dan <kanji>mengikat</kanji> bersama-sama, Anda <vocabulary>menyimpulkan</vocabulary> sesuatu dan membuat <vocabulary>ikhtisar</vocabulary> tentangnya.

総括 adalah kata formal yang sering Anda temui dalam pertemuan atau laporan resmi. Hal ini berarti mengumpulkan dan merangkum potongan-potongan informasi yang tersebar — terkadang untuk gambaran sederhana, seperti laporan anggaran departemen, namun lebih sering demi mengevaluasi hasil dan merencanakan arah masa depan.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Kesimpulannya, Ringkasan')
    RETURNING id INTO v_6585_kesimpulannya;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '統括', 'penyatuan', 42, 65, '<kanji>Satukan</kanji> sesuatu dan <kanji>kencangkan</kanji> dan Anda akan mendapatkan <vocabulary>penyatuan</vocabulary> atau <vocabulary>generalisasi</vocabulary>. Saat ini kata ini digunakan untuk mengartikan <vocabulary>manajemen</vocabulary> dalam beberapa konteks juga.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Penyatuan, Generalisasi, Pengelolaan')
    RETURNING id INTO v_6586_penyatuan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '括弧', 'tanda-kurung', 42, 66, '<kanji>ikat</kanji> <kanji>busur</kanji> adalah busur yang mengelilingi sesuatu untuk mengikat semuanya. Apakah hal-hal ini? Yaitu (<vocabulary>tanda kurung</vocabulary>) dan [<vocabulary>bracket</vocabulary>].', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri. Juga, hati-hati dari pemendekannya.', 'Tanda kurung, Kurung')
    RETURNING id INTO v_6587_tanda_kurung;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '円弧', 'busur', 42, 67, '<kanji>bulat</kanji> <kanji>busur</kanji> adalah bentuk <vocabulary>busur</vocabulary>. Bentuknya bulat, tahu?', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Busur')
    RETURNING id INTO v_6588_busur;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '挑む', 'untuk-menantang-seseorang', 42, 68, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>tantangan</kanji>, dan bentuk kata kerjanya berarti <vocabulary>menantang seseorang</vocabulary> atau <vocabulary>menghadapi sesuatu yang sulit</vocabulary>. 

挑む adalah kata yang relatif formal untuk berani menghadapi tantangan. Perasaannya kuat dan penuh semangat, seperti seorang pendaki yang berkata, "Saya akan mendaki Gunung Everest!" Anda akan menemukannya di berita utama, komentar langsung olahraga, adegan pertarungan anime, atau bahkan dalam kehidupan sehari-hari ketika seseorang ingin terdengar bertekad dan bersemangat tentang tujuan besar pribadinya.', '<read>Saya tidak</reading>tidak (いど) hanya menantang siapa pun, tetapi ketika saya menantang seseorang, itu nyata. Refleksku yang menantang datang dari <reading>Id</reading> (いど) ku.', 'Untuk Menantang Seseorang, Untuk Mengambil Sesuatu yang Sulit, Untuk Berani Mencoba')
    RETURNING id INTO v_6589_untuk_menantang_seseorang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '挑戦', 'sebuah-tantangan', 42, 69, 'Sebuah <kanji>tantangan</kanji> untuk <kanji>perang</kanji>? Ini adalah <vocabulary>sebuah tantangan</vocabulary> yang patut diterima. Lagipula, kita tidak bisa menyerah tanpa setidaknya memberikan <vocabulary>mencoba</vocabulary> atau membuat semacam <vocabulary>sebuah percobaan</vocabulary>.

Perhatikan bahwa 挑戦 mengacu pada tantangan bukan dalam arti tugas yang sulit dan menantang, namun dalam arti upaya yang berani atau berani untuk melakukan tugas tersebut — apakah itu mengalahkan musuh yang tangguh, melakukan prestasi yang mengesankan, atau mengatasi masalah yang rumit.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Sebuah Tantangan, Sebuah Percobaan, Sebuah Upaya')
    RETURNING id INTO v_6590_sebuah_tantangan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '挑発', 'provokasi', 42, 70, '<kanji>tantangan</kanji> saya telah <kanji>berangkat</kanji> dan dikirim ke musuh. Tantangan yang saya kirimkan ini adalah <vocabulary>provokasi</vocabulary> untuk melihat apakah mereka akan menerima tantangan saya.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Provokasi')
    RETURNING id INTO v_6591_provokasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '掘る', 'untuk-menggali', 42, 71, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>menggali</kanji> dan versi kosakata kata kerjanya adalah <vocabulary>to dig</vocabulary>.', 'Jika Anda ingin <vocabulary>menggali</vocabulary> Anda pada akhirnya akan membuat <reading>ho</reading>le (ほ).', 'Untuk Menggali')
    RETURNING id INTO v_6592_untuk_menggali;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '発掘', 'penggalian', 42, 72, 'Mari <kanji>berangkat</kanji> dalam <kanji>penggalian</kanji>peningkatan situs ini. Ini lebih dari sekedar menggali, kita pergi ke suatu tempat dan mempelajari hal-hal baru dengan penggalian ini. Ini adalah <vocabulary>penggalian</vocabulary>!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri. Berhati-hatilah agar 発 memendek.', 'Penggalian, Menggali, Penemuan')
    RETURNING id INTO v_6593_penggalian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '揚げる', 'untuk-menggoreng', 42, 73, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>mengangkat</kanji>. Namun yang paling umum (dan paling penting), kata ini berarti <vocabulary>menggoreng</vocabulary>. Saya rasa Anda bisa menganggapnya seperti mengeluarkan makanan gorengan yang lezat dari minyak.

Tentu saja, 揚げる juga bisa berarti <vocabulary>mengibarkan</vocabulary> (layar) atau <vocabulary>mengibarkan</vocabulary> (bendera) tergantung pada konteksnya.', 'Ingat kosakata "untuk meningkatkan" lainnya? Mereka semua juga あげる. Misalnya, 上げる adalah あげる dan 挙げる adalah あげる juga.', 'Untuk Menggoreng, Untuk Mengangkat, Untuk Meningkatkan')
    RETURNING id INTO v_6594_untuk_menggoreng;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '握る', 'untuk-dipahami', 42, 74, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>pegangan</kanji> dan versi kosakata kata kerjanya adalah <vocabulary>to grip</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak mempelajari cara membaca tersebut dengan kanji ini, jadi inilah mnemonik yang dapat membantu Anda: Anda akan <vocabulary>memahami</vocabulary> seseorang. Anda sangat membutuhkannya. Kamu sangat <reading>membutuhkan</reading> (にぎ). Kecuali, Anda tidak bisa mengucapkan bunyi "d" dengan baik, jadi Anda mengucapkan にぎ.', 'Untuk dipahami, Untuk Menggenggam')
    RETURNING id INTO v_6595_untuk_dipahami;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '握手', 'jabat-tangan', 42, 75, '<kanji>pegangan</kanji> dengan <kanji>tangan</kanji> Anda (ke tangan yang lain) adalah <vocabulary>jabat tangan</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri. Dengan 手, pikirkan kembali kosakata lain yang menggunakan bacaan on''yomi.', 'Jabat tangan, Berjabat Tangan')
    RETURNING id INTO v_6596_jabat_tangan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '握力', 'pegangan', 42, 76, '<kanji>pegangan</kanji> <kanji>kekuatan</kanji> Anda adalah <vocabulary>pegangan</vocabulary> Anda, atau lebih khusus lagi <vocabulary>kekuatan cengkeraman</vocabulary> atau <vocabulary>pegangan</vocabulary> Anda.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Pegangan, Kekuatan Genggaman, Pegangan')
    RETURNING id INTO v_6597_pegangan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '揺る', 'untuk-mengguncang', 42, 77, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>menggoyang</kanji> dan kata kerjanya adalah <vocabulary>goyang</vocabulary>.', 'Jika segala sesuatu mulai <vocabulary>bergetar</vocabulary> apa lagi yang akan ikut berguncang? <reading>Kamu</reading> (ゆ), tentu saja.', 'Untuk Mengguncang, Tersentak')
    RETURNING id INTO v_6598_untuk_mengguncang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '動揺', 'gejolak-emosional', 42, 78, 'Saat hati Anda <kanji>bergerak</kanji> lalu <kanji>bergetar</kanji>, Anda berada dalam kondisi <vocabulary>gejolak emosi</vocabulary> atau <vocabulary>kegelisahan</vocabulary>.

動揺 mengacu pada <kosa kata>terguncang secara emosional</vocabulary>, atau perasaan terganggu, gelisah, atau tidak tenang.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Gejolak Emosional, Kerusuhan, Terguncang Secara Emosional')
    RETURNING id INTO v_6599_gejolak_emosional;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '書斎', 'belajar', 42, 79, 'Saya <kanji>menulis</kanji> untuk <kanji>pemurnian</kanji>. Saya melakukan penulisan pemurnian ini di <vocabulary>studi</vocabulary> dan <vocabulary>den</vocabulary> saya.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Belajar, Sarang, Perpustakaan')
    RETURNING id INTO v_6600_belajar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '斎場', 'aula-pemakaman', 42, 80, '<kanji>pemurnian</kanji> <kanji>lokasi</kanji> adalah tempat di mana Anda melakukan pemurnian pada orang lain. Siapa yang paling membutuhkan pemurnian? Orang mati. Di mana Anda memurnikannya? Di <vocabulary>aula pemakaman</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda mempelajari on''yomi untuk 場 ketika Anda mempelajari 入場 beberapa waktu yang lalu.', 'Aula Pemakaman')
    RETURNING id INTO v_6601_aula_pemakaman;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '暫く', 'sebentar', 42, 81, 'Saat Anda melakukan sesuatu <kanji>sementara</kanji>, Anda hanya melakukannya <vocabulary>sementara</vocabulary>. Hal ini tidak permanen — berapa pun lamanya, hal ini hanya <vocabulary>untuk beberapa waktu</vocabulary>.

暫く mengacu pada jangka waktu yang tidak terlalu lama, namun juga tidak terlalu pendek — hanya di antara keduanya. Berapa lama tepatnya? Itu tergantung pada pembicaranya. Jika ini terasa lama bagi Anda, hei, itu sudah lama!

Perlu diingat bahwa bentuk kanji cukup formal, sehingga lebih umum ditulis dalam kana, seperti しばらく.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda:

Anda telah menunggu <vocabulary>beberapa saat</vocabulary> dan belum terjadi apa-apa, jadi Anda mulai menyanyikan <reading>shee</reading>p <reading>balla</reading>d (しばら). Balada ini membantu Anda tidur dengan menghitung domba. Jika kamu berhasil tertidur <vocabulary>selama beberapa waktu</vocabulary>, waktu pasti akan berlalu lebih cepat, dan sesuatu mungkin akan terjadi!', 'Sebentar, Untuk Beberapa Waktu')
    RETURNING id INTO v_6602_sebentar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '暫定', 'bisa-berubah', 42, 82, '<kanji>Untuk sementara</kanji> <kanji>tentukan</kanji> sesuatu. Hal ini menjadikannya <vocabulary>tentatif</vocabulary> dan <vocabulary>sementara</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Bisa berubah, Sementara')
    RETURNING id INTO v_6603_bisa_berubah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '解析', 'analisa', 42, 83, 'Jika Anda <kanji>melepaskan</kanji> <kanji>analisis</kanji>, Anda sebenarnya hanya melakukan <vocabulary>analisis</vocabulary> pada analisis tersebut, jika Anda mengerti maksud saya.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Analisa')
    RETURNING id INTO v_6604_analisa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '分析', 'analisa', 42, 84, 'Anda <kanji>membagi</kanji> sesuatu untuk kemudian melakukan <kanji>analisis</kanji> terhadapnya. Kita bisa menyebutnya <vocabulary>analisis</vocabulary> atau <vocabulary>analyzing</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Analisa, Menganalisis')
    RETURNING id INTO v_6605_analisa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '枢軸', 'sumbu', 42, 85, '<kanji>engsel</kanji> <kanji>sumbu</kanji> sesuatu adalah <vocabulary>sumbu</vocabulary> atau <vocabulary>pivot</vocabulary> tempat benda-benda bergantung.

枢軸 umumnya digunakan secara kiasan untuk mendeskripsikan <vocabulary>bagian sentral</vocabulary> dari sesuatu yang penting, atau pusat kekuasaan.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Sumbu, Poros, Bagian Tengah')
    RETURNING id INTO v_6606_sumbu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '中枢', 'tengah', 42, 86, '<kanji>tengah</kanji> <kanji>engsel</kanji> adalah titik <vocabulary>pusat</vocabulary> <vocabulary>pivot</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Tengah, Tengah, Poros')
    RETURNING id INTO v_6607_tengah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '軸', 'sumbu', 42, 87, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.

Secara harafiah, 軸 dapat merujuk pada <vocabulary>axis</vocabulary> fisik, seperti batang sesuatu yang berputar. Secara kiasan, ini menggambarkan <kosakata>bagian penting</vocabulary> dari sesuatu, seperti tokoh sentral dalam sebuah proyek, ide inti dari sebuah diskusi, atau keyakinan inti yang membentuk siapa Anda.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji.', 'Sumbu, Bagian Penting')
    RETURNING id INTO v_6608_sumbu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '掛軸', 'gulir-gantung', 42, 88, 'Itu <kanji>menggantung</kanji> pada titik <kanji>sumbu</kanji>. Sumbunya terbuka, dan memperlihatkan <vocabulary>gulir gantung</vocabulary>. Ini mungkin memerlukan sedikit imajinasi ekstra, tapi saya percaya pada Anda.', 'Untuk 掛 Anda perlu memikirkan kembali kata 掛ける, lalu memendekkannya dan memasukkannya ke dalam kanji setengahnya (setidaknya bagian かけ). Karena 軸 itulah bacaan yang kamu pelajari dengan kanji, jadi setidaknya kamu harus mengerjakannya.', 'Gulir Gantung')
    RETURNING id INTO v_6609_gulir_gantung;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '中軸', 'sumbu', 42, 89, '<kanji>tengah</kanji> dari <kanji>sumbu</kanji> tentu saja merupakan tempat <vocabulary>axis</vocabulary>, namun juga merupakan tempat <vocabulary>pivot</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Sumbu, Poros')
    RETURNING id INTO v_6610_sumbu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '柄', 'pola', 42, 90, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya adalah yang kamu pelajari dengan kanji, dasar bebek yang beruntung. Ikuti pola membaca itu sampai di sini, dan Anda akan baik-baik saja.', 'Pola, Desain')
    RETURNING id INTO v_6611_pola;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '国柄', 'karakter-bangsa', 42, 91, '<kanji>negara</kanji> <kanji>pola</kanji> adalah pola yang dilakukan suatu negara. Inilah <vocabulary>karakter bangsa</vocabulary> suatu bangsa.', 'Bacaannya merupakan bacaan kun''yomi dari kedua kanji tersebut. 国 adalah くに dan 柄 adalah bacaan yang Anda pelajari dengan kanji.', 'Karakter Bangsa')
    RETURNING id INTO v_6612_karakter_bangsa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '人柄', 'karakter-pribadi', 42, 92, '<kanji>pola</kanji> seseorang adalah pola tindakan yang mereka ambil untuk menjadi diri mereka sendiri. Apa yang biasanya mereka lakukan? Apa pola mereka? Ini sama dengan <vocabulary>karakter pribadi</vocabulary> atau <vocabulary>kepribadian</vocabulary> mereka.', 'Bacaannya sama-sama bacaan kun''yomi, digabungkan. Untuk 人 Anda hanya perlu mengingat ini. Dengan 柄, itulah bacaan yang Anda pelajari, sehingga segalanya menjadi lebih mudah. Tetap konsisten!', 'Karakter Pribadi, Kepribadian, Karakter')
    RETURNING id INTO v_6613_karakter_pribadi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '一泊', 'menginap-satu-malam', 42, 93, '<kanji>Satu</kanji> <kanji>semalam</kanji> adalah <vocabulary>menginap satu malam</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri. Hati-hati dengan 一 yang disingkat dan rendaku yang satu ini.', 'Menginap Satu Malam')
    RETURNING id INTO v_6614_menginap_satu_malam;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '二泊', 'menginap-dua-malam', 42, 94, '<kanji>Dua</kanji> <kanji>semalam</kanji> adalah <vocabulary>menginap dua malam</vocabulary>. Dengan kata lain, Anda <vocabulary>menginap selama dua malam</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Menginap Dua Malam, Menginap Selama Dua Malam')
    RETURNING id INTO v_6615_menginap_dua_malam;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '宿泊', 'penginapan', 42, 95, '<kanji>penginapan</kanji> di mana Anda akan bermalam <kanji>semalam</kanji> adalah <vocabulary>penginapan</vocabulary>. Di sinilah Anda akan <vocabulary>menginap</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Penginapan, Menginaplah Malam Ini')
    RETURNING id INTO v_6616_penginapan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '泊まる', 'untuk-menginap-malam-ini', 42, 96, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>bermalam</kanji> dan versi kosakata kata kerjanya adalah <vocabulary>to stay the night</vocabulary>.', 'Kami hanya akan menginap <reading>sampai</reading>malam (と) dan mungkin <reading>sampai</reading>besok (と) malam.', 'Untuk Menginap Malam Ini, Untuk Menginap, Untuk Tidur')
    RETURNING id INTO v_6617_untuk_menginap_malam_ini;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '滑る', 'untuk-meluncur', 42, 97, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>meluncur</kanji> dan versi kosakata kata kerjanya adalah <vocabulary>slide</vocabulary>, <vocabulary>slide</vocabulary>, atau <vocabulary>to glide</vocabulary>. 

滑る adalah kata serbaguna yang dapat mencakup semua jenis tindakan, seperti meluncur ke bawah perosotan taman bermain, terpeleset di atas es, bermain ski atau skating, dan bahkan gagal dalam ujian atau diturunkan pangkatnya.', 'Anda akan <vocabulary>terpeleset</vocabulary>, dan menyadari bahwa lantainya seluruhnya tertutup <reading>souve</reading>nir (すべ)! Suvenir dalam berbagai bentuk dan ukuran tersebar di seluruh lantai, sehingga sangat mudah untuk digeser dan tergelincir.', 'Untuk Meluncur, Tergelincir, Untuk Meluncur')
    RETURNING id INTO v_6618_untuk_meluncur;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '円滑', 'mudah', 42, 98, 'Bayangkan sesuatu <kanji>bulat</kanji> yang <kanji>meluncur</kanji> tanpa kesulitan sama sekali. Gerakannya sangat <vocabulary>mudah</vocabulary> dan <vocabulary>halus</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Mudah, Mulus')
    RETURNING id INTO v_6619_mudah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '潟', 'laguna', 42, 99, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji.', 'Laguna')
    RETURNING id INTO v_6620_laguna;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '干潟', 'datar-pasang-surut', 42, 100, '<kanji>kering</kanji> <kanji>laguna</kanji> adalah <vocabulary>dataran pasang surut</vocabulary>.', 'Pembacaan untuk 干 sungguh luar biasa. Coba pikirkan mengapa laguna itu kering. Itu karena <read>he</reading>at (ひ) matahari. Hati-hati dengan rendaku.', 'Datar Pasang Surut, negeri pasang surut')
    RETURNING id INTO v_6621_datar_pasang_surut;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '焦点', 'titik-fokus', 42, 101, '<kanji>char</kanji> <kanji>titik</kanji> adalah bagian yang Anda lihat dengan sangat keras hingga membuat lubang kecil di dalamnya. Bayangkan saja diri Anda melihat satu titik dengan sangat tajam hingga mulai membara. Inilah <vocabulary>focal point</vocabulary> atau <vocabulary>fokus</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Titik Fokus, Fokus')
    RETURNING id INTO v_6622_titik_fokus;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '焦げる', 'untuk-terbakar', 42, 102, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>char</kanji>, namun versi kata kerjanya adalah <vocabulary>to get burn</vocabulary>, <vocabulary>to get hangus</vocabulary>, atau <vocabulary>to get hangus</vocabulary>.

Ini terjadi ketika ada sesuatu yang terbakar di permukaan. Seringkali, 焦げる adalah jenis rasa terbakar yang tidak menyenangkan dan tidak disengaja. Anda dapat menggunakan 焦げる ketika roti Anda gosong di pemanggang roti, misalnya, atau kemeja hangus dan menghitam karena setrika.', 'Saat-saat di mana Anda terbakar sebagian besar adalah ketika Anda masih <reading>子</reading> (こ). Itu karena anak-anak tidak pandai menangani benda-benda panas.', 'Untuk Terbakar, Menjadi Hangus, Untuk Menjadi Hangus')
    RETURNING id INTO v_6623_untuk_terbakar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '範囲', 'cakupan', 42, 103, 'Mari kita lihat <kanji>contoh</kanji> ini dan <kanji>kelilingi</kanji> itu. Contoh ini menunjukkan <vocabulary>luasan</vocabulary> atau <vocabulary>cakupan</vocabulary> dari apa yang kita lakukan, dan garis yang mengelilinginya menunjukkan seberapa jauh jangkauannya.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Cakupan, Cakupan')
    RETURNING id INTO v_6624_cakupan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '模範', 'contoh', 42, 104, 'Sebuah <kanji>imitasi</kanji> dari sebuah <kanji>contoh</kanji> adalah <vocabulary>contoh</vocabulary> dari sesuatu. Ini juga merupakan <vocabulary>model</vocabulary> dari contoh apa yang Anda buat.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Contoh, Model, Contoh')
    RETURNING id INTO v_6625_contoh;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '範', 'contoh', 42, 105, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan yang Anda pelajari juga!', 'Contoh, Model')
    RETURNING id INTO v_6626_contoh;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '紛らす', 'untuk-mengalihkan-perhatian', 42, 106, 'Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>mengalihkan</kanji> dan versi kosakata kata kerja dari kata ini adalah <vocabulary>to distraksi</vocabulary> atau <vocabulary>to divert</vocabulary>.

紛らす umumnya mengacu pada upaya mengalihkan pikiran dari hal-hal negatif seperti kebosanan, rasa sakit, kesedihan, atau stres, seperti dalam 気を紛らす (untuk mengalihkan perhatian) atau 痛みを紛らす (untuk mengalihkan pikiran dari rasa sakit). Anda tidak menghilangkan masalahnya sendiri, hanya memberikan otak Anda hal lain untuk fokus sehingga Anda bisa melupakannya sejenak.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Saat kamu ingin <vocabulary>mengalihkan</vocabulary> dirimu dari semua masalahmu, kamu bergaul dengan temanmu <reading>Maggie</reading> (まぎ). Maggie adalah orang paling mengagumkan yang Anda kenal, dan berada di dekatnya selalu membantu Anda <vocabulary>mengalihkan</vocabulary> diri Anda dari masalah hidup. Terima kasih telah menjadi bahu yang baik untuk bersandar, Maggie!', 'Untuk Mengalihkan perhatian, Untuk Mengalihkan, Untuk Mengalihkan Pikiran Seseorang')
    RETURNING id INTO v_6627_untuk_mengalihkan_perhatian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '紛糾', 'komplikasi', 42, 107, 'Ketika ion-ion <kanji>mengalihkan</kanji> <kanji>berpilin bersama</kanji>, ion-ion tersebut menciptakan segala macam <vocabulary>kerumitan</vocabulary>, <vocabulary>kebingungan</vocabulary>, dan <vocabulary>kekacauan</vocabulary>. Bayangkan mengikuti satu gangguan, lalu teralihkan lagi dari gangguan awal. Ugh, tiba-tiba semuanya berputar menjadi satu dan Anda terjebak dalam jaringan kerumitan dan kebingungan tanpa ada cara untuk melepaskan diri dari kekacauan tersebut.

紛糾 adalah kata formal yang menggambarkan situasi yang terperosok dalam konflik atau perselisihan. Kata ini sering digunakan dalam berita atau laporan resmi — misalnya, debat politik mungkin terjadi karena perbedaan pendapat dan tidak ada kesimpulan yang dapat dicapai.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Komplikasi, Kebingungan, Kekacauan')
    RETURNING id INTO v_6628_komplikasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '糾弾', 'penghukuman', 42, 108, 'Jika Anda <kanji>menyambung</kanji> beberapa <kanji>peluru</kanji> untuk membuat peluru super besar yang berkelok-kelok, Anda akan terkena <vocabulary>kutukan</vocabulary> dan <vocabulary>kecaman</vocabulary>. Berhentilah menciptakan solusi baru dan lakukan sesuatu yang produktif!

糾弾 adalah kata formal yang digunakan ketika seseorang dikutuk atau dicela di depan umum karena melakukan kesalahan. Anda mungkin menemukannya dalam laporan berita atau diskusi politik, seperti ketika aktivis melaporkan skandal politisi atau ketidakadilan suatu organisasi, misalnya.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Penghukuman, Pengaduan, Mengecam')
    RETURNING id INTO v_6629_penghukuman;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '綱', 'tali', 42, 109, 'Kanjinya adalah <kanji>tali</kanji>, jadi kata ini juga mengacu pada <vocabulary>tali</vocabulary>.

綱 mengacu pada tali yang tebal atau kokoh, seperti yang digunakan di kapal atau untuk menarik sesuatu yang berat. Anda juga akan melihatnya dalam frasa untuk hal-hal yang "dipegang" oleh orang-orang untuk mendapatkan dukungan atau kelangsungan hidup, seperti 命綱 (garis kehidupan, baik secara harfiah maupun kiasan) dan 頼みの綱 (seseorang atau sesuatu yang dapat diandalkan ketika semuanya gagal).', 'Bacaan yang digunakan disini adalah bacaan yang dipelajari dengan kanji.', 'Tali, Tali')
    RETURNING id INTO v_6630_tali;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '綱引き', 'tarik-tambang', 42, 110, '<kanji>tali</kanji> <kanji>tarikan</kanji>. Kedua belah pihak menarik talinya. Itu adalah <vocabulary>tarik tambang</vocabulary>.

綱引き secara harfiah berarti "menarik tali", tetapi mengacu pada tarik tambang - permainan di mana dua tim menarik ujung tali yang berlawanan dan mencoba menyeret satu sama lain melintasi garis. Anda pasti sering melihat aktivitas ini di acara 運動会 (hari olahraga) di sekolah-sekolah Jepang.', 'Bacaannya berasal dari 綱 dan 引く, jadi jika Anda mengetahuinya, Anda akan baik-baik saja di sini.', 'Tarik tambang')
    RETURNING id INTO v_6632_tarik_tambang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '肝', 'hati', 42, 111, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna. Padahal, itu juga berarti <vocabulary>chutzpah</vocabulary> atau <vocabulary>keberanian</vocabulary> (selain hanya menjadi <vocabulary>liver</vocabulary>). Mungkin hatimu adalah tempat keberanianmu berada.', 'Karena kata ini terdiri dari satu kanji, kemungkinan besar menggunakan bacaan kun''yomi. Anda tidak mempelajari bacaan ini, jadi inilah mnemonik untuk membantu Anda mengingat: <vocabulary>liver</vocabulary> Anda tidak berfungsi dengan baik. Anda menderita kanker di hati Anda, jadi sekarang mereka memberi Anda <read>kemo</reading> (きも) untuk membantu menyingkirkan kanker itu.', 'Hati, Chutzpa, Keberanian')
    RETURNING id INTO v_6636_hati;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '肝炎', 'hepatitis', 42, 112, 'Jika Anda menderita <kanji>hati</kanji> <kanji>nyala</kanji> maka Anda mungkin menderita <vocabulary>hepatitis</vocabulary>. AH! HATI SAYA TERBAKAR.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Hepatitis')
    RETURNING id INTO v_6637_hepatitis;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '肝臓', 'hati', 42, 113, '<kanji>hati</kanji> <kanji>organ dalam</kanji> adalah <vocabulary>liver</vocabulary> Anda.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Hati')
    RETURNING id INTO v_6638_hati;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '芝', 'halaman-rumput', 42, 114, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji.', 'Halaman rumput, Gambut')
    RETURNING id INTO v_6639_halaman_rumput;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '芝生', 'halaman-rumput', 42, 115, '<kanji>halaman</kanji> <kanji>kehidupan</kanji> Anda hanyalah <vocabulary>halaman</vocabulary> Anda. Tentu saja ia hidup, jika tidak maka halaman rumputnya tidak akan bagus.', 'Pembacaan 芝 adalah yang Anda pelajari dengan kanji. Pembacaan 生 adalah bacaan yang belum pernah Anda lihat sebelumnya (pengecualian). Itu adalah ふ, dan kamu dapat mengingatnya dengan berpikir betapa kamu adalah seorang <reading>foo</reading>l (ふ) yang menaruh semua racun itu ke dalamnya. Sekarang sudah sekarat, dan kini sudah tidak lagi menjadi halaman rumput.', 'Halaman rumput')
    RETURNING id INTO v_6640_halaman_rumput;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '東芝', 'toshiba', 42, 116, '<kanji>timur</kanji> <kanji>halaman</kanji> bukanlah halaman rumput timur, ini mengacu pada <vocabulary>Toshiba</vocabulary> perusahaan. Mungkin lebih baik melihat bacaannya terlebih dahulu untuk yang satu ini.', 'Kata ini menggabungkan on''yomi untuk 東 dan kun''yomi yang Anda pelajari dengan 芝. Anda tinggal memikirkan artinya (Toshiba) untuk mengingat bacaan di sini, jadi sebaiknya Anda melanjutkan.', 'Toshiba')
    RETURNING id INTO v_6641_toshiba;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '芝草', 'halaman-rumput', 42, 117, '<kanji>halaman</kanji> <kanji>rumput</kanji> adalah <vocabulary>halaman</vocabulary> atau <vocabulary>rumput</vocabulary>.', 'Kata ini menggunakan bacaan kun''yomi yang sudah kamu pelajari!', 'Halaman rumput, Gambut')
    RETURNING id INTO v_6642_halaman_rumput;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '荒い', 'liar', 42, 118, 'Ini adalah kanji tunggal dengan い di akhir, artinya Anda tahu itu mungkin kata sifat. Apa bentuk kata sifat dari <kanji>liar</kanji>? Itu <vocabulary>liar</vocabulary> atau <vocabulary>kasar</vocabulary>.', 'Bacaan tersebut merupakan salah satu bacaan yang telah dipelajari dari kanji. Yang あら.', 'Liar, Kasar')
    RETURNING id INTO v_6643_liar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '荒れる', 'menjadi-badai', 42, 119, 'Kanjinya adalah <kanji>liar</kanji> dan kata kerjanya adalah <vocabulary>menjadi badai</vocabulary> atau <vocabulary>menjadi kasar</vocabulary>. Jika ada sesuatu yang liar, seperti badai atau semacamnya, maka itu akan menjadi badai dan kasar.', 'Bacaannya berasal dari bacaan yang Anda pelajari dengan kanji.', 'Menjadi Badai, Menjadi Kasar')
    RETURNING id INTO v_6644_menjadi_badai;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '袋', 'memecat', 42, 120, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan yang Anda pelajari dengan kanji. Jadi, masukkan pengetahuan itu ke dalam <vocabulary>sack</vocabulary> dan lanjutkan ke item berikutnya.', 'Memecat, Tas')
    RETURNING id INTO v_6645_memecat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', 'ゴミ袋', 'kantong-sampah', 42, 121, '<kanji>karung</kanji> (ゴミ) <kanji>karung</kanji> adalah <vocabulary>karung sampah</vocabulary> atau <vocabulary>kantong sampah</vocabulary>.', 'Kata untuk karung (ふくろ) adalah rendaku, jadi berhati-hatilah.', 'Kantong Sampah, Karung Sampah, Kantong Sampah, Kantong Sampah')
    RETURNING id INTO v_6646_kantong_sampah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '福袋', 'tas-misteri', 42, 122, '<kanji>keberuntungan</kanji> <kanji>karung</kanji> adalah <vocabulary>tas misteri</vocabulary>. Ini adalah tas yang dijual saat libur tahun baru. Di dalamnya terdapat berbagai barang yang dijual dengan harga tertentu. Anda tidak tahu apa isinya, tapi setidaknya Anda tahu nilai minimumnya. Ini juga dikenal sebagai <vocabulary>misteri karung</vocabulary>.', 'Bacaannya adalah 福 dan 袋, disatukan. Juga, hati-hati dengan rendaku.', 'Tas Misteri, Karung Misteri, Lotere')
    RETURNING id INTO v_6647_tas_misteri;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '親孝行', 'kesalehan-anak', 42, 123, 'Anda mempunyai kanji untuk <kanji>orang tua</kanji> yang digabungkan dengan 孝行, yang Anda tahu berarti "berbakti kepada anak". Jika kamu menunjukkan rasa berbakti kepada orang tuamu… yah, itu tetaplah <vocabulary>kesalehan anak</vocabulary>. Sekarang semakin jelas kepada siapa Anda menunjukkan pengabdian berbakti itu! 

Meskipun mungkin terasa berlebihan, 親孝行 cenderung lebih umum daripada 孝行. Sangat menyenangkan untuk menambahkan "orang tua" untuk poin cinta tambahan, Anda tahu?', 'Bacaannya adalah 孝行 ditambah kun''yomi dari 親. Gabungkan semuanya dan Anda akan menjadi anak berbakti yang baik.', 'Kesalehan Anak, Menunjukkan Bakti Kepada Orang Tua')
    RETURNING id INTO v_6934_kesalehan_anak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '吹き出す', 'untuk-mulai-meniup', 42, 124, 'Anda tahu 吹く berarti "meniup" dan 出す berarti "membiarkan". Jadi apa maksudnya mengeluarkan pukulan? Artinya <vocabulary>mulai meledak</vocabulary>! Agar sesuatu mulai bertiup - angin, misalnya - pertama-tama ia harus mengeluarkan hembusan awal, bukan?

Kata ini juga berarti <vocabulary>menyemburkan</vocabulary> — baik itu air yang keluar dari pipa yang rusak atau seseorang yang tiba-tiba angkat bicara — dan bahkan bisa berarti <vocabulary>tertawa terbahak-bahak</vocabulary>.', 'Bacaannya berasal dari 吹く dan 出す.', 'Untuk Mulai Meniup, Untuk Menyemburkan, Untuk Tertawa')
    RETURNING id INTO v_6936_untuk_mulai_meniup;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '吹き込む', 'untuk-meniup', 42, 125, 'Anda tahu bahwa 吹く adalah "meniup" dan kanji 込 berarti <kanji>ke</kanji>. Jadi kata ini berarti <vocabulary>meniup</vocabulary> atau <vocabulary>menghirup ke dalam</vocabulary>, dan dapat digunakan baik secara transitif maupun intransitif.

Kata ini juga dapat digunakan secara kiasan dengan arti menghembuskan napas ke dalam atau<vocabulary>mengilhami</vocabulary>, seperti memberikan kehidupan baru pada sesuatu, atau menanamkan kebencian pada pikiran seseorang.', 'Bacaannya berasal dari kata 吹く dan kanji 込む.', 'Untuk Meniup, Untuk Bernafas, Untuk Mengilhami')
    RETURNING id INTO v_6937_untuk_meniup;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '口笛を吹く', 'untuk-bersiul', 42, 126, 'Anda tahu bahwa 口笛 berarti "bersiul". Jadi, jika Anda <kanji>meniup</kanji>peluit, Anda akan <vocabulary>bersiul</vocabulary>.', 'Bacaannya adalah 口笛 dan bacaan yang Anda pelajari dari 吹.', 'Untuk bersiul')
    RETURNING id INTO v_6938_untuk_bersiul;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '薄める', 'untuk-mencairkan', 42, 127, 'Anda telah mempelajari satu kata kerja untuk kanji ini: 薄まる (diencerkan). Nah, ini saudaranya yang transitif, jadi artinya <vocabulary>mengencerkan</vocabulary> atau <vocabulary>mengencerkan</vocabulary> sesuatu. Di sini, Andalah yang secara aktif mengurangi sesuatu.', 'Bacaannya berasal dari 薄い, jadi jika Anda mengetahuinya, Anda pasti bisa membaca ini juga.', 'Untuk Mencairkan, Untuk Mempermudah, Untuk Mengencerkan Sesuatu')
    RETURNING id INTO v_6939_untuk_mencairkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '逃れる', 'untuk-melarikan-diri', 42, 128, 'Anda pernah melihat 逃げる dan 逃す. Yang ini adalah 逃れる. Yang ini berarti <vocabulary>melarikan diri</vocabulary>. Jadi itu tidak terlalu buruk. Bedanya escape yang satu ini dengan escape lainnya adalah lebih berkaitan dengan keberuntungan.', 'Ini adalah bacaan yang sama yang kamu pelajari untuk 逃す, jadi kamu seharusnya bisa membaca kata ini juga.', 'Untuk Melarikan Diri')
    RETURNING id INTO v_6940_untuk_melarikan_diri;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '吹き飛ばす', 'untuk-menerbangkan', 42, 129, 'Anda tahu bahwa 吹く berarti "meniup" dan 飛ばす berarti "Melepaskan". Jadi, jika Anda menggunakan tiupan Anda untuk membiarkan sesuatu terbang, Anda akan <vocabulary>menerbangkan</vocabulary> itu.', 'Bacaannya berasal dari 吹く dan 飛ばす, disatukan.', 'Untuk Menerbangkan')
    RETURNING id INTO v_6942_untuk_menerbangkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '万人', 'semua-orang', 42, 130, 'Jika kita berbicara tentang <kanji>sepuluh ribu</kanji> <kanji>orang</kanji>, maka kita mungkin juga berbicara tentang <vocabulary>semua orang</vocabulary> dan <vocabulary>semua orang</vocabulary>, karena jumlah orangnya banyak, Anda tahu?', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Karena 万 dan 人 keduanya memiliki dua bacaan on''yomi, berikut adalah mnemonik untuk membantu Anda mengingat mana yang harus digunakan:

<vocabulary>Semua orang</vocabulary> telah <read>ban</reading>dari <reading>Nin</reading>tendo (ばんにん). Rupanya mereka sedang mengerjakan sesuatu yang super rahasia, jadi sekarang <vocabulary>semua orang</vocabulary> dilarang. Apa itu?!', 'Semua Orang, Semua orang')
    RETURNING id INTO v_7462_semua_orang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '逃がす', 'untuk-membiarkan-seseorang-melarikan-diri', 42, 131, 'Tahukah Anda arti 逃げる "melarikan diri"? Ini adalah versi transitif, jadi artinya <vocabulary>membiarkan seseorang melarikan diri</vocabulary>, <vocabulary>membiarkan seseorang pergi</vocabulary>, atau <vocabulary>membebaskan seseorang</vocabulary>. Kamu mengetahui hal ini karena kamu ingin membiarkan semua orang melarikan diri ketika tempat itu penuh dengan gas (がす).

逃がす sering kali berarti melepaskan seseorang atau sesuatu dengan sengaja — seperti membebaskan burung atau membiarkan tawanan melarikan diri secara diam-diam. Namun cara ini juga dapat digunakan dalam situasi yang tidak disengaja dan penuh penyesalan, seperti gagal menangkap penjahat atau kehilangan peluang besar.', 'Anda mempelajari に pembacaan kanji ini ketika Anda mempelajari 逃げる namun berikut ada mnemonik lain untuk membantu Anda mengingat:

Anda memutuskan <vocabulary>untuk membiarkan seseorang melarikan diri</vocabulary> karena mereka <reading>berlutut</reading> (に) meminta Anda untuk membebaskan mereka.', 'Untuk Membiarkan Seseorang Melarikan Diri, Untuk Membiarkan Seseorang Pergi, Untuk Membebaskan Seseorang')
    RETURNING id INTO v_7558_untuk_membiarkan_seseorang_melarikan_diri;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '小柄', 'bangunan-kecil', 42, 132, 'Seseorang yang dibangun dari <kanji>pola</kanji> kecil</kanji> memiliki <vocabulary>bentuk kecil</vocabulary>. Saya kenal banyak wanita tua kecil yang dibangun dari pola-pola kecil ini.', 'Bacaan kata ini sama-sama bacaan kun''yomi. Anda telah mempelajari kedua bacaan ini sekarang jadi Anda seharusnya bisa membacanya sendiri.', 'Bangunan Kecil, Perawakan Kecil, Kecil mungil')
    RETURNING id INTO v_7665_bangunan_kecil;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '透き通る', 'menjadi-transparan', 42, 133, 'Sesuatu yang <kanji>transparan</kanji> cukup untuk <kanji>melewati</kanji> sesuatu (seperti cahaya) akan <vocabulary>menjadi transparan</vocabulary>. Dengan kata lain, <kosa kata>akan menjadi jelas</vocabulary>.

Berbeda dengan 透ける, yang lebih mengacu pada benda-benda yang sebagian transparan karena tipis atau tipis, 透き通る menggambarkan benda-benda yang benar-benar transparan, jernih, atau murni — seperti kaca, air, langit tak berawan, atau bahkan suara jernih dan murni.', 'Bacaan kata ini sama-sama bacaan kun''yomi. Anda telah mempelajari kedua bacaan ini sekarang jadi Anda seharusnya bisa membacanya sendiri.', 'Menjadi Transparan, Agar Jelas')
    RETURNING id INTO v_7725_menjadi_transparan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '漬かる', 'agar-diasinkan-dengan-baik', 42, 134, 'Anda sudah mengetahui bahwa 漬ける berarti "mengawetkan sesuatu". Jika sudah menjadi 漬かる, berarti makanan sudah sampai pada tahap proses pengawetan atau marinasi selesai, dan siap disantap. Jadi kata ini berarti <vocabulary>diasinkan dengan baik</vocabulary> atau <vocabulary>diasinkan dengan baik</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda sudah mempelajari bacaan ini ketika mempelajari 漬ける, jadi Anda seharusnya bisa membaca yang ini juga.', 'Agar Diasinkan dengan Baik, Agar Diasinkan dengan Baik')
    RETURNING id INTO v_8558_agar_diasinkan_dengan_baik;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '拉麺', 'ramen', 42, 135, 'Jika Anda akan <kanji>menculik</kanji> beberapa <kanji>mie</kanji>, pastikan itu adalah mie favorit semua orang, <vocabulary>ramen</vocabulary>! Arti lain dari kanji pertama sebenarnya lebih masuk akal di sini, karena Anda <kanji>menarik</kanji> adonan untuk meregangkannya saat Anda membuat <vocabulary>mie ramen</vocabulary>. Pilih makna mana yang paling membantu Anda mengingatnya!

Kata ini sebagian besar ditulis dalam huruf kana, biasanya sebagai ラーメン, namun terkadang らーめん. Anda akan sering melihat versi kanji pada kemasan dan menu, jadi perlu diketahui! Kata ini juga kadang-kadang ditulis sebagai らー麺 atau ラー麺.', 'Kedua kanji ini menggunakan on''yomi, namun kanji pertama memiliki bacaan yang agak tidak teratur, karena didasarkan pada bacaan Tiongkok modern. Ingatlah bahwa ini panjang らー, bayangkan betapa senangnya Anda dengan ramen ini! <read>Raaaaa</read>! Raaaaamen! Sangat menarik!', 'Ramen, Mie Ramen')
    RETURNING id INTO v_8972_ramen;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '素麺', 'beberapa', 42, 136, 'Jika Anda bisa membaca kata ini, Anda mungkin tahu apa artinya. Ini adalah hidangan mie favorit kedua semua orang, <vocabulary>somen</vocabulary>, atau <vocabulary>somen mie</vocabulary>, yaitu <vocabulary>mie putih yang enak</vocabulary>.', 'Kanji pertama memiliki pembacaan yang agak tidak teratur karena memanjang. Itu karena <vocabulary>somen</vocabulary> adalah makanan <reading>sou</reading>l (そう) Anda.', 'Beberapa, Mie Somen, Mie Putih Halus')
    RETURNING id INTO v_8973_beberapa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '餅', 'mochi', 42, 137, 'Kanji dan kata-katanya sama persis. <kanji>Mochi</kanji> adalah <vocabulary>mochi</vocabulary>.', 'Jika Anda tahu artinya, Anda harus bisa membacanya juga. Lagipula, <vocabulary>mochi</vocabulary> adalah <reading>mochi</reading> (もち)!', 'Mochi, Kue Ketan')
    RETURNING id INTO v_9003_mochi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '殺虫剤', 'insektisida', 42, 138, '<kanji>membunuh</kanji>serangga</kanji> apa dengan satu <kanji>dosis</kanji>? Itu adalah <vocabulary>insektisida</vocabulary> atau <vocabulary>pestisida</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.', 'Insektisida, Pestisida')
    RETURNING id INTO v_9040_insektisida;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '双方', 'kedua-pihak', 42, 139, 'Anda mempunyai <kanji>sepasang</kanji> <kanji>arah</kanji>, jadi ini adalah sesuatu yang menyangkut <vocabulary>kedua belah pihak</vocabulary> atau <vocabulary>kedua belah pihak</vocabulary>. Segalanya terjadi dalam dua arah, bukan hanya satu! 

双方 adalah istilah yang relatif formal yang sering digunakan dalam konteks seperti perjanjian <vocabulary>saling</vocabulary>, negosiasi, atau diskusi di mana kedua belah pihak terlibat secara aktif.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.', 'Kedua Pihak, Kedua Sisi, Saling')
    RETURNING id INTO v_9077_kedua_pihak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '炒飯', 'nasi-goreng', 42, 140, 'Apa <kanji>gorengan</kanji> <kanji>makanan</kanji> favoritmu? Pastinya itu <vocabulary>nasi goreng</vocabulary> alias <vocabulary>chahan</vocabulary>! Siapa yang tidak suka nasi goreng?

Perhatikan bahwa kata ini biasanya ditulis dalam katakana sebagai チャーハン, jadi Anda mungkin juga melihatnya tertulis seperti itu di menu atau label produk!', 'Anda tahu bacaan untuk 飯, tapi 炒 menggunakan bacaan luar biasa yang tidak Anda pelajari. Berikut ini mnemonik untuk membantu Anda:

Tahukah Anda apa yang akan membawa <vocabulary>nasi goreng</vocabulary> Anda ke level berikutnya? Beberapa <read>arang</reading>batubara (ちゃー)! Lain kali, tambahkan saja sedikit arang pada nasi goreng Anda, dan rasanya akan jauh lebih enak. Percayalah padaku yang satu ini.', 'Nasi Goreng, Chahan')
    RETURNING id INTO v_9275_nasi_goreng;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '衣装', 'pakaian', 42, 141, '<kanji>Pakaian</kanji> dan <kanji>pakaian</kanji> menjadikan <vocabulary>pakaian</vocabulary> ini sebagai intinya, namun saat ini, biasanya mengacu pada <vocabulary>pakaian panggung</vocabulary> atau <vocabulary>kostum</vocabulary> untuk pertunjukan dan acara publik.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Meskipun Anda telah mempelajari kedua kanji ini, 装 sebenarnya menggunakan kanji yang belum Anda pelajari, jadi inilah mnemonik untuk membantu Anda:

Tahukah Anda lemari pakaian siapa yang pasti penuh dengan <vocabulary>pakaian</vocabulary>, <vocabulary>kostum</vocabulary> dan <vocabulary>outfit</vocabulary> khusus? Senjata <read>sho</reading>(しょう)! Tahu semua lukisan shogun kuno dengan pakaian agungnya? Bayangkan saja ketika Anda harus mengingat bacaan ini untuk 装!', 'Pakaian, Pakaian Panggung, Kostum')
    RETURNING id INTO v_9310_pakaian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '賑わう', 'menjadi-sibuk', 42, 142, 'Kanjinya sendiri berarti <kanji>ramai</kanji> atau <kanji>hidup</kanji>, jadi versi vocab verbanya berarti <vocabulary>menjadi ramai</vocabulary> atau <vocabulary>menjadi ramai</vocabulary>.

賑わう biasanya digunakan untuk menggambarkan tempat atau waktu yang ramai. Anda mungkin melihatnya dalam frasa seperti 若者で賑わう街 (jalanan yang ramai dengan anak muda) atau 夏に観光客で賑わう (yang ramai dikunjungi turis di musim panas). Karena tempat yang ramai cenderung berkembang secara ekonomi, maka hal ini juga dapat membawa nuansa kemakmuran dan <vocabulary>berkembang</vocabulary>.', 'Ini menggunakan bacaan yang Anda pelajari dengan 賑, jadi sebaiknya Anda pergi ke sini!', 'Menjadi sibuk, Menjadi Hidup, Untuk Berkembang')
    RETURNING id INTO v_9379_menjadi_sibuk;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '賑やか', 'ramai', 42, 143, 'Hal ini memiliki arti yang sama dengan kanji, menjadikannya <vocabulary>ramai</vocabulary> atau <vocabulary>hidup</vocabulary>.

Anda mungkin melihat 賑やか digunakan untuk menggambarkan jalanan kota yang ramai dan padat, perayaan yang meriah, suara tawa yang riuh, atau bahkan sekadar orang yang ceria dan bersemangat.', 'Ini menggunakan bacaan yang Anda pelajari dengan 賑, jadi sebaiknya Anda pergi ke sini!', 'Ramai, Hidup')
    RETURNING id INTO v_9380_ramai;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic, description)
    VALUES ('vocabulary', '繁盛', 'sejahtera', 42, 144, 'Anda belajar 盛 sebagai "tumpukan", tapi ingat bagaimana itu juga bisa berarti "makmur"? Nah, jika Anda <kanji>ditumbuhi</kanji> dengan sifat <kanji>makmur</kanji>, maka Anda pastilah <vocabulary>makmur</vocabulary>. Bisnis <vocabulary>berkembang</vocabulary> dan <vocabulary>berkembang</vocabulary>, dan uang pada dasarnya tumbuh di pohon untuk Anda.

Anda akan sering melihat 繁盛 dalam frasa seperti 繁盛している (melakukan bisnis yang baik), yang menggambarkan tempat sukses dengan banyak pelanggan dan aktivitas. Nuansanya hidup dan positif — tidak sekadar bertahan, namun aktif berbuat baik dan menarik perhatian banyak orang.', 'Ini adalah kata jukugo yang menggunakan pembacaan on''yomi dari kanji, namun 盛 akan menggunakan on''yomi yang berbeda dari yang Anda pelajari. Berikut ini mnemonik untuk membantu Anda mengingatnya:

Tahukah Anda bisnis siapa yang benar-benar <vocabulary>berkembang</vocabulary> akhir-akhir ini? <read>Joe</reading> (じょう), buruh tani setinggi 10 kaki. Joe menjalankan toko kelontong yang menjual semua produknya, dan tampaknya toko tersebut <vocabulary>berkembang</vocabulary> akhir-akhir ini. Tentu saja, separuh pelanggan hanya datang untuk melihat sekilas Joe — lagipula, tidak setiap hari Anda melihat pria setinggi 10 kaki — namun selama toko tersebut <vocabulary>berkembang</vocabulary>, siapa yang benar-benar peduli?', 'Sejahtera, Maju, Berkembang')
    RETURNING id INTO v_9505_sejahtera;

  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5287_tuntutan, 'Tuntutan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_5287_tuntutan, 'Meminta', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6325_kemajuan_pesat, 'Kemajuan Pesat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6325_kemajuan_pesat, 'Kemajuan Besar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6326_semangat, 'Semangat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6326_semangat, 'Gerakan Dinamis', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6326_semangat, 'Gerakan Hidup', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6501_dumping, 'Dumping', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6501_dumping, 'Membuang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6560_untuk_terburu_buru, 'Untuk Terburu-buru', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6561_untuk_mulai_berjalan, 'Untuk Mulai Berjalan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6561_untuk_mulai_berjalan, 'Untuk bergegas keluar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6561_untuk_mulai_berjalan, 'Kehabisan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6562_untuk_berlari, 'Untuk Berlari', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6563_anak_yang_tidak_taat, 'Anak yang Tidak Taat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6563_anak_yang_tidak_taat, 'Anak Tidak Berbakti', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6564_kurangnya_kesalehan_berbakti, 'Kurangnya Kesalehan Berbakti', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6564_kurangnya_kesalehan_berbakti, 'Ketidaktaatan Kepada Orang Tua', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6565_telepon_portabel, 'Telepon Portabel', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6565_telepon_portabel, 'Ponsel', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6565_telepon_portabel, 'Telepon genggam', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6566_canggih, 'Canggih', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6566_canggih, 'Terdepan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6567_pengorbanan_terbang, 'Pengorbanan Terbang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6568_kegelapan, 'Kegelapan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6568_kegelapan, 'Buram', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6569_penaklukan, 'Penaklukan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6570_terperinci, 'Terperinci', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6571_kedatangan, 'Kedatangan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6572_saudara_kembar, 'Saudara kembar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6573_pasangan, 'Pasangan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6574_teropong, 'Teropong', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6575_filsafat, 'Filsafat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6576_duka, 'Duka', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6577_kehilangan, 'Kehilangan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6577_kehilangan, 'Kehilangan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6578_padat, 'Padat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6578_padat, 'Serius', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6578_padat, 'Jujur', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6578_padat, 'Keras', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6583_untuk_mengikat, 'Untuk Mengikat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6583_untuk_mengikat, 'Untuk Mengencangkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6583_untuk_mengikat, 'Untuk Mengikat Bersama', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6583_untuk_mengikat, 'Untuk Mengikat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6584_bersama, 'Bersama', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6584_bersama, 'Kelompok', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6584_bersama, 'Satu Benjolan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6585_kesimpulannya, 'Kesimpulannya', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6585_kesimpulannya, 'Ringkasan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6586_penyatuan, 'Penyatuan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6586_penyatuan, 'Generalisasi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6586_penyatuan, 'Pengelolaan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6587_tanda_kurung, 'Tanda kurung', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6587_tanda_kurung, 'Kurung', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6588_busur, 'Busur', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6589_untuk_menantang_seseorang, 'Untuk Menantang Seseorang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6589_untuk_menantang_seseorang, 'Untuk Mengambil Sesuatu yang Sulit', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6589_untuk_menantang_seseorang, 'Untuk Berani Mencoba', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6590_sebuah_tantangan, 'Sebuah Tantangan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6590_sebuah_tantangan, 'Sebuah Percobaan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6590_sebuah_tantangan, 'Sebuah Upaya', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6591_provokasi, 'Provokasi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6592_untuk_menggali, 'Untuk Menggali', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6593_penggalian, 'Penggalian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6593_penggalian, 'Menggali', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6593_penggalian, 'Penemuan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6594_untuk_menggoreng, 'Untuk Menggoreng', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6594_untuk_menggoreng, 'Untuk Mengangkat', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6594_untuk_menggoreng, 'Untuk Meningkatkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6595_untuk_dipahami, 'Untuk dipahami', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6595_untuk_dipahami, 'Untuk Menggenggam', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6596_jabat_tangan, 'Jabat tangan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6596_jabat_tangan, 'Berjabat Tangan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6597_pegangan, 'Pegangan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6597_pegangan, 'Kekuatan Genggaman', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6597_pegangan, 'Pegangan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6598_untuk_mengguncang, 'Untuk Mengguncang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6598_untuk_mengguncang, 'Tersentak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6599_gejolak_emosional, 'Gejolak Emosional', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6599_gejolak_emosional, 'Kerusuhan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6599_gejolak_emosional, 'Terguncang Secara Emosional', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6600_belajar, 'Belajar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6600_belajar, 'Sarang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6600_belajar, 'Perpustakaan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6601_aula_pemakaman, 'Aula Pemakaman', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6602_sebentar, 'Sebentar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6602_sebentar, 'Untuk Beberapa Waktu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6603_bisa_berubah, 'Bisa berubah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6603_bisa_berubah, 'Sementara', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6604_analisa, 'Analisa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6605_analisa, 'Analisa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6605_analisa, 'Menganalisis', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6606_sumbu, 'Sumbu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6606_sumbu, 'Poros', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6606_sumbu, 'Bagian Tengah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6607_tengah, 'Tengah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6607_tengah, 'Tengah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6607_tengah, 'Poros', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6608_sumbu, 'Sumbu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6608_sumbu, 'Bagian Penting', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6609_gulir_gantung, 'Gulir Gantung', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6610_sumbu, 'Sumbu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6610_sumbu, 'Poros', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6611_pola, 'Pola', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6611_pola, 'Desain', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6612_karakter_bangsa, 'Karakter Bangsa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6613_karakter_pribadi, 'Karakter Pribadi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6613_karakter_pribadi, 'Kepribadian', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6613_karakter_pribadi, 'Karakter', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6614_menginap_satu_malam, 'Menginap Satu Malam', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6615_menginap_dua_malam, 'Menginap Dua Malam', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6615_menginap_dua_malam, 'Menginap Selama Dua Malam', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6616_penginapan, 'Penginapan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6616_penginapan, 'Menginaplah Malam Ini', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6617_untuk_menginap_malam_ini, 'Untuk Menginap Malam Ini', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6617_untuk_menginap_malam_ini, 'Untuk Menginap', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6617_untuk_menginap_malam_ini, 'Untuk Tidur', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6618_untuk_meluncur, 'Untuk Meluncur', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6618_untuk_meluncur, 'Tergelincir', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6618_untuk_meluncur, 'Untuk Meluncur', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6619_mudah, 'Mudah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6619_mudah, 'Mulus', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6620_laguna, 'Laguna', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6621_datar_pasang_surut, 'Datar Pasang Surut', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6621_datar_pasang_surut, 'negeri pasang surut', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6622_titik_fokus, 'Titik Fokus', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6622_titik_fokus, 'Fokus', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6623_untuk_terbakar, 'Untuk Terbakar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6623_untuk_terbakar, 'Menjadi Hangus', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6623_untuk_terbakar, 'Untuk Menjadi Hangus', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6624_cakupan, 'Cakupan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6624_cakupan, 'Cakupan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6625_contoh, 'Contoh', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6625_contoh, 'Model', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6625_contoh, 'Contoh', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6626_contoh, 'Contoh', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6626_contoh, 'Model', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6627_untuk_mengalihkan_perhatian, 'Untuk Mengalihkan perhatian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6627_untuk_mengalihkan_perhatian, 'Untuk Mengalihkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6627_untuk_mengalihkan_perhatian, 'Untuk Mengalihkan Pikiran Seseorang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6628_komplikasi, 'Komplikasi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6628_komplikasi, 'Kebingungan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6628_komplikasi, 'Kekacauan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6629_penghukuman, 'Penghukuman', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6629_penghukuman, 'Pengaduan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6629_penghukuman, 'Mengecam', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6630_tali, 'Tali', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6630_tali, 'Tali', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6632_tarik_tambang, 'Tarik tambang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6636_hati, 'Hati', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6636_hati, 'Chutzpa', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6636_hati, 'Keberanian', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6637_hepatitis, 'Hepatitis', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6638_hati, 'Hati', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6639_halaman_rumput, 'Halaman rumput', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6639_halaman_rumput, 'Gambut', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6640_halaman_rumput, 'Halaman rumput', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6641_toshiba, 'Toshiba', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6642_halaman_rumput, 'Halaman rumput', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6642_halaman_rumput, 'Gambut', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6643_liar, 'Liar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6643_liar, 'Kasar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6644_menjadi_badai, 'Menjadi Badai', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6644_menjadi_badai, 'Menjadi Kasar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6645_memecat, 'Memecat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6645_memecat, 'Tas', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6646_kantong_sampah, 'Kantong Sampah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6646_kantong_sampah, 'Karung Sampah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6646_kantong_sampah, 'Kantong Sampah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6646_kantong_sampah, 'Kantong Sampah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6647_tas_misteri, 'Tas Misteri', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6647_tas_misteri, 'Karung Misteri', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6647_tas_misteri, 'Lotere', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6934_kesalehan_anak, 'Kesalehan Anak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6934_kesalehan_anak, 'Menunjukkan Bakti Kepada Orang Tua', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6936_untuk_mulai_meniup, 'Untuk Mulai Meniup', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6936_untuk_mulai_meniup, 'Untuk Menyemburkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6936_untuk_mulai_meniup, 'Untuk Tertawa', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6937_untuk_meniup, 'Untuk Meniup', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6937_untuk_meniup, 'Untuk Bernafas', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6937_untuk_meniup, 'Untuk Mengilhami', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6938_untuk_bersiul, 'Untuk bersiul', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6939_untuk_mencairkan, 'Untuk Mencairkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6939_untuk_mencairkan, 'Untuk Mempermudah', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6939_untuk_mencairkan, 'Untuk Mengencerkan Sesuatu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6940_untuk_melarikan_diri, 'Untuk Melarikan Diri', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_6942_untuk_menerbangkan, 'Untuk Menerbangkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7462_semua_orang, 'Semua Orang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7462_semua_orang, 'Semua orang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7558_untuk_membiarkan_seseorang_melarikan_diri, 'Untuk Membiarkan Seseorang Melarikan Diri', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7558_untuk_membiarkan_seseorang_melarikan_diri, 'Untuk Membiarkan Seseorang Pergi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7558_untuk_membiarkan_seseorang_melarikan_diri, 'Untuk Membebaskan Seseorang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7665_bangunan_kecil, 'Bangunan Kecil', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7665_bangunan_kecil, 'Perawakan Kecil', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7665_bangunan_kecil, 'Kecil mungil', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7725_menjadi_transparan, 'Menjadi Transparan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_7725_menjadi_transparan, 'Agar Jelas', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8558_agar_diasinkan_dengan_baik, 'Agar Diasinkan dengan Baik', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8558_agar_diasinkan_dengan_baik, 'Agar Diasinkan dengan Baik', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8972_ramen, 'Ramen', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8972_ramen, 'Mie Ramen', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8973_beberapa, 'Beberapa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8973_beberapa, 'Mie Somen', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8973_beberapa, 'Mie Putih Halus', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9003_mochi, 'Mochi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9003_mochi, 'Kue Ketan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9040_insektisida, 'Insektisida', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9040_insektisida, 'Pestisida', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9077_kedua_pihak, 'Kedua Pihak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9077_kedua_pihak, 'Kedua Sisi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9077_kedua_pihak, 'Saling', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9275_nasi_goreng, 'Nasi Goreng', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9275_nasi_goreng, 'Chahan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9310_pakaian, 'Pakaian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9310_pakaian, 'Pakaian Panggung', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9310_pakaian, 'Kostum', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9379_menjadi_sibuk, 'Menjadi sibuk', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9379_menjadi_sibuk, 'Menjadi Hidup', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9379_menjadi_sibuk, 'Untuk Berkembang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9380_ramai, 'Ramai', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9380_ramai, 'Hidup', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9505_sejahtera, 'Sejahtera', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9505_sejahtera, 'Maju', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9505_sejahtera, 'Berkembang', false, true);

  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_5287_tuntutan, 'ようせい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6325_kemajuan_pesat, 'やくしん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6326_semangat, 'やくどう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6501_dumping, 'とうき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6560_untuk_terburu_buru, 'かけこむ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6561_untuk_mulai_berjalan, 'かけだす', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6562_untuk_berlari, 'かけまわる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6563_anak_yang_tidak_taat, 'ふこうもの', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6564_kurangnya_kesalehan_berbakti, 'おやふこう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6565_telepon_portabel, 'けいたいでんわ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6566_canggih, 'さいしんえい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6567_pengorbanan_terbang, 'ぎひ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6568_kegelapan, 'ふとうめい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6569_penaklukan, 'こくふく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6570_terperinci, 'こくめい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6571_kedatangan, 'とうちゃく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6572_saudara_kembar, 'ふたご', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6573_pasangan, 'そう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6574_teropong, 'そうがんきょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6575_filsafat, 'てつがく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6576_duka, 'も', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6577_kehilangan, 'そうしつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6578_padat, 'かたい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6583_untuk_mengikat, 'くくる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6584_bersama, 'いっかつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6585_kesimpulannya, 'そうかつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6586_penyatuan, 'とうかつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6587_tanda_kurung, 'かっこ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6588_busur, 'えんこ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6589_untuk_menantang_seseorang, 'いどむ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6590_sebuah_tantangan, 'ちょうせん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6591_provokasi, 'ちょうはつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6592_untuk_menggali, 'ほる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6593_penggalian, 'はっくつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6594_untuk_menggoreng, 'あげる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6595_untuk_dipahami, 'にぎる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6596_jabat_tangan, 'あくしゅ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6597_pegangan, 'あくりょく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6598_untuk_mengguncang, 'ゆる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6599_gejolak_emosional, 'どうよう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6600_belajar, 'しょさい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6601_aula_pemakaman, 'さいじょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6602_sebentar, 'しばらく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6603_bisa_berubah, 'ざんてい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6604_analisa, 'かいせき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6605_analisa, 'ぶんせき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6606_sumbu, 'すうじく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6607_tengah, 'ちゅうすう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6608_sumbu, 'じく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6609_gulir_gantung, 'かけじく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6610_sumbu, 'ちゅうじく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6611_pola, 'がら', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6612_karakter_bangsa, 'くにがら', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6613_karakter_pribadi, 'ひとがら', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6614_menginap_satu_malam, 'いっぱく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6615_menginap_dua_malam, 'にはく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6616_penginapan, 'しゅくはく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6617_untuk_menginap_malam_ini, 'とまる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6618_untuk_meluncur, 'すべる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6619_mudah, 'えんかつ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6620_laguna, 'かた', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6621_datar_pasang_surut, 'ひがた', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6622_titik_fokus, 'しょうてん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6623_untuk_terbakar, 'こげる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6624_cakupan, 'はんい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6625_contoh, 'もはん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6626_contoh, 'はん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6627_untuk_mengalihkan_perhatian, 'まぎらす', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6628_komplikasi, 'ふんきゅう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6629_penghukuman, 'きゅうだん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6630_tali, 'つな', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6632_tarik_tambang, 'つなひき', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6636_hati, 'きも', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6637_hepatitis, 'かんえん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6638_hati, 'かんぞう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6639_halaman_rumput, 'しば', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6640_halaman_rumput, 'しばふ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6641_toshiba, 'とうしば', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6642_halaman_rumput, 'しばくさ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6643_liar, 'あらい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6644_menjadi_badai, 'あれる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6645_memecat, 'ふくろ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6646_kantong_sampah, 'ごみぶくろ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6646_kantong_sampah, 'ゴミぶくろ', NULL, false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6647_tas_misteri, 'ふくぶくろ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6934_kesalehan_anak, 'おやこうこう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6936_untuk_mulai_meniup, 'ふきだす', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6937_untuk_meniup, 'ふきこむ', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6938_untuk_bersiul, 'くちぶえをふく', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6939_untuk_mencairkan, 'うすめる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6940_untuk_melarikan_diri, 'のがれる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_6942_untuk_menerbangkan, 'ふきとばす', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7462_semua_orang, 'ばんにん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7558_untuk_membiarkan_seseorang_melarikan_diri, 'にがす', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7665_bangunan_kecil, 'こがら', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_7725_menjadi_transparan, 'すきとおる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8558_agar_diasinkan_dengan_baik, 'つかる', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8972_ramen, 'らーめん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8972_ramen, 'ラーメン', NULL, false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_8973_beberapa, 'そうめん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9003_mochi, 'もち', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9040_insektisida, 'さっちゅうざい', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9077_kedua_pihak, 'そうほう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9275_nasi_goreng, 'ちゃーはん', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9275_nasi_goreng, 'チャーハン', NULL, false, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9310_pakaian, 'いしょう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9379_menjadi_sibuk, 'にぎわう', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9380_ramai, 'にぎやか', NULL, true, true);
  INSERT INTO item_readings (item_id, reading, reading_type, primary_reading, accepted_answer) VALUES (v_9505_sejahtera, 'はんじょう', NULL, true, true);

  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5287_tuntutan, 'プロジェクトの人手が足りないので応援を要請しました。', 'Karena kami kekurangan tenaga dalam proyek kami, kami meminta bantuan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5287_tuntutan, '残念ながら、田村マネージャーの追加人員要請は受理されなかったようです。', 'Sayangnya, permintaan penambahan pekerja dari Manajer Tamura sepertinya tidak diterima.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_5287_tuntutan, '労働組合は賃上げを要請した。', 'Serikat buruh menuntut kenaikan upah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6325_kemajuan_pesat, 'トーフグが今年、大躍進を遂げたのは何故だと思いますか。', 'Menurut Anda apa yang membuat Tofugu melakukan lompatan besar tahun ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6326_semangat, 'アヤの最新のトーフグキャラのイラストは、とても躍動感に溢れています。', 'Ilustrasi terbaru Aya tentang karakter Tofugu sangat hidup dan hidup.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6501_dumping, 'それが不法投棄になるとは知らなかったんです。', 'Saya tidak tahu bahwa itu merupakan pembuangan yang melanggar hukum.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6560_untuk_terburu_buru, '終電に駆け込み乗車をしようとしましたが、目の前でドアが閉まりました。', 'Saya bergegas ke kereta terakhir, tetapi pintunya tertutup di depan mata saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6561_untuk_mulai_berjalan, '彼に質問を尋ねた時、駆け出しただけだ。 ', 'Ketika saya mengajukan pertanyaan kepadanya, dia lari begitu saja.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6562_untuk_berlari, 'レシピにサフランがいるって書いてあったから、あちこち駆け回って探したんだけど見つからなくて、結局今回はサフランは使わなかったの。', 'Resepnya bilang mau masukkan saffron, jadi saya berkeliling mencarinya kemana-mana, tapi tidak ketemu, jadi kali ini saya tidak menambahkan saffron.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6563_anak_yang_tidak_taat, '母に「不孝者」と呼ばれた。 ', 'Ibu saya menyebut saya “anak yang tidak taat”.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6564_kurangnya_kesalehan_berbakti, 'もう手遅れですが、私は本当に親不孝な息子でしたよ。', 'Ini sudah terlambat, tapi aku adalah anak yang sangat tidak patuh.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6565_telepon_portabel, '「あなたの携帯電話をお借りしてもいいですか？」「ええ、どうぞ。」', '"Bolehkah aku menggunakan ponselmu?" “Tentu, silakan.”');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6566_canggih, 'かつて、少し前までは、3Dプリンタは最新鋭の機械でした。', 'Beberapa waktu yang lalu, printer 3D adalah mesin yang canggih.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6567_pengorbanan_terbang, '野球用語の犠飛と犠打の意味について教えてもらえませんか？', 'Bisakah Anda mengajari saya apa arti istilah bisbol SF dan SH?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6568_kegelapan, '不透明な窓がある女子の更衣室です。', 'Ini adalah ruang ganti perempuan, yang memiliki jendela buram.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6569_penaklukan, '徐々にホームシックを克服していってます。', 'Perlahan-lahan aku melupakan kerinduanku akan kampung halaman.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6570_terperinci, '十年前の旧正月のことは、克明に覚えていますよ。', 'Saya memiliki kenangan rinci tentang Tahun Baru Imlek sepuluh tahun lalu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6571_kedatangan, '日本に到着した時、私はちょっとテンションが高すぎましたよね。', 'Saya terlalu hiper ketika tiba di Jepang, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6571_kedatangan, '列車が駅に到着した。', 'Kereta tiba di stasiun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6572_saudara_kembar, '「男の子ですか？女の子ですか？」「実は双子の男の子なんです。」', '“Apakah itu laki-laki atau perempuan?” “Mereka sebenarnya adalah anak laki-laki kembar.”');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6573_pasangan, '妹と私は二卵性双生児ですが、外見がすごく似ています。', 'Aku dan adikku adalah saudara kembar, tapi kami terlihat sangat mirip.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6574_teropong, 'この双眼鏡の黒はありますか？', 'Apakah Anda memiliki teropong berwarna hitam ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6575_filsafat, '彼は哲学者だが、理路整然と考える人ではない。', 'Dia seorang filsuf, tapi dia bukan pemikir logis.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6576_duka, '大変申し訳ありませんが、喪に服しているため年賀状が送れないのです。', 'Saya sangat menyesal tetapi saya khawatir saya tidak dapat mengirimkan kartu Tahun Baru karena saya sedang berduka.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6577_kehilangan, '介護施設に、どうやら記憶喪失らしいお婆さんがいるんだけど、その人がすっごく面白いのよ。', 'Di panti jompo ada seorang wanita tua yang sepertinya kehilangan ingatannya, tapi dia lucu sekali.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6578_padat, 'この予想は、かなり堅いと思うよ。', 'Menurut saya prediksi ini cukup solid.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6578_padat, 'やっぱり堅い職業の人は、書く文章も堅いね。', 'Sudah kuduga, orang yang memiliki pekerjaan serius menulis dengan serius.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6578_padat, 'レシピには、美味しくてしっとりしたクッキーって書いてあったのに、出来上がったクッキーはすっごく堅かったんだよね。', 'Resepnya menyebut kue ini enak dan lembab, tapi ternyata sangat keras.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6583_untuk_mengikat, 'どうしてこの文章を括弧で括ったんですか？', 'Mengapa Anda mengapit kalimat ini dalam tanda kurung?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6584_bersama, '日本では焼き菓子作りとか料理の計量方法が違うんだよね。いっそ世界中の計量方法が一括で同じだったらいいのにね。', 'Di Jepang mereka menggunakan metode pengukuran yang berbeda untuk memanggang manisan dan memasak. Saya pikir akan lebih baik jika ada satu cara pengukuran di seluruh dunia.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6585_kesimpulannya, '物事を総括的にとらえる力がある人材がほしいんですよね。', 'Kami menginginkan orang-orang yang memiliki kemampuan untuk melihat berbagai hal secara komprehensif.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6585_kesimpulannya, 'まずは本年度の活動の総括から始めさせていただきます。', 'Sebagai permulaan, saya akan memulai dengan ringkasan kegiatan tahun ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6585_kesimpulannya, '最後にプロジェクトを総括し、今後の課題について述べたいと思います。', 'Terakhir, saya ingin merangkum proyek ini dan mendiskusikan tantangan ke depan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6585_kesimpulannya, '私は情報を総括し、上司の注意を促すために報告しましたが、彼は聞く耳を持ちませんでした。', 'Saya menyimpulkan informasinya dan melaporkannya untuk mengingatkan atasan saya, namun dia tidak mau mendengarkan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6586_penyatuan, '父は会社では100人の部下を統括する責任者です。', 'Ayah saya bertanggung jawab menyatukan 100 bawahan di perusahaannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6586_penyatuan, '新しく入った統括マネージャーってあいつのこと？', 'Apakah orang itu manajer umum yang baru?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6586_penyatuan, '俺たちはいつもリスク統括部の奴らとは意見が合わないんだよ。', 'Kami selalu tidak setuju dengan orang-orang di Manajemen Risiko.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6587_tanda_kurung, '左の括弧を読む時は単に「括弧」と言いますが、右の括弧を読む時は「括弧閉じる」と言います。', 'Saat orang membaca tanda kurung kiri, mereka hanya mengucapkan "kakko", tetapi saat membaca tanda kurung kanan, mereka mengucapkan "kakko-tojiru", yang berarti "tanda kurung tutup".');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6588_busur, '父親は息子に円弧を描くように命令しました。', 'Sang ayah memerintahkan putranya untuk melukis sebuah busur.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6589_untuk_menantang_seseorang, '彼は王に戦いを挑んだ。', 'Dia menantang raja untuk berperang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6589_untuk_menantang_seseorang, '来年は、JLPTのN1に挑むつもりだ。', 'Tahun depan, saya berencana untuk mengambil JLPT N1.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6589_untuk_menantang_seseorang, '知ってるだろ？アイツは、誰かのためなら、勝てない相手にでも挑むヤツだぜ。', 'Kamu tahu seperti apa dia, kan? Jika demi orang lain, dia akan melawan siapa pun — bahkan jika dia tidak punya peluang untuk menang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6589_untuk_menantang_seseorang, '私はこの日曜日、有名なベーコン鑑定家に挑みます。', 'Saya akan menantang ahli bacon terkenal hari Minggu ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6590_sebuah_tantangan, '新しい仕事に挑戦してみたいんです。', 'Saya ingin mencoba mengambil pekerjaan baru.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6590_sebuah_tantangan, 'うちの母は今、料理コンテストに挑戦中です。', 'Ibu kami sedang berkompetisi dalam kontes memasak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6590_sebuah_tantangan, 'ハッ、俺に挑戦する気か？命知らずだな。', 'Hah, kamu berani menantangku? Anda punya keinginan mati.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6590_sebuah_tantangan, 'ありえねえ！お前ってほんと、超天然キャラだよな。なんで蝉の鳴き真似に挑戦なんてしてるんだよ？', 'Mustahil! Kamu benar-benar orang bebal. Mengapa Anda mencoba meniru lengkingan jangkrik?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6591_provokasi, '抗議者の一人が、警察を挑発するために火炎瓶を投げつけました。', 'Seorang pengunjuk rasa melemparkan bom molotov ke arah polisi saat terjadi kerusuhan untuk memprovokasi mereka.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6592_untuk_menggali, 'クママンは中年の男やもめで、家業で金を掘っています。', 'Kumaman adalah seorang duda paruh baya yang hidup dan menggali emas seperti ayahnya sebelumnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6593_penggalian, '化石発掘のバイトをしてみませんか。楽しいですよ！', 'Apakah Anda ingin melakukan pekerjaan paruh waktu dalam penggalian fosil? Ini akan menyenangkan!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6593_penggalian, 'この鉱山では三十年ほど前まで鉄鉱石が発掘できました。', 'Hingga sekitar 30 tahun yang lalu, bijih besi dapat ditemukan di tambang ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6593_penggalian, 'そのタレントはスター発掘オーディションで発掘されました。', 'Bakatnya ditemukan melalui audisi pencarian bintang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6593_penggalian, 'ある日、金を求めて穴を掘っていると、大量の古代ギリシャのお宝を発掘しました。', 'Suatu hari, dia menggali sejumlah besar harta karun Yunani kuno sambil menggali emas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6594_untuk_menggoreng, 'ちょうど今からトンカツを揚げるところです。', 'Saya baru saja akan menggoreng irisan daging babi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6594_untuk_menggoreng, '最近は祝日に日本の国旗を揚げる家をあまり見ませんね。', 'Saat ini, kita jarang melihat banyak rumah yang mengibarkan bendera Jepang pada hari libur.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6594_untuk_menggoreng, 'ヨットのセイルを揚げるのって結構大変なんだよね。', 'Sebenarnya, mengangkat layar di kapal pesiar membutuhkan banyak usaha.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6595_untuk_dipahami, 'おにぎりは、ご飯を握って作るので「お握り」と呼ばれています。', 'Karena Anda membuat bola-bola nasi dengan memeras nasi, maka disebut "onigiri".');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6596_jabat_tangan, 'CDを買うと、オマケで握手券が二枚ついてきた。', 'Saya membeli CD yang dilengkapi dengan dua tiket jabat tangan sebagai bonus. (Tiket jabat tangan mirip dengan tiket temu sapa.)');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6597_pegangan, '自分の父親なんだから、善意に解釈してあげるべきよ。例えば、年を取って握力が弱っているせいで、あなたのビンテージのバカラのグラスを割っちゃったんだ、っていう風に。', 'Dia adalah ayahmu jadi kamu harus memberinya manfaat dari keraguan itu. Cengkeramannya semakin memburuk seiring bertambahnya usia dan itulah sebabnya dia menjatuhkan gelas kristal Baccarat antik Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6598_untuk_mengguncang, 'カヌーを揺らないで！', 'Jangan mengayun kano!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6599_gejolak_emosional, '彼女の自然な美しさと魅力的な笑顔に息も出来なくなり、会議中ずっと動揺していました。', 'Kecantikan alaminya dan senyuman menawannya membuat saya takjub, dan saya merasa bingung sepanjang pertemuan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6600_belajar, '今日は一日中書斎で重要書類を探していたんですが、まだ見つからないんですよ。', 'Aku sedang mencari dokumen penting di ruang kerjaku sepanjang hari ini, tapi belum menemukannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6601_aula_pemakaman, 'ちょうど斎場に到着するところです。', 'Kami akan tiba di aula pemakaman.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6602_sebentar, '暫くお待ち下さい。', 'Mohon tunggu sebentar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6602_sebentar, '暫くの間、旅に出ます。', 'Saya akan bepergian sebentar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6602_sebentar, '暫く会ってないし、今度お茶でもしない？', 'Sudah lama sejak terakhir kali kita bertemu. Bagaimana kalau minum teh kapan-kapan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6602_sebentar, '悪阻がひどくて、暫く全然家事ができてないんですよね。', 'Saya sudah lama tidak melakukan pekerjaan rumah karena saya mengalami mual di pagi hari yang parah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6603_bisa_berubah, 'こちらの料金設定は暫定的ですのでご留意下さいませ。', 'Harap diingat bahwa harga ini bersifat sementara.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6604_analisa, '私は踊りながらそれを解析してみました。', 'Saya menganalisisnya sambil menari.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6605_analisa, 'それは先生の息の質の分析結果です。', 'Demikian hasil analisis kualitas nafas guru.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6606_sumbu, '枢軸国は第二次世界大戦中、連合国と戦いました。', 'Kekuatan Poros berperang melawan Sekutu selama Perang Dunia II.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6606_sumbu, 'あの国は悪の枢軸と見なされているが、果たしてそれは本当に正しいのだろうか。', 'Negara itu dianggap sebagai poros kejahatan, tapi benarkah?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6606_sumbu, '日本の政治経済の枢軸をなす都市はもちろん東京だ。', 'Kota yang menjadi poros kegiatan politik dan ekonomi Jepang tentu saja adalah Tokyo.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6606_sumbu, '先日参加したパーティーで、経財界の枢軸に位置する要人と名刺交換をしました。', 'Di sebuah pesta yang saya hadiri beberapa hari yang lalu, saya bertukar kartu nama dengan seorang tokoh penting di dunia bisnis dan keuangan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6607_tengah, 'どうしてそれが彼女の中枢神経系を刺激したの？', 'Bagaimana hal itu bisa merangsang sistem saraf pusatnya?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6608_sumbu, '地軸の延長が北方で天球と交わる点で会いましょう。', 'Mari kita bertemu di persimpangan poros bumi dan bola langit di Arktik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6609_gulir_gantung, 'アヤに、掛軸のための絵を描いてもらいたいんです。', 'Saya ingin Aya melukis gambar untuk gulungan gantung itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6610_sumbu, 'なんか車の調子が悪いと思ったら、車輪の中軸部分に不具合が見つかったんだよね。', 'Saya pikir ada yang tidak beres dengan mobilnya, dan benar saja, mereka menemukan masalah pada area poros tengah roda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6610_sumbu, '組織の中軸がしっかりしていれば、少々のことは問題になりません。', 'Jika inti suatu organisasi kokoh, beberapa persoalan kecil tidak akan menjadi masalah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6610_sumbu, '人生の中軸をどこに置くかで、生き方が変わる。', 'Cara Anda hidup berubah tergantung pada apa yang Anda pilih untuk memusatkan hidup Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6610_sumbu, 'うーん、この機械、ここの中軸が少しずれているのかもしれませんね。中軸がちょっとでもぶれると、全体のバランスがおかしくなってくるんですよ。', 'Hmm, di mesin ini, poros tengahnya mungkin sedikit melenceng.
Bahkan sedikit goyangan pada porosnya dapat mengganggu keseimbangan semuanya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6610_sumbu, '昨日、珊瑚虫の中軸骨格を夢に見た。', 'Tadi malam saya bermimpi tentang kerangka aksial polip karang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6611_pola, '彼女は私にヒョウ柄の名刺をくれました。', 'Dia memberi saya kartu nama bermotif macan tutulnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6612_karakter_bangsa, 'それぞれの国にはそれぞれのお国柄ってものがあって、私達はそれをお互いに尊重し合うべきだと思います。', 'Setiap negara memiliki karakter nasionalnya masing-masing dan menurut saya itu adalah sesuatu yang harus kita hormati.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6613_karakter_pribadi, '本の内容を表紙で判断するみたいに、人の人柄を見た目で決めつけないでよ。', 'Jangan menilai kepribadian seseorang dari penampilannya seperti Anda menilai buku dari sampulnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6614_menginap_satu_malam, 'ねぇ、そう堅いこと言わないでさ。うちに泊まってけばいいじゃん。たったの一泊だけだよ。', 'Ayo! Jangan terlalu kaku. Menginaplah di tempatku! Hanya untuk satu malam!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6615_menginap_dua_malam, '継母がうちに二泊泊めてくれって言ってるんだけど、どう思う？', 'Ibu tiriku bertanya apakah dia boleh menginap di tempat kami selama dua malam, bagaimana menurutmu?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6616_penginapan, 'まだ今夜の宿泊先を探しているんです。', 'Saya masih mencari tempat penginapan untuk malam ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6617_untuk_menginap_malam_ini, '今までで一番面白い最高傑作のお笑いのDVDを買ったんだけど、今日うちに泊まって一緒に観ない？', 'Saya membeli DVD sandiwara komedi terlucu yang pernah ada, jadi mengapa Anda tidak menginap dan menontonnya bersama saya malam ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6618_untuk_meluncur, '雪解けは始まったけど、まだ滑りやすい場所もあるから気をつけてね。', 'Meski salju mulai mencair, namun masih ada beberapa tempat yang mudah tergelincir, jadi sebaiknya berhati-hati.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6619_mudah, '英語で円滑なコミュニケーションを取るために、最も重要なことは何だと思いますか？', 'Menurut Anda hal apa yang paling penting agar percakapan lancar dalam bahasa Inggris?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6620_laguna, '去年の夏、秋田県の八郎潟にバス釣りに行きました。', 'Musim panas lalu, saya pergi memancing ikan bass di Laguna Hachiro di prefektur Akita.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6621_datar_pasang_surut, '交際一ヶ月記念の日に、干潟に潮干狩りに行ってきたの。', 'Kami pergi ke flat pasang surut untuk merayakan satu bulan peringatan persahabatan kami.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6622_titik_fokus, '先生が顕微鏡の焦点の合わせ方について説明をしてくれていた時、私は上の空でした。', 'Ketika guru kami menjelaskan cara memfokuskan mikroskop, saya melamun.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6623_untuk_terbakar, '一定にかき混ぜることで、鍋の底が焦げることが防げるとお母さんが言っていたわ。', 'Kata ibuku, kamu bisa mencegah dasar wajan gosong dengan mengaduknya terus-menerus.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6624_cakupan, '彼は守備範囲の広いセンターで、大活躍すると踏んでいたんだが、とんだお門違いだったよ。', 'Saya pikir dia adalah pemain tengah dengan jangkauan luas dan akan bermain sangat baik, tapi saya salah total.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6625_contoh, '君を模範としよう。', 'Saya akan mengikuti teladan Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6626_contoh, 'もしその野菜が全部安全だというのなら、まず先に彼らがそれを食べて我々に範を垂れるべきだ。', 'Kalau mereka bilang sayuran itu aman semua, seharusnya mereka memberi contoh kepada kita dengan memakannya terlebih dahulu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6627_untuk_mengalihkan_perhatian, 'とりあえず動画見て気を紛らしてる。', 'Saya hanya menonton video untuk mengalihkan perhatian.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6627_untuk_mengalihkan_perhatian, '彼は酒でその不安を紛らそうとした。', 'Dia mencoba menenggelamkan kegelisahannya dengan alkohol.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6627_untuk_mengalihkan_perhatian, 'ご飯を買うお金がないので、ガムを噛んで空腹を紛らしていました。', 'Saya tidak punya uang untuk membeli makanan, jadi saya mengunyah permen karet untuk mengalihkan perhatian dari rasa lapar.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6628_komplikasi, 'この問題をこれ以上紛糾させたくないんです。', 'Saya tidak ingin memperumit masalah ini lagi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6628_komplikasi, '国会では予算案をめぐって議論が紛糾した。', 'Perdebatan Diet mengenai RUU anggaran berubah menjadi kekacauan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6628_komplikasi, '市議会は再開発計画をめぐって紛糾した。', 'Dewan kota menjadi terperosok dalam kekacauan mengenai rencana pembangunan kembali.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6628_komplikasi, '委員会の審議は、意見の対立で紛糾している。', 'Pertimbangan panitia menjadi kacau karena adanya perbedaan pendapat.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6629_penghukuman, '彼は政府の不正を糾弾しました。', 'Dia mengecam tindakan pemerintah yang salah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6629_penghukuman, '教育委員会は、教師による不適切な発言を糾弾した。', 'Dewan Pendidikan mengecam ucapan tidak pantas guru tersebut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6629_penghukuman, '国際社会は、民間人への攻撃を強く糾弾している。', 'Komunitas internasional mengutuk keras serangan terhadap warga sipil.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6629_penghukuman, 'この金融危機について、誰が糾弾されるべきだと思われますか？', 'Menurut Anda siapa yang harus dikutuk atas krisis keuangan ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6630_tali, 'ロッククライミング中に落ちないように綱で体を固定しました。', 'Saya menggunakan tali untuk menahan diri agar tidak terjatuh saat panjat tebing.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6630_tali, 'さすが６年生。綱を引く力が強いですね。', 'Itulah siswa kelas enam bagi Anda - mereka sangat kuat dalam menarik tali.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6630_tali, '二つの気球の間を綱渡りした男の人の話はもうお聞きになりましたか？', 'Pernahkah Anda mendengar tentang pria yang berjalan di atas tali di antara dua balon udara?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6632_tarik_tambang, '今年も運動会で綱引きをしました。', 'Kami juga melakukan tarik tambang di festival olahraga tahun ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6632_tarik_tambang, '綱引きはチームワークが大切です。', 'Kerja tim penting dalam tarik tambang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6632_tarik_tambang, '綱引きは、日本と同じくらいアメリカでも人気がありますか？', 'Apakah tarik tambang sama populernya di Amerika seperti di Jepang?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6632_tarik_tambang, 'どちらも譲らず、交渉は綱引きのように続いた。', 'Tidak ada pihak yang mau mundur, dan negosiasi berlanjut seperti tarik-menarik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6636_hati, 'トイレに行く前に、鳥の肝をもう一口かじりました。', 'Aku menggigit hati ayam lagi sebelum pergi ke kamar mandi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6637_hepatitis, 'あのA型肝炎の患者は愛に飢えており、いつも医者や看護師の気を引こうとしている。', 'Pasien hepatitis A haus akan cinta dan selalu berusaha mendapatkan perhatian dari perawat dan dokter.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6638_hati, '「もし世界中の食料が無くなって、お前がすっげぇお腹がすいてるとしたら、俺の肝臓、食べるか？」「さあ、どうだろう。」「さあ、どうだろうって、それ、どういう意味だよ。」「今は分かんないってこと。」', '“Jika semua makanan di dunia habis dan kamu benar-benar lapar, maukah kamu memakan hatiku?” "Hmm, Entahlah." "Apa maksudmu, entahlah?" "Aku hanya tidak tahu saat ini."');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6639_halaman_rumput, '芝に水は撒いてくれた？', 'Apakah kamu menyirami halaman untukku?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6640_halaman_rumput, 'この公園では、芝生の上を歩くのは禁止されています。', 'Dilarang berjalan di halaman rumput di taman ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6641_toshiba, '東芝のお客様センターから届いたメールは、全文文字化けしていました。', 'Email dari pusat pelanggan Toshiba semuanya kacau.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6642_halaman_rumput, 'この芝草が、芝草クッキーを緑色にしてくれるんです。', 'Rumput di kue rumput ini memberi warna hijau pada kue tersebut.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6643_liar, '私の初めての彼氏はいつも鼻が詰まっていて、電話をする時は息づかいが荒かったです。', 'Pacar pertamaku selalu mengalami hidung tersumbat dan sesak napas saat kami berbicara di telepon.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6644_menjadi_badai, '美容師として働いている限りは、手が荒れるのはどうしようもありません。', 'Tangan saya akan kasar selama saya seorang artis kecantikan, tidak ada yang bisa saya lakukan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6645_memecat, '子どもが学校で使う用の袋を縫いました。', 'Saya menjahit tas untuk digunakan anak saya di sekolah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6646_kantong_sampah, '駅員さんに、電車に自転車を持ち込む場合は、持ち運び用の袋の使用が義務づけられているって言われたんだけど、代わりにゴミ袋を使っちゃだめなのかなぁ。', 'Staf stasiun kereta memberitahuku bahwa aku diharuskan menggunakan tas jinjing untuk membawa sepeda ke kereta, tapi aku bertanya-tanya apakah aku bisa menggunakan kantong sampah untuk itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6647_tas_misteri, '元旦に、福袋を買う列に並ぶため、妹と私は朝の四時に起きました。', 'Pada Hari Tahun Baru, saya dan saudara perempuan saya bangun jam 4 pagi untuk mengantri membeli Tas Keberuntungan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6934_kesalehan_anak, '何か両親に親孝行してあげたいと思っています。', 'Saya pikir saya ingin melakukan sesuatu untuk menunjukkan bakti saya kepada orang tua saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6934_kesalehan_anak, '母の日くらいは親孝行しようよ！', 'Setidaknya kamu harus melakukan sesuatu yang baik untuk ibumu di Hari Ibu!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6934_kesalehan_anak, 'お金じゃなくて、時間を使って一緒に過ごすのが本当の親孝行かもしれない。', 'Mungkin kesalehan berbakti yang sejati adalah menghabiskan waktu bersama orang tua Anda, bukan menghabiskan uang untuk mereka.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6934_kesalehan_anak, 'でも、もうすぐロボットが代わりに親孝行してくれる時代が来るんじゃない？', 'Tapi bukankah era robot yang menghormati orang tua sudah dekat?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6936_untuk_mulai_meniup, '急に強い風が吹き出した。', 'Angin kencang tiba-tiba mulai bertiup.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6936_untuk_mulai_meniup, 'コンサート中なのに、誰かが口笛を吹き出しました。', 'Meskipun saat itu sedang konser, seseorang mulai bersiul.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6936_untuk_mulai_meniup, 'パイプが壊れて水が吹き出しているのを発見しました。', 'Saya menemukan ada pipa yang pecah dan air keluar dari sana.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6936_untuk_mulai_meniup, '俺の新しい髪型を見て、あいつプッと吹き出したんだぜ。失礼だよな。', 'Dia tertawa terbahak-bahak saat melihat gaya rambut baruku. Cukup kasar, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6937_untuk_meniup, '家はおんぼろで、嵐が来る度に雨風が吹き込むのが現実です。', 'Kenyataannya adalah rumah tersebut sudah sangat tua sehingga hujan dan angin bertiup masuk setiap kali badai datang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6938_untuk_bersiul, '口笛を吹くことにどんな魅力を感じますか。', 'Apa yang membuat Anda tertarik untuk bersiul?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6939_untuk_mencairkan, 'この味噌汁はしょっぱすぎるよ。もうちょっと薄めてもらってもいいかな？', 'Sup miso ini terlalu asin. Bisakah kamu melunakkannya sedikit?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6940_untuk_melarikan_diri, '万が一ゾンビが実際に現れた場合を想定して、どうやってゾンビから逃れるのかを考えているんです。', 'Saya sedang memikirkan cara melarikan diri dari zombie jika mereka benar-benar muncul.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_6942_untuk_menerbangkan, 'パーティーに行って、憂鬱なんて吹き飛ばしちゃおうぜ。', 'Ayo pergi ke pesta dan hilangkan depresimu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7462_semua_orang, 'この俳優は、万人に人気がある。', 'Aktor ini populer di kalangan semua orang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7462_semua_orang, 'やっぱり万人受けするデザインにする方がいいんじゃない？', 'Bagaimanapun, bukankah lebih baik memilih desain yang menarik bagi semua orang?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7462_semua_orang, 'これは万人に共通の感想だろう。', 'Tampaknya ini adalah kesan umum di antara semua orang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7558_untuk_membiarkan_seseorang_melarikan_diri, 'あの犯人を逃がすことはできない。', 'Kita tidak bisa membiarkan penjahatnya lolos.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7558_untuk_membiarkan_seseorang_melarikan_diri, 'この施設に捕らえられている人質を逃がすために潜入しました。', 'Saya telah menyusup ke fasilitas ini untuk membebaskan para sandera yang ditahan di sini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7558_untuk_membiarkan_seseorang_melarikan_diri, 'いいカモだったのに、逃がしちゃったね。', 'Dia benar-benar tidak berguna, tapi kami membiarkannya pergi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7665_bangunan_kecil, '彼女は小柄だけど、とても元気です。', 'Dia kecil, tapi penuh energi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7665_bangunan_kecil, '小柄な人って、なんとなく親しみやすいよね。', 'Orang bertubuh mungil sepertinya lebih mudah didekati, bukan?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7665_bangunan_kecil, 'その店では、一人の小柄なおばあさんが買い物をしていた。', 'Di toko itu, ada seorang wanita tua kecil sedang berbelanja.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7665_bangunan_kecil, '小柄な体を揺らして、彼は笑ったが、その笑いには音がなかった。', 'Dia mengguncang tubuh kecilnya sambil tertawa, tapi tawanya tidak mengeluarkan suara.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7725_menjadi_transparan, '彼女の手は透き通るほど白かった。', 'Tangannya sangat putih hingga hampir transparan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7725_menjadi_transparan, '水が透き通っていてきれい。', 'Airnya sangat jernih dan indah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_7725_menjadi_transparan, '玉ねぎが透き通ってきたら肉を入れてください。', 'Setelah bawang bombay menjadi transparan, tambahkan daging.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8558_agar_diasinkan_dengan_baik, 'キュウリの漬物、美味しく漬かるといいな。', 'Saya harap acar mentimun menjadi enak setelah selesai diasinkan.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8558_agar_diasinkan_dengan_baik, '大根はもう漬かってるはずだから、出していいよ。', 'Lobak daikon seharusnya sudah diasamkan dengan baik sekarang, jadi Anda bisa mengeluarkannya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8558_agar_diasinkan_dengan_baik, 'このナス、しっかり漬かってるね。味がしみてて美味しい！', 'Terong ini telah diasamkan dengan sangat baik. Itu menyerap rasa dan rasanya lezat!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8972_ramen, '鮭拉麺なんて初めて食べるよ。', 'Ini pertama kalinya aku makan ramen salmon.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8972_ramen, '小さな会社が成長するのに必要なのは、拉麺です。', 'Yang dibutuhkan perusahaan kecil untuk berkembang adalah ramen.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8972_ramen, '股間に拉麺の汁をこぼしてしまった。', 'Aku menumpahkan sup ramen di selangkanganku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8973_beberapa, 'みんな冷たい素麺をツルツル食べ始めました。', 'Semua orang mulai menyeruput minuman dingin itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8973_beberapa, '最後に素麺を入れるのでスープの味は薄めになっています。', 'Rasa kuahnya lebih ringan karena ditambahkan mie somen di bagian akhir.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8973_beberapa, 'マミさんが日本から持ってきた素麺を作ってくれた。', 'Mami membuatkan kami sesuatu yang dia bawa dari Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9003_mochi, '私の親戚はみんな餅にマヨネーズをかけて食べます。', 'Saat makan mochi, semua kerabat saya menaruh mayones di atasnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9003_mochi, '彼のスーツケースには餅しか入ってなかった。', 'Kopernya hanya berisi mochi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9003_mochi, 'お餅と緑茶のセットを頼みました。', 'Saya memesan set mochi dan teh hijau.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9040_insektisida, 'この農場では殺虫剤の使用は厳禁です。', 'Penggunaan insektisida dilarang keras di peternakan ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9040_insektisida, '殺虫剤は人体に入ると危険です。', 'Pestisida berbahaya jika masuk ke dalam tubuh manusia.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9040_insektisida, '蛍は昆虫なので、寒さや殺虫剤に弱い。', 'Karena kunang-kunang adalah serangga, mereka rentan terhadap dingin dan insektisida.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9077_kedua_pihak, '片方だけでなく、双方の意見が知りたいですね。', 'Saya ingin mengetahui pendapat kedua belah pihak, bukan hanya satu pihak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9077_kedua_pihak, '結婚には双方の合意が必要です。', 'Pernikahan membutuhkan persetujuan kedua belah pihak.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9077_kedua_pihak, '双方の主張は平行線をたどっています。', 'Klaim kedua belah pihak masih belum bisa direkonsiliasi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9275_nasi_goreng, '私はキムチ炒飯が大好きです。', 'Saya suka nasi goreng kimchi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9275_nasi_goreng, '俺は炒飯にするよ。', 'Aku akan pergi dengan nasi gorengnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9275_nasi_goreng, '美味しい炒飯を作るのは簡単じゃない。', 'Membuat nasi goreng yang enak memang tidak mudah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9310_pakaian, 'あの歌手の衣装はいつも派手です。', 'Pakaian penyanyi itu selalu mencolok.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9310_pakaian, 'この辺にレンタル衣装屋さんってある？', 'Apakah ada toko persewaan kostum di sekitar sini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9310_pakaian, 'すみません！次の衣装に着替えるのに、少し手こずってしまって。', 'Saya minta maaf! Saya sedikit kesulitan saat mengganti kostum berikutnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9379_menjadi_sibuk, 'ショッピングモールは週末、買い物客で賑わう。', 'Pada akhir pekan, pusat perbelanjaan ramai dengan pembeli.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9379_menjadi_sibuk, '毎年、祭りも花火大会も大勢の人で賑わいます。', 'Setiap tahun, festival dan kembang api menarik banyak orang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9379_menjadi_sibuk, 'あそこの路地にあるパクチー料理専門レストラン、中々賑わってるらしいよ。', 'Restoran khusus daun ketumbar di gang sebelah sana tampaknya berjalan cukup baik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9380_ramai, 'うちの家族は賑やかです。', 'Keluarga saya hidup.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9380_ramai, '１１月には子供が増えて、今年のクリスマスは賑やかになる予定です。', 'Dengan kelahiran anak baru pada bulan November, kami mengharapkan Natal yang meriah tahun ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9380_ramai, '午前中の公園は老人向けのラジオ体操もあってかなり賑やかでしたよ。', 'Dengan adanya senam radio untuk orang tua dan sebagainya, taman ini benar-benar ramai pagi ini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9505_sejahtera, 'この店はすごく繁盛していますね！', 'Toko ini berjalan dengan sangat baik!');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9505_sejahtera, '彼のレストランは小さいがいつも大繁盛だ。', 'Restorannya kecil, tapi selalu penuh.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9505_sejahtera, '商売が繁盛するように、神社でお祈りをしてきました。', 'Saya pergi ke kuil Shinto dan berdoa untuk kesuksesan bisnis.');

  -- 4. PREREQUISITES
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1804_mengatasi, id FROM items WHERE type = 'radical' AND (slug = '69' OR id = '69') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1804_mengatasi, id FROM items WHERE type = 'radical' AND (slug = '28' OR id = '28') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1805_kedatangan, id FROM items WHERE type = 'radical' AND (slug = '274' OR id = '274') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1805_kedatangan, id FROM items WHERE type = 'radical' AND (slug = '128' OR id = '128') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1806_pasangan, id FROM items WHERE type = 'radical' AND (slug = '30' OR id = '30') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1807_filsafat, id FROM items WHERE type = 'radical' AND (slug = '63' OR id = '63') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1807_filsafat, id FROM items WHERE type = 'radical' AND (slug = '115' OR id = '115') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1807_filsafat, id FROM items WHERE type = 'radical' AND (slug = '16' OR id = '16') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1808_duka, id FROM items WHERE type = 'radical' AND (slug = '15' OR id = '15') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1808_duka, id FROM items WHERE type = 'radical' AND (slug = '16' OR id = '16') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1808_duka, id FROM items WHERE type = 'radical' AND (slug = '320' OR id = '320') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1809_padat, id FROM items WHERE type = 'radical' AND (slug = '323' OR id = '323') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1809_padat, id FROM items WHERE type = 'radical' AND (slug = '30' OR id = '30') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1809_padat, id FROM items WHERE type = 'radical' AND (slug = '17' OR id = '17') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1811_kencangkan, id FROM items WHERE type = 'radical' AND (slug = '63' OR id = '63') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1811_kencangkan, id FROM items WHERE type = 'radical' AND (slug = '174' OR id = '174') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1812_busur, id FROM items WHERE type = 'radical' AND (slug = '36' OR id = '36') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1812_busur, r_384_melon);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1813_tantangan, id FROM items WHERE type = 'radical' AND (slug = '63' OR id = '63') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1813_tantangan, id FROM items WHERE type = 'radical' AND (slug = '363' OR id = '363') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1814_menggali, id FROM items WHERE type = 'radical' AND (slug = '63' OR id = '63') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1814_menggali, id FROM items WHERE type = 'radical' AND (slug = '37' OR id = '37') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1814_menggali, id FROM items WHERE type = 'radical' AND (slug = '332' OR id = '332') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1815_kerekan, id FROM items WHERE type = 'radical' AND (slug = '63' OR id = '63') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1815_kerekan, id FROM items WHERE type = 'radical' AND (slug = '172' OR id = '172') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1816_pegangan, id FROM items WHERE type = 'radical' AND (slug = '63' OR id = '63') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1816_pegangan, r_387_toko);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1817_menggoyang, id FROM items WHERE type = 'radical' AND (slug = '63' OR id = '63') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1817_menggoyang, r_8798_satelit);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1818_pemurnian, id FROM items WHERE type = 'radical' AND (slug = '277' OR id = '277') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1818_pemurnian, id FROM items WHERE type = 'radical' AND (slug = '207' OR id = '207') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1819_untuk_sementara, id FROM items WHERE type = 'radical' AND (slug = '93' OR id = '93') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1819_untuk_sementara, id FROM items WHERE type = 'radical' AND (slug = '115' OR id = '115') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1819_untuk_sementara, id FROM items WHERE type = 'radical' AND (slug = '22' OR id = '22') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1820_analisa, id FROM items WHERE type = 'radical' AND (slug = '23' OR id = '23') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1820_analisa, id FROM items WHERE type = 'radical' AND (slug = '115' OR id = '115') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1821_engsel, id FROM items WHERE type = 'radical' AND (slug = '23' OR id = '23') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1821_engsel, id FROM items WHERE type = 'radical' AND (slug = '322' OR id = '322') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1822_sumbu, id FROM items WHERE type = 'radical' AND (slug = '93' OR id = '93') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1822_sumbu, id FROM items WHERE type = 'radical' AND (slug = '268' OR id = '268') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1823_pola, id FROM items WHERE type = 'radical' AND (slug = '23' OR id = '23') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1823_pola, id FROM items WHERE type = 'radical' AND (slug = '186' OR id = '186') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1824_semalam, id FROM items WHERE type = 'radical' AND (slug = '103' OR id = '103') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1824_semalam, id FROM items WHERE type = 'radical' AND (slug = '52' OR id = '52') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1825_menggeser, id FROM items WHERE type = 'radical' AND (slug = '103' OR id = '103') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_1825_menggeser, r_385_tulang);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1826_laguna, id FROM items WHERE type = 'radical' AND (slug = '103' OR id = '103') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1826_laguna, id FROM items WHERE type = 'radical' AND (slug = '22' OR id = '22') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1826_laguna, id FROM items WHERE type = 'radical' AND (slug = '173' OR id = '173') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1827_arang, id FROM items WHERE type = 'radical' AND (slug = '240' OR id = '240') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1827_arang, id FROM items WHERE type = 'radical' AND (slug = '131' OR id = '131') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1828_contoh, id FROM items WHERE type = 'radical' AND (slug = '85' OR id = '85') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1828_contoh, id FROM items WHERE type = 'radical' AND (slug = '93' OR id = '93') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1828_contoh, id FROM items WHERE type = 'radical' AND (slug = '158' OR id = '158') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1829_mengganggu, id FROM items WHERE type = 'radical' AND (slug = '86' OR id = '86') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1829_mengganggu, id FROM items WHERE type = 'radical' AND (slug = '247' OR id = '247') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1830_memutar_bersama, id FROM items WHERE type = 'radical' AND (slug = '86' OR id = '86') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1830_memutar_bersama, id FROM items WHERE type = 'radical' AND (slug = '289' OR id = '289') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1831_tali, id FROM items WHERE type = 'radical' AND (slug = '86' OR id = '86') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1831_tali, id FROM items WHERE type = 'radical' AND (slug = '376' OR id = '376') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1833_hati, id FROM items WHERE type = 'radical' AND (slug = '43' OR id = '43') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1833_hati, id FROM items WHERE type = 'radical' AND (slug = '61' OR id = '61') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1834_halaman_rumput, id FROM items WHERE type = 'radical' AND (slug = '90' OR id = '90') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1834_halaman_rumput, id FROM items WHERE type = 'radical' AND (slug = '8771' OR id = '8771') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1835_liar, id FROM items WHERE type = 'radical' AND (slug = '90' OR id = '90') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1835_liar, id FROM items WHERE type = 'radical' AND (slug = '212' OR id = '212') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1835_liar, id FROM items WHERE type = 'radical' AND (slug = '21' OR id = '21') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1836_memecat, id FROM items WHERE type = 'radical' AND (slug = '310' OR id = '310') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_1836_memecat, id FROM items WHERE type = 'radical' AND (slug = '320' OR id = '320') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_8993_mochi, id FROM items WHERE type = 'radical' AND (slug = '139' OR id = '139') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_8993_mochi, id FROM items WHERE type = 'radical' AND (slug = '8767' OR id = '8767') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_8993_mochi, id FROM items WHERE type = 'radical' AND (slug = '171' OR id = '171') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_9378_ramai, id FROM items WHERE type = 'radical' AND (slug = '94' OR id = '94') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT k_9378_ramai, id FROM items WHERE type = 'radical' AND (slug = '183' OR id = '183') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5287_tuntutan, id FROM items WHERE type = 'kanji' AND (slug = '737' OR id = '737') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_5287_tuntutan, id FROM items WHERE type = 'kanji' AND (slug = '1386' OR id = '1386') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6325_kemajuan_pesat, id FROM items WHERE type = 'kanji' AND (slug = '1738' OR id = '1738') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6325_kemajuan_pesat, id FROM items WHERE type = 'kanji' AND (slug = '748' OR id = '748') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6326_semangat, id FROM items WHERE type = 'kanji' AND (slug = '1738' OR id = '1738') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6326_semangat, id FROM items WHERE type = 'kanji' AND (slug = '827' OR id = '827') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6501_dumping, id FROM items WHERE type = 'kanji' AND (slug = '686' OR id = '686') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6501_dumping, id FROM items WHERE type = 'kanji' AND (slug = '1783' OR id = '1783') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6560_untuk_terburu_buru, id FROM items WHERE type = 'kanji' AND (slug = '1744' OR id = '1744') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6560_untuk_terburu_buru, id FROM items WHERE type = 'kanji' AND (slug = '1504' OR id = '1504') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6561_untuk_mulai_berjalan, id FROM items WHERE type = 'kanji' AND (slug = '1744' OR id = '1744') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6561_untuk_mulai_berjalan, id FROM items WHERE type = 'kanji' AND (slug = '483' OR id = '483') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6562_untuk_berlari, id FROM items WHERE type = 'kanji' AND (slug = '1744' OR id = '1744') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6562_untuk_berlari, id FROM items WHERE type = 'kanji' AND (slug = '569' OR id = '569') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6563_anak_yang_tidak_taat, id FROM items WHERE type = 'kanji' AND (slug = '563' OR id = '563') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6563_anak_yang_tidak_taat, id FROM items WHERE type = 'kanji' AND (slug = '1747' OR id = '1747') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6563_anak_yang_tidak_taat, id FROM items WHERE type = 'kanji' AND (slug = '690' OR id = '690') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6564_kurangnya_kesalehan_berbakti, id FROM items WHERE type = 'kanji' AND (slug = '770' OR id = '770') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6564_kurangnya_kesalehan_berbakti, id FROM items WHERE type = 'kanji' AND (slug = '563' OR id = '563') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6564_kurangnya_kesalehan_berbakti, id FROM items WHERE type = 'kanji' AND (slug = '1747' OR id = '1747') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6565_telepon_portabel, id FROM items WHERE type = 'kanji' AND (slug = '1756' OR id = '1756') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6565_telepon_portabel, id FROM items WHERE type = 'kanji' AND (slug = '1463' OR id = '1463') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6565_telepon_portabel, id FROM items WHERE type = 'kanji' AND (slug = '706' OR id = '706') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6565_telepon_portabel, id FROM items WHERE type = 'kanji' AND (slug = '705' OR id = '705') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6566_canggih, id FROM items WHERE type = 'kanji' AND (slug = '774' OR id = '774') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6566_canggih, id FROM items WHERE type = 'kanji' AND (slug = '857' OR id = '857') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6566_canggih, id FROM items WHERE type = 'kanji' AND (slug = '1758' OR id = '1758') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6567_pengorbanan_terbang, id FROM items WHERE type = 'kanji' AND (slug = '1761' OR id = '1761') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6567_pengorbanan_terbang, id FROM items WHERE type = 'kanji' AND (slug = '1092' OR id = '1092') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6568_kegelapan, id FROM items WHERE type = 'kanji' AND (slug = '563' OR id = '563') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6568_kegelapan, id FROM items WHERE type = 'kanji' AND (slug = '1771' OR id = '1771') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6568_kegelapan, id FROM items WHERE type = 'kanji' AND (slug = '626' OR id = '626') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6569_penaklukan, k_1804_mengatasi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6569_penaklukan, id FROM items WHERE type = 'kanji' AND (slug = '716' OR id = '716') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6570_terperinci, k_1804_mengatasi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6570_terperinci, id FROM items WHERE type = 'kanji' AND (slug = '626' OR id = '626') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6571_kedatangan, k_1805_kedatangan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6571_kedatangan, id FROM items WHERE type = 'kanji' AND (slug = '846' OR id = '846') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6572_saudara_kembar, k_1806_pasangan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6572_saudara_kembar, id FROM items WHERE type = 'kanji' AND (slug = '462' OR id = '462') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6573_pasangan, k_1806_pasangan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6574_teropong, k_1806_pasangan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6574_teropong, id FROM items WHERE type = 'kanji' AND (slug = '1488' OR id = '1488') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6574_teropong, id FROM items WHERE type = 'kanji' AND (slug = '887' OR id = '887') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6575_filsafat, k_1807_filsafat);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6575_filsafat, id FROM items WHERE type = 'kanji' AND (slug = '599' OR id = '599') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6576_duka, k_1808_duka);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6577_kehilangan, k_1808_duka);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6577_kehilangan, id FROM items WHERE type = 'kanji' AND (slug = '654' OR id = '654') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6578_padat, k_1809_padat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6583_untuk_mengikat, k_1811_kencangkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6584_bersama, id FROM items WHERE type = 'kanji' AND (slug = '440' OR id = '440') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6584_bersama, k_1811_kencangkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6585_kesimpulannya, id FROM items WHERE type = 'kanji' AND (slug = '1131' OR id = '1131') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6585_kesimpulannya, k_1811_kencangkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6586_penyatuan, id FROM items WHERE type = 'kanji' AND (slug = '1170' OR id = '1170') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6586_penyatuan, k_1811_kencangkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6587_tanda_kurung, k_1811_kencangkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6587_tanda_kurung, k_1812_busur);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6588_busur, id FROM items WHERE type = 'kanji' AND (slug = '472' OR id = '472') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6588_busur, k_1812_busur);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6589_untuk_menantang_seseorang, k_1813_tantangan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6590_sebuah_tantangan, k_1813_tantangan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6590_sebuah_tantangan, id FROM items WHERE type = 'kanji' AND (slug = '803' OR id = '803') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6591_provokasi, k_1813_tantangan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6591_provokasi, id FROM items WHERE type = 'kanji' AND (slug = '729' OR id = '729') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6592_untuk_menggali, k_1814_menggali);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6593_penggalian, id FROM items WHERE type = 'kanji' AND (slug = '729' OR id = '729') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6593_penggalian, k_1814_menggali);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6594_untuk_menggoreng, k_1815_kerekan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6595_untuk_dipahami, k_1816_pegangan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6596_jabat_tangan, k_1816_pegangan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6596_jabat_tangan, id FROM items WHERE type = 'kanji' AND (slug = '474' OR id = '474') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6597_pegangan, k_1816_pegangan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6597_pegangan, id FROM items WHERE type = 'kanji' AND (slug = '447' OR id = '447') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6598_untuk_mengguncang, k_1817_menggoyang);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6599_gejolak_emosional, id FROM items WHERE type = 'kanji' AND (slug = '827' OR id = '827') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6599_gejolak_emosional, k_1817_menggoyang);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6600_belajar, id FROM items WHERE type = 'kanji' AND (slug = '962' OR id = '962') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6600_belajar, k_1818_pemurnian);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6601_aula_pemakaman, k_1818_pemurnian);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6601_aula_pemakaman, id FROM items WHERE type = 'kanji' AND (slug = '694' OR id = '694') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6602_sebentar, k_1819_untuk_sementara);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6603_bisa_berubah, k_1819_untuk_sementara);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6603_bisa_berubah, id FROM items WHERE type = 'kanji' AND (slug = '714' OR id = '714') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6604_analisa, id FROM items WHERE type = 'kanji' AND (slug = '1150' OR id = '1150') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6604_analisa, k_1820_analisa);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6605_analisa, id FROM items WHERE type = 'kanji' AND (slug = '501' OR id = '501') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6605_analisa, k_1820_analisa);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6606_sumbu, k_1821_engsel);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6606_sumbu, k_1822_sumbu);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6607_tengah, id FROM items WHERE type = 'kanji' AND (slug = '469' OR id = '469') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6607_tengah, k_1821_engsel);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6608_sumbu, k_1822_sumbu);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6609_gulir_gantung, id FROM items WHERE type = 'kanji' AND (slug = '1278' OR id = '1278') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6609_gulir_gantung, k_1822_sumbu);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6610_sumbu, id FROM items WHERE type = 'kanji' AND (slug = '469' OR id = '469') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6610_sumbu, k_1822_sumbu);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6611_pola, k_1823_pola);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6612_karakter_bangsa, id FROM items WHERE type = 'kanji' AND (slug = '621' OR id = '621') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6612_karakter_bangsa, k_1823_pola);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6613_karakter_pribadi, id FROM items WHERE type = 'kanji' AND (slug = '444' OR id = '444') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6613_karakter_pribadi, k_1823_pola);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6614_menginap_satu_malam, id FROM items WHERE type = 'kanji' AND (slug = '440' OR id = '440') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6614_menginap_satu_malam, k_1824_semalam);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6615_menginap_dua_malam, id FROM items WHERE type = 'kanji' AND (slug = '441' OR id = '441') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6615_menginap_dua_malam, k_1824_semalam);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6616_penginapan, id FROM items WHERE type = 'kanji' AND (slug = '860' OR id = '860') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6616_penginapan, k_1824_semalam);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6617_untuk_menginap_malam_ini, k_1824_semalam);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6618_untuk_meluncur, k_1825_menggeser);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6619_mudah, id FROM items WHERE type = 'kanji' AND (slug = '472' OR id = '472') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6619_mudah, k_1825_menggeser);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6620_laguna, k_1826_laguna);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6621_datar_pasang_surut, id FROM items WHERE type = 'kanji' AND (slug = '1014' OR id = '1014') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6621_datar_pasang_surut, k_1826_laguna);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6622_titik_fokus, k_1827_arang);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6622_titik_fokus, id FROM items WHERE type = 'kanji' AND (slug = '641' OR id = '641') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6623_untuk_terbakar, k_1827_arang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6624_cakupan, k_1828_contoh);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6624_cakupan, id FROM items WHERE type = 'kanji' AND (slug = '901' OR id = '901') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6625_contoh, id FROM items WHERE type = 'kanji' AND (slug = '1264' OR id = '1264') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6625_contoh, k_1828_contoh);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6626_contoh, k_1828_contoh);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6627_untuk_mengalihkan_perhatian, k_1829_mengganggu);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6628_komplikasi, k_1829_mengganggu);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6628_komplikasi, k_1830_memutar_bersama);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6629_penghukuman, k_1830_memutar_bersama);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6629_penghukuman, id FROM items WHERE type = 'kanji' AND (slug = '1659' OR id = '1659') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6630_tali, k_1831_tali);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6632_tarik_tambang, k_1831_tali);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6632_tarik_tambang, id FROM items WHERE type = 'kanji' AND (slug = '507' OR id = '507') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6636_hati, k_1833_hati);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6637_hepatitis, k_1833_hati);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6637_hepatitis, id FROM items WHERE type = 'kanji' AND (slug = '1599' OR id = '1599') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6638_hati, k_1833_hati);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6638_hati, id FROM items WHERE type = 'kanji' AND (slug = '1546' OR id = '1546') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6639_halaman_rumput, k_1834_halaman_rumput);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6640_halaman_rumput, k_1834_halaman_rumput);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6640_halaman_rumput, id FROM items WHERE type = 'kanji' AND (slug = '850' OR id = '850') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6641_toshiba, id FROM items WHERE type = 'kanji' AND (slug = '627' OR id = '627') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6641_toshiba, k_1834_halaman_rumput);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6642_halaman_rumput, k_1834_halaman_rumput);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6642_halaman_rumput, id FROM items WHERE type = 'kanji' AND (slug = '605' OR id = '605') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6643_liar, k_1835_liar);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6644_menjadi_badai, k_1835_liar);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6645_memecat, k_1836_memecat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6646_kantong_sampah, k_1836_memecat);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6647_tas_misteri, id FROM items WHERE type = 'kanji' AND (slug = '867' OR id = '867') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_6647_tas_misteri, k_1836_memecat);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6934_kesalehan_anak, id FROM items WHERE type = 'kanji' AND (slug = '770' OR id = '770') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6934_kesalehan_anak, id FROM items WHERE type = 'kanji' AND (slug = '1747' OR id = '1747') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6934_kesalehan_anak, id FROM items WHERE type = 'kanji' AND (slug = '580' OR id = '580') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6936_untuk_mulai_meniup, id FROM items WHERE type = 'kanji' AND (slug = '1751' OR id = '1751') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6936_untuk_mulai_meniup, id FROM items WHERE type = 'kanji' AND (slug = '483' OR id = '483') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6937_untuk_meniup, id FROM items WHERE type = 'kanji' AND (slug = '1751' OR id = '1751') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6937_untuk_meniup, id FROM items WHERE type = 'kanji' AND (slug = '1504' OR id = '1504') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6938_untuk_bersiul, id FROM items WHERE type = 'kanji' AND (slug = '452' OR id = '452') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6938_untuk_bersiul, id FROM items WHERE type = 'kanji' AND (slug = '1121' OR id = '1121') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6938_untuk_bersiul, id FROM items WHERE type = 'kanji' AND (slug = '1751' OR id = '1751') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6939_untuk_mencairkan, id FROM items WHERE type = 'kanji' AND (slug = '1767' OR id = '1767') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6940_untuk_melarikan_diri, id FROM items WHERE type = 'kanji' AND (slug = '1705' OR id = '1705') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6942_untuk_menerbangkan, id FROM items WHERE type = 'kanji' AND (slug = '1751' OR id = '1751') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_6942_untuk_menerbangkan, id FROM items WHERE type = 'kanji' AND (slug = '1092' OR id = '1092') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7462_semua_orang, id FROM items WHERE type = 'kanji' AND (slug = '495' OR id = '495') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7462_semua_orang, id FROM items WHERE type = 'kanji' AND (slug = '444' OR id = '444') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7558_untuk_membiarkan_seseorang_melarikan_diri, id FROM items WHERE type = 'kanji' AND (slug = '1705' OR id = '1705') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7665_bangunan_kecil, id FROM items WHERE type = 'kanji' AND (slug = '463' OR id = '463') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_7665_bangunan_kecil, k_1823_pola);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7725_menjadi_transparan, id FROM items WHERE type = 'kanji' AND (slug = '1771' OR id = '1771') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_7725_menjadi_transparan, id FROM items WHERE type = 'kanji' AND (slug = '665' OR id = '665') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8558_agar_diasinkan_dengan_baik, id FROM items WHERE type = 'kanji' AND (slug = '2336' OR id = '2336') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8972_ramen, id FROM items WHERE type = 'kanji' AND (slug = '8969' OR id = '8969') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8972_ramen, id FROM items WHERE type = 'kanji' AND (slug = '8955' OR id = '8955') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8973_beberapa, id FROM items WHERE type = 'kanji' AND (slug = '1138' OR id = '1138') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_8973_beberapa, id FROM items WHERE type = 'kanji' AND (slug = '8955' OR id = '8955') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_9003_mochi, k_8993_mochi);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9040_insektisida, id FROM items WHERE type = 'kanji' AND (slug = '880' OR id = '880') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9040_insektisida, id FROM items WHERE type = 'kanji' AND (slug = '553' OR id = '553') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9040_insektisida, id FROM items WHERE type = 'kanji' AND (slug = '1750' OR id = '1750') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_9077_kedua_pihak, k_1806_pasangan);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9077_kedua_pihak, id FROM items WHERE type = 'kanji' AND (slug = '510' OR id = '510') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9275_nasi_goreng, id FROM items WHERE type = 'kanji' AND (slug = '9265' OR id = '9265') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9275_nasi_goreng, id FROM items WHERE type = 'kanji' AND (slug = '955' OR id = '955') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9310_pakaian, id FROM items WHERE type = 'kanji' AND (slug = '1796' OR id = '1796') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9310_pakaian, id FROM items WHERE type = 'kanji' AND (slug = '1541' OR id = '1541') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_9379_menjadi_sibuk, k_9378_ramai);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_9380_ramai, k_9378_ramai);
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9505_sejahtera, id FROM items WHERE type = 'kanji' AND (slug = '1764' OR id = '1764') LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id)
    SELECT v_9505_sejahtera, id FROM items WHERE type = 'kanji' AND (slug = '1532' OR id = '1532') LIMIT 1;

END $$;
