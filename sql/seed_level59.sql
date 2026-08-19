-- ====================================================
-- KaniGani — Seed Data Level 59 (v2, relasional)
-- Auto-generated with Indonesian Slugs
-- ====================================================

DO $$
DECLARE
  -- ============ RADICAL IDs (Level 59) ============
  r_436_di_bawah UUID;
  -- ============ KANJI IDs (Level 59) ============
  k_2371_duka UUID; k_2400_transisi UUID; k_2401_kikuk UUID; k_2402_jalur_gunung UUID; k_2403_disengaja UUID; k_2405_perempuan UUID; k_2406_menderita UUID; k_2407_pertunjukan UUID; k_2408_sangat UUID; k_2409_memuja UUID; k_2410_pernis UUID; k_2411_tanjung UUID; k_2412_pemintalan UUID; k_2413_karang UUID; k_2414_barak UUID; k_2415_kawin UUID; k_2416_meniru UUID; k_2417_ramah UUID; k_2418_santai UUID; k_2419_resmi UUID; k_2420_menyusun UUID; k_2421_rendah UUID; k_2422_membenci UUID; k_2423_pemeran UUID; k_2424_cemooh UUID; k_2425_nyali UUID; k_2426_berjalan_jalan UUID; k_2427_kejahatan UUID; k_2428_produk_susu UUID; k_2430_mengucapkan_selamat UUID; k_2431_asia UUID; k_2432_memilih UUID; k_2433_birch_jepang UUID; k_2434_pasir UUID;
  -- ============ VOCABULARY IDs (Level 59) ============
  v_8453_peringatan_kematian UUID; v_8454_duka UUID; v_8455_tabu UUID; v_8456_peringatan_pertama_kematian UUID; v_8457_tidak_menyenangkan UUID; v_8515_gadis_penanam_padi UUID; v_8516_asia_timur UUID; v_8517_penghinaan UUID; v_8518_untuk_membenci UUID; v_8519_menyinggung UUID; v_8520_tidak_rata UUID; v_8521_menjadi_penyok UUID; v_8522_patuh UUID; v_8523_berarti UUID; v_8526_pengawasan UUID; v_8527_untuk_bertahan UUID; v_8528_pernikahan UUID; v_8529_ditempatkan UUID; v_8530_tanjung UUID; v_8531_jalur_gunung UUID; v_8532_keagungan UUID; v_8533_memuja UUID; v_8534_tanpa_menghemat UUID; v_8535_peristiwa_yang_menguntungkan UUID; v_8536_benkei UUID; v_8537_selamat UUID; v_8538_selamat_dan_belasungkawa UUID; v_8539_kepahitan UUID; v_8542_tidak_terampil UUID; v_8543_imitasi UUID; v_8544_samaran UUID; v_8545_untuk_sementara UUID; v_8546_pengacara UUID; v_8547_mengabaikan_kontak UUID; v_8548_pergelandangan UUID; v_8549_limbah UUID; v_8550_pengembaraan UUID; v_8551_ronin UUID; v_8552_gelandangan UUID; v_8553_pernis UUID; v_8554_barang_barang_pernis UUID; v_8555_hitam_legam UUID; v_8559_sangat_luas UUID; v_8560_sangat UUID; v_8561_persahabatan UUID; v_8562_karang UUID; v_8563_atol UUID; v_8564_karang UUID; v_8565_akar_kejahatan UUID; v_8566_kerusakan_perang UUID; v_8567_kondisi_kritis UUID; v_8568_untuk_memutar UUID; v_8569_pemintalan UUID; v_8570_memutar_dan_menenun UUID; v_8571_nyali UUID; v_8572_merencanakan UUID; v_8573_batu_empedu UUID; v_8574_berani UUID; v_8575_keputusasaan UUID; v_8576_ecoli UUID; v_8577_pemula UUID; v_8578_cemooh UUID; v_8580_ketidakseimbangan UUID; v_8581_untuk_menulis UUID; v_8582_universal UUID; v_8583_sekaligus UUID; v_8584_gerbang_penyeberangan UUID; v_8585_penurunan_pangkat UUID; v_8586_pindahkan_ibukota UUID; v_8587_mengubah UUID; v_8588_peternakan_sapi_perah UUID; v_8589_pengecoran UUID; v_8590_sepi UUID; v_8591_diam UUID; v_8592_perempuan UUID; v_8593_bunga_betina UUID; v_9118_puisi UUID; v_9119_perasaan_mendalam UUID; v_9120_sungai_azusa UUID; v_9126_sara UUID;

BEGIN

  DELETE FROM items WHERE level = 59;

  -- 1. RADICALS
  INSERT INTO items (type, character, slug, level, lesson_position, description)
    VALUES ('radical', '下', 'di-bawah', 59, 1, 'Radikal ini sama dengan kanji. Artinya <radikal>di bawah</radikal>.')
    RETURNING id INTO r_436_di_bawah;
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (r_436_di_bawah, 'Di bawah', true, true);

  -- 2. KANJIS
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '忌', 'duka', 59, 2, 'Jika Anda hanya membiarkan <radical>diri sendiri</radikal> (diri Anda sendiri) masuk ke dalam <radikal>hati</radikal> Anda, pada akhirnya Anda akan <kanji>berduka</kanji> atas semua cinta dan persahabatan yang seharusnya Anda miliki tetapi tidak Anda biarkan masuk.', 'Saat Anda sedang <kanji>berkabung</kanji>, Anda merasakan sakit yang menusuk di mata Anda yang menangis. Sebuah <reading>key</reading> (き) meluncur keluar bersama air mata Anda. Anda melihat sekeliling dengan liar, tetapi Anda masih sendirian. Apakah ini... kunci duka?')
    RETURNING id INTO k_2371_duka;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '遷', 'transisi', 59, 3, 'Beralih dari <radical>skuter</radical> ke <radical>helikopter</radical> yang <radical>besar</radical> bahkan untuk diri Anda sendiri (<radical>diri sendiri</radical>), adalah <kanji>transisi</kanji> yang sangat besar.', 'Anda memutuskan satu <kanji>transisi</kanji> saja tidak cukup, jadi Anda beralih ke <reading>cen</reading>taur (せん) juga. Sekarang Anda adalah makhluk setengah kuda setengah manusia dan Anda akan lebih cocok berada di helikopter besar.')
    RETURNING id INTO k_2400_transisi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '拙', 'kikuk', 59, 4, 'Kamu harus menggunakan <radical>jari</radical> untuk melakukan <radical>keluar</radical> karena kamu sangat <kanji>kikuk</kanji>. Sepertinya Anda tidak bisa membuka pintu, tangan Anda hanya tergelincir pada kenopnya tanpa hasil. Sebaliknya, Anda mengambil jari Anda dan menempelkannya ke kusen pintu, menarik semuanya dari engselnya sehingga Anda bisa pergi.', 'Setelah Anda membuat kesalahan <kanji>ceroboh</kanji>, Anda menyadari bahwa pintu-pintu ini ada dalam <reading>set</reading> (せつ). Dan sekarang Anda harus mencoba membuka pintu lain. Dan pintu lainnya. Begitu banyak set pintu!')
    RETURNING id INTO k_2401_kikuk;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '峠', 'jalur-gunung', 59, 5, 'Jika ada <radical>gunung</radical> <radical>di atas</radical> dan <radical>di bawah</radical> Anda, itu berarti Anda berada di <kanji>jalur gunung</kanji>.', 'Hanya di <kanji>lintasan gunung</kanji> jenis ini Anda akan dapat menemukan <reading>To</reading>kyo <reading>ge</reading>cko (とうげ) yang langka dan menggemaskan. Makhluk kecil mungil ini hanya dapat ditemukan di punggung bukit di atas dan di bawah pegunungan di Tokyo. Ada sekitar enam gunung di Tokyo, jadi lain kali Anda mendaki punggung bukit tersebut, buka mata Anda untuk melihat tokek Tokyo!')
    RETURNING id INTO k_2402_jalur_gunung;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '篤', 'disengaja', 59, 6, 'Jika seseorang membuat <radical>bambu</radical> <radical>kuda</radical>, Anda tahu itu <kanji>disengaja</kanji>. Anda tidak dapat secara tidak sengaja membuat seekor kuda utuh dari bambu.', 'Saat Anda mengagumi semua detail <kanji>yang disengaja</kanji> pada kuda bambu ini, hantu <reading>Toku</reading>gawa (とく) Ieyasu muncul di hadapan Anda! “Saya sengaja membuat kuda ini untuk menunjukkan kepada Anda betapa pentingnya kehati-hatian. Anda harus benar-benar yakin dan tegas dalam mengambil keputusan.”')
    RETURNING id INTO k_2403_disengaja;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '雌', 'perempuan', 59, 7, 'Jika Anda dapat <radical>menghentikan</radical> seekor <radical>kalkun</radical> dengan meletakkan <radical>sendok</radikal> di wajahnya, Anda akan mengetahui bahwa itu adalah kalkun <kanji>betina</kanji>. Kalkun jantan akan mematuk sendok dari tangan Anda dan melarikan diri. Namun kalkun betina akan bertanya-tanya mengapa Anda meletakkan sendok di sana, berhenti, dan menatap Anda sambil bertanya-tanya apakah Anda baik-baik saja.', 'Kalkun <kanji>betina</kanji> kemudian berlarian membuat <reading>kekacauan</reading> (めす) dalam mencoba mencari tahu apa yang salah dengan diri Anda. Dia menendang-nendang jerami, mangkuk air, dan mencakar celana Anda, membuat celana Anda semakin berantakan. Tapi Anda tidak bergerak dan dia semakin khawatir.')
    RETURNING id INTO k_2405_perempuan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '堪', 'menderita', 59, 8, 'Jika ada <radical>kotoran</radikal> di dalam <radikal>perangkap kepiting</radikal>, kepiting akan sangat <kanji>bertahan</kanji>.', 'Anda memutuskan untuk menjadikan kepiting kecil yang <kanji>bertahan</kanji>terjebak dalam perangkap kepiting kotor sebagai hewan peliharaan Anda, dan memasang <reading>colla</reading>r (こら) di leher kecilnya.')
    RETURNING id INTO k_2406_menderita;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '吟', 'pertunjukan', 59, 9, 'Kami ingin Anda mengatakan sesuatu dengan <radical>mulut</radical> Anda tepat <radical>sekarang</radical> karena ini waktunya <kanji>pertunjukan</kanji>! Ayo, tolong lakukan. Apa maksudmu kamu tidak tahu pertunjukannya sekarang? Ya, sial. Membaca!', 'Di sini, jika Anda terlalu takut untuk memulai <kanji>resital</kanji> sekarang minumlah <reading>gin</reading> (ぎん) ini untuk menambah keberanian Anda. Tapi begitu Anda selesai meminumnya, pertunjukan dimulai!')
    RETURNING id INTO k_2407_pertunjukan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '甚', 'sangat', 59, 10, 'Membuat mnemonik untuk <radical>perangkap kepiting</radical> <kanji>SANGAT</kanji> sulit. Sangat sulit sehingga saya tidak dapat menemukan satu pun. Namun sangat mungkin salah satu dari Anda akan mengalaminya!', 'Anda tahu apa lagi yang <kanji>sangat</kanji> sesuatu? <read>Jean</reading>s (じん). Jeans sangat mahal. Celana jeans sangat ketat. Jeans sangat populer. Jeans memiliki banyak arti.')
    RETURNING id INTO k_2408_sangat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '崇', 'memuja', 59, 11, 'Di bawah <radical>atap</radical> gunung terdapat orang-orang yang menggunakan <radical>jackhammer</radical> untuk <kanji>menyembah</kanji> para dewa. Suara dari pukulan-pukulan mereka bergema hingga ke gunung hingga ke langit tempat tinggal para dewa. Selama setiap orang menggunakan jackhammernya masing-masing, suaranya akan cukup keras untuk menjangkau mereka.', 'Sayangnya, orang-orang yang tinggal di sekitar sini juga dapat mendengar Anda dan orang lain <kanji>beribadah</kanji> di gunung dan mereka akan <reading>menuntut</reading> (すう) Anda atas kebisingan tersebut.')
    RETURNING id INTO k_2409_memuja;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '漆', 'pernis', 59, 12, '<radikal>tsunami</radikal> menghantam <radikal>pohon</radikal> dan <radikal>topi</radikal> Anda melindungi Anda dari <radikal>air</radikal>, namun topi itu sendiri kini dilapisi dengan <kanji>pernis</kanji>. Anda melepasnya dan melihat bahwa itu berkilau, keras, dan terlindungi.', 'Anda memutuskan untuk mengambil sisa air <kanji>pernis</kanji> dan menggunakannya pada furnitur Anda untuk melindunginya dari <reading>shih tzu</reading> (しつ) Anda. Sekarang ia tidak dapat lagi menggigit atau menggores atau merusak barang-barang Anda!')
    RETURNING id INTO k_2410_pernis;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '岬', 'tanjung', 59, 13, 'Anda melihat <radical>gunung</radical> berbentuk <radical>cangkang penyu</radical> mencuat ke laut. Itu adalah <kanji>jubah</kanji>! Bukan, bukan jenis yang Anda kenakan, melainkan jenis geografis. Saat Anda berada di darat, sebagian besar tanjung tampak seperti pegunungan cangkang penyu yang mencuat ke laut. Apakah Anda tahu ada jubah seperti itu di dekat tempat tinggal Anda?', 'Kamu memutuskan untuk berjalan di sepanjang <kanji>tanjung</kanji> ini karena sepertinya tempat ini sempurna untuk membuang <reading>aku</reading>lamamu di <reading>karung</reading> (みさき). Baunya mulai tercium, namun angin laut dari tanjung menarik karung daging dari tangan Anda dan terbang ke angkasa (mungkin juga ke laut).')
    RETURNING id INTO k_2411_tanjung;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '紡', 'pemintalan', 59, 14, 'Pindahkan <radical>benang</radikal> ke <radikal>arah</radikal> yang benar dan Anda akan <kanji>memutar</kanji> menjadi benang. Kemudian Anda bisa memintal benang itu menjadi sweter atau syal dengan maskot setengah tahu setengah fugu favorit Anda di atasnya!', 'Saat Anda <kanji>berputar</kanji> Anda menyadari bahwa Anda selalu ingin membuat bola <reading>busur</reading>ling (ぼう) Anda sendiri. Dan penutup bola bowling. Dan sepatu bola bowling.')
    RETURNING id INTO k_2412_pemintalan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '礁', 'karang', 59, 15, '<radical>Batu</radikal> yang tampak seperti <radikal>kalkun</radikal> <radikal>mendidih</radikal> di bawah air hanyalah <kanji>karang</kanji>.', '<kanji>Terumbu Karang</kanji> adalah tempat favorit <reading>Shou</reading>gun (しょう) saat ini. Dia duduk di samping air, dan menatap ke dalamnya selama berjam-jam.')
    RETURNING id INTO k_2413_karang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '屯', 'barak', 59, 16, 'Kanji <radikal>barak</radikal> dan kanji <kanji>barak</kanji> adalah sama!', '<kanji>Barak</kanji> cukup besar, jadi beratnya <read>ton</reading> (とん). Dan mereka mungkin membutuhkan banyak bahan untuk membangunnya.')
    RETURNING id INTO k_2414_barak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '姻', 'kawin', 59, 17, 'Anda bertemu dengan <radical>wanita</radical> yang <radical>mulutnya</radical> <radical>besar</radical> dan Anda langsung tahu bahwa inilah orang yang ingin Anda <kanji>nikahi</kanji>.', 'Kamu <kanji>menikahi</kanji> wanita ini segera dan kalian berdua langsung pergi ke <reading>penginapan</reading> (いん) bersama!')
    RETURNING id INTO k_2415_kawin;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '擬', 'meniru', 59, 18, 'Anda mencoba menggunakan <radical>jari</radical> Anda untuk melemparkan <radical>keraguan</radikal> pada orang lain dengan menggunakannya untuk <kanji>meniru</kanji> satu sama lain. Saat ini Anda menggunakan jari Anda sebagai boneka jari, meniru salah satu teman Anda dan yang lainnya.', 'Semua orang mengira teman yang ingin Anda <kanji>tiru</kanji> adalah tiruannya sekarang dan mereka memilikinya di <read>gui</reading>llotine (ぎ). Anda bahkan ragu apakah itu tiruan atau apakah jari Anda yang tiruan.')
    RETURNING id INTO k_2416_meniru;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '睦', 'ramah', 59, 19, 'Jika kamu melihat seseorang <radical>mengincar</radical>mengincar <radical>rahim</radikal> kamu, kamu mungkin akan merasa aneh dengan betapa <kanji>ramah</kanji> sikap mereka. Anda hanya membiarkan orang yang benar-benar dekat dengan Anda melihat rahim Anda. Jadi jika pria ini bersikap ramah, dia seharusnya memperkenalkan dirinya terlebih dahulu.', 'Pria <kanji>ramah</kanji> ini mendatangi Anda dan mulai memperkenalkan dirinya, "<reading>ぼく</reading>-" tetapi Anda menghentikannya. Dia menjadi terlalu bersahabat dengan rahimmu dan kamu tidak ingin mendengar siapa dia. Dia bisa ぼく pada orang lain, kamu keluar.')
    RETURNING id INTO k_2417_ramah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '閑', 'santai', 59, 20, 'Anda melihat <radical>gerbang</radical> dengan <radical>pohon</radical> tumbuh di dalamnya dan ini mengingatkan Anda bahwa Anda memerlukan lebih banyak waktu <kanji>rekreasi</kanji>. Anda berjalan ke pohon gerbang dan meringkuk di bawah dahan-dahannya. Tidak ada yang akan mengganggu Anda karena pohon menghalangi gerbang untuk digunakan.', 'Saat Anda <kanji>bersantai</kanji>tidur siang, Anda mendengar suara kasar, "Ah, kamu sudah selesai juga, ya?" Itu Jenghis <read>Khan</reading> (かん)! Dia menghabiskan waktu luangnya dengan bersantai di bawah gerbang yang ditinggalkan ini sama seperti Anda.')
    RETURNING id INTO k_2418_santai;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '曹', 'resmi', 59, 21, 'Saat musik<radical>tanah</radikal> <radikal>musik</radikal> muncul di hadapan <radikal>matahari</radikal> (publik), akhirnya menjadi <kanji>resmi</kanji>. Musik tidak benar-benar nyata kecuali orang-orang mendengarnya di luar konser rahasia underground tersebut.', 'Setelah musiknya <kanji>resmi</kanji>, Anda akan merasakannya di <reading>sou</reading>l (そう) Anda. Saat Anda mendengarkannya di luar, di bawah terik matahari, jiwa Anda akhirnya bisa mendengarnya juga.')
    RETURNING id INTO k_2419_resmi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '詠', 'menyusun', 59, 22, 'Jika Anda ingin <radikal>mengatakan</radikal> bagaimana bunyi <radikal>keabadian</radikal> Anda harus <kanji>menyusun</kanji> sebuah puisi. Atau esai. Atau sebuah lagu. <kanji>Ucapkan</kanji> pemikiran mendalam tentang keabadian dan buat semua orang yang mendengarnya terkesan.', 'Anda memutuskan untuk <kanji>menulis</kanji> puisi tentang <membaca>a</reading>jagung (えい). Biji pohon ek yang kecil adalah wadah yang sempurna bagi Anda untuk mengungkapkan bagaimana rasanya keabadian bagi Anda.')
    RETURNING id INTO k_2420_menyusun;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '卑', 'rendah', 59, 23, 'Anda <radical>jatuh</radikal> ke tanah di <radical>sawah</radikal>, dan kemudian <radikal>jatuh</radikal> di depan <radikal>salib</radikal> yang Anda simpan karena Anda mencoba menjadikan diri Anda <kanji>serendah</kanji> di hadapan Tuhan. Dia berkata untuk merendahkan diri sendiri dan ini adalah satu-satunya cara Anda dapat menafsirkannya.', 'Satu-satunya masalah tentang menjadi <kanji>rendah</kanji> adalah <membaca>dia</reading>at (ひ). Semua orang selalu memberitahumu bahwa panas meningkat, tapi tidak di sini. Sawahnya luar biasa panas... kecuali oh tidak. Apakah itu panasnya neraka?')
    RETURNING id INTO k_2421_rendah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '侮', 'membenci', 59, 24, '<radical>Setiap</radical> <radical>pemimpin</radical> akan <kanji>membenci</kanji> pengikutnya. Pada mulanya semuanya baik-baik saja dan keren, namun pada akhirnya para pengikut pemimpin akan meminta lebih banyak hal, pada akhirnya hal-hal yang konyol, dan pemimpin akan sangat membenci mereka karenanya.', 'Semakin Anda <kanji>membenci</kanji> mereka, semakin banyak <reading>boo</reading>ze (ぶ) yang Anda minum. Ini tidak cerdas dan tidak sehat, namun kebencian seperti ini berdampak pada orang-orang.')
    RETURNING id INTO k_2422_membenci;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '鋳', 'pemeran', 59, 25, 'Anda menuangkan <radical>emas</radical> cair ke <radical>tiga</radical> <radical>slide</radical> sambil melakukan <radical>pengukuran</radical> untuk membuat <kanji>cetakan</kanji> sesuatu. Apapun yang Anda casting, itu membutuhkan banyak emas (senilai tiga slide!) dan beberapa pengukuran yang sangat tepat.', 'Akhirnya, Anda mengungkapkan apa yang telah Anda <kanji>lemparkan</kanji>: patung emas <reading>Chew</reading>bacca (ちゅう). Itu adalah cetakan seukuran aslinya, itulah sebabnya Anda membutuhkan begitu banyak emas dan pengukuran yang tepat.')
    RETURNING id INTO k_2423_pemeran;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '蔑', 'cemooh', 59, 26, 'Dengan memasukkan <radical>bunga</radical> ke dalam <radical>jaring</radical>, Anda berhasil menangkap <radical>anjing</radical>! Tapi ini hanya membuat semua orang <kanji>mencemooh</kanji> Anda.', 'Anda memperhatikan <kanji>cemoohan</kanji> semua orang dan menanggapinya dengan mengatakan: "Saya <reading>bertaruh</reading> (べつ) Anda, saya bisa mendapatkan yang lain. Saya yakin Anda, saya bisa."')
    RETURNING id INTO k_2424_cemooh;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '胆', 'nyali', 59, 27, 'Jika kamu begadang terlalu lama sampai kamu melihat <radical>bulan</radical> terbenam dan <radical>fajar</radical> datang, orang akan mengatakan kamu punya <kanji>nyali</kanji> yang serius. Butuh nyali untuk begadang selarut itu. Lebih khusus lagi, dibutuhkan <kanji>kandung empedu</kanji> yang kuat. Kantung empedu Anda sensitif terhadap perubahan tidur lho, jadi Anda berisiko besar jika tetap seperti itu.', 'Kamu tetap terjaga di luar begitu lama, hanya untuk membuktikan bahwa kamu mempunyai <kanji>nyali</kanji> dan <kanji>kandung empedu</kanji> yang kuat, bahwa kamu juga mendapatkan <reading>tan</reading> (たん) yang manis!')
    RETURNING id INTO k_2425_nyali;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '浪', 'berjalan-jalan', 59, 28, '<radikal>tsunami</radikal> yang <radikal>baik</radikal>. Makhluk dongeng ini belum pernah terlihat, namun Anda <kanji>berkeliaran</kanji> di daratan untuk mencarinya.', 'Saat Anda <kanji>berkeliaran</kanji>, Anda menemukan sebuah petunjuk. Itu adalah <reading>telur</reading> ikan (ろう).')
    RETURNING id INTO k_2426_berjalan_jalan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '禍', 'kejahatan', 59, 29, 'Seorang <radikal>roh</radikal> yang memakai dua <radikal>kumis</radikal> pastilah <kanji>jahat</kanji>. Semua orang tahu kumis membuatmu jahat, tapi dua? Dan dalam semangat? Yup, benar-benar jahat.', 'Anda sedang mengamati roh kumis <kanji>jahat</kanji> yang mulai melayang ke arah <reading>ca</reading>r (か) Anda. Dan itu... hei! Ini merusak mobil Anda! Anda tahu orang ini jahat!')
    RETURNING id INTO k_2427_kejahatan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '酪', 'produk-susu', 59, 30, 'Anda hanya dapat memberikan <radical>ciuman</radical> <radical>alkohol</radical> kepada <kanji>produk susu</kanji>. Jika Anda menambahkan lebih dari satu ciuman, produk susu akan mengental dan Anda tidak akan bisa meminumnya lagi. Bleh.', '<kanji>Susu</kanji> tidak disimpan bersama minuman lain, melainkan harus diletakkan di <read>rak</reading> (らく). Saya harap Anda telah menggunakan rak produk susu untuk menyimpan produk susu Anda. Jika belum, Anda harus segera mendapatkannya!')
    RETURNING id INTO k_2428_produk_susu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '慶', 'mengucapkan-selamat', 59, 31, 'Jika seorang pilot berhasil mendarat di bawah <radical>kanopi</radikal> dengan <radical>helikopter</radikal> yang ditusuk dengan <radikal>duri</radikal> ke samping di <radikal>jantung</radikal> <radikal>musim dingin</radikal> Anda harus <kanji>mengucapkan selamat</kanji> kepada mereka! Orang harus selalu diberi ucapan selamat karena telah melakukan hal baik, dan ini adalah salah satu hal terbaik yang pernah Anda dengar!', '<kanji>Ucapkan selamat</kanji> kepada pilot dengan <reading>ca</reading>ke (けい)!')
    RETURNING id INTO k_2430_mengucapkan_selamat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '亜', 'asia', 59, 32, 'Kanji dan radikal yang terlihat seperti ini sama persis. Keduanya adalah <kanji>Asia</kanji>. 

Ini juga bisa berarti <kanji>sub-</kanji>. Seperti di subtropis, subspesies, submanusia… Sub-semacam itu! Jika tidak ada dalam nama tempat, 亜 biasanya menggunakan subartinya.', 'Apa suara pertama di <kanji>Asia</kanji>? Itu <membaca>A</membaca> (あ). Bagus dan mudah!')
    RETURNING id INTO k_2431_asia;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '汰', 'memilih', 59, 33, 'Jika <radical>tsunami</radical> yang menuju ke desa Anda adalah <radical>gemuk</radikal> Anda harus mencoba <kanji>memilih</kanji> tsunami lain yang akan dihantam. Anda tidak ingin memilih tsunami besar karena menimbulkan lebih banyak kerusakan.', 'Jika Anda kesulitan <kanji>memilih</kanji>mana yang paling sedikit lemaknya, periksa saja tsunami mana yang memakan <reading>ta</reading>cos (た). Hanya tsunami besar yang akan memakannya, jadi carilah yang tanpa taco.')
    RETURNING id INTO k_2432_memilih;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '梓', 'birch-jepang', 59, 34, 'Jenis <radical>pohon</radikal> apa yang <radikal>pedas</radikal>? <kanji>Birch Jepang</kanji>, atau <kanji>birch</kanji>, tentu saja. Tidak ada yang lebih pedas dari pohon birch Jepang!', 'Anda hanya dapat menebang <kanji>birch Jepang</kanji> menggunakan <reading>gergaji kebun binatang</reading> (あずさ) karena gergaji biasa tidak dapat menangani betapa pedasnya pohon-pohon ini.')
    RETURNING id INTO k_2433_birch_jepang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '沙', 'pasir', 59, 35, 'Orang mengira <radikal>tsunami</radikal> hanya terbuat dari air, padahal ada <radikal>beberapa</radikal> potongan <kanji>pasir</kanji> di dalamnya. Sebenarnya ada lebih banyak pasir di lautan daripada yang diperkirakan kebanyakan orang. Dan tsunami tidak hanya melibatkan air dan hiu. Beberapa butir pasir akan selalu menyelinap masuk.', 'Anda sudah mempelajari cara membaca 砂, kanji lainnya untuk <kanji>pasir</kanji>. Seharusnya mudah untuk mengingat yang ini juga, karena ini juga さ!')
    RETURNING id INTO k_2434_pasir;
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2371_duka, 'Duka', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2371_duka, 'き', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2371_duka, 'い', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2400_transisi, 'Transisi', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2400_transisi, 'せん', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2400_transisi, 'うつ', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2400_transisi, 'みやこがえ', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2401_kikuk, 'Kikuk', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2401_kikuk, 'Tidak terampil', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2401_kikuk, 'せつ', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2401_kikuk, 'つたな', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2402_jalur_gunung, 'Jalur Gunung', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2402_jalur_gunung, 'Paling buruk', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2402_jalur_gunung, 'とうげ', true, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2403_disengaja, 'Disengaja', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2403_disengaja, 'とく', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2403_disengaja, 'あつ', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2405_perempuan, 'Perempuan', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2405_perempuan, 'めす', true, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2405_perempuan, 'め', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2405_perempuan, 'めん', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2405_perempuan, 'し', false, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2406_menderita, 'Menderita', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2406_menderita, 'こら', true, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2406_menderita, 'た', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2406_menderita, 'かん', false, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2406_menderita, 'たん', false, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2407_pertunjukan, 'Pertunjukan', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2407_pertunjukan, 'ぎん', true, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2408_sangat, 'Sangat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2408_sangat, 'Besar', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2408_sangat, 'じん', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2408_sangat, 'はなは', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2409_memuja, 'Memuja', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2409_memuja, 'Memuja', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2409_memuja, 'すう', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2409_memuja, 'あが', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2410_pernis, 'Pernis', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2410_pernis, 'Pernis', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2410_pernis, 'しつ', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2410_pernis, 'うるし', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2411_tanjung, 'Tanjung', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2411_tanjung, 'みさき', true, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2411_tanjung, 'こう', false, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2412_pemintalan, 'Pemintalan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2412_pemintalan, 'Putaran', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2412_pemintalan, 'ぼう', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2412_pemintalan, 'つむ', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2413_karang, 'karang', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2413_karang, 'しょう', true, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2414_barak, 'Barak', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2414_barak, 'とん', true, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2415_kawin, 'Kawin', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2415_kawin, 'いん', true, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2416_meniru, 'Meniru', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2416_meniru, 'ぎ', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2416_meniru, 'まが', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2416_meniru, 'もど', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2417_ramah, 'Ramah', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2417_ramah, 'ぼく', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2417_ramah, 'もく', false, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2417_ramah, 'むつ', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2418_santai, 'Santai', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2418_santai, 'かん', true, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2419_resmi, 'Resmi', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2419_resmi, 'そう', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2419_resmi, 'ぞう', false, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2419_resmi, 'つかさ', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2419_resmi, 'ともがら', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2419_resmi, 'へや', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2420_menyusun, 'Menyusun', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2420_menyusun, 'Membaca', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2420_menyusun, 'えい', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2420_menyusun, 'よ', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2420_menyusun, 'うた', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2421_rendah, 'Rendah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2421_rendah, 'Basis', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2421_rendah, 'ひ', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2421_rendah, 'いや', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2422_membenci, 'Membenci', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2422_membenci, 'ぶ', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2422_membenci, 'あなず', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2422_membenci, 'あなど', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2423_pemeran, 'Pemeran', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2423_pemeran, 'Pengecoran', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2423_pemeran, 'ちゅう', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2423_pemeran, 'い', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2424_cemooh, 'Cemooh', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2424_cemooh, 'Menelantarkan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2424_cemooh, 'べつ', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2424_cemooh, 'さげす', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2425_nyali, 'Nyali', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2425_nyali, 'Kantong empedu', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2425_nyali, 'たん', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2425_nyali, 'きも', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2426_berjalan_jalan, 'Berjalan-jalan', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2426_berjalan_jalan, 'ろう', true, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2427_kejahatan, 'Kejahatan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2427_kejahatan, 'Kemalangan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2427_kejahatan, 'か', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2427_kejahatan, 'わざわい', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2428_produk_susu, 'Produk susu', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2428_produk_susu, 'らく', true, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2430_mengucapkan_selamat, 'Mengucapkan selamat', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2430_mengucapkan_selamat, 'けい', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2430_mengucapkan_selamat, 'よろこ', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2431_asia, 'Asia', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2431_asia, 'Sub-', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2431_asia, 'あ', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2431_asia, 'つ', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2432_memilih, 'Memilih', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2432_memilih, 'た', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2432_memilih, 'たい', false, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2432_memilih, 'おご', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2432_memilih, 'にご', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2432_memilih, 'よな', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2433_birch_jepang, 'Birch Jepang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2433_birch_jepang, 'Birch', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2433_birch_jepang, 'あずさ', true, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2433_birch_jepang, 'し', false, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2434_pasir, 'Pasir', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2434_pasir, 'さ', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2434_pasir, 'しゃ', false, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2434_pasir, 'すな', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2434_pasir, 'よなげる', false, 'kunyomi');

  -- 3. VOCABULARIES
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '回忌', 'peringatan-kematian', 59, 36, '<kanji>saat</kanji> saat Anda berada dalam <kanji>berkabung</kanji> setiap tahun adalah untuk <vocabulary>peringatan kematian</vocabulary> orang yang Anda cintai. Mereka datang lagi setiap tahun. Penting bagi Anda untuk mengingat orang yang Anda cintai saat ini.

Anda akan sering melihat ini digunakan dengan angka sebelum 回忌, yang menunjukkan hari jadi tertentu. Namun, Anda sebenarnya mulai menghitung 回忌 Anda dimulai dengan periode berkabung pertama sekitar waktu kematian orang tersebut, yang merupakan 一回忌. Oleh karena itu, 二回忌 biasanya diterjemahkan sebagai "peringatan kematian pertama", 三回忌 sebagai "peringatan kematian kedua", dan seterusnya.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8453_peringatan_kematian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '忌', 'duka', 59, 37, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan kanji yang Anda pelajari, artinya Anda tahu bacaannya!')
    RETURNING id INTO v_8454_duka;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '禁忌', 'tabu', 59, 38, '<kanji>Larangan</kanji> terhadap sesuatu dengan hukuman yang sangat berat sehingga Anda akan berakhir dengan <kanji>berkabung</kanji> setelahnya adalah <vocabulary>tabu</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8455_tabu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '一周忌', 'peringatan-pertama-kematian', 59, 39, 'Ingat bagaimana Anda mengetahui bahwa 一周 berarti "sekali saja?" Nah, jika Anda <kanji>berduka</kanji> satu kali seperti ini dalam setahun, itu karena itu adalah <vocabulary>peringatan pertama kematian</vocabulary> salah satu anggota keluarga. Mungkin karena kematian ibumu, kakekmu, atau ikan masmu, ini adalah tahun pertama sejak kematian mereka.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8456_peringatan_pertama_kematian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '忌まわしい', 'tidak-menyenangkan', 59, 40, 'Ini adalah kanji tunggal dengan しい di akhir, artinya merupakan kata sifat. Apa bentuk kata sifat dari <kanji>berkabung</kanji>? Itu <vocabulary>tidak menyenangkan</vocabulary> atau <vocabulary>menjijikkan</vocabulary>. Tidak ada yang bilang berkabung itu menyenangkan.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Duka cita Anda terutama <vocabulary>tidak menyenangkan</vocabulary> karena <reading>ea</reading>gle (い) peliharaan Anda itulah yang Anda duka. Orang tuamu tidak mengizinkanmu menguburkannya jadi kamu hanya menatap tubuh elangnya yang sudah mati dan berumur seminggu. Sebenarnya itu sangat <vocabulary>menjijikkan</vocabulary>.')
    RETURNING id INTO v_8457_tidak_menyenangkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '早乙女', 'gadis-penanam-padi', 59, 41, '<kanji>wanita</kanji> muda yang menanam padi dari <kanji>dini hari</kanji> hingga <kanji>akhir</kanji> sore hari adalah <vocabulary>gadis penanam padi</vocabulary>. Anda akan melihat mereka di luar sana sepanjang hari, dari fajar hingga senja, menanam, merawat, dan memetik padi.

Ini juga merupakan nama keluarga yang umum, dan pada kesempatan langka, juga merupakan nama pemberian. Beberapa orang terkenal dengan nama ini termasuk penulis fiksi sejarah Saotome Mitsugu (早乙女 貢), mantan pegulat profesional, model, dan idola Saotome Miku (早乙女 未来), dan aktor panggung dan layar Saotome Taichi (早乙女 太一).', 'Ini pengecualian yang sangat aneh, maaf. Anda sudah mempelajari bacaan ini, tapi itu seperti... variasi yang aneh.

Ambil さ dari 早速, おつ menjadi おと, dan kemudian 女 kun''yomi め (hei itu normal!). Dan Anda mendapatkan さおとめ. Anda mungkin perlu menghafal yang ini saja.')
    RETURNING id INTO v_8515_gadis_penanam_padi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '東亜', 'asia-timur', 59, 42, '<kanji>Timur</kanji> <kanji>Asia</kanji> adalah <vocabulary>Asia Timur</vocabulary>, atau secara historis dikenal sebagai <vocabulary>Timur</vocabulary>.

東亜 adalah cara lama untuk mengatakan "Asia Timur", yang mencakup negara-negara seperti Jepang, Tiongkok, dan Korea. Saat ini, orang biasanya mengucapkan 東アジア, namun terkadang Anda masih melihat 東亜 dalam tulisan lama dan sebagai bagian dari kata benda.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8516_asia_timur;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '侮蔑', 'penghinaan', 59, 43, '<kanji>Membenci</kanji> seseorang dan <kanji>cemoohan</kanji> Anda terhadapnya akan berubah menjadi <vocabulary>penghinaan</vocabulary> sepenuhnya.

侮蔑 adalah kata formal, terutama digunakan secara tertulis, yang menggambarkan kata-kata, nada, atau perilaku yang menghina dan merendahkan. Misalnya, ungkapan yang menghina dapat disebut 侮蔑的な表現, dan ucapan yang secara terang-terangan meremehkan seseorang dapat disebut sebagai 侮蔑を込めた言い方.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8517_penghinaan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '侮る', 'untuk-membenci', 59, 44, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>meremehkan</kanji>, jadi versi kata kerjanya adalah <vocabulary>to despise</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Pikirkan semua hal yang Anda mulai <vocabulary>dibenci</vocabulary> dan <vocabulary>diremehkan</vocabulary>. Sekarang buatlah beberapa tes <reading>anekdo</reading> (あなど) untuk masing-masing hal tersebut. Pastikan untuk berpikir di kepala Anda, "Saya membuat anekdot untuk hal-hal yang saya hina, mengapa saya membuat anekdot?"')
    RETURNING id INTO v_8518_untuk_membenci;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '侮辱', 'menyinggung', 59, 45, 'Kamu <kanji>sangat membenci</kanji> orang ini sehingga kamu ingin <kanji>mempermalukan</kanji> dia sehingga kamu <vocabulary>menghina</vocabulary> dia di depan umum. Itu tidak terlalu bagus, tapi sepertinya itu membuatnya malu. Saya kira kamu menang.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8519_menyinggung;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '凸凹', 'tidak-rata', 59, 46, 'Ingat bagaimana Anda mengetahui bahwa 凹凸 berarti "tidak rata?" Kita bisa memutar sesuatu yang tidak rata dan tetap <vocabulary>tidak rata</vocabulary>! Agak mundur, seperti kata ini!', 'Namun, hanya karena maknanya tetap sama saat Anda membaliknya, bukan berarti bacaannya tetap sama. Melakukan hal itu justru membuat bacaannya berubah dari bacaan on''yomi menjadi kun''yomi! Anda belum mempelajari keduanya, jadi inilah mnemonik untuk membantu Anda:

Ketika Anda memiliki bagian cembung terlebih dahulu dan bagian cekung kedua pada sesuatu yang <vocabulary>tidak rata</vocabulary> maka hasilnya akan terlihat seperti <reading>deco box</reading> (でこぼこ). Sebuah kotak art deco. Ada banyak barang yang menempel di luar, tapi Anda bisa membukanya dan menaruhnya di dalam.')
    RETURNING id INTO v_8520_tidak_rata;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '凹む', 'menjadi-penyok', 59, 47, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>cekung</kanji>, tetapi "cekung" tidak terlalu masuk akal. Jadi versi kata kerjanya adalah <vocabulary>mendapatkan penyok</vocabulary>. Atau, lebih tepatnya, <vocabulary>merasa sedih</vocabulary>.

凹む digunakan dalam arti fisik ketika permukaan sesuatu penyok, roboh ke dalam, atau memiliki semacam depresi berongga. Itu bisa berupa apa saja, mulai dari mobil yang penyok hingga perut yang bugar dan langsing (seperti timbunan lemak yang "penyok").

Dalam arti kiasan, 凹む digunakan ketika Anda sedang merasa sedih. Hampir seperti hatimu penyok, lho? Kita semua memiliki hari-hari itu.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda:

Anda merasa seperti <vocabulary>mulai menjadi penyok</vocabulary> ketika Anda memiliki <reading>hea</reading>d <reading>co</reading>ld (へこ). Seperti semua pilek yang membuat penyok di sisi hidung Anda. Sangat mudah untuk <vocabulary>merasa sedih</vocabulary> ketika Anda sedang sakit kepala juga, namun cobalah untuk tidak membiarkan hal itu mempengaruhi Anda.')
    RETURNING id INTO v_8521_menjadi_penyok;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '卑屈', 'patuh', 59, 48, 'Orang <kanji>rendahan</kanji> yang <kanji>menyerah</kanji> kepada semua orang sebenarnya <vocabulary>tunduk</vocabulary>. Mereka akan melakukan apa pun yang diperintahkan orang lain karena mereka tidak punya keberanian untuk bersuara dan hanya mengatakan tidak.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8522_patuh;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '卑劣', 'berarti', 59, 49, 'Jika kamu memperlakukan seseorang dengan <kanji>rendah</kanji> karena kamu menganggap mereka <kanji>lebih rendah</kanji> darimu, maka kamu adalah orang yang <vocabulary>jahat</vocabulary>. Polos dan sederhana.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8523_berarti;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '吟味', 'pengawasan', 59, 50, 'Jika Anda mencicipi udara di <kanji>resital</kanji>, <kanji>rasa</kanji> akan terasa seperti <vocabulary>scrutiny</vocabulary>. Itulah yang dilakukan semua orang saat mereka menonton. Mereka tidak benar-benar ingin mendengarkan Anda, mereka hanya ingin menghakimi Anda.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8526_pengawasan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '堪える', 'untuk-bertahan', 59, 51, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>bertahan</kanji>, jadi versi kata kerjanya adalah <vocabulary>bertahan</vocabulary> atau <vocabulary>menanggung</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda mempelajari bacaan ini ketika Anda mempelajari kanji!')
    RETURNING id INTO v_8527_untuk_bertahan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '婚姻', 'pernikahan', 59, 52, '<kanji>Menikah</kanji> dan <kanji>menikah</kanji> tetap membuat <vocabulary>menikah</vocabulary>. Selamat! Wah! Hore!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8528_pernikahan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '駐屯', 'ditempatkan', 59, 53, 'Tentara <kanji>residen</kanji> tinggal di <kanji>barak</kanji> ketika mereka <vocabulary>ditempatkan</vocabulary> di negara lain. Mereka harus melayani <vocabulary>occupancy</vocabulary> mereka selama jangka waktu tertentu sebelum mereka dapat kembali ke rumah.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8529_ditempatkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '岬', 'tanjung', 59, 54, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.

岬 artinya <vocabulary>tanjung</vocabulary>, yaitu sebidang tanah yang menjorok ke laut. Meskipun 崎 sebagian besar digunakan dalam nama tempat dan kata majemuk, 岬 dapat digunakan sebagai kata benda yang berdiri sendiri, meskipun Anda juga melihatnya dalam nama tempat seperti 宗谷岬 (Cape Sōya).', 'Bacaannya sama dengan kanji yang Anda pelajari, artinya Anda tahu bacaannya!')
    RETURNING id INTO v_8530_tanjung;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '峠', 'jalur-gunung', 59, 55, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.

峠 mengacu pada jalur gunung, dan sering kali secara spesifik merupakan titik tertinggi dari <vocabulary>jalur gunung</vocabulary>, yang melewati antara dua gunung. Jika digunakan secara kiasan, ini berarti <kosakata>yang terburuk</vocabulary>, seperti momen tersulit dalam peristiwa tertentu, seperti puncak krisis kesehatan atau hari terpanas saat gelombang panas.', 'Anda mendaki sepanjang <vocabulary>jalur gunung</vocabulary> dan melihat <reading>To</reading>kyo <reading>ge</reading>cko (とうげ) kecil yang menggemaskan memanjat di mana-mana. Mereka mendaki bersamamu sekarang!')
    RETURNING id INTO v_8531_jalur_gunung;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '崇高', 'keagungan', 59, 56, 'Anda <kanji>menyembah</kanji> seseorang yang <kanji>tinggi</kanji> di atas Anda sehingga Anda pasti akan kagum dengan <vocabulary>keagungan</vocabulary> mereka. <kosakata>kebangsawanan</vocabulary> mereka adalah alasan mengapa Anda merasa harus memuja mereka sejak awal.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8532_keagungan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '崇拝', 'memuja', 59, 57, '<kanji>Ibadah</kanji> di pagi hari, <kanji>ibadah</kanji> di malam hari, <vocabulary>ibadah</vocabulary> sepanjang hari! Sembahlah poster WaniKani itu. Lakukan itu.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8533_memuja;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '惜しまない', 'tanpa-menghemat', 59, 58, 'Ingat bagaimana Anda mengetahui bahwa 惜しむ berarti "berhemat?" Nah, jika Anda membuatnya menjadi negatif dengan ない, maka Anda melakukannya <vocabulary>tanpa menyisakan</vocabulary> apa pun.', 'Karena kata ini terdiri dari satu kanji, kemungkinan besar menggunakan bacaan kun''yomi. Anda sudah mempelajari bacaan ini, jadi Anda seharusnya sudah bisa membaca ini juga!')
    RETURNING id INTO v_8534_tanpa_menghemat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '慶事', 'peristiwa-yang-menguntungkan', 59, 59, 'Jika Anda bisa <kanji>mengucapkan selamat</kanji> kepada seseorang atas <kanji>kejadian</kanji> dalam hidupnya, itu pasti <vocabulary>peristiwa yang menguntungkan</vocabulary>. Anda akan mengingat peristiwa bahagia ini untuk waktu yang sangat lama.

慶事 adalah kata yang sangat formal yang digunakan untuk merujuk pada peristiwa baik, seperti pernikahan, kelahiran anak, atau perayaan penting lainnya. Anda mungkin menemukan 慶事 dalam pengumuman resmi atau pesan ucapan selamat resmi.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8535_peristiwa_yang_menguntungkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '弁慶', 'benkei', 59, 60, 'Anda harus <kanji>mengucapkan selamat</kanji> kepada seseorang yang berbicara banyak <kanji>dialek</kanji> karena mereka harus benar-benar <vocabulary>orang yang kuat</vocabulary>, sama seperti Tuan <vocabulary>Benkei</vocabulary>. Anda pikir belajar bahasa Jepang itu sulit sekarang, tunggu saja sampai Anda mendengar Osaka-ben dan Hokkaido-ben. Dibutuhkan orang yang sangat kuat — seorang Benkei — untuk mempelajari semua dialek tersebut, jadi ucapkan selamat kepada mereka dan beri tahu mereka betapa kuatnya mereka!

弁慶 adalah nama tokoh sejarah Jepang yang sangat kuat, jadi Benkei adalah padanan bahasa Jepang untuk Hercules atau Achilles dalam bahasa Barat.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8536_benkei;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '慶祝', 'selamat', 59, 61, 'Anda <kanji>mengucapkan selamat</kanji> kepada seseorang dan <kanji>merayakannya</kanji> dengan mengucapkan <vocabulary>selamat</vocabulary> dan mengadakan <vocabulary>perayaan</vocabulary>!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8537_selamat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '慶弔', 'selamat-dan-belasungkawa', 59, 62, 'Jika Anda mengucapkan <kanji>selamat</kanji> dan juga menyampaikan <kanji>belasungkawa</kanji> maka itu adalah <vocabulary>selamat dan belasungkawa</vocabulary>. Cukup mudah, bukan?', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8538_selamat_dan_belasungkawa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '憂き目', 'kepahitan', 59, 63, 'Jika <kanji>kesedihan</kanji> ada di <kanji>mata</kanji> Anda, itu berarti Anda telah melalui banyak <vocabulary>kepahitan</vocabulary> dan <vocabulary>kesengsaraan</vocabulary>. Anda selalu bisa melihat di mata seseorang jika mereka pernah mengalaminya juga.

Anda paling sering melihat kata ini dalam 憂き目を見る dan 憂き目に合う, yang keduanya berarti "mengalami <vocabulary>kesulitan</vocabulary>".', 'Kata ini menggunakan salah satu bacaan kun''yomi untuk kanjinya. Anda belum mempelajari bacaan kun''yomi ini untuk 憂, jadi inilah mnemonik untuk membantu Anda mengingatnya:

Mengapa <vocabulary>kepahitan</vocabulary> di matamu? Anda mengunjungi restoran <reading>u</reading>ni (う) yang terkenal, namun ternyata restoran tersebut tutup dan terkunci. Dan sebagai pencinta universitas, Anda tidak tahu <kosakata>kesengsaraan</vocabulary> yang lebih besar daripada melewatkan beberapa universitas.')
    RETURNING id INTO v_8539_kepahitan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '稚拙', 'tidak-terampil', 59, 64, 'Orang <kanji>kikuk</kanji> dan <kanji>tidak dewasa</kanji> pada akhirnya menjadi <vocabulary>tidak terampil</vocabulary>. Anda tidak dapat melakukan pekerjaan Anda jika Anda selalu menjatuhkan barang dan merengek, bukan? Mereka biasanya juga sangat <vocabulary>kekanak-kanakan</vocabulary>, jika Anda belum bisa menebaknya.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8542_tidak_terampil;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '模擬', 'imitasi', 59, 65, 'Makanan yang <kanji>meniru</kanji> merupakan <kanji>tiruan</kanji> dari beberapa makanan LAINNYA, adalah <vocabulary>imitasi</vocabulary> yang lebih buruk lagi. Anda tidak ingin makan itu. Itu <vocabulary>palsu</vocabulary>! Ini <vocabulary>mengejek</vocabulary>makanan asli! Itu mungkin terbuat dari debu dan karton!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8543_imitasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '擬装', 'samaran', 59, 66, 'Gunakan <kanji>pakaian</kanji> yang <kanji>meniru</kanji> lingkungan sekitar Anda untuk menciptakan <vocabulary>penyamaran</vocabulary>. Atau kenakan <vocabulary>kamuflase</vocabulary> agar tidak ada yang bisa menemukan Anda di Walmart.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8544_samaran;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '取り敢えず', 'untuk-sementara', 59, 67, 'Jika Anda hanya <kanji>mengambil</kanji> tanpa <kanji>berani</kanji>, maka Anda hanya dapat mengambil sesuatu <vocabulary>untuk saat ini</vocabulary>. Karena Anda tidak cukup berani untuk menguasainya sepenuhnya, Anda hanya memilikinya <vocabulary>untuk saat ini</vocabulary>.

取り敢えず adalah ungkapan biasa dan biasa yang akan Anda dengar sepanjang waktu. Orang-orang menggunakannya ketika membuat keputusan tentatif atau mengambil tindakan sementara, dan sering kali hal ini membawa kesan "kita akan memikirkan sisanya nanti". Perhatikan kata ini biasanya ditulis dalam kana sebagai とりあえず.', 'Kata ini menggunakan bacaan kun''yomi untuk kanjinya. Anda sudah mempelajari keduanya, jadi Anda seharusnya bisa membacanya tanpa masalah!')
    RETURNING id INTO v_8545_untuk_sementara;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '法曹', 'pengacara', 59, 68, '<kanji>resmi</kanji> <kanji>metode</kanji> dalam melakukan apa pun memerlukan menyewa <vocabulary>pengacara</vocabulary>. Mereka harus ada di sana ketika Anda menandatangani formulir atau menuntut orang, atau hal itu tidak resmi sama sekali.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8546_pengacara;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', 'ご無沙汰', 'mengabaikan-kontak', 59, 69, 'Jika Anda <kanji>memilih</kanji> untuk berbicara <kanji>dengan apa pun</kanji> selain <kanji>pasir</kanji> dalam waktu yang sangat lama, Anda <vocabulary>abaikan untuk menghubungi</vocabulary> orang lain. Kerabatmu merindukanmu! Berhenti berbicara dengan pasir dan hubungi mereka!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8547_mengabaikan_kontak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '流浪', 'pergelandangan', 59, 70, '<kanji>Berkeliaran</kanji> dari <kanji>aliran</kanji> ke streaming lainnya dan Anda akan benar-benar terbiasa dengan <vocabulary>gelandangan</vocabulary>. Anda akan sangat menyukai <vocabulary>mengembara</vocabulary> sehingga Anda akan beralih ke <vocabulary>nomadisme</vocabulary>. Langit terbuka adalah rumah Anda!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Karena Anda belum mempelajari bacaan khusus ini untuk 流, berikut ini mnemonik untuk membantu Anda:

Kalau dipikir-pikir, <vocabulary>gelandangan</vocabulary> itu semacam <reading>loo</reading>phole (る). Tidak ada yang tahu di mana Anda berada, sehingga sulit untuk melacak Anda.')
    RETURNING id INTO v_8548_pergelandangan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '浪費', 'limbah', 59, 71, 'Jika Anda <kanji>berkeliaran</kanji> tanpa melakukan apa pun atas <kanji>biaya</kanji> Anda sendiri, hal ini akan sangat membuang-buang uang. Ini tidak seperti Anda sedang melakukan atau membeli sesuatu yang penting, Anda hanya berkeliaran saja.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8549_limbah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '放浪', 'pengembaraan', 59, 72, '<kanji>Lepaskan</kanji> ikatan duniawi Anda dan <kanji>kelilingi</kanji> dunia. Anda akan terbiasa <vocabulary>mengembara</vocabulary> dan Anda akan menghabiskan sisa hari-hari Anda <vocabulary>menjelajah</vocabulary> dunia sampai Anda mati. Sungguh hidup yang luar biasa! Tapi Anda hanya bisa melakukannya jika Anda melepaskan segalanya.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8550_pengembaraan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '浪人', 'ronin', 59, 73, '<kanji>orang</kanji> yang <kanji>mengembara</kanji> karena tuannya terbunuh dikenal sebagai <vocabulary>ronin</vocabulary>, atau <vocabulary>samurai tak bertuan</vocabulary>. Sekarang mereka sama seperti kita semua, tapi mereka tidak bisa berhenti mengembara karena mereka tidak punya tempat tinggal.

Di Jepang modern, 浪人 mengacu pada siswa yang gagal dalam ujian masuk universitas dan menunggu kesempatan berikutnya untuk mencoba lagi.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8551_ronin;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '浮浪者', 'gelandangan', 59, 74, '<kanji>Seseorang</kanji> yang <kanji>mengambang</kanji> dan <kanji>berkeliaran</kanji> dari satu tempat ke tempat lain adalah <vocabulary>gelandangan</vocabulary>. Mereka sebenarnya tidak punya rumah, tapi mereka tetap berada di sekitar rumah Anda. Agak menjengkelkan. (Kata ini memiliki konotasi negatif, Anda tidak akan menggunakannya untuk seseorang yang hanya tunawisma, kecuali Anda benar-benar jahat.)', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda belum mempelajari bacaan ini untuk 浮, jadi inilah mnemonik untuk membantu Anda:

Semua <vocabulary>gelandangan</vocabulary> yang Anda kenal adalah <reading>foo</reading>ls (ふ). Mereka baru saja meninggalkan rumahnya dan sekarang mereka melayang di sekitar kota Anda tanpa alasan. Anda bertanya mengapa dan mereka mengangkat bahu. Anda belum pernah melihat definisi bodoh yang lebih baik dalam hidup Anda!')
    RETURNING id INTO v_8552_gelandangan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '漆', 'pernis', 59, 75, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Karena kata ini terdiri dari satu kanji, kemungkinan besar menggunakan bacaan kun''yomi. Anda tidak mempelajari bacaan ini, jadi inilah mnemonik untuk membantu Anda: 

Kamu membuat <vocabulary>lacquer</vocabulary> dari <reading>u</reading>ni <reading>roo</reading>t <reading>sh*</reading>t (うるし). Anda harus masuk jauh ke dalam uni sampai ke akarnya dan menggosokkannya ke dalam pasta untuk membuat pernis. Lalu gosokkan pada benda kayu! Hore! Uni root sial!')
    RETURNING id INTO v_8553_pernis;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '漆器', 'barang-barang-pernis', 59, 76, '<kanji>Pernis</kanji> <kanji>wadah</kanji> disebut <vocabulary>Lacquerware</vocabulary>. Mangkuk cantik yang kamu makan? Kilauan itu karena pernis!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8554_barang_barang_pernis;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '漆黒', 'hitam-legam', 59, 77, '<kanji>Pernis</kanji> <kanji>hitam</kanji> terlihat <vocabulary>hitam legam</vocabulary>, atau <vocabulary>hitam pekat</vocabulary>. Warnanya hitam seperti hitam!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8555_hitam_legam;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '甚大', 'sangat-luas', 59, 78, 'Cara lain untuk mengatakan sesuatu <kanji>sangat</kanji> <kanji>besar</kanji> adalah dengan mengatakan itu <vocabulary>sangat besar</vocabulary> atau <vocabulary>sangat besar</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8559_sangat_luas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '甚だ', 'sangat', 59, 79, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Karena kata ini terdiri dari satu kanji, kemungkinan besar menggunakan bacaan kun''yomi. Anda tidak mempelajari bacaan ini, jadi inilah mnemonik untuk membantu Anda:

Ketika seseorang mulai berbicara dalam bahasa yang <vocabulary>sangat</vocabulary> berbunga-bunga, Anda pasti akan mengejek: "<reading>花 — Hah</reading> (はなは)!" Bagi Anda, berbicara seperti itu terasa sangat megah, dan Anda lebih suka jika orang lain melakukannya dengan sederhana daripada mencoba <vocabulary>berlebihan</vocabulary> memperindah pembicaraan mereka.')
    RETURNING id INTO v_8560_sangat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '親睦', 'persahabatan', 59, 80, 'Jika <kanji>orang tua</kanji> cukup <kanji>ramah</kanji> Anda dapat membentuk <vocabulary>persahabatan</vocabulary> dengan mereka, bukan hanya ikatan anak/orang tua.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8561_persahabatan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '暗礁', 'karang', 59, 81, '<kanji>gelap</kanji> <kanji>terumbu karang</kanji> tetaplah <vocabulary>terumbu karang</vocabulary>. Letaknya sangat dalam di bawah air jadi agak gelap di bawahnya. Oleh karena itu bisa juga disebut <vocabulary>sunken reef</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8562_karang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '環礁', 'atol', 59, 82, '<kanji>terumbu karang</kanji> yang berbentuk <kanji>lingkaran</kanji> adalah <a href="http://en.wikipedia.org/wiki/Atoll" target="_blank" rel="noreferrer noopener"><vocabulary>atoll</vocabulary></a>. Jika Anda belum tahu apa itu, itu adalah <vocabulary>terumbu karang berbentuk lingkaran</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8563_atol;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '岩礁', 'karang', 59, 83, '<kanji>terumbu karang</kanji> yang terbuat dari <kanji>batu besar</kanji> masih merupakan <vocabulary>terumbu karang</vocabulary>, namun terbuat dari <vocabulary>batuan yang tenggelam</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8564_karang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '禍根', 'akar-kejahatan', 59, 84, '<kanji>Akar</kanji> kejahatan</kanji> adalah <vocabulary>akar kejahatan</vocabulary>. Itu adalah <vocabulary>sumber kejahatan</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8565_akar_kejahatan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '戦禍', 'kerusakan-perang', 59, 85, 'Salah satu hal paling <kanji>jahat</kanji> tentang <kanji>perang</kanji> adalah <vocabulary>kerusakan perang</vocabulary> yang terjadi selama perang. Seluruh daerah pedesaan, kota, dan banyak orang bisa mati. Jadi menurut saya <kosakata>kerusakan akibat perang</vocabulary> adalah hal yang paling jahat dalam perang. Periode.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8566_kerusakan_perang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '危篤', 'kondisi-kritis', 59, 86, 'Jika seseorang <kanji>berbahaya</kanji> sehingga mereka <kanji>sengaja</kanji> menyakiti Anda, Anda akan berada dalam <vocabulary>kondisi kritis</vocabulary>. Ini bukan kecelakaan, mereka tahu apa yang mereka lakukan dan tidak ketinggalan. Sekarang Anda <vocabulary>di ambang kematian</vocabulary>. Tunggu sebentar, Nak.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8567_kondisi_kritis;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '紡ぐ', 'untuk-memutar', 59, 87, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>memutar</kanji>, jadi versi kata kerjanya adalah <vocabulary>memutar</vocabulary> dan <vocabulary>membuat benang</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Sebelum Anda mulai <vocabulary>memutar</vocabulary> Anda harus mengeluarkan <reading>dua moo</reading> (つむ) sebagai penghormatan kepada sapi yang memberi Anda <vocabulary>bulunya untuk dijadikan benang</vocabulary>. Ayo, dua moo, sekarang juga. Hei, dengan suara keras, bukan di kepalamu!')
    RETURNING id INTO v_8568_untuk_memutar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '紡績', 'pemintalan', 59, 88, '<kanji>pemintalan</kanji> <kanji>prestasi</kanji> hanyalah <vocabulary>pemintalan</vocabulary> yang Anda hasilkan — seperti benang atau <vocabulary>pemintalan benang</vocabulary>. 

紡績 adalah istilah teknis yang secara khusus mengacu pada proses pemintalan serat menjadi benang atau benang, biasanya di industri tekstil.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8569_pemintalan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '紡織', 'memutar-dan-menenun', 59, 89, '<kanji>Memintalin</kanji> dan <kanji>menenun</kanji> berarti <vocabulary>memintalin dan menenun</vocabulary>. Hore!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda belum mempelajari bacaan ini untuk 織, jadi inilah mnemonik untuk membantu Anda:

Saat Anda <vocabulary>memintal dan menenun</vocabulary> Anda selalu <read>terkejut</reading> (しょく) dengan apa yang Anda buat. Anda tidak pernah benar-benar tahu kapan Anda memulai dan kemudian BAM! Anda membuat sandal gajah. Begitulah cara kerjanya dan itu mengejutkan Anda setiap saat.')
    RETURNING id INTO v_8570_memutar_dan_menenun;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '胆', 'nyali', 59, 90, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.

胆 berarti <vocabulary>nyali</vocabulary>, dan sama seperti kata bahasa Inggris guts, kata ini juga dapat digunakan untuk berarti <vocabulary>courage</vocabulary> atau <vocabulary>fortitude</vocabulary>. Namun, 胆 jauh lebih formal dan maju dibandingkan padanan bahasa Inggrisnya, dan hampir selalu terlihat dalam frasa set 胆が据わる (memiliki keberanian baja).', 'Anda mempelajari bacaan ini dengan kanji, jadi Anda seharusnya sudah bisa membacanya!')
    RETURNING id INTO v_8571_nyali;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '魂胆', 'merencanakan', 59, 91, '<kanji>jiwa</kanji> dan <kanji>nyali</kanji> sebuah cerita terletak pada <vocabulary>plot</vocabulary>!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8572_merencanakan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '胆石', 'batu-empedu', 59, 92, '<kanji>Kandung Empedu</kanji> <kanji>Batu</kanji> lebih dikenal sebagai <vocabulary>batu empedu</vocabulary>. Terkadang Anda harus mengangkatnya melalui pembedahan. Menakutkan!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8573_batu_empedu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '大胆', 'berani', 59, 93, 'Jika Anda memiliki <kanji>besar</kanji> <kanji>nyali</kanji> yang benar-benar Anda adalah orang yang <vocabulary>berani</vocabulary> dan <vocabulary>berani</vocabulary> yang super. Bahkan, Anda mungkin menjadi manusia super. Sebesar itulah nyalimu. Jangan khawatir, saya tidak memberi tahu siapa pun bahwa saya tahu siapa Anda. Itu akan menjadi rahasia kecil kita.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8574_berani;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '落胆', 'keputusasaan', 59, 94, '<kanji>nyali</kanji>mu serasa <kanji>jatuh</kanji> ketika kamu mengalami banyak <vocabulary>keputusan</vocabulary>. Anda tahu perasaan tenggelam yang Anda rasakan di perut Anda? Itu membuat nyalimu jatuh!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8575_keputusasaan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '大腸菌', 'ecoli', 59, 95, 'Ingat bagaimana Anda mengetahui bahwa 大腸 berarti "usus besar?" Nah, ketika Anda memasukkan <kanji>bakteri</kanji> di sana, Anda akan mendapatkan <vocabulary>E. koli</vocabulary>. Segera pergi ke dokter! Anda akan terjebak di kamar mandi untuk sementara waktu. Maaf...', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8576_ecoli;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '萌え', 'pemula', 59, 96, 'Apa yang dilakukan <kanji>bud</kanji>? Ini <vocabulary>mulai</vocabulary>! Secara harafiah, apa lagi yang dapat dilakukan oleh seorang tunas selain bertunas?

<vocabulary>Moe</vocabulary> juga merupakan istilah slang untuk perasaan <vocabulary>tergila-gila</vocabulary> atau kasih sayang yang "bertunas" dalam diri Anda, biasanya terhadap karakter fiksi yang lucu. Ini juga bisa menjadi kata sifat untuk mendeskripsikan karakter imut tersebut, terutama yang Anda lihat di anime, manga, dan video game. Istilah ini sudah agak kuno sekarang, tetapi 萌え adalah konsep penting dalam subkultur otaku.', 'Kata ini menggunakan bacaan kun''yomi yang tidak Anda pelajari dengan kanji, jadi inilah mnemoniknya:

Anda merasakan <vocabulary>tunas</vocabulary> kasih sayang terhadap karakter <reading>Moe</reading> (も). Ya, karakter bartender lama dari The Simpsons. Dia sangat imut dan <vocabulary>moe</vocabulary> dengan celemek dan rambut keritingnya, kamu merasakan cinta yang dalam dan protektif terhadapnya.')
    RETURNING id INTO v_8577_pemula;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '軽蔑', 'cemooh', 59, 97, '<kanji>Ringan</kanji> <kanji>cemoohan</kanji>, betapapun ringannya, tetaplah <vocabulary>cemoohan</vocabulary>. Perasaan itu cukup kuat, apa pun yang terjadi.

軽蔑 digunakan ketika Anda meremehkan atau meremehkan seseorang, menganggap mereka lebih rendah dalam karakter atau kemampuan. Hal ini sering kali terjadi setelah perilaku tidak etis atau mengecewakan yang membuat Anda berpikir, "Saya tidak bisa lagi menghormati Anda sebagai pribadi."', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda belum mempelajari bacaan ini untuk 軽, jadi inilah mnemonik untuk membantu Anda:

Anda mempunyai lebih banyak <vocabulary>cemoohan</vocabulary> dan <vocabulary>penghinaan</vocabulary> untuk <reading>K</reading>KK (けい) dibandingkan kelompok lain mana pun di seluruh dunia. Dan saya tidak akan berdebat dengan Anda, mereka cukup dibenci.')
    RETURNING id INTO v_8578_cemooh;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '不均衡', 'ketidakseimbangan', 59, 98, 'Ingat bagaimana 均衡 berarti "keseimbangan?" Nah, jika Anda <kanji>tidak</kanji> memiliki saldo apa pun, Anda malah akan mengalami <vocabulary>ketidakseimbangan</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8580_ketidakseimbangan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '詠む', 'untuk-menulis', 59, 99, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>menyusun</kanji>, jadi versi kata kerjanya adalah <vocabulary>to composer</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Anda ingin <vocabulary>menulis</vocabulary> puisi namun yang Anda miliki hanyalah inspirasi yang ada di saku Anda. Anda menjangkau ke dalam dan menemukan <reading>yo</reading>-yo (よ). Ah ya, ini akan berhasil. Jadi, Anda membuat puisi tentang yo-yo Anda:

Satu string untuk mengatur semuanya,
Satu string untuk menemukannya,
Satu string untuk- hei tunggu sebentar...')
    RETURNING id INTO v_8581_untuk_menulis;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '普遍的', 'universal', 59, 100, 'Ingat bagaimana 普遍 berarti "universal?" Nah ketika Anda menambahkan <kanji>suka</kanji> itu masih <vocabulary>universal</vocabulary>! Mudah!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8582_universal;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '一遍に', 'sekaligus', 59, 101, 'Ingat bagaimana Anda mengetahui bahwa 一遍 berarti "sekali?" Nah, kalau kamu menambahkan に dan menjadikannya kata keterangan, itu menjadi <vocabulary>sekaligus</vocabulary>.', 'Ini memiliki bacaan yang sama dengan yang Anda pelajari dengan 一遍 jadi Anda harus bisa mengingatnya juga!')
    RETURNING id INTO v_8583_sekaligus;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '遮断機', 'gerbang-penyeberangan', 59, 102, 'Ingat bagaimana 遮断 berarti "isolasi?" <kanji>mesin</kanji> yang mengisolasi Anda dari kereta adalah <vocabulary>gerbang penyeberangan</vocabulary>. Dengan begitu Anda tidak akan berjalan kaki, bersepeda, atau mengendarai mobil Anda ke arah kereta yang melaju.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8584_gerbang_penyeberangan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '左遷', 'penurunan-pangkat', 59, 103, 'Biasanya kalau ke kiri dalam bahasa Jepang, itu bukan hal yang baik. Jadi jika Anda <kanji>bertransisi</kanji> ke <kanji>kiri</kanji> itu akan dianggap sebagai <vocabulary>penurunan pangkat</vocabulary>. Pergi ke kanan jauh lebih baik.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8585_penurunan_pangkat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '遷都', 'pindahkan-ibukota', 59, 104, 'Jika Anda ingin <kanji>memindahkan</kanji> <kanji>ibu kota</kanji> ke tempat baru yang lebih baik, Anda perlu <vocabulary>memindahkan ibu kota</vocabulary>. Hal ini sering terjadi dalam sejarah Jepang. Ini sebenarnya cukup menarik sehingga Anda mungkin ingin membacanya!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8586_pindahkan_ibukota;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '変遷', 'mengubah', 59, 105, '<kanji>Perubahan</kanji> dan <kanji>transisi</kanji> berarti <vocabulary>perubahan</vocabulary> dan <vocabulary>transisi</vocabulary>! Bagus.

変遷 mengacu pada perubahan historis atau jangka panjang. Kata ini sering digunakan ketika membahas evolusi atau perkembangan suatu entitas dalam jangka waktu yang lama.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8587_mengubah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '酪農', 'peternakan-sapi-perah', 59, 106, '<kanji>Perusahaan susu</kanji> <kanji>peternakan</kanji> adalah <vocabulary>peternakan sapi perah</vocabulary>!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8588_peternakan_sapi_perah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '鋳造', 'pengecoran', 59, 107, 'Jika Anda ingin <kanji>membuat</kanji> sebuah <kanji>cast</kanji> Anda perlu mempelajari <vocabulary>casting</vocabulary> terlebih dahulu. Kemudian Anda bisa menghasilkan banyak karya seni, kerajinan tangan, dan uang palsu yang rapi. Tunggu, tidak, jangan lakukan yang terakhir itu.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda telah mempelajari keduanya, jadi Anda pasti sudah mengetahui kata ini!')
    RETURNING id INTO v_8589_pengecoran;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '閑散', 'sepi', 59, 108, 'Ini adalah hari <kanji>bersantai</kanji>di mana semua orang <kanji>berpencar</kanji> dan meninggalkan area <vocabulary>kosong</vocabulary>. Hanya kamu sekarang. Bersantai di tempat teduh.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8590_sepi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '閑静', 'diam', 59, 109, '<kanji>Kenyamanan</kanji>yang <kanji>tenang</kanji> adalah jenis <vocabulary>tenang</vocabulary> yang terbaik. Bahkan otakmu menjadi sunyi karena kamu tidak lagi peduli pada dunia.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8591_diam;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '雌', 'perempuan', 59, 110, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.

Perhatikan bahwa ini sering ditulis dalam katakana, seperti メス.', 'Bacaannya sama dengan kanji yang Anda pelajari, artinya Anda tahu bacaannya!')
    RETURNING id INTO v_8592_perempuan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '雌花', 'bunga-betina', 59, 111, '<kanji>betina</kanji> <kanji>bunga</kanji> adalah <vocabulary>bunga betina</vocabulary>!', 'Pembacaan kata ini sama-sama kun''yomi, tetapi Anda belum mempelajari kun''yomi ini untuk 雌, jadi inilah mnemonik yang dapat membantu Anda:

Bayangkan saja seseorang meminta Anda membedakan bunga betina dari bunga jantan. Bisakah kamu? "<reading>Meh</reading> (め), mungkin tidak."

Pembacaan 花 adalah versi rendaku, jadi hati-hati juga.')
    RETURNING id INTO v_8593_bunga_betina;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '詠歌', 'puisi', 59, 112, '<kanji>menulis</kanji>d <kanji>lagu</kanji> adalah <vocabulary>puisi</vocabulary>, atau <vocabulary>lagu</vocabulary>. Ini juga bisa merujuk pada tindakan <vocabulary>menulis puisi atau lagu</vocabulary>, yang sangat masuk akal mengingat kanjinya.

Ini digunakan khususnya ketika mengacu pada puisi waka.', 'Ini adalah kata jukugo yang menggunakan on''yomi untuk kedua kanjinya. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_9118_puisi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '詠嘆', 'perasaan-mendalam', 59, 113, 'Jika kamu <kanji>menyusun</kanji> sesuatu sambil <kanji>menghela nafas</kanji>, itu karena kamu mengalami <vocabulary>perasaan mendalam</vocabulary>. Anda dapat mengungkapkan perasaan mendalam ini dengan <vocabulary>seruan</vocabulary>, sambil <vocabulary>kagum</vocabulary> pada keajaiban dunia.

Kata ini dapat digunakan untuk berbagai perasaan yang mendalam, baik atau buruk, dan juga dapat digunakan untuk mengungkapkan perasaan tersebut, jadi Anda akan melihat bahwa terjemahan bahasa Inggrisnya sedikit berbeda tergantung konteksnya.', 'Ini adalah kata jukugo yang menggunakan on''yomi untuk kedua kanjinya. Anda harus bisa membacanya sendiri.')
    RETURNING id INTO v_9119_perasaan_mendalam;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '梓川', 'sungai-azusa', 59, 114, '<kanji>Birch Jepang</kanji> <kanji>sungai</kanji> adalah <vocabulary>Sungai Azusa</vocabulary> atau hanya <vocabulary>Azusagawa</vocabulary>. Azusagawa adalah nama Jepang untuk Sungai Azusa, dan nama keluarga Jepang.', 'Anda mempelajari kedua bacaan ini dengan kanji. Anda hanya perlu mengingat bahwa rendaku mengubah かわ menjadi がわ.')
    RETURNING id INTO v_9120_sungai_azusa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '沙羅', 'sara', 59, 115, 'Jika <kanji>pasir</kanji> <kanji>tersebar</kanji> Anda mendapatkan nama yang diberikan <vocabulary>Sara</vocabulary>. Anda telah menulis nama Anda di pasir, bukan? Sekarang bayangkan Sara yang Anda kenal menyebarkan pasir sehingga namanya bisa dieja. Atau bayangkan seorang atlet profesional, seperti pegulat Doshō Sara (土性 沙羅), judoka Asahina Sara (朝比奈 沙羅), atau pelompat ski Takanashi Sara (髙梨 沙羅) membentangkan pasir. Saya yakin mereka akan menemukan cara terampil untuk melakukannya.', 'Nama ini menggunakan on''yomi untuk kedua kanji, dan Anda mempelajari bacaan tersebut dengan kanji.')
    RETURNING id INTO v_9126_sara;
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8453_peringatan_kematian, 'Peringatan Kematian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8453_peringatan_kematian, 'Peringatan Kematian', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8453_peringatan_kematian, 'かいき', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8453_peringatan_kematian, '今年は祖父の三回忌です。', 'Hari ini adalah peringatan kedua kematian kakekku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8453_peringatan_kematian, 'みんな忙しいので、各回忌に家族全員集まることは難しいです。', 'Semua orang begitu sibuk sehingga sulit mengumpulkan seluruh keluarga untuk setiap hari jadi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8453_peringatan_kematian, '死んだお嫁さんの一回忌もまだ終わってないのにもう再婚するつもりなの？', 'Mendiang istri Anda baru saja meninggal dunia dan Anda sudah berencana menikah lagi?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8454_duka, 'Duka', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8454_duka, 'Masa Berkabung', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8454_duka, 'き', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8454_duka, '忌が明けたら、みんなで旅行でも行きましょうか。', 'Ketika masa berkabung selesai, akankah kita semua melakukan perjalanan?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8455_tabu, 'Tabu', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8455_tabu, 'きんき', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8455_tabu, 'よく、禁忌を犯すと手足をもがれると言われますが、これは本当でしょうか。', 'Sering dibilang tangan dan kaki dicabut saat melakukan hal yang tabu, benarkah?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8456_peringatan_pertama_kematian, 'Peringatan Pertama Kematian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8456_peringatan_pertama_kematian, 'Peringatan Kematian Pertama', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8456_peringatan_pertama_kematian, 'いっしゅうき', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8456_peringatan_pertama_kematian, '七月には、妻の父の一周忌の法事があります。', 'Pada bulan Juli kami mengadakan upacara peringatan kematian pertama ayah istri saya.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8457_tidak_menyenangkan, 'Tidak menyenangkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8457_tidak_menyenangkan, 'Menjijikkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8457_tidak_menyenangkan, 'Sial', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8457_tidak_menyenangkan, 'いまわしい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8457_tidak_menyenangkan, 'この忌まわしい記憶をどうか消し去ってください。', 'Tolong hapus kenangan menjijikkan ini.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8515_gadis_penanam_padi, 'Gadis Penanam Padi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8515_gadis_penanam_padi, 'Saotome', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8515_gadis_penanam_padi, 'さおとめ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8515_gadis_penanam_padi, '昔は稲の苗を水田に植えつける女性のことを「早乙女」や「植女」と呼んでいました。', 'Dahulu kala, perempuan yang menanam bibit padi disebut Saotome atau Ueme.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8515_gadis_penanam_padi, '早乙女勝元の児童文学作品の中では平和をテーマとしているものが多い。', 'Dalam sastra anak Saotome Katsumoto banyak terdapat karya yang mengangkat tema perdamaian.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8515_gadis_penanam_padi, '女優の早乙女愛はデビューした時に漫画 『愛と誠』の映画化で同じ名前をした主人公を演じ、そのまま芸名にしたらしいよ。', 'Rupanya, saat debut, aktris Saotome Ai memainkan karakter utama dengan nama yang sama dalam film adaptasi manga "Ai to Makoto", lalu mengadopsinya sebagai nama panggungnya.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8516_asia_timur, 'Asia Timur', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8516_asia_timur, 'Timur', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8516_asia_timur, 'とうあ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8516_asia_timur, '太平洋戦争のことを、大東亜戦争と呼ぶのは何故ですか。', 'Mengapa Perang Pasifik disebut Perang Asia Timur Raya?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8517_penghinaan, 'Penghinaan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8517_penghinaan, 'Cemooh', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8517_penghinaan, 'Penghinaan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8517_penghinaan, 'ぶべつ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8517_penghinaan, '叔母の言葉は、いつも軽い侮蔑を帯びている。', 'Pidato bibiku selalu mengandung sedikit nada penghinaan.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8518_untuk_membenci, 'Untuk Membenci', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8518_untuk_membenci, 'Untuk Meremehkan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8518_untuk_membenci, 'Untuk Meringankan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8518_untuk_membenci, 'あなどる', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8518_untuk_membenci, '子供だからといって侮らない方がいい。', 'Anda tidak boleh meremehkannya hanya karena dia masih anak-anak.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8519_menyinggung, 'Menyinggung', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8519_menyinggung, 'Penghinaan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8519_menyinggung, 'Sedikit', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8519_menyinggung, 'ぶじょく', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8519_menyinggung, 'こんな侮辱を受けて、黙っていろというのか。', 'Apakah kamu menyuruhku untuk tetap diam dan menerima hinaan saja?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8520_tidak_rata, 'Tidak rata', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8520_tidak_rata, 'Kasar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8520_tidak_rata, 'Kasar', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8520_tidak_rata, 'でこぼこ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8520_tidak_rata, '床がちょっと凸凹しているのが気になるね。', 'Saya khawatir lantainya sedikit tidak rata.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8521_menjadi_penyok, 'Menjadi Penyok', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8521_menjadi_penyok, 'Untuk Merasa Down', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8521_menjadi_penyok, 'へこむ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8521_menjadi_penyok, '失恋で凹んでいます。', 'Aku merasa sedih karena cinta yang tak berbalas.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8521_menjadi_penyok, '早速新車を凹ませてしまって、凹んでいます。', 'Saya sangat sedih karena mobil baru saya sudah penyok.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8521_menjadi_penyok, '凹むわー。せっかくAIで効率上がると思ったのに、確認と修正で時間を取られて、むしろ自分でやった方が早いっていうオチだった。', 'Saya pikir penggunaan AI akan membuat segalanya lebih efisien, namun pada akhirnya, pemeriksaan dan koreksi memakan banyak waktu sehingga akan lebih cepat jika melakukannya sendiri.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8522_patuh, 'Patuh', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8522_patuh, 'Hina', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8522_patuh, 'ひくつ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8522_patuh, 'どうしてすぐに卑屈になるの？', 'Mengapa Anda langsung menjadi penurut?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8523_berarti, 'Berarti', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8523_berarti, 'Permainan Pelanggaran', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8523_berarti, 'Pengecut', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8523_berarti, 'Basis', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8523_berarti, 'ひれつ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8523_berarti, '卑劣な手段を使いやがって。', 'Anda memainkan trik yang kejam!');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8526_pengawasan, 'Pengawasan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8526_pengawasan, 'Pengujian', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8526_pengawasan, 'Investigasi yang Cermat', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8526_pengawasan, 'ぎんみ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8526_pengawasan, '結婚相手はよく吟味してから決めたい。', 'Saya ingin memutuskan pasangan setelah banyak penyelidikan yang cermat.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8527_untuk_bertahan, 'Untuk Bertahan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8527_untuk_bertahan, 'Untuk Menanggung', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8527_untuk_bertahan, 'こらえる', true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8527_untuk_bertahan, 'たえる', false);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8527_untuk_bertahan, 'この作品は読むに堪えない出来栄えだ。', 'Pada akhirnya, saya tidak tahan membaca karya tersebut.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8528_pernikahan, 'Pernikahan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8528_pernikahan, 'Perkawinan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8528_pernikahan, 'こんいん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8528_pernikahan, '婚姻届を役所に提出しました。', 'Saya menyerahkan pencatatan pernikahan di kantor publik.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8529_ditempatkan, 'Ditempatkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8529_ditempatkan, 'Hunian', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8529_ditempatkan, 'ちゅうとん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8529_ditempatkan, 'あそこには米軍が駐屯しているんだよ。', 'Angkatan bersenjata AS ditempatkan di sana.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8530_tanjung, 'Tanjung', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8530_tanjung, 'みさき', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8530_tanjung, '岬の突端にカフェがあるんです。', 'Ada sebuah kafe di ujung tanjung.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8531_jalur_gunung, 'Jalur Gunung', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8531_jalur_gunung, 'Paling buruk', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8531_jalur_gunung, 'とうげ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8531_jalur_gunung, 'この峠で転ぶと、三年だけしか生きられないという言い伝えがあります。', 'Legenda mengatakan bahwa jika Anda jatuh di celah gunung ini, Anda hanya memiliki tiga tahun lagi untuk hidup.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8532_keagungan, 'Keagungan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8532_keagungan, 'Keagungan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8532_keagungan, 'Kaum bangsawan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8532_keagungan, 'すうこう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8532_keagungan, '自然の崇高な美しさに感動しました。', 'Saya sangat tersentuh oleh keindahan alam yang mulia.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8533_memuja, 'Memuja', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8533_memuja, 'Pemujaan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8533_memuja, 'Kekaguman', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8533_memuja, 'Kultus', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8533_memuja, 'すうはい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8533_memuja, 'どうして偶像崇拝を禁止するのですか。', 'Mengapa mereka melarang penyembahan berhala?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8534_tanpa_menghemat, 'Tanpa Menghemat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8534_tanpa_menghemat, 'Nomor Cadangan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8534_tanpa_menghemat, 'おしまない', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8534_tanpa_menghemat, '目的を成し遂げるには、努力を惜しまないことが大切だと思います。', 'Menurut saya, penting untuk berusaha semaksimal mungkin dalam mencapai tujuan Anda.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8535_peristiwa_yang_menguntungkan, 'Peristiwa yang Menguntungkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8535_peristiwa_yang_menguntungkan, 'Acara yang Menyenangkan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8535_peristiwa_yang_menguntungkan, 'けいじ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8535_peristiwa_yang_menguntungkan, '親しい友人の慶事は自分のことの様にうれしい。', 'Peristiwa bahagia yang dialami teman-teman dekatku membuatku bahagia seolah-olah itu adalah kebahagiaanku sendiri.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8536_benkei, 'Benkei', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8536_benkei, 'Orang yang Kuat', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8536_benkei, 'べんけい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8536_benkei, '弁慶と牛若丸は清水寺で戦いました。', 'Benkei dan Ushiwakamaru bertarung di Kuil Kiyomizu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8536_benkei, '家では威張っているが、外では従順になる人のことを「内弁慶」と言う。', 'Orang yang sombong di rumah namun patuh di luar rumah disebut “uchi-benkei”.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8536_benkei, 'むこうずねは、ぶつけると弁慶ほど強い人でも涙を流すほど痛いことから、「弁慶の泣き所」といわれています。', 'Tulang keringnya dikenal sebagai "Tempat menangis Benkei" karena jika dipukul akan sangat sakit bahkan orang sekuat Benkei pun akan menitikkan air mata.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8537_selamat, 'Selamat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8537_selamat, 'Perayaan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8537_selamat, 'けいしゅく', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8537_selamat, '慶祝の意を表して、乾杯！', 'Untuk menunjukkan ucapan selamat kami, bersulang!');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8538_selamat_dan_belasungkawa, 'Selamat dan Belasungkawa', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8538_selamat_dan_belasungkawa, 'けいちょう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8538_selamat_dan_belasungkawa, '慶弔用の礼服は持っているのか。', 'Apakah Anda memiliki pakaian upacara untuk perayaan dan belasungkawa?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8539_kepahitan, 'Kepahitan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8539_kepahitan, 'Penderitaan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8539_kepahitan, 'Kesulitan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8539_kepahitan, 'Kesulitan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8539_kepahitan, 'うきめ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8539_kepahitan, '失恋の憂き目に遭いました。', 'Aku bertemu dengan derita patah hati.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8542_tidak_terampil, 'Tidak terampil', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8542_tidak_terampil, 'Kekanak-kanakan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8542_tidak_terampil, 'ちせつ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8542_tidak_terampil, '稚拙な文章ですがもしよければ読んでください。', 'Ini bukan artikel yang bagus, tapi silakan membacanya jika Anda mau.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8543_imitasi, 'Imitasi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8543_imitasi, 'Palsu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8543_imitasi, 'Mengejek', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8543_imitasi, 'Simulasi', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8543_imitasi, 'もぎ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8543_imitasi, '模擬試験の結果はどうだったの？', 'Bagaimana hasil ujian tiruannya?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8544_samaran, 'Samaran', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8544_samaran, 'Kamuflase', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8544_samaran, 'ぎそう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8544_samaran, '食品会社の擬装を許してはいけません。', 'Anda tidak boleh memaafkan penyamaran perusahaan makanan tersebut.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8545_untuk_sementara, 'Untuk sementara', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8545_untuk_sementara, 'Untuk Saat Ini', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8545_untuk_sementara, 'Untuk sementara', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8545_untuk_sementara, 'とりあえず', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8545_untuk_sementara, '取り敢えずここに座ってください。', 'Untuk saat ini, silakan duduk di sini.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8545_untuk_sementara, '迷ったら、取り敢えずやってみるタイプです。', 'Jika ragu, saya tipe orang yang mencoba sesuatu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8545_untuk_sementara, '取り敢えず逃げろ、とだけ頭が叫んでいた。', 'Pikiranku hanya meneriakkan satu hal: lari saja.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8546_pengacara, 'Pengacara', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8546_pengacara, 'Profesi Hukum', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8546_pengacara, 'ほうそう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8546_pengacara, '法曹を目指そうと思ったきっかけは何ですか。', 'Apa yang membuat Anda mengejar impian menjadi seorang pengacara?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8547_mengabaikan_kontak, 'Mengabaikan Kontak', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8547_mengabaikan_kontak, 'Keheningan Panjang', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8547_mengabaikan_kontak, 'ごぶさた', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8547_mengabaikan_kontak, 'ご無沙汰しております。', 'Aku sudah lama tidak bertemu denganmu.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8548_pergelandangan, 'Pergelandangan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8548_pergelandangan, 'Pengembaraan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8548_pergelandangan, 'Cara hidup pengembara', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8548_pergelandangan, 'るろう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8548_pergelandangan, '全てのロマが貧しい流浪の民というわけではない。', 'Itu tidak berarti semua orang Roma adalah orang-orang miskin dan nomaden.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8549_limbah, 'Limbah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8549_limbah, 'Pemborosan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8549_limbah, 'ろうひ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8549_limbah, '妻の浪費癖がなかなか治らないんです。', 'Kebiasaan boros istri saya tidak mudah disembuhkan.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8550_pengembaraan, 'Pengembaraan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8550_pengembaraan, 'Berkeliaran', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8550_pengembaraan, 'ほうろう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8550_pengembaraan, '当時は、逃げるように各地を転々と放浪していました。', 'Pada hari-hari itu saya harus mengembara dari satu tempat ke tempat lain untuk melarikan diri.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8551_ronin, 'Ronin', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8551_ronin, 'Samurai tak bertuan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8551_ronin, 'ろうにん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8551_ronin, '受験に失敗し、浪人生活に突入しました。', 'Saya gagal dalam ujian dan memasuki kehidupan sebagai siswa yang gagal.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8551_ronin, 'お前みたいな浪人の要求には応じられないな。', 'Kami tidak dapat memenuhi permintaan samurai tak bertuan seperti Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8551_ronin, 'その浪人は、諸国を遍歴することにした。', 'Ronin itu telah memutuskan untuk melakukan perjalanan keliling berbagai wilayah di negara ini.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8552_gelandangan, 'Gelandangan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8552_gelandangan, 'Gelandangan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8552_gelandangan, 'ふろうしゃ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8552_gelandangan, '浮浪者でも7割の人は何らかの仕事をして日銭を稼いでいる。', '70% gelandangan melakukan suatu pekerjaan dan memperoleh penghasilan tunai harian.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8553_pernis, 'Pernis', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8553_pernis, 'うるし', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8553_pernis, '漆の葉を触ると手がかぶれますよ。', 'Jika Anda menyentuh daun pernis, Anda akan mengalami ruam di tangan Anda.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8554_barang_barang_pernis, 'barang-barang pernis', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8554_barang_barang_pernis, 'Barang Pernis', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8554_barang_barang_pernis, 'しっき', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8554_barang_barang_pernis, '漆器の手入れの仕方を教えてください。', 'Tolong ajari saya cara merawat peralatan pernis.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8555_hitam_legam, 'Hitam legam', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8555_hitam_legam, 'Hitam pekat', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8555_hitam_legam, 'しっこく', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8555_hitam_legam, '漆黒の闇に青い地球が浮かんでいた。', 'Bumi muncul dalam kegelapan hitam.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8559_sangat_luas, 'Sangat luas', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8559_sangat_luas, 'Luar biasa besar', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8559_sangat_luas, 'Sangat besar', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8559_sangat_luas, 'じんだい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8559_sangat_luas, '大型台風が甚大な被害をもたらした。', 'Topan besar menyebabkan kerusakan serius.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8560_sangat, 'Sangat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8560_sangat, 'Sangat banyak', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8560_sangat, 'Sangat', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8560_sangat, 'はなはだ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8560_sangat, 'そのようなことが事実だとすれば、甚だ遺憾である。', 'Jika hal semacam itu benar, saya sangat menyesal.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8561_persahabatan, 'Persahabatan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8561_persahabatan, 'Persahabatan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8561_persahabatan, 'しんぼく', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8561_persahabatan, '親睦を深めるためのパーティーを準備しています。', 'Kami sedang mempersiapkan pesta untuk mempererat persahabatan kami.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8562_karang, 'karang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8562_karang, 'Terumbu Karang yang Tenggelam', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8562_karang, 'あんしょう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8562_karang, '船長は、暗礁に気をつけてと言って、僕に操縦を任せた。', 'Kapten menyuruh saya untuk berhati-hati terhadap terumbu karang dan kemudian menyerahkan kemudi kepada saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8562_karang, '捜査は暗礁に乗り上げてしまったな。', 'Investigasi menjadi dingin secara tidak terduga.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8563_atol, 'Atol', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8563_atol, 'Terumbu Karang Melingkar', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8563_atol, 'かんしょう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8563_atol, 'その時、日本のマグロ漁船「第五福竜丸」がたまたまビキニ環礁を航行しており、乗組員が被ばくしてしまった。', 'Kapal tuna Jepang "S.S. Lucky Dragon 5" secara tidak sengaja berlayar di sekitar Bikini Atoll dan awaknya terkena radiasi.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8564_karang, 'karang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8564_karang, 'Batuan Tenggelam', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8564_karang, 'Terumbu Pantai', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8564_karang, 'Terumbu Karang', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8564_karang, 'がんしょう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8564_karang, '岩礁を埋め立て、人工島に造り替えたんです。', 'Terumbu karang diisi dan diganti dengan pulau buatan.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8565_akar_kejahatan, 'Akar Kejahatan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8565_akar_kejahatan, 'Sumber Kejahatan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8565_akar_kejahatan, 'かこん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8565_akar_kejahatan, 'できれば禍根を残すことは避けたい。', 'Saya ingin menghindari menutup mata terhadap masalah di masa depan, jika saya bisa.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8566_kerusakan_perang, 'Kerusakan Perang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8566_kerusakan_perang, 'Kerusakan Akibat Perang', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8566_kerusakan_perang, 'せんか', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8566_kerusakan_perang, '戦禍を逃れて田舎に疎開した。', 'Kami lolos dari kerusakan akibat perang dan mengungsi ke pedesaan.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8567_kondisi_kritis, 'Kondisi Kritis', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8567_kondisi_kritis, 'Penyakit Kritis', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8567_kondisi_kritis, 'Di Ambang Kematian', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8567_kondisi_kritis, 'きとく', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8567_kondisi_kritis, '父が危篤だという電話がありました。', 'Ada telepon yang mengatakan ayah dalam kondisi kritis.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8568_untuk_memutar, 'Untuk Memutar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8568_untuk_memutar, 'Untuk Membuat Benang', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8568_untuk_memutar, 'つむぐ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8568_untuk_memutar, '昔はこうやって糸を紡いでいたんですよ。', 'Dahulu kala, benang dipintal dengan cara ini.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8569_pemintalan, 'Pemintalan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8569_pemintalan, 'Pemintalan Benang', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8569_pemintalan, 'ぼうせき', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8569_pemintalan, ' 牽切紡績とは、化学繊維特有の紡績方法で、綿からの紡績ではありません。', 'Kensetsu bouseki adalah metode pemintalan khusus untuk serat sintetis yang bukan dipintal dari kapas.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8570_memutar_dan_menenun, 'Memutar Dan Menenun', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8570_memutar_dan_menenun, 'Menenun Dan Memutar', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8570_memutar_dan_menenun, 'ぼうしょく', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8570_memutar_dan_menenun, '日本繊維産業は、綿紡織、化繊を中心として復興しました。', 'Industri tekstil Jepang dihidupkan kembali terutama melalui pemintalan dan tenun kapas serta serat sintetis.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8571_nyali, 'Nyali', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8571_nyali, 'Keberanian', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8571_nyali, 'Ketabahan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8571_nyali, 'たん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8571_nyali, 'お前はもう少し胆を練る必要がある。', 'Anda perlu membangun keberanian Anda.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8572_merencanakan, 'Merencanakan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8572_merencanakan, 'Motif Tersembunyi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8572_merencanakan, 'Niat Rahasia', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8572_merencanakan, 'Tujuan Tersembunyi', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8572_merencanakan, 'こんたん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8572_merencanakan, 'あわよくばおこぼれに預かりたいという魂胆が見え見えだよ。', 'Kamu sangat transparan. Saya tahu Anda berencana untuk mendapatkan bagian dari keuntungan jika Anda mendapat kesempatan.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8573_batu_empedu, 'Batu empedu', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8573_batu_empedu, 'たんせき', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8573_batu_empedu, '胆嚢炎は、ほとんどの場合、胆石が原因です。', 'Dengan radang kandung empedu, kemungkinan besar penyebabnya adalah batu empedu.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8574_berani, 'Berani', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8574_berani, 'Berani', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8574_berani, 'Berani', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8574_berani, 'だいたん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8574_berani, 'グループは、大胆にも真っ昼間から犯行に及んだのです。', 'Kelompok ini berani melakukan kejahatan di siang hari bolong.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8575_keputusasaan, 'Keputusasaan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8575_keputusasaan, 'Kesedihan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8575_keputusasaan, 'Kekesalan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8575_keputusasaan, 'Kekecewaan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8575_keputusasaan, 'らくたん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8575_keputusasaan, '息子は、受験に失敗して落胆しているんだ。', 'Anak saya gagal dalam ujian dan putus asa.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8576_ecoli, 'E.Coli', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8576_ecoli, 'Escherichia Coli', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8576_ecoli, 'E. coli', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8576_ecoli, 'だいちょうきん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8576_ecoli, '大腸菌を美少女に擬人化させたカードアプリ・ゲームがあります。', 'Ada permainan aplikasi kartu yang melambangkan E. Coli sebagai wanita cantik.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8577_pemula, 'pemula', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8577_pemula, 'Moe', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8577_pemula, 'Keberahian', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8577_pemula, 'もえ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8577_pemula, 'このアカウントでは、萌え系を中心に、僕の好きなアニメや漫画を紹介していきます。', 'Akun ini memperkenalkan beberapa karakter anime dan manga favorit saya, terutama yang berjenis moe.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8577_pemula, 'この仕草は、萌えポイントが高い。', 'Perilaku ini mendapat nilai sangat tinggi pada skala kelucuan moe.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8577_pemula, 'このアニメは萌え要素が多いんだよね。', 'Anime ini memiliki banyak sekali unsur moe.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8577_pemula, 'この作品はストーリーもいいけど、何より萌えキャラが魅力的だ。', 'Kisah karya ini memang bagus, namun yang paling menonjol adalah karakter-karakternya yang menggemaskan.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8578_cemooh, 'Cemooh', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8578_cemooh, 'Penghinaan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8578_cemooh, 'Penghinaan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8578_cemooh, 'けいべつ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8578_cemooh, '私、あの人のこと軽蔑しているの。', 'Saya membenci mereka.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8580_ketidakseimbangan, 'Ketidakseimbangan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8580_ketidakseimbangan, 'Perbedaan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8580_ketidakseimbangan, 'Ketidaksamaan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8580_ketidakseimbangan, 'ふきんこう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8580_ketidakseimbangan, '先進国と新興国・発展途上国間の経常収支の不均衡は是正されるのでしょうか。', 'Apakah ketidakseimbangan transaksi berjalan di negara-negara berkembang antara negara maju dan negara berkembang akan terkoreksi?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8581_untuk_menulis, 'Untuk Menulis', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8581_untuk_menulis, 'Untuk Membaca', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8581_untuk_menulis, 'よむ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8581_untuk_menulis, '俳句を詠む人のことを俳人と呼びます。', 'Orang yang membuat haiku disebut haijin.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8582_universal, 'Universal', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8582_universal, 'Ada di mana-mana', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8582_universal, 'Ada dimana-mana', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8582_universal, 'ふへんてき', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8582_universal, 'とても普遍的なテーマだと思います。', 'Menurut saya ini adalah tema yang sangat universal.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8583_sekaligus, 'Sekaligus', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8583_sekaligus, 'Sekaligus', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8583_sekaligus, 'いっぺんに', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8583_sekaligus, '一遍にいろんなことを言われても、分からないわ。', 'Jika Anda mengatakan banyak hal sekaligus, saya tidak akan mengerti.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8584_gerbang_penyeberangan, 'Gerbang Penyeberangan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8584_gerbang_penyeberangan, 'Gerbang Perlintasan Kereta Api', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8584_gerbang_penyeberangan, 'しゃだんき', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8584_gerbang_penyeberangan, '遮断機が降りている時に、線路を渡ってはいけません。', 'Saat gerbang perlintasan kereta api turun, jangan melintasi rel.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8585_penurunan_pangkat, 'Penurunan pangkat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8585_penurunan_pangkat, 'Degradasi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8585_penurunan_pangkat, 'Menghancurkan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8585_penurunan_pangkat, 'させん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8585_penurunan_pangkat, '田舎の支店に左遷されました。', 'Saya diturunkan jabatannya ke toko cabang di pedesaan.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8586_pindahkan_ibukota, 'Pindahkan Ibukota', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8586_pindahkan_ibukota, 'Pemindahan Ibukota', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8586_pindahkan_ibukota, 'Pemindahan Ibu Kota', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8586_pindahkan_ibukota, 'せんと', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8586_pindahkan_ibukota, '来年は、遷都1500年記念のイベントが開催されます。', 'Tahun depan akan diadakan acara dalam rangka peringatan 1500 tahun pemindahan ibu kota.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8587_mengubah, 'Mengubah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8587_mengubah, 'Transisi', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8587_mengubah, 'へんせん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8587_mengubah, '1996年から2013年までのトップ日本語学習サイト20の変遷を見てみましょう。', 'Mari kita lihat perubahan dalam 20 situs pembelajaran bahasa Jepang teratas antara tahun 1996 dan 2013.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8588_peternakan_sapi_perah, 'Peternakan Sapi Perah', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8588_peternakan_sapi_perah, 'らくのう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8588_peternakan_sapi_perah, 'ここは日本酪農発祥の地です。', 'Di sinilah letak asal mula peternakan sapi perah Jepang.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8589_pengecoran, 'Pengecoran', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8589_pengecoran, 'Pendirian', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8589_pengecoran, 'pencetakan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8589_pengecoran, 'ちゅうぞう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8589_pengecoran, 'ここで、プラチナ・コインの鋳造をします。', 'Koin platinum dilemparkan di sini.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8590_sepi, 'Sepi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8590_sepi, 'Tidak aktif', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8590_sepi, 'Santai', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8590_sepi, 'Diam', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8590_sepi, 'かんさん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8590_sepi, '駅の南側は、いつも閑散としています。', 'Sisi selatan stasiun selalu sepi.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8591_diam, 'Diam', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8591_diam, 'かんせい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8591_diam, 'この辺りは、閑静な住宅街になっています。', 'Lingkungan ini kini menjadi kawasan perumahan yang tenang.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8592_perempuan, 'Perempuan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8592_perempuan, 'Hewan Betina', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8592_perempuan, 'めす', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8592_perempuan, 'この犬は雌ですか？', 'Apakah anjing ini betina?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8593_bunga_betina, 'Bunga Betina', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8593_bunga_betina, 'めばな', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8593_bunga_betina, 'ヒマラヤスギは、樹齢30年を超えないと雌花を付けません。', 'Pohon Cedar Himalaya tidak dapat menghasilkan bunga betina sampai usianya lebih dari 30 tahun.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9118_puisi, 'Puisi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9118_puisi, 'Lagu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9118_puisi, 'Menyusun Puisi Atau Lagu', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_9118_puisi, 'えいか', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9118_puisi, 'みなさんは、誰がこの詠歌を書いたのが知っていますか？', 'Semuanya, tahukah kalian siapa yang menulis puisi ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9118_puisi, '彼は、暗殺される直前に、一つの詠歌をしたためていた。', 'Tepat sebelum dia dibunuh, dia telah menulis sebuah puisi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9118_puisi, '仏教の教えを和歌の形にして、旋律に乗せて唱えるものを御詠歌といいます。', 'Melantunkan ajaran Buddha dalam bentuk puisi waka dengan melodi disebut “goeika”.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9119_perasaan_mendalam, 'Perasaan Mendalam', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9119_perasaan_mendalam, 'Seruan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9119_perasaan_mendalam, 'Keajaiban', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_9119_perasaan_mendalam, 'えいたん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9119_perasaan_mendalam, 'その山の頂上から見た夕日の美しさに詠嘆した。', 'Aku terkagum-kagum dengan keindahan matahari terbenam yang kulihat dari puncak gunung itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9119_perasaan_mendalam, 'この文には、「これが最後かもしれないんだなあ」という詠嘆の意味が込められています。', 'Kalimat ini dipenuhi dengan perasaan mendalam "Aku penasaran apakah ini mungkin yang terakhir kalinya."');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9119_perasaan_mendalam, '和歌でよく使われる「けり」という言葉は、詠嘆の助動詞です。', 'Kata "keri", yang sering digunakan dalam puisi waka, merupakan kata kerja bantu dari seruan.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9120_sungai_azusa, 'Sungai Azusa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9120_sungai_azusa, 'Azusagawa', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_9120_sungai_azusa, 'あずさがわ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9120_sungai_azusa, '普段の梓川はとても穏やかです。', 'Sungai Azusa biasanya sangat tenang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9120_sungai_azusa, '週末は梓川の水の透明感に癒やされてきました。', 'Di akhir pekan, saya dibuat terhibur dengan jernihnya air di Sungai Azusa.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9120_sungai_azusa, '梓川さんの歌唱力が高いのは勿論だけど、曲の歌詞もすごくいいんだよね。', 'Tentu saja Azusagawa-san adalah penyanyi berbakat, tapi lirik lagunya juga sangat bagus.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9126_sara, 'Sara', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_9126_sara, 'さら', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9126_sara, '沙羅さんと会釈をして別れました。', 'Sara-san dan aku membungkuk satu sama lain dan berpisah.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9126_sara, '沙羅は拓哉と一緒に苗を植えるつもりです。', 'Sara akan menanam bibit bersama Takuya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9126_sara, 'ものまね芸人の沙羅さんが名古屋出身だって知ってた？', 'Tahukah Anda bahwa Sara yang impresionis berasal dari Nagoya?');

  -- 4. PREREQUISITES
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2371_duka, id FROM items WHERE character = '己' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2371_duka, id FROM items WHERE character = '心' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2400_transisi, id FROM items WHERE character = '⻌' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2400_transisi, id FROM items WHERE character = '覀' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2400_transisi, id FROM items WHERE character = '大' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2400_transisi, id FROM items WHERE character = '己' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2401_kikuk, id FROM items WHERE character = '扌' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2401_kikuk, id FROM items WHERE character = '出' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2402_jalur_gunung, id FROM items WHERE character = '山' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2402_jalur_gunung, id FROM items WHERE character = '上' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (k_2402_jalur_gunung, r_436_di_bawah);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2403_disengaja, id FROM items WHERE character = '竹' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2403_disengaja, id FROM items WHERE character = '馬' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2405_perempuan, id FROM items WHERE character = '止' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2405_perempuan, id FROM items WHERE character = '匕' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2405_perempuan, id FROM items WHERE character = '隹' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2406_menderita, id FROM items WHERE character = '土' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2406_menderita, id FROM items WHERE character = '甚' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2407_pertunjukan, id FROM items WHERE character = '口' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2407_pertunjukan, id FROM items WHERE character = '今' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2408_sangat, id FROM items WHERE character = '甚' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2409_memuja, id FROM items WHERE character = '山' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2409_memuja, id FROM items WHERE character = '宀' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2409_memuja, id FROM items WHERE character = '示' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2410_pernis, id FROM items WHERE character = '氵' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2410_pernis, id FROM items WHERE character = '木' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2410_pernis, id FROM items WHERE character = '𠆢' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2410_pernis, id FROM items WHERE character = '水' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2411_tanjung, id FROM items WHERE character = '山' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2411_tanjung, id FROM items WHERE character = '甲' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2412_pemintalan, id FROM items WHERE character = '糸' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2412_pemintalan, id FROM items WHERE character = '方' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2413_karang, id FROM items WHERE character = '石' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2413_karang, id FROM items WHERE character = '隹' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2413_karang, id FROM items WHERE character = '灬' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2414_barak, id FROM items WHERE character = '屯' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2415_kawin, id FROM items WHERE character = '女' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2415_kawin, id FROM items WHERE character = '口' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2415_kawin, id FROM items WHERE character = '大' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2416_meniru, id FROM items WHERE character = '扌' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2416_meniru, id FROM items WHERE character = '疑' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2417_ramah, id FROM items WHERE character = '目' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2417_ramah, id FROM items WHERE character = '坴' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2418_santai, id FROM items WHERE character = '門' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2418_santai, id FROM items WHERE character = '木' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2419_resmi, id FROM items WHERE character = '一' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2419_resmi, id FROM items WHERE character = '曲' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2419_resmi, id FROM items WHERE character = '日' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2420_menyusun, id FROM items WHERE character = '言' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2420_menyusun, id FROM items WHERE character = '永' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2421_rendah, id FROM items WHERE character = '丶' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2421_rendah, id FROM items WHERE character = '田' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2421_rendah, id FROM items WHERE character = '十' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2422_membenci, id FROM items WHERE character = 'ｲ' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2422_membenci, id FROM items WHERE character = '毎' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2423_pemeran, id FROM items WHERE character = '金' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2423_pemeran, id FROM items WHERE character = '三' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2423_pemeran, id FROM items WHERE character = '丿' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2423_pemeran, id FROM items WHERE character = '寸' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2424_cemooh, id FROM items WHERE character = '艹' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2424_cemooh, id FROM items WHERE character = '罒' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2424_cemooh, id FROM items WHERE character = '戌' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2425_nyali, id FROM items WHERE character = '月' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2425_nyali, id FROM items WHERE character = '旦' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2426_berjalan_jalan, id FROM items WHERE character = '氵' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2426_berjalan_jalan, id FROM items WHERE character = '良' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2427_kejahatan, id FROM items WHERE character = 'ネ' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2427_kejahatan, id FROM items WHERE character = '冋' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2428_produk_susu, id FROM items WHERE character = '酉' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2428_produk_susu, id FROM items WHERE character = '各' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2430_mengucapkan_selamat, id FROM items WHERE character = '广' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2430_mengucapkan_selamat, id FROM items WHERE character = '覀' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2430_mengucapkan_selamat, id FROM items WHERE character = '亅' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2430_mengucapkan_selamat, id FROM items WHERE character = '心' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2430_mengucapkan_selamat, id FROM items WHERE character = '夂' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2431_asia, id FROM items WHERE character = '亜' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2432_memilih, id FROM items WHERE character = '氵' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2432_memilih, id FROM items WHERE character = '太' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2433_birch_jepang, id FROM items WHERE character = '木' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2433_birch_jepang, id FROM items WHERE character = '辛' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2434_pasir, id FROM items WHERE character = '氵' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2434_pasir, id FROM items WHERE character = '少' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8453_peringatan_kematian, id FROM items WHERE character = '回' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8453_peringatan_kematian, k_2371_duka);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8454_duka, k_2371_duka);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8455_tabu, id FROM items WHERE character = '禁' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8455_tabu, k_2371_duka);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8456_peringatan_pertama_kematian, id FROM items WHERE character = '一' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8456_peringatan_pertama_kematian, id FROM items WHERE character = '周' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8456_peringatan_pertama_kematian, k_2371_duka);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8457_tidak_menyenangkan, k_2371_duka);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8515_gadis_penanam_padi, id FROM items WHERE character = '早' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8515_gadis_penanam_padi, id FROM items WHERE character = '乙' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8515_gadis_penanam_padi, id FROM items WHERE character = '女' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8516_asia_timur, id FROM items WHERE character = '東' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8516_asia_timur, k_2431_asia);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8517_penghinaan, k_2422_membenci);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8517_penghinaan, k_2424_cemooh);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8518_untuk_membenci, k_2422_membenci);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8519_menyinggung, k_2422_membenci);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8519_menyinggung, id FROM items WHERE character = '辱' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8520_tidak_rata, id FROM items WHERE character = '凸' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8520_tidak_rata, id FROM items WHERE character = '凹' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8521_menjadi_penyok, id FROM items WHERE character = '凹' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8522_patuh, k_2421_rendah);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8522_patuh, id FROM items WHERE character = '屈' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8523_berarti, k_2421_rendah);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8523_berarti, id FROM items WHERE character = '劣' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8526_pengawasan, k_2407_pertunjukan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8526_pengawasan, id FROM items WHERE character = '味' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8527_untuk_bertahan, k_2406_menderita);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8528_pernikahan, id FROM items WHERE character = '婚' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8528_pernikahan, k_2415_kawin);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8529_ditempatkan, id FROM items WHERE character = '駐' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8529_ditempatkan, k_2414_barak);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8530_tanjung, k_2411_tanjung);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8531_jalur_gunung, k_2402_jalur_gunung);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8532_keagungan, k_2409_memuja);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8532_keagungan, id FROM items WHERE character = '高' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8533_memuja, k_2409_memuja);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8533_memuja, id FROM items WHERE character = '拝' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8534_tanpa_menghemat, id FROM items WHERE character = '惜' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8535_peristiwa_yang_menguntungkan, k_2430_mengucapkan_selamat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8535_peristiwa_yang_menguntungkan, id FROM items WHERE character = '事' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8536_benkei, id FROM items WHERE character = '弁' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8536_benkei, k_2430_mengucapkan_selamat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8537_selamat, k_2430_mengucapkan_selamat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8537_selamat, id FROM items WHERE character = '祝' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8538_selamat_dan_belasungkawa, k_2430_mengucapkan_selamat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8538_selamat_dan_belasungkawa, id FROM items WHERE character = '弔' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8539_kepahitan, id FROM items WHERE character = '憂' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8539_kepahitan, id FROM items WHERE character = '目' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8542_tidak_terampil, id FROM items WHERE character = '稚' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8542_tidak_terampil, k_2401_kikuk);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8543_imitasi, id FROM items WHERE character = '模' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8543_imitasi, k_2416_meniru);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8544_samaran, k_2416_meniru);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8544_samaran, id FROM items WHERE character = '装' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8545_untuk_sementara, id FROM items WHERE character = '取' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8545_untuk_sementara, id FROM items WHERE character = '敢' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8546_pengacara, id FROM items WHERE character = '法' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8546_pengacara, k_2419_resmi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8547_mengabaikan_kontak, id FROM items WHERE character = '無' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8547_mengabaikan_kontak, k_2434_pasir);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8547_mengabaikan_kontak, k_2432_memilih);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8548_pergelandangan, id FROM items WHERE character = '流' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8548_pergelandangan, k_2426_berjalan_jalan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8549_limbah, k_2426_berjalan_jalan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8549_limbah, id FROM items WHERE character = '費' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8550_pengembaraan, id FROM items WHERE character = '放' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8550_pengembaraan, k_2426_berjalan_jalan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8551_ronin, k_2426_berjalan_jalan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8551_ronin, id FROM items WHERE character = '人' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8552_gelandangan, id FROM items WHERE character = '浮' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8552_gelandangan, k_2426_berjalan_jalan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8552_gelandangan, id FROM items WHERE character = '者' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8553_pernis, k_2410_pernis);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8554_barang_barang_pernis, k_2410_pernis);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8554_barang_barang_pernis, id FROM items WHERE character = '器' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8555_hitam_legam, k_2410_pernis);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8555_hitam_legam, id FROM items WHERE character = '黒' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8559_sangat_luas, k_2408_sangat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8559_sangat_luas, id FROM items WHERE character = '大' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8560_sangat, k_2408_sangat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8561_persahabatan, id FROM items WHERE character = '親' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8561_persahabatan, k_2417_ramah);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8562_karang, id FROM items WHERE character = '暗' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8562_karang, k_2413_karang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8563_atol, id FROM items WHERE character = '環' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8563_atol, k_2413_karang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8564_karang, id FROM items WHERE character = '岩' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8564_karang, k_2413_karang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8565_akar_kejahatan, k_2427_kejahatan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8565_akar_kejahatan, id FROM items WHERE character = '根' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8566_kerusakan_perang, id FROM items WHERE character = '戦' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8566_kerusakan_perang, k_2427_kejahatan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8567_kondisi_kritis, id FROM items WHERE character = '危' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8567_kondisi_kritis, k_2403_disengaja);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8568_untuk_memutar, k_2412_pemintalan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8569_pemintalan, k_2412_pemintalan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8569_pemintalan, id FROM items WHERE character = '績' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8570_memutar_dan_menenun, k_2412_pemintalan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8570_memutar_dan_menenun, id FROM items WHERE character = '織' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8571_nyali, k_2425_nyali);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8572_merencanakan, id FROM items WHERE character = '魂' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8572_merencanakan, k_2425_nyali);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8573_batu_empedu, k_2425_nyali);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8573_batu_empedu, id FROM items WHERE character = '石' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8574_berani, id FROM items WHERE character = '大' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8574_berani, k_2425_nyali);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8575_keputusasaan, id FROM items WHERE character = '落' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8575_keputusasaan, k_2425_nyali);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8576_ecoli, id FROM items WHERE character = '大' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8576_ecoli, id FROM items WHERE character = '腸' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8576_ecoli, id FROM items WHERE character = '菌' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8577_pemula, id FROM items WHERE character = '萌' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8578_cemooh, id FROM items WHERE character = '軽' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8578_cemooh, k_2424_cemooh);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8580_ketidakseimbangan, id FROM items WHERE character = '不' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8580_ketidakseimbangan, id FROM items WHERE character = '均' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8580_ketidakseimbangan, id FROM items WHERE character = '衡' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8581_untuk_menulis, k_2420_menyusun);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8582_universal, id FROM items WHERE character = '普' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8582_universal, id FROM items WHERE character = '遍' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8582_universal, id FROM items WHERE character = '的' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8583_sekaligus, id FROM items WHERE character = '一' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8583_sekaligus, id FROM items WHERE character = '遍' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8584_gerbang_penyeberangan, id FROM items WHERE character = '遮' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8584_gerbang_penyeberangan, id FROM items WHERE character = '断' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8584_gerbang_penyeberangan, id FROM items WHERE character = '機' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8585_penurunan_pangkat, id FROM items WHERE character = '左' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8585_penurunan_pangkat, k_2400_transisi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8586_pindahkan_ibukota, k_2400_transisi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8586_pindahkan_ibukota, id FROM items WHERE character = '都' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8587_mengubah, id FROM items WHERE character = '変' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8587_mengubah, k_2400_transisi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8588_peternakan_sapi_perah, k_2428_produk_susu);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8588_peternakan_sapi_perah, id FROM items WHERE character = '農' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8589_pengecoran, k_2423_pemeran);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8589_pengecoran, id FROM items WHERE character = '造' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8590_sepi, k_2418_santai);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8590_sepi, id FROM items WHERE character = '散' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8591_diam, k_2418_santai);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8591_diam, id FROM items WHERE character = '静' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8592_perempuan, k_2405_perempuan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8593_bunga_betina, k_2405_perempuan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8593_bunga_betina, id FROM items WHERE character = '花' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_9118_puisi, k_2420_menyusun);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_9118_puisi, id FROM items WHERE character = '歌' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_9119_perasaan_mendalam, k_2420_menyusun);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_9119_perasaan_mendalam, id FROM items WHERE character = '嘆' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_9120_sungai_azusa, k_2433_birch_jepang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_9120_sungai_azusa, id FROM items WHERE character = '川' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_9126_sara, k_2434_pasir);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_9126_sara, id FROM items WHERE character = '羅' LIMIT 1;

END $$;