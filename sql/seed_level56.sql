-- ====================================================
-- KaniGani — Seed Data Level 56 (v2, relasional)
-- Auto-generated with Indonesian Slugs
-- ====================================================

DO $$
DECLARE
  -- ============ KANJI IDs (Level 56) ============
  k_2295_mengalahkan UUID; k_2296_tetap UUID; k_2297_manajer UUID; k_2298_kesepian UUID; k_2299_menjahit UUID; k_2300_memberi UUID; k_2301_biasa_biasa_saja UUID; k_2302_menghormati UUID; k_2303_bingung UUID; k_2304_bulir UUID; k_2305_mausoleum UUID; k_2306_kejahatan UUID; k_2307_mengirimkan UUID; k_2308_miskin UUID; k_2309_sukacita UUID; k_2310_mengikat UUID; k_2311_kontrol UUID; k_2312_akord UUID; k_2313_mati_lemas UUID; k_2314_banjir UUID; k_2315_selain_itu UUID; k_2316_bosan UUID; k_2317_pria UUID; k_2318_biasa UUID; k_2319_tenang UUID; k_2320_menghargai UUID; k_2321_meremas UUID; k_2322_kupu_kupu UUID; k_2323_batu_nisan UUID; k_2324_perwira_militer UUID; k_2325_dingin UUID; k_2326_tukang UUID; k_2327_jauh UUID; k_2328_kebijaksanaan UUID; k_2329_belukar UUID;
  -- ============ VOCABULARY IDs (Level 56) ============
  v_3021_bunuh_diri UUID; v_8251_esensi UUID; v_8253_gagah UUID; v_8254_keajaiban UUID; v_8255_orang_biasa UUID; v_8256_umum UUID; v_8257_biasa_biasa_saja UUID; v_8258_tukang UUID; v_8259_desain UUID; v_8260_menguasai UUID; v_8261_menguasai UUID; v_8262_menjadi_takjub UUID; v_8263_tirai UUID; v_8264_musuh_pahit_dalam_perahu_yang_sama UUID; v_8265_hari_yang_menguntungkan UUID; v_8266_pengawasan UUID; v_8267_perdana_menteri UUID; v_8268_kesepian UUID; v_8269_kesunyian UUID; v_8270_kapten UUID; v_8271_letnan_dua UUID; v_8272_letnan_satu UUID; v_8273_semakin_banyak_lagi UUID; v_8274_namun UUID; v_8275_biasa UUID; v_8276_kelelahan UUID; v_8277_efek_jahat UUID; v_8278_rangkaian UUID; v_8279_musik_senar UUID; v_8280_merasa_lambat UUID; v_8281_pemalas UUID; v_8282_hormat UUID; v_8283_sukacita UUID; v_8284_konyol UUID; v_8285_penghitung_untuk_ketukan UUID; v_8286_tepuk_tangan UUID; v_8287_detak UUID; v_8288_untuk_memeras UUID; v_8289_eksploitasi UUID; v_8290_pemerahan UUID; v_8291_celcius UUID; v_8292_takdir_tuhan UUID; v_8293_asupan UUID; v_8294_kebijaksanaan UUID; v_8295_kayu_bakar UUID; v_8296_shiba_inu UUID; v_8297_banjir UUID; v_8298_perpanjangan UUID; v_8299_menelantarkan UUID; v_8300_tidak_ada_rasa_arah UUID; v_8301_nisan UUID; v_8302_tugu_batu UUID; v_8303_prasasti UUID; v_8304_monumen UUID; v_8305_bulir UUID; v_8306_biji_bijian UUID; v_8307_beras UUID; v_8308_mati_lemas UUID; v_8309_nitrogen UUID; v_8310_dilema UUID; v_8311_ketat UUID; v_8312_kemiskinan UUID; v_8313_kemiskinan UUID; v_8314_kesulitan UUID; v_8315_pria UUID; v_8316_untuk_mengikat UUID; v_8317_pengekangan UUID; v_8318_menjahit UUID; v_8319_jahit UUID; v_8320_jahit UUID; v_8321_mengirimkan UUID; v_8322_impor UUID; v_8323_kupu_kupu UUID; v_8324_lagu_populer UUID; v_8325_yurisdiksi UUID; v_8326_yurisdiksi UUID; v_8327_kontrol_langsung UUID; v_8328_untuk_menyimpang UUID; v_8329_jauh_sekali UUID; v_8330_tanpa_bayar UUID; v_8331_kesalahan UUID; v_8332_ilusi UUID; v_8333_kebingungan UUID; v_8334_campuran UUID; v_8335_pemutarbalikan UUID; v_8336_bukit UUID; v_8337_kuil_yasukuni UUID; v_8338_kejenuhan UUID; v_8339_menjadi_bosan UUID; v_8340_kekenyangan UUID; v_8493_kupu_kupu UUID; v_9054_perusahaan_kami UUID; v_9107_air_terjun_nachi UUID;

BEGIN

  DELETE FROM items WHERE level = 56;

  -- 1. RADICALS

  -- 2. KANJIS
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '拍', 'mengalahkan', 56, 1, 'Anda mengetukkan <radical>jari</radical> Anda ke dinding <radical>putih</radical> saat Anda menyadari bahwa suara yang Anda buat sebenarnya adalah <kanji>ketukan</kanji> yang buruk. Anda terus berjalan dan mulai bernyanyi bersama. Boo boo boo. Boo, do, do, doop! Ketukan jari!', '<kanji>ketukan</kanji> ini buruk, tetapi saat Anda mengetuk, Anda menyadari bahwa Anda sedang <reading>meretas</reading> (はく) ke atas! Perlahan tapi pasti, jari-jari Anda meretas sedikit bagian dinding. Dan ketukannya tidak akan terdengar bagus sampai Anda pindah ke area baru yang putih bersih.')
    RETURNING id INTO k_2295_mengalahkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '猶', 'tetap', 56, 2, 'Seekor <radikal>hewan</radikal> dengan <radikal>tanduk</radikal> sedang meminum <radikal>alkohol</radikal> kita? <kanji>Masih</kanji>?', 'Hewan bertanduk yang <kanji>masih</kanji> meminum alkohol Anda bukanlah hewan sama sekali. Ini sebenarnya adalah salah satu <read>you</reading> (ゆう) lokal yang berdandan seperti binatang bertanduk sehingga mereka bisa minum selama yang mereka mau dan Anda akan terlalu takut untuk mengusir mereka.')
    RETURNING id INTO k_2296_tetap;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '宰', 'manajer', 56, 3, '<radical>Atap</radikal> Anda <radikal>pedas</radikal> karena Anda adalah <kanji>manajer</kanji>. Anda selalu menguji resep-resep baru di rumah Anda untuk dibagikan kepada semua orang yang bekerja di bawah Anda, tetapi hal itu membuat semua bumbu menempel di atap Anda (karena tidak memiliki ventilasi yang baik seperti restoran atau laboratorium).', 'Anda akhirnya berhasil melakukannya. Anda sekarang adalah <kanji>manajer</kanji> dari sekelompok <reading>cy</reading>borg (さい) baru yang pedas. Anda telah bekerja keras selama lebih dari setahun, tetapi Anda akhirnya menggantikan cyborg yang hilang, dan sekarang Anda dapat mengelolanya dengan baik tanpa ada yang menghalangi.')
    RETURNING id INTO k_2297_manajer;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '寂', 'kesepian', 56, 4, 'Di <radical>atap</radical> <radical>di atas</radical>, terdapat <radical>kecil</radical> <radical>bangku</radical>. Siapa pun yang duduk di bangku itu akan <kanji>kesepian</kanji>.', 'Kamu sangat <kanji>kesepian</kanji>, kamu menjadi teman khayalan: <reading>Jack</reading> (じゃく). Jack tidak menghilangkan perasaan kesepian itu karena dia tidak nyata, tapi setidaknya dia adalah pengalih perhatian.')
    RETURNING id INTO k_2298_kesepian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '縫', 'menjahit', 56, 5, 'Anda mengambil beberapa <radical>benang</radikal>, memasang <radikal>skuter</radikal> Anda ke <radikal>plang</radikal>, dan <kanji>menjahit</kanji> menjadi satu. Anda tidak memiliki kunci, jadi hanya menjahit skuter Anda sesuai dengan plang agar tetap aman.', 'Biasanya kamu hanya <kanji>menjahit</kanji> di <reading>ho</reading>saya (ほう), jadi ini pengecualian besar untukmu. Anda biasanya khawatir jika Anda menjahit di depan umum, orang akan menilai jahitan Anda, jadi ini adalah langkah besar bagi Anda!')
    RETURNING id INTO k_2299_menjahit;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '呉', 'memberi', 56, 6, 'Anda telah belajar bahwa Anda dapat <radikal>melontarkan</radikal> sesuatu untuk <kanji>memberikan</kanji> kepada orang lain! Jangan melontarkan batu ke gedung dan tembok, melontarkan hadiah untuk orang yang Anda sayangi.', '<kanji>Berikan</kanji> makanan kepada teman barumu <reading>Ayo</reading>dzilla (ご) dengan ketapel! Anda dan Godzilla saling memahami sekarang. Dia hanya lapar.')
    RETURNING id INTO k_2300_memberi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '凡', 'biasa-biasa-saja', 56, 7, 'Anda hendak membeli <radical>meja</radical> tetapi tampaknya meja tersebut terkena kerusakan air akibat <radical>tetesan</radical> air yang mengenainya. Ini menjadikannya tabel yang cukup <kanji>biasa-biasa saja</kanji>. Tetesan airnya tidak terlalu merusak, masih berdiri dan bisa dipakai, tapi agak jelek, jadi biasa-biasa saja.', 'Anda tidak mengira akan melihat meja <kanji>biasa-biasa saja</kanji> sehingga Anda mendatangi penjualnya dan berkata, "Hei, saya punya <membaca>tulang</reading> (ぼん) yang bisa Anda pilih!" Tapi menurutnya tidak ada gunanya memilih sama sekali, menurutnya mejanya tidak biasa-biasa saja seperti Anda.')
    RETURNING id INTO k_2301_biasa_biasa_saja;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '恭', 'menghormati', 56, 8, 'Ketika <radical>kecil</radical> <radical>tetesan</radical> air bekerja <radical>bersama</radical> mereka mendapatkan <kanji>rasa hormat</kanji> satu sama lain. Jika Anda akhirnya bekerja dengan seseorang cukup lama, dan mereka menjadi sangat hebat, Anda juga akan menghormatinya!', 'Jika Anda <kanji>menghormati</kanji> seseorang, Anda bahkan akan melakukan hobinya. Orang yang paling Anda hormati mencintai Yankees. Anda sebenarnya tidak merasakan hal yang sama, namun Anda menghargai hal tersebut sehingga Anda meneriakkan, "<reading>Ooh Ya</reading>nkees, <reading>Ooh Ya</reading>nkees!" (うやうや) bersama mereka selama setiap pertandingan.')
    RETURNING id INTO k_2302_menghormati;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '錯', 'bingung', 56, 9, 'Ini adalah <radical>emas</radical> murni <radical>dulu</radical> murni, namun sekarang tidak lagi. Seseorang menjadi <kanji>bingung</kanji> dan <kanji>mencampurnya</kanji> dengan hal lain.', 'Itu <kanji>campur</kanji> (dan tidak murni lagi) karena orang yang <kanji>bingung</kanji> memasukkannya ke dalam <reading>karung</reading> (さく) yang berisi berbagai barang lainnya.')
    RETURNING id INTO k_2303_bingung;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '穀', 'bulir', 56, 10, 'Seorang <radical>samurai</radical> memukul <radical>dahi</radical> butiran <radical>grain</radical> dengan <radical>weapon</radical> sehingga <kanji>grain</kanji> akan keluar dan masuk ke dalam mulutnya. Dia tidak ingin mematikan tanaman tersebut, jadi dia hanya mengupas bagian dahi biji-bijian tersebut agar tanaman tersebut rontok dan dia dapat memakannya.', 'Fiuh, semua <kanji>biji-bijian</kanji> ini membuat samurai haus, jadi dia merogoh tasnya dan mengeluarkan <read>Coke</reading> (こく) yang dingin dan menyegarkan.')
    RETURNING id INTO k_2304_bulir;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '陵', 'mausoleum', 56, 11, 'Satu-satunya <radical>bangunan</radical> di mana Anda akan terkena <radical>radang dingin</radical> adalah <kanji>mausoleum</kanji>. Mausoleum dan <kanji>makam</kanji> tidak dibuat untuk manusia yang masih hidup, jadi tidak terlindung dari hawa dingin. Tidak ada yang peduli jika mayat terkena radang dingin.', 'Kamu harus keluar dari <kanji>mausoleum</kanji> ini sekarang, tetapi satu-satunya jalan keluar adalah naik perahu <reading>baris</reading> (りょう) di atas kolam beku yang menyeramkan. Anda pernah mendengar tentang perahu dayung mausoleum ini sebelumnya, dan Anda cukup yakin perahu tersebut terkutuk.')
    RETURNING id INTO k_2305_mausoleum;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '弊', 'kejahatan', 56, 12, '<radical>Dua puluh</radical> <radical>penguin</radical>bersama selalu <kanji>jahat</kanji>. Penguin sering terlihat berkelompok, tentu saja, tetapi tahukah Anda bahwa setiap kali ada dua puluh penguin dalam satu kelompok, mereka merencanakan hal-hal jahat? Hal-hal jahat seperti pemanasan global. Dan bagaimana cara memakan semua ikan di dunia sehingga manusia tidak dapat memperolehnya.', 'Penguin <kanji>jahat</kanji> tidak bisa membiarkan Anda menceritakan apa yang Anda lihat kepada orang lain, jadi mereka membunuh Anda dan menyembunyikan tubuh Anda di tumpukan <reading>jerami</reading> (へい). Keluarga Anda tidak akan pernah tahu apa yang terjadi pada Anda. Para penguin akan lolos dari rencana jahat mereka.')
    RETURNING id INTO k_2306_kejahatan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '舶', 'mengirimkan', 56, 13, '<radical>Perahu</radikal> yang <radikal>putih</radikal> bukan sekadar perahu, melainkan <kanji>kapal</kanji>.', '<kanji>kapal</kanji> yang dicat putih adalah sejenis <reading>hack</reading> (はく). Itu membuat kapal lebih terlihat tanpa mengeluarkan biaya banyak.')
    RETURNING id INTO k_2307_mengirimkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '窮', 'miskin', 56, 14, 'Buat <radikal>lubang</radikal> di <radikal>tubuh</radikal> seseorang dengan <radikal>busur</radikal> dan mereka akan menjadi <kanji>miskin</kanji>. Anda membuat lubang di dalamnya. Mereka tidak bisa bekerja. Mereka tidak bisa mengurus rumah atau anak-anak mereka. Mereka telah kehilangan semuanya.', 'Anda melihat orang <kanji>miskin</kanji> ini dan memutuskan untuk memberi mereka <reading>cu</reading>cumber (きゅう). Mereka bahkan tidak ingat bahwa mereka seharusnya memakannya, jadi mereka memasukkannya ke dalam lubang yang Anda buat dengan busur Anda.')
    RETURNING id INTO k_2308_miskin;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '悦', 'sukacita', 56, 15, 'Jika Anda bisa <radical>menjaga</radical> <radical>jiwa</radical> Anda dari hal-hal buruk, Anda akan selalu merasakan <kanji>kegembiraan</kanji> dan <kanji>kegembiraan</kanji>. Sulit untuk menjaga jiwamu dari segala hal, jadi ambillah semua kegembiraan yang kamu bisa, selagi bisa.', '<kanji>kegembiraan</kanji> yang Anda rasakan begitu besar sehingga menjadi <read>tergores</reading> permanen (えつ) di jiwa Anda dan bahkan di wajah Anda.')
    RETURNING id INTO k_2309_sukacita;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '縛', 'mengikat', 56, 16, '<radical>keahlian</radikal> Anda adalah <radical>menjatuhkan</radikal>melakukan ping ke orang-orang dengan <radical>utas</radikal> dengan <kanji>mengikat</kanji>mereka! Anda dapat menjatuhkan siapa pun selama Anda memiliki cukup benang untuk menahannya. Tidak peduli seberapa sering mereka bertarung, Anda akan menjatuhkan mereka!', 'Jika kamu ingin menjadi orang aneh yang suka <kanji>mengikat</kanji> orang, setidaknya pastikan bahwa mereka mendarat di <reading>punggung</reading> (ばく) mereka ketika mereka terjatuh. Mendarat di kepala atau payudara Anda sungguh menyakitkan. Jadi tolong setidaknya cobalah membuat mereka mendarat di punggung mereka!')
    RETURNING id INTO k_2310_mengikat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '轄', 'kontrol', 56, 17, 'Anda menghiasi <radical>atap</radical> <radical>mobil</radical> Anda dengan <radical>sangkar tulang rusuk</radical> dan <radical>mulut</radical> yang dipasang pada pengemudi lain untuk memberi tahu semua orang bahwa Anda <kanji>mengendalikan</kanji> jalan-jalan ini. Bagaimanapun, rasa takut adalah cara yang bagus untuk mengendalikan orang.', 'Sedikit yang Anda sadari bahwa orang yang sebenarnya <kanji>mengendalikan</kanji> lingkungan Anda adalah... <reading>kucing</reading> (かつ)! Mereka beroperasi dalam bayang-bayang dan tidak menonjolkan diri, namun kucinglah yang memegang kendali penuh.')
    RETURNING id INTO k_2311_kontrol;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '弦', 'akord', 56, 18, '<radical>Busur</radikal> ini <radikal>misterius</radikal> karena dirangkai dengan satu <kanji>akor</kanji>. Saya rasa itu membuat akord menjadi alat musik <kanji>senar</kanji> dan juga <kanji>tali busur</kanji>. Petik akordnya dan ia menembakkan panah sambil membuat nada G yang sempurna. Sangat misterius!

Catatan: Kami menggunakan "akor" di sini sebagai nama mewah untuk alat musik senar (seperti dalam "akord harpa" atau "pukulan akord"). Kanji ini mencakup senar musik dan tali busur!', 'Ternyata busur ini dirangkai dengan <kanji>akor</kanji> misterius milik <reading>Gen</reading>ji (げん). Tentu saja! Hanya seseorang yang anggun dan dramatis seperti Genji yang memiliki busur yang dapat memainkan musik saat Anda memetik senarnya.')
    RETURNING id INTO k_2312_akord;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '窒', 'mati-lemas', 56, 19, 'Keluarkan <radical>tahi lalat</radikal> dari <radikal>lubang</radikal> dan ia akan <kanji>mati lemas</kanji>. Mereka harus berada di tempat yang sempit, tidak seperti kita manusia. Jadi ketika Anda mengeluarkan seekor dari lubangnya yang bagus dan aman, ia mengira ia tidak bisa bernapas dan mati lemas.', 'Saat tahi lalat <kanji>tercekik</kanji>, ia <reading>menipu</reading> (ちつ) dan menyorongkan kepalanya ke tangan Anda yang tertutup. Anda menyadari apa yang dilakukannya dan meremas tangan Anda lebih erat sehingga lebih seperti lubang. Anda bisa merasakan tahi lalat bernapas lagi sekarang.')
    RETURNING id INTO k_2313_mati_lemas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '洪', 'banjir', 56, 20, '<radikal>tsunami</radikal> <radikal>bersama</radikal> dengan tsunami lainnya akan menyebabkan <kanji>banjir</kanji> besar.', 'Setelah <kanji>banjir</kanji> yang mengerikan, Kaisar <reading>こう</reading>いち datang untuk mengamati kehancuran dan menawarkan harapan kepada rakyatnya. Tapi, dia malah memberitahu orang-orang bahwa banjir ini terjadi karena mereka tidak percaya pada kata-kata Crabigator, dan karena mereka tidak melakukan peninjauan kanji.')
    RETURNING id INTO k_2314_banjir;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '摂', 'selain-itu', 56, 21, 'Letakkan <radical>jari</radical> Anda di <radical>telinga</radical> Anda ketika terjadi <radical>ledakan</radical> <kanji>selain</kanji> semua hal lain yang diperintahkan kepada Anda. Anda harus berjongkok di bawah meja, menjauhi jendela, dan menutup mata. Namun selain itu, Anda perlu melindungi telinga Anda!', '<kanji>Selain</kanji> semua langkah yang harus Anda ambil untuk melindungi diri sendiri, Anda tidak boleh lupa bahwa telinga ada dalam <reading>set</reading> (せつ). Anda tidak bisa hanya memasukkan satu jari ke satu telinga dan menjadikan itu akhir. Anda punya telinga yang perlu dikhawatirkan!')
    RETURNING id INTO k_2315_selain_itu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '飽', 'bosan', 56, 22, 'Anda <radical>makan</radical> lalu <radical>membungkus</radical> diri Anda menjadi sebuah bola karena Anda <kanji>bosan</kanji>. Kamu juga <kanji>kenyang</kanji>, karena kamu makan dalam jumlah yang tepat, tapi sekarang kamu tidak melakukan apa-apa dan itu sangat membosankan.', 'Jadi sekarang kamu <kanji>bosan</kanji> dan terjebak pada <reading>ho</reading>saya (ほう). Anda tidak lapar. Tidak ada apa pun di TV. Dan Anda tentu tidak ingin meninggalkan rumah untuk melakukan sesuatu, meskipun hal itu mungkin dapat mengatasi masalah kebosanan Anda.')
    RETURNING id INTO k_2316_bosan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '紳', 'pria', 56, 23, '<radical>utas</radikal> Anda <radikal>sederhana</radikal> dan itu menjadikan Anda <kanji>pria</kanji> yang sempurna. Anda tidak harus memiliki pakaian mewah untuk menjadi seorang pria sejati, cukup pakaian sederhana yang tidak menonjol dan terlalu mencolok. Itu menunjukkan betapa sopannya Anda.', 'Sayangnya, sebagai <kanji>pria</kanji> yang berpakaian sopan, Anda selalu ditendang oleh anak-anak yang kasar (dan terkadang orang dewasa yang kasar).')
    RETURNING id INTO k_2317_pria;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '庸', 'biasa', 56, 24, 'Di bawah <radical>kanopi</radikal> ini Anda memiliki <radical>sikat</radikal> (dalam bentuk 肀) dan <radikal>tugas</radikal> yang harus diselesaikan dengannya. Ini benar-benar <kanji>lumrah</kanji>.', 'Hal ini sangat <kanji>biasa</kanji> dan familiar bagimu sehingga kamu menyelesaikan tugasmu lebih awal dan makan <reading>yo</reading>gurt (よう) sambil menunggu pria itu kembali.')
    RETURNING id INTO k_2318_biasa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '靖', 'tenang', 56, 25, '<radical>Berdiri</radical> menatap langit <radical>biru</radical> dan Anda akan merasa lebih <kanji>damai</kanji> daripada yang pernah Anda alami. Biru adalah warna yang mendorong pikiran dan perasaan damai. Itu sebabnya semua situs media sosial berwarna biru. Untuk menghentikanmu menjadi brengsek.', 'Sekarang jika seseorang bertanya apakah warna biru membuatmu <kanji>damai</kanji> kamu harus menjawab "<reading>YAASS</reading> (やす)!" Dan Anda harus berterima kasih kepada kami untuk itu! Semua radikal biru yang damai itu. Itu adalah hal termudah di situs ini, dan jika seseorang bertanya apakah radikal membuat Anda merasa damai, ucapkan "YAASS" lagi!')
    RETURNING id INTO k_2319_tenang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '嘉', 'menghargai', 56, 26, 'Jika saat Anda berbicara terdengar seperti <radikal>kekuatan</radikal> sebuah <radikal>drum</radikal> keluar dari <radikal>mulut</radikal> Anda, maka orang-orang akan menjunjung tinggi <kanji></kanji> Anda. Siapapun yang mempunyai suara lantang, menggelegar, dan bertenaga akan dijunjung tinggi di zaman sekarang ini. Lihatlah semua musisi hebat yang mempunyai suara menggelegar!', 'Anda menjunjung tinggi <kanji>mereka</kanji> sehingga Anda memberikan <reading>ca</reading>r (か) Anda. Aku... aku bilang kamu memberikan mobilmu kepada mereka! Berikan mereka mobilmu. Hei, hei!')
    RETURNING id INTO k_2320_menghargai;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '搾', 'meremas', 56, 27, 'Jika Anda ingin memasukkan <radical>jari</radikal> Anda ke dalam <radikal>kunci</radikal> <radikal>lubang</radikal>, Anda harus <kanji>memeras</kanji> ke dalamnya. Jari tidak seharusnya dimasukkan ke dalam lubang kunci... lagipula itu untuk kunci. Tapi Anda tetap ingin menekan jari Anda di sana untuk membuka kunci pintu.', 'Setelah Anda <kanji>memasukkan jari Anda ke dalam lubang kunci untuk membuka pintu ini, Anda memasukkan semua uang, permata, dan harta karun yang dapat Anda masukkan ke dalam <reading>karung</reading> (さく). Karung mencurimu.')
    RETURNING id INTO k_2321_meremas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '蝶', 'kupu-kupu', 56, 28, '<radical>serangga</radikal> yang ada di antara semua <radikal>pohon</radikal> di <radikal>dunia</radikal> adalah <kanji>kupu-kupu</kanji>. Mereka selalu berkeliaran di pepohonan, kupu-kupu itu.', 'Saat Anda melihat <kanji>kupu-kupu</kanji>, terbang di sekitar pohon, sebuah tangan terulur dari pohon dan meraihnya, lalu mulai mencabut sayapnya. Tawa jahat datang dari dalam pohon, dan kamu tahu itu adalah Ny. <reading>Chou</reading> (ちょう).')
    RETURNING id INTO k_2322_kupu_kupu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '碑', 'batu-nisan', 56, 29, '<radical>batu</radical> <radical>tetesan</radikal> dari langit ke dalam <radical>sawah</radikal> dan kemudian <radikal>salib</radikal> <radikal>tetesan</radikal> di atasnya. Mereka digabungkan untuk membentuk <kanji>batu nisan</kanji>! Tunggu, apakah itu berarti ada benda yang jatuh dari langit terlebih dahulu dan Anda tidak melihatnya?', 'Sekarang kamu penasaran dengan apa yang ada di bawah sana tetapi ketika kamu mencoba menyentuh <kanji>batu nisan</kanji> itu memancar dengan kuat <reading>he</reading>at (ひ)! Itu pasti berasal dari luar angkasa dan panas ini berasal dari saat memasuki atmosfer kita!')
    RETURNING id INTO k_2323_batu_nisan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '尉', 'perwira-militer', 56, 30, 'Siapa yang menyukai <radical>flag</radical> mereka, menggunakan <radical>jackhammer</radical>, dan <radical>pengukuran</radical> yang tepat? <kanji>perwira militer</kanji> Anda! Dia selalu memberi hormat pada bendera, melakukan pukulan keras di dekat semua anggota baru untuk menguji mereka, dan memeriksa ukuran antara lantai dan celana mereka. Siapa lagi yang bisa melakukannya?', 'Burung favorit <kanji>perwira militer</kanji> itu adalah <reading>ea</reading>gle (い)! Hal ini sudah jelas karena elang adalah burung Amerika! Dan itulah negara yang dia perjuangkan!')
    RETURNING id INTO k_2324_perwira_militer;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '凛', 'dingin', 56, 31, 'Anda mencoba membuka <radical>penutup</radical> lubang got yang tertutup <radical>es</radical> dengan <radical>jackhammer</radical>melakukannya berkali-kali <radical>kali</radical> tetapi tidak berhasil karena terlalu <kanji>dingin</kanji>. Dingin sekali sehingga jackhammer Anda mulai membeku juga. Tetapi Anda harus membuka tutupnya agar Anda dapat mencobanya berulang kali!', 'Setiap kali jackhammer menghantam es <kanji>dingin</kanji> yang membekukan, ia mengeluarkan bunyi <reading>rin</reading>ging (りん) bernada tinggi. Sebenarnya sangat menjengkelkan untuk mendengarkannya tetapi Anda benar-benar perlu memecahkan kebekuan ini sehingga Anda harus terus mendengarkannya.')
    RETURNING id INTO k_2325_dingin;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '匠', 'tukang', 56, 32, 'Terdapat <radical>kandang</radikal> dengan <radikal>kapak</radikal> di atasnya di atas rumah Anda untuk menunjukkan bahwa Anda adalah seorang <kanji>pengrajin</kanji>. Semua pengrajin harus memasang tanda khusus ini di dekat tempat tinggal mereka untuk menunjukkan bahwa mereka membuat sesuatu.', '<kanji>Artisan</kanji> harus ditandai seperti ini karena <reading>Shou</reading>gun (しょう) mengatakan demikian. Shougun tidak mau bersusah payah mencari orang untuk membuatkan sesuatu untuknya, jadi dia menciptakan sistem baru ini.')
    RETURNING id INTO k_2326_tukang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '遥', 'jauh', 56, 33, '<radical>skuter</radical> <radical>satelit</radical> adalah satelit yang selalu <kanji>jauh</kanji> dan <kanji>jauh</kanji>.', 'Anda pikir Anda dapat melihat satelit skuter di jarak <kanji>jauh</kanji>, tapi sebenarnya itu hanya <reading>hallu</reading>cination (はる). Itu terlalu kecil dan jauh bagi Anda untuk melihatnya.')
    RETURNING id INTO k_2327_jauh;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '智', 'kebijaksanaan', 56, 34, 'Anda menembakkan <radical>panah</radical> ke <radical>mulut</radical> <radical>matahari</radical> sehingga akan memberi Anda hadiah <kanji>kebijaksanaan</kanji>. Anda mendengar tentang pahlawan Yunani yang melakukan hal ini dan dewa matahari memberinya kebijaksanaan untuk melihat segalanya. Anda berharap ini akan berhasil juga untuk Anda.', 'Anda berdiri menunggu <kanji>kebijaksanaan</kanji> mengenai Anda ketika sesuatu yang lain menyerang Anda. Di kepala. Aduh! Anda melihat ke bawah dan itu adalah roda <reading>chee</reading>se (ち)! Awalnya kamu marah, sampai kamu sadar kalau ini pasti pertanda. Keju ADALAH kebijaksanaan. Dan kunci hikmahnya adalah makan banyak keju!')
    RETURNING id INTO k_2328_kebijaksanaan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('kanji', '柴', 'belukar', 56, 35, 'Jika Anda bisa <radical>berhenti</radical> <radical>menyendokkan</radical>air ke <radical>pohon</radical> itu, kita bisa menggunakannya untuk <kanji>kayu</kanji>. Namun jika Anda tidak berhenti, maka akan terlalu basah untuk terbakar! Sudah berhenti!', 'Anda akhirnya membakar <kanji>kayu semak</kanji> dan tiba-tiba <reading>Shiba</reading> (しば) Inu melompat keluar dari api. Jadi itulah mengapa mereka menamai kayu ini dengan nama mereka atau... atau sebaliknya?')
    RETURNING id INTO k_2329_belukar;
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2295_mengalahkan, 'Mengalahkan', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2295_mengalahkan, 'はく', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2295_mengalahkan, 'ひょう', false, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2296_tetap, 'Tetap', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2296_tetap, 'Belum', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2296_tetap, 'ゆう', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2296_tetap, 'ゆ', false, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2296_tetap, 'なお', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2297_manajer, 'Manajer', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2297_manajer, 'さい', true, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2298_kesepian, 'Kesepian', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2298_kesepian, 'じゃく', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2298_kesepian, 'せき', false, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2298_kesepian, 'さび', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2298_kesepian, 'さみ', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2299_menjahit, 'Menjahit', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2299_menjahit, 'ほう', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2299_menjahit, 'ぬ', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2300_memberi, 'Memberi', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2300_memberi, 'ご', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2300_memberi, 'くれ', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2300_memberi, 'く', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2301_biasa_biasa_saja, 'Biasa-biasa saja', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2301_biasa_biasa_saja, 'ぼん', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2301_biasa_biasa_saja, 'はん', false, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2301_biasa_biasa_saja, 'おうよ', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2301_biasa_biasa_saja, 'およ', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2301_biasa_biasa_saja, 'すべ', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2302_menghormati, 'Menghormati', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2302_menghormati, 'うやうや', true, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2302_menghormati, 'きょう', false, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2303_bingung, 'Bingung', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2303_bingung, 'Campur aduk', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2303_bingung, 'さく', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2303_bingung, 'しゃく', false, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2304_bulir, 'Bulir', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2304_bulir, 'こく', true, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2305_mausoleum, 'Mausoleum', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2305_mausoleum, 'Makam', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2305_mausoleum, 'りょう', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2305_mausoleum, 'みささぎ', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2306_kejahatan, 'Kejahatan', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2306_kejahatan, 'へい', true, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2307_mengirimkan, 'Mengirimkan', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2307_mengirimkan, 'はく', true, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2308_miskin, 'Miskin', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2308_miskin, 'きゅう', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2308_miskin, 'きょう', false, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2308_miskin, 'きわ', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2309_sukacita, 'Sukacita', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2309_sukacita, 'Sukacita', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2309_sukacita, 'えつ', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2309_sukacita, 'よろこ', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2310_mengikat, 'Mengikat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2310_mengikat, 'Menahan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2310_mengikat, 'ばく', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2310_mengikat, 'しば', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2311_kontrol, 'Kontrol', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2311_kontrol, 'かつ', true, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2312_akord, 'Akord', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2312_akord, 'Rangkaian', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2312_akord, 'tali busur', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2312_akord, 'げん', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2312_akord, 'つる', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2313_mati_lemas, 'Mati lemas', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2313_mati_lemas, 'ちつ', true, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2314_banjir, 'Banjir', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2314_banjir, 'こう', true, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2315_selain_itu, 'Selain itu', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2315_selain_itu, 'せつ', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2315_selain_itu, 'しょう', false, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2315_selain_itu, 'おさ', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2315_selain_itu, 'かね', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2315_selain_itu, 'と', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2316_bosan, 'Bosan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2316_bosan, 'Puas', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2316_bosan, 'ほう', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2316_bosan, 'あ', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2317_pria, 'Pria', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2317_pria, 'しん', true, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2318_biasa, 'Biasa', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2318_biasa, 'よう', true, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2319_tenang, 'Tenang', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2319_tenang, 'やす', true, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2319_tenang, 'せい', false, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2320_menghargai, 'Menghargai', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2320_menghargai, 'Memuji', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2320_menghargai, 'か', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2320_menghargai, 'よい', false, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2320_menghargai, 'よみ', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2321_meremas, 'Meremas', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2321_meremas, 'さく', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2321_meremas, 'しぼ', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2322_kupu_kupu, 'kupu-kupu', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2322_kupu_kupu, 'ちょう', true, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2323_batu_nisan, 'Batu nisan', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2323_batu_nisan, 'ひ', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2323_batu_nisan, 'いしぶみ', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2324_perwira_militer, 'Perwira Militer', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2324_perwira_militer, 'Pangkat Militer', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2324_perwira_militer, 'い', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2324_perwira_militer, 'じょう', false, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2325_dingin, 'Dingin', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2325_dingin, 'りん', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2325_dingin, 'きびし', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2326_tukang, 'Tukang', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2326_tukang, 'しょう', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2326_tukang, 'たくみ', false, 'kunyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2327_jauh, 'Jauh', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2327_jauh, 'Jauh sekali', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2327_jauh, 'はる', true, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2327_jauh, 'よう', false, 'onyomi');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2328_kebijaksanaan, 'Kebijaksanaan', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2328_kebijaksanaan, 'ち', true, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2328_kebijaksanaan, 'とも', false, 'nanori');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2329_belukar, 'Belukar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (k_2329_belukar, 'Kayu bakar', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2329_belukar, 'しば', true, 'kunyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2329_belukar, 'さい', false, 'onyomi');
  INSERT INTO item_readings (item_id, reading, primary_reading, reading_type) VALUES (k_2329_belukar, 'し', false, 'onyomi');

  -- 3. VOCABULARIES
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '自決', 'bunuh-diri', 56, 36, 'Ketika <kanji>diri</kanji> Anda <kanji>memutuskan</kanji> sesuatu, itu disebut <vocabulary>penentuan nasib sendiri</vocabulary>. Namun kata ini terutama digunakan di Jepang sebagai eufemisme untuk <vocabulary>bunuh diri</vocabulary>. Penting bagi Anda untuk mengetahuinya.

Kata ini sangat formal dan umumnya digunakan dalam konteks sejarah, seperti merujuk pada kasus bunuh diri yang terjadi pada masa perang.', 'Ini merupakan kata jukugo yang biasanya berarti pembacaan on''yomi dari kanji. Jika Anda mengetahui pembacaan kanji Anda, Anda juga akan mengetahui cara membacanya.')
    RETURNING id INTO v_3021_bunuh_diri;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '神髄', 'esensi', 56, 37, '<kanji>sumsum</kanji> tulang <kanji>dewa</kanji> berisi <vocabulary>esensi</vocabulary> dan <vocabulary>jiwa</vocabulary> mereka. Namun, jangan main-main dengan sumsum tulang para dewa untuk mencoba memastikan hal ini — Anda mungkin akan terkena pukulan telak.

神髄 hanyalah cara lain untuk menulis 真髄, sehingga memiliki nuansa yang sama dalam mendeskripsikan makna terdalam atau bagian terpenting dari sesuatu. 真髄 sebenarnya dimulai dengan ejaan 神髄 yang salah, namun dipromosikan menjadi alternatif yang sah setelah cukup banyak orang mulai menggunakannya.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8251_esensi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '凛々しい', 'gagah', 56, 38, 'Orang yang <kanji>dingin</kanji> <kanji>dingin</kanji> sangat dingin sehingga mereka sangat keren. Mereka sangat keren dan <vocabulary>gagah</vocabulary> dan <vocabulary>jantan</vocabulary>. Sentuh orang jantan dan rasakan betapa dinginnya kulitnya. Begitulah yang sampai ke hati mereka.', 'Biasanya kalau lihat 々 berarti bacaannya adalah dua bacaan on''yomi yang berulang. Ini sedikit pengecualian. Mengatakan りんりん agak sulit, jadi hilangkan saja ん-nya dan Anda akan bisa membaca りり!')
    RETURNING id INTO v_8253_gagah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '非凡', 'keajaiban', 56, 39, 'Ini adalah sebuah <kanji>ketidakadilan</kanji> karena begitu banyak orang di dunia ini yang <kanji>biasa-biasa saja</kanji> dan kita semua tidak bisa menjadi <vocabulary>ajaib</vocabulary> dalam suatu hal. Setiap orang berhak menjadi <vocabulary>unik</vocabulary>, tapi itu tidak benar.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8254_keajaiban;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '凡人', 'orang-biasa', 56, 40, '<kanji>biasa-biasa saja</kanji> <kanji>orang</kanji> adalah <vocabulary>orang biasa</vocabulary>. Tidak ada yang aneh dan menarik dari mereka.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8255_orang_biasa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '平凡', 'umum', 56, 41, 'Kamu sangat <kanji>biasa-biasa saja</kanji> sehingga kamu <kanji>datar</kanji>. Itu benar-benar <vocabulary>umum</vocabulary>. Lihatlah sebagian besar wilayah midwest. Benar-benar <vocabulary>biasa-biasa saja</vocabulary> dan datar juga. Dan ada banyak sekali di luar sana.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8256_umum;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '凡庸', 'biasa-biasa-saja', 56, 42, 'Hal-hal <kanji>Biasa-biasa saja</kanji> dan <kanji>biasa</kanji> tetap saja <vocabulary>biasa-biasa saja</vocabulary> dan <kanji>biasa</kanji>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8257_biasa_biasa_saja;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '匠', 'tukang', 56, 43, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.

匠 berarti <vocabulary>artisan</vocabulary> atau <vocabulary>craftsman</vocabulary> yang terampil, seseorang yang memiliki keterampilan luar biasa dalam membuat sesuatu dengan tangan. Kata tersebut mengandung arti keahlian dan keahlian yang kuat, sering kali dibangun melalui dedikasi bertahun-tahun. Ini biasanya digunakan untuk pengrajin tradisional seperti tukang kayu, pembuat pedang, atau pembuat tembikar, tetapi juga dapat digunakan secara lebih luas untuk siapa pun yang dianggap sebagai "ahli" dalam kerajinan mereka.', 'Karena kata ini terdiri dari satu kanji, kemungkinan besar menggunakan bacaan kun''yomi. Anda tidak mempelajari bacaan ini, jadi inilah mnemonik untuk membantu Anda: 

Anda bertemu dengan seorang <vocabulary>artisan</vocabulary> dan mereka menempelkan gambar di dinding untuk dijual. Kamu ingin tukangnya membuatkan fotomu juga sehingga kamu berteriak, "<reading>TACK ME</reading> (たくみ)!"')
    RETURNING id INTO v_8258_tukang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '意匠', 'desain', 56, 44, 'Seorang <kanji>pengrajin</kanji> mempunyai <kanji>ide</kanji> dan membuat <vocabulary>desain</vocabulary> yang benar-benar baru!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8259_desain;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '師匠', 'menguasai', 56, 45, 'Seorang <kanji>pengrajin</kanji> yang cukup baik untuk menjadi <kanji>guru</kanji> harus menjadi <vocabulary>master</vocabulary> dalam keahliannya.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8260_menguasai;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '巨匠', 'menguasai', 56, 46, 'Seorang <kanji>pengrajin</kanji> yang merupakan <kanji>raksasa</kanji> di bidangnya adalah <vocabulary>master</vocabulary>! Semua orang tahu nama mereka! Atau, mereka sangat besar... seperti tinggi, jadi semua orang menyebut mereka master karena mereka tidak ingin dihancurkan.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8261_menguasai;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '呆れる', 'menjadi-takjub', 56, 47, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>kejutan</kanji>, jadi versi kata kerjanya adalah <vocabulary>terkejut</vocabulary> atau <vocabulary>beautiful</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda tidak belajar membaca dengan kanji ini, jadi inilah mnemonik untuk membantu Anda: 

Jika kamu ingin <vocabulary>terkejut</vocabulary>, kamu akan berteriak, "<reading>ACK</reading> (あき)!"')
    RETURNING id INTO v_8262_menjadi_takjub;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '呉服', 'tirai', 56, 48, 'Jika Anda ingin <kanji>memberikan</kanji> <kanji>pakaian</kanji> kepada orang lain, Anda harus membeli <vocabulary>gorden</vocabulary> terlebih dahulu lalu menjahitnya. Itu kata yang bagus untuk <vocabulary>kain</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8263_tirai;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '呉越同舟', 'musuh-pahit-dalam-perahu-yang-sama', 56, 49, 'Anda <kanji>memberikan</kanji> informasi kepada lawan Anda yang akan <kanji>melampaui</kanji> apa yang biasanya Anda katakan dan Anda menyadari bahwa Anda berdua berada dalam <kanji>perahu</kanji> yang <kanji>sama</kanji> dalam banyak hal pribadi. Anda adalah <vocabulary>musuh bebuyutan di perahu yang sama</vocabulary>! Atau <vocabulary>saingan klasik</vocabulary>, seperti yang Anda lihat di film dan dibaca. Anda tidak akan pernah tahu jika Anda tidak melampaui apa yang biasanya Anda berikan kepada orang lain.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda belum mempelajari bacaan ini untuk 舟, jadi inilah mnemonik untuk membantu Anda:

Masalah dengan <vocabulary>musuh bebuyutan di perahu yang sama</vocabulary> adalah mereka tidak pernah mencoba untuk saling menginjak-injak <reading>sepatu</reading> (しゅう).')
    RETURNING id INTO v_8264_musuh_pahit_dalam_perahu_yang_sama;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '嘉日', 'hari-yang-menguntungkan', 56, 50, '<kanji>hari</kanji> yang Anda hargai <kanji>tinggi</kanji> adalah <vocabulary>hari yang penuh keberuntungan</vocabulary>. Itu adalah cara yang bagus untuk mengatakan bahwa ini adalah <vocabulary>hari yang sangat beruntung</vocabulary>!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8265_hari_yang_menguntungkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '主宰', 'pengawasan', 56, 51, '<kanji>master</kanji> <kanji>manajer</kanji> mengatur semua manajer lainnya dan dia bertanggung jawab atas <vocabulary>supervisi</vocabulary> mereka. Jika terjadi kesalahan maka dialah yang disalahkan! Dia harus terus mencermati mereka!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8266_pengawasan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '宰相', 'perdana-menteri', 56, 52, 'Orang yang <kanji>bersama</kanji> sepakat untuk menjadi <kanji>manajer</kanji> negara adalah <vocabulary>Perdana Menteri</vocabulary>.

Dibandingkan dengan 首相 atau 総理大臣 yang telah Anda pelajari sebagai "perdana menteri" sebelumnya, 宰相 adalah perdana menteri yang ditunjuk oleh raja. Jadi ini adalah istilah kuno yang digunakan untuk perdana menteri di istana kekaisaran atau kerajaan.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda sudah mengetahui kedua bacaan tersebut, tetapi pastikan untuk membaca 相 sebagai しょう. Hal ini seharusnya mudah diingat karena <read>Sho</reading>gun (しょう) seperti perdana menteri di masa lalu!')
    RETURNING id INTO v_8267_perdana_menteri;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '寂しい', 'kesepian', 56, 53, 'Ini adalah kanji tunggal dengan い di akhir, artinya Anda tahu itu mungkin kata sifat. Apa bentuk kata sifat dari <kanji>kesepian</kanji>? Masih <vocabulary>sepi</vocabulary>!', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda belum mempelajari bacaan ini, jadi inilah mnemonik untuk membantu Anda:

Tidak ada seorang pun yang <vocabulary>kesepian</vocabulary> seperti <reading>sa</reading>d <reading>bee</reading> (さび). Lebah sedih sedih karena tidak punya teman dan itu membuatnya sangat kesepian. Lebah sedih yang malang.')
    RETURNING id INTO v_8268_kesepian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '静寂', 'kesunyian', 56, 54, 'Jika Anda <kanji>kesepian</kanji> dan <kanji>tenang</kanji> Anda akan dikelilingi dalam <vocabulary>kesunyian</vocabulary>.

静寂 cukup maju, jadi sebagian besar Anda hanya akan melihatnya digunakan dalam literatur untuk menunjukkan rasa keheningan yang mendalam.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8269_kesunyian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '大尉', 'kapten', 56, 55, '<kanji>besar</kanji> <kanji>perwira militer</kanji> bertanggung jawab atas semua orang. Dialah <vocabulary>kapten</vocabulary>. Anda bisa mengetahuinya karena dia memakai topi kapten yang sangat besar.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8270_kapten;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '少尉', 'letnan-dua', 56, 56, 'Seseorang yang hanya menjadi <kanji>perwira militer</kanji> selama <kanji>beberapa</kanji> tahun belum mampu mencapai pangkat yang tinggi. Mereka adalah <vocabulary>panji</vocabulary>, atau <vocabulary>letnan dua</vocabulary>. Itu masih bukan posisi yang buruk!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8271_letnan_dua;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '中尉', 'letnan-satu', 56, 57, 'Seorang <kanji>perwira militer</kanji> yang berada di <kanji>tengah</kanji> kariernya telah menjadi <vocabulary>letnan satu</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8272_letnan_satu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '尚更', 'semakin-banyak-lagi', 56, 58, 'Memiliki <kanji>selanjutnya</kanji> <kanji>pembaruan</kanji> berarti segala sesuatunya menjadi <vocabulary>lebih</vocabulary>... baik, buruk, imut, jelek, apa pun yang Anda bicarakan! Atau, sebaliknya, <vocabulary>masih kurang</vocabulary>.', 'Bacaan kata ini sama-sama bacaan kun''yomi. Anda telah mempelajari kedua bacaan ini sekarang jadi Anda seharusnya bisa membacanya sendiri.')
    RETURNING id INTO v_8273_semakin_banyak_lagi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '尚且つ', 'namun', 56, 59, 'Seseorang terus-menerus mengucapkan <kanji>selanjutnya</kanji> dan <kanji>juga</kanji> berulang kali. Saat Anda berpikir mereka sudah berhenti, mereka berbalik dan berkata "<vocabulary>dan lagi</vocabulary>," sebelum kembali mengulangi <vocabulary>selanjutnya</vocabulary> dan <vocabulary>selain</vocabulary> lagi dan lagi. Ini membuatmu gila.', 'Bacaan kata ini sama-sama bacaan kun''yomi. Anda telah mempelajari kedua bacaan ini sekarang jadi Anda seharusnya bisa membacanya sendiri.')
    RETURNING id INTO v_8274_namun;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '庶民的', 'biasa', 56, 60, 'Ingat bagaimana 庶民 berarti "orang biasa"? Ya, segala sesuatu yang "<kanji>seperti</kanji>" adalah <vocabulary>biasa</vocabulary>, <vocabulary>bersahaja</vocabulary>, dan <vocabulary>mudah didekati</vocabulary>.

Berbeda dengan 庶民 yang terkadang berkonotasi negatif, 庶民的 biasanya berkonotasi positif. Ini digunakan untuk hal-hal yang menarik bagi orang-orang biasa, seperti restoran sederhana atau orang yang memiliki suasana akrab dan mudah didekati.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8275_biasa;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '疲弊', 'kelelahan', 56, 61, 'Jika Anda <kanji>lelah</kanji> dengan semua hal <kanji>jahat</kanji> dalam hidup Anda, Anda mungkin akan mati karena <vocabulary>kelelahan</vocabulary>!

Meskipun 疲労 dan 疲れ sebagian besar mengacu pada kelelahan fisik atau mental, 疲弊 menggambarkan kelelahan karena stres yang berkepanjangan, terlalu banyak bekerja, atau kesulitan jangka panjang. Oleh karena itu, kata ini juga dapat digunakan untuk menggambarkan kelelahan ekonomi atau finansial.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8276_kelelahan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '弊害', 'efek-jahat', 56, 62, '<kanji>kejahatan</kanji> <kanji>kerusakan</kanji> yang Anda lakukan memiliki <vocabulary>efek jahat</vocabulary> pada orang-orang. Semua hal negatif itu bisa mempunyai <vocabulary>pengaruh yang sangat merugikan</vocabulary> pada mereka. Anda harus berpikir sebelum melakukan sesuatu.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8277_efek_jahat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '弦', 'rangkaian', 56, 63, 'Kanji dan kata-katanya mempunyai arti yang sama — dalam hal ini, arti <vocabulary>string</vocabulary> dan <vocabulary>bowstring</vocabulary> musik!', 'Bacaannya bisa berupa bacaan kun''yomi atau on''yomi, jadi Anda punya pilihan. Karena kamu sudah mempelajari on''yomi げん dengan kanji, mari pelajari cara membaca つる di sini.

Saat orang melihat busur misterius Anda, rasa ingin tahu mereka mengambil alih. Tanpa bertanya, mereka langsung berjalan dan mulai menarik <vocabulary>tali busur</vocabulary>. <read>Terlalu sayang</reading>de (つる)! Sungguh, beberapa orang tidak punya sopan santun. Siapa yang baru saja menarik tali busur seseorang seperti itu?! TERLALU KASAR!

Perlu diingat bahwa pembacaan on''yomi げん mengacu pada senar alat musik petik, sedangkan kun''yomi つる mengacu pada senar busur.')
    RETURNING id INTO v_8278_rangkaian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '弦楽', 'musik-senar', 56, 64, 'Ingat bagaimana 楽 digunakan dalam 音楽 (musik)? Nah ini dia 楽 lagi. Jadi ini adalah <kanji>string</kanji> <kanji>musik</kanji>, yang tentunya berarti <vocabulary>musik string</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi, dan Anda telah mempelajari keduanya. Ingatlah bahwa 楽 menggunakan bacaan sekundernya がく jika digunakan dalam kata-kata yang berhubungan dengan musik!')
    RETURNING id INTO v_8279_musik_senar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '怠い', 'merasa-lambat', 56, 65, 'Ini adalah kanji tunggal dengan い di akhir, artinya Anda tahu itu mungkin kata sifat. Kanji sendiri berarti <kanji>malas</kanji>, namun kata sifat ini lebih ditujukan untuk jenis perasaan yang terkait dengan kemalasan atau ketidakaktifan. Itu sebabnya artinya <vocabulary>merasa lesu</vocabulary> atau <vocabulary>kurang energi</vocabulary>.

怠い adalah apa yang Anda rasakan ketika Anda sakit, kelelahan, atau tidak bisa bergerak. Anda juga dapat menggunakannya secara kiasan untuk sesuatu yang <vocabulary>mengganggu</vocabulary> atau menguras mental — argumen yang melelahkan, mungkin, atau lelucon tidak lucu yang membuat Anda berpikir "Ugh."

Perhatikan bahwa kata ini biasanya ditulis dalam kana sebagai だるい atau ダルい, terutama dalam tulisan biasa.', 'Pembacaan kata ini merupakan pengecualian. Berikut ini mnemonik untuk membantu Anda mengingatnya:

Jika Anda <vocabulary>merasa lesu</vocabulary> atau <vocabulary>kekurangan energi</vocabulary> cukup nyalakan "Sandstorm" dari <reading>Daru</reading>de (だる) dan itu akan membuat Anda bersemangat. Jika bersusah payah mencari Darude di YouTube terasa terlalu <vocabulary>menyusahkan</vocabulary>, berikut <a href="https://www.youtube.com/watch?v=y6120QOlsfU" target="_blank">link</a> untuk Anda, pemalas.')
    RETURNING id INTO v_8280_merasa_lambat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '怠け者', 'pemalas', 56, 66, '<kanji>malas</kanji> <kanji>seseorang</kanji> adalah <vocabulary>orang yang malas</vocabulary>.

怠け者 menggambarkan seseorang yang biasanya menghindari usaha. Perhatikan bahwa ketika ditulis dalam katakana sebagai ナマケモノ, biasanya mengacu pada binatang. Karena, ya… Sloth bergerak lambat dan terlihat agak malas, lho?', 'Bacaan kata ini sama-sama bacaan kun''yomi. Anda telah mempelajari kedua bacaan ini sekarang jadi Anda seharusnya bisa membacanya sendiri.')
    RETURNING id INTO v_8281_pemalas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '恭しい', 'hormat', 56, 67, 'Ini adalah kanji tunggal dengan い di akhir, artinya Anda tahu itu mungkin kata sifat. Apa bentuk kata sifat dari <kanji>rasa hormat</kanji>? Itu <kosa kata>hormat</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Anda mempelajari bacaan ini ketika mempelajari kanji jadi Anda seharusnya bisa membaca ini juga.')
    RETURNING id INTO v_8282_hormat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '満悦', 'sukacita', 56, 68, 'Anda <kanji>penuh</kanji> dengan <kanji>kegembiraan</kanji>. Namun tetap <vocabulary>menyenangkan</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8283_sukacita;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '愚か', 'konyol', 56, 69, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi.  Anda belum mempelajari bacaan ini, jadi inilah mnemonik untuk membantu Anda:

Orang yang <vocabulary>bodoh</vocabulary> akan mengambil <reading>o</reading>ld <reading>roa</reading>d (おろ), bukannya yang baru dan aman. Kamu harus benar-benar <vocabulary>bodoh</vocabulary> untuk menempuh jalan lama yang penuh retakan dan penuh orang menakutkan. Ambil yang baru!')
    RETURNING id INTO v_8284_konyol;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '〜拍', 'penghitung-untuk-ketukan', 56, 70, 'Kanji mengacu pada <kanji>ketukan</kanji> dan 〜 memberi tahu Anda bahwa ini adalah penghitung. Jadi ini digunakan sebagai <vocabulary>penghitung ketukan</vocabulary> saat Anda mendengarkan atau memutar musik.', 'Bacaannya sama dengan kanji yang Anda pelajari, artinya Anda tahu bacaannya!')
    RETURNING id INTO v_8285_penghitung_untuk_ketukan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '拍手', 'tepuk-tangan', 56, 71, '<kanji>Tangan</kanji>pukul</kanji>yang bersamaan sebenarnya adalah <vocabulary>tepuk tangan</vocabulary>. Padahal... kamu mungkin melakukan kesalahan jika kamu benar-benar menghajar mereka bersama-sama.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8286_tepuk_tangan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '脈拍', 'detak', 56, 72, '<kanji>pembuluh darah</kanji> Anda membawa <kanji>detak</kanji> kehidupan yang stabil. Irama berirama itu adalah <vocabulary>denyut</vocabulary> Anda. Itu selalu ada, berdenyut… semoga.

脈拍 adalah kata teknis yang merujuk secara khusus pada denyut nadi Anda. Itu yang Anda rasakan saat memeriksa denyut nadi di pergelangan tangan atau leher.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8287_detak;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '搾る', 'untuk-memeras', 56, 73, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>memeras</kanji>, jadi versi kata kerjanya adalah <vocabulary>to memeras</vocabulary>. Perbedaan kata ini dengan 絞る adalah 絞る berarti "memeras" dan 搾る berarti memeras atau <vocabulary>membuat jus</vocabulary> buah/sayuran atau <vocabulary>memerah susu</vocabulary> sapi.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi.  Anda belum mempelajari bacaan ini, jadi inilah mnemonik untuk membantu Anda:

Setelah peternak <vocabulary>memerah susu</vocabulary> sapinya, <reading>dia membungkuk</reading> kepada sapi tersebut untuk mengucapkan terima kasih karena telah membiarkan dia <vocabulary>memeras</vocabulary> susu segar.')
    RETURNING id INTO v_8288_untuk_memeras;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '搾取', 'eksploitasi', 56, 74, '<kanji>Bawa</kanji> anak-anak dari rumah mereka dan <kanji>peras</kanji> semua bakat mereka sampai mereka tidak punya apa-apa lagi. Hal ini disebut <vocabulary>eksploitasi</vocabulary>, dan banyak perusahaan menghasilkan uang darinya. Tapi itu tidak terlalu bagus.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8289_eksploitasi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '搾乳', 'pemerahan', 56, 75, '<kanji>Peras</kanji> ambing untuk mendapatkan <kanji>susu</kanji>. Lihat itu, kamu sedang <vocabulary>memerah susu</vocabulary> seekor sapi!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8290_pemerahan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '摂氏', 'celcius', 56, 76, 'Oke, jadi ini sulit tapi tetaplah bersamaku! <kanji>Selain</kanji> <kanji>nama keluarga</kanji> Anda, hal pertama yang perlu Anda pelajari sebagai seorang anak adalah bagaimana memahami <vocabulary>celcius</vocabulary>. Jika Anda tidak dapat mengetahui berapa suhu di luar, atau di rumah Anda, atau di dalam tubuh Anda untuk mengetahui apakah Anda sakit, Anda tidak akan bisa menangani makhluk hidup ini dengan baik. Jadi ketika Anda mengingat kembali hal pertama yang Anda pelajari selain nama keluarga Anda sendiri, pikirkanlah suhu celcius!

Tentu saja, pada kenyataannya, kanji-kanji ini dipilih hanya karena pengucapannya, bukan maknanya, tapi mudah-mudahan mnemonik ini akan membantu Anda mengingat kanji mana yang digunakan di sini!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8291_celcius;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '摂理', 'takdir-tuhan', 56, 77, 'Beberapa hal terjadi di luar <kanji>alasan</kanji>. Itu terjadi <kanji>sebagai tambahan</kanji> padanya. Itu disebut <vocabulary>pemeliharaan ilahi</vocabulary>. Anda tidak bisa menjelaskannya, tetapi sesuatu di luar nalar pasti mempengaruhi hal-hal di sekitar Anda.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8292_takdir_tuhan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '摂取', 'asupan', 56, 78, 'Tubuh Anda <kanji>mengambil</kanji> nutrisi ke dalam dirinya sendiri <kanji>di samping</kanji> semua makanan tambahan yang Anda makan. Ini disebut <vocabulary>asupan</vocabulary> harian Anda. Dan ia mendapatkan semua nutrisi tersebut ke dalam tubuh Anda melalui <vocabulary>penyerapan</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8293_asupan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '智', 'kebijaksanaan', 56, 79, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.

智 berarti <vocabulary>wisdom</vocabulary> atau <vocabulary>intelligence</vocabulary>, terutama yang berasal dari penilaian yang baik dan pemikiran yang jernih. Daripada sekedar pengetahuan, ini mengacu pada <vocabulary>pemahaman</vocabulary> yang lebih dalam tentang apa yang Anda ketahui dan bagaimana menerapkannya. Dengan sendirinya, ini memiliki nuansa klasik atau sastra, jadi Anda kebanyakan akan menemukannya dalam tulisan yang lebih formal atau tradisional.', 'Bacaannya sama dengan kanji yang Anda pelajari, artinya Anda tahu bacaannya!')
    RETURNING id INTO v_8294_kebijaksanaan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '柴', 'kayu-bakar', 56, 80, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan kanji yang Anda pelajari, artinya Anda tahu bacaannya!')
    RETURNING id INTO v_8295_kayu_bakar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '柴犬', 'shiba-inu', 56, 81, '<kanji>kayu semak</kanji> <kanji>anjing</kanji> adalah <vocabulary>Shiba Inu</vocabulary>. Warnanya oranye cantik sama dengan pohon semak belukar, jadi dari situlah mereka mendapatkan namanya.', 'Bacaan kata ini sama-sama bacaan kun''yomi. Anda telah mempelajari kedua bacaan ini sekarang jadi Anda seharusnya bisa membacanya sendiri.')
    RETURNING id INTO v_8296_shiba_inu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '洪水', 'banjir', 56, 82, '<kanji>banjir</kanji> dengan <kanji>air</kanji> masih menghasilkan <vocabulary>banjir</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri. Tapi hati-hati karena すい menjadi ずい di sini.')
    RETURNING id INTO v_8297_banjir;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '猶予', 'perpanjangan', 56, 83, 'Jika Anda <kanji>masih</kanji> memerlukan lebih banyak waktu untuk menyelesaikan sebuah proyek dan Anda memberi tahu siapa pun yang bertanggung jawab <kanji>sebelumnya</kanji>, Anda akan bisa mendapatkan <vocabulary>perpanjangan</vocabulary>. Maka Anda akan bisa menyelesaikannya.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8298_perpanjangan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '疎か', 'menelantarkan', 56, 84, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Pembacaan kata ini merupakan pengecualian. Berikut ini mnemonik untuk membantu Anda mengingatnya:

Anda melihat banyak <vocabulary>pengabaian</vocabulary> ketika berhubungan dengan <reading>o</reading>ld <reading>ro</reading>ad <reading>so</reading>ap <reading>ca</reading>rs (おろそか). Jika Anda berkendara di jalan lama, Anda akan melihat mobil-mobil terbengkalai yang terbuat dari sabun di mana-mana. Sungguh menyedihkan.')
    RETURNING id INTO v_8299_menelantarkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '方向音痴', 'tidak-ada-rasa-arah', 56, 85, 'Ini merupakan gabungan kata 方向 dan 音痴. Jika indra Anda terhadap arah tidak peka terhadap nada, itu berarti Anda <vocabulary>tidak memiliki indera pengarahan</vocabulary>. Anda tersesat tidak peduli seberapa keras Anda mencoba.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8300_tidak_ada_rasa_arah;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '墓碑', 'nisan', 56, 86, 'Gabungkan <kanji>kuburan</kanji> dan <kanji>batu nisan</kanji> dan Anda akan membuat <vocabulary>batu nisan</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8301_nisan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '石碑', 'tugu-batu', 56, 87, '<kanji>batu nisan</kanji> yang terbuat dari <kanji>batu</kanji> besar digunakan sebagai <vocabulary>monumen batu</vocabulary>. Batu-batu ini biasanya sangat besar sehingga digunakan untuk beberapa orang yang meninggal bersama-sama.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8302_tugu_batu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '碑文', 'prasasti', 56, 88, '<kanji>tulisan</kanji> di <kanji>batu nisan</kanji> membentuk <vocabulary>prasasti</vocabulary> atau <vocabulary>epitaph</vocabulary> yang diputuskan oleh anggota keluarga untuk ditaruh di sana.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8303_prasasti;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '記念碑', 'monumen', 56, 89, 'Beberapa <kanji>batu nisan</kanji> digunakan untuk <kanji>menulis</kanji> <kanji>pikiran</kanji> orang mati. Itu adalah <vocabulary>monumen</vocabulary>. Mereka bisa sangat besar atau sangat kecil, tetapi mereka harus dipersembahkan kepada seseorang (biasanya orang yang sudah meninggal).', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8304_monumen;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '穀物', 'bulir', 56, 90, '<kanji>Biji-bijian</kanji> <kanji>benda</kanji> adalah <vocabulary>biji-bijian</vocabulary> dan <vocabulary>sereal</vocabulary>!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8305_bulir;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '穀類', 'biji-bijian', 56, 91, '<kanji>Biji-bijian</kanji> adalah <kanji>jenis</kanji> dari <vocabulary>biji-bijian</vocabulary>! Anda pikir itu akan menjadi sesuatu yang lain? Tidak. Biji-bijian sangat membosankan.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8306_biji_bijian;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '米穀', 'beras', 56, 92, '<kanji>Nasi</kanji> <kanji>biji-bijian</kanji> merupakan <vocabulary>nasi</vocabulary> yang kita makan setiap hari.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8307_beras;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '窒息', 'mati-lemas', 56, 93, '<kanji>Tercekik</kanji> hingga Anda tidak mempunyai <kanji>nafas</kanji> lagi dan Anda akan mati karena <vocabulary>mati lemas</vocabulary>. Kunyah makanan Anda dan ini tidak boleh terjadi!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8308_mati_lemas;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '窒素', 'nitrogen', 56, 94, 'Sebuah <kanji>elemen</kanji> yang dapat menyebabkan seseorang <kanji>mati lemas</kanji> adalah <vocabulary>nitrogen</vocabulary>. Terlalu banyak atau terlalu sedikit akan menyebabkannya.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8309_nitrogen;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '窮地', 'dilema', 56, 95, '<kanji>Miskin</kanji> <kanji>tanah</kanji> akan dihadapkan pada <vocabulary>dilema</vocabulary>. Apakah mereka pergi? Atau apakah mereka mencoba memanfaatkannya sebaik mungkin?', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8310_dilema;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '窮屈', 'ketat', 56, 96, 'Jangan <kanji>menyerah</kanji> pada apa pun saat Anda <kanji>miskin</kanji> karena itu akan membuat segalanya menjadi lebih <vocabulary>ketat</vocabulary>. Biasanya Anda harus <vocabulary>kaku</vocabulary> mengenai apa yang Anda mampu dan tidak mampu beli.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8311_ketat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '窮乏', 'kemiskinan', 56, 97, 'Kota-kota yang <kanji>miskin</kanji> dan <kanji>langka</kanji> akan berakhir dengan <vocabulary>kemiskinan</vocabulary> dan <vocabulary>kemiskinan</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8312_kemiskinan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '困窮', 'kemiskinan', 56, 98, 'Anda akan <kanji>tertekan</kanji> dan <kanji>miskin</kanji> jika Anda hidup dalam <vocabulary>kemiskinan</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8313_kemiskinan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '窮状', 'kesulitan', 56, 99, '<kanji>Kemiskinan</kanji> <kanji>kondisi</kanji> menyebabkan <vocabulary>kesusahan</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8314_kesulitan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '紳士', 'pria', 56, 100, '<kanji>Tuan-tuan</kanji> yang juga <kanji>samurai</kanji> tetaplah <vocabulary>tuan-tuan</vocabulary>. Mereka hanya membawa pedang.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8315_pria;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '縛る', 'untuk-mengikat', 56, 101, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>mengikat</kanji>, jadi versi kata kerjanya adalah <vocabulary>to tie</vocabulary> atau <vocabulary>to bind</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi.  Anda belum mempelajari bacaan ini, jadi inilah mnemonik untuk membantu Anda:

Apa yang ingin <vocabulary>diikat</vocabulary> Anda? <reading>Shiba</reading> (しば) Inu-mu! Dia selalu kabur dan mendapat masalah. Anda harus mengikatnya di luar ketika Anda meninggalkan rumah. Memang menyedihkan, tapi setidaknya itu membuatnya tetap aman!')
    RETURNING id INTO v_8316_untuk_mengikat;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '束縛', 'pengekangan', 56, 102, '<kanji>Mengikat</kanji> <kanji>seikat</kanji> tongkat ke seseorang sebagai jenis <vocabulary>pengekangan</vocabulary>. Mereka tidak bisa kabur jika diikat pada seikat tongkat, bukan?', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8317_pengekangan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '縫う', 'menjahit', 56, 103, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanji itu sendiri berarti <kanji>menjahit</kanji>, jadi versi kata kerjanya adalah <vocabulary>menjahit</vocabulary> atau <vocabulary>menjahit</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi.  Anda belum mempelajari bacaan ini, jadi inilah mnemonik untuk membantu Anda:

Anda harus <vocabulary>menjahit</vocabulary> sendiri beberapa pakaian karena jika tidak, Anda akan sepenuhnya <read>nu</reading>de (ぬ). Anda tidak ingin orang lain melihat bagian Anda! Jahit dengan cepat!')
    RETURNING id INTO v_8318_menjahit;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '裁縫', 'jahit', 56, 104, '<kanji>Menjahit</kanji> dengan sangat baik sehingga orang akan <kanji>menilai</kanji> Anda sebagai yang terbaik dan Anda akan menjadi juara dalam <vocabulary>menjahit</vocabulary>!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8319_jahit;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '縫製', 'jahit', 56, 105, '<kanji>Menjahit</kanji> untuk <kanji>membuat</kanji> sesuatu dengan <vocabulary>menjahit</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8320_jahit;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '船舶', 'mengirimkan', 56, 106, '<kanji>perahu</kanji> <kanji>kapal</kanji> tetaplah sebuah <vocabulary>kapal</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8321_mengirimkan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '舶来', 'impor', 56, 107, 'Sebuah <kanji>perahu</kanji> yang <kanji>datang</kanji> dari tempat lain membawa barang <vocabulary>impor</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8322_impor;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '蝶', 'kupu-kupu', 56, 108, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.

蝶 adalah cara formal untuk mengucapkan <vocabulary>kupu-kupu</vocabulary>. Anda mungkin menemukan ini dalam literatur atau tulisan yang lebih teknis, seperti panduan lapangan serangga atau buku pelajaran biologi. Ini juga sering digunakan dalam kata majemuk seperti 蝶ネクタイ (dasi kupu-kupu) dan 蝶結び (simpul busur), atau nama spesies kupu-kupu seperti 紋白蝶 (kupu-kupu putih kubis).', 'Bacaannya sama dengan kanji yang Anda pelajari, artinya Anda tahu bacaannya!')
    RETURNING id INTO v_8323_kupu_kupu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '歌謡曲', 'lagu-populer', 56, 109, 'Anda sudah mengetahui bahwa 歌謡 berarti "lagu", jadi ketika Anda menambahkan <kanji>musik</kanji> ke dalamnya, itu menjadi <vocabulary>lagu</vocabulary> yang super. Ini bukan sekedar lagu lagi. Itu ada dalam semua yang Anda dengar!

Secara lebih luas, ini bisa merujuk pada keseluruhan genre musik pop Jepang dari era Showa. Dengan kata lain, ini mengacu pada <vocabulary>retro J-POP</vocabulary> atau <vocabulary>musik pop era Showa</vocabulary>. Kata <vocabulary>kayokyoku</vocabulary> terkadang juga digunakan dalam bahasa Inggris.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8324_lagu_populer;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '管轄', 'yurisdiksi', 56, 110, 'Siapa pun yang memegang <kanji>pipa</kanji> memiliki <kanji>kontrol</kanji> atas situasi sehingga Anda memberi mereka <vocabulary>yurisdiksi</vocabulary> untuk melakukan apa pun yang mereka inginkan. Itu lebih baik daripada tertabrak pipa.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8325_yurisdiksi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '所轄', 'yurisdiksi', 56, 111, '<kanji>Tempat</kanji> yang Anda <kanji>kendali</kanji> adalah <vocabulary>yurisdiksi</vocabulary> Anda.

所轄 biasanya mengacu pada yurisdiksi kantor polisi atau lembaga penegak hukum lainnya, seperti 所轄の警察署 (kantor polisi distrik) atau 所轄の税務署 (kantor pajak distrik). Kata ini juga dapat digunakan untuk departemen pemerintah yang memiliki wewenang atas tugas atau wilayah tertentu, seperti 所轄官庁 (otoritas terkait), serta dalam organisasi untuk menjelaskan departemen mana yang bertanggung jawab atas tugas tertentu, seperti 所轄部門 (departemen yang bertanggung jawab).', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8326_yurisdiksi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '直轄', 'kontrol-langsung', 56, 112, 'Ingat bagaimana 直 juga bisa berarti "langsung?" Nah, jika Anda memiliki <kanji>langsung</kanji> <kanji>kontrol</kanji>, maka Anda memiliki… <vocabulary>kontrol langsung</vocabulary>. Tidak ada yang lebih sederhana dari itu.

直轄 adalah kata formal yang biasanya digunakan ketika otoritas pusat mengelola sesuatu secara langsung, melewati tingkat lokal atau menengah. Misalnya, lembaga yang berada di bawah kendali langsung pemerintah dapat disebut 政府の直轄機関.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membacanya sendiri — hati-hati jika ちょく disingkat menjadi ちょっ.')
    RETURNING id INTO v_8327_kontrol_langsung;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '逸れる', 'untuk-menyimpang', 56, 113, 'Ini adalah bentuk intransitif dari 逸らす (berpaling), artinya tidak menggunakan objek langsung. 逸れる itu seperti sesuatu yang menyimpang dari keadaan normal, jadi artinya <vocabulary>menyasar</vocabulary>. Percakapan yang melenceng dari topik utama, mobil yang melenceng dari jalan utama, atau fokus Anda yang melenceng saat ada gangguan — semua ini cocok dengan 逸れる.

Dalam situasi lain, ini bisa berarti <vocabulary>terpisah</vocabulary>, seperti ketika Anda terpisah dari teman-teman Anda di tengah keramaian.

Ingatlah bahwa ini bersifat intransitif, bayangkan saja (れる) jarang sekali Anda tersesat dan berkelana, baik di jalan atau dalam percakapan.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi. Kedua bacaan kun''yomi memiliki nuansa yang berbeda, jadi inilah mnemonik untuk membantu Anda:

Dalam percakapan kamu sepertinya selalu <vocabulary>menyimpang</vocabulary> dari pokok permasalahan dan berbicara tentang <reading>so</reading>ap (そ). Anda sangat menyukai sabun — aromanya, gelembungnya, kebersihannya. Satu hal yang tidak pernah Anda hindari adalah… melenceng dari topik hanya untuk membahas sabun.

Dan karena Anda selalu memikirkan busa sepanjang waktu, Anda cenderung <vocabulary>terpisah</vocabulary> dari teman-teman Anda setiap kali pergi bersama. Saat mereka akhirnya menemukan Anda, mereka memberi Anda <read>pelukan</reading> erat (はぐ). Wajar jika kita memeluk seseorang setelah berpisah cukup lama, bukan?')
    RETURNING id INTO v_8328_untuk_menyimpang;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '遥か', 'jauh-sekali', 56, 114, 'Kanji dan kata-katanya sama persis. Itu berarti mereka juga berbagi makna.', 'Bacaannya sama dengan kanji yang Anda pelajari, artinya Anda tahu bacaannya! Jangan lupa か di akhir.')
    RETURNING id INTO v_8329_jauh_sekali;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '無報酬', 'tanpa-bayar', 56, 115, 'Anda sudah mengetahui bahwa 報酬 berarti "kompensasi", jadi menambahkan <kanji>bukan</kanji> ke dalamnya berarti orang yang bekerja tidak dibayar, alias bekerja <vocabulary>tanpa bayaran</vocabulary>.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8330_tanpa_bayar;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '錯誤', 'kesalahan', 56, 116, 'Jika Anda <kanji>bingung</kanji> dan membuat <kanji>kesalahan</kanji>, tidak peduli seberapa besar Anda tidak sengaja, itu tetap merupakan <vocabulary>kesalahan</vocabulary>. Anda harus meminta bantuan lain kali Anda tidak tahu apa yang Anda lakukan dan Anda tidak akan membuat <vocabulary>kesalahan</vocabulary> ini.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8331_kesalahan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '錯覚', 'ilusi', 56, 117, 'Jika Anda merasa <kanji>bingung</kanji> saat <kanji>bangun</kanji>, itu mungkin karena Anda mengalami <vocabulary>ilusi</vocabulary>.

錯覚 adalah apa yang terjadi ketika otak Anda <vocabulary>salah memahami</vocabulary> realitas dalam beberapa cara, seperti ketika otak salah menafsirkan pengalaman, informasi, atau rangsangan sensorik.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8332_ilusi;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '錯乱', 'kebingungan', 56, 118, '<kanji>bingung</kanji> <kanji>kerusuhan</kanji> menyebabkan lebih banyak lagi <vocabulary>kebingungan</vocabulary>. Sebentar lagi akan ada begitu banyak <vocabulary>distraksi</vocabulary> yang terjadi, misalnya mobil-mobil terbalik dan kebakaran terjadi, sehingga tak seorang pun akan tahu jalan mana yang harus ditempuh!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8333_kebingungan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '交錯', 'campuran', 56, 119, 'Anda <kanji>mencampur</kanji> sekumpulan bahan ke dalam <kanji>campuran</kanji> <vocabulary></vocabulary>. Itu akan menjadi kue yang aneh, atau apa pun kegunaan campurannya.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8334_campuran;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '倒錯', 'pemutarbalikan', 56, 120, 'Ketika <kanji>bingung</kanji> Anda mendesak <kanji>menggulingkan</kanji> pikiran dan perasaan normal, itu adalah <vocabulary>penyimpangan</vocabulary>. Ada yang tidak berbahaya, namun ada pula yang tidak.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8335_pemutarbalikan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '丘陵', 'bukit', 56, 121, 'Hanya karena ada <kanji>mausoleum</kanji> di <kanji>bukit</kanji> ini bukan berarti itu bukan lagi <vocabulary>buk</vocabulary>. (Ya. Itu masih sebuah bukit.)', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8336_bukit;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '靖国神社', 'kuil-yasukuni', 56, 122, 'Anda sudah tahu bahwa 神社 berarti "kuil shinto", jadi tambahkan <kanji>damai</kanji> dan <kanji>negara</kanji> ke dalamnya dan Anda akan mendapatkan kuil yang menyerukan perdamaian seluruh negara. Itu Kuil Yasukuni. Jika Anda menonton berita, Anda pasti tahu bahwa nama ini dan semua singkatannya selalu menjadi <a href="http://en.wikipedia.org/wiki/Yasukuni_Shrine" target="_blank">topik perdebatan terkini</a>.', 'Ini adalah kombinasi dua kata. Dua kanji pertama menggunakan bacaan kun''yomi dan dua kanji kedua adalah kata jukugo 神社. Anda sudah mempelajari semua bacaan ini, jadi Anda seharusnya sudah bisa membaca kata ini!')
    RETURNING id INTO v_8337_kuil_yasukuni;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '飽和', 'kejenuhan', 56, 123, 'Jika Anda sangat <kanji>bosan</kanji> dengan <kanji>perdamaian</kanji> karena yang ada hanyalah perdamaian, ini disebut <vocabulary>saturation</vocabulary> dari pasar perdamaian. Anda sudah cukup banyak diliputi kedamaian dan sekarang Anda menginginkan sedikit kegembiraan yang kacau!', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8338_kejenuhan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '飽きる', 'menjadi-bosan', 56, 124, 'Kata ini terdiri dari kanji dengan hiragana ditempelkan. Karena hiragana diakhiri dengan bunyi う, Anda tahu kata ini adalah kata kerja. Kanjinya sendiri berarti <kanji>bosan</kanji>, jadi versi kata kerjanya adalah <vocabulary>to get bosan</vocabulary> atau <vocabulary>kehilangan minat</vocabulary>.', 'Karena kata ini terdiri dari kanji yang ditempelkan hiragana, bisa dipastikan kata tersebut akan menggunakan bacaan kun''yomi.  Anda belum mempelajari bacaan ini, jadi inilah mnemonik untuk membantu Anda:

Ketika Anda mulai <vocabulary>bosan</vocabulary> sesuatu, Anda tidak bisa menahan diri untuk tidak menguap "<reading>Ahh</reading> (あ)." Tidak peduli seberapa keras kamu mencoba menahannya. Kata "A-ah" terus keluar.')
    RETURNING id INTO v_8339_menjadi_bosan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '飽食', 'kekenyangan', 56, 125, 'Anda <kanji>bosan</kanji> tetapi Anda tetap <kanji>makan</kanji>. Mungkin Anda makan karena bosan. Jika Anda merasa bosan terus-menerus, pada akhirnya tujuan utama hidup Anda adalah <vocabulary>kekenyangan</vocabulary>. 

Dalam bahasa Jepang modern, kata ini paling banyak muncul di 飽食の時代, yang secara kasar dapat diterjemahkan sebagai "zaman berkelimpahan". 飽食の時代 mengacu pada era modern di negara-negara seperti Jepang, yang ditandai dengan melimpahnya makanan, berbeda dengan masa lalu, ketika makanan langka.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_8340_kekenyangan;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '蝶々', 'kupu-kupu', 56, 126, 'Sebuah <kanji>kupu-kupu</kanji> dengan <kanji>kupu-kupu</kanji> lain yang ditambahkan ke dalamnya? Itu tetaplah <vocabulary>kupu-kupu</vocabulary>, hanya seekor yang sangat besar dengan... yang mempunyai empat sayap. Dan mata laser? Oh baiklah, ikuti saja. Itu kupu-kupu.

Meskipun 蝶 adalah kata formal untuk kupu-kupu yang akan Anda lihat di buku tingkat lanjut atau materi sains, 蝶々 adalah versi sehari-hari yang akan Anda ucapkan dengan lantang. Pengulangannya hanya membuatnya terdengar sedikit lebih manis, Anda tahu? Itu seperti... keluar dari lidah.', 'Pembacaannya hanyalah pembacaan on''yomi (yang dipelajari dengan kanji) dua kali berturut-turut. Mudah!

Namun dalam percakapan nyata, huruf う terakhir biasanya dihilangkan, jadi orang-orang mengatakannya sebagai ちょうちょ, bukan ちょうちょう. Kupu-kupu yang sama, hanya sedikit lebih ringan di sayapnya.')
    RETURNING id INTO v_8493_kupu_kupu;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '弊社', 'perusahaan-kami', 56, 127, '<kanji>yang jahat</kanji> <kanji>perusahaan</kanji> sebenarnya adalah <vocabulary>perusahaan kami</vocabulary> atau <vocabulary>perusahaan kami yang sederhana</vocabulary>. Kami tidak akan mengatakan perusahaan kami baik, bukan? Itu sama sekali tidak rendah hati. Jadi, alih-alih kita menyebutnya jahat, untuk menunjukkan kerendahan hati kita.', 'Ini adalah kata jukugo yang menggunakan pembacaan kanji on''yomi. Anda seharusnya bisa membaca ini sendiri.')
    RETURNING id INTO v_9054_perusahaan_kami;
  INSERT INTO items (type, character, slug, level, lesson_position, meaning_mnemonic, reading_mnemonic)
    VALUES ('vocabulary', '那智の滝', 'air-terjun-nachi', 56, 128, '<kanji>Apa</kanji> <kanji>kebijaksanaan</kanji> <kanji>air terjun</kanji> adalah <vocabulary>Air Terjun Nachi</vocabulary>, salah satu air terjun paling terkenal (dan paling bijaksana) di Jepang.', 'Anda mempelajari ketiga bacaan ini dengan kanji, jadi Anda seharusnya bisa membacanya sendiri.')
    RETURNING id INTO v_9107_air_terjun_nachi;
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3021_bunuh_diri, 'Bunuh diri', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_3021_bunuh_diri, 'Penentuan nasib sendiri', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_3021_bunuh_diri, 'じけつ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3021_bunuh_diri, '彼らは敵に降伏するよりも、集団自決を選んだとされています。', 'Konon mereka memilih bunuh diri massal dibandingkan menyerah kepada musuh.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3021_bunuh_diri, '戦時下においても、自決を強制する行為は、重大な人権侵害と見なされています。', 'Bahkan pada masa perang, memaksa seseorang untuk bunuh diri dianggap sebagai pelanggaran hak asasi manusia yang serius.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_3021_bunuh_diri, '歴史上、多くの民族が自決を求めて闘争を続けてきました。', 'Secara historis, banyak negara yang berjuang untuk menentukan nasib sendiri.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8251_esensi, 'Esensi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8251_esensi, 'Jiwa', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8251_esensi, 'Arti Sebenarnya', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8251_esensi, 'しんずい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8251_esensi, 'プロの神髄を見せつけられました。', 'Saya diperlihatkan apa artinya menjadi seorang profesional.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8251_esensi, 'この考え方こそが、日本文化の神髄です。', 'Cara berpikir seperti ini adalah inti dari budaya Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8251_esensi, '彼は武道の神髄をよく理解している。', 'Dia memahami esensi sebenarnya dari seni bela diri dengan baik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8251_esensi, '神髄を知らずに、形だけ真似ても意味がない。', 'Tidak ada gunanya menyalin formulir tanpa mengetahui esensinya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8251_esensi, 'この作品の神髄は、人間の弱さを描いた点にある。', 'Inti dari karya ini terletak pada penggambaran kelemahan manusia.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8253_gagah, 'Gagah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8253_gagah, 'Jantan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8253_gagah, 'Terpandang', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8253_gagah, 'Bangsawan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8253_gagah, 'りりしい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8253_gagah, '少年は、凛々しい青年に成長した。', 'Anak laki-laki itu tumbuh menjadi seorang pemuda yang gagah berani.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8254_keajaiban, 'Keajaiban', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8254_keajaiban, 'Langka', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8254_keajaiban, 'Unik', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8254_keajaiban, 'Luar biasa', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8254_keajaiban, 'ひぼん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8254_keajaiban, 'みんな、彼の非凡な才能を妬んでいたんだと思います。', 'Saya pikir semua orang iri dengan bakat uniknya.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8255_orang_biasa, 'Orang Biasa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8255_orang_biasa, 'Orang Biasa', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8255_orang_biasa, 'Biasa-biasa saja', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8255_orang_biasa, 'ぼんじん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8255_orang_biasa, 'あんたみたいな凡人が書いた本、誰が読むのさ。', 'Siapa yang mau membaca buku yang ditulis oleh orang biasa seperti Anda?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8255_orang_biasa, '今は単なる凡人のように見えるかもしれないけど、こう見えてもかつては横綱だったんだよ。', 'Saya mungkin terlihat seperti orang biasa sekarang, namun meskipun berpenampilan seperti itu, saya dulunya adalah juara utama Sumo.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8256_umum, 'Umum', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8256_umum, 'Biasa', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8256_umum, 'Biasa-biasa saja', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8256_umum, 'へいぼん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8256_umum, '平凡な毎日に退屈していたんです。', 'Aku bosan dengan hal yang biasa setiap hari.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8257_biasa_biasa_saja, 'Biasa-biasa saja', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8257_biasa_biasa_saja, 'Biasa', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8257_biasa_biasa_saja, 'Dangkal', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8257_biasa_biasa_saja, 'ぼんよう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8257_biasa_biasa_saja, '彼は凡庸な男ですが、愛に満ちあふれていました。', 'Dia adalah pria biasa-biasa saja tetapi dipenuhi dengan cinta.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8258_tukang, 'Tukang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8258_tukang, 'Tukang', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8258_tukang, 'たくみ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8258_tukang, '彼は日本でも有名な木工の匠です。', 'Dia adalah ahli tukang kayu yang terkenal bahkan di Jepang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8258_tukang, 'この商品のデザインは、匠の技をもって初めて実現することができました。', 'Desain produk ini hanya dimungkinkan melalui keahlian pengrajin.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8258_tukang, '静まり返った工房の中で、匠は静かに刃を研いでいました。', 'Di bengkel yang sunyi, pengrajin diam-diam mengasah pedangnya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8258_tukang, '匠は丹誠をこらし、一切の妥協なくその器を作り上げた。', 'Pengrajin ahli memberikan kapal itu dengan sangat hati-hati, membuatnya tanpa kompromi sedikit pun.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8259_desain, 'Desain', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8259_desain, 'いしょう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8259_desain, 'これは、意匠が凝らされた素晴らしい作品です。', 'Ini adalah karya yang memiliki desain indah yang diterapkan padanya.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8260_menguasai, 'Menguasai', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8260_menguasai, 'Guru', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8260_menguasai, 'ししょう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8260_menguasai, '師匠と呼ばせてもらえませんか。', 'Bolehkah aku memanggilmu "tuan?"');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8261_menguasai, 'Menguasai', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8261_menguasai, 'maestro', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8261_menguasai, 'きょしょう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8261_menguasai, 'この女優は、多くの巨匠たちをうならせた。', 'Aktris ini membuat banyak master hebat mendengus kagum.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8262_menjadi_takjub, 'Menjadi Takjub', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8262_menjadi_takjub, 'Terkejut', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8262_menjadi_takjub, 'Menjadi Terkejut', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8262_menjadi_takjub, 'あきれる', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8262_menjadi_takjub, 'アイドルの度重なるプッツン発言に、世間はみんな呆れました。', 'Ungkapan yang berulang kali dilontarkan sang idola mengejutkan dunia.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8263_tirai, 'Tirai', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8263_tirai, 'Kain Kimono', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8263_tirai, 'Kain', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8263_tirai, 'ごふく', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8263_tirai, '彼は呉服屋の一人息子でした。', 'Dia adalah satu-satunya putra seorang pemilik toko gorden.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8264_musuh_pahit_dalam_perahu_yang_sama, 'Musuh Pahit Dalam Perahu yang Sama', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8264_musuh_pahit_dalam_perahu_yang_sama, 'Saingan Klasik', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8264_musuh_pahit_dalam_perahu_yang_sama, 'Saingan Tradisional', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8264_musuh_pahit_dalam_perahu_yang_sama, 'ごえつどうしゅう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8264_musuh_pahit_dalam_perahu_yang_sama, '利害が一致すれば、呉越同舟も厭わない。', 'Jika kami bisa berbagi kepentingan yang sama, saya tidak akan keberatan berada di posisi yang sama dengan rival saya.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8265_hari_yang_menguntungkan, 'Hari yang Menguntungkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8265_hari_yang_menguntungkan, 'Hari Keberuntungan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8265_hari_yang_menguntungkan, 'かじつ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8265_hari_yang_menguntungkan, '本日は、皇太子殿下御生誕の嘉日なり。', 'Ini adalah hari baik kelahiran Putra Mahkota hari ini.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8266_pengawasan, 'Pengawasan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8266_pengawasan, 'kepemimpinan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8266_pengawasan, 'しゅさい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8266_pengawasan, 'いつか自分の劇団を主宰するのが夢です。', 'Saya bermimpi menjadi pengawas grup teater saya sendiri suatu hari nanti.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8267_perdana_menteri, 'Perdana Menteri', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8267_perdana_menteri, 'さいしょう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8267_perdana_menteri, '英国宰相から直々に手紙を頂きました。', 'Saya menerima surat dari perdana menteri Inggris secara pribadi.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8268_kesepian, 'Kesepian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8268_kesepian, 'Kesepian', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8268_kesepian, 'Tersendiri', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8268_kesepian, 'Terpencil', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8268_kesepian, 'さびしい', true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8268_kesepian, 'さみしい', false);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8268_kesepian, 'やっぱり一人暮らしは寂しいです。', 'Sudah kuduga, kehidupan lajang itu sepi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8268_kesepian, '寂しさを紛らすために、元カノに電話した。', 'Saya menelepon mantan pacar saya untuk mengalihkan pikiran dari kesepian saya.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8269_kesunyian, 'Kesunyian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8269_kesunyian, 'Tetap', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8269_kesunyian, 'Diam', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8269_kesunyian, 'せいじゃく', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8269_kesunyian, '赤ん坊の泣き声が静寂を破った。', 'Tangisan bayi itu memecah kesunyian.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8270_kapten, 'Kapten', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8270_kapten, 'たいい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8270_kapten, '大尉の死は決して無駄ではなかった。', 'Kematian sang kapten sama sekali tidak sia-sia.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8271_letnan_dua, 'Letnan Dua', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8271_letnan_dua, 'Bendera', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8271_letnan_dua, 'しょうい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8271_letnan_dua, '私の曽祖父は、旧日本陸軍少尉でした。', 'Kakek buyut saya adalah seorang letnan dua di bekas tentara Jepang.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8272_letnan_satu, 'Letnan satu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8272_letnan_satu, 'Letnan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8272_letnan_satu, 'ちゅうい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8272_letnan_satu, '我が軍の中尉が敵軍に拉致され、処刑されました。', 'Letnan satu tentara kita ditangkap oleh musuh dan dieksekusi.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8273_semakin_banyak_lagi, 'Semakin Banyak Lagi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8273_semakin_banyak_lagi, 'Masih Kurang', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8273_semakin_banyak_lagi, 'なおさら', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8273_semakin_banyak_lagi, 'あなたのことが尚更嫌いになりました。', 'Aku jadi semakin tidak menyukaimu.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8274_namun, 'Namun', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8274_namun, 'Di samping itu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8274_namun, 'Lebih-lebih lagi', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8274_namun, 'なおかつ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8274_namun, '彼女は、美しく、尚且つ頭も良いが、性格は悪い。', 'Dia cantik, dan terlebih lagi, dia pintar, tapi dia memiliki kepribadian yang buruk.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8275_biasa, 'Biasa', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8275_biasa, 'Bersahaja', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8275_biasa, 'Mudah didekati', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8275_biasa, 'しょみんてき', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8275_biasa, 'ここの饂飩はこの庶民的な味がいいんだよ。', 'Rasa udon yang sederhana di sini enak.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8276_kelelahan, 'Kelelahan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8276_kelelahan, 'Pemiskinan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8276_kelelahan, 'ひへい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8276_kelelahan, '人口が増えない限り、地方経済の疲弊が回復することはないでしょう。', 'Tampaknya perekonomian lokal tidak akan pulih dari pemiskinan kecuali jumlah penduduk bertambah.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8277_efek_jahat, 'Efek Jahat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8277_efek_jahat, 'Pengaruh Berbahaya', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8277_efek_jahat, 'へいがい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8277_efek_jahat, '子供にゲームをさせないことによる弊害も考えておくべきです。', 'Anda juga harus memikirkan betapa jahatnya jika tidak membiarkan anak-anak bermain video game.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8278_rangkaian, 'Rangkaian', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8278_rangkaian, 'tali busur', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8278_rangkaian, 'げん', true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8278_rangkaian, 'つる', false);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8278_rangkaian, 'ギターの弦が緩んでいます。', 'Senar gitarnya longgar.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8279_musik_senar, 'Musik Senar', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8279_musik_senar, 'げんがく', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8279_musik_senar, '学生時代に数年ほど弦楽をやっていました。', 'Saya memainkan musik string selama beberapa tahun selama masa sekolah saya.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8280_merasa_lambat, 'Merasa Lambat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8280_merasa_lambat, 'Kurang Energi', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8280_merasa_lambat, 'Merepotkan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8280_merasa_lambat, 'だるい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8280_merasa_lambat, 'インフルエンザによる高熱で、体が怠いんです。', 'Badanku terasa berat karena demam tinggi akibat influenza.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8281_pemalas, 'Pemalas', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8281_pemalas, 'なまけもの', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8281_pemalas, '彼は会社で一番の怠け者だが、一番成績を上げている。', 'Dia orang paling pemalas di perusahaan, tapi dia juga mendapatkan hasil terbaik.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8282_hormat, 'Hormat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8282_hormat, 'Takzim', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8282_hormat, 'うやうやしい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8282_hormat, '二人は神前で恭しく頭を下げた。', 'Pasangan itu dengan hormat menundukkan kepala mereka di depan altar.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8283_sukacita, 'Sukacita', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8283_sukacita, 'Pengangkatan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8283_sukacita, 'まんえつ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8283_sukacita, 'ご満悦のようですね。', 'Mereka tampak senang.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8284_konyol, 'Konyol', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8284_konyol, 'Bodoh', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8284_konyol, 'おろか', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8284_konyol, 'あいつも愚かなことをしたもんだよ。', 'Dia melakukan hal bodoh seperti itu.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8285_penghitung_untuk_ketukan, 'Penghitung Untuk Ketukan', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8285_penghitung_untuk_ketukan, 'はく', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8285_penghitung_untuk_ketukan, '4分の4拍子の曲では、通常、1拍目と3拍目の頭に強拍が来ます。', 'Untuk musik dalam tempo empat-empat, tekanan biasanya muncul pada ketukan pertama dan ketiga.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8286_tepuk_tangan, 'Tepuk tangan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8286_tepuk_tangan, 'Bertepuk Tangan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8286_tepuk_tangan, 'はくしゅ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8286_tepuk_tangan, '舞台が終わった後、拍手が鳴り止まなかった。', 'Usai adegan berakhir, tepuk tangan tak henti-hentinya bergemuruh.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8287_detak, 'Detak', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8287_detak, 'みゃくはく', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8287_detak, 'すでに脈拍が止まっている。', 'Denyut nadi sudah berhenti.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8288_untuk_memeras, 'Untuk memeras', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8288_untuk_memeras, 'Untuk Menekan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8288_untuk_memeras, 'Untuk Susu', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8288_untuk_memeras, 'しぼる', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8288_untuk_memeras, 'レモンを唐揚げに搾ってもいいですか？', 'Bisakah saya memeras lemon di atas gorengan?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8289_eksploitasi, 'Eksploitasi', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8289_eksploitasi, 'さくしゅ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8289_eksploitasi, 'このエージェントは、ギャラをかなり搾取することで有名だ。', 'Agen ini terkenal sangat mengeksploitasi jaminannya.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8290_pemerahan, 'Pemerahan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8290_pemerahan, 'Memompa Payudara', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8290_pemerahan, 'さくにゅう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8290_pemerahan, '牧場で搾乳体験をしてきました。', 'Saya pribadi mengalami pemerahan di peternakan.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8291_celcius, 'Celcius', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8291_celcius, 'Celsius', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8291_celcius, 'せっし', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8291_celcius, '今日の最高気温は、摂氏二十五度です。', 'Suhu maksimum saat ini adalah dua puluh lima derajat Celsius.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8291_celcius, '摂氏100度が水の沸点です。', '100 derajat Celcius adalah titik didih air.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8291_celcius, 'アメリカも早く華氏から摂氏に変えればいいのに。', 'Saya berharap Amerika segera mengubah suhu dari Fahrenheit ke Celsius.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8292_takdir_tuhan, 'Takdir Tuhan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8292_takdir_tuhan, 'Takdir', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8292_takdir_tuhan, 'せつり', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8292_takdir_tuhan, '誰も自然の摂理には逆らえないよ。', 'Tidak ada seorang pun yang bisa menentang hukum alam.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8293_asupan, 'Asupan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8293_asupan, 'Penyerapan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8293_asupan, 'せっしゅ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8293_asupan, '一日の摂取カロリーを計算してみました。', 'Saya menghitung asupan kalori saya untuk satu hari.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8294_kebijaksanaan, 'Kebijaksanaan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8294_kebijaksanaan, 'Intelijen', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8294_kebijaksanaan, 'Memahami', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8294_kebijaksanaan, 'ち', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8294_kebijaksanaan, 'そんな子供の姿を見て、智を開く思いがしました。', 'Melihat anak seperti itu, saya merasa mendapat pemahaman yang lebih dalam.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8294_kebijaksanaan, '真の智は静かな心から生まれる。', 'Kebijaksanaan sejati muncul dari pikiran yang tenang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8294_kebijaksanaan, '彼の言葉には、若さにはない智があった。', 'Kata-katanya mengandung hikmah yang tidak ditemukan di masa muda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8294_kebijaksanaan, '坂本龍馬が、「事をなさんとすれば、智と勇と仁を蓄えねばならぬ」って言ってたでしょ？', 'Anda tahu bagaimana Sakamoto Ryōma berkata, "Jika Anda ingin mencapai sesuatu, Anda harus memupuk kebijaksanaan, keberanian, dan kasih sayang," bukan?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8295_kayu_bakar, 'Kayu bakar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8295_kayu_bakar, 'Belukar', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8295_kayu_bakar, 'しば', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8295_kayu_bakar, 'おじいさんは、山で柴刈りをしていました。', 'Kakek saya sedang mengumpulkan kayu bakar di pegunungan.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8296_shiba_inu, 'Shiba Inu', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8296_shiba_inu, 'Anjing Shiba', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8296_shiba_inu, 'Shiba', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8296_shiba_inu, 'しばいぬ', true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8296_shiba_inu, 'しばけん', false);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8296_shiba_inu, 'ニッカは柴犬ではなく珍島犬です。', 'Nikka bukan Shiba, dia Jindo.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8297_banjir, 'Banjir', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8297_banjir, 'こうずい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8297_banjir, '台風で川が氾濫し、洪水になりました。', 'Sungai meluap akibat topan dan menjadi banjir.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8298_perpanjangan, 'Perpanjangan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8298_perpanjangan, 'Menunda', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8298_perpanjangan, 'Menunda', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8298_perpanjangan, 'ゆうよ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8298_perpanjangan, 'お前に三日間の猶予を与えてやろう。', 'Saya kira saya akan memberi Anda perpanjangan waktu tiga hari.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8299_menelantarkan, 'Menelantarkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8299_menelantarkan, 'Kelalaian', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8299_menelantarkan, 'Kecerobohan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8299_menelantarkan, 'おろそか', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8299_menelantarkan, '基本を疎かにしてはいけません。', 'Anda tidak boleh mengabaikan dasar-dasarnya.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8300_tidak_ada_rasa_arah, 'Tidak Ada Rasa Arah', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8300_tidak_ada_rasa_arah, 'Rasa Arah yang Buruk', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8300_tidak_ada_rasa_arah, 'ほうこうおんち', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8300_tidak_ada_rasa_arah, '私は方向音痴で、すぐ道に迷います。', 'Saya tidak tahu arah jadi saya langsung tersesat.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8301_nisan, 'Nisan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8301_nisan, 'Batu nisan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8301_nisan, 'ぼひ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8301_nisan, '誰かが墓碑を倒したんです。', 'Seseorang menjatuhkan batu nisan itu.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8302_tugu_batu, 'Tugu Batu', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8302_tugu_batu, 'せきひ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8302_tugu_batu, 'これが石碑に彫られていた文字です。', 'Inilah kata-kata yang terukir di batu tugu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8302_tugu_batu, '無人島のはずのこの島に石碑が建っているのはなぜですか。', 'Mengapa ada tugu batu di pulau yang konon tak berpenghuni ini?');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8302_tugu_batu, '津波が襲った高さの地点に石碑が建てられているのです。', 'Sebuah monumen batu dibangun di lokasi ketinggian tsunami melanda.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8303_prasasti, 'Prasasti', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8303_prasasti, 'Tulisan di batu nisan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8303_prasasti, 'ひぶん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8303_prasasti, 'この慰霊碑の碑文は誰が考えたのですか。', 'Siapa yang memikirkan prasasti peringatan ini?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8304_monumen, 'Monumen', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8304_monumen, 'きねんひ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8304_monumen, 'これは何の記念碑ですか。', 'Monumen macam apa ini?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8305_bulir, 'Bulir', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8305_bulir, 'Sereal', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8305_bulir, 'こくもつ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8305_bulir, 'このスープには五種類の穀物が入っています。', 'Ada lima jenis biji-bijian dalam sup ini.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8306_biji_bijian, 'Biji-bijian', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8306_biji_bijian, 'こくるい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8306_biji_bijian, '私は穀類を毎食摂るようにしています。', 'Saya mencoba mengonsumsi biji-bijian setiap kali makan.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8307_beras, 'Beras', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8307_beras, 'べいこく', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8307_beras, '我が社は、米国で米穀を売っています。', 'Perusahaan saya menjual beras di Amerika.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8308_mati_lemas, 'Mati lemas', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8308_mati_lemas, 'Tersedak', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8308_mati_lemas, 'ちっそく', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8308_mati_lemas, '死因は首を絞められたことによる窒息です。', 'Penyebab kematiannya adalah mati lemas akibat tercekik di leher.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8309_nitrogen, 'Nitrogen', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8309_nitrogen, 'ちっそ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8309_nitrogen, '飛行機のタイヤには窒素が入っています。', 'Ada nitrogen di ban pesawat.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8310_dilema, 'Dilema', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8310_dilema, 'Keadaan sulit', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8310_dilema, 'きゅうち', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8310_dilema, '窮地に追い込まれ、ようやく尻尾を見せました。', 'Ia didorong ke sudut dan akhirnya menunjukkan ekornya.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8311_ketat, 'Ketat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8311_ketat, 'Sempit', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8311_ketat, 'Kaku', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8311_ketat, 'きゅうくつ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8311_ketat, '窮屈な下着は体によくない。', 'Pakaian dalam yang ketat tidak baik untuk Anda.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8311_ketat, '部屋が窮屈でごめんね。ここに座っていてくれる？今、お茶持ってくるから。', 'Maaf kamarnya sempit sekali. Bisakah kamu duduk di sini saja? Aku akan membuatkanmu teh.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8312_kemiskinan, 'Kemiskinan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8312_kemiskinan, 'Kemiskinan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8312_kemiskinan, 'きゅうぼう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8312_kemiskinan, '生活が窮乏して、仕方なく盗みを働いたんです。', 'Dia hidup dalam kemiskinan dan melakukan pencurian sebagai upaya terakhir.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8313_kemiskinan, 'Kemiskinan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8313_kemiskinan, 'Kesulitan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8313_kemiskinan, 'こんきゅう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8313_kemiskinan, '両親は生活に困窮していましたが、私にも彼らを助ける余裕はありませんでした。', 'Orang tua saya hidup dalam kemiskinan tetapi saya tidak punya uang untuk membantu mereka.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8314_kesulitan, 'Kesulitan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8314_kesulitan, 'Kondisi Buruk', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8314_kesulitan, 'きゅうじょう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8314_kesulitan, '役所に窮状を訴えたのですが、聞き入れてもらえませんでした。', 'Saya mengajukan banding kepada pemerintah mengenai kondisi buruk ini, namun saya tidak menerima tanggapan.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8315_pria, 'Pria', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8315_pria, 'しんし', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8315_pria, '彼は、英国紳士の鏡のような人でした。', 'Dia tampak seperti gambaran pria Inggris yang meludah.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8316_untuk_mengikat, 'Untuk Mengikat', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8316_untuk_mengikat, 'Untuk Mengikat', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8316_untuk_mengikat, 'しばる', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8316_untuk_mengikat, '靴紐が解けないようにしっかり縛った。', 'Aku mengikat tali sepatuku erat-erat agar tidak lepas.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8317_pengekangan, 'Pengekangan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8317_pengekangan, 'Belenggu', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8317_pengekangan, 'Pembatasan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8317_pengekangan, 'Kurungan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8317_pengekangan, 'Mengikat', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8317_pengekangan, 'そくばく', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8317_pengekangan, '彼氏の束縛が厳しいんだよね。', 'Pengurungan pacar saya terlalu parah.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8318_menjahit, 'Menjahit', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8318_menjahit, 'Untuk Menjahit', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8318_menjahit, 'ぬう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8318_menjahit, '家庭科の授業で、雑巾を縫いました。', 'Kami menjahit kain lap di kelas ekonomi rumah tangga.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8319_jahit, 'Jahit', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8319_jahit, 'Sulaman', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8319_jahit, 'さいほう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8319_jahit, '裁縫はあまり得意ではありません。', 'Menjahit sebenarnya bukan kelebihanku.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8319_jahit, '不快な気分を紛らすために、裁縫針で耳にピアスの穴を開けました。', 'Saya menusuk telinga saya dengan jarum jahit untuk mengalihkan perhatian saya dari perasaan tidak menyenangkan.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8320_jahit, 'Jahit', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8320_jahit, 'ほうせい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8320_jahit, '縫製加工はこのミシンで行われました。', 'Proses menjahit dilakukan dengan mesin jahit ini.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8321_mengirimkan, 'Mengirimkan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8321_mengirimkan, 'Kapal', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8321_mengirimkan, 'せんぱく', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8321_mengirimkan, 'その船舶は、どこの国に登録されているものですか。', 'Di negara manakah kapal ini terdaftar?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8322_impor, 'Impor', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8322_impor, 'はくらい', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8322_impor, '舶来のブランデーだと叔父はよく自慢していた。', 'Paman saya sering membual bahwa itu brendi impor.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8323_kupu_kupu, 'kupu-kupu', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8323_kupu_kupu, 'ちょう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8323_kupu_kupu, '一匹の蝶が花の上にとまった。', 'Seekor kupu-kupu hinggap di bunga itu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8323_kupu_kupu, '庭で黄色いアゲハ蝶を見かけた。', 'Saya melihat kupu-kupu swallowtail kuning di taman.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8323_kupu_kupu, '瓶の中の蝶は、外の光をじっと見つめているようだった。', 'Kupu-kupu di dalam botol tampak menatap cahaya di luar dengan saksama.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8323_kupu_kupu, '父は、毎日色の違う蝶ネクタイをしていた。', 'Ayah saya mengenakan dasi kupu-kupu dengan warna berbeda setiap hari.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8324_lagu_populer, 'Lagu Populer', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8324_lagu_populer, 'Retro J-Pop', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8324_lagu_populer, 'Musik Pop Era Showa', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8324_lagu_populer, 'Kayokyoku', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8324_lagu_populer, 'かようきょく', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8324_lagu_populer, '心に残る昭和の歌謡曲ベスト100のリストが公表されました。', 'Daftar 100 lagu populer terbaik, paling tak terlupakan, dan populer dari Era Showa telah diumumkan.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8325_yurisdiksi, 'Yurisdiksi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8325_yurisdiksi, 'Kontrol', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8325_yurisdiksi, 'かんかつ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8325_yurisdiksi, 'ここは、南署の管轄です。', 'Polisi selatan memiliki yurisdiksi di sini.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8326_yurisdiksi, 'Yurisdiksi', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8326_yurisdiksi, 'しょかつ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8326_yurisdiksi, 'とにかく、まずは所轄の警察署に連絡をいれましょう。', 'Bagaimanapun, mari kita hubungi kantor polisi yang memiliki yurisdiksi terlebih dahulu.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8327_kontrol_langsung, 'Kontrol Langsung', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8327_kontrol_langsung, 'Pengawasan Langsung', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8327_kontrol_langsung, 'Yurisdiksi Langsung', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8327_kontrol_langsung, 'ちょっかつ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8327_kontrol_langsung, 'それじゃあ、ここも政府が直轄している機関なんですか。', 'Kalau begitu, apakah lembaga ini juga merupakan lembaga yang langsung berada di bawah kendali pemerintah?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8328_untuk_menyimpang, 'Untuk menyimpang', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8328_untuk_menyimpang, 'Untuk Terpisah', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8328_untuk_menyimpang, 'それる', true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8328_untuk_menyimpang, 'はぐれる', false);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8328_untuk_menyimpang, 'すぐ話が脇道へ逸れてしまう。', 'Percakapan dengan cepat menyimpang.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8329_jauh_sekali, 'Jauh sekali', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8329_jauh_sekali, 'Jauh', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8329_jauh_sekali, 'Jauh', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8329_jauh_sekali, 'はるか', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8329_jauh_sekali, 'その鐘の音は、遥か彼方まで響き渡った。', 'Lonceng bergema dari jauh.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8330_tanpa_bayar, 'Tanpa Bayar', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8330_tanpa_bayar, 'Serampangan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8330_tanpa_bayar, 'Gratis', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8330_tanpa_bayar, 'むほうしゅう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8330_tanpa_bayar, '無報酬でもかまいませんよ。', 'Tidak ada bayaran, tapi saya tidak keberatan.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8331_kesalahan, 'Kesalahan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8331_kesalahan, 'Kesalahan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8331_kesalahan, 'さくご', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8331_kesalahan, 'ちょっとそれは時代錯誤じゃないか。', 'Tidakkah menurut Anda itu sedikit ketinggalan jaman?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8332_ilusi, 'Ilusi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8332_ilusi, 'Salah persepsi', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8332_ilusi, 'さっかく', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8332_ilusi, 'そのダイヤモンドを見たとき、それがまるで自分のもののような錯覚に襲われたんです。', 'Ketika saya melihat berlian itu, saya dikejutkan oleh ilusi bahwa itu adalah milik saya.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8332_ilusi, '初めての場所なのに、まるで故郷に帰ったかのような錯覚を覚えた。', 'Meskipun saya belum pernah ke sana sebelumnya, saya merasakan ilusi aneh bahwa saya telah pulang.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8332_ilusi, '完璧に復元されたお城に入った瞬間、まるでタイムスリップしたような錯覚を覚えました。', 'Saat saya menginjakkan kaki di kastil yang telah dipugar dengan sempurna, saya mendapat ilusi bahwa saya telah melakukan perjalanan kembali ke masa lalu.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8333_kebingungan, 'Kebingungan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8333_kebingungan, 'Selingan', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8333_kebingungan, 'Kekacauan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8333_kebingungan, 'さくらん', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8333_kebingungan, '薬で意識が錯乱しているようでした。', 'Kesadaran mereka sepertinya dibingungkan oleh obat tersebut.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8334_campuran, 'Campuran', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8334_campuran, 'Pencampuran', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8334_campuran, 'Komplikasi', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8334_campuran, 'こうさく', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8334_campuran, '色々な感情が交錯し、結論を出せずにいました。', 'Berbagai emosi bercampur dan kami tidak dapat mencapai kesimpulan.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8335_pemutarbalikan, 'Pemutarbalikan', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8335_pemutarbalikan, 'とうさく', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8335_pemutarbalikan, '倒錯思考はまず現実否定から始まる。', 'Pemikiran yang salah dimulai, pertama-tama, dengan penolakan terhadap kenyataan.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8336_bukit, 'Bukit', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8336_bukit, 'きゅうりょう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8336_bukit, '今日は天気が良かったので、矢田丘陵を歩きました。', 'Cuacanya bagus hari ini jadi saya berjalan di perbukitan Yata.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8337_kuil_yasukuni, 'Kuil Yasukuni', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8337_kuil_yasukuni, 'やすくにじんじゃ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8337_kuil_yasukuni, '靖国神社に参拝したことはありますか。', 'Pernahkah Anda mengunjungi Kuil Yasukuni?');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8338_kejenuhan, 'Kejenuhan', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8338_kejenuhan, 'ほうわ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8338_kejenuhan, '市場は今飽和状態になっているんだよ。', 'Pasar sudah jenuh sekarang.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8339_menjadi_bosan, 'Menjadi Bosan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8339_menjadi_bosan, 'Kehilangan Minat', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8339_menjadi_bosan, 'あきる', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8339_menjadi_bosan, '新しい恋人に飽きてきたところなの。', 'Aku berada di titik di mana aku mulai kehilangan minat pada kekasih baruku.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8340_kekenyangan, 'Kekenyangan', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8340_kekenyangan, 'Makan Sepuasnya', false, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8340_kekenyangan, 'Memiliki Segala Sesuatu yang Dibutuhkan', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8340_kekenyangan, 'ほうしょく', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8340_kekenyangan, '日本は、戦後の食料不足から飽食の時代へ大きく変わりました。', 'Jepang membuat perubahan besar dari masa kekurangan pangan pascaperang menjadi era berkelimpahan.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_8493_kupu_kupu, 'kupu-kupu', true, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_8493_kupu_kupu, 'ちょうちょう', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8493_kupu_kupu, '窓から蝶々がひらりと入ってきた。', 'Seekor kupu-kupu terbang masuk melalui jendela.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8493_kupu_kupu, '蝶々が肩にとまって、少しくすぐったかった。', 'Seekor kupu-kupu hinggap di bahuku, dan ia sedikit menggelitik.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8493_kupu_kupu, '彼女は蝶々のように自由な女性でした。', 'Dia adalah seorang wanita yang sebebas kupu-kupu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_8493_kupu_kupu, '母はオペラ『蝶々夫人』に感動して涙を流した。', 'Ibuku meneteskan air mata karena opera Madame Butterfly.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9054_perusahaan_kami, 'Perusahaan kami', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9054_perusahaan_kami, 'Perusahaan Kami yang Sederhana', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_9054_perusahaan_kami, 'へいしゃ', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9054_perusahaan_kami, 'この度は弊社のサービスをご利用いただきまして誠にありがとうございます。', 'Terima kasih banyak telah menggunakan layanan perusahaan kami.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9054_perusahaan_kami, 'キャンセルの場合は、お手数ではございますが弊社カスタマーサポートまでご連絡ください。', 'Jika terjadi pembatalan, silakan hubungi dukungan pelanggan perusahaan kami.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9054_perusahaan_kami, '本キャンペーンは、弊社の都合により告知なしに終了する場合がございます。', 'Kampanye ini dapat dihentikan tanpa pemberitahuan tergantung pada keadaan perusahaan kami.');
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9107_air_terjun_nachi, 'Air Terjun Nachi', true, true);
  INSERT INTO item_meanings (item_id, meaning, primary_meaning, accepted_answer) VALUES (v_9107_air_terjun_nachi, 'Nachinotaki', false, true);
  INSERT INTO item_readings (item_id, reading, primary_reading) VALUES (v_9107_air_terjun_nachi, 'なちのたき', true);
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9107_air_terjun_nachi, '日曜日は、熊野古道を歩いて、那智の滝を見に行く予定です。', 'Pada hari Minggu, kami berencana berjalan di Kumano Kodō dan melihat Air Terjun Nachi.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9107_air_terjun_nachi, 'これは、この間行った那智の滝で一番よくとれた写真です。', 'Ini adalah foto terbaik yang bisa saya dapatkan dari Air Terjun Nachi yang saya kunjungi beberapa hari yang lalu.');
  INSERT INTO item_context_sentences (item_id, japanese, indonesian) VALUES (v_9107_air_terjun_nachi, '那智の滝は、国の名勝に指定されています。', 'Air Terjun Nachi telah ditetapkan sebagai tempat keindahan nasional.');

  -- 4. PREREQUISITES
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2295_mengalahkan, id FROM items WHERE character = '扌' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2295_mengalahkan, id FROM items WHERE character = '白' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2296_tetap, id FROM items WHERE character = '犭' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2296_tetap, id FROM items WHERE character = '丷' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2296_tetap, id FROM items WHERE character = '酉' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2297_manajer, id FROM items WHERE character = '宀' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2297_manajer, id FROM items WHERE character = '辛' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2298_kesepian, id FROM items WHERE character = '宀' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2298_kesepian, id FROM items WHERE character = '上' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2298_kesepian, id FROM items WHERE character = '小' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2298_kesepian, id FROM items WHERE character = '又' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2299_menjahit, id FROM items WHERE character = '糸' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2299_menjahit, id FROM items WHERE character = '⻌' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2299_menjahit, id FROM items WHERE character = '夆' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2300_memberi, id FROM items WHERE character = '呉' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2301_biasa_biasa_saja, id FROM items WHERE character = '几' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2301_biasa_biasa_saja, id FROM items WHERE character = '丶' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2302_menghormati, id FROM items WHERE character = '共' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2302_menghormati, id FROM items WHERE character = '小' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2302_menghormati, id FROM items WHERE character = '丶' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2303_bingung, id FROM items WHERE character = '金' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2303_bingung, id FROM items WHERE character = '昔' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2304_bulir, id FROM items WHERE character = '士' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2304_bulir, id FROM items WHERE character = '冖' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2304_bulir, id FROM items WHERE character = '禾' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2304_bulir, id FROM items WHERE character = '殳' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2305_mausoleum, id FROM items WHERE character = '阝' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2305_mausoleum, id FROM items WHERE character = '夌' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2306_kejahatan, id FROM items WHERE character = '敝' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2306_kejahatan, id FROM items WHERE character = '廾' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2307_mengirimkan, id FROM items WHERE character = '舟' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2307_mengirimkan, id FROM items WHERE character = '白' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2308_miskin, id FROM items WHERE character = '穴' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2308_miskin, id FROM items WHERE character = '身' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2308_miskin, id FROM items WHERE character = '弓' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2309_sukacita, id FROM items WHERE character = '忄' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2309_sukacita, id FROM items WHERE character = '兑' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2310_mengikat, id FROM items WHERE character = '糸' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2310_mengikat, id FROM items WHERE character = '専' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2310_mengikat, id FROM items WHERE character = '丶' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2311_kontrol, id FROM items WHERE character = '車' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2311_kontrol, id FROM items WHERE character = '宀' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2311_kontrol, id FROM items WHERE character = '/radicals/rib-cage.svg' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2311_kontrol, id FROM items WHERE character = '口' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2312_akord, id FROM items WHERE character = '弓' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2312_akord, id FROM items WHERE character = '玄' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2313_mati_lemas, id FROM items WHERE character = '穴' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2313_mati_lemas, id FROM items WHERE character = '至' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2314_banjir, id FROM items WHERE character = '氵' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2314_banjir, id FROM items WHERE character = '共' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2315_selain_itu, id FROM items WHERE character = '扌' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2315_selain_itu, id FROM items WHERE character = '耳' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2315_selain_itu, id FROM items WHERE character = '/radicals/explosion.svg' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2316_bosan, id FROM items WHERE character = '食' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2316_bosan, id FROM items WHERE character = '包' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2317_pria, id FROM items WHERE character = '糸' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2317_pria, id FROM items WHERE character = '申' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2318_biasa, id FROM items WHERE character = '广' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2318_biasa, id FROM items WHERE character = '聿' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2318_biasa, id FROM items WHERE character = '用' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2319_tenang, id FROM items WHERE character = '立' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2319_tenang, id FROM items WHERE character = '青' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2320_menghargai, id FROM items WHERE character = '壴' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2320_menghargai, id FROM items WHERE character = '力' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2320_menghargai, id FROM items WHERE character = '口' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2321_meremas, id FROM items WHERE character = '扌' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2321_meremas, id FROM items WHERE character = '穴' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2321_meremas, id FROM items WHERE character = '乍' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2322_kupu_kupu, id FROM items WHERE character = '虫' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2322_kupu_kupu, id FROM items WHERE character = '世' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2322_kupu_kupu, id FROM items WHERE character = '木' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2323_batu_nisan, id FROM items WHERE character = '石' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2323_batu_nisan, id FROM items WHERE character = '丶' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2323_batu_nisan, id FROM items WHERE character = '田' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2323_batu_nisan, id FROM items WHERE character = '十' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2324_perwira_militer, id FROM items WHERE character = '尸' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2324_perwira_militer, id FROM items WHERE character = '示' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2324_perwira_militer, id FROM items WHERE character = '寸' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2325_dingin, id FROM items WHERE character = '冫' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2325_dingin, id FROM items WHERE character = '亠' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2325_dingin, id FROM items WHERE character = '回' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2325_dingin, id FROM items WHERE character = '示' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2326_tukang, id FROM items WHERE character = '匚' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2326_tukang, id FROM items WHERE character = '斤' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2327_jauh, id FROM items WHERE character = '⻌' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2327_jauh, id FROM items WHERE character = '/radicals/satellite.svg' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2328_kebijaksanaan, id FROM items WHERE character = '矢' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2328_kebijaksanaan, id FROM items WHERE character = '口' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2328_kebijaksanaan, id FROM items WHERE character = '日' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2329_belukar, id FROM items WHERE character = '止' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2329_belukar, id FROM items WHERE character = '匕' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT k_2329_belukar, id FROM items WHERE character = '木' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_3021_bunuh_diri, id FROM items WHERE character = '自' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_3021_bunuh_diri, id FROM items WHERE character = '決' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8251_esensi, id FROM items WHERE character = '神' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8251_esensi, id FROM items WHERE character = '髄' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8253_gagah, k_2325_dingin);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8253_gagah, id FROM items WHERE character = '々' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8254_keajaiban, id FROM items WHERE character = '非' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8254_keajaiban, k_2301_biasa_biasa_saja);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8255_orang_biasa, k_2301_biasa_biasa_saja);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8255_orang_biasa, id FROM items WHERE character = '人' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8256_umum, id FROM items WHERE character = '平' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8256_umum, k_2301_biasa_biasa_saja);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8257_biasa_biasa_saja, k_2301_biasa_biasa_saja);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8257_biasa_biasa_saja, k_2318_biasa);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8258_tukang, k_2326_tukang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8259_desain, id FROM items WHERE character = '意' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8259_desain, k_2326_tukang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8260_menguasai, id FROM items WHERE character = '師' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8260_menguasai, k_2326_tukang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8261_menguasai, id FROM items WHERE character = '巨' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8261_menguasai, k_2326_tukang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8262_menjadi_takjub, id FROM items WHERE character = '呆' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8263_tirai, k_2300_memberi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8263_tirai, id FROM items WHERE character = '服' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8264_musuh_pahit_dalam_perahu_yang_sama, k_2300_memberi);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8264_musuh_pahit_dalam_perahu_yang_sama, id FROM items WHERE character = '越' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8264_musuh_pahit_dalam_perahu_yang_sama, id FROM items WHERE character = '同' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8264_musuh_pahit_dalam_perahu_yang_sama, id FROM items WHERE character = '舟' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8265_hari_yang_menguntungkan, k_2320_menghargai);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8265_hari_yang_menguntungkan, id FROM items WHERE character = '日' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8266_pengawasan, id FROM items WHERE character = '主' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8266_pengawasan, k_2297_manajer);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8267_perdana_menteri, k_2297_manajer);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8267_perdana_menteri, id FROM items WHERE character = '相' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8268_kesepian, k_2298_kesepian);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8269_kesunyian, id FROM items WHERE character = '静' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8269_kesunyian, k_2298_kesepian);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8270_kapten, id FROM items WHERE character = '大' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8270_kapten, k_2324_perwira_militer);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8271_letnan_dua, id FROM items WHERE character = '少' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8271_letnan_dua, k_2324_perwira_militer);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8272_letnan_satu, id FROM items WHERE character = '中' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8272_letnan_satu, k_2324_perwira_militer);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8273_semakin_banyak_lagi, id FROM items WHERE character = '尚' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8273_semakin_banyak_lagi, id FROM items WHERE character = '更' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8274_namun, id FROM items WHERE character = '尚' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8274_namun, id FROM items WHERE character = '且' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8275_biasa, id FROM items WHERE character = '庶' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8275_biasa, id FROM items WHERE character = '民' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8275_biasa, id FROM items WHERE character = '的' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8276_kelelahan, id FROM items WHERE character = '疲' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8276_kelelahan, k_2306_kejahatan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8277_efek_jahat, k_2306_kejahatan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8277_efek_jahat, id FROM items WHERE character = '害' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8278_rangkaian, k_2312_akord);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8279_musik_senar, k_2312_akord);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8279_musik_senar, id FROM items WHERE character = '楽' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8280_merasa_lambat, id FROM items WHERE character = '怠' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8281_pemalas, id FROM items WHERE character = '怠' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8281_pemalas, id FROM items WHERE character = '者' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8282_hormat, k_2302_menghormati);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8283_sukacita, id FROM items WHERE character = '満' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8283_sukacita, k_2309_sukacita);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8284_konyol, id FROM items WHERE character = '愚' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8285_penghitung_untuk_ketukan, k_2295_mengalahkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8286_tepuk_tangan, k_2295_mengalahkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8286_tepuk_tangan, id FROM items WHERE character = '手' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8287_detak, id FROM items WHERE character = '脈' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8287_detak, k_2295_mengalahkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8288_untuk_memeras, k_2321_meremas);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8289_eksploitasi, k_2321_meremas);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8289_eksploitasi, id FROM items WHERE character = '取' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8290_pemerahan, k_2321_meremas);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8290_pemerahan, id FROM items WHERE character = '乳' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8291_celcius, k_2315_selain_itu);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8291_celcius, id FROM items WHERE character = '氏' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8292_takdir_tuhan, k_2315_selain_itu);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8292_takdir_tuhan, id FROM items WHERE character = '理' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8293_asupan, k_2315_selain_itu);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8293_asupan, id FROM items WHERE character = '取' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8294_kebijaksanaan, k_2328_kebijaksanaan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8295_kayu_bakar, k_2329_belukar);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8296_shiba_inu, k_2329_belukar);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8296_shiba_inu, id FROM items WHERE character = '犬' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8297_banjir, k_2314_banjir);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8297_banjir, id FROM items WHERE character = '水' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8298_perpanjangan, k_2296_tetap);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8298_perpanjangan, id FROM items WHERE character = '予' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8299_menelantarkan, id FROM items WHERE character = '疎' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8300_tidak_ada_rasa_arah, id FROM items WHERE character = '方' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8300_tidak_ada_rasa_arah, id FROM items WHERE character = '向' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8300_tidak_ada_rasa_arah, id FROM items WHERE character = '音' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8300_tidak_ada_rasa_arah, id FROM items WHERE character = '痴' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8301_nisan, id FROM items WHERE character = '墓' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8301_nisan, k_2323_batu_nisan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8302_tugu_batu, id FROM items WHERE character = '石' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8302_tugu_batu, k_2323_batu_nisan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8303_prasasti, k_2323_batu_nisan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8303_prasasti, id FROM items WHERE character = '文' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8304_monumen, id FROM items WHERE character = '記' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8304_monumen, id FROM items WHERE character = '念' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8304_monumen, k_2323_batu_nisan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8305_bulir, k_2304_bulir);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8305_bulir, id FROM items WHERE character = '物' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8306_biji_bijian, k_2304_bulir);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8306_biji_bijian, id FROM items WHERE character = '類' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8307_beras, id FROM items WHERE character = '米' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8307_beras, k_2304_bulir);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8308_mati_lemas, k_2313_mati_lemas);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8308_mati_lemas, id FROM items WHERE character = '息' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8309_nitrogen, k_2313_mati_lemas);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8309_nitrogen, id FROM items WHERE character = '素' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8310_dilema, k_2308_miskin);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8310_dilema, id FROM items WHERE character = '地' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8311_ketat, k_2308_miskin);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8311_ketat, id FROM items WHERE character = '屈' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8312_kemiskinan, k_2308_miskin);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8312_kemiskinan, id FROM items WHERE character = '乏' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8313_kemiskinan, id FROM items WHERE character = '困' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8313_kemiskinan, k_2308_miskin);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8314_kesulitan, k_2308_miskin);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8314_kesulitan, id FROM items WHERE character = '状' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8315_pria, k_2317_pria);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8315_pria, id FROM items WHERE character = '士' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8316_untuk_mengikat, k_2310_mengikat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8317_pengekangan, id FROM items WHERE character = '束' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8317_pengekangan, k_2310_mengikat);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8318_menjahit, k_2299_menjahit);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8319_jahit, id FROM items WHERE character = '裁' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8319_jahit, k_2299_menjahit);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8320_jahit, k_2299_menjahit);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8320_jahit, id FROM items WHERE character = '製' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8321_mengirimkan, id FROM items WHERE character = '船' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8321_mengirimkan, k_2307_mengirimkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8322_impor, k_2307_mengirimkan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8322_impor, id FROM items WHERE character = '来' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8323_kupu_kupu, k_2322_kupu_kupu);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8324_lagu_populer, id FROM items WHERE character = '歌' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8324_lagu_populer, id FROM items WHERE character = '謡' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8324_lagu_populer, id FROM items WHERE character = '曲' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8325_yurisdiksi, id FROM items WHERE character = '管' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8325_yurisdiksi, k_2311_kontrol);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8326_yurisdiksi, id FROM items WHERE character = '所' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8326_yurisdiksi, k_2311_kontrol);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8327_kontrol_langsung, id FROM items WHERE character = '直' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8327_kontrol_langsung, k_2311_kontrol);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8328_untuk_menyimpang, id FROM items WHERE character = '逸' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8329_jauh_sekali, k_2327_jauh);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8330_tanpa_bayar, id FROM items WHERE character = '無' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8330_tanpa_bayar, id FROM items WHERE character = '報' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8330_tanpa_bayar, id FROM items WHERE character = '酬' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8331_kesalahan, k_2303_bingung);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8331_kesalahan, id FROM items WHERE character = '誤' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8332_ilusi, k_2303_bingung);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8332_ilusi, id FROM items WHERE character = '覚' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8333_kebingungan, k_2303_bingung);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8333_kebingungan, id FROM items WHERE character = '乱' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8334_campuran, id FROM items WHERE character = '交' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8334_campuran, k_2303_bingung);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8335_pemutarbalikan, id FROM items WHERE character = '倒' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8335_pemutarbalikan, k_2303_bingung);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8336_bukit, id FROM items WHERE character = '丘' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8336_bukit, k_2305_mausoleum);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8337_kuil_yasukuni, k_2319_tenang);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8337_kuil_yasukuni, id FROM items WHERE character = '国' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8337_kuil_yasukuni, id FROM items WHERE character = '神' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8337_kuil_yasukuni, id FROM items WHERE character = '社' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8338_kejenuhan, k_2316_bosan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8338_kejenuhan, id FROM items WHERE character = '和' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8339_menjadi_bosan, k_2316_bosan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8340_kekenyangan, k_2316_bosan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8340_kekenyangan, id FROM items WHERE character = '食' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_8493_kupu_kupu, k_2322_kupu_kupu);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_8493_kupu_kupu, id FROM items WHERE character = '々' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_9054_perusahaan_kami, k_2306_kejahatan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_9054_perusahaan_kami, id FROM items WHERE character = '社' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_9107_air_terjun_nachi, id FROM items WHERE character = '那' LIMIT 1;
  INSERT INTO item_prerequisites (item_id, requires_item_id) VALUES (v_9107_air_terjun_nachi, k_2328_kebijaksanaan);
  INSERT INTO item_prerequisites (item_id, requires_item_id) SELECT v_9107_air_terjun_nachi, id FROM items WHERE character = '滝' LIMIT 1;

END $$;